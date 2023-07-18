<?php
include("connect.php");

$classe = mysql_real_escape_string(str_replace("\'","'",urldecode($_GET['classe'])));

$sql = "SELECT image, description FROM classes WHERE classe = '$classe'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$dat = mysql_fetch_row($req);

mysql_close();

echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.$classe.' (Classes) : Destinee-online</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
	<meta name="keywords" content="'.$classe.', classe, metier, specialisation, personnage, RPG, jeu de role">
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
	<h4>'.$classe.'</h4><br>
	<img src="'.$dat[0].'" border="1"><br><br>
	<div class="longtexte" style="text-align: justify;">'.$dat[1].'</div>
	</td></tr>
<tr><td colspan="4" class="cadrebottom"></td></tr>
</tbody></table>
</div>
</body>
</html>';

?>

