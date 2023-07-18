<?php

include ('connect.php');
/*include ('join_faction.php');*/

function cadre_debut_small($dim=array('110px','100px'), $align='center')
{
	return '		<table style="width: '.$dim[0].'; height: '.$dim[1].'; background-image: URL(/images/fond.gif); border: none; padding: 0px; border-collapse: collapse;"><tbody>
		<tr>	<td class="cadretopleft"  colspan="3"></td>
			<td class="cadretopright" rowspan="2"></td></tr>
		<tr>	<td class="cadremiddleleft"></td>
			<td class="cadrecontenu"  colspan="2" style="vertical-align: middle"><div align="'.$align.'">'."\n\n";
}
// retourne le début de $texte avec les trois petits points et tout et tout
function abrege ($text, $limit)
{
	if (strlen($text) < $limit)
		return $text;

	$pos = strpos($text, ' ', $limit-10);
	if (($pos==false)&&(strlen($text)>$limit+10))
		$pos=$limit;

	if ($pos >= strlen($text)-1)
		return $text;

	return substr($text, 0, min($limit+10, $pos) ) . '...';
}


$temps = floor(time()/60);

echo '	';

$id = $_SESSION['id'];
/*$nom = $_SESSION['nom'];
$race = $_SESSION['race'];*/
/*

$reqFactionID = mysql_query('SELECT faction_id FROM factions_membres WHERE id_membre = '.$id. '');
$data = mysql_fetch_row($reqFactionID);
$idFaction = $data[0];

$req = mysql_query('SELECT nom FROM factions INNER JOIN factions_membres ON factions_membres.faction_id = factions.id WHERE factions_membres.faction_id = '.$idFaction.' ');
$data = mysql_fetch_row($req);
$faction = $data[0];*/




