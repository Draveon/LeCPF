<?php

include("connect.php");

$race_ = (isset($_GET['race'])) ? mysql_real_escape_string($_GET['race']) : '';

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title><?phpecho $race_; ?>: Races : Destine-Online</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
	<meta name="keywords" content="'.$race_.', race, races, personnage, héros, elfe, elfe noir, homme, nain, géant, vampire, orque">
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
$req = mysql_query("SELECT image, description FROM races WHERE race = '".$race_."'") or die('Erreur SQL !<br>'.mysql_error());
$dat = mysql_fetch_row($req);
mysql_close();


echo '<h4>'.$race_.'</h4><br><br>
	<img src="'.$dat[0].'" border="1"><br><br>
	<div class="longtexte" style="text-align: justify;">'.str_replace("\n",'<br>',$dat[1]).'</div>';

?>
&nbsp;
</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr>
</tbody></table>
</div>
</body>
</html>
