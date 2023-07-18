<?php

// fonctions utiles pour détailler les objets (et qui se retrouveraient sinon dans plusieurs pages: info_objets.php, info_objets2.php, info_inventaire.php, etc.)

// END_USER FUNCTION
function affiche_image_objet ($nm, $img, $url, $size, $border)
{
	$a_begin = ($url=='') ? '' : '<a href="info_objets.php?item='.$url.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">';
	$a_end = ($url == '') ? '' : '</a>';
	return $a_begin.'<img src="'.$img.'" width="'.$size.'" height="'.$size.'" alt="'.$nm.'" border="'.$border.'">'.$a_end;
}
// END_USER FUNCTION: affiche la barre rouge dedans le cadre, en vue de les afficher les uns a coté des autres (page inventaire)
function affiche_image_objet_inner ($nm, $img, $url, $size, $border)
{
	$a_begin = ($url=='') ? '' : '<a href="info_objets.php?item='.$url.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">';
	$a_end = ($url == '') ? '' : '</a>';
	return $a_begin.'<img src="'.$img.'" width="'.$size.'" height="'.$size.'" alt="'.$nm.'" border="'.$border.'">'.$a_end;
}

// Retourne le nombre de places libres dans l'inventaire du joueur
function places_libres_inv($joueur) {
	$places = 0;
	$req = mysql_query("SELECT * FROM joueurs_objets WHERE nom = '$joueur'") or die ('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req)) {
		for($k = 1; isset ( $data [$k] ); $k ++) {
			if ($data [$k] == 0) {
				$places ++;
			}
		}
	}
	return $places;
}

// END_USER FUNCTION
function liste_bonus ($stats, $retrancher = 0)
{
	// fonction utilisée pour les statss ET pour les sorts
	$out = '';
	
	$sql = 'SELECT `bonus`, `libellé`, `article` FROM bonus_libellé ORDER BY `id` ASC';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_assoc($req)) {
		$nom_bonus = $data['bonus'];
		$libelle_bonus = $data['article'].$data['libellé'];
		if (isset($stats[$nom_bonus]) && $stats[$nom_bonus] - $retrancher != 0) {
			// Si le bonus est un entier on l'affiche tel quel sinon il faut le multiplier par 100 et afficher '%'
			$valeur_bonus = fmod($stats[$nom_bonus], 1) == 0 ? $stats[$nom_bonus] : round(($stats[$nom_bonus] - $retrancher) * 100).'%';
			if ($valeur_bonus != 0) {
				if ($valeur_bonus > 0) {
					$out .= '+';
				}
				$out .= "$valeur_bonus $libelle_bonus<br />";
			}
		}
	}
	
	$out .= '<br>';
	
	if ((isset($stats['vendable']) && ($stats['vendable'] == 0)))	$out .= '<i>Cet objet ne peut être vendu.</i><br>';
	if ((isset($stats['maudit']) && ($stats['maudit'] == 1)))	$out .= '<i>Cet objet est maudit: il ne peut être enlevé autrement qu\'en le détruisant.</i><br>';
	
	return $out;
}

// Afficher les effets d'un consommable
function affiche_effet_consommable ($stats)
{
	$out = '';
	
	switch ($stats['nom']) {
		case 'Potion énergisante':
			$type = 'mana';
			$value = 5000;
			break;
		case 'Potion de concentration':
			$type = 'mana';
			$value = 10000;
			break;
		case 'Potion de puissance':
			$type = 'mana';
			$value = 20000;
			break;
		case 'Potion d`amphèt`':
			$type = 'mana';
			$value = 30000;
			break;
		case 'Parchemin d`immunité mineur':
			$type = 'immunité';
			$value = 8;
			break;
		case 'Parchemin d`immunité':
			$type = 'immunité';
			$value = 16;
			break;
		case 'Parchemin d`immunité majeur':
			$type = 'immunité';
			$value = 24;
			break;
	}
	
	switch ($type) {
		case 'mana':
			$out .= "Ajoute $value mana à votre réserve (dans la limite de votre maximum)<br>";
			break;
		case 'immunité':
			$out .= "Déploie un dôme de protection d'une durée de $value heures autour de votre royaume, vous rendant inattaquable pendant cette durée<br>";
			break;
	}
	
	$out .= '<br>';
	
	if ((isset($data['vendable']) && ($data['vendable'] == 0)))	$out .= '<i>Cet objet ne peut être vendu.</i><br>';
	if ((isset($data['trouvable']) && ($data['trouvable'] == 0)))	$out .= '<i>Cet objet ne peut pas être trouvé en exploration.</i><br>';
	$out .= '<i>Cet objet est détruit lorsque consommé.</i><br>';
	
	return $out;
}

