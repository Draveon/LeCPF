<?php session_start();
include ("debut.php");
include ("menu.php");
entete("Discours");
include("connect.php");

$nom = $_GET['nom'];

$getDiscours = mysql_query("SELECT * FROM `chefferie_faction` WHERE nom = '$nom'");

while ($data = mysql_fetch_array($getDiscours)) {
  ?>
  <div class="discoursFormat">
    <h2><?php echo " Discours de ".$data['nom']; ?></h2>
    <p discours><?php echo $data['discours']; ?></p>
  </div>
  <?php
}
echo '<a href="faction.php">Retour à votre faction</a>';




include("fin.php");
?>
