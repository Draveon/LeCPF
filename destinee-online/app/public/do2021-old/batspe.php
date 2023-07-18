<html>
<head>
	<title>Test</title>
</head>
<body>
<?php

$serveur = 1;
$nom = 'Paladin';
include 'connect.php';

$tableBatSpe = 'batimentspeciaux';
$tableJoueurs = 'joueurs_batspe';
$page = 'batspe.php';

$branche = array('du Combat', 'de la Magie', 'du Héros');


$construire = ((isset($_GET['construire']))&&(is_numeric($_GET['construire'])))	? round($_GET['construire']) : '';
$detruire   = ((isset($_GET['detruire']))&&(is_numeric($_GET['detruire'])))	? round($_GET['detruire']) : '';



// *** *** *** Préambule
$batspe = array();
$req = mysql_query("SELECT `id`, `nom`, `branche`, `image`, `type`, `requis`, `niveau`, `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2` FROM `$tableBatSpe` WHERE `affiche` = '1' ORDER BY `branche` ASC, `niveau` ASC, `type` ASC, `id` ASC") or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))
{
	$batspe[($data['id'])] = $data;
}

/*
$sql = "SELECT `niveau` FROM `joueurs_stats` WHERE `nom` = '$nom'";
$res = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($res);
$niveau = $data[0];
*/
$niveau = 30;
$nbrBatAuth = floor($niveau/3);


// *** *** *** construit et détruit les bâtiments
$erreur = '';
if ($construire != '')
	construitBatSpe	($construire, $erreur);
if ($detruire != '')
	detruitBatSpe	($detruire, $erreur);
echo $erreur.'<br><br>';
	


