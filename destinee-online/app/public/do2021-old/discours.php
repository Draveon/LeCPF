<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

$cible = htmlentities(html_entity_decode($_GET['cible']));
$serveur_off = $_GET['serveur'];

include("administration/choix_serveurs_off.php");
$sql = "SELECT discours FROM candidat_palatinat WHERE NOM = '$cible'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$discours = $data[0];

$sql = "SELECT * FROM joueurs_heros WHERE nom = '$cible'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$race2 = $data['race'];
$classe2 = $data['classe'];
$dieu2 = $data['dieu'];
$titre2 = $data['titre'];
$royaume2 = $data['royaume'];
$puissance2 = number_format($data['puissance'], 0, ",", ",");
$image = $data['avatar'];

$sql = "SELECT image FROM classes WHERE classe = '$classe2'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$image_c = $data[0];

$sql = "SELECT image FROM races WHERE race = '$race2'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$image_r = $data[0];

$sql = "SELECT image FROM stats_dieux WHERE nom = '$dieu2'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$image_d = $data[0];
mysql_close();

$discours = nl2br($discours);
 
echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>'.$cible.'</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td class="cadretopleft"  colspan="3"></td>
	<td class="cadretopright" rowspan="2"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td class="cadrecontenupopupc" colspan="2">

<br><h5>Discours de '.$cible.', '.$titre2.' '.$royaume2.'</h5><br><br>
<img src="images/gauche.gif" alt="" border="0">
<img src="'.$image.'" width="100" height="100" alt="'.$cible.'" border="1">
<img src="images/droite.gif" alt="" border="0"><br><br>

<center>
<table style="width: 100%;"><tbody>
<tr>	<td style="vertical-align: top; text-align: center;"><img src="'.$image_r.'" width="100" height="100" alt="'.$race2.'" border="1"></td>
	<td style="vertical-align: top; text-align: center;"><img src="'.$image_d.'" width="100" height="100" alt="'.$dieu2.'" border="0"></td>
	<td style="vertical-align: top; text-align: center;"><img src="'.$image_c.'" width="100" height="100" alt="'.$classe2.'" border="1"></td>
</tr>
</tbody></table>
<br><br>
<div class="longtexte">'.$discours.'</div>
<br><br></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>
</body>
</html>
';
?>