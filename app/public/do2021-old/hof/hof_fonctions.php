<?php
// *** *** *** Ecriture de la barre bleue
function ecritentete($colonne)
{
	$out = "";
	// $colonne doit être un tableau avec les titres des différentes colonnes désirées
	$out .= '
<tr>
	<td> </td>
';	
	for ($i=0; $i<sizeof($colonne); $i++)
	{
		if (strlen($colonne[$i]) == 0)
			$out .= '	<td></td>
';
		else
		{
			$nom = "";
			if ($colonne[$i]=="nom")
				$nom = ' width="40%"';
			$out .= '	<td class="cl_entete" '.$nom.'>'.$colonne[$i].'</td>
';
		}
	}
	$out .= '	</tr>
<tr>	<td></td>
	<td colspan="'.sizeof($colonne).'" class="cl_vspacer">	</td></tr>
';
	return $out;
}

// *** *** *** image affichée devant les joueurs
function setimage ($i)
{
	if ($i<=1)
		return 'hof/1.gif';
	if ($i<=3)
		return 'hof/2.gif';
	if ($i<=6)
		return 'hof/4.gif';
	return 'hof/7.gif';
}

// *** *** *** Ecriture des classements "simples"
function ecritclassementsimple($sql, $aff1, $aff2, $class, $op1=null, $op2=null)
{
	global $border, $vspacer, $joueurs_stats, $joueurs_heros, $joueurs_bonus, $guildes, $dynamique, $db_prefixe, $db_suffixe;
	
	$file = 'hof/'.$db_prefixe.$db_suffixe.'_'.$_GET['classement'].'.php';
	
//	echo $file."<br>\n";
	
	if ((file_exists($file))&&(!$dynamique))	// si le fichier existe et qu'on a pas donné l'ordre de calculer
	{
		include($file);
	}
	else
	{
		echo "BDD<br>\n";
		$out = "";
		if ($op1==null)
		{
			$op1=array();
			for ($i=0; $i<sizeof($aff1); $i++)
				$op1[$i] = "";
		}
		if ($op2==null)
		{
			$op2=array();
			for ($i=0; $i<sizeof($aff1); $i++)
				$op2[$i] = "";
		}
//		echo "<p align=left><xmp>$sql</xmp>";
		$req = mysql_query($sql) or die(mysql_error());
		$i=1;
		$out .= "<table $border>\n";
		$out .= ecritentete($aff1);
		while ($donnees = mysql_fetch_array($req))
		{
			$out .= '<tr class="cl_player">	<td class="cl_position">'.$i.' -</td>
';
			for ($j=0; $j<sizeof($aff2); $j++)
			{
				$out .= '	<td';
				if (strlen($class[$j])>0)
					$out .= ' class="'.$class[$j].'"';
				$out .= '>';
				if ($aff2[$j]=="NTR")
					$out .= $donnees['nom'].', '.$donnees['titre'].' '.$donnees['royaume'];
				else if ($aff2[$j]=="AVATAR")
					$out .= '<img src="'.setimage($i).'" height="20" width="20">';
				else
				{
					if (strlen($aff2[$j])>0)
						$command = '$out .= "'. $op1[$j] . $donnees[$aff2[$j]] . $op2[$j] .'";';
					else
						$command = '$out .= "'. $op1[$j] . 			 $op2[$j] .'";';
					eval ($command);
				}
				$out .= '</td>
';
			}
			$out .= '	</tr>
<tr>	<td></td>
	<td colspan="'.sizeof($aff1).'" class="cl_vspacer"></td>	</tr>
';
			$i++;
		}
		$out .= '</table>'.$vspacer;
		echo $out;
		if (!$dynamique) 		// on a pas expréssement donné l'ordre de calculer, c'est donc que le fichier n'existait pas. On va donc le créer!
		{
			$fp = fopen($file,"w+");
			fwrite ($fp,$out);
			fclose ($fp);
			echo "Ecriture dans le fichier $file.<br>\n";
		}
	}
}
?>
