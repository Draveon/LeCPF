<?php session_start();

$head_title = 'Classement des joueurs';
$head_keywords = 'classement, joueur, mmorpg, puissance, guilde';



function checkMaitreArmada($nom)
{
	$sql = "SELECT nom FROM guildes WHERE chef = '$nom' LIMIT 1";
	$nres= mysql_num_rows(mysql_query($sql));
	if ($nres > 0)
		return " *";
	return "";	
}
function checkPalatin($nom)
{
	$sql = "SELECT Palatin FROM provinces_politiques WHERE Palatin = '$nom' LIMIT 1";
	$nres= mysql_num_rows(mysql_query($sql));
	if ($nres > 0)
		return "*";
	return "";
}

if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;

include ('debut.php');

if ($_SESSION['connexion'] != 1)
	include ('menu_index.php');

if ($_SESSION['connexion'] == 1)
	include ('menu.php');

entete_index('Classement');


// Déclaration des variables
$deb = (!isset($_GET['debut'])) ? 0 : $_GET['debut'];
$ord = (!isset($_GET['ordre'])) ? 'Puissance' : $_GET['ordre'];
$nbr = (!isset($_GET['nb']))	? 200 : $_GET['nb'];
$serv = (!isset($_GET['serveur']))	? 1 : $_GET['serveur'];

if ($serv == 2) {
	$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die (mysql_error());
	mysql_select_db("Destinee02");
} else {
	$serv = 1;
	$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die (mysql_error());
	mysql_select_db("Destinee01");
}

$colspan = 10;



// Tests sur les variables
if ($nbr < 1)
	$nbr = 200;
if ($deb < 1)
	$deb = 0;

//include ('classement_cache.php');

$innerjoin = "";
$condition = "";
$order	   = "";
$limit	   = "";
$linkjoueur= "";
$linkarmada= "";
$nbr2	   = $nbr;	// à fixer à -1 si pas de LIMIT dans la requète sql

$imgTriNom	= ' <img src="images/classementTriLien.gif" border=0 width=10 height=10 alt="Tri par nom" title="Tri par nom">';
$imgTriNiv	= ' <img src="images/classementTriLien.gif" border=0 width=10 height=10 alt="Tri par niveau" title="Tri par niveau">' ;
$imgTriCla	= ' <img src="images/classementTriLien.gif" border=0 width=10 height=10 alt="Tri par Puissance" title="Tri par puissance">';
$imgTriSco	= ' <img src="images/classementTriLien.gif" border=0 width=10 height=10 alt="Tri par Score" title="Tri par score">';

