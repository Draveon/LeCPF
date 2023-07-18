<?php session_start();

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1)
{
	$connexion = 0;
	include ("menu_index.php");
}
else
{
	$connexion = 1;
	include ("menu.php");
}
$temps = floor(time()/60);

entete_index("Armadas");
echo '<table class="localtable630"><tbody><tr><td class="tdcen">';


$armada = 	((isset($_GET['armada']) )&&(is_numeric($_GET['armada']) )) ? round($_GET['armada'])  : 1;
$serveur_off =	((isset($_GET['serveur']))&&(in_array($_GET['serveur'], array(1,2,3,4,5)))) ? $_GET['serveur'] : 1;
$serveur = (!isset($_SESSION['serveur'])) ? 1 : $_SESSION['serveur'];
if (($armada==1)&&($serveur_off==1)&&($serveur!=1))
	$serveur_off = $serveur;
include ("administration/choix_serveurs_off.php");

// on contrôle que l'armada demandée existe; sinon on renvoie une page par défaut
$req = mysql_query("SELECT nom, nb_membres, `date_création` AS `jour`, img, chef, description, objectifs, regles, siteweb FROM guildes WHERE id = '".$armada."'") or die('Erreur SQL !<br>'.mysql_error());
//echo "SELECT nom, nb_membres, `date_création` AS `jour`, img, chef, description, objectifs, regles FROM guildes WHERE id = '".$armada."'".'<br><br>';
if (mysql_num_rows($req) == 0)
	echo 'L\'armada sélectionnée n\'existe pas.';
else 
{
	$armadadata = mysql_fetch_assoc($req);
	$armadadata['jour'] = floor(($temps - $armadadata['jour'])/1440);
	$guilde = $armadadata['nom'];

	// vérification du nombre de joueurs et mise à jour de la puissance de l'armada
	$sql = "SELECT ROUND(0.2 * COUNT(joueurs_bonus.id) * POW( AVG( POW( joueurs_stats.puissance , 0.5 ) ) , 2 ) ) AS `puissance`, COUNT(joueurs_bonus.id) AS `nbr` FROM `joueurs_bonus` INNER JOIN joueurs_stats ON joueurs_stats.id = joueurs_bonus.id INNER JOIN joueurs_connexions ON joueurs_connexions.id = joueurs_bonus.id WHERE joueurs_bonus.guilde = '".$guilde."' AND joueurs_connexions.connexion_dernière < '".($temps+1)."' GROUP BY joueurs_bonus.guilde";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$datapuiss = mysql_fetch_row($req);
	$sql = "SELECT COUNT(joueurs_bonus.id) AS `nbr` FROM `joueurs_bonus` WHERE joueurs_bonus.guilde = '".$guilde."' GROUP BY joueurs_bonus.guilde";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$datanbr = mysql_fetch_row($req);
	$sql = "UPDATE `guildes` SET `nb_membres` = '".$datanbr[0]."', `puissance` = '".$datapuiss[0]."' WHERE nom = '$guilde'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	// relations diplomatiques
	$guil = $guilde;
	
	// affichage
	echo '~ <a href="encyclopedie_armadas.php">Retour à l\'encyclopédie</a> | <a href="classement_guildes.php">Retour au classement</a> ~
	<br><br><h5>'.$guil."</h5><br><br>\n";
	echo '<img src="images/gauche.gif" alt="" border="0"><img src="'.$armadadata['img'].'" width="100" height="100" alt="'.str_replace('"', '\"', $guil).'" border="1"><img src="images/droite.gif" alt="" border="0"><br>';

	echo changement("Informations générales");
	echo 'Chef de l\'Armada : '.$armadadata['chef'].'<br>
	Nombre de membres : '.$armadadata['nb_membres'].'<br>
	Ancienneté : '.$armadadata['jour'].' jours<br>
	Puissance moyenne : '.number_format($datapuiss[0], 0, ",", ",").'<br>';
	if (strlen($armadadata['siteweb'])>7)
		echo 'Forum : <a href="'.$armadadata['siteweb'].'">'.$armadadata['siteweb'].'</a><br>';
	echo changement("Description");
	echo '<div class="longtexte">'.str_replace("\n", "\n<br />\n", $armadadata['description']).'</div>';
	echo changement("Objectifs");
	echo '<div class="longtexte">'.str_replace("\n", "\n<br />\n", $armadadata['objectifs']).'</div>';
	echo changement("Règles");
	echo '<div class="longtexte">'.str_replace("\n", "\n<br />\n", $armadadata['regles']).'</div>';
}


mysql_close();
echo '</td></tr></tbody></table>';
include("fin.php");
