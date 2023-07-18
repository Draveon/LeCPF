<?php 

	include_once ('meteo_include.php');
	$req = mysql_query('SELECT `valeur_double` FROM `destinee_statistiques` WHERE param = "meteo"') or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
	{
		echo '<div class="scroll_background">La météo actuelle sur Kalamai: <b>'.strtolower($meteo[$data[0]]).'</b>.</div>';
		$nbrmsg++;
	}

	

 ?>