// END_USER FUNCTION: utilise un consommable puis la détruit
function utilise_consommable ($joueur, $item)
{
	include_once("temps_ecoulement.php");
	// incrément
	if (inventaire2detroy($joueur, $item))
	{
		$obj_data = retourne_carac_objet ($item);
		switch ($obj_data['nom']) {
			case 'Potion énergisante':
				$type = 'mana';
				$value = 5000;
				break;
			case 'Potion de concentration':
				$type = 'mana';
				$value = 10000;
				break;
			case 'Potion de puissance':
				$type = 'mana';
				$value = 20000;
				break;
			case 'Potion d`amphèt`':
				$type = 'mana';
				$value = 30000;
				break;
			case 'Parchemin d`immunité mineur':
				$type = 'immunité';
				$value = 480;
				break;
			case 'Parchemin d`immunité':
				$type = 'immunité';
				$value = 960;
				break;
			case 'Parchemin d`immunité majeur':
				$type = 'immunité';
				$value = 1440;
				break;
		}
		
		switch ($type) {
			case 'mana':
				$sql = "UPDATE `joueurs_stats` SET `mana` = `mana` + ".$value." WHERE nom = '".$joueur."'";
				break;
			case 'immunité':
				$sql = "UPDATE `joueurs_combat` SET `affaibli` = $temps + ".$value." WHERE nom = '".$joueur."'";
				break;
		}
		$req = mysql_query($sql);
		// destruction
		detruire_objet ($item);
		return true;
	}
	return false;
}

