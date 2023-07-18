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



// *** *** *** Préambule
$batspe = array();
$req = mysql_query("SELECT `id`, `nom`, `branche`, `image`, `type`, `requis`, `niveau`, `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2` FROM `$tableBatSpe` WHERE `affiche` = '1' ORDER BY `branche` ASC, `niveau` ASC, `type` ASC, `id` ASC") or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))
{
	$batspe[($data['id'])] = $data;
}
	

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
$sqlconstr = "'1' = '1'";


// contrôle du nombre de bâtiments constructibles
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
	
	echo '<tr><td style="padding-left: '.(20*($data['niveau']-1)).'px;"><a target="_blank" href="images/special/'.$data['image'].'"><img src="images/special/'.$data['image'].'" width=20 alt="" border=1></a> '.$data['nom'].'</td><td>'.getTxt ($data['id'], $construit[$data['id']]+1).'</td></tr>';
}
echo '</table>';



					
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

?>
</body>
</html>
