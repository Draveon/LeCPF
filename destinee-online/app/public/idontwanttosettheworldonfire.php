<?php
// RAZ FUNCTIONS
// include('connect.php');

session_start();
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
  $conn = new PDO("mysql:host=$servername;dbname=Destinee01", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

	// Rapporte toutes les erreurs PHP
error_reporting(E_ALL);

$nom_joueur = $_SESSION['nom'];


if ($nom_joueur == "Draveon") {

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

// 	razHeroes();
// function razHeroes() {
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
		$sth = $conn->query("TRUNCATE `foire_vente`");
		$sth = $conn->query("TRUNCATE `joueurs_aptitudes`");
		$sth = $conn->query("TRUNCATE `joueurs_aptitudes_base`");
		$sth = $conn->query("TRUNCATE `joueurs_batiments_id`");
		$sth = $conn->query("TRUNCATE `joueurs_batspe`");
		$sth = $conn->query("TRUNCATE `joueurs_bonus`");
		$sth = $conn->query("TRUNCATE `joueurs_coffre`");
		$sth = $conn->query("TRUNCATE `joueurs_combat`");
		$sth = $conn->query("TRUNCATE `joueurs_connexions`");
		$sth = $conn->query("TRUNCATE `joueurs_créatures`");
		$sth = $conn->query("TRUNCATE `joueurs_créatures_id`");
		$sth = $conn->query("TRUNCATE `joueurs_heros`");
		$sth = $conn->query("TRUNCATE `joueurs_inscription`");
		$sth = $conn->query("TRUNCATE `joueurs_inventaire`");
		$sth = $conn->query("TRUNCATE `joueurs_magies`");
		$sth = $conn->query("TRUNCATE `joueurs_modificateurs`");
		$sth = $conn->query("TRUNCATE `joueurs_objets`");
		$sth = $conn->query("TRUNCATE `joueurs_sorts`");
		$sth = $conn->query("TRUNCATE `joueurs_stats`");
		$sth = $conn->query("TRUNCATE `joueurs_supprimes`");
		$sth = $conn->query("TRUNCATE `joueurs_terre`");
		$sth = $conn->query("TRUNCATE `joueurs_terre_utile`");
		$sth = $conn->query("TRUNCATE `joueurs_xp_vs`");
		 $sth = $conn->query("TRUNCATE `mise_a_prix`");
		 $sth = $conn->query("TRUNCATE `objets_items`");
		 $sth = $conn->query("TRUNCATE `combat_joueurs`");
		$sth = $conn->query("UPDATE `destinee_statistiques` SET valeur_entier = 0 WHERE param = 'nbr_combats'");
		$sth = $conn->query("UPDATE `destinee_statistiques` SET remarques = 'RaZ 01-10-2021' WHERE param = 'nbr_combats'");
		$sth = $conn->query("UPDATE `foire_ressources` SET qte_dispo = 500");
		$sth = $conn->query("UPDATE `foire_ressources` SET prix_courant = 1000");
		$sth = $conn->query("UPDATE `joueurs_stats` SET score = 0");
		$sth = $conn->query("UPDATE `joueurs_infos` SET score = 0");
		$sth = $conn->query("INSERT INTO `chat` ('text') VALUES ("'<b>:::::::::: NOUVEAU ROUND ::::::::::</b>'")");

		echo "RAZ terminée ! GG";
} else {
	 header('Location: http://www.destinee-online.com/');
  exit();
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


















// }

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
