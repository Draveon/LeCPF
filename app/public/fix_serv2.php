<?php

$_SESSION['serveur'] = 3;
include "connect.php";

$req = mysql_query("SELECT race, nom FROM joueurs_heros WHERE id = 57");
while($dat = mysql_fetch_row($req))
{
	echo $dat[1].":".$dat[0]."<br />";
	$req2 = mysql_query("SELECT terrains_bonus.riverain, terrains_bonus.colline, terrains_bonus.désert, terrains_bonus.forêt, terrains_bonus.arctique, terrains_bonus.marais, terrains_bonus.montagne, terrains_bonus.plaine, terrains_bonus.caverne
							FROM terrains_races
							INNER JOIN terrains_bonus
							ON terrains_races.race = terrains_bonus.race
							WHERE terrains_bonus.race = '".$dat[0]."'");
	$dat2 = mysql_fetch_row($req2);
	mysql_query("UPDATE joueurs_modificateurs SET `riverain` = '".$dat2[0]."', `colline` = '".$dat2[1]."', `désert` = '".$dat2[2]."', `forêt` = '".$dat2[3]."', `arctique` = '".$dat2[4]."', `marais` = '".$dat2[5]."', `montagne` = '".$dat2[6]."', `plaine` = '".$dat2[7]."', `caverne` = '".$dat2[8]."' WHERE nom = '".$dat[1]."'");
}
?>