<?php session_start();

$head_title = 'Les statistiques par serveur';
$head_keywords = 'statistique, serveur, joueur, mmorpg, race, classe, province';

include ("debut.php");
include ("connect.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	$connexion = 0;
	include ("menu_index.php");
}
else{
	$connexion = 1;
	include ("menu.php");
}

entete_index("Statistiques");

$limite = (round(time()/60)-1440);


// On détermine quel serveur on affiche
if (!isset($_GET['affichage']))	$serveur_off = 0;
else				$serveur_off = $_GET['affichage'];
if ( (isset($_SESSION['serveur'])) && ($serveur_off == 0) )
	$serveur_off = $_SESSION['serveur'];


if ($serveur_off == 0)
{
    echo '<table class="localtable630"><tbody><tr>
	<td><h2>Les statistiques</h2><center>
	~ <a href="statistiques.php?affichage=1">Serveur 1</a> |
	<a href="statistiques.php?affichage=2">Serveur 2</a> |
	<a href="statistiques.php?affichage=3">Serveur 3</a> ~
	</td></tr>';
}

// Si le serveur a été choisit !
if ($serveur_off != 0)
{
	
	// preparation des menus serveurs 1/2/3
	$colspan = 1;
	$page = 'statistiques.php?&affichage=';
	$bold = array( array('', ''), array('<b>', '</b>'));
	$menuserv = '<tr><td style="text-align: center;" colspan="'.$colspan.'"> ~ ';
	$b = ($serveur_off == 1) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'1">Serveur 1</a>'.$b[1].' | ';
	$b = ($serveur_off == 2) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'2">Serveur 2</a>'.$b[1].' | ';
	$b = ($serveur_off == 3) ? $bold[1] : $bold[0];
	$menuserv .= $b[0].'<a href="'.$page.'3">Serveur RP</a>'.$b[1].' ~ <br>&nbsp;</td></tr>'."\n";

	
	
	include("administration/choix_serveurs_off.php");
	

	$req = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_stats WHERE `puissance` > '0'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$actif = $dat[0];
	$req = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_connexions WHERE `connexion_dernière` > '$limite'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$a24h = $dat[0];
	$req = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_bonus") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$all = $dat[0];
	
	// on prend l'id du dernier enregistrement de combat joueurs pour un indicateur du nombre de combats. C'est pas la vérité vraie
	$req = mysql_query("SELECT valeur_entier FROM destinee_statistiques WHERE param = 'nbr_combats'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$nb_bat = number_format($data[0], 0, ",", ",");

	echo '<table class="localtable630"><tbody>
	<tr>	<td><h2>Les statistiques</h2></td></tr>
	'.$menuserv.'
	<tr><td class="tdlef">
	<UL>
	<LI><i>Statistiques générales</i><br><br>
		<UL>
		<LI>Nombre de joueurs inscrits : <b>'.$all.'</b></LI>
		<LI>Nombre de joueurs actifs : <b>'.$actif.'</b></LI>
		<LI>Dans les dernières 24h : <b>'.$a24h.'</b></LI>
		<LI>Destinée a connu <b>'.$nb_bat.'</b> combats.</LI>
		</UL>
	<br>
	<LI><i>Statistiques liées aux races</i><br><br>
		<UL>';
	$req = mysql_query("SELECT race FROM races ORDER BY race ASC") or die('Erreur SQL !<br>'.mysql_error());
	while ($dat = mysql_fetch_row($req))
	{
		$req2 = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_heros WHERE `race` = '".$dat[0]."'") or die('Erreur SQL !<br>'.mysql_error());
		$race_nb = mysql_fetch_row($req2);
		
		$race_ = str_replace(array('Elfe Noirs','Infernals'), array('Elfes Noirs','Infernaux'), $dat[0].'s');
		if (in_array(substr($race_,0,1) , array('A','E','I','O','U','Y','H')))
			echo '<LI>Nombre d\'';
		else	echo '<LI>Nombre de ';
		echo $race_.' : <b>'.$race_nb[0].'</b> ('.round(($race_nb[0] / $all) * 100).' %)</LI>';
	}
	
	echo '</UL>
	<br>
	<LI><i>Statistiques liées aux classes</i><br><br>
		<UL>';
	$req = mysql_query("SELECT classe FROM classes ORDER BY classe") or die('Erreur SQL !<br>'.mysql_error());
	while ($dat = mysql_fetch_row($req))
	{
		$req2 = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_heros WHERE `classe` = '".$dat[0]."'") or die('Erreur SQL !<br>'.mysql_error());
		$classe_nb = mysql_fetch_row($req2);
		
		$classe_ = str_replace(array('Elfe Noirs','Infernals'), array('Elfes Noirs','Infernaux'), $dat[0].'s');
		if (in_array(substr($classe_,0,1) , array('A','E','I','O','U','Y','H')))
			echo '<LI>Nombre d\'';
		else	echo '<LI>Nombre de ';
		echo $classe_.' : <b>'.$classe_nb[0].'</b> ('.round(($classe_nb[0]/$all)*100).' %)</LI>';
	}
	
	echo '</UL>
	<br>
	<LI><i>Statistiques liées aux provinces</i><br><br>
		<UL>';
	$req = mysql_query("SELECT Province FROM provinces_politiques ORDER BY Province ASC") or die('Erreur SQL !<br>'.mysql_error());
	while ($prov = mysql_fetch_row($req))
	{
		$req2 = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_bonus WHERE `province` = '".$prov[0]."'") or die('Erreur SQL !<br>'.mysql_error());
		$prov_nb = mysql_fetch_row($req2);
		
		if (in_array(substr($classe_[0],0,1) , array('A','E','I','O','U','Y','H')))
			echo '<LI>Habitants d\'';
		else	echo '<LI>Habitants de ';
		echo $prov[0].' : <b>'.$prov_nb[0].'</b> ('.round(($prov_nb[0]/$all)*100).' %)</LI>';
	}
	$req2 = mysql_query("SELECT COUNT(id) AS nb FROM joueurs_bonus WHERE `province` = 'Aucune'") or die('Erreur SQL !<br>'.mysql_error());
	$prov_nb = mysql_fetch_row($req2);
	echo '<LI>Royaumes Indépendants : <b>'.$prov_nb[0].'</b> ('.round(($prov_nb[0]/$all)*100).' %)</LI>';
	
	echo '
		</UL>
	</UL>
	</td></tr>';
		
		
	echo $menuserv;

	mysql_close();
}
echo '</tbody></table>';

include("fin.php");
