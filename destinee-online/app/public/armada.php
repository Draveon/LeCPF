<?php session_start();

if ($_SESSION['connexion'] != 1 OR $_SESSION['connexion'] == 'null' && $actual_db != 2) {
	
	echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
}


include ("debut.php");
include ("menu.php");
entete("Factions");
include("connect.php");
include("joueur_rejoint_faction.php");

?>


