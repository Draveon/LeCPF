<?php session_start();

$message = $_GET['message'];
$texte = $_GET['texte'];
$serveur = $_GET['serveur'];
$nom = $_SESSION['nom'];
?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>Vos messages</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body class="bodypopup" marginheight=0 marginwidth=0>
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupl">
<?php

include("connect.php");
$sql = "SELECT * FROM combat_joueurs WHERE id = '$message'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$texte = $data[$texte];
if(($nom == $data[1] && (int)$_GET['texte'] == 6) || ($nom == $data[2] && (int)$_GET['texte'] == 7)) echo '<br>'.$texte.'<br>&nbsp;';
else { echo '<br />Désolé mais mon chien vient de manger la base de données...<br />Tu repasses quand jlui aurai filé un laxatif?<br />'; }


mysql_close();
?>

</td></tr>
<tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>
</body>
</html>