if ($_SESSION['serveur'] == 1) {
	//On récupère la date du dernier vote du joueur
	$req = mysql_query("SELECT time_last_vote FROM joueurs_vote WHERE `nom` = '".$_SESSION['login']."'") or die('Erreur SQL 361 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	// Si ça fait plus de 24h, on remet le lien pour qu'il vote
	$vote = ($temps - $data[0]) < 1440 ? 1 : 0;

	// Lien pour le vote sur jeux-alternatifs.com
	if ($vote == 0) { echo '
	<div class="col-md-12 statutMenu">
		<h6><a target="_blank" href="http://www.destinee-online.com/encyclopedie_aide.php" class="btn btn-do-statut">Guide du Débutant</a></h6>

		<h6><a href="vote_jeu_alt.php" title="Vote Jeux-Alternatifs" class="btn btn-do-statut">Voter pour Destinée !</a></h6>
	</div>
	'; } else {
		echo '
		<div class="col-md-12 statutMenu">
			<h6><a target="_blank" href="http://www.destinee-online.com/encyclopedie_aide.php" class="btn btn-do-statut">Guide du Débutant</a></h6>

		</div>
		';

	}
}


if ($_SESSION['serveur'] == 2) {
	//On récupère la date du dernier vote du joueur
	$req = mysql_query("SELECT time_last_vote FROM joueurs_vote WHERE `nom` = '".$_SESSION['login']."'") or die('Erreur SQL 361 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	// Si ça fait plus de 24h, on remet le lien pour qu'il vote
	$vote = ($temps - $data[0]) < 1440 ? 1 : 0;
	// Lien pour le vote sur jeux-alternatifs.com
	?>

	<div class="col-md-12 statutMenu">

	<?php
	if ($vote == 0) {echo '<h6><a href="vote_jeu_alt.php" title="Vote Jeux-Alternatifs">Cliquer pour voter!</a></h6><br/>';}
	echo '<h6><a target="_blank" href="http://www.destinee-online.com/encyclopedie_aide.php">Guide du Débutant</a></h6><br/>';


	?>
	</div>
	<?php
}
//}
/*
$sqlFaction = 'SELECT nom FROM factions INNER JOIN factions_membres ON factions.`id` = factions_membres.`faction_id` WHERE nom_membre == $nom';
$req = mysql_query($sqlFaction) or die('Erreur de sqlFaction');
$data = mysql_fetch_row($req);
*/
if ($actual_db == 1) {
	echo '
	<div class=" col-xs-6 col-sm-6 col-md-6 personnage">

		<ul class="avatar col-xs-3 col-sm-3 col-md-3">
			<li class="col-md-6">
				<img src="'.$avatar.'" />
			</li>
		</ul>
		<ul class="attributs_perso col-xs-3 col-sm-3 col-md-3">
			<li class="attr_race">Race: <span>'.$race.'</span></li>
			<li class="attr_classe">Classe: <span>'.$classe.'</span></li>
			<li class="attr_dieu">Dieu: <span>'.$dieu.'</span> </li>
		</ul>
	</div>

';
}


if ($actual_db == 2) {
	echo '
	<div class=" col-xs-6 col-sm-6 col-md-6 personnage">

		<ul class="avatar col-xs-3 col-sm-3 col-md-3">
			<li class="col-md-6">
				<img src="'.$avatar.'" />
			</li>
		</ul>
		<ul class="attributs_perso col-xs-3 col-sm-3 col-md-3">
			<li class="attr_race">Race: <span>'.$race.'</span></li>
			<li class="attr_classe">Classe: <span>'.$classe.'</span></li>
			<li class="attr_dieu">Dieu: <span>'.$dieu.'</span> </li>

		</ul>
	</div>

';
}

// On floor les stats
$att = floor($att);
$def = floor($def);
$ini = floor($ini);
$end = floor($end);
$pui = floor($pui);
$cha = floor($cha);

$pop	= number_format($pop, 0, ",", " ");
$pop_affiche = '<span>'.$pop.'</span>';

echo '

	<div class="col-xs-6 col-sm-6 col-md-6 caracteristiques">
		<ul class="col-sm-12 col-md-12 attributs">
			<li>
				<ul class="col-sm-12 col-md-12 attributs">
					<li class="col-sm-12 col-md-6 attr_att">Attaque: <span>'.$att.'</span></li>
					<li class="col-sm-12 col-md-6 attr_pui">Puissance: <span>'.$pui.'</span></li>
				</ul>
			</li>
			<li>
				<ul class="col-sm-12 col-md-12 attributs">
					<li class="col-sm-12 col-md-6 attr_def">Défense: <span>'.$def.'</span></li>
					<li class="col-sm-12 col-md-6 attr_end">Endurance: <span>'.$end.'</span></li>
				</ul>
			</li>
			<li>
				<ul class="col-sm-12 col-md-12 attributs">
					<li class="col-sm-12 col-md-6 attr_ini">Initiative: <span>'.$ini.'</span></li>
					<li class="col-sm-12 col-md-6 attr_char">Charisme: <span>'.$cha.'</span></li>
				</ul>
			</li>


		</ul>
		<p>Population: '.$pop_affiche.'</p>
		<p>Prisonniers: '.$pop2.'</p>
		<p style="border-top: 1px solid darkgrey"></p>

	</div>

';
echo cadre_fin();

echo cadre_spacer();


$width = '350px';
$paddingInner = 'padding: 8px 10px;';
$paddingItem = 'padding-top: 6px;';
echo '<table style="width: 1003px; text-align: center;" border="0" cellspacing="0" cellpadding="0"><tbody>
<tr>	<td style="vertical-align: top; text-align: left; width:'.($width+30).'px;">';
$nbrmsg = 0;


	// Taverne (messages pour animations)
	$sql = "SELECT message, date_crea FROM taverne ORDER BY id DESC LIMIT 3";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if (mysql_num_rows($req) > 0) {
		// Si la table n'est pas vide on affiche l'encart
		echo cadre_debut_small(array($width,''), 'left');
		echo '<div style="'.$paddingInner.'">';
		echo '<b><a href="taverne_ragots.php" onclick="NewWindow(this.href,\'name\',\'650\',\'350\',\'yes\');return false" title="Taverne">Taverne :</a></b>';

		while ($data = mysql_fetch_row($req)) {
			$date_msg = "Le ".date('d-m', strtotime($data[1])).": ";
			$texte_msg = abrege(strip_tags(str_replace('<br>',' ',$data[0])), 90);
			echo '<div style="'.$paddingItem.'"><a class="discreb" href="taverne_ragots.php" onclick="NewWindow(this.href,\'name\',\'650\',\'350\',\'yes\');return false"><span class="nowrap"><b>'.$date_msg.'</b></span>'.$texte_msg.'</a></div>';
		}

		echo '</div>';
		echo cadre_fin();
		echo cadre_spacer();
	}
	// Fin Taverne

	// NEWS
	echo cadre_debut_small(array($width,''), 'left');
	echo '<div style="'.$paddingInner.'">';
	echo '<b><a href="index.php">Dernières nouvelles</a>:</b>';

	// météo
	// On affiche plus la météo (raz 2015) on garde le code pour utilisation future éventuelle
/* 	include_once ('meteo_include.php');
	$req = mysql_query('SELECT `valeur_double` FROM `destinee_statistiques` WHERE param = "meteo"') or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		echo '<div style="'.$paddingItem.'">La météo actuelle sur Kalamai: <b>'.strtolower($meteo[$data[0]]).'</b>.</div>';
		$nbrmsg++;
	} */

	// nettoyage des évènements
	$req = mysql_query("DELETE FROM `evenement` WHERE `tempsdelete` < '".$temps."'") or die('Erreur SQL !<br>'.mysql_error());

	// news
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
	// news
	include ('administration/connect_0.php');
	$req = mysql_query("SELECT titre, texte, auteur, date_affiche, id FROM news_index WHERE affiche = '0' AND `date_affiche` > '".($temps-15*1440)."' ORDER BY date_affiche DESC LIMIT 1") or die ('Erreur SQL!<br>'.mysql_error());
	if (mysql_num_rows($req) == 0)
		$req = mysql_query("SELECT titre, texte, auteur, date_affiche, id FROM news_index WHERE affiche = '0' ORDER BY date_affiche DESC LIMIT 1") or die ('Erreur SQL!<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$titre = $data[0];
		$texte = abrege(strip_tags(str_replace('<br>',' ',$data[1])), 90);
		$date_affiche = $data[3];
		$id = $data[4];
		$style = ($date_affiche > $temps-2*1440) ? ' style="color:#cc0000;"' : '';
		$delai = date("j",$date_affiche*60).' '.strtolower($mois[date("F",$date_affiche*60)]) .' '.date("y",$date_affiche*60);
		echo '<div style="'.$paddingItem.'"><a class="discreb" href="info_news.php?news='.$id.'" onclick="NewWindow(this.href,\'name\',\'650\',\'350\',\'yes\');return false"><b '.$style.'>'.$titre.'</b> le <span class="nowrap">'.$delai.'</span><br>'.$texte.'</a></div>';
		$nbrmsg += 2;
	}

	mysql_close();
	include ('connect.php');


	// chatbox
	$chatEcho = '';
	function afficheChatExtrait($data)
	{
		$date = gmdate("G:i:s", $data['time']);
		if (substr($data['text'],0,4)=='/me ')
			$data['text'] = $data['author'].' '.substr($data['text'],4);
		return '<b>'.$data['author'].'</b> : '.abrege (stripslashes($data['text']), 36);
	}
	$req = mysql_query("SELECT province, guilde FROM joueurs_bonus WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$province = $data[0];
	$guilde = $data[1];
	// chat de province
	if ($province != 'Aucune')
	{
		$req = mysql_query("SELECT author, text, time FROM `chat` WHERE `province` = '".$province."' AND `time` > '".(time()-1440*60)."' ORDER BY id DESC LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req)>0)
		{
			$chatEcho .= '<div style="'.$paddingItem.'"><b><a href="principale.php?mode=province">Discussions de province</a></b>';
			while ($data = mysql_fetch_assoc($req))
			{
				$chatEcho .= '<br>'.afficheChatExtrait($data);
				$nbrmsg++;
			}
			$chatEcho .= '</div>';
		}
	}
	// chat de guilde
	if ($guilde != 'Aucune')
	{
		$req = mysql_query("SELECT author, text, time FROM `chat` WHERE `guilde` = '".$guilde."' AND `time` > '".(time()-1440*60)."' ORDER BY id DESC LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req)>0)
		{
			$chatEcho .= '<div style="'.$paddingItem.'"><b><a href="discussion.php?mode=guilde">Discussions de guilde</a></b>';
			while ($data = mysql_fetch_assoc($req))
			{
				$chatEcho .= '<br>'.afficheChatExtrait($data);
				$nbrmsg++;
			}
			$chatEcho .= '</div>';
		}
	}
	if ($chatEcho != '')
		echo '<div style="'.$paddingItem.' padding-left:65px; padding-right:65px;"><div class="cl_vspacer"></div></div>'.$chatEcho;


	echo '</div>';
	echo cadre_fin();
	echo cadre_spacer();

	// prochaines ventes sur le marché central
	echo cadre_debut_small(array($width,''), 'left');
	echo '<div style="'.$paddingInner.'">';
	echo '<b><a href="foire.php">Prochaines ventes</a>:</b>';
	$whereclause = "'1' = '1'";
	$req = mysql_query("SELECT * FROM foire_vente WHERE ".$whereclause." AND temps > '".$temps."' AND type = 'objet' ORDER BY temps ASC LIMIT 3") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$id = $data[0];
		$vendeur = $data[1];
		$item = $data[2];
		$qtee = number_format($data[3], 0, ",", " ");
		$offre = $data[4];
		$temp_ = $data[5] - $temps;
		$image = $data[6];
		$acheteur = $data[7];
		if (is_numeric($item))
		{
			$req1 = mysql_query("SELECT objets_stats.nom, objets_items.bonus FROM objets_items INNER JOIN objets_stats ON objets_stats.id = objets_items.base WHERE objets_items.id = '".$item."'") or die('Erreur SQL !<br>'.mysql_error());
			if ($dat1 = mysql_fetch_row($req1)) {
				$item = $dat1[0];
				$item_affiche = $dat1[1] > 0 ? '<font color="purple">'.$dat1[0].'</font>' : $dat1[0];
			}
		}
		else	$item = ucfirst($item);

		$h = floor(($temp_ /60));
		$m = floor( $temp_ %60 );
		if ($h > 0)	$a = $h.'h';
		else		$a = $m.'m';
		if ($temp_ < 2)
		{
			$a = time()-($data[5]*60);
			$a = (60-$a)-60;
			$a = "$a sec";
		}
		$offre = number_format($offre, 0, ",", ",");

		echo '<div style="'.$paddingItem.'"><a class="discreb" href="info_foire.php?item='.$id.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">
			<img src="'.$image.'" alt="'.$item.'" width="20" height="20" border=0>
			<b>'.$item_affiche.'</b> ('.$a.') <span style="white-space: nowrap;">'.$offre.' pièces d\'or</span></a></div>';
		$nbrmsg++;
	}
	if (mysql_num_rows($req) == 0)
	{
		echo '<br>Aucune vente n\'est en cours en ce moment.';
		$nbrmsg++;
	}

	if ((isset($transactionError))&&($transactionError!=''))
		echo '<div style="'.$paddingItem.' font-weight: bold;">'.$transactionError.'</div>';

	echo '</div>';
	echo cadre_fin();

	echo cadre_spacer();

echo '	</td>
	<td style="vertical-align: top; text-align: right;">';
$width = '100%';

// Chatbox
mysql_close();
include('chat/chat.php');
$mode = getMode($province, $guilde);
echo writeAllChatboxes($nom, $_SESSION['login'], $serveur, 'principale.php', $mode, $province, $guilde);
include ('connect.php');


// dernières archives
echo cadre_debut_small(array($width,''), 'left');
echo '<div style="'.$paddingInner.'">';
$QG = '<b><a href="archives.php">Quartier général</a>:</b><br>';
$alert = false;
// si pas de province
if ($province == 'Aucune')
{
	echo $QG;
	$QG = '';
	echo '<div style="'.$paddingItem.'"><a class="discreb" href="menu_palatin.php">Vous devez choisir une province!</a></div>';
	$alert = true;
}

// si ya des pts de carac à attribuer
$req = mysql_query("SELECT (satt + sdef + sini + spui + send + scha) AS nbptcaracsupp FROM joueurs_bonus WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
if ($data[0] < $niveau)
{
	echo $QG;
	$QG = '';
	echo '<div style="'.$paddingItem.'"><a class="discreb" href="aptitudes.php">Vous avez <b>'.($niveau-$data[0]).' points de caractéristique</b> à distribuer!</a></div>';
	$alert = true;
}
// si ya des points d'aptitudes
$req = mysql_query("SELECT `points` FROM joueurs_aptitudes_base WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
if ($data['points'] > 0)
{
	echo $QG;
	$QG = '';
	echo '<div style="'.$paddingItem.'"><a class="discreb" href="aptitudes.php">Vous avez <b>'.$data['points'].' points d\'aptitude</b> à distribuer!</a></div>';
	$alert = true;
	$nbrmsg++;
}
// si on peut construire des bat spé
require_once ('batimentspec_include.php');
if ($nbrBatSpe < $nbrBatAuth)
{
	echo $QG;
	$QG = '';
	echo '<div style="'.$paddingItem.'"><a class="discreb" href="construction.php?c=1&terrain=riverain&type=2#ici">Vous pouvez construire un ou des <b>bâtiments spéciaux</b>!</a></div>';
	$alert = true;
}
// si inventaire plein
$alertinv = true;
$sql = "SELECT * FROM joueurs_objets WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
if ($data = mysql_fetch_array($req))
{
	for ($k=1; $k < 17; $k++)
		if ($data[$k] == 0)
			$alertinv = false;
}
if ($alertinv)
{
	echo $QG;
	$QG = '';
	echo '<div style="'.$paddingItem.'"><a class="discreb" href="inventaire.php"><b>Votre inventaire est plein</b>, pensez à y ménager un peu de place!</a></div>';
	$alert = true;
}

// Est-ce que le compte est attaquable?
$req = mysql_query("SELECT `affaibli` FROM joueurs_combat WHERE `nom` = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
// Si le joueur n'est pas attaquable, on affiche un message lui indiquant quand il sera réattaquable.
if ($alert) {
	echo '<div style="'.$paddingItem.' padding-left:65px; padding-right:65px; padding-bottom: 8px;"><div class="cl_vspacer"></div></div>';
	$alert = false;
}
if ($data[0] > $temps) {
	$temps_restant = ($data[0] - $temps);
	$heures_restantes = floor(($temps_restant /60) %24);
	$minutes_restantes = floor( $temps_restant %60 );
	echo '<div style="'.$paddingItem.'"><b>Vous n\'êtes pas attaquable.</b> <br> Temps restant avant de redevenir attaquable: '.$heures_restantes.' heures et '.$minutes_restantes.' minutes.</div>';
	$alert = true;
}

if ($alert) {
	echo '<div style="'.$paddingItem.' padding-left:65px; padding-right:65px; padding-bottom: 8px;"><div class="cl_vspacer"></div></div>';
	$alert = false;
}
echo cadre_fin();

echo '	</td></tr>
</tbody></table>';

echo '			</td></tr>
		</tbody></table>'."\n";

//echo cadre_fin();
echo cadre_spacer();


// DEUXIEME TABLE: Archives du royaume
$paddingInner = 'padding: 8px 10px;';
$paddingItem = 'padding-top: 6px;';
echo '<table style="width: 1003px; text-align: center;" border="0" cellspacing="0" cellpadding="0"><tbody>
<tr>	<td style="vertical-align: top; text-align: left; width:100%;">';

echo cadre_debut_small(array('100%',''), 'left');
echo '<div style="'.$paddingInner.'">';
echo '<b><a href="archives.php">Archives de votre royaume</a>:</b><br>';
$req = mysql_query("SELECT * FROM combat_joueurs WHERE `attaquant` = '".$nom."' OR `defendant` = '".$nom."' AND `temps` >= '".($temps - $duree_jour)."' ORDER BY `temps` DESC") or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$atta = $data[1];
	$defe = $data[2];
	$victoire = $data[4];
	$date = $data[5];
	if ($atta == $nom)	{$texte = $data[6]; $a = 6;}
	else			{$texte = $data[7]; $a = 7;}

	$link = true;
	$texte = strip_tags(str_replace('<br>',' ',$texte));
	$texte = abrege ($texte, 100);

	echo '<div style="'.$paddingItem.'">';
	echo '<a class="discreb" href="info_message.php?message='.$id.'&texte='.$a.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'750\',\'245\',\'yes\');return false">'.$texte.'</a>';
	echo '</div>';
}
if (mysql_num_rows($req) == 0)
	echo '<div style="'.$paddingItem.'">Aucun message d\'importance notable ne vous est parvenu au cours des dernières 24 heures.</div>';

echo '</div>';
echo cadre_fin();
echo '			</td></tr>
		</tbody></table>'."\n";
echo cadre_spacer();

// TROISIEME TABLE => Événements des dernières 24h
$paddingInner = 'padding: 8px 10px;';
$paddingItem = 'padding-top: 6px;';
echo '<table style="width: 1003px; text-align: center;" border="0" cellspacing="0" cellpadding="0"><tbody>
<tr>	<td style="vertical-align: top; text-align: left; width:100%;">';

// Cadre événements des dernières 24h
echo cadre_debut_small(array('100%',''), 'left');
echo '<div
			style="'.$paddingInner.' 
			height: 350px;
    	overflow-y: scroll;">';
echo '<b><a href="#">Événements de ces dernières 24h</a>:</b><br>';
$req = mysql_query("SELECT `texte` FROM `evenement` ORDER BY `tempspost` DESC") or die('Erreur SQL !<br>'.mysql_error());
if (mysql_num_rows($req) == 0) {
	echo '<div style="'.$paddingItem.'">Rien d\'important à signaler ces dernières 24 heures...</div>';
} else while ($data = mysql_fetch_assoc($req)) {
	echo '<div style="'.$paddingItem.'">'.$data['texte'].'</div>';
}
echo '</div>';
echo cadre_fin();
echo '	</td></tr>
</tbody></table>';


include_once ('partenariats_include.php');
echo '
</td></tr>
<tr>	<td colspan="1" style="vertical-align: bottom; text-align: center; height: 5%;">
'.writeLinksBottom(1).'
	</td>
</tr>
</tbody>
</table>

</div>
';
?>

<script type="text/javascript"><!--
google_ad_client = "pub-0040694376443235";
/* Destinee online */
google_ad_slot = "3473958144";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
	src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
<script>
window.addEventListener('load', () => {
	if (document.getElementById('recompText')) {
		document.getElementById('recompText').style.opacity = 1;
	}
});
</script>

</div>

</body>


</html>
