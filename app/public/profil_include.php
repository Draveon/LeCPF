<?php

function rediriger($race, $classe, $dieu, $sexe)
{
	$_SESSION['race'] = $race;
	$_SESSION['classe'] = $classe;
	$_SESSION['dieu'] = $dieu;
	$_SESSION['sexe'] = $sexe;
	echo '<META http-equiv="refresh" content="1; URL=/selection_perso.php">';
}

function getJoueurDonnees($joueur_id, $joueur_nom, $use_id = 1)
{
	include "connect.php";
	$critere = ($use_id == 1) ? 'WHERE id = '.$joueur_id : 'WHERE nom = \''.$joueur_nom.'\'' ;
	$req = mysql_query('SELECT email, avatar, description FROM joueurs_heros '.$critere);
	
	return $dat = mysql_fetch_array($req);
	mysql_close();
}

?>