<?php

$puissance_cible = (isset($_POST['puissance_cible'])) ? $_POST['puissance_cible'] : 0;

$erreur = "";
$creas_par_tranche = array();
$recrutement = array();

// priorité 0 = prioritaire, 1 = secondaire, 2 = non utilisé
foreach ($creatures_choisies as $id_crea => $priorite) {
	$sql_creas = "SELECT nom, niveau, pvs, cout_argent, cout_mana FROM creatures WHERE id = $id_crea";
	$req_creas = mysql_query($sql_creas) or die('Erreur SQL !<br>'.mysql_error());
	$crea = mysql_fetch_array($req_creas);
	$creas_infos[$id_crea] = $crea;
	$tranche_crea = $crea['niveau'];
	$creas_par_tranche[$tranche_crea][$priorite][$id_crea] = $crea['pvs'];
	$recrutement[$id_crea] = 0;

	// On récupère les quantités déjà recrutées
	$sql = "SELECT `$id_crea` FROM joueurs_créatures WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$qte_existante_crea[$id_crea] = $data[0];

	// On récupère les stocks de chaque créature choisie
	$sql = "SELECT `$id_crea` FROM joueurs_créatures_id WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$dispo_crea[$id_crea] = $data[0];
}

$sql = "SELECT pvstotal FROM joueurs_modificateurs WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pvs_armee = $data[0];

$sql = "SELECT niveau, puissance FROM joueurs_stats WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$niveau_joueur = $data[0];
$coef_pui_pv = 1 + 0.05 * $niveau_joueur;
$puissance_actuelle = $data[1];

