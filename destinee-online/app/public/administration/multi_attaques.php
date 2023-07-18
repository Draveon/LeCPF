<html>
<body>

<center><b>Détecteur de multis aux attaques</b><br><br>

<?
if ((isset($_GET['develop']))&&($_GET['develop']=='yes'))
{
	$develop = true;
	echo '<a href="multi_attaques.php?develop=no">Réduire</a><br><br>';
}
else
{
	$develop = false;
	echo '<a href="multi_attaques.php?develop=yes">Développer</a><br><br>';
}

	
echo '<table border="0">';
echo '<tr>	<td width="50">&nbsp;</td>	<td width="100">Attaquant</td>	<td width="140">Guilde</td>	<td width="100">Défenseur</td>	<td width="100">Vainqueur</td>	<td width="140">Heure, date</td>	<td width="100">IP</td><td width="100">Commentaires</td></tr>';

for ($serveur=1; $serveur<=3; $serveur++)
{
	include("choix_serveurs.php");

	$sql = "SELECT * FROM combat_joueurs ORDER BY ip_att ASC, attaquant ASC, temps ASC, defendant ASC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

	$data = array();
	$i = 0;
	while ($tmp = mysql_fetch_assoc($req))
	{
		if ( ($tmp['victoire'] != 'Espionnage') && ($tmp['victoire'] != 'Foire') && ($tmp['ip_att'] != ''))
		{
			$data[$i] = $tmp;
			$i++;
		}
	}

	echo '<tr><td colspan="7"><b>Serveur '.$serveur.'</b></td></tr>';
	$i = 0;
	$out = array();
	while ($i < sizeof($data))
	{	
		$sql2 = "SELECT Commentaires FROM joueurs_infos WHERE nom = '".$data[$i]['attaquant']."';";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
		if ($tmp = mysql_fetch_row($req2))
			$com = $tmp[0];
		else	$com = '';
		$sql2 = "SELECT guilde FROM joueurs_bonus WHERE nom = '".$data[$i]['attaquant']."';";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
		$guilde = mysql_fetch_row($req2);
				
		$out[$i] = '<tr>	<td>&nbsp;</td>	<td>'.$data[$i]['attaquant'].'	</td><td>'.$guilde[0].'	</td><td>'.$data[$i]['defendant'].'	</td><td>'.$data[$i]['victoire'].'	</td><td>'.str_replace('<br>',', ',$data[$i]['date']).'	</td><td><a href="joueur.php?mode=recherche&quoi=ip&value='.$data[$i]['ip_att'].'">'.$data[$i]['ip_att'].'</a>	</td><td>'.$com.'	</td></tr>';
		$flag = false;	// si affichage
		$dble = false;	// en gras si même cible
		$n = 1;
		while ( ($n < sizeof($data)) && ($data[$i]['ip_att'] == $data[ ($i+$n) ]['ip_att']) )
		{
			$z = $i + $n;
						
			$sql2 = "SELECT Commentaires FROM joueurs_infos WHERE nom = '".$data[$z]['attaquant']."';";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
			if ($tmp = mysql_fetch_row($req2))
				$com = $tmp[0];
			else	$com = '';
			$sql2 = "SELECT guilde FROM joueurs_bonus WHERE nom = '".$data[$z]['attaquant']."';";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
			$guilde = mysql_fetch_row($req2);

			$out[$z] = '<tr>	<td>&nbsp;</td>	<td>'.$data[$z]['attaquant'].'	</td><td>'.$guilde[0].'	</td><td>'.$data[$z]['defendant'].'	</td><td>'.$data[$z]['victoire'].'	</td><td>'.str_replace('<br>',', ',$data[$z]['date']).'	</td><td><a href="joueur.php?mode=recherche&quoi=ip&value='.$data[$z]['ip_att'].'">'.$data[$z]['ip_att'].'</a>	</td><td>'.$com.'	</td></tr>';
			
			for ($k=$i; $k<$z; $k++)					// on regarde pour une certaine IP, les correspondances entre attaquants-attaqués
				if ( ($data[$k]['attaquant'] != $data[$z]['attaquant']) && ($data[$k]['defendant'] == $data[$z]['defendant']) )
				{
					$out[$k] = str_replace('<tr>','<tr style="color: #ff0000">', $out[$k]);
					$out[$z] = str_replace('<tr>','<tr style="color: #ff0000">', $out[$z]);
					$dble = true;
				}

			if ($data[$z]['attaquant'] != $data[$i]['attaquant'])		// test pour toutes les enregistements, est-ce que 2 types squattent la même IP
				$flag = true;
			$n++;
		}
		
		if (($flag)&& (($develop)||($dble)) )
		{
			$out_ = '';
			for ($k=$i; $k<$i+$n; $k++)
			{
				if (($dble)&&($develop))
				{
					$out = str_replace('<td>','<td><b>',$out);
					$out = str_replace('</td>','</b></td>',$out);
				}
				$out_ .= $out[$k];
			}
			echo $out_;
			echo '<tr><td colspan="7">&nbsp;</td></tr>';
		}
		$i += $n;
	}
	
	mysql_close();
}
echo '</table>';
?>

<br><br><a href="administration.php">Retour</a></center>

</body>
</html>
