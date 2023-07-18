<?php

// Ajoute les stacks d'esclaves lors d'une incantation de Esclavagisme
function ajouter_esclaves($pvs_att, $pvs_def, $prisonniers, &$armee) {

	global $creas_invoc_liste;

	$message_ajout = '';
	if ($prisonniers > 0) {
		$niveau_esclaves = min(3, floor($prisonniers / 15000));
		$pvs_max = min($pvs_att, $pvs_def) * 0.13;
		$pvs_stack1 = $pvs_max * mt_rand(20,46)/100;
		$pvs_stack2 = ($pvs_max - $pvs_stack1) * mt_rand(30,70)/100;
		$pvs_stack3 = $pvs_max - $pvs_stack1 - $pvs_stack2;
		$pvs_stacks = array($pvs_stack1, $pvs_stack2, $pvs_stack3);
		$i = 0;

		switch($niveau_esclaves) {
			case 3 :
				$nom_crea = $creas_invoc_liste['Esclavagisme6'];
				$crea = getInfosCrea($nom_crea);
				$id_crea = $crea['id'];
				$pvs_crea = $crea['pvs'];
				$nbre = round($pvs_stacks[$i] / $pvs_crea);
				$armee[$id_crea] = $nbre;
				$message_ajout .= "$nbre $nom_crea, ";
				$i++;
			case 2 :
				$nom_crea = $creas_invoc_liste['Esclavagisme5'];
				$crea = getInfosCrea($nom_crea);
				$id_crea = $crea['id'];
				$pvs_crea = $crea['pvs'];
				$nbre = round($pvs_stacks[$i] / $pvs_crea);
				$armee[$id_crea] = $nbre;
				$message_ajout .= "$nbre $nom_crea, ";
				$i++;
			case 1 :
				$nom_crea = $creas_invoc_liste['Esclavagisme4'];
				$crea = getInfosCrea($nom_crea);
				$id_crea = $crea['id'];
				$pvs_crea = $crea['pvs'];
				$nbre = round($pvs_stacks[$i] / $pvs_crea);
				$armee[$id_crea] = $nbre;
				$message_ajout .= $i<2 ? "$nbre $nom_crea, " : "$nbre $nom_crea ";
				$i++;
			default :
				if ($i<3) {
					$nom_crea = $creas_invoc_liste['Esclavagisme3'];
					$crea = getInfosCrea($nom_crea);
					$id_crea = $crea['id'];
					$pvs_crea = $crea['pvs'];
					$nbre = round($pvs_stacks[$i] / $pvs_crea);
					$armee[$id_crea] = $nbre;
					$message_ajout .= $i<2 ? "$nbre $nom_crea, " : "$nbre $nom_crea ";
					$i++;
				}
				if ($i<3) {
					$nom_crea = $creas_invoc_liste['Esclavagisme2'];
					$crea = getInfosCrea($nom_crea);
					$id_crea = $crea['id'];
					$pvs_crea = $crea['pvs'];
					$nbre = round($pvs_stacks[$i] / $pvs_crea);
					$armee[$id_crea] = $nbre;
					$message_ajout .= $i<2 ? "$nbre $nom_crea, " : "$nbre $nom_crea ";
					$i++;
				}
				if ($i<3) {
					$nom_crea = $creas_invoc_liste['Esclavagisme1'];
					$crea = getInfosCrea($nom_crea);
					$id_crea = $crea['id'];
					$pvs_crea = $crea['pvs'];
					$nbre = round($pvs_stacks[$i] / $pvs_crea);
					$armee[$id_crea] = $nbre;
					$message_ajout .= $i<2 ? "$nbre $nom_crea, " : "$nbre $nom_crea ";
				}
		}
	}

	return $message_ajout;
}