if ($ord == "Score")
{
	include("classement_score.php");
} else {
	// tests sur l'ordre d'affichage
	if ($ord == "Niv")
	{
		$condition	= "puissance > '0'";
		$order		= "ORDER BY niveau DESC, xp DESC";
		$limit		="LIMIT $deb,$nbr";
		$imgTriNiv	= ' <img src="images/classementTriSelect.gif" border=0 width=10 height=10 alt="Tri par niveau" title="Tri par niveau">' ;
	}
	else if ($ord == "Alpha")
	{
		$condition 	= "puissance > '0'";
		$order 		= "ORDER BY joueurs_stats.nom";
		$limit		= "LIMIT $deb,$nbr";
		$imgTriNom	= ' <img src="images/classementTriSelect.gif" border=0 width=10 height=10 alt="Tri par nom" title="Tri par nom">';
	}
	else				// if 	($ord == "Puissance")
	{				// si aucun ordre de tri est donné ou si l'ordre de tri est "Puissance", on trie selon la puissance
		$ord		= "Puissance";
		$condition 	= "puissance > '0'";
		$order		= "ORDER BY puissance DESC";
		$limit		= "LIMIT $deb,$nbr";
		$imgTriCla	= ' <img src="images/classementTriSelect.gif" border=0 width=10 height=10 alt="Tri par Puissance" title="Tri par Puissance">';
	}

	// modes spéciaux
	// recherche restreinte nominativement à certains joueurs (formulaire du bas de page)
	if (isset($_GET['joueur']))
	{
		$tmp = get_html_translation_table(HTML_ENTITIES);
		$tmp = array_flip ($tmp);
		$_GET['joueur'] = htmlentities(strtr($_GET['joueur'], $tmp));
		if (strlen($condition)>0)
			$condition.=" AND ";
		$condition	= "joueurs_stats.nom LIKE '".trim($_GET['joueur'])."%'";
		$linkjoueur	= '&joueur='.trim($_GET['joueur']);
	}
	// recherche restreinte à une armada
	if (isset($_GET['armada']))	// si on a besoin de données liées à la table joueurs_bonus
	{
		$_GET['armada'] = urldecode($_GET['armada']);
		$innerjoin	= "INNER JOIN joueurs_bonus ON joueurs_stats.nom = joueurs_bonus.nom";
		if (strlen($condition) > 0)
			$condition.=" AND ";
		$condition	.= "joueurs_bonus.guilde = '".trim($_GET['armada'])."'";
		$limit		= "";	// pas de limites de nombre à l'affichage des membres d'une guilde, on les veut tous. C'est donc important que cet if() soit placé après les test sur l'ordre.
		$nbr2		= -1;
		$linkarmada	= '&armada='.urlencode($_GET['armada']);
	}	

	// recherche restreinte à une province
	if (isset($_GET['province']))	// si on a besoin de données liées à la table joueurs_bonus
	{
		$_GET['province'] = urldecode($_GET['province']);
		$innerjoin	= "INNER JOIN joueurs_bonus ON joueurs_stats.nom = joueurs_bonus.nom";
		if (strlen($condition) > 0)
			$condition.=" AND ";
		$condition	.= "joueurs_bonus.province = '".trim($_GET['province'])."'";
		$limit		= "";	// pas de limites de nombre à l'affichage des membres d'une province, on les veut tous. C'est donc important que cet if() soit placé après les test sur l'ordre.
		$nbr2		= -1;
		$linkarmada	= '&province='.urlencode($_GET['province']);
	}	

	// écriture de la requète sql 
	if ((strlen($condition) > 0)&& (strlen($jmasques) > 0))
		$jmasques = "AND ".$jmasques;
	$sql = "SELECT joueurs_stats.nom, niveau, puissance, joueurs_stats.id, joueurs_stats.score FROM joueurs_stats $innerjoin WHERE $condition $jmasques $order $limit";
	$req = mysql_query($sql) or die (mysql_error());
	$qte = mysql_num_rows($req);

	// nombre total d'enregistrement satisfaisant les critères (pour le menu pages préc/suivantes)
	$sql = "SELECT joueurs_stats.id FROM joueurs_stats $innerjoin WHERE $condition $jmasques $order";	// sans LIMIT
	$nres= mysql_num_rows(mysql_query($sql));
	if ($nbr2==-1)
		$nbr2 = $qte;
	$pages = ceil($nres / $nbr2);

	if ($deb >= $nres)
		$deb = max(0, $nres - ($nbr-1));




	// preparation des menus serveurs 1/2
	$page = 'classement.php?debut='.$deb.'&nb='.$nbr.'&ordre='.$ord.$linkjoueur.$linkarmada;
	$bold = array( array('', ''), array('<b>', '</b>'));
	$menuserv = '<tr><td style="text-align: center;" colspan="'.$colspan.'">  ';
	$b = ($serv == 1) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'&serveur=1">Serveur 1</a>'.$b[1];
	/*
	$b = ($serv == 2) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'&serveur=2">Serveur 2</a>'.$b[1].' </td></tr>'."\n";
*/

	// préparation des menus pages suivantes/précédentes
	$prec = $deb - $nbr;
	if ($prec < 0)
		$prec = 0;
	$suiv = $deb + $nbr;
	if ($suiv>$nres)
		$suiv = $deb;
	$menupages  = '	<tr>	<td colspan="'.$colspan.'" style="text-align: center;"><br>
		<a href="classement.php?debut='.$prec.'&nb='.$nbr.'&serveur='.$serv.'&ordre='.$ord.$linkjoueur.$linkarmada.'"><b><<</b></a> |';
	for($i=1; $i <= $pages; $i++)
	{
		$r = $i * $nbr;
		$x = $r - $nbr;
		$menupages .= ' <a href="classement.php?debut='.$x.'&nb='.$nbr.'&serveur='.$serv.'&ordre='.$ord.$linkjoueur.$linkarmada.'">';
		if ($deb < $r AND ($deb+1) > $x)
			$menupages .= "<b>$i</b>";
		else
			$menupages .=  $i;
		$menupages .= '</a> |';
		if ($i % 25 == 0)
			$menupages .= '<br>';
	}
	$menupages .=  '	<a href="classement.php?debut='.$suiv.'&nb='.$nbr.'&serveur='.$serv.'&ordre='.$ord.$linkjoueur.$linkarmada.'"> <b>>></b></a><br>&nbsp;</td>	</tr>'."\n";	




	// ECRITURE DE LA PAGE
	echo '<table class="localtable963">'."\n";
	// écriture du menu des serveurs
	echo $menuserv;

	if ((isset($_GET['armada'])) || (isset($_GET['joueur'])))
		echo '	<tr>	<td colspan="'.$colspan.'" style="text-align: center;"><br>
			<a href="classement.php?debut='.$deb.'&nb='.$nbr.'&serveur='.$serv.'">Retour au classement général</a>
		<br>&nbsp;</td></tr>';
	// ecriture du menu des pages
	echo $menupages;





	echo '
	  <tr>	<td></td>
		<td></td>
		<td class="cl_entete" width="30%"><a href="classement.php?debut='.$deb.'&nb='.$nbr.'&serveur='.$serv.'&ordre=Alpha'.$linkjoueur.$linkarmada.'" class="cl_entete">Nom'.$imgTriNom.'</a></td>
		<td class="cl_entete">Race</td>
		<td class="cl_entete">Classe</td>
		<td class="cl_entete">Dieu</td>
		<td class="cl_entete">Province</td>
		<td class="cl_entete"><a href="classement.php?debut='.$deb.'&nb='.$nbr.'&serveur='.$serv.'&ordre=Niv'.$linkjoueur.$linkarmada.'" 	class="cl_entete">Niv'.$imgTriNiv.'</a></td>
		<td class="cl_entete"><a href="classement.php?debut='.$deb.'&nb='.$nbr.'&serveur='.$serv.'&ordre=Puissance'.$linkjoueur.$linkarmada.'" 	class="cl_entete">Puissance'.$imgTriCla.'</a></td>
		<td class="cl_entete"><a href="classement.php?debut='.$deb.'&nb='.$nbr.'&serveur='.$serv.'&ordre=Score'.$linkjoueur.$linkarmada.'" 	class="cl_entete">Score'.$imgTriSco.'</a></td>
		</tr>
	  <tr>	<td></td><td></td>
		<td class="cl_vspacer" colspan="'.($colspan-2).'"></td>	</tr>
	';

	$rng = $deb;

	for ($i=0; $i<$qte; $i++)
	{
		$rng++;	
		$da1 = mysql_fetch_row($req);
		$re2 = mysql_query('SELECT race, classe, royaume, dieu, titre, description, avatar, couleur, joueurs_heros.id_compte FROM joueurs_heros LEFT JOIN compte_couleurs ON joueurs_heros.id_compte = compte_couleurs.id_compte AND compte_couleurs.activated = 1 WHERE joueurs_heros.id = "'.$da1[3].'"') or die('Erreur SQL !<br>'.mysql_error());
		$re4 = mysql_query('SELECT victoire, défaite, province, guilde FROM joueurs_bonus WHERE id = "'.$da1[3].'"') or die('Erreur SQL !<br>'.mysql_error());
		$da2 = mysql_fetch_row($re2);
		$da4 = mysql_fetch_row($re4);
		if ($qte == 1)			// si un seul joueur correspond au critères, on affiche son classement dans le tri par puissance
		{
			if ((strlen($jmasques) > 0) && (substr($jmasques,0,4) != "AND "))
				$jmasques = "AND ".$jmasques;
			$re5 = mysql_query("SELECT (COUNT(id)+1) AS `nb` 	FROM joueurs_stats WHERE puissance >= ".$da1[2]." ".$jmasques." ORDER BY puissance DESC") or die('Erreur SQL !<br>'.mysql_error());
			$rng = mysql_fetch_row($re5);
			$rng = $rng[0];
		}
		
		$alli_j = $da4[3] == 'Aucune' ? '' : '<br>(<i>'.$da4[3].'</i>)';
		$strsup = '';
		$couleur_nom = $da2[7];
		if ($couleur_nom) {
			$strsup = ' style="color:'.$couleur_nom.';"';
		}
		
		echo '
		  <tr class="cl_player"'.$strsup.'>
			<td class="cl_position">'.$rng.' -</td>
			<td><a href="/profil_compte.php?show_compte='.$da2[8].'&serv='.$serv.'"><img src="'.$da2[6].'" width="40px" height="40px" alt="'.$da1[0].'" ALIGN=middle border=1></a></td>
			<td class="tdlef">
				<a href="/profil_compte.php?show_compte='.$da2[8].'&serv='.$serv.'" class="info"'.$strsup.' 
					onmouseover="afficheinfobulle(\''.$da1[0].'\');">'.$da1[0].', '.$da2[4].' '.$da2[2].checkMaitreArmada($da1[0]).checkPalatin($da1[0]).'<span class="tooltip" id="'.$da1[0].'" style="text-align:center;"><b>'.$da1[0].'</b><br><img src="'.$da2[6].'" width="100px" height="100px" border=1><br>Combats: '.($da4[0]+$da4[1]).'<br><i>'.$da2[5].'</i></span>'.$alli_j.'</a></td>
			<td class="tdlef">'.$da2[0].'</td>
			<td class="tdlef">'.$da2[1].'</td>
			<td class="tdlef">'.$da2[3].'</td>
			<td class="tdlef">'.$da4[2].'</td>
			<td class="cl_aligneC">'.$da1[1].'</td>
			<td class="cl_aligneR">'.number_format($da1[2], 0, ',', ',').'</td>	
			<td class="cl_aligneR">'.number_format($da1[4], 0, ',', ',').'</td>	</tr>
		  <tr>	<td></td><td></td>
			<td class="cl_vspacer" colspan="'.($colspan-2).'"></td>			</tr>
		';
	}



	// réécriture des menus info générales, provinces & alliances, retour au classement général
	echo '<tr>	<td colspan="'.$colspan.'">&nbsp;</td>	</tr>';

	echo $menupages;

	echo '	<tr><td colspan="'.$colspan.'" style="text-align: center;">';
	if ((isset($_GET['armada'])) || (isset($_GET['joueur'])))
		echo '	<a href="classement.php?debut='.$deb.'&nb='.$nbr.'&type=1">Retour au classement général</a><br><br>';

	echo '<tr><td>'."\n\n";

	mysql_close();


	echo changement("Rechercher un joueur :");
	echo '	<FORM METHOD=GET ACTION="classement.php" id="fond">
		<center>
		<input type="hidden" name="affichage" value="'.$_GET['affichage'].'">
		<input type="hidden" name="ordre" value="Alpha">
		<input type="text" maxlenght="30" name="joueur"><br><br>
		<input type="submit" value="Rechercher >>">
		</center>
		</form>
	';

	echo '</tbody></table>';


	include ("fin.php"); 
}
	?>