if ($nb_stacks > 20 ) {
	$erreur .= "Vous ne pouvez recruter plus de 20 types de créatures différents! <br />";
} else if ($puissance_cible <= $puissance_actuelle) {
	$erreur .= "La puissance cible ne peut pas être inférieure à votre puissance actuelle! <br />";
} else {
	$puissance_sans_armee = $puissance_actuelle - $coef_pui_pv * $pvs_armee;
	$pvs_finaux_total = floor(($puissance_cible - $puissance_sans_armee) / $coef_pui_pv);
	$pvs_dispo_tranche[1] = floor($pvs_finaux_total * 0.25);
	$pvs_dispo_tranche[2] = floor($pvs_finaux_total * 0.15);
	$pvs_dispo_tranche[3] = floor($pvs_finaux_total * 0.15);
	$pvs_dispo_tranche[4] = floor($pvs_finaux_total * 0.15);
	$pvs_dispo_tranche[5] = floor($pvs_finaux_total * 0.15);
	$pvs_dispo_tranche[6] = floor($pvs_finaux_total * 0.15);
	// On calcule les pvs "disponibles" (ce qui manque à recruter pour arriver au max de la tranche) de chaque tranche et on stocke les pvs recrutés de chaque créa
	for ($tranche=1;$tranche<=6;$tranche++) {
		foreach ($creas_par_tranche[$tranche] as $priorite => $creas) {
			foreach ($creas as $id => $pvs) {
				$pvs_dispo_tranche[$tranche] -= $qte_existante_crea[$id] * $pvs;
				$pvs_existants[$tranche][$priorite][$id] = $qte_existante_crea[$id] * $pvs;
			}
		}
	}

	for ($tranche=6;$tranche>=1;$tranche--) {
		if ($pvs_dispo_tranche[$tranche] < 0) {
			// S'il y a déjà plus de créature dans la tranche qu'il ne devrait, on retranche le surplus sur la ou les tranches supérieures si possible
			$tranche_report = $tranche + 1;
			while ($tranche_report < 7) {
				if (abs($pvs_dispo_tranche[$tranche]) <= $pvs_dispo_tranche[$tranche_report]) {
					$pvs_dispo_tranche[$tranche_report] += $pvs_dispo_tranche[$tranche];
					$pvs_dispo_tranche[$tranche] = 0;
					break;
				} else {
					$pvs_dispo_tranche[$tranche] += $pvs_dispo_tranche[$tranche_report];
					$pvs_dispo_tranche[$tranche_report] = 0;
					$tranche_report++;
				}
			}
			// Sinon on retranche le surplus sur la lou les tranches inférieures
			if ($pvs_dispo_tranche[$tranche] < 0) {
				$tranche_report = $tranche - 1;
					while ($tranche_report > 0) {
						if (abs($pvs_dispo_tranche[$tranche]) <= $pvs_dispo_tranche[$tranche_report]) {
						$pvs_dispo_tranche[$tranche_report] += $pvs_dispo_tranche[$tranche];
						$pvs_dispo_tranche[$tranche] = 0;
						break;
					} else {
						$pvs_dispo_tranche[$tranche] += $pvs_dispo_tranche[$tranche_report];
						$pvs_dispo_tranche[$tranche_report] = 0;
						$tranche_report--;
					}
				}
			}
		}
	}

	for ($tranche=6;$tranche>=1;$tranche--) {
		// On cherche la créa de la tranche en cours de traitement qui a les plus gros pvs (parmis celles qu'on est susceptible de recruter)
		$pvs_max_tranche = 0;
		foreach ($creas_par_tranche[$tranche] as $priorite => $creas) {
			if ($priorite < 2) {
				foreach ($creas as $id => $pvs) {
					if ($pvs_max_tranche < $pvs) {
						$pvs_max_tranche = $pvs;
					}
				}
			}
		}

		// On recrute 1 créature du stack qui représente le moins de pvs jusqu'à ce qu'on atteigne la limite de la tranche ou jusqu'à ce qu'il n'y ait plus de stocks
		// On traite les créas prioritaires d'abord et les secondaires ensuite
		for ($priorite=0;$priorite<2;$priorite++) {
			$continue = true;
			while ($continue && ($pvs_dispo_tranche[$tranche] > $pvs_max_tranche)) {
				$continue = false;
				// On check qu'il reste des trucs à recruter
				foreach ($creas_par_tranche[$tranche][$priorite] as $id => $stats) {
					if ($dispo_crea[$id] > 0) {
						$continue = true;
						break;
					}
				}
				// Si oui, on recrute 1 créature du stack avec le plus faible nombre de pvs et sur lequel y'a encore des stocks
				if ($continue) {
					asort($pvs_existants[$tranche][$priorite]);
					reset($pvs_existants[$tranche][$priorite]);
					do {
						$id_crea = key($pvs_existants[$tranche][$priorite]);
						next($pvs_existants[$tranche][$priorite]);
					} while ($dispo_crea[$id_crea] == 0);
					$pvs_crea = $creas_par_tranche[$tranche][$priorite][$id_crea];
					$pvs_existants[$tranche][$priorite][$id_crea] += $pvs_crea;
					$recrutement[$id_crea]++;
					$dispo_crea[$id_crea]--;
					$pvs_dispo_tranche[$tranche] -= $pvs_crea;
				}
			}
		}

		// On reporte les pvs restants à recruter sur la tranche suivante
		$tranche_suivante = $tranche - 1;
		$pvs_dispo_tranche[$tranche_suivante] += $pvs_dispo_tranche[$tranche];
	}

	// On calcule le coût en or et mana du recrutement
	include_once("calcul_bonus_recrutement.php");
	$mod_mana = calcul_bonus_conso_magie_recr($nom);
	$mod_or = calcul_mod_cout_creas($nom);

	$prix_total = $mana_total = 0;
	foreach ($recrutement as $id => $qte) {
		$prix_total += $qte * $creas_infos[$id]['cout_argent'] * $mod_or;
		$mana_total += $qte * $creas_infos[$id]['cout_mana'] * $mod_mana;
	}

	$prix_total = round($prix_total);
	$mana_total = round($mana_total);
	$pvs_recrut = 0;

	echo "Vous vous apprêtez à recruter: <br /><br />";
	foreach ($recrutement as $id => $qte) {
		if ($qte > 0) {
			$pvs_recrut += $creas_infos[$id]['pvs'] * $qte;
			$nom_crea = $creas_infos[$id]['nom'];
			echo "$qte $nom_crea <br />";
			echo '<input type="hidden" name="crea_'.$id.'" value="'.$qte.'">';
		}
	}
	$puissance_finale = round($puissance_actuelle + $pvs_recrut * $coef_pui_pv);
	echo "<br />Le coût total de ce recrutement est de <strong>$prix_total</strong> pièces d'or et de <strong>$mana_total</strong> points de mana.<br /> Apr&egrave;s recrutement, votre puissance sera de <strong>$puissance_finale</strong> et votre arm&eacute;e aura un total de <strong>$pvs_recrut</strong> points de vie.<br /><br />";
}


?>