// *** *** *** affiche ce qui est construit
$construit = array();
$req = mysql_query("SELECT * FROM `$tableJoueurs` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$id = 1;
while (isset($data[$id]))
{
	$construit[$id] = $data[$id];
	$id++;
}
echo 'Batiment construits:<br><br><table>';
$j=1;
for ($i=0; $i<sizeof($branche); $i++)
{
	echo '<tr><td colspan=5><b>Branche '.$branche[$i].'</b></td></tr>';
	while ((isset($batspe[$j]))&&($batspe[$j]['branche'] == $i))
	{
		if ($construit[$j] != 0)
		{
			$txt = getTxt ($j, $construit[$j]);
			$requis = '';
			if ($batspe[$j]['requis'] != '')
			{
				$possibles = explode (',', $batspe[$j]['requis']);
				foreach ($possibles AS $possible)
				{
					if ($construit[$possible] > 0)
						$requis .= $batspe[$possible]['nom'].' ';
				}
			}
			echo '<tr><td style="padding-left: '.(20*($batspe[$j]['niveau']-1)).'px;"><a target="_blank" href="images/special/'.$batspe[$j]['image'].'"><img src="images/special/'.$batspe[$j]['image'].'" width=20 alt="" border=1></a></td><td>'.$batspe[$j]['nom'].'</td><td>lvl '.$construit[$j].'</td><td>'.$txt.'</td><td>'.$requis.'</td><td><a href="'.$page.'?detruire='.$j.'">Détruire</a><td></tr>';
		}
		$j++;
	}
}
echo '</table>';
echo '<br><br>';



// *** *** *** affiche les batiments constructibles
$construit = array();
$sqlconstr = '';
$req = mysql_query("SELECT * FROM `$tableJoueurs` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$nivRestriction = $data['nivRestriction'];
$nbrBat = 0;
$id = 1;
while (isset($data[$id]))
{
	$construit[$id] = $data[$id];
	if ($data[$id] != 0)
	{
		$sqlconstr .= ' `requis` LIKE \''.$id.'\' OR';
		$sqlconstr .= ' `requis` LIKE \''.$id.',%\' OR';
		$sqlconstr .= ' `requis` LIKE \'%,'.$id.'\' OR';
		$sqlconstr .= ' `requis` LIKE \'%,'.$id.',%\' OR';
	}
	$nbrBat += $data[$id];
	$id++;
}
$sqlconstr .= ' `requis` = \'\' ';

// contrôle du nombre de bâtiments constructibles
if ($nbrBat >= $nbrBatAuth)
{
	echo 'Vous ne pouvez pas construire de bâtiment spécial pour le moment. Vous pouvez en construire un tous les 3 niveaux (soit aux niveaux 3, 6, 9, etc.).<br>';
}
else if ($niveau + ($nbrBatAuth-$nbrBat) <= $nivRestriction)
{
	echo 'Suite à une destruction de bâtiment, vous devez attendre de passer de niveau avant de pouvoir construire à nouveau votre bâtiment spécial.';
}
else
{
	echo 'Batiments constructibles<br><br>';
	echo '<table>';
	
	$branch = -1;
	$sql = "SELECT `id`, `nom`, `branche`, `type`, `image`, `niveau` FROM `$tableBatSpe` WHERE `affiche` = '1' AND ( $sqlconstr ) ORDER BY `branche` ASC, `niveau` ASC, `type` DESC, `id` ASC";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_assoc($req))
	{
		if ($branch != $data['branche'])
		{
			echo '<tr><td colspan=5><b>Branche '.$branche[$data['branche']].'</b></td></tr>';
			$branch = $data['branche'];
		}
		
		echo '<tr><td style="padding-left: '.(20*($data['niveau']-1)).'px;"><a target="_blank" href="images/special/'.$data['image'].'"><img src="images/special/'.$data['image'].'" width=20 alt="" border=1></a> '.$data['nom'].'</td><td>lvl '.($construit[($data['id'])]+1).'</td><td>'.getTxt ($data['id'], $construit[$data['id']]+1).'</td><td><a href="'.$page.'?construire='.$data['id'].'">Construire</a><td></tr>';
	}
	echo '</table>';
}
echo '<br><br>';

// *** *** *** Construction d'un bâtiment
function construitBatSpe ($id, &$erreur)
{
	global $nom, $tableBatSpe, $tableJoueurs, $nbrBatAuth, $niveau;
	
	// nombre de bâtiments déjà construits
	$req = mysql_query("SELECT * FROM `$tableJoueurs` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$nivRestriction = $data['nivRestriction'];
	$nbrBat = 0;
	$j = 1;
	while (isset($data[$j]))
	{
		$nbrBat += $data[$j];
		$j++;
	}
	if (($nbrBat >= $nbrBatAuth) || ($niveau + ($nbrBatAuth-$nbrBat) <= $nivRestriction))
	{
		$erreur .= 'Vous ne pouvez bâtir de bâtiment spécial en ce moment, vous n\'avez pas le niveau requis.';
		return false;
	}
	
	$req = mysql_query("SELECT `nom`, `type`, `multiple`, `affiche`,  `requis`, `bnum1`, `bnum2`, `bfloat1`, `bfloat2`, `btxt1`, `btxt2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		$req1 = mysql_query("SELECT `$id` FROM `$tableJoueurs` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		if ($dat1 = mysql_fetch_row($req1))
		{
			$level = $dat1[0];
			if (($data['affiche'] == 1) && (($data['multiple']!=0) || (($data['multiple']==0)&&($level != 0))))
			{
				// check si les prérequis du bâtiment sélectionné sont bien là
				$authorised = false;
				$sqlconstr = '';
				$req2 = mysql_query("SELECT * FROM `$tableJoueurs` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
				$dat2 = mysql_fetch_assoc($req2);
				$j = 1;
				while (isset($dat2[$j]))
				{
					if ($dat2[$j] != 0)
					{
						$sqlconstr .= ' `requis` LIKE \''.$j.'\' OR';
						$sqlconstr .= ' `requis` LIKE \''.$j.',%\' OR';
						$sqlconstr .= ' `requis` LIKE \'%,'.$j.'\' OR';
						$sqlconstr .= ' `requis` LIKE \'%,'.$j.',%\' OR';
					}
					$j++;
				}
				$sqlconstr .= ' `requis` = \'\' ';
				$sql2 = "SELECT `id` FROM `$tableBatSpe` WHERE `affiche` = '1' AND ( $sqlconstr ) ORDER BY `branche` ASC, `niveau` ASC, `type` DESC, `id` ASC";
				$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
				while ($dat2 = mysql_fetch_assoc($req2))
					if ($dat2['id'] == $id)
						$authorised = true;
				
				if ($authorised)
				{
					// ajout des bonus
					for ($i=1; $i<=2; $i++)
					{
						$dbtable = $data['tablename'.$i];
						$dbfield = $data['bfield'.$i];
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $level+1) - getBonusLevel ($bonus, $level);
						if ((strlen($dbtable) > 0)&&(strlen($dbfield) > 0)&&($bonus != 0))
						{
							$sql = "UPDATE `$dbtable` SET `$dbfield` = `$dbfield` + '$bonus' WHERE `nom` = '$nom'";
							//mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
//							echo $sql.'<br>';
							$erreur .= ' Bonus accordé avec succès.';
						}
					}
					
					// hausse du niveau du batiment
					mysql_query("UPDATE `$tableJoueurs` SET `$id` = `$id` + '1' WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
					$erreur .= ' Niveau du bâtiment spécial augmenté.';
					
					return true;
				}
			}
		}
	}
	else
	{
		$erreur .= 'Le bâtiment sélectionné n\'existe pas. ';
	}
	
	$erreur .= ' Le problème peut être causé par l\'une des raisons suivantes: le bâtiment demandé n\'est pas disponible, les mises à niveau ne sont pas permises pour ce bâtiment, le joueur n\'existe pas, le bâtiment désiré requiert la présence d\'un autre batiment qui n\'est pas en votre possession.';
	return false;
}


// *** *** *** Supression de bâtiment
function detruitBatSpe ($id, &$erreur)
{
	global $nom, $batspe, $tableBatSpe, $tableJoueurs, $niveau, $nbrBatAuth;
	
	$req = mysql_query("SELECT `nom`, `type`, `multiple`, `affiche`,  `requis`, `bnum1`, `bnum2`, `bfloat1`, `bfloat2`, `btxt1`, `btxt2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		if ($req1 = mysql_query("SELECT `$id`, `nivRestriction` FROM `$tableJoueurs` WHERE `nom` = '$nom'"))
		{
			if ($dat1 = mysql_fetch_row($req1))
			{
				$level = $dat1[0];
				if ($level > 0)
				{
					// contrôle des bâtiments requis
					if ($level == 1)	// 1->0 => destruction du batiment; 2->1 => baisse de niveau => pas grave
					{
						$bat = array();
						$re2 = mysql_query("SELECT * FROM `$tableJoueurs` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
						$dat2 = mysql_fetch_assoc($re2);
						$i = 1;
						while (isset($dat2[$i]))
						{
							$construit[$i] = $dat2[$i];
							$i++;
						}
						
						if (!isDestroyablePrerequis($id, $construit, $erreur))
						{
							$erreur .= 'Ce bâtiment ne peut pas être détruit puisque son existence est requise pour d\'autres bâtiments.';
							return false;
						}
					}
					
					// retrait des bonus
					for ($i=1; $i<=2; $i++)
					{
						$dbtable = $data['tablename'.$i];
						$dbfield = $data['bfield'.$i];
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $level) - getBonusLevel ($bonus, $level-1);
						if ((strlen($dbtable) > 0)&&(strlen($dbfield) > 0)&&($bonus != 0))
						{
							$sql = "UPDATE `$dbtable` SET `$dbfield` = `$dbfield` - '$bonus' WHERE `nom` = '$nom'";
							// mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
//							echo $sql.'<br>';
							$erreur .= ' Bonus retiré avec succès.';
						}
					}
					
					// contraie pour limiter les possibilités de construire/détruire
					$nivRestriction = max ($niveau+1, $dat1[1]+1);
$nivRestriction = 0;
					
					// baisse du niveau du batiment
					mysql_query("UPDATE `$tableJoueurs` SET `$id` = `$id` - '1', `nivRestriction` = '$nivRestriction' WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
					$erreur .= ' Niveau du bâtiment spécial baissé.';
					
					return true;
				}
				else
					$erreur .= 'Ce bâtiment n\'est actuellement pas construit.';
			}
		}
		else
			$erreur .= 'Le bâtiment sélectionné n\'existe pas. ';
	}
	$erreur .= ' Le problème peut être causé par l\'une des raisons suivantes: le bâtiment n\'a jamais été construit, le joueur n\'existe pas.';
	return false;
}

					
// controle si la destruction du batiment est impossible du point de vue des prérequis
function isDestroyablePrerequis ($id, $construit, &$erreur)
{
	global  $batspe;
	
	$construit[$id] = 0;	// le batiment à détruire ne compte pas pour le test de prérquis. On liste tous les batiments et on regarde si les rpérequis sont satisfait. Il faut faire comme ça puisque certain bâtiments peuvent être "libérés" au moyen de plusieurs autres différents; si deux d'entre eux sont construits on veut pouvoir en détruire un
	foreach  ($construit AS $batindex => $constr)
	{
		if ($constr > 0)	// sur chaque batiment de niveau > 0
		{
			$toutbon = true;
			if ($batspe[$batindex]['requis'] != '')
			{
				//echo $batspe[$batindex]['id'].'|'.$batspe[$batindex]['requis'].'<BR>';
				$explode = explode(',', $batspe[$batindex]['requis']);
				$ok = false;
				foreach ($explode AS $index => $requis)
				{
					if ($construit[$requis] > 0)	// si un des prérequis est satisfait
						$ok = true;
				}
				if (!$ok)
				{
					$toutbon = false;
					$erreur .= ' Un autre bâtiment spécial ('.$batspe[$batindex]['nom'].') nécessite celui que vous désirez détruire.';
				}
			}
			if (!$toutbon)
			{
				return false;
			}
		}
	}
	return true;
}

// retourne la somme des bonus donné par le bâtiment, selon son niveau
function getBonusLevel ($bonus, $level)
{
	if ($level == 0)	return 0;
	if ($level == 1)	return $bonus;
	if ($level == 2)	return $bonus *5/3;
	if ($level == 3)	return $bonus * 2;
	return $bonus * 2;
	
	// erroné return max(0, $bonus*(4-$level)/3);
//	return round($bonus * (1- pow(2/3, $level))*3 *1000)/1000;
}

// retourne le descriptif du bâtiment
function getDescriptif ($string, $num, $float)
{
	return str_replace (array('NUM', 'FLOAT'), array($num, $float*100), $string);
}

// retourne le descrptif complet du bâtiment
function getTxt ($j, $level)
{
	global $batspe;
	$txt1 = getDescriptif($batspe[$j]['btxt1'], getBonusLevel($batspe[$j]['bnum1'], $level), round(getBonusLevel($batspe[$j]['bfloat1'], $level),2));
	$txt2 = getDescriptif($batspe[$j]['btxt2'], getBonusLevel($batspe[$j]['bnum2'], $level), round(getBonusLevel($batspe[$j]['bfloat2'], $level),2));
	if ($txt2 != '')
		$txt2 = ', '.strtolower($txt2[0]).substr($txt2,1);
	return $txt1;
}


echo 'Vous avez droit de construire une bâtiment spécial tous les trois niveaux (soit aux niveaux 3, 6, 9, etc.). Ceux-ci vous permettent de mieux personnaliser votre héros, en lui conférant des bonus de différents types (bonus aux caractéristiques, aux aptitudes, ou différents bonus en combat). Ces bâtiments ne nécessitent pas d\'acres à proprement parler pour être construits; on peut dire qu\'ils sont inclus dans les points liés au niveau dans le calcul de la puissance. Ils ne nécessitent pas non plus de ressources pour être construits.<br>
Les bâtiments se répartissent en trois branches: celle du Combat, celle de la Magie et celle du Héros. La première se focalise sur des bonus ayant trait directement aux aspects attaque/défense dues combats entre joueurs. La seconde branche s\'oriente quand à elle vers des améliorations de l\'utilisation et de l\'efficacité des sorts. Enfin, la branche du Héros regroupe tout un ensemble de bonus allant de l\'augmentation des caractéristiques, un minage plus efficace ou un bonus à l\'aptitude de Sabotage.<br>
Chaque branche est organisée en trois niveaux. Le premier niveau est consitué d\'un seul bâtiment, qu\'il est nécessaire de construire avant de pouvoir bâtir tout autre bâtiment de la branche. Posséder ce premier bâtiment autorise la construction de plusieurs autres qui seront dévoilés au fur et à mesure de leur disponibilité. A nouveau, la construction d\'un de ces bâtiments peut parfois libérer un nouveau bâtiment spécial que vous pourrez construire par la suite.<br>
Il est possible de construire plusieurs fois le même bâtiment spécial. Toutefois, le bonus apporté sera moindre (seuls deux tiers du plein bonus seront apportés par un deuxième bâtiment identique, et seulement un tiers au troisième). Il n\'est pas possible de construire un bâtiment plus de trois fois.<br>';

echo 'Il vous est possible de détruire vos bâtiments spéciaux, puis de les reconstruire. Cependant, tout comme il faut du temps pour aquérir la pleine maîtrise d\'une technique, il vous faudra du temps pour pouvoir bâtir à nouveau les bâtiments auxquels vous avez droit. Chaque bâtiment détruit ne peut être reconstruit qu\'après le passage d\'un niveau, de manière cumulable. Ainsi, si vous êtes de niveau 16 et détruisez 2 bâtiments spéciaux, il vous faudra attendre le niveau 17 avant de pouvoir reconstruire le premier bâtiment détruit, et le niveau 18 pour le second.';

?>
</body>
</html>
