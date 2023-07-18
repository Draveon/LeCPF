<?php

// boucle sur l'ordre de priorité des sorts
for ($prioritaire=1; $prioritaire>=0; $prioritaire--)
{

	// boucle sur les joueurs, d'abord la cible, puis l'attaquant
	for ($p = 0; $p <= 1; $p++)
	{
		$x = 1 - $p;	// $x correspond a la dénomination dans magie_defensif: d'abord l'attaquant, ensuite la cible (ordre inversé)

		$continue = true;

		if ($p == 0)
		{
			$hero = $cible;
			$min = 0;             // indice min des créatures adverses
			$max = $milieu;       // indice max des créatures adverses
			$pui = $pui_def;
			$end = $end_att;
			$niveau = $niveau_att; // niveau du lanceur de sort
			$min_2 = $milieu;     // indice min des créatures alliées
			$max_2 = $z;          // indice max des créatures alliées
			$raz07_a = &$bonus_raz07_def;	// bonus du joueur qui incante
			$raz07_c = &$bonus_raz07_att;	// bonus du joueur qui se fait taper
			$effets_creas_c = $effets_creas_att;
			$conso_mana_province = $conso_mana_prov_def;
			$prob_lancmnt = $prob_lancmnt_def;
			// Si on a une armée moins forte que l'adversaire, malus aux dégâts des sorts off
			$force_armee_mod = min(1, 1 + $coef_force_armee_att - $coef_force_armee_def);
			$apt_victime = $apt_att;
		}
		else    //    if ($p == 1)
		{
			$hero = $nom;
			$min = $milieu;     // indice min des créatures adverses
			$max = $z;          // indice max des créatures adverses
			$pui = $pui_att;
			$end = $end_def;
			$niveau = $niveau_att; // niveau du lanceur de sort
			$min_2 = 0;         // indice min des créatures alliées
			$max_2 = $milieu;   // indice max des créatures alliées
			$raz07_a = &$bonus_raz07_att;	// bonus du joueur qui incante
			$raz07_c = &$bonus_raz07_def;	// bonus du joueur qui se fait taper
			$effets_creas_c = $effets_creas_def;
			$conso_mana_province = $conso_mana_prov_att;
			$prob_lancmnt = $prob_lancmnt_att;
			// Si on a une armée moins forte que l'adversaire, malus aux dégâts des sorts off
			$force_armee_mod = min(1, 1 + $coef_force_armee_def - $coef_force_armee_att);
			$apt_victime = $apt_def;
		}

		// liste des sorts offensifs
		$sql_sorts = "SELECT id, nom FROM magies_liste WHERE type = 'Offensif' AND `prioritaire` = '".$prioritaire."' ORDER BY nb_cibles DESC, niveau DESC";
		$req_sorts = mysql_query($sql_sorts) or die('Erreur SQL !<br>'.mysql_error());
		while (($id_sort = mysql_fetch_row($req_sorts)) && ($continue))	// boucle sur tous les sorts
		{
			if ($jMagies[$x][($id_sort[0])] == 1)		// si le sort est incanté
			{
				if (mt_rand(0,99)+0.5 < $prob_lancmnt*100)
				{
					// on récupère les caractéristiques du sort
					$sql2 = 'SELECT * FROM magies_liste WHERE id = "'.$id_sort[0].'"';		// deux accès à la table magies_listes pour ne pas charger inutilement la moitié de la table à chaque fois
					$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
					$data2 = mysql_fetch_array($req2);

					// Focus mental
					$coef_fm = 1;
					if ($valeur_fm[$x] == $id_sort[0]) {
						$coef_fm += $pts_fm[$x] * (3 + 0.25 * (5 - $data2['niveau']))/200;
					}

					$nom_sort	= $data2['nom'];
					$victime	= $data2['victime'];
					$nb_cibles 	= $data2['nb_cibles'];
					$min2		= $data2['min'];
					$max2		= $data2['max'];
					$cout_mana	= $data2['coutmana'] * $raz07_a['mana_consommation'] * $conso_mana_province;
					if ($coef_fm > 1) {
						$cout_mana = round($cout_mana * (1 + $pts_fm[$x] / 100));
					}
					$cout_or	= $data2['coutor'];
					$cout_soufre	= $data2['soufre']	* $raz07_a['cailloux_consommation'];
					$cout_mercure	= $data2['mercure']	* $raz07_a['cailloux_consommation'];
					$cout_cristal	= $data2['cristal']	* $raz07_a['cailloux_consommation'];
					$cout_gemme	= $data2['gemme']	* $raz07_a['cailloux_consommation'];
					$element	= $data2['élément'];
					$image		= $data2['image'];

					// sort spécial de l'Enchanteur
					if ((($special_enchant)&&($p == 0)) || (($special_enchant2)&&($p == 1)))
						$cout_mana = max(0, $cout_mana-400);

					// CONCENTRATION
					if ( ($cout_sorts_att > 0) AND ($p == 1) )
					{
						$cout_mana = round($cout_mana * (1 - $cout_sorts_att));
						$cout_or = round($cout_or * (1 - $cout_sorts_att));
					}
					if ( ($cout_sorts_def > 0) AND ($p == 0) )
					{
						$cout_mana = round($cout_mana * (1 - $cout_sorts_def));
						$cout_or = round($cout_or * (1 - $cout_sorts_def));
					}
					// FIN DE CONCENTRATION

					// total points de vie des créatures alliées
					$pvs = 0;
					for ($s = $min_2; $s < $max_2; $s++)
						$pvs += $a_pvstotal["$s"];
					// total points de vie des créatures adverses
					$pvs_2 = 0;
					for ($s = $min; $s < $max; $s++)
						$pvs_2 += $a_pvstotal["$s"];

					// y a-t-il encore des créatures chez chaque joueur ?
					if ( ($pvs <= 0) OR ($pvs_2 <= 0) )  // si un des deux joueurs au moins n'a plus de créatures
					{
						echo 	'<b>Arrêt du lancement des sorts, par défaut de créatures !</b><br>';
						$message1.= "Arrêt du lancement des sorts, par défaut de créatures !\n";
						$message .="Arrêt du lancement des sorts, par défaut de créatures ! \n";
						$continue = false;	// sortie de la boucle sur les sorts d'un joueur
						$p = 1000;		// sortie de la boucle sur les joueurs
						$prioritaire = -1;	// sortie de la boucle sur la priorité des sorts
					}
					else
					{
						// y a-t-il assez de ressources dispo?
						$manque = '';
						if ($ressDispo[$x]['or']	< $cout_or)		$manque = 'd\'or';
						if ($ressDispo[$x]['mana']	< $cout_mana)		$manque = 'de mana';
						if ($ressDispo[$x]['soufre']	< $cout_soufre)		$manque = 'de soufre';
						if ($ressDispo[$x]['mercure']	< $cout_mercure)	$manque = 'de mercure';
						if ($ressDispo[$x]['cristal']	< $cout_cristal)	$manque = 'de cristaux';
						if ($ressDispo[$x]['gemme']	< $cout_gemme)		$manque = 'de gemmes';

						if ($manque != '')
						{
							if ($hero == $nom)
							{
								echo '<b>Votre sort '.$nom_sort.' n\'a pas pu être lancé, par manque '.$manque.' !</b><br>';
								$message1.= '<b>Votre sort '.$nom_sort.' n\'a pas pu être lancé, par manque '.$manque.' !</b><br>';
							}
							else
								$message .="Votre sort ".$nom_sort." n'a pas pu être lancé, par manque ".$manque." ! \n";
						}
						else // Sort spécial du voleur et Désintégration
						if ($nom_sort == 'Désintégration' && ($special_voleur2 || $special_voleur))
						{
							if ($hero == $nom)
							{
								echo '<b>Alors que vous ouvrez votre précieuse boîte contenant vos éléments pour '.$nom_sort.', vous vous apercevez avec malheur que son contenu a été dérobé !</b><br>';
								$message1 .= '<b>Alors que vous ouvrez votre précieuse boîte contenant vos éléments pour '.$nom_sort.', vous vous apercevez avec malheur que son contenu a été dérobé !</b><br>';
							}
							else
								$message .= '<b>Alors que vous ouvrez votre précieuse boîte contenant vos éléments pour '.$nom_sort.', vous vous apercevez avec malheur que son contenu a été dérobé !</b><br>';
						}
						else
						{
							// les ressources sont suffisantes, il y a des créatures des 2 côtés, on lance le sort
							$nsorts[$x]++;

							// On détermine la cible selon le mode d'attaque du sort...
							$vict  = array();
							$victt = array();
							$texte_cible = 'votre adversaire ne possède aucune créature ciblable par le sort';
							if ($nom_sort == 'Désintégration') {
								$victime = 'tous';
							}
							$vict = chooseStacksWithPVProbability ($min, $max, $nb_cibles, $victime);

							// y a-t-il vraiment des cibles?
							$c = count($vict);

							// Si il n'y a plus de cibles volantes, un sort ayant pour cible 'vol' peut cibler les troupes au sol
							if (($victime == 'vol') && ($c < $nb_cibles)) {
								$vict_supp = chooseStacksWithPVProbability ($min, $max, $nb_cibles - $c, 'sol');
								if (count($vict_supp) > 0) {
									$vict = array_merge($vict, $vict_supp);
									$c = count($vict);
								}
							}


							if ($c != 0)	// si des cibles sont possibles
							{
								for ($n = 0; $n < $c; $n++)	// dégâts sur les différentes cibles
								{
									$v = $vict[$n];
									$nom2 = $a_id[$v];
									$qte2 = $a_qte[$v];
									$volant = $a_vol[$v];

									$t_type = '';
									$t_type_m = '';

									// On calcule les dégâts
									$degat = mt_rand($min2,$max2)*1.1;
									$debug_so = "DEBUG: $nom_sort dé = $degat ";

									// Réduction de Charge Meurtrière: 33% de résistance à 100
									//if ($apt_victime['12'] > 0) {
										$degat /= (1 + $apt_victime['12'] * 0.0033);
										$debug_so .= "après CM = $degat ";
									//}




									// Les créatures de niveau 6 prennent 2 fois moins de dégâts que celles de niveau 1
									$coef_niv_crea = 0.5 + (0.1 * (6 - $a_niv[$v]));
									$debug_so .= "- coef_niv_crea = $coef_niv_crea, ";

									// Les dégâts du sort sont fonction de la taille de l'armée adverse
									$mg_mod = ($p == 0) ? max(0.05, $pvscourant_att / 100000) : max(0.05, $pvscourant_def / 100000);
									$debug_so .= "coef taille armée = $mg_mod, coef force armée = $force_armee_mod ";


									$coef_perturb = $perturb_sorts_off;

									// On applique les différents coef
									$degat_multiple = ($degat * $coef_niv_crea * $mg_mod * $coef_fm * $force_armee_mod);


 								if ($coef_perturb > 0) {
 									$degat2 = ceil($degat_multiple * $coef_perturb);

 								}


 								else {

									$degat2 = ceil($degat_multiple);
 								}
									$debug_so .= "et coef FM = $coef_fm donne $degat2 ";



									// Résistances et dégâts de l'élément du sort
									$gras_degats = '';
									$fin_gras_degats = '';
									if ($element == 'Feu') {
										$res_element = 'res_feu';
										$degat_element = 'Feu';
										if ($a_niv[$v] <= 3) {
											$degat2 *= 1.35;
											$gras_degats = '<b>';
											$fin_gras_degats = '</b>';
										}
									}
									if ($element == 'Eau') {
										$res_element = 'res_eau';
										$degat_element = 'Eau';
										if ($a_vol[$v] == 0) {
											$degat2 *= 1.35;
											$gras_degats = '<b>';
											$fin_gras_degats = '</b>';
										}
									}
									if ($element == 'Terre') {
										$res_element = 'res_terre';
										$degat_element = 'Terre';
										if ($a_att_mag[$v] == 0) {
											$degat2 *= 1.4;
											$gras_degats = '<b>';
											$fin_gras_degats = '</b>';
										}
									}
									if ($element == 'Air') {
										$res_element = 'res_air';
										$degat_element = 'Air';
										if ($a_vol[$v] == 1) {
											$degat2 *= 1.5;
											$gras_degats = '<b>';
											$fin_gras_degats = '</b>';
										}
									}
									if ($element == 'Électricité') {
										$res_element = 'res_elec';
										$degat_element = 'Électricité';
										if ($a_att_mag[$v] == 1) {
											$degat2 *= 1.4;
											$gras_degats = '<b>';
											$fin_gras_degats = '</b>';
										}
									}
									$debug_so .= "suite au type de sort = $degat2 ";
									// On applique les bonus et résistances (on utilise degats et resistance globaux, de l'élément du sort et aux sorts offensifs)
									$degat2 *= $raz07_a[$degat_element] / $raz07_c[$res_element] * $raz07_a['degat_elem'] / $raz07_c['res_elem'];
									// on arrondi pour terminer les calculs d'épiciers (mieux vaut un gros arrondi à la fin que plein de petits en cours de route
									$degat2 = round($degat2);

									include('connect.php');
									if ($actual_db == 2) {
										if ($_SESSION['connexion'] == 1) {
											$nom = $_SESSION['nom'];
											$req = mysql_query("SELECT `pui` FROM `joueurs_stats` WHERE nom ='$nom'") or die('Erreur SQL  300 !<br>'.mysql_error());
											$data = mysql_fetch_row($req);
											$att	= $data[6];
										}
										$degat2 *= ($att*10.35);
									}

									$debug_so .= "et enfin degats finaux = $degat2 <br>";

									// TODO REMOVE UNE FOIS TROUVE
									$message1.= $debug_so;
									$message .= $debug_so;

									// avant la première créature, on écrit le nom du sort
									if ($n == 0 AND $p == 0)          // pour la cible
									{
										$texte_fm = '';
										if ($coef_fm > 1) {
											$texte_fm = 'AUGMENTÉ! ';
										}
										echo '<a href="/info_sorts.php?sort='.$id_sort[0].'" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="'.$image.'" width="20px" height="20px" align="center" border=1></a>';
										echo '<b><span style="color:#B31141;"> '.$texte_fm.'Le sort '.$nom_sort.' :</span></b><br>';
										$message1.= '<b><span style="color:#B31141;"> '.$texte_fm.'Le sort '.$nom_sort.' :</span></b><br />';
										$message .= '<b><span style="color:#0D4573;"> '.$texte_fm.'Votre sort '.$nom_sort.' :</span></b><br />';
									}
									if ($n == 0 AND $p != 0)         // pour l'attaquant
									{
										$texte_fm = '';
										if ($coef_fm > 1) {
											$texte_fm = 'AUGMENTÉ! ';
										}
										echo '<a href="/info_sorts.php?sort='.$id_sort[0].'" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="'.$image.'" width="20px" height="20px" align="center" border=1></a>';
										echo '<b><span style="color:#0D4573;"> '.$texte_fm.'Votre sort '.$nom_sort.' :</span></b><br>';
										$message1.= '<b><span style="color:#0D4573;"> '.$texte_fm.'Votre sort '.$nom_sort.' :</span></b><br />';
										$message .= '<b><span style="color:#B31141;"> '.$texte_fm.'Le sort '.$nom_sort.' :</span></b><br />';
									}

									// On règle les pvstotal
									$n_pvstotal = $a_pvstotal[$v] - $degat2;
									if ($n_pvstotal < 0)	// tout le stack de créature est détruit
									{
										$pvs_morts += $a_pvstotal[$v];
										$n_pvstotal = 0;
										$a_qte[$v] = 0;
										$a_pvstotal[$v] = 0;
										if ($v < $milieu)	// sur une créature de l'attaquant
										{
											$pvscourant_att -= $a_pvstotal[$v];
											$total_att -= 1;
											echo '<span style="color:#B31141;">'.$t_foc.$t_type. ' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' à vos '.$qte2.' '.$nom2.' et les élimine tous !</span><br>';
											$message1.= '<span style="color:#B31141;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' à vos '.$qte2.' '.$nom2.' et les élimine tous !</span><br />';
											$message .= '<span style="color:#0D4573;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' aux '.$qte2.' '.$nom2.' ennemis et les élimine tous !</span><br />';
										}
										else			// sur une créature de la cible
										{
											$pvscourant_def -= $a_pvstotal[$v];
											$total_def -= 1;
											echo '<span style="color:#0D4573;">'.$t_foc.$t_type.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' aux '.$qte2.' '.$nom2.' ennemis et les élimine tous !</span><br>';
											$message1.= '<span style="color:#0D4573;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' aux '.$qte2.' '.$nom2.' ennemis et les élimine tous !</span><br />';
											$message .= '<span style="color:#B31141;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' à vos '.$qte2.' '.$nom2.' et les élimine tous !</span><br />';
										}
									}
									else	// il reste des créatures dans le stack
									{
										$pvs_morts += $degat2;
										$r = ceil($n_pvstotal/$a_pvs[$v]);
										$m = $a_qte[$v] - $r;
										$a_qte[$v] = $r;
										$a_pvstotal[$v] = $n_pvstotal;

										if ($v < $milieu)     // sur les créatures de l'attaquant
										{
											if ($nom_sort == 'Désintégration')
											{
												if ($hero == $cible) {
													$pct_des = 0.1;
													$dés_max_pvs = min($pvscourant_att, $pvstotal_def) * $pct_des * min(1, 0.25 * ((100 - $strategie_def) / 10));
												} else {
													$pct_des = 0.1;
													$dés_max_pvs = min($pvstotal_att, $pvscourant_def) * $pct_des * min(1, 0.25 * ((100 - $strategie_att) / 10));
												}

												if ($a_pvstotal[$v] > $dés_max_pvs)
												{
													$dés_nb_tues = floor ($dés_max_pvs / $a_pvs[$v]);
													$pvs_morts += $dés_nb_tues * $a_pvs[$v];
													$pvscourant_att -= $dés_nb_tues * $a_pvs[$v];
													$a_qte[$v] -= $dés_nb_tues;
													$a_pvstotal[$v] -= $dés_nb_tues * $a_pvs[$v];
													echo '<span style="color:#B31141;">'.$t_type.'Anéantit '.$dés_nb_tues.' de vos '.$nom2.' !</span><br>';
													$message1.= $t_type_m.'Anéantit '.$dés_nb_tues.' de vos '.$nom2." !\n";
													$message .= $t_type_m.'Anéantit '.$dés_nb_tues.' des '.$qte2.' '.$nom2." ennemis !\n";
												}
												else
												{
													$total_att -= 1;
													$pvs_morts += $a_pvstotal[$v];
													$pvscourant_att -= $a_pvstotal[$v];
													$a_qte[$v] = 0;
													$a_pvstotal[$v] = 0;
													echo '<span style="color:#B31141;">'.$t_type.'Anéantit complètement vos '.$qte2.' '.$nom2.' !</span><br>';
													$message1.= '<span style="color:#B31141;">'.$t_type_m.'Anéantit complètement vos '.$qte2.' '.$nom2.' !</span><br />';
													$message .= '<span style="color:#0D4573;">'.$t_type_m.'Anéantit complètement les '.$qte2.' '.$nom2.' ennemis !</span><br />';
												}
											}
											else          // sort autre que Désintégration
											{
												$pvscourant_att -= $degat2;
												echo '<span style="color:#B31141;">'.$t_foc.$t_type.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' à vos '.$qte2.' '.$nom2.' et en élimine '.$m.' !</span><br>';
												$message1.= '<span style="color:#B31141;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' à vos '.$qte2.' '.$nom2.' et en élimine '.$m.' !</span><br />';
												$message .= '<span style="color:#0D4573;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' aux '.$qte2.' '.$nom2.' ennemis et en élimine '.$m.' !</span><br />';
											}
										}
										else                  // sur les créatures de la cible
										{
											if ($nom_sort == 'Désintégration')
											{
												if ($hero == $cible) {
													$pct_des = (0.04 + 0.003 * $niveau_def) * max(1, ((1 + 0.05 * $niveau_def) / (1 + 0.05 * $niveau_att)));
													$dés_max_pvs = min($pvstotal_att, $pvstotal_def) * $pct_des * min(1, 0.25 * ((100 - $strategie_def) / 10));
												} else {
													$pct_des = (0.04 + 0.003 * $niveau_att) * max(1, ((1 + 0.05 * $niveau_att) / (1 + 0.05 * $niveau_def)));
													$dés_max_pvs = min($pvstotal_att, $pvstotal_def) * $pct_des * min(1, 0.25 * ((100 - $strategie_att) / 10));
												}

												if ($a_pvstotal[$v] > $dés_max_pvs)
												{
													$dés_nb_tues = floor ($dés_max_pvs / $a_pvs[$v]);
													$pvs_morts += $dés_nb_tues * $a_pvs[$v];
													$pvscourant_def -= $dés_nb_tues * $a_pvs[$v];
													$a_qte[$v] -= $dés_nb_tues;
													$a_pvstotal[$v] -= $dés_nb_tues * $a_pvs[$v];
													echo '<span style="color:#0D4573;">'.$t_type.'Anéantit '.$dés_nb_tues.' des '.$nom2.' de l\'adversaire !</span><br>';
													$message1.= '<span style="color:#0D4573;">'.$t_type.'Anéantit '.$dés_nb_tues.' des '.$nom2.' de l\'adversaire !</span><br />';
													$message .= '<span style="color:#B31141;">'.$t_type_m.'Anéantit '.$dés_nb_tues.' de vos '.$nom2.' !</span><br />';
												}
												else
												{
													$total_def -= 1;
													$pvs_morts += $a_pvstotal[$v];
													$pvscourant_def -= $a_pvstotal[$v];
													$a_qte[$v] = 0;
													$a_pvstotal[$v] = 0;
													echo '<span style="color:#0D4573;">'.$t_type.'Anéantit complètement les '.$qte2.' '.$nom2.' de l\'adversaire !</span><br>';
													$message1.= '<span style="color:#0D4573;">'.$t_type.'Anéantit complètement les '.$qte2.' '.$nom2.' de l\'adversaire !</span><br />';
													$message .= '<span style="color:#B31141;">'.$t_type_m.'Anéantit complètement vos '.$qte2.' '.$nom2.' !</span><br />';
												}
											}
											else          // sort autre que Désintégration
											{
												$pvscourant_def -= $degat2;
												echo '<span style="color:#0D4573;">'.$t_foc.$t_type.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' aux '.$qte2.' '.$nom2.' ennemis et en élimine '.$m.' !</span><br>';
												$message1.= '<span style="color:#0D4573;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' aux '.$qte2.' '.$nom2.' ennemis et en élimine '.$m.' !</span><br>';
												$message .= '<span style="color:#B31141;">'.$t_foc_m.$t_type_m.' Fait '.$gras_degats.''.$degat2.''.$fin_gras_degats.' à vos '.$qte2.' '.$nom2.' et en élimine '.$m.' !</span><br>';
											}
										}
									}   // fin du  if ($n_pvstotal < 0)
								}       // fin du  for ($n = 0; $n < $c; $n++)

								$ressDispo[$x]['or']		-= $cout_or;
								$ressDispo[$x]['mana']		-= $cout_mana;
								$ressDispo[$x]['soufre']	-= $cout_soufre;
								$ressDispo[$x]['mercure']	-= $cout_mercure;
								$ressDispo[$x]['cristal']	-= $cout_cristal;
								$ressDispo[$x]['gemme']		-= $cout_gemme;
							}
							else	// si échec du sort
							{
								if ($hero == $nom)
								{
									echo '<b>Votre sort '.$nom_sort.' n\'a pas pu être lancé, car '.$texte_cible.' !</b><br>';
									$message1.= 'Votre sort '.$nom_sort.' n\'a pas pu être lancé, car '.$texte_cible." !<br />";
								}
								else
								{
									$message .="Votre sort $nom_sort n'a pas pu être lancé, car $texte_cible ! <br />";
								}
							}
						}	// fin du test si les ressources sont suffisantes
					}           // fin du test si ya encore des créatures
				}	// fin du if choix stratégique sorts
				else
				{
					// échec du lancement à cause des stratégies
					if ($hero == $nom)
					{
						echo '<b>Votre sort '.$id_sort[1].' n\'a pas pu être lancé, à cause de vos choix stratégiques !</b><br>';
						$message1 .= 'Votre sort '.$id_sort[1].' n\'a pas pu être lancé, à cause de vos choix stratégiques !<br />';
					}
					else
						$message .= 'Votre sort '.$id_sort[1].' n\'a pas pu être lancé, à cause de vos choix stratégiques !<br />';
				}
			}               // fin du  if ($data[$i] == "1")   = sort incanté
		}	// fin du while ($id_sorts = mysql_fetch_row($req_sorts)&&($continue))	// boucle sur tous les sorts
	}	// fin du  for ($p = 0; $p <= 1; $p++)   // boucle sur les joueurs
}		// fin du for de priorité des sorts

// Fin de traitement des sorts d'un joueur : on met à jour ses ressources
// on ne peut pas en avoir plus à la fin qu'au début (cf magie_defensif.inc) (ex: sort cher en mana qui donne des cailloux, sort cher en cailloux qui donne de la mana)
for($x = 0; $x <= 1; $x++)
{
	$hero = ($x == 0) ? $nom : $cible;
	$sql = 'UPDATE `joueurs_stats`
		SET 	`mana`    = "'.round(min($ressDispo[$x]['mana'],	$ressDebut[$x]['mana'])).'",
			`argent`  = "'.round(min($ressDispo[$x]['or'],		$ressDebut[$x]['or'])).'",
			`soufre`  = "'.round(min($ressDispo[$x]['soufre'],	$ressDebut[$x]['soufre'])).'",
			`mercure` = "'.round(min($ressDispo[$x]['mercure'],	$ressDebut[$x]['mercure'])).'",
			`cristal` = "'.round(min($ressDispo[$x]['cristal'],	$ressDebut[$x]['cristal'])).'",
			`gemme`   = "'.round(min($ressDispo[$x]['gemme'],	$ressDebut[$x]['gemme'])).'"
		WHERE `nom`   = "'.$hero.'"';
	$req =  mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
}

?>
