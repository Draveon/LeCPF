<?php
include("connect.php");

$creature = mysql_real_escape_string(urldecode($_GET['creature']));

$sql = "SELECT * FROM creatures WHERE nom = '$creature'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$id = $data[0];
$type = $data[2];
$niv = $data[3];
$batiment = $data[4];
$image = $data[22];
$att = $data[11];
$def = $data[12];
$ini = $data[13];
$end = $data[14];
$pvs = $data[15];
$min = $data[16];
$max = $data[17];
$vol = $data[18];
$range = $data[19];

$creature = stripslashes($creature);

mysql_close();


echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.$creature.' ('.$batiment.') : destinee-online</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
	<meta name="keywords" content="'.$creature.', '.$batiment.', créature, créature, bâtiment, recruter, armee, armée, creature, batiment">
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
	<h4>'.$creature.'</h4><br>&nbsp;';

echo '<table class="discr100"><tbody>
<tr>	<td rowspan="12" class="discr100img"><a href="info_batiment2.php?batiment='.urlencode($batiment).'"><img src="'.$image.'" width="100" height="100" alt="'.$creature.'" title="'.$creature.'" border=1></a></td></tr>';
echo "<tr><td>Type :</td><td> $type</td></tr><tr>
<td>Niveau :	</td><td> $niv</td></tr><tr>
<td>Attaque :	</td><td> $att</td></tr><tr>
<td>Défense :	</td><td> $def</td></tr><tr>
<td>Initiative :</td><td> $ini</td></tr><tr>
<td>Endurance :	</td><td> $end</td></tr><tr>
<td>Vitalité :	</td><td> $pvs</td></tr><tr>
<td>Dégâts :	</td><td> $min à $max</td></tr>";
if ($vol == 1)		echo "<td colspan='2'><i>Créature volante</i></td></tr>";
if ($vol == 2)		echo "<td colspan='2'><i>Créature qui giffle</i></td></tr>";
if ($range == 2)	echo "<td colspan='2'><i>Coups viscieux</i></td></tr>";
if ($range == 1)	echo "<td colspan='2'><i>Attaque à distance</i></td></tr>";

?>
		</tbody></table><br>
	</td></tr>
<tr>	<td colspan="4" class="cadrebottom"></td></tr>
</tbody></table></div>
<br>
</tbody>
</table>
</body>
</html>
