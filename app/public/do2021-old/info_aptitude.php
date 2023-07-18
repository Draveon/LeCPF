<?php

include("connect.php");

if ((isset($_GET['aptitude']))&&(is_numeric($_GET['aptitude'])))
	$apt_id = $_GET['aptitude'];
else	exit ('Quel est le comble d\'un professeur de géographie ?<br><i>C\'est de voir un fleuve suivre son cours.</i>');


$req = mysql_query("SELECT image, description, niveau, nom FROM aptitudes_liste WHERE id = '".$apt_id."'") or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_row($req))
{
	$image = $data[0];
	$description = $data[1];
	$niv = $data[2];
	$aptitude = $data[3];
	
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
	<html>
	<head>
		<title>'.$aptitude.' : aptitudes : destinee-online</title>
		<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
		<meta name="keywords" content="'.$aptitude.', amelioration, amélioration, combat, bonus, avantage, trait, pouvoir">
		<link rel="stylesheet" type="text/css" href="style_divers.css">
	</head>
	<body class="bodypopup" marginheight=0 marginwidth=0>
	<br>
	<div align="center">
	<table class="cadretablepopup"><tbody>
	<tr>	<td colspan="3" class="cadretopleft"></td>
		<td rowspan="2" class="cadretopright"></td></tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td colspan="2" class="cadrecontenupopupc">
		<h4>'.$aptitude.'</h4><br>
	';
	
	echo '	<br><br>
		<img src="'.$image.'" alt="'.$aptitude.'" width="175" height="250" border=1><br>&nbsp;
		<div class="longtexte">'.$description.'</div></td></tr>
	<tr><td colspan="4" class="cadrebottom"></td></tr>
	</tbody></table>
	</body>
	</html>
	';

}

mysql_close();

?>