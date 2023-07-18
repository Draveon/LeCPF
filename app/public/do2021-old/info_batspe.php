<?php
if (!isset($_GET['type'])){
    $type = "aucun";
}
else{
    $type = $_GET['type'];
}

include ("connect.php");


switch($type)
{
	case "aucun":
	break;
	case "combat":?>
    	<img src="images/batspe/brancheducombat.jpg">
    <?php
	break;
	case "charisme":?>
    	<img src="images/batspe/brancheducharisme.jpg">	
    <?php
	break;
	case "magie":?>
    	<img src="images/batspe/branchedelamagie.jpg">	
    <?php
	break;
}
mysql_close();
