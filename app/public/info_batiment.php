<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

include("connect.php");

$batiment = (isset($_GET['batiment'])) ? stripslashes(urldecode(mysql_real_escape_string($_GET['batiment']))) : '';
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$type = ((isset($_GET['type']))&&(is_numeric($_GET['type']))) ? $_GET['type'] : 1;

// la seule valeur possible devrait être 3. Je laisse le reste du code en commentaire au cas où
$interface = ($type==3) ? 'batspe' : '';

if (is_numeric($batiment))
{
	
}



function linktobatiment ($batiment)
{
	global $terrain, $type;
	return '<a href="info_batiment.php?type='.$type.'&batiment='.urlencode($batiment).'">'.$batiment.'</a>';
}

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title><?phpecho $batiment?></title>
       	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body marginheight=0 marginwidth=0 class="bodypopup">
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc">

<?php

// bâtiment spécial
include ('batimentspec_include.php');
$mod = 1;
$espace = 0;
$terrain = '';
$creature = 'N/A';
$id = 0;
$submit = false;

if (is_numeric($batiment))
	$id = $batiment;
else
{
	foreach ($batspe AS $j => $value)
		if ($value['nom'] == $batiment)
			$id = $j;
}

if ($id != 0)
{
	$batiment = $batspe[$id]['nom'];
	$lvl = $batSpeConstr[$id];
	$image = 'images/special/'.$batspe[$id]['image'];
	
	// prérequis
	$branch = $batspe[$id]['branche'];
	$requis = '';
	if ($batspe[$id]['requis'] != '')
	{
		foreach (explode(',', $batspe[$id]['requis']) AS $j)
		{
			$requis .= linktobatiment ($batspe[$j]['nom']);
			if ($batspe[$j]['branche'] != $branch)
				$requis .= ' (branche '.$branche[$batspe[$j]['branche']].')';
			$requis .= ', ';
		}
		$requis = substr($requis, 0, strlen($requis)-2);
	}
	if ($requis == '')
		$requis = '<i>Aucun</i>';
	if (substr_count($requis, ','))
		$requis .= ' <i>(un seul nécessaire)</i>';
	// bâtiment libérés
	$donne = '';
	foreach ($batspe AS $j => $dat1)
	{
		$req = $batspe[$j]['requis'];
		foreach (explode(',', $req) as $i)
			if ($i == $id)
		{
			$donne .= linktobatiment ($batspe[$j]['nom']);
			if ($batspe[$j]['branche'] != $branch)
				$donne .= ' (branche '.$branche[$batspe[$j]['branche']].')';
			$donne .= ', ';
		}
	}
	$donne = substr($donne, 0, strlen($donne)-2);
	if ($donne == '')
		$donne = '<i>Aucun</i>';
	
	// complétion du tableau de données principal
	$sql1 = "SELECT `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2` FROM `$tableBatSpe` WHERE `id` = '$id'";
	$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.mysql_error());
	$dat1 = mysql_fetch_assoc($req1);
	foreach ($dat1 AS $key => $value)
		$batspe[$id][$key] = $value;
	$bonusact = getTxt ($id, $lvl);
	$bonus0 = getTxt ($id, 1);
	
	if ($batSpeConstr[$id] > 0)
		$submit = true;
}



$espace = ceil($espace/$mod);
$espace = number_format($espace, 0, ",", ",");
$terrain = ucfirst($terrain);

// écoulement du temps
include("temps_ecoulement.php");
$parjour = '/jour';
if ($temps_ecoulement != 1)
	$parjour = ' / '.round(1/$temps_ecoulement,2).' jours';


mysql_close();

$batiment = stripslashes ($batiment);

echo '<h4>'.$batiment."</h4><br>";

echo '<br>
<table class="discr100"><tbody>
<tr>	<td rowspan="6" class="discr100img">';
if ($creature != 'N/A')	echo '<a href="info_creature.php?creature='.$creature.'"><img src="'.$image.'" width="100" height="100" alt="'.$creature.'" border=1></a>';
else			echo '<img src="'.$image.'" width="100" height="100" alt="'.$creature.'" border=1>';


echo '</td>	<td>&nbsp;</td></tr>
	<tr><td>Nom :		</td><td> '.$batiment.'</td></tr>
	<tr><td>Branche :	</td><td> '.$branche[$branch].'</td></tr>
	<tr><td>Construit :	</td><td> '.$lvl.' fois</td></tr>';
if ($lvl > 0) echo '	<tr><td class="nowrap">Bonus actuel :					</td><td> '.$bonusact.'</td></tr>';	else echo '<tr>	<td colspan=2>&nbsp;</td></tr>';
if ($lvl!= 1) echo '	<tr><td class="nowrap">Bonus initial :<br><i>(première constr.)</i>	</td><td> '.$bonus0.'</td></tr>';	else echo '<tr>	<td colspan=2>&nbsp;</td></tr>';
echo '	<tr><td>Prérequis :	</td><td colspan=2> '.$requis.'</td></tr>
	<tr><td>Donne accès :	</td><td colspan=2> '.$donne.'</td></tr>
	';

echo '
</tbody></table><br>&nbsp;

</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></div>
</body>
</html>
';
?>
