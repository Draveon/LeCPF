<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>Gérationnage des news de la page d'accueil</title>
<style>
td.hline {
	height: 1px;
	text-align: center;
	vertical-align: center;
	background-image: URL(/images/splitbar.gif);
	border-right: 300px solid #FFFFFF;
	border-left : 300px solid #FFFFFF;
}
.gris {
	color: #999999;
}
div.ligne {
	padding-bottom: 10px;
}
.cache {
	background-color: #DDDDDD;
}
</style>
</head>
<body>

- Seules les 2 news les plus récentes seront affichées sur la page d'accueil; les plus anciennes sont montrées ici sur fond gris.<br>
- Il est possible de "tricher" sur l'ordre d'affichage en modifiant la valeur de "Date de l'affichage" (décompte des <b>minutes</b> depuis 1970; un jour a 1440 minutes)<br>
- Le code HTML est autorisé dans le formulaire de news - merci de ne pas faire de bêtises :)<br>
- Le titre est facultatif<br>
- (il est possible de récupérer une news qui a été supprimée par erreur en trifouillant dans la base de données)<br>

<?php
// CACUL DE LA DATE POUR LE CONTRAT
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

function format_date($timestamp)
{
	global $mois;
	return date("j",$timestamp*60).' '.$mois[date("F",$timestamp*60)] .' '.date("Y",$timestamp*60);
}


include ('connect_0.php');


// récupération des variables
$temps = ceil(time()/60);

$mode = (isset($_REQUEST['mode'])) ? mysql_real_escape_string($_REQUEST['mode']) : 'rien';
$modif= ((isset($_REQUEST['modif']))&&(is_numeric($_REQUEST['modif']))) ? $_REQUEST['modif'] : -1;




// AFFICHAGE
echo '<center>
<table cellpadding="0">
<tr>	<td colspan="2" align=center><a href="news.php"><a href="administration.php">Retour à l\'administration</a><br><br>
<a href="news.php">Actualiser</a><a name="newnews"></a></td></tr>
';


// suppression d'une news
if (($mode=='suppr')&&($modif!=-1))
{
	$req = mysql_query("SELECT id FROM news_index WHERE affiche = '0' AND id = '$modif'") or die ('Erreur SQL!<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		echo '<tr><td colspan="2"><b>News supprimée</b><br>&nbsp;</td></tr>';
		$req = mysql_query("UPDATE news_index SET affiche = '1' WHERE id = '$modif'") or die ('Erreur SQL!<br>'.mysql_error());
	}
	else
		echo '<tr><td colspan="2"><b>Il n\'y a pas d\'enregistrement à supprimer.</b><br>&nbsp;</td></tr>';
}


// modification d'une news existante
$message = '';
if (($mode == 'modif')&&($modif != -1))
{
	$req = mysql_query("SELECT titre, texte, date_affiche, forum_annonce, forum_discussion FROM news_index WHERE affiche = '0' AND id = '$modif' ") or die ('Erreur SQL!<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		$titre		= $data[0];
		$texte		= $data[1];
		$date_affiche	= $data[2];
		$forum_annonce	= $data[3];
		$forum_discussion=$data[4];
		
		$newtexte = (isset($_POST['newtexte'])) ? $_POST['newtexte'] : '';
		$newtitre = (isset($_POST['newtitre'])) ? $_POST['newtitre'] : '';
		$newforum_annonce	= (isset($_POST['newforum_annonce']))    ? $_POST['newforum_annonce']    : '';
		$newforum_discussion	= (isset($_POST['newforum_discussion'])) ? $_POST['newforum_discussion'] : '';
		$newdateaffiche = ((isset($_POST['newdateaffiche']))&&(is_numeric($_POST['newdateaffiche']))) ? $_POST['newdateaffiche'] : '';
		if ((($newtexte!='')&&($newdateaffiche!='')) && (($newtexte!=$texte)||($newdateaffiche!=$date_affiche)||($newtitre!=$titre)||($newforum_annonce!=$forum_annonce)||($newforum_discussion!=$forum_discussion)))
		{
			$message = '<tr>	<td colspan="2" align=center><b>La news a été modifiée avec succès!</b></td></tr>';
			$newtexte = mysql_real_escape_string(str_replace("\r",'',str_replace("\n", "<br>", $newtexte)));
			$newtitre = mysql_real_escape_string(str_replace("\r",'',str_replace("\n", "",     $newtitre)));
			$newforum_annonce    = mysql_real_escape_string($newforum_annonce);
			$newforum_discussion = mysql_real_escape_string($newforum_discussion);
			$sq1 = "UPDATE `news_index` SET `date_affiche` = '$newdateaffiche', `texte` = '$newtexte', `titre` = '$newtitre', `forum_annonce` = '$newforum_annonce', `forum_discussion` = '$newforum_discussion' WHERE `id` = $modif";
			//echo '<xmp>'.$sq1.'</xmp>';
			mysql_query($sq1) or die ('Erreur SQL!<br>'.mysql_error());
		}
		else
			$message = '<tr>	<td colspan="2" align=center><b>La news n\'as pas été mise à jour, allez savoir pourquoi...</b></td></tr>';
	}
	else
		echo '<tr>	<td colspan="2" align=center><b>Il n\'y a pas de news a supprimer!!</b></td></tr>';
}


