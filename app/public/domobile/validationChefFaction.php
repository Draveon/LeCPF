<?php session_start();

  echo '<META http-equiv="refresh" content="1; URL=/faction.php">';

include ("debut.php");
include ("menu.php");
entete("Factions");
include("connect.php");

//fait rejoindre une faction à un personnage
$id = $_SESSION['id'];
$nom = $_SESSION['nom'];

$leadChoice = $_POST['leaderChoose'];
$voteMemo = mysql_query("SELECT voteLeader FROM `joueurs_bonus` WHERE `id` = '$id' ");
$data = mysql_fetch_array($voteMemo);
if ($_POST['resetVote']) {
  $req = mysql_query("UPDATE `chefferie_faction` SET `votes` = `votes` - 1 WHERE `chefferie_faction`.nom = '$data[0]' ") or die(mysql_error());
  $reqStock = mysql_query("UPDATE `joueurs_bonus` SET `voteLeader` = '' WHERE `id` = '$id' ");
  echo "Votre vote a été supprimé";
}

if ($leadChoice) {
  if ($leadChoice !== $voteMemo) {
    echo "Votre vote en faveur de ".$leadChoice." a bien été pris en compte.";
    $req = mysql_query("UPDATE `chefferie_faction` SET `votes` = `votes` + 1 WHERE `chefferie_faction`.nom = '$leadChoice' ") or die(mysql_error());
    $reqStock = mysql_query("UPDATE `joueurs_bonus` SET `voteLeader` = '$leadChoice' WHERE `id` = '$id' ");
  } else {
    echo "Vous avez déjà voté pour ".$leadChoice.".";
  }
}




include("fin.php");





 ?>
