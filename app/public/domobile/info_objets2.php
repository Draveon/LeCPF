<?php session_start();

include("connect.php");
include ("info_objets_include.php");



$obj_data = false;
if (isset($_REQUEST['objet']))
{
	if (is_numeric($_REQUEST['objet']))
		$sql = "SELECT * FROM objets_stats WHERE id = '".$_REQUEST['objet']."'";
	else
		$sql = "SELECT * FROM objets_stats WHERE nom = '".mysql_real_escape_string($_REQUEST['objet'])."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if (!($obj_data = mysql_fetch_assoc($req)))
		$obj_data = false;
}


if ($obj_data != false)
{
	echo '	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
		<html>
		<head>
			<title>'.$obj_data['nom'].'</title>
			<link rel="stylesheet" type="text/css" href="style_divers.css" />
			<script type="text/javascript" src="fonctions/changement_image.js"></script>
			<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
			<meta name="keywords" content="objet, '.$obj_data['type'].', '.$obj_data['nom'].', objet, inventaire, accessoires, armes, equipement, équipement, armure, amulette, epee">
		</head>
		<body class="bodypopup" marginheight=0 marginwidth=0>
		<br>
		<div align="center">
		<table class="cadretablepopup">
		<tr>	<td colspan="3" class="cadretopleft"></td>
			<td rowspan="2" class="cadretopright"></td></tr>
		<tr>	<td class="cadremiddleleft"></td>
			<td colspan="2" class="cadrecontenupopupc">
		<b>'.$obj_data['nom'].'</b></b><br>&nbsp;
		<table class="discr100"><tbody>
		<tr>	<td class="discr100img">';
	echo affiche_image_objet ($obj_data['nom'], $obj_data['image'], '', 100, 0);
	echo 	'</td><td>Type : '.$obj_data['type'].'<br>Niveau '.$obj_data['niv'].'<br><br>';
	if ($obj_data['type'] == 'Consommable') {
		echo affiche_effet_consommable($obj_data);
	} else {
		echo liste_bonus ($obj_data);
	}
	echo '</td></tr></table>
	&nbsp;</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></body></html>';
}

mysql_close();

?>
