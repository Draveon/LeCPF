<?php
include("connect.php");

$batiment = mysql_real_escape_string(str_replace("\'","'",urldecode($_GET['batiment'])));


$sql = "SELECT * FROM creatures WHERE nom = '$batiment'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$id = $data[0];
$niv = $data[3];
$creature = $data[1];
$cout = number_format($data[5], 0, ",", " ");
$nombre = $data[6];
$espace = number_format($data[7], 0, ",", " ");
$terrain01 = ucfirst($data[8]);
$terrain02 = ucfirst($data[9]);
$terrain03 = ucfirst($data[10]);
$cout_or = $data4[20];
$cout_mana = $data4[21];
$image = $data[22];

$batiment = stripslashes($batiment);

mysql_close();

echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.$batiment.' : '.$creature.' : www.destinee-online.com</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
	<meta name="keywords" content="'.$creature.', '.$batiment.', créature, créature, creature, batiment, bâtiment, recruter, armée, armee">
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
	<h4>'.$batiment.'</h4><br>&nbsp;';

echo '<table class="discr100"><tbody>
<tr>	<td rowspan="9" class="discr100img">';
if ($creature != "N/A")
	echo '	<a href="info_creature2.php?creature='.urlencode($creature).'"><img src="'.$image.'" width="100" height="100" alt="'.$creature.'" title="'.$creature.'" border=1></a>';
else
	echo '	<img src="'.$image.'" width="100" height="100" alt="Tour de Magie" title="Tour de Magie" border=1>';
echo '</td></tr>

<tr>	<td>Créature :		</td><td>'.$creature.'</td></tr><tr>
	<td>Niveau :		</td><td>'.$niv.'</td></tr><tr>
	<td style="white-space: nowrap;">Créatures/jour :	</td><td>'.$nombre.'</td></tr><tr>
	<td>Coût de base :	</td><td>'.$cout.'</td></tr><tr>
	<td>Espace :		</td><td>'.$espace.'</td></tr><tr>
	<td>Coût (or) :		</td><td>'.$cout_or.'</td></tr>
	<td>Coût (mana) :	</td><td>'.$cout_mana.'</td></tr>
	<td style="vertical-align: top;">Terrain(s) :</td><td>';

if ($terrain01 != "0")	echo $terrain01.'<br>';
if ($terrain02 != "0")	echo $terrain02.'<br>';
if ($terrain03 != "0")	echo $terrain03.'<br>';

echo '	&nbsp;</td></tr></tbody></table>';

echo '</td></tr>
<tr><td colspan="4" class="cadrebottom"></td></tr>
</tbody></table>
</body>
</html>
';
?>

