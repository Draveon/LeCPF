<?php

// Calcule le charisme sans prendre en compte les objets équipés depuis moins de 24h ni le bat spé école de la rhétorique
function calcul_cha_effectif_sans_batspe($nom) {
	
	$req = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$niv = $dat[0];
	
	$req = mysql_query('SELECT race, classe, dieu FROM joueurs_heros WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$race   = $dat[0];
	$classe = $dat[1];
	$dieux  = $dat[2];

	$req = mysql_query('SELECT cha FROM races WHERE race = "'.$race.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dataraces = mysql_fetch_row($req);
	$charisme = ($dataraces[0]) * $niv;
	$req = mysql_query('SELECT cha FROM stats_dieux WHERE nom = "'.$dieux.'"') or die('Erreur SQL !<br>'.mysql_error());
	$datadieux = mysql_fetch_row($req);
	$charisme += ($datadieux[0]) * $niv;
	$req = mysql_query('SELECT cha FROM classes WHERE classe = "'.$classe.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dataclasse = mysql_fetch_row($req);
	$charisme += ($dataclasse[0]) * $niv;

	include_once ("info_objets_include.php");
	$req = mysql_query('SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	foreach ($dat AS $ou => $item)
	{
		$obj_data = retourne_carac_objet($item);
		if ($obj_data != false && $obj_data['cha'] > 0)
		{
			// L'objet est-il équipé depuis au moins 24h?
			include_once("temps_ecoulement.php");
			$req = mysql_query('SELECT `'.$ou.'_temps` FROM joueurs_inventaire WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
			$dat = mysql_fetch_row($req);
			if ($temps - $dat[0] > $duree_jour) {
				$charisme += $obj_data['cha'];
			}
		}
	}
	
	// pt de carac supp (1 librement attribuable par niveau)
	$req = mysql_query("SELECT scha FROM joueurs_bonus WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$charisme += $data['scha'];
	
	return $charisme;
}

// Calcule le charisme sans prendre en compte les objets équipés depuis moins de 24h
function calcul_cha_effectif($nom) {
	$charisme = calcul_cha_effectif_sans_batspe($nom);
	
	include ('batimentspec_include.php');
	foreach ($batSpeConstr AS $id => $lvl) {
		if ($lvl > 0) {
			$req = mysql_query("SELECT `nom`,  `type`, `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
			if ($data = mysql_fetch_assoc($req)) {
				for ($i=1; $i<=2; $i++) {
					if (($data['tablename'.$i] == 'joueurs_bonus') && ($data['bfield'.$i] == 'cha')) {
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $lvl);
						if ($bonus != 0) {
							$charisme += $bonus;
						}
					}
				}
			}
		}
	}
	return $charisme;
}

// Calcule le charisme sans prendre en compte les objets équipés depuis moins de 24h et en limitant le lycée de la rhétorique à 2 points / niveau
function calcul_cha_effectif_bat_spe_limit($nom) {
	$charisme = calcul_cha_effectif_sans_batspe($nom);
	$req = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$niv = $dat[0];
	include ('batimentspec_include.php');
	foreach ($batSpeConstr AS $id => $lvl) {
		if ($lvl > 0) {
			$req = mysql_query("SELECT `nom`,  `type`, `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
			if ($data = mysql_fetch_assoc($req)) {
				for ($i=1; $i<=2; $i++) {
					if (($data['tablename'.$i] == 'joueurs_bonus') && ($data['bfield'.$i] == 'cha')) {
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $lvl);
						if ($bonus != 0) {
							$bonus = min($niv*2, $bonus);
							$charisme += $bonus;
						}
					}
				}
			}
		}
	}
	return $charisme;
}

// Calcule le modificateur au coût en or des créas lié au charisme
function calcul_mod_cout_creas($nom) {
	// Le charisme de lycée de la rhétorique n'est pas pris en compte de manière brute dans le modificateur, ça rendrait le bâtiment trop incontournable
	$charisme = calcul_cha_effectif_bat_spe_limit($nom);
	
	$req = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$niv = $dat[0];	
	
	// 5 de charisme / level maintiennent les prix des créas stables, au-delà le prix baisse en dessous le prix augmente
	$mod_charisme = max(1, 1 - (($charisme - ($niv * 5)) * 0.005)) / max(1, 1 + (($charisme - ($niv * 5)) * 0.005));
	return $mod_charisme;
}

// Calcul bonus au recrutement lié au charisme
function calcul_bonus_recr_charisme($nom) {
	$charisme = calcul_cha_effectif($nom);
	$crea_cha  = 1 +  0.01 * $charisme/40;
	return $crea_cha;
}

// Calcul bonus recrutement lié aux objets et bât spé officine de recrutement
function calcul_bonus_recr($nom) {
	$malus = 0;
	include_once ("info_objets_include.php");
	$req = mysql_query('SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	foreach ($dat AS $ou => $item)
	{
		$obj_data = retourne_carac_objet($item);
		if ($obj_data != false && $obj_data['HC_recrut'] > 0)
		{
			// L'objet est-il équipé depuis moins de 24h?
			include_once("temps_ecoulement.php");
			$req = mysql_query('SELECT `'.$ou.'_temps` FROM joueurs_inventaire WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
			$dat = mysql_fetch_row($req);
			if ($temps - $dat[0] > $duree_jour) {
				$malus += $obj_data['HC_recrut'];
			}
		}
	}
	
	$req = mysql_query("SELECT `HC_recrut` FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$bonus_recr = $data[0] - $malus;
	
	return $bonus_recr;	
}

// Calcul bonus consommation magie pour recrutement
function calcul_bonus_conso_magie_recr($nom) {
	$malus = 0;
	$req = mysql_query('SELECT `cout_mana_creas` FROM joueurs_modificateurs WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	$bonus_mana_recr = $dat['cout_mana_creas'];
	
	return $bonus_mana_recr;	
}

?>