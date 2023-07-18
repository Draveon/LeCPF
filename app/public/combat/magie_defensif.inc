<?php

// fonction qui désincante et désactive un sort pris dans une liste
function contresort ($liste, $x, &$desincante)
{
	global $jMagies, $valeur_fm;

	if (sizeof($liste) > 0) {
		shuffle($liste);
		$choix = array_pop($liste);
		$desincante[] = $choix;	// pour le message
		// on désincante
		$jMagies[(1-$x)][$choix['id']] = 0;
		// Si c'était le sort augmenté par Focus Mental, on déplace le FM sur un autre sort au hasard si possible
		if ($choix['id'] == $valeur_fm[$x]) {
			// Retirer le sort de la liste (est-ce que array_pop fait ça?)
			if (sizeof($liste) > 0) {
				shuffle($liste);
				$new_fm = $liste[0];
				$valeur_fm[$x] = $new_fm['id'];
			}
		}
	}
}

// Désormais tout combat contre une armée d'au moins 50k pv et représentant 50% de la sienne est considéré comme affaiblissant (utilisé dans fin_combat)
$is_combat_affaiblissant = 0;
if ($pvstotal_att > 50000 && $pvstotal_rapport_def > 50) {
	$is_combat_affaiblissant = 1;
}

// détermination des stratégies de sorts
// attaquant
$pvstotal_estim = ($pvstotal_def/1.5 * (1 + 0.05 * $niveau_def))/($pvstotal_att/1.5 * (1 + 0.05 * $niveau_att));
$prob_lancmnt_att = ($pvstotal_estim >= $incantemin_att) ? 1 : 0;
echo 'Puissance de l\'armée adverse : '.round($pvstotal_estim*100).'%<br>';
$message1 .= 'Estimation de la puissance de l\'armée adverse: '.round($pvstotal_estim*100)." %<br />";
// défenseur
$pvstotal_estim = ($pvstotal_att/1.5 * (1 + 0.05 * $niveau_att))/($pvstotal_def/1.5 * (1 + 0.05 * $niveau_def));
$prob_lancmnt_def = ($pvstotal_estim >= $incantemin_def) ? 1 : 0;
$message .= 'Puissance de l\'armée adverse: '.round($pvstotal_estim*100)." %<br />";

// initialisation de la liste des bonus potentiels à incrémenter dans les tableaux de bonus raz07
$sorts_modif_bonus = array('Eau', 'Terre', 'Air', 'Électricité', 'res_feu', 'res_eau' ,'res_terre','res_air' ,'res_elec' ,'res_elem' ,'xp' ,'terres' ,'or' ,'mana_consommation' ,'degat_phys' ,'degat_mag' ,'degat_range' ,'degat_cac' ,'degat_vol' ,'degat_sol' ,'res_phys' ,'res_mag' ,'res_range' ,'res_cac' ,'res_vol' ,'res_sol' ,'degat_vs_phys' ,'degat_vs_mag' ,'degat_vs_range' ,'degat_vs_cac' ,'degat_vs_vol' ,'degat_vs_sol' ,'res_vs_phys' ,'res_vs_mag' ,'res_vs_range' ,'res_vs_cac' ,'res_vs_vol' ,'res_vs_sol', 'degat', 'res', 'degat_elem', 'effets_elem_def', 'res_effets_elem_def', 'cailloux_consommation', 'feu_def', 'eau_def', 'terre_def', 'air_def', 'elec_def', 'res_feu_def', 'res_eau_def', 'res_terre_def', 'res_air_def', 'res_elec_def');