// LOW_LEVEL FUNCTION: cette fonction ne met pas à jour les stats du joueur!
function inventaire2equiper ($joueur, $i, $id, $ou)
{
	$req = mysql_query("UPDATE `joueurs_objets` SET `".$i."` = '0' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 178 !<br>'.mysql_error());
	include_once("temps_ecoulement.php");
	$req = mysql_query("UPDATE `joueurs_inventaire` SET `".$ou."` = '".$id."', `".$ou."_temps` = '".$temps."' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 179 !<br>'.mysql_error());
}

// LOW_LEVEL FUNCTION: cette fonction ne met pas à jour les stats du joueur!
function equiper2inventaire ($joueur, $i, $id, $ou)
{
	$req = mysql_query("UPDATE `joueurs_objets` SET `".$i."` = '".$id."' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 185 !<br>'.mysql_error());
	$req = mysql_query("UPDATE `joueurs_inventaire` SET `".$ou."` = '0' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 186 !<br>'.mysql_error());
	
	return true;
}
// LOW_LEVEL FUNCTION: ne met pas à jour les stats du joueur!
function equiperSWAPinventaire ($joueur, $i, $ou)
{
	$req = mysql_query("SELECT `".$i."` FROM  `joueurs_objets` WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 193 !<br>'.mysql_error());
	$jobjets= mysql_fetch_row($req);
	$req = mysql_query("SELECT `".$ou."` FROM  `joueurs_inventaire` WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 195 !<br>'.mysql_error());
	$jinventaire = mysql_fetch_row($req);
	include_once("temps_ecoulement.php");
	$req = mysql_query("UPDATE `joueurs_inventaire` SET `".$ou."` = '".$jobjets[0]."', `".$ou."_temps` = '".$temps."' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 198 !<br>'.mysql_error());
	$req = mysql_query("UPDATE `joueurs_objets` SET `".$i."` = '".$jinventaire[0]."' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 199 !<br>'.mysql_error());
	
	return true;
}

// LOW_LEVEL FUNCTION: La fonction n'est pas forcément appelée pour le joueur connecté. Elle peut être appelée lors d'un combat ou d'un espionnage effectué sur le joueur.
function equiper2destroy ($ou, $joueur)
{
	// récupération de l'objet en vue de sa destruction
	$sql1 = "SELECT `".$ou."` FROM `joueurs_inventaire` WHERE nom = '".$joueur."'";
	$req1 = mysql_query($sql1) or die('Erreur SQL ioi.php 209 !<br>'.mysql_error());
	
	$sql = "UPDATE `joueurs_inventaire` SET `".$ou."` = '0' WHERE nom = '".$joueur."'";
	$req = mysql_query($sql) or die('Erreur SQL ioi.php 212 !<br>'.mysql_error());
	
	if ($data = mysql_fetch_row($req1))
		detruire_objet ($data[0]);
	
	return true;
}

// END_USER FUNCTION: retire un objet de l'inventaire d'un joueur; détruit PAS l'objet
function inventaire2detroy($joueur, $item)
{
	$req = mysql_query("SELECT * FROM joueurs_objets WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 223 !<br>'.mysql_error());
	$slot = mysql_fetch_assoc($req);
	for ($i=1; isset($slot[$i]); $i++)
	{
		if ($slot[$i] == $item)
		{
			$req = mysql_query("UPDATE `joueurs_objets` SET `$i` = '0' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 229 !<br>'.mysql_error());
			return true;
		}
	}
	return false;
}

// END_USER FUNCTION : en cas d'équipement/déséquipement d'un objet
function objetchangemodificateurs (&$obj_data, $joueur, $mode = '+', $refaireTest = true)
{
	if ($obj_data == false)
		return false;
	
	if ($mode == '-')
		$plus = false;
	else
		$plus = true;
	
	// bonus conférés par les objets
	$sql = "SELECT att, def, ini, cha, end, pui, chance FROM joueurs_bonus WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sql = 'UPDATE `joueurs_bonus` SET ';
	foreach ($data as $key => $value)
	{
		if ($plus)	$sql .= '`'.$key.'` = \''.( $data[$key] + $obj_data[$key] ).'\', ';
		else		$sql .= '`'.$key.'` = \''.( $data[$key] - $obj_data[$key] ).'\', ';
	}
	$sql = substr($sql, 0, strlen($sql)-2);
	$sql .= ' WHERE nom = \''.$joueur.'\'';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	// modificateurs
	$sql = "SELECT mana, montagne, Air, Terre, Eau, Feu, Électricité, chance, `res_phys`, `res_mag`, `res_feu`, `res_eau`, `res_terre`, `res_air`, `res_elec`, `res_elem`, `xp`, `terres`, `or`, `mana_consommation`, `HC_or`, `HC_mines`, `HC_recrut`, `prison`, `degat_phys`, `degat_mag`, `degat_range`, `res_range`, `degat_vs_range`, `res_vs_range`, `degat_cac`, `res_cac`, `degat_vs_cac`, `res_vs_cac`, `degat_vol`, `res_vol`, `degat_vs_vol`, `res_vs_vol`, `degat_vs_sol`, `res_vs_sol`, `degat_sol`, `degat_vs_phys`, `degat_vs_mag`, `res_sol`, `res_vs_phys`, `res_vs_mag`, `degat`, `res`, `degat_elem`, `effets_elem_def`, `res_effets_elem_def`, `cailloux_consommation`, `feu_def`, `eau_def`, `terre_def`, `air_def`, `elec_def`, `res_feu_def`, `res_eau_def`, `res_terre_def`, `res_air_def`, `res_elec_def`, `vol_ressources`, `globe_protect`, `cout_mana_creas`
		FROM joueurs_modificateurs WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sql = 'UPDATE `joueurs_modificateurs` SET ';
	foreach ($data as $key => $value)
	{
		if ($plus)	$sql .= '`'.$key.'` = \''.( $data[$key] + $obj_data[$key] ).'\', ';
		else		$sql .= '`'.$key.'` = \''.( $data[$key] - $obj_data[$key] ).'\', ';
	}
	$sql = substr($sql, 0, strlen($sql)-2);
	$sql .= ' WHERE nom = \''.$joueur.'\'';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	echo '<script> alert ('.$sql.');</script>';
	
	// stats yc les bonus des objets
	$sql = "SELECT att, def, ini, cha, end, pui FROM joueurs_stats WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sql = 'UPDATE `joueurs_stats` SET ';
	foreach ($data as $key => $value)
	{
		if ($plus)	$sql .= '`'.$key.'` = \''.( $data[$key] + $obj_data[$key] ).'\', ';
		else		$sql .= '`'.$key.'` = \''.( $data[$key] - $obj_data[$key] ).'\', ';
	}
	$sql = substr($sql, 0, strlen($sql)-2);
	$sql .= ' WHERE nom = \''.$joueur.'\'';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	// si, à la suite de ce (dé)équipement, le charisme change, faut contrôler si les autres objets peuvent toujours être portés.
	if ($obj_data['cha'] != 0 && $refaireTest)
	{
		checkObjetsCharisme($joueur);
	}
}

// END_USER FUNCTION
function estEquipable (&$obj_data, $classe, $charisme)
{
	if ((($obj_data[$classe] != 0) || ($charisme >= $obj_data['niv']*10)))
		return true;
	return false;
}

// END_USER FUNCTION: ajoute un objet dans l'inventaire des trucs inutilisés. retourne vrai si réussi, false si pas de joueur ou pas de place
function ajouteDansInventaire ($joueur, $id_objet)
{
	$req = mysql_query("SELECT * FROM joueurs_objets WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 309 !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		for ($k=1; isset($data[$k]); $k++)
		{
			if ($data[$k] == 0)
			{
				$sql = "UPDATE `joueurs_objets` SET `".$k."` = '".$id_objet."' WHERE nom = '".$joueur."'";
				$req = mysql_query($sql) or die('Erreur SQL ioi.php 317 !<br>'.$sql.'<br>'.mysql_error());
				return true;
			}
		}
	}
	return false;
}


// END_USER FUNCTION: controle que tous les objets équipés peuvent être effectivement être portés. Sinon, les met dans l'inventaire.
function checkObjetsCharisme($joueur)
{
	$sql = "SELECT classe, cha FROM joueurs_heros INNER JOIN joueurs_stats ON joueurs_stats.nom= joueurs_heros.nom WHERE joueurs_heros.nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL ioi.php 330 !<br>'.$sql.'<br>'.mysql_error());
	$jdata = mysql_fetch_assoc($req);
	$sql = "SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL ioi.php 333 !<br>'.$sql.'<br>'.mysql_error());
	$obj = mysql_fetch_assoc($req);
	$flag = false;
	foreach ($obj AS $location => $id)
	{
		if ($id != 0)
		{
			$obj_data = retourne_carac_objet ($id);
			if (($obj_data[$jdata['classe']] == '0')&&($jdata['cha'] < ($obj_data['niv']*10)))	// la classe ne peut pas le porter; le charisme non plus
			{
				echo $jdata['cha'].' est strictement inférieur à '.($obj_data['niv']*10).'<br />';
				echo 'L\'objet <b>'.$obj_data['nom'].'</b> ne devrait pas être porté en ce moment, car votre charisme est insuffisant pour ce faire.<br>';
				
				// Déséquipement de l'objet
				// ajoute l'objet dans l'inventaire
				if (!ajouteDansInventaire ($joueur, $id))
				{
					// si vrai, l'objet a été placé dans l'inventaire.
					// si l'inventaire est plein, on ruse avec le marché central.
					$sql = "INSERT INTO `foire_vente` (`item`, `qtee`, `offre`, `temps`, `image`, `acheteur`, `type`, `type2`)
						VALUES ('".$id."', 1, 0, ".(floor(time()/60)-1).", '".$obj_data['image']."', '$joueur', 'objet', 'Déséquipement')";
					$req = mysql_query($sql) or die('Erreur SQL ioi.php 354 !<br>'.$sql.'<br>'.mysql_error());
				}
				// finalement on enlève les bonus et retire l'objet
				$req_del = mysql_query("UPDATE `joueurs_inventaire` SET `".$location."` = '0' WHERE nom = '".$joueur."'") or die('Erreur SQL ioi.php 357 !<br>'.mysql_error());
				objetchangemodificateurs ($obj_data, $joueur, '-', false);
			}
		}
	}
	if ($flag)
		echo 'Les objets indiqués ci-dessus seront automatiquement déséquipés d\'ici quelques jours, au plus tôt le week-end du 8 août.<br>Il vous sera offert une possibilité de redistribuer vos points d\'aptitudes ainsi que vos bâtiments spéciaux.<br>';
}

// END_USER FUNCTION: créé un nouvel objet, sur un certain objet-canevas. Retourne l'id du nouvel objet, ou false si échec
function creer_objet ($base_id)
{
	if (is_numeric($base_id))
	{
		$sql = "INSERT INTO `objets_items` (`id`, `base`) VALUES ('', '".round($base_id)."')";
		if (mysql_query($sql)) {
			return mysql_insert_id();
		}
	}
	return false;
}

// END_USER FUNCTION: détruit un objet.
function detruire_objet ($item)
{
	$sql = "DELETE FROM `objets_items` WHERE `id` = '".$item."' LIMIT 1";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	return mysql_affected_rows();
}

// END_USER FUNCTION: retourne l'ensemble des caractéristiques de l'objet
function retourne_carac_objet ($item)
{
	$req = mysql_query("SELECT `base`, `bonus`, `fin_amelioration` FROM `objets_items` WHERE id = '".$item."'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		$req1 = mysql_query("SELECT * FROM `objets_stats` WHERE id = '".$data['base']."'") or die('Erreur SQL !<br>'.mysql_error());
		if ($data1 = mysql_fetch_assoc($req1))
		{
			$data1['item'] = $item;
			$data1['base'] = $data['base'];
			if ($data['bonus'] != 0) {
				$data1['bonus'] = $data['bonus'];
				$data1['fin_amelioration'] = $data['fin_amelioration'];
				if ($data['bonus'] > 0) {
					$bonus_base = $data['bonus'] * 100 + $data1['niv'];
					if ($bonus_base > 0) {
						$data1['nom'] .= ' +';
						if ($bonus_base > 55) {
							$data1['nom'] .= '+';
							if ($bonus_base > 65) {
								$data1['nom'] .= '+';
							}
						}
					}
				}
				$sql = 'SELECT `bonus` FROM bonus_libellé ORDER BY `id` ASC';
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				while ($data2 = mysql_fetch_assoc($req)) {
					$nom_bonus = $data2['bonus'];
					// Si le bonus est un entier on le garde entier
					$data1[$nom_bonus] = fmod($data1[$nom_bonus], 1) == 0 ? round($data1[$nom_bonus] * (1 + $data['bonus'])) : round($data1[$nom_bonus] * (1 + $data['bonus']), 2);
				}
			}
			return $data1;
		}
	}
	return false;
}
// END_USER FUNCTION: retourne une  partie des caractéristiques de l'objet, pour l'affichage de l'image seulement
function retourne_carac_display_objet ($item)
{
	$req = mysql_query("SELECT `base`, `bonus`, `fin_amelioration` FROM `objets_items` WHERE id = '".$item."'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		$req1 = mysql_query("SELECT nom, image, niv, type, maudit FROM `objets_stats` WHERE id = '".$data['base']."'") or die('Erreur SQL !<br>'.mysql_error());
		if ($data1 = mysql_fetch_assoc($req1))
		{
			$data1['item'] = $item;
			$data1['base'] = $data['base'];
			$data1['bonus'] = $data['bonus'];
			$data1['fin_amelioration'] = $data['fin_amelioration'];
			if ($data['bonus'] > 0) {
				$bonus_base = $data['bonus'] * 100 + $data1['niv'];
				if ($bonus_base > 0) {
					$data1['nom'] .= ' +';
					if ($bonus_base > 55) {
						$data1['nom'] .= '+';
						if ($bonus_base > 65) {
							$data1['nom'] .= '+';
						}
					}
				}
			}
			return $data1;
		}
	}
	return false;
}

?>
