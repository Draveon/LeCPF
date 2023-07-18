<?php

include('connect.php');

	$req = mysql_query("SELECT pui FROM joueurs_stats");

	$data = mysql_fetch_row($req));
	echo $data;
	var_dump($data);
	

?>