// Création d'une nouvelle news
$titre = '';
$auteur = '';
$texte = '';
$date_affiche = $temps;
if (($mode=='new')&&($modif==-2))
{
	$newtitre = (isset($_POST['newtitre'])) ? $_POST['newtitre'] : '';
	$newtexte = (isset($_POST['newtexte'])) ? $_POST['newtexte'] : '';
	$newauteur = (isset($_POST['newauteur'])) ? $_POST['newauteur'] : '';
	$newforum_annonce	= (isset($_POST['newforum_annonce']))    ? $_POST['newforum_annonce']    : '';
	$newforum_discussion	= (isset($_POST['newforum_discussion'])) ? $_POST['newforum_discussion'] : '';
	$newdateaffiche = ((isset($_POST['newdateaffiche']))&&(is_numeric($_POST['newdateaffiche']))) ? $_POST['newdateaffiche'] : '';
	if ((($newtexte!='')&&($newdateaffiche!=''))&&($newauteur!=''))
	{
		echo '<tr>	<td colspan="2" align=center><b>La news a été ajoutée avec succès!</b></td></tr>';
		$newtexte = mysql_real_escape_string(str_replace("\r",'',str_replace("\n", "<br>", $newtexte)));
		$newtitre = mysql_real_escape_string(str_replace("\r",'',str_replace("\n", "<br>", $newtitre)));
		$newauteur= mysql_real_escape_string(str_replace("\r",'',str_replace("\n", "<br>", $newauteur)));
		$newforum_annonce    = mysql_real_escape_string($newforum_annonce);
		$newforum_discussion = mysql_real_escape_string($newforum_discussion);
		$sq1 = "INSERT INTO `news_index` (`id`, `titre`,   `texte`,     `auteur`,     `date_affiche`,    `affiche`, `forum_annonce`,      `forum_discussion`)
					VALUES	 ('', '$newtitre', '$newtexte', '$newauteur',    '$newdateaffiche', '0',	'$newforum_annonce', '$newforum_discussion')";
		$req = mysql_query($sq1) or die ('Erreur SQL!<br>'.mysql_error());
	}
	else
	{
		echo '<tr>	<td colspan="2" align=center><b>Les données pour la création d\'une nouvelle news sont incomplètes!</b></td></tr>';
		$titre = $newtitre;
		$auteur = $newauteur;
		$texte = $newtexte;
		$date_affiche = $newdateaffiche;
	}
}


// Formulaire pour nouvelle news
$url_annonce = 'Lien forum Annonce:';
$url_discussion = 'Lien forum Discussion:';
echo '<form name="formnew" action="news.php#newnews" method="POST">
<tr>	<td colspan="2"><h2>Nouvelle news</h2>
<tr>	<td style="padding-right:20px; vertical-align:top;">
		<input type="hidden" name="modif" value="-2">
		<input type="hidden" name="mode" value="new">
		<div class="ligne">Titre : <input type="text" name="newtitre" value="'.$titre.'" size="32"></div>
		<div class="ligne">Auteur: <input type="text" name="newauteur" value="'.$auteur.'"></div>
		<div class="ligne">Date de création: <b class="gris">'.format_date($temps).'</b></div>
		<div class="ligne">Dernière édition: <b class="gris">'.format_date($temps).'</b></div>
		<div class="ligne">Date de l\'affichage: <b>'.format_date($date_affiche).'</b><br>
			<i>modifier la valeur: <input type="text" name="newdateaffiche" value="'.$date_affiche.'" size="10"></i></div>
		<div class="ligne">'.$url_annonce   .' <input type="text" name="newforum_annonce"    value="" size="18"></div>
		<div class="ligne">'.$url_discussion.' <input type="text" name="newforum_discussion" value="" size="16"></div>
		<br>
		<span style="margin-right: 100px;">&nbsp;</span><input type="submit" value="- Nouvelle news -"></td>
	<td style="vertical-align:top;">
		<textarea name="newtexte" cols="60" rows="16">'.$texte.'</textarea></td></tr>
