<?php
$mois["January"] = "Janvier";
$mois["February"] = "Février";
$mois["March"] = "Mars";
$mois["April"] = "Avril";
$mois["May"] = "Mai";
$mois["June"] = "Juin";
$mois["July"] = "Juillet";
$mois["August"] = "Août";
$mois["September"] = "Septembre";
$mois["October"] = "Octobre";
$mois["November"] = "Novembre";
$mois["December"] = "Décembre";

include ('administration/connect_0.php');

$news = (isset($_REQUEST['news'])) ? mysql_real_escape_string($_REQUEST['news']) : '-1';


$req = mysql_query("SELECT titre, texte, auteur, date_affiche FROM news_index WHERE affiche = '0' AND id = '$news'") or die ('Erreur SQL!<br>'.mysql_error());
if ($data = mysql_fetch_row($req))
{
	$titre = $data[0];
	$texte = $data[1];
	$auteur = $data[2];
	$date_affiche = $data[3];
	
	$delai = date("j",$date_affiche*60).' '.strtolower($mois[date("F",$date_affiche*60)]) .' '.date("y",$date_affiche*60);
	$texte = str_replace('<br><br>','</div><div class="longtexte">', $texte);
}
else
{
	$texte = 'Cette news n\'existe pas.';
	$auteur = '';
	$date_affiche = 0;
	$delai = '';
}


echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.strip_tags($titre).' : News : Destinee-Online.com</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne (MMORPG), à l\'ambiance médiévale-fantastique">
	<meta name="keywords"content="news, nouvelle, annonce, '.strip_tags($titre).'">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style_divers.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<base target="_blank">
</head>
<body class="bodypopup" marginheight=0 marginwidth=0>
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc"><br>
	<h4>'.$titre.'</h4> - '.$delai.'<br>&nbsp;
	<div class="longtexte">'.$texte.'</div>
	<div style="text-align: right; padding-right: 30px;">Posté par <b>'.$auteur.'</b><br>&nbsp;</div>
';
?>
	</td></tr>
<tr>	<td colspan="4" class="cadrebottom"></td></tr>
</tbody></table></div>
<br>
</tbody>
</table>
</body>
</html>
