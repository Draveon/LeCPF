<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (((isset($_GET['serveur']))&&(in_array($_GET['serveur'], array(1,2,3,4,5)))))
{
       $serveur_off = $_GET['serveur'];
       include("administration/choix_serveurs_off.php");
}
else
       exit();

$cible = (isset($_GET['cible'])) ? $_GET['cible'] : '1';
if (!is_numeric($cible))
{
	$req = mysql_query("SELECT id FROM joueurs_heros WHERE nom = '".mysql_real_escape_string($cible)."'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		$cible = $data[0];
	else	exit();
}

$req = mysql_query("SELECT nom, race, classe, dieu, titre, royaume, puissance FROM joueurs_heros WHERE id = '$cible'") or die('Erreur SQL !<br>'.mysql_error());
if ($jheros = mysql_fetch_assoc($req))
{}
else
	exit();

$req = mysql_query("SELECT avatar, description FROM joueurs_heros WHERE id = '$cible'") or die('Erreur SQL !<br>'.mysql_error());
$image = mysql_fetch_row($req);
$description = $image[1];
if ($description == "")
	$description = "Aucune description n'est présentement disponible...";

$req = mysql_query("SELECT image FROM classes WHERE classe = '".$jheros['classe']."'") or die('Erreur SQL !<br>'.mysql_error());
$image_c = mysql_fetch_row($req);
$req = mysql_query("SELECT image FROM races WHERE race = '".$jheros['race']."'") or die('Erreur SQL !<br>'.mysql_error());
$image_r = mysql_fetch_row($req);
$req = mysql_query("SELECT image FROM stats_dieux WHERE nom = '".$jheros['dieu']."'") or die('Erreur SQL !<br>'.mysql_error());
$image_d = mysql_fetch_row($req);

mysql_close();
?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title><? echo $cible ?></title>
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
<form method="POST" action="gestionalliance.php"><br>
<div align="center"><table style="width: 92%; text-align: center; background-color: antiquewhite;" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
<?php
echo '<br><FONT SIZE=+2><b><span style="font-family: papyrus;">'.$jheros['nom'].', '.$jheros['titre'].' '.$jheros['royaume'].'</b></font></span><br><br>
<img src="/images/gauche.gif" alt="" border="0">
<img src="'.$image[0].'" width="100" height="100" alt="'.$jheros['nom'].'" border="1">
<img src="/images/droite.gif" alt="" border="0"><br><br>
Puissance totale : <b>'.number_format($jheros['puissance'], 0, ",", ",").'</b><br><br>
<center>
<table style="width: 100%;"><tbody>
<tr>	<td style="vertical-align: top; text-align: center;"><img src="'.$image_r[0].'" width="100" height="100" alt="'.$jheros['race'].'" border="1"></td>
	<td style="vertical-align: top; text-align: center;"><img src="'.$image_d[0].'" width="100" height="100" alt="'.$jheros['dieu'].'" border="0"></td>
	<td style="vertical-align: top; text-align: center;"><img src="'.$image_c[0].'" width="100" height="100" alt="'.$jheros['classe'].'" border="1"></td></tr>
</tbody></table><br><br><textarea rows=9 cols=50 wrap="on">'.$description.'</textarea>';

?>
<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