// Ajoute le stack de démons lors d'une incantation de Portail Infernal
function ajouter_demons($pvs_att, $pvs_def, &$armee) {

	global $creas_invoc_liste;

	$niveau_demons = mt_rand(1,5);
	$pvs_max = min($pvs_att, $pvs_def) * 0.15;

	switch($niveau_demons) {
		case 1 :
			$nom_crea = $creas_invoc_liste['PortailInfernal1'];
			$diviseur_nbre = 1;
			break;
		case 2 :
			$nom_crea = $creas_invoc_liste['PortailInfernal2'];
			$diviseur_nbre = 1.1;
			break;
		case 3 :
			$nom_crea = $creas_invoc_liste['PortailInfernal3'];
			$diviseur_nbre = 1.2;
			break;
		case 4 :
			$nom_crea = $creas_invoc_liste['PortailInfernal4'];
			$diviseur_nbre = 1.3;
			break;
		case 5 :
			$nom_crea = $creas_invoc_liste['PortailInfernal5'];
			$diviseur_nbre = 1.4;
			break;
	}

	$crea = getInfosCrea($nom_crea);
	$id_crea = $crea['id'];
	$pvs_crea = $crea['pvs'];
	$nbre = round($pvs_max / $pvs_crea / $diviseur_nbre);
	$armee[$id_crea] = $nbre;
	$message_ajout = "$nbre $nom_crea ";

	return $message_ajout;
}

// Ajoute des stacks d'illusions lors d'une incantation de Réalité Parallèle
function ajouter_illusions($pvs_joueur, $pvs_adversaire, &$armee, &$illus_joueur) {

	global $sql_creats_stats;

	$message_ajout = '';
	$pvstotal_par_niv_joueur = array();

	$creats_stats = mysql_query($sql_creats_stats) or die('Erreur SQL !<br>'.$sql_creats_stats.'<br>'.mysql_error());
	while ($creat_stats = mysql_fetch_assoc($creats_stats)) {
		$id = $creat_stats['id'];
		$pvs = $creat_stats['pvs'];
		$niv_crea = $creat_stats['niveau'];
		$qtee = $armee[$id];
		$pvstotal_par_niv_joueur[$niv_crea] += $pvs*$qtee;
	}

	$nb_stacks = 0;
	$pvs_max = min($pvs_joueur, $pvs_adversaire) * 0.2;

	// Un stack d'illusions de niveau 1 est créé, puis un stack pour chaque niveau au-dessus qui représente au moins 5% de l'armée du joueur.
	for ($i=1;$i<=6;$i++) {
		$pvs_niv = $pvstotal_par_niv_joueur[$i];
		if ($i == 1 || (($pvstotal_par_niv_joueur[$i] / $pvs_joueur) > 0.05)) {
			$sql = "SELECT * FROM creatures WHERE niveau = '$i' AND speciale = '0' AND raciale = '0' AND `id` > 5 ORDER BY RAND() LIMIT 1";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$crea = mysql_fetch_assoc($req);
			$id_crea = $crea['id'];
			if ($armee[$id_crea] > 0) {
				$i--;
			} else {
				$nb_stacks++;
				$illus[$i] = $crea;
			}
		}
	}

	foreach ($illus as $crea) {
		$id_crea = $crea['id'];
		$nom_crea = $crea['nom'];
		$pvs_crea = $crea['pvs'];
		$taille_stack = $nb_stacks * mt_rand(15,25) / 20;
		$nbre = round($pvs_max / $pvs_crea / $taille_stack);
		$armee[$id_crea] = $nbre;
		$illus_joueur[$id_crea] = 1;
		$message_ajout .= $i<$nb_stacks ? "$nbre $nom_crea, " : "$nbre $nom_crea ";
	}

	return $message_ajout;
}

