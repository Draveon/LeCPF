<?php 
include("connect.php");
error_reporting(-1); // reports all errors
ini_set("display_errors", "1"); // shows all errors
ini_set("log_errors", 1);
ini_set("error_log", "/tmp/php-error.log");
?>
<h1>Test page</h1>
<?php




// // session_start();
// $idPlayer = 18;
// $idName = 'Malak';

// $req1 = mysql_query("DELETE FROM joueurs_xp_vs WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req2 = mysql_query("DELETE FROM joueurs_terre WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req3 = mysql_query("DELETE FROM joueurs_terre_utile WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req4 = mysql_query("DELETE FROM joueurs_stats WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req5 = mysql_query("DELETE FROM joueurs_sorts WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req6 = mysql_query("DELETE FROM joueurs_objets WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req7 = mysql_query("DELETE FROM joueurs_modificateurs WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req8 = mysql_query("DELETE FROM joueurs_magies WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req9= mysql_query("DELETE FROM joueurs_inventaire WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req10 = mysql_query("DELETE FROM joueurs_inscription WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req11 = mysql_query("DELETE FROM joueurs_heros WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req12 = mysql_query("DELETE FROM joueurs_créatures WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req13 = mysql_query("DELETE FROM joueurs_créatures_id WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req14 = mysql_query("DELETE FROM joueurs_connexions WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req15 = mysql_query("DELETE FROM joueurs_combat WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req16 = mysql_query("DELETE FROM joueurs_coffre WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req17 = mysql_query("DELETE FROM joueurs_bonus WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req18 = mysql_query("DELETE FROM joueurs_batspe WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req19 = mysql_query("DELETE FROM joueurs_batiments_id WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());
// $req20 = mysql_query("DELETE FROM joueurs_aptitudes_base WHERE nom = 'Malak'") or die('Erreur SQL !<br>'.mysql_error());


//   $req = mysql_query("SELECT * FROM joueurs_créatures_id WHERE nom = 'Draveon'") or die('Erreur SQL !<br>'.mysql_error());
//   $creaturesReq = mysql_query("SELECT * FROM creatures WHERE nom != 'N/A' ") or die('Erreur SQL !<br>'.mysql_error());
//   $dat = mysql_fetch_assoc($creaturesReq);
//     while($row = mysql_fetch_assoc($creaturesReq)){
//     // Toutes les créatures du jeu
//      $arrCrea[] = $row;
// }
// // On récupère les créatures potentielles du PNJ
// while($row = mysql_fetch_assoc($req)) {
//     foreach($row as $columnID => $value) {
//     	// Si des créatures sont disponibles au recrutement -> Le PNJ en aura toujours de recruté 
//         if ($value > 0 && strrpos($columnID, "id") === false) {
//         // On retrouve la créature et ses stats (pour l'équilibre de l'armée)
//         	$niv = 0;
//         	$pv = 0;
//         	$id = 0;
//         // Constantes d'équilibrage en fonction du niveau de créature (en %)
//         	$niv2 = 75;
//         	$niv3 = 60;
//         	$niv4 = 45;
//         	$niv5 = 30;
//         	$niv6 = 15;

//         	for ($i=0; $i <count($arrCrea); $i++) { 
//         		if ($arrCrea[$i]['id'] == $columnID) {
//         			$id = $arrCrea[$i]['id'];
//         			$niv = $arrCrea[$i]['niveau'];
//         			$pv = $arrCrea[$i]['pvs'];
//         			// echo $arrCrea[$i]['nom']." ".$niv." ".$pv."";

//         			$pourcentMax = 0;
//         			if ($niv == 2) {
//         				$pourcentMax = $niv2;
//         			} elseif ($niv == 3) {
//         				$pourcentMax = $niv3;

//         			} elseif ($niv == 4) {
//         				$pourcentMax = $niv4;

//         			} elseif ($niv == 5) {
//         				$pourcentMax = $niv5;

//         			} elseif ($niv == 6) {
//         				$pourcentMax = $niv6;

//         			}

//         		}
//         	}
//         		// Equilibre armée
//         		// 2: 75%, 3: 60%, 4: 45%, 5: 30%, 6: 15%

//         	// $value = $value + 1;
//         		mysql_query("UPDATE joueurs_créatures SET `$columnID` = $value WHERE nom = 'Draveon'") or die('Erreur SQL !<br>'.mysql_error());
//         		// echo $value;
//         }
//     }
// }
// echo 10 % 5;
?>
