<?php
  // header('Location: administration.php');
include('connect_0.php');
  


// REMISE DES MEDAILLES

$joueursParPlusGrosXp = "SELECT id, id_compte FROM `joueurs_stats` ORDER BY `xp` DESC";
$data = mysql_fetch_array($joueursParPlusGrosXp);
$idChampion = $data[0];
$idCompteChampion = $data[1];
?>
<ul>
<?php
for ($i=0; $i < 3; $i++) { 
?>
	<li><?php echo $idChampion[$i]; ?></li>
<?php
}
?>
</ul>

?>