// Effet du sort spécial Polymorphisme
function polymorphisme($pvs_joueur, &$armee, &$poly) {
	global $sql_creats_stats, $creas_polymorph_liste;
	$pvs_polymorphisme = $pvs_joueur * 0.15;
	$creas = array(array(), array(), array(), array(), array(), array());
	
	$message_ajout = '';
	
	$creats_stats = mysql_query($sql_creats_stats) or die('Erreur SQL !<br>'.$sql_creats_stats.'<br>'.mysql_error());
	while ($creat_stats = mysql_fetch_assoc($creats_stats)) {
		$id = $creat_stats['id'];
		$nom = $creat_stats['nom'];
		$pvs = $creat_stats['pvs'];
		$niveau = $creat_stats['niveau'];
		$indice = $niveau - 1;
		$qtee = $armee[$id];
		if ($qtee > 0) {
			array_push($creas[$indice], array($id, $nom, $pvs, $qtee, $niveau));
		}
	}
	
	while ($pvs_polymorphisme > 0) {
		// On s'occupe d'un niveau de créas
		$creas_hlvl = array_pop($creas);
		// On mélange pour sélectionner les créas au hasard parmis ce niveau
		shuffle($creas_hlvl);
		while ($pvs_polymorphisme > 0 && count($creas_hlvl)) {
			$crea_hlvl = array_pop($creas_hlvl);
			$crea_hlvl_id = $crea_hlvl[0];
			$crea_hlvl_nom = $crea_hlvl[1];
			$crea_hlvl_pvs = $crea_hlvl[2];
			$crea_hlvl_qtee = $crea_hlvl[3];
			$crea_hlvl_niveau = $crea_hlvl[4];
			$crea_hlvl_total_pvs = $crea_hlvl_pvs * $crea_hlvl_qtee;
			$sql = mysql_query("SELECT * FROM creatures WHERE `id` = $crea_hlvl_id") or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$result = mysql_fetch_assoc($sql);
			// On sélectionne une nouvelle créa avec les même traits
			$vol = $result['vol'];
			$range = $result['range'];
			if ($vol && $range) {
				$crea_poly_nom = $creas_polymorph_liste['Polymorphisme4'];
			} else if ($vol) {
				$crea_poly_nom = $creas_polymorph_liste['Polymorphisme3'];
			} else if ($range) {
				$crea_poly_nom = $creas_polymorph_liste['Polymorphisme2'];
			} else {
				$crea_poly_nom = $creas_polymorph_liste['Polymorphisme1'];
			}
			$crea_poly = getInfosCrea($crea_poly_nom);
			$crea_poly_id = $crea_poly['id'];
			$crea_poly_pvs = $crea_poly['pvs'];
			if ($pvs_polymorphisme > $crea_hlvl_total_pvs) {
				$crea_poly_qtee = ceil($crea_hlvl_total_pvs / $crea_poly_pvs);
				// On ajoute la nouvelle créa à l'armée
				$armee[$crea_poly_id] += $crea_poly_qtee;
				// On retire l'ancienne et on l'ajoute aux monstres polymorphés pour les récupérer normalement en fin de combat
				$poly[$crea_hlvl_id] = array($armee[$crea_hlvl_id], $crea_poly_id, $crea_hlvl_niveau);
				$armee[$crea_hlvl_id] = 0.1;
				$qtee_polymorphee = $crea_hlvl_qtee;
				// On met à jour les pvs à régresser
				$pvs_polymorphisme -= $crea_poly_qtee * $crea_poly_pvs;
			
				// On met à jour le message
				$message_ajout .= "$qtee_polymorphee $crea_hlvl_nom sont transformés en $crea_poly_qtee $crea_poly_nom, ";
			} else {
				$crea_poly_qtee = ceil($pvs_polymorphisme / $crea_poly_pvs);
				// On ajoute la nouvelle créa à l'armée
				$armee[$crea_poly_id] += $crea_poly_qtee;
				// On retire l'ancienne et on l'ajoute aux monstres qui ont fui pour les récupérer normalement en fin de combat
				$qte_regressee = ceil($pvs_polymorphisme / $crea_hlvl_pvs);
				$poly[$crea_hlvl_id] = array($qte_regressee, $crea_poly_id, $crea_hlvl_niveau);
				$armee[$crea_hlvl_id] -= $qte_regressee;
				if ($armee[$crea_hlvl_id] == 0) {
					$armee[$crea_hlvl_id] = 0.1;
				}
				$qtee_polymorphee = $qte_regressee;
				// On met à jour les pvs à régresser
				$pvs_polymorphisme = 0;
			
				// On met à jour le message
				if ($message_ajout != '')
					$message_ajout .= "et ";
				$message_ajout .= "$qtee_polymorphee $crea_hlvl_nom sont transformés en $crea_poly_qtee $crea_poly_nom !";
			}
		}
	}
	
	return $message_ajout;
}

// Retourne les infos d'une créature
function getInfosCrea($nom_crea) {
	$sql = mysql_query("SELECT id, nom, niveau, att, def, ini, end, pvs, min, max, vol, `range`, cout_argent, cout_mana, type, att_mag, raciale, bgh FROM creatures WHERE `nom` = '$nom_crea'") or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$result = mysql_fetch_assoc($sql);
	return $result;
}

?>
