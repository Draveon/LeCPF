<?php

function maj_puissance($nom_joueur) {
	$req  = mysql_query("SELECT population, pvstotal FROM joueurs_modificateurs WHERE nom = '".$nom_joueur."'") or die('Erreur SQL 137 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$population = $data[0];
	$pvstotal = $data[1];

	$req   = mysql_query("SELECT total FROM joueurs_terre WHERE nom = '".$nom_joueur."'") or die('Erreur SQL !<br>'.mysql_error());
	$data  = mysql_fetch_row($req);
	$terre_total = $data[0];

	$req  = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom_joueur."'") or die('Erreur SQL 148 !<br>'.mysql_error());
	$data  = mysql_fetch_row($req);
	$niveau = $data[0];	

	$pui_terre = $terre_total/100;
	$pui_creas = (1 + 0.05 * $niveau) * $pvstotal;
	$pui_pop = $population/200;
	// Si la formule est modifiée, voir le fichier combat/fin_combat.inc, combat/combatfonctions.inc, recruter_equilibre_include.php, strategie.php, espionner_include.php et recruter.php (fonctions estimate) pour d'éventuelles autres modifications
	$puissance = round($pui_terre + $pui_creas + $pui_pop);

	// On met à jour la puissance en base
	$sql = 'UPDATE `joueurs_stats` SET `puissance` = '.$puissance.' WHERE nom = "'.$nom_joueur.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	$sql = 'UPDATE `joueurs_heros` SET `puissance` = '.$puissance.' WHERE nom = "'.$nom_joueur.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	//echo "Puissance mise à jour: $puissance";
}


?> 