</form>
<tr>	<td colspan="2">&nbsp;</td></tr>
<tr>	<td class="hline" colspan="2"></td></tr>
<tr>	<td colspan="2" align=center><a href="news.php">Actualiser</a></td></tr>
<tr>	<td class="hline" colspan="2"></td></tr>
';


// Affichage des news existantes
$n = 0;
echo '<tr>	<td colspan="2"><h2>Quoi de neuf sur Destinée-online?</h2>
<tr>	<td colspan="2" class="hline"></td></tr>
<tr>	<td colspan="2" align=center><a href="news.php">Actualiser</a></td></tr>
<tr>	<td colspan="2" class="hline"></td></tr>
<tr>	<td colspan="2">&nbsp;</td></tr>
';
$req = mysql_query("SELECT id, titre, texte, auteur, date_affiche, forum_annonce, forum_discussion FROM news_index WHERE affiche = '0' ORDER BY date_affiche DESC") or die ('Erreur SQL!<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id		= $data[0];
	$titre		= $data[1];
	$texte		= $data[2];
	$auteur		= $data[3];
	$date_affiche	= $data[6];
	$forum_annonce	= $data[7];
	$forum_discussion=$data[8];
	
	$texte = str_replace('<br>',"\n", $texte);
	$titre = str_replace('"','&quot;', $titre);
	$auteur= str_replace('"','&quot;', $auteur);
	
	$url_annonce = 'Lien forum Annonce:';
	if (substr($forum_annonce,0,7)=='http://')	// lien absolu: ok
		$url_annonce = '<a href="'.$forum_annonce.'" target="_blank">'.$url_annonce.'</a>';
	else if ($forum_annonce!='')			// lien relatif: faut remonter un répertoire
		$url_annonce = '<a href="'.str_replace('//forum','/forum','../forum/'.$forum_annonce)   .'" target="_blank">'.$url_annonce.'</a>';
		
	$url_discussion = 'Lien forum Discussion:';
	if (substr($forum_discussion,0,7)=='http://')	// lien absolu: ok
		$url_discussion = '<a href="'.$forum_discussion.'" target="_blank">'.$url_discussion.'</a>';
	else if ($forum_discussion!='')			// lien relatif: faut remonter un répertoire
		$url_discussion = '<a href="'.str_replace('//','/','../forum/'.$forum_discussion)   .'" target="_blank">'.$url_discussion.'</a>';
	
	$n++;
	$style = ($n>2) ? ' class="cache"' : '';
	
	echo '<form name="form'.$id.'" action="news.php#news'.$id.'" method="POST">
<tr>	<td colspan="2"><a name="news'.$id.'"></a></td></tr>';
	if (($modif==$id)&($message!=''))
		echo $message;
	echo '<tr'.$style.'>	<td style="padding-right:20px; vertical-align:top;">
		<input type="hidden" name="modif" value="'.$id.'">
		<input type="hidden" name="mode" value="modif">
		<div class="ligne">Titre : <input type="text" name="newtitre" value="'.$titre.'" size="32"></div>
		<div class="ligne">Auteur: <b class="gris">'.$auteur.'</b></div>
		<div class="ligne">Date de l\'affichage: <b>'.format_date($date_affiche).'</b><br>
			<i>modifier la valeur: <input type="text" name="newdateaffiche" value="'.$date_affiche.'" size="10"></i></div>
		<div class="ligne">'.$url_annonce   .' <input type="text" name="newforum_annonce"    value="'.$forum_annonce   .'" size="18"></div>
		<div class="ligne">'.$url_discussion.' <input type="text" name="newforum_discussion" value="'.$forum_discussion.'" size="16"></div>
		<br>
		<a href="news.php?mode=suppr&modif='.$id.'" onclick="return confirm(\'Etes-vous bien certain de vouloir supprimer la news?\')" style="margin-right: 70px; font-size: 9pt;">supprimer</a>
		<input type="submit" value="- Modifier -"></td>
	<td style="vertical-align: top;">
		<textarea name="newtexte" cols="60" rows="16" '.$style.'>'.$texte.'</textarea></td></tr>
</form>
<tr>	<td colspan="2">&nbsp;</td></tr>
<tr>	<td class="hline" colspan="2"></td></tr>
<tr>	<td colspan="2" align=center><a href="news.php">Actualiser</a></td></tr>
<tr>	<td class="hline" colspan="2"></td></tr>
<tr>	<td colspan="2">&nbsp;</td></tr>
';
}


echo '</table>
<a href="administration.php">Retour à l\'administration</a>
</center>
</body>
</html>';

mysql_close();
?>