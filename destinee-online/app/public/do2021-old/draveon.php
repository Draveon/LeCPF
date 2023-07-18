<?php 
include("connect.php");
// error_reporting(-1); // reports all errors
// ini_set("display_errors", "1"); // shows all errors
// ini_set("log_errors", 1);
// ini_set("error_log", "/tmp/php-error.log");

session_start();
$id = $_SESSION['id'];




//////////////////////////////////
// MAJ CONNEXION AVANT DERNIERE DU JOUEUR //

$sql = "SELECT * FROM `joueurs_connexions` WHERE id = ".$id." ";
$result = mysql_query($sql);

if (!$result) {
   echo "Impossible d'exécuter la requête ($sql) dans la base : " . mysql_error();
}
if (mysql_num_rows($result) == 0) {
   echo "Aucune ligne trouvée, rien à afficher.";
}
$row = mysql_fetch_array($result);

 $sql = "UPDATE `joueurs_connexions` SET `connexion_av_dernière` = ".$row[2]." WHERE id = ".$id." ";
 $result = mysql_query($sql);
 if (!$result) {
   echo "Impossible d'exécuter la requête ($sql) dans la base : " . mysql_error();
 }
///////////////////////////////////////////////


///////////////////////
/// MAJ CONNEXION DERNIERE DU JOUEUR////
mysql_query("UPDATE `joueurs_connexions` SET `connexion_dernière` = '".$temps."' WHERE nom = '".$nom."'") or die('Erreur SQL 137 !<br>'.mysql_error());
////////////////////////




$sql = "SELECT * FROM `joueurs_connexions` WHERE id = ".$id." ";
$result = mysql_query($sql);

if (!$result) {
   echo "Impossible d'exécuter la requête ($sql) dans la base : " . mysql_error();
}

if (mysql_num_rows($result) == 0) {
   echo "Aucune ligne trouvée, rien à afficher.";
}

$row = mysql_fetch_array($result);




$now_min = floor( (time() / 3600) /*+ (time() % 3600 / 60) */);

$der_conn_min = floor( ($row[2]) );

$totalMin = $now_min;

$avder_conn_min = floor( ($row[10]) % 3600 / 60 ) /*+ ($avder_conn*60)*/;

$totalMinutesAbsJoueur = floor($now_min-( $der_conn_min + ($der_conn * 60) ) );
$montantXP = ($totalMinutesAbsJoueur * 1);

if ($_SESSION['nom'] == "Draveon" && ($totalMinutesAbsJoueur <= ($now_min-1))) {
  
   echo "TOTAL passé en MINUTES : ". $totalMin;
   echo "<br>";
    echo "totalMinutesAbsJoueur : ".$totalMinutesAbsJoueur;
   echo "<br>";
      if ($totalMinutesAbsJoueur >= 1) {

      		echo "<h2>XP : ".$montantXP."</h2>";
            // $auto_xp_query = mysql_query("UPDATE `joueurs_stats` SET `xp` = `xp` + $montantXP WHERE `id` = ".$id." ") or die('Erreur sur l\'auto XP !<br>'.mysql_error());
      }
}

if ($_SESSION['nom'] == "Draveon") {
// echo time() % 3600;
echo "<br>";
echo "Minutes passées : ". $now_min;
echo "<br>";
echo "Minutes passées au moment de la dernière connexion du joueur : ". $der_conn_min;
echo "<br>";
echo "Minutes passées depuis la dernière connexion du joueur : ". $totalMinutesAbsJoueur;
} elseif ($_SESSION['nom'] == "Draveon") {
      // echo "Second passées depuis la dernière connexion du joueur : ". $totalSecondesAbsJoueur;
}
mysql_free_result($result);




// include("idontwanttosettheworldonfire.php");
// $annee = date('Y');
// $razTime = mktime(15, 45, 0, 12, 29, $annee); 
//  if ($razTime < time()) {
        // razHeroes();
//         $razTime = mktime(15, 45, 0, 12, 29, ++$annee);
//  }

// $tps_restant = $razTime - time(); // Différence entre Noël et maintenant.

// $i_restantes = $tps_restant / 60; // Minutes restantes
// $H_restantes = $i_restantes / 60; // Heures restantes
// $d_restants = $H_restantes / 24; // Jours restants

// $s_restantes = floor($tps_restant % 60); // Secondes restantes
// $i_restantes = floor($i_restantes % 60); // Minutes restantes
// $H_restantes = floor($H_restantes % 24); // Heures restantes
// $d_restants = floor($d_restants); // Jours restants
// echo date('Y-m-d G:i:s');
// echo "<br>";
// echo 'Prochaine Raz : Il reste exactement <strong>'. $d_restants .' jours</strong>, <strong>'. $H_restantes .' heures</strong>,'. ' <strong>'. $i_restantes .' minutes</strong> et <strong>'. $s_restantes .' secondes</strong>.';
// // echo "<br>";
// // echo $razTime;
// // echo "<br>";
// // echo time();
// $test =in_array('mod_rewrite', apache_get_modules());
// echo $test;
?>
