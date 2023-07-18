<?php

// Impact sur Résistance
function coeff_res($nom) {
	$req = mysql_query('SELECT `res` FROM joueurs_modificateurs WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	$bonus_res = $dat['res'];

	return $bonus_res;
}
 ?>
