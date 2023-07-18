<?php
// RAZ FUNCTIONS
// include('connect.php');
include('session_joueur.php');

// $serveur = (!isset($_SESSION['serveur'])) ? 1 : $_SESSION['serveur'];
// $serveur = 2;

// $db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die (mysql_error());

// $actual_db = 0;
// switch($serveur)
// {
// 	case '1' :	mysql_select_db("Destinee01"); $actual_db = 1;	break;
// 	case '2' :	mysql_select_db("Destinee02"); $actual_db = 2;	break;
// }


$servername = "localhost";
$username = "phpmyadmin";
$password = "n5k8Ha6W";

try {
  $conn = new PDO("mysql:host=$servername;dbname=Destinee02", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

	// Rapporte toutes les erreurs PHP
error_reporting(E_ALL);

// VARIABLES
// $joueur = $_SESSION['nom'];
// $bronze = "#ba591d";
// $silver = "#737373";
// $gold = "#847900";
// $heroGold = "";
// $heroSilver = "";
// $heroBronze = "";
// $scoreGold = 0;
// $scoreSilver = 0;
// $scoreBronze = 0;
// $xpGold = 0;
// $xpSilver = 0;
// $xpBronze = 0;
// $puissGold = 0;
// $puissSilver = 0;
// $puissBronze = 0;

// METHODES DE RAZ
// function razHeroes2() {
// 		echo "<br>RAZ EFFECTUEE !! <br>";
// }
// echo "<h1>".$serveur."</h1>";

	// razHeroes();
function razHeroes() {
	// return;
	// global $heroGold;
	// global $heroSilver;
	// global $heroBronze;
	//
	// global $scoreGold;
	// global $scoreSilver;
	// global $scoreBronze;
	//
	// global $xpGold;
	// global $xpSilver;
	// global $xpBronze;
	//
	// global $puissGold;
	// global $puissSilver;
	// global $puissBronze;


	//VIDAGE DES TABLES
// TRUNCATE `foire_vente`;
// TRUNCATE `joueurs_aptitudes`;
// TRUNCATE `joueurs_aptitudes_base`;
// TRUNCATE `joueurs_batiments_id`;
// TRUNCATE `joueurs_batspe`;
// TRUNCATE `joueurs_bonus`;
// TRUNCATE `joueurs_coffre`;
// TRUNCATE `joueurs_combat`;
// TRUNCATE `joueurs_connexions`;
// TRUNCATE `joueurs_créatures`;
// TRUNCATE `joueurs_créatures_id`;
// TRUNCATE `joueurs_heros`;
// TRUNCATE `joueurs_inscription`;
// TRUNCATE `joueurs_inventaire`;
// TRUNCATE `joueurs_magies`;
// TRUNCATE `joueurs_modificateurs`;
// TRUNCATE `joueurs_objets`;
// TRUNCATE `joueurs_sorts`;
// TRUNCATE `joueurs_stats`;
// TRUNCATE `joueurs_supprimes`;
// TRUNCATE `joueurs_terre`;
// TRUNCATE `joueurs_terre_utile`;
// TRUNCATE `joueurs_xp_vs`;
// TRUNCATE `factions_membres`;
// TRUNCATE `chatFaction`;
// UPDATE `destinee_statistiques` SET valeur_entier = 0 WHERE param = 'nbr_combats';
// UPDATE `destinee_statistiques` SET remarques = 'RaZ 2021-01-01' WHERE param = 'nbr_combats';
// UPDATE `foire_ressources` SET qte_dispo = 1500;
// UPDATE `foire_ressources` SET prix_courant = 1000;
// UPDATE `joueurs_stats` SET score = 0;
// UPDATE `joueurs_infos` SET score = 0;

// echo "RAZ terminée ! GG";
if (!$link) {
echo "Raz échouée : ".mysqli_error($link);
    }


// DISTRIBUTION MEDAILLES // PAS FINI //
// PAS FINI //// PAS FINI //// PAS FINI //
// $req = mysqli_query($db, "SELECT * FROM joueurs_stats ORDER BY joueurs_stats.score DESC LIMIT 3");
// while ($data = mysqli_fetch_array($req)) {
// 	$heroGold = $data[0];
// 	$heroSilver = $data[1];
// 	$heroBronze = $data[2];
// }
// $reqG = mysqli_query($db, "SELECT * FROM joueurs_stats WHERE nom = '".$heroGold."' ");
// $reqS = mysqli_query($db, "SELECT * FROM joueurs_stats WHERE nom = '".$heroGold."' ");
// $reqB = mysqli_query($db, "SELECT * FROM joueurs_stats WHERE nom = '".$heroGold."' ");
//
// while ($data = mysqli_fetch_array($reqG)) {
// 	$scoreGold = $data['score'];
// 	$xpGold = $data['xp'];
// 	$puissGold = $data['puissance'];
// }
// while ($data = mysqli_fetch_array($reqS)) {
// 	$scoreSilver = $data['score'];
// 	$xpSilver = $data['xp'];
// 	$puissSilver = $data['puissance'];
// }
// while ($data = mysqli_fetch_array($reqB)) {
// 	$scoreBronze = $data['score'];
// 	$xpBronze = $data['xp'];
// 	$puissBronze = $data['puissance'];
// }
//
// if ( isItSame($scoreGold, $scoreSilver) == true) {
// 	$heroGold = whichHasHigherXp($heroGold, $heroSilver);
// }
// if ( isItSame($scoreSilver, $scoreBronze) == true) {
// 	// On valide le 3ème d'abord
// 	$heroBronze = smaller($scoreGold, $scoreSilver, $scoreBronze)
// 	$heroSilver = whichHasHigherXp($heroSilver, $heroBronze);
// }
// PAS FINI //// PAS FINI //// PAS FINI //// PAS FINI //


















}

// function isItSame($score1, $score2) {
// 	if ($score1 == $score2) {
// 		return true;
// 	} else {
// 		return false;
// 	}
// }
// function smaller($score1, $score2, $score3) {
// 	if ($score1 < $score2 && $score1 < $score3) {
// 		return $score1;
// 	} else if ($score2 < $score1 && $score2 < $score3) {
// 		return $score2;
// 	} else if ($score3 < $score1 && $score3 < $score2) {
// 		return $score3;
// 	}
// }
// function whichHasHigherXp($score1, $score2) {
// 	if ($score1 > $score2) {
// 		return $score1;
// 	} else {
// 		return $score2;
// 	}
// }


// //prompt function
// 	 function prompt($prompt_msg){
// 			 echo("<script type='text/javascript'> var answer = prompt('".$prompt_msg."'); </script>");

// 			 $answer = "<script type='text/javascript'> document.write(answer); </script>";
// 			 return($answer);
// 	 }


 ?>
