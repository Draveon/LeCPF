<?php
$serveur = (!isset($_SESSION['serveur'])) ? 1 : $_SESSION['serveur'];

$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die (mysql_error());

$actual_db = 0;
switch($serveur)
{
	case '1' :	mysql_select_db("Destinee01"); $actual_db = 1;	break;
	case '2' :	mysql_select_db("Destinee02"); $actual_db = 2;	break;
}

?>
