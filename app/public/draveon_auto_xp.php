<?php 
include("connect.php");
// error_reporting(-1); // reports all errors
// ini_set("display_errors", "1"); // shows all errors
// ini_set("log_errors", 1);
// ini_set("error_log", "/tmp/php-error.log");

// session_start();

// id du joueur
$id = $_SESSION['id'];
$nom = $_SESSION['nom'];

//////////////////////////////////
// MAJ AVANT DERNIERE CONNEXION DU JOUEUR //

$sql = "SELECT * FROM `joueurs_connexions` WHERE nom = '$nom' ";
// $sql = "SELECT * FROM `joueurs_connexions` WHERE id = '".$id."' ";
$result = mysql_query($sql);

if (!$result) {
   echo "Impossible d'exécuter la requête ($sql) dans la base : " . mysql_error();
}
if (mysql_num_rows($result) == 0) {
   echo "Aucune ligne trouvée, rien à afficher.";
}
$row = mysql_fetch_array($result);

$dateActuelle = $row[2];
$dateAncienne = $row[10];

if ($dateAncienne < $dateActuelle) {

 $sql = "UPDATE `joueurs_connexions` SET `connexion_av_dernière` = ".$dateActuelle." WHERE nom = '$nom' ";
 $result = mysql_query($sql);
 if (!$result) {
   echo "Impossible d'exécuter la requête ($sql) dans la base : " . mysql_error();
 }
}


///////////////////////
/// MAJ DERNIERE CONNEXION DU JOUEUR////
mysql_query("UPDATE `joueurs_connexions` SET `connexion_dernière` = ".$temps." WHERE nom = '$nom' ") or die('Erreur SQL 137 !<br>'.mysql_error());


///////////////////// Recuperation des infos mises à jours
$sql = "SELECT * FROM `joueurs_connexions` WHERE nom = '$nom' ";
$result = mysql_query($sql);
if (!$result) {
   echo "Impossible d'exécuter la requête ($sql) dans la base : " . mysql_error();
}
if (mysql_num_rows($result) == 0) {
   echo "Aucune ligne trouvée, rien à afficher.";
}
$row = mysql_fetch_array($result);





$dateActuelle = floor(($row[2])) ;
$dateAncienne = floor(($row[10]));

$totalMinutesAbsJoueur = floor($dateActuelle - $dateAncienne ) ;
$montantXP = ($totalMinutesAbsJoueur * 1);

if ($totalMinutesAbsJoueur >= 1) {

      echo "<h6 style='color: #efefef;text-shadow: 0 0px 8px #000;font-weight: bold;'>Votre royaume vous a rapporté : ".$montantXP." points d'expérience</h6>";
      $auto_xp_query = mysql_query("UPDATE `joueurs_stats` SET `xp` = `xp` + ".$montantXP." WHERE nom = '$nom' ") or die('Erreur sur l\'auto XP !<br>'.mysql_error());
}


mysql_free_result($result);


?>