if ( ($total_att > 0) AND ($total_def > 0) )
{
	// récupération des ressources disponibles
	$ressDispo = array();
	$ressDebut = array();
	$jMagies = array();
	$pts_fm = array();
	$valeur_fm = array();
	for($x = 0; $x <= 1; $x++)
	{
		$hero = ($x == 0) ? $nom : $cible;
		// on récupère les ressources disponibles du joueur $hero
		$req6 = mysql_query('SELECT mana, argent, soufre, mercure, cristal, gemme FROM joueurs_stats WHERE nom = "'.$hero.'"') or die('Erreur SQL !<br>'.mysql_error());
		$data6 = mysql_fetch_row($req6);
		$ressDispo[$x] = array('mana' => $data6[0], 'or' => $data6[1], 'soufre' => $data6[2], 'mercure' => $data6[3], 'cristal' => $data6[4], 'gemme' => $data6[5]);
		$ressDebut[$x] = $ressDispo[$x];
		// on récupère la table des sorts incantés
		$req = mysql_query('SELECT * FROM joueurs_magies WHERE nom = "'.$hero.'"') or die('Erreur SQL !<br>'.mysql_error());
		$jMagies[$x] = mysql_fetch_assoc($req);
		// Focus mental
		$req = mysql_query("SELECT `11` FROM joueurs_aptitudes WHERE nom = '".$hero."'") or die('Erreur SQL !<br>'.mysql_error());
		$pts_fm[$x] = mysql_fetch_assoc($req);
		$pts_fm[$x] = $pts_fm[$x]['11'];
		if ($pts_fm[$x] > 0) {
			// On récupère le sort augmenté pour Focus Mental
			$req = mysql_query("SELECT `focusmental` FROM joueurs_aptitudes_base WHERE nom = '".$hero."'") or die('Erreur SQL !<br>'.mysql_error());
			$valeur_fm[$x] = mysql_fetch_assoc($req);
			$valeur_fm[$x] = $valeur_fm[$x]['focusmental'];
		}
	}

	// boucle sur la priorité des sorts
	for ($prioritaire=3; $prioritaire>=0; $prioritaire--)
	{
		// boucle sur les deux joueurs, d'abord l'attaquant, puis la cible
		for($x = 0; $x <= 1; $x++)
		{
			// tableau des bonus
			if ($x == 0)
			{
				$hero = $nom;
				$raz07_a = &$bonus_raz07_att;
				$raz07_c = &$bonus_raz07_def;
				$conso_mana_province = $conso_mana_prov_att;
				$prob_lancmnt = $prob_lancmnt_att;
				$prob_lancmnt_adversaire = $prob_lancmnt_def;
				$coef_perturb = $coef_perturb_def;
			}
			else
			{
				$hero = $cible;
				$raz07_a = &$bonus_raz07_def;
				$raz07_c = &$bonus_raz07_att;
				$conso_mana_province = $conso_mana_prov_def;
				$prob_lancmnt = $prob_lancmnt_def;
				$prob_lancmnt_adversaire = $prob_lancmnt_att;
				$coef_perturb = $coef_perturb_att;
			}

			// liste des sorts défensifs
			$req_sorts = mysql_query("SELECT id, nom FROM magies_liste WHERE type = 'Défensif' AND prioritaire = '".$prioritaire."' ORDER BY niveau ASC") or die('Erreur SQL !<br>'.mysql_error());
			// boucle sur tous les sorts
			while ($id_sort = mysql_fetch_row($req_sorts))
			{
				if ($jMagies[$x][($id_sort[0])] == 1)
				{
					if (mt_rand(0,99)+0.5 < $prob_lancmnt*100)
					{
						// si le sort est incanté
						// on récupère les caractéristiques du sort
						$sql2 = "SELECT * FROM magies_liste WHERE id = '".$id_sort[0]."'";
						$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
						$data2 = mysql_fetch_assoc($req2);

						// Focus mental
						$coef_fm = 1;
						if ($valeur_fm[$x] == $id_sort[0]) {
							$coef_fm += $pts_fm[$x] * (3 + 0.25 * (5 - $data2['niveau']))/200;
						}

						$nom_sort	= $data2['nom'];
						$victime	= $data2['victime'];
						$att_magie	= $data2['att'];
						$def_magie	= $data2['def'];
						$ini_magie	= $data2['ini'];
						$end_magie	= $data2['end'];
						$pui_magie	= $data2['pui'];
						$cout_mana	= $data2['coutmana'] > 0 ? $data2['coutmana'] * $raz07_a['mana_consommation'] * $conso_mana_province : $data2['coutmana'];
						$cout_or	= $data2['coutor'];
						$cout_soufre	= $data2['soufre']	* $raz07_a['cailloux_consommation'];
						$cout_mercure	= $data2['mercure']	* $raz07_a['cailloux_consommation'];
						$cout_cristal	= $data2['cristal']	* $raz07_a['cailloux_consommation'];
						$cout_gemme	= $data2['gemme']	* $raz07_a['cailloux_consommation'];

						if ($coef_fm > 1) {
							if ($idsort == 104) {
								// Faste Opulence: on applique l'effet sur le coût en mana
								$cout_mana *= $coef_fm;
							} else if ($idsort == 103) {
								// Concentration de l'Ascète: on applique l'effet sur la réduction des ressources
								$cout_soufre *= $coef_fm;
								$cout_mercure *= $coef_fm;
								$cout_cristal *= $coef_fm;
								$cout_gemme *= $coef_fm;
							} else {
								$cout_mana = round($cout_mana * (1 + $pts_fm[$x] / 100));
							}
						}

						$image		= $data2['image'];
						$texte		= $data2['texte'];
						$element	= $data2['élément'];

						// sort spécial de l'Enchanteur
						if (((($special_enchant)&&($x == 0)) || (($special_enchant2)&&($x == 1))) && $cout_mana > 0)
							$cout_mana = max(0, $cout_mana-400);

						// CONCENTRATION
						if ( ($cout_sorts_att > 0) AND ($x == 0) AND $cout_mana > 0)
						{
							$cout_mana = round($cout_mana * (1 - $cout_sorts_att));
							$cout_or = round($cout_or * (1 - $cout_sorts_att));
						}
						if ( ($cout_sorts_def > 0) AND ($x == 1) AND $cout_mana > 0)
						{
							$cout_mana = round($cout_mana * (1 - $cout_sorts_def));
							$cout_or = round($cout_or * (1 - $cout_sorts_def));
						}
						// FIN DE CONCENTRATION

						// les ressources sont-elles insuffisantes ?
						$manque = '';
						if ($ressDispo[$x]['or']	< $cout_or)		$manque = 'd\'or';
						if ($ressDispo[$x]['mana']	< $cout_mana)		$manque = 'de mana';
						if ($ressDispo[$x]['soufre']	< $cout_soufre)		$manque = 'de soufre';
						if ($ressDispo[$x]['mercure']	< $cout_mercure)	$manque = 'de mercure';
						if ($ressDispo[$x]['cristal']	< $cout_cristal)	$manque = 'de cristaux';
						if ($ressDispo[$x]['gemme']	< $cout_gemme)		$manque = 'de gemmes';

						if ($manque != '')
						{
							// échec du lancement
							if ($hero == $nom)
							{
								echo '<b>Votre sort '.$nom_sort.' n\'a pas pu être lancé, par manque '.$manque.' !</b><br>';
								$message1 .= '<b>Votre sort '.$nom_sort.' n\'a pas pu être lancé, par manque '.$manque.' !</b><br />';
							}
							else
								$message .= '<b>Votre sort '.$nom_sort.' n\'a pas pu être lancé, par manque '.$manque.' ! </b><br />';
						}
						// Si le sort spécial du voleur a été incanté, on affiche un texte spécial pour le lancement du sort spécial de la victime
						else if ($victime == 'Spécial' && ($special_voleur2 || $special_voleur))
						{
							if ($hero == $nom)
							{
								echo '<b>Alors que vous ouvrez votre précieuse boîte contenant vos éléments pour '.$nom_sort.', vous vous apercevez avec malheur que son contenu a été dérobé !</b><br>';
								$message1 .= '<b>Alors que vous ouvrez votre précieuse boîte contenant vos éléments pour '.$nom_sort.', vous vous apercevez avec malheur que son contenu a été dérobé !</b><br>';
							}
							else
								$message .= '<b>Alors que vous ouvrez votre précieuse boîte contenant vos éléments pour '.$nom_sort.', vous vous apercevez avec malheur que son contenu a été dérobé !</b><br>';
						} else
						{
							// les ressources sont suffisantes, on lance le sort
							$nsorts[$x]++;

							$lancementreussi = true;

							// Modification des statistiques des joueurs, pour les sorts défensifs classiques (non spéciaux)
							if (	($victime == 'tous')                             	OR
								( ($hero == $nom)   AND ($victime == 'unique_allié') )	OR
								( ($hero == $cible) AND ($victime == 'unique_adverse') )  )
							{
								// lancé par $hero sur l'attaquant
								$raz07_mod = ($hero==$nom) ? $raz07_a['effets_elem_def'] : $raz07_a['effets_elem_def'] / $raz07_c['res_effets_elem_def'];
								$raz07_mod *= $coef_fm;
								if ($hero==$nom) {
									$raz07_mod *= $coef_perturb;
								} else {
									$raz07_mod *= ((1 + $coef_perturb) / 2);
								}
								switch ($element)
								{
									case 'Feu'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['feu_def'] : $raz07_a['feu_def'] / $raz07_c['res_feu_def'];	break;
									case 'Eau'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['eau_def'] : $raz07_a['eau_def'] / $raz07_c['res_eau_def'];	break;
									case 'Terre'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['terre_def'] : $raz07_a['terre_def'] / $raz07_c['res_terre_def'];	break;
									case 'Air'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['air_def'] : $raz07_a['air_def'] / $raz07_c['res_air_def'];	break;
									case 'Électricité':$raz07_mod*= ($hero==$nom) ? $raz07_a['elec_def'] : $raz07_a['elec_def'] / $raz07_c['res_elec_def'];	break;
								}
								$att_att += $att_magie * $raz07_mod;
								$def_att += $def_magie * $raz07_mod;
								$ini_att += $ini_magie * $raz07_mod;
								$end_att += $end_magie * $raz07_mod;
								$pui_att += $pui_magie * $raz07_mod;
								foreach ($sorts_modif_bonus as $key => $value)	// boucle sur le tableau sorts_modifs_bonus où sont répertoriés les bonus possibles donnés par ces sorts
									if ($data2[$value] != 0)
									{
										$bonus_raz07_att[$value] += $data2[$value] * $raz07_mod;
									}
							}
							if (	($victime == 'tous')                                  OR
								( ($hero == $nom)   AND ($victime == 'unique_adverse') ) OR
								( ($hero == $cible) AND ($victime == 'unique_allié') )    )
							{
								// lancé par $hero sur la cible
								$raz07_mod = ($hero==$nom) ? $raz07_a['effets_elem_def'] / $raz07_c['res_effets_elem_def'] : $raz07_a['effets_elem_def'];
								$raz07_mod *= $coef_fm;
								if ($hero == $cible) {
									$raz07_mod *= $coef_perturb;
								} else {
									$raz07_mod *= ((1 + $coef_perturb) / 2);
								}
								switch ($element)
								{
									case 'Feu'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['feu_def'] / $raz07_c['res_feu_def'] : $raz07_a['feu_def'];	break;
									case 'Eau'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['eau_def'] / $raz07_c['res_eau_def'] : $raz07_a['eau_def'];	break;
									case 'Terre'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['terre_def']/$raz07_c['res_terre_def']:$raz07_a['terre_def'];	break;
									case 'Air'	: $raz07_mod *= ($hero==$nom) ? $raz07_a['air_def'] / $raz07_c['res_air_def'] : $raz07_a['air_def'];	break;
									case 'Électricité':$raz07_mod*= ($hero==$nom) ? $raz07_a['elec_def']/ $raz07_c['res_elec_def']: $raz07_a['elec_def'];	break;
								}
								$att_def += $att_magie * $raz07_mod;
								$def_def += $def_magie * $raz07_mod;
								$ini_def += $ini_magie * $raz07_mod;
								$end_def += $end_magie * $raz07_mod;
								$pui_def += $pui_magie * $raz07_mod;
								foreach ($sorts_modif_bonus as $key => $value)
									if ($data2[$value] != 0)
									{
										$bonus_raz07_def[$value] += $data2[$value] * $raz07_mod;
									}
							}

							// Sorts spéciaux :
							switch($nom_sort)
							{
								// Druide
								case 'Croissance accélérée'	: if ($hero == $nom) $croissance_acceleree = true;	else $croissance_acceleree2 = true;	break;
								// Démonologiste
								case 'Portail infernal'		: if ($hero == $nom) $demon = true;		else $demon2 = true;			break;
								// Illusioniste
								case 'Réalité parallèle'	: if ($hero == $nom) $realite = true;		else $realite2 = true;			break;
								// Prêtre
								case 'Protection divine'	: if ($hero == $nom) $protection_divine = true;	else $protection_divine2 = true;	break;
								// Inquisiteur
								case 'Zèle divin'			: if ($hero == $nom) $special_inqui = true;	else $special_inqui2 = true;	break;
								// Nécromancien
								case 'Animation des Morts'	: if ($hero == $nom) $animation = true;		else $animation2 = true;		break;
								// Psioniste
								case 'Contrôle mental'		: if ($hero == $nom) $controle_mental = true;	else $controle_mental2 = true;		break;
								// Shaman
								case 'Brouillard de guerre' :
												$lancementreussi = true;
												if ($hero == $nom)
													$brouillard = true;
												else
													$brouillard2 = true;
												break;

								// Archer: lvl3, 10% de dégats en plus au début du tour suivant
								case 'Flèches enflammées'	: if ($hero == $nom) $special_archer = true;	else $special_archer2 = true;	break;
								// Assassin: : vos créatures ont une chance sur 10 d'esquiver une attaque.
								case 'Camouflage'		: if ($hero == $nom) $special_assassin = true;	else $special_assassin2 = true;	break;
								// Barbare: au deuxième tour du combat, vos troupes infligent 15% de dégats supplémentaires, mais subissent 15% de dégâts en plus.
								case 'Rage Berserk'		: if ($hero == $nom) $special_barbare = true;	else $special_barbare2 = true;	break;
								// Barde: mélodie empechant les bonus liés au type de créature etant donné que le barde est la classe la plus neutre comme l'homme pour les races
								case 'Mélodie entraînante'	: if ($hero == $nom) $special_barde = true;	else $special_barde2 = true;	break;
								// Chevalier: Points d'aptitude de Charge Meurtrière * 1.5 et +40 à l'initiative
								case 'Charge irrésistible' :
												if ($hero == $nom)	{ $special_chevalier = true; }
												else 			{ $special_chevalier2= true; }
												break;
								// Guerrier: résistance dégâts des archers de 25% et augmentation de la défense de 60/endurance de 30.
								case 'Levez les boucliers!'	:
												if ($hero == $nom) {
													$special_guerrier = true;
													$raz07_a['res_vs_range'] += 0.20;
													$def_att += 60; $end_att += 30;
												}
												else {
													$special_guerrier2 = true;
													$raz07_a['res_vs_range'] += 0.20;
													$def_def += 60; $end_def += 30;
												}
												break;
								// Marchand: en échange d'une forte somme d'or, (dont un % pourrait meme revenir a l'ennemi) les armée ennemies sont corrompus et vous délaisse sur le champ de bataille.
								case 'Corruption'	:
												if ($hero == $nom) $special_marchand = true;
												else		$special_marchand2 = true;
												break;
								// Paladin: soigne jusqu'à 30% des pertes du tour précédent, chaque tour.
								case 'Imposition des mains'	: if ($hero == $nom) $special_paladin = true;	else $special_paladin2 = true;	break;
								// Forgeron
								case 'Lames Trempées'	: if ($hero == $nom) $special_forgeron = true;	else $special_forgeron2 = true;	break
									;
								// Rôdeur:
								case 'Esprit des bois'		: if ($hero == $nom) $special_rodeur = true;	else $special_rodeur2 = true;	break;
								// Voleur: annulation de tous les autres sorts spéciaux
								case 'Vol à la tire'	: 	if 	($hero == $nom) $special_voleur = true; 	else $special_voleur2 = true;	break;
								// Enchanteur: booste les sorts défensifs et offensifs
								case 'Mélopée Ancestrale' :	if ($hero == $nom)
												{
													$raz07_a['effets_elem_def'] += 20/100;
													$raz07_a['degat_elem'] += 20/100;
													$special_enchant = true;
												}
												else
												{
													$raz07_a['effets_elem_def'] += 20/100;
													$raz07_a['degat_elem'] += 20/100;
													$special_enchant2 = true;
												}
												break;

								// Chevalier noir
								case 'Intuition Nécrotique' : 	if ($hero == $nom) $special_necrolvl3_ = true;	else $special_necrolvl3_2 = true;	break;

								// Esclavagiste
								case 'Esclavagisme'	:			if ($hero == $nom) $special_esclavagiste = true; else $special_esclavagiste2 = true;	break;

								// Ermite
								case 'Étude de la Morphologie' :	if ($hero == $nom) $special_ermite = true;	else $special_ermite2 = true;	break;
								// Samouraï
								case 'Lame Rasoir' :	if ($hero == $nom) $special_samourai = true;	else $special_samourai2 = true;	break;

								// Clerc
								case 'Confusion' :
								$randConfusion = mt_rand(2, 4);
									if ($hero == $nom)
									{
										$pts_fm[1] /= $randConfusion;
										foreach ($apt_def AS &$value) {
											$value /= $randConfusion;
										}
									} else {
										$pts_fm[0] /= $randConfusion;
										foreach ($apt_att AS &$value) {
											$value /= $randConfusion;
										}
									}
									break;

								// Transmutateur
								case 'Polymorphisme'		: if ($hero == $nom) $special_transmutateur = true;	else $special_transmutateur2 = true;		break;
							}

							// Contresort (Magicien niv.5)
							if ($nom_sort == 'Contresort')
							{
								$cdesincante = array();
								if ($prob_lancmnt_adversaire != 0) {
									// Liste des sorts incantés de la victime du Contresort
									$cliste = array(); // liste des sorts offensifs incantés par la victime [i] [id]/[nom]/[type]

									foreach ($jMagies[(1-$x)] as $sort_id => $is_incant)	// boucle sur le tableau qui répertorie les sorts incantés par l'ennemi
									{
										if (($is_incant == 1)&&($sort_id != 'id')&&(is_numeric($is_incant)))   // si le sort est incanté...
										{
											$creq = mysql_query('SELECT id, type, nom, niveau, victime FROM magies_liste WHERE id = \''.$sort_id.'\' ORDER BY niveau ASC') or die('Erreur SQL !<br>'.mysql_error());
											$cdata = mysql_fetch_assoc($creq);
											if (($cdata['victime'] != 'Spécial')&&($cdata['prioritaire'] < 1)) {
												$nivodusort = $cdata['niveau'];
												$cliste[$nivodusort][] = $cdata;
											}
										}
									}
									for ($i=1;$i<6;$i++) {
										contresort ($cliste[$i], $x, $cdesincante);
									}
								}

								// rapport: on utilise le même code que pour les autres sorts.
								$lancementreussi = empty($cdesincante) ? false : true;

								// on liste les sorts désactivés
								$ctrstxt = '';
								foreach ($cdesincante AS $csortdesincant)
									$ctrstxt .= ', '.$csortdesincant['nom'];
								$texte = 'Les sorts '.substr($ctrstxt,2)." se désactivent.<br>\n";
							}

							// Sabotage arcane
							if ($nom_sort == 'Sabotage arcanique')
							{
								$cdesincante = array();
								if ($prob_lancmnt_adversaire != 0) {
									// Liste des sorts incantés de la victime du Sabotage Arcanique (simili-Contresort)
									$cliste = array(); // liste des sorts offensifs incantés par la victime [i] [id]/[nom]/[type]

									foreach ($jMagies[(1-$x)] as $sort_id => $is_incant)	// boucle sur le tableau qui répertorie les sorts incantés par l'ennemi
									{
										if (($is_incant == 1)&&($sort_id != 'id')&&(is_numeric($is_incant)))   // si le sort est incanté...
										{
											$creq = mysql_query('SELECT id, type, nom, niveau, victime, prioritaire FROM magies_liste WHERE id = \''.$sort_id.'\'') or die('Erreur SQL !<br>'.mysql_error());
											$cdata = mysql_fetch_assoc($creq);
											if (($cdata['victime'] != 'Spécial')&&($cdata['prioritaire'] < 1))
											{
												$cliste[] = $cdata;
											}
										}
									}
									// 1 sort désincanté
									contresort ($cliste, $x, $cdesincante);
								}

								// rapport: on utilise le même code que pour les autres sorts.
								$lancementreussi = empty($cdesincante) ? false : true;

								// on liste les sorts désactivés
								$texte = (isset($cdesincante[0])) ? 'Le sort '.$cdesincante[0]['nom']." se désactive.<br>\n" : '';
							}


							// Gestion rapport et mail (la gestion pour le contresort est déjà faite dans son codage)
							if ($nom_sort  != 'Étude de la Morphologie' && $nom_sort  != 'Esclavagisme' && $nom_sort != 'Contrôle mental' && $nom_sort != 'Réalité parallèle' && $nom_sort != 'Portail infernal' && $nom_sort != 'Esprit des bois' && $nom_sort != 'Croissance accélérée' && $nom_sort != 'Protection divine' && $nom_sort != 'Brouillard de guerre' && $nom_sort != 'Polymorphisme')
							{
								echo '<a href="/info_sorts.php?sort='.$id_sort[0].'" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="'.$image.'" width="20px" height="20px" align="center" border=1></a>';
								$texte_fm = '';
								if ($coef_fm > 1) {
									$texte_fm = 'AUGMENTÉ! ';
								}
								if ($hero == $nom)
								{
									if ($lancementreussi)
									{
										echo '<b><span style="color:#0D4573;"> '.$texte_fm.'Votre sort '.$nom_sort.' a été lancé avec succès :</span></b><br> '.$texte.'<br>';
										$message1.= '<b><span style="color:#0D4573;"> '.$texte_fm.'Votre sort '.$nom_sort.' a été lancé avec succès :</span></b><br /> '.$texte.'<br />';
										$message .= '<b><span style="color:#B31141;"> '.$texte_fm.'Le sort '.$nom_sort.' a été lancé avec succès :</span></b><br /> '.$texte.'<br />';
									}
									else
									{
										echo '<b> Votre sort '.$nom_sort.' ne semble pas produire d\'effet</b>.<br />';
										$message1.= '<b> Votre sort '.$nom_sort.' ne semble pas produire d\'effet</b>.<br />';
										$message.= '<b> Le sort '.$nom_sort.' ne semble pas produire d\'effet</b>.<br />';
									}
								}
								else
								{
									if ($lancementreussi)
									{
										echo '<b><span style="color:#B31141;"> '.$texte_fm.'Le sort '.$nom_sort.' a été lancé avec succès :</span></b><br> '.$texte.'<br>';
										$message1.='<b><span style="color:#B31141;"> '.$texte_fm.'Le sort '.$nom_sort.' a été lancé avec succès :</span></b><br /> '.$texte.'<br />';
										$message.= '<b><span style="color:#0D4573;"> '.$texte_fm.'Votre sort '.$nom_sort.' a été lancé avec succès :</span></b><br /> '.$texte.'<br />';
									}
									else
									{
										echo '<b>Le sort '.$nom_sort.' ne semble pas produire d\'effet</b><br />';
										$message1.='<b>Le sort '.$nom_sort.' ne semble pas produire d\'effet</b><br />';
										$message.= '<b>Votre sort '.$nom_sort.' ne semble pas produire d\'effet</b><br />';
									}
								}
							}

							// Mise à jour des ressources disponibles pour le joueur $hero
							$ressDispo[$x]['or']		-= $cout_or;
							$ressDispo[$x]['mana']		-= $cout_mana;
							$ressDispo[$x]['soufre']	-= $cout_soufre;
							$ressDispo[$x]['mercure']	-= $cout_mercure;
							$ressDispo[$x]['cristal']	-= $cout_cristal;
							$ressDispo[$x]['gemme']		-= $cout_gemme;

						} 	// fin if "les ressources sont-elles insuffisantes ?"
					}	// fin du if choix stratégique sorts
					else
					{
						// échec du lancement à cause des stratégies
						if ($hero == $nom)
						{
							echo '<b>Votre sort '.$id_sort[1].' n\'a pas pu être lancé, à cause de vos choix stratégiques !</b><br />';
							$message1 .= '<b>Votre sort '.$id_sort[1].' n\'a pas pu être lancé, à cause de vos choix stratégiques !</b><br />';
						}
						else
							$message .= '<b>Votre sort '.$id_sort[1].' n\'a pas pu être lancé, à cause de vos choix stratégiques !</b><br />';
					}
				}      // fin if ($data[$i] == 1)   // si le sort est incanté
			}        // fin for qui gère les sorts
		}          // fin gros for (qui gère les joueurs)
	}	// fin du for pour les sorts prioritaires ou non
}


?>
