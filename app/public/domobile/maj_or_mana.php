<?php

function maj_or_mana($joueur)
{
	include ("temps_ecoulement.php");
	
	// sécurité: si le code est écrit correctement par derrière ce devrait servir à rien... sait-on jamais...
	if ($joueur != htmlentities(html_entity_decode($joueur)))
	{
		$joueur = htmlentities(html_entity_decode($joueur));
		$sql = "INSERT INTO `destinee_statistiques` (`param`, `remarques`) VALUES ('accents majOM', '".$joueur." ".$_SERVER['HTTP_REFERER']." ". $_SERVER['REQUEST_URI']." ".$_SERVER["PHP_SELF"]."')";
		$req = mysql_query($sql);
	}
	$req = mysql_query('SELECT connexion_or FROM joueurs_connexions WHERE nom = "'.$joueur.'"') or die(mysql_error());
	if ($data = mysql_fetch_row($req))
	{}
	else
	{
		$sql = "INSERT INTO `destinee_statistiques` (`param`, `remarques`) VALUES ('introuvable majOM', '".$joueur." ".$_SERVER['HTTP_REFERER']."')";
		$req = mysql_query($sql);
		return false;
	}
	
	
// DONNEES PERSO DU JOUEUR
	// nombre de minutes depuis dernière mise à jour, en tenant compte de la vitesse d'écoulement du temps
	$req = mysql_query('SELECT connexion_or, connexion_mana, connexion_pop, connexion_pop2, connexion_taxe, connexion_créature FROM joueurs_connexions WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$i_or   = ($temps - $data[0]) * $temps_ecoulement;
	$i_mana = ($temps - $data[1]) * $temps_ecoulement;
	$i_pop  = ($temps - $data[2]) * $temps_ecoulement;
	$i_pop2 = ($temps - $data[3]) * $temps_ecoulement;
	$i_taxe = ($temps - $data[4]) * $temps_ecoulement;
	$con_crea = $data[5];
	$q = floor(($temps - $con_crea) / $duree_jour);
	// infos diverses
	$req = mysql_query('SELECT joueurs_stats.argent, joueurs_stats.mana, joueurs_stats.niveau, joueurs_terre.total, joueurs_modificateurs.population, joueurs_modificateurs.population2, joueurs_modificateurs.mana, joueurs_modificateurs.HC_or, joueurs_modificateurs.pvstotal, joueurs_modificateurs.HC_mines FROM joueurs_stats INNER JOIN joueurs_terre ON joueurs_terre.nom = joueurs_stats.nom INNER JOIN joueurs_modificateurs ON joueurs_modificateurs.nom = joueurs_stats.nom WHERE joueurs_stats.nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$or  	= $data[0];
	$mana	= $data[1];
	$niveau	= $data[2];
	$terre_total = $data[3];
	$pop	  = $data[4];
	$pop2	  = $data[5];
	$mana_obj = $data[6];
	$or_obj	  = $data[7];
	$pvstotal = $data[8];
	$gain_ress_joueur = $data[9];
	// Manipulation
	$req = mysql_query('SELECT `20`, `26`, `21` FROM joueurs_aptitudes WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$manip  	= $data[0];
	$navigation = $data[1];
	$commerce 	= $data[2];
	
	// mana max
	$mana_max = 0;
	$niv_tour = 0;
	$req   = mysql_query("SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_batiments_id WHERE nom = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
	$data  = mysql_fetch_row($req);
	foreach ($data AS $value){
		if ($value != '0') {
			$mana_max += 10000;
			$niv_tour += 1;
		}
	}
	// province, politique
	$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
	$jbonus = mysql_fetch_row($req);
	$politique = $jbonus[0];
	$province = $jbonus[1];
// FIN DONNEES PERSO

// DONNEES PROVINCE
	if ($province == 'Aucune')
		$sql = "SELECT '0' AS `taxes`, '' AS `Palatin`, politiques_effets.magie, `or`, '0' AS `niveau`
			FROM politiques_effets
			WHERE politiques_effets.politique = '".$politique."'";
	else
		$sql = "SELECT provinces_politiques.taxes, provinces_politiques.Palatin, politiques_effets.magie, politiques_effets.`or`
			FROM joueurs_bonus 
			INNER JOIN provinces_politiques ON provinces_politiques.province = joueurs_bonus.province
			INNER JOIN politiques_effets ON politiques_effets.politique = joueurs_bonus.politique
			WHERE joueurs_bonus.nom = '".$joueur."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$taxe       = $data[0]/100;
	$palatin    = $data[1];
	$mana_polit = $data[2];
	$or_polit   = $data[3];
	
	// allons chercher les infos sur la province dans la bdd
	$req = mysql_query("SELECT (`niveau` * `gain` / 100) AS `or_palat`	FROM batiment_province WHERE province = '".$province."' AND nom = 'Bureau des percepteurs'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		$or_palat = $data[0];
	else	$or_palat = 0;
	$req = mysql_query("SELECT (`niveau` * `gain` / 100) AS `mana_palat`	FROM batiment_province WHERE province = '".$province."' AND nom = 'Académie de magie'") or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		$mana_palat = $data[0];
	else	$mana_palat = 0;
// FIN DONNEES PROVINCE
	
	// Coefficient d'armée faible: limite le gain lié aux prisonniers
	$coef_armee_faible = min(1, ($pvstotal / ($niveau * 4000)));
	$coef_armee_faible_prisio = 1 - ((1 - min(1, ($pvstotal / ($niveau * 4000)))) * (1 - $manip/150));
	
	// Bonus or niveau: niveau/5 * 2% par niveau
	$bonus_or_niveau = 1 + (min(5, $niveau) * 0.02) + (min(5, max(0, $niveau - 5)) * 0.03) + (min(5, max(0, $niveau - 10)) * 0.04) + (min(5, max(0, $niveau - 15)) * 0.05) + (min(5, max(0, $niveau - 20)) * 0.06);
		
	// POPULATION
	$pop_old  = $pop;	// on mémorise la pop et les prisonniers
	$pop2_old = $pop2;
	$interet = 1.0006;
	// mise à jour de la population
	if ($pop_old < 300000) {
		$pop = min($pop * pow($interet, $i_pop), 300000);
	}
	// mise à jour des prisonniers
	// Nombre de prisonniers ramenés chaque minute par l'aptitude navigation
	$pop2_navigation = 7 * $navigation / 100;
		// les prisonniers sont traités comme une suite géométrique (et le revenu associé une série géométrique) de raison racine 3440ème de 0.5 -> au bout de 3440 fois la raison, on obtient 0.5 et le nombre de prisonniers est diminué de moitié
		// chaque minute est une itération dans la suite
		// autre façon de voir, ils décroissent exponentiellement: ils perdent chaque minute un nombre proportionnel à leur effectif
		// le revenu est donc selon la formule de la somme d'une série géométrique partant de 0 : u0 * (1 - raison ^ n_iteration) / (1 - raison)
		// cf. http://fr.wikipedia.org/wiki/Suite_g%C3%A9om%C3%A9trique et http://fr.wikipedia.org/wiki/S%C3%A9rie_g%C3%A9om%C3%A9trique pour les formules au besoin
	$pop2_raison = 0.999840 + 0.000001 * $manip;			// raison de la suite géométrie
	$pris_morts = $pop2_old - floor($pop2 * pow($pop2_raison, $i_pop2));
	$pop2 = floor($pop2_old - $pris_morts + $pop2_navigation * $i_pop2);
	$population = $pop;
	// FIN DE POPULATION - $pop et $pop2 ont pris leur nouvelles valeurs
	
// GAIN D'OR
	// $gainparmin est une variable qui règle la quantité d'or/mana gagnée par minute par la population (anciennement $mod)
	// après un round sans que personne ne reçoive de revenu de prisonier ou presque, changement de formule: les prisoniers suivent toujours la suite géométrique, mais le revenu se comporte comme une racine par rapport à la pop
	$gainparmin	= 0.0002426 * $pop;
	// Gain avec les différents modificateurs
	$gain_or_min = $gainparmin * $or_obj * ($or_polit + $or_palat) * $bonus_or_niveau  * (2/3 + 1/3 * $coef_armee_faible);
	$gain 		= round($i_or * $gain_or_min);	// même si la population peut varier, on la considère constante à sa valeur finale (on est gentils). Mais ne varie en général pas (valeur max bornée)
	$or   		= $or + $gain;
	// Payement de la taxe demandée par le palatin
	$taxe_or_min = $gain_or_min * $taxe;
	$prix		= round($i_taxe * $taxe_or_min);
	$or		= $or - $prix;
	// Gain par les esclaves
	$pop2_rentabilite = 5/8000;								// simple coefficient: ce que rapporte un prisonnier par minute
	$pop2_foisminutes = $pop2_old * (1 - pow($pop2_raison, $i_pop2)) / (1 - $pop2_raison);	// équivalent à $gainparmin déjà multiplié par $i_or: "intégrale" sur les prisonniers depuis la dernière connection jusqu'à l'instant présent == nbr de prisonniers en moyenne * nbr de minutes
												// le problème étant que les prisonniers varient trop vite par rapport aux heure de connection, ex. si on se connecte une fois tous les 3 jours, les prisonniers ont baissé de moitié. C'est sympa de compter ce qu'ils ont produit pendant qu'ils étaient toujours prisonniers, non?
												// NB: ici c'est $i_pop2 (dernière actualisation des prisonniers) qui définit l'or que le joueur ramasse, et non i_or. Ceci n'a pas d'importance dans la mesure où ces heures de connection sont synchrones; et même si ce n'est pas le cas il me paraît judicieux de garder le revenu des prisonniers indépendant du revenu principal
												// En fait on introduit une racine dans le gain, parce que la plupart des joueurs n'ont aucun gain lié aux prisonniers :-/
	$gain2 = round(1.5 * ($pop2_foisminutes * $pop2_rentabilite * $or_obj * ($or_polit + $or_palat) * $bonus_or_niveau * (2/3 + 1/3 * $coef_armee_faible_prisio)));
	$taxe_esclaves = round($gain2 * $taxe);
	$or    = $or + $gain2 - $taxe_esclaves;
// FIN DU GAIN D'OR

// GAIN DE LA MANA
	$gain_mana_min = ($niv_tour * 27) * $mana_obj * ($mana_polit + $mana_palat);
	$mana = min($mana_max, $mana + round($i_mana * $gain_mana_min));
// FIN GAIN DE LA MANA

// RESSOURCES ET CRÉATURES
if ($q > 0)					// si plus d'un jour s'est passé depuis la dernière mise à jour des créatures
{
	// Calcul des bonus liés au recrutement
	include_once("calcul_bonus_recrutement.php");
	$crea_obj = calcul_bonus_recr($joueur);
	$crea_cha  = calcul_bonus_recr_charisme($joueur);
	
	
	$req = mysql_query('SELECT `crea_marche_noir` FROM joueurs_aptitudes_base WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$crea_marche_noir = $data['crea_marche_noir'];	
	$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '".$joueur."'") or die('Erreur SQL 166 !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$politique = $dat[0];
	$province = $dat[1];
	$req = mysql_query('SELECT creatures FROM politiques_effets WHERE politique = "'.$politique.'"') or die('Erreur SQL 170 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$crea_polit = $data[0];
	$req = mysql_query("SELECT niveau, gain FROM batiment_province WHERE province = '".$province."' AND nom = 'Casernes fortifiées'") or die('Erreur SQL 173 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau_prov = $data[0];
	$gain_prov = $data[1];
	$crea_palat = $niveau_prov * $gain_prov /100;
	
	// UPDATE DES RESSOURCES
	$req  = mysql_query("SELECT * FROM joueurs_terre WHERE nom = '".$joueur."'") or die('Erreur SQL 204 !<br>'.mysql_error());
	$terres_totales = mysql_fetch_assoc($req);
	$req  = mysql_query("SELECT * FROM joueurs_terre_utile WHERE nom = '".$joueur."'") or die('Erreur SQL 206 !<br>'.mysql_error());
	$terres_occupees = mysql_fetch_assoc($req);
	
	$terrains_ressources = array(
		"riverain" => "gemme", 
		"colline" => "soufre", 
		"désert" => "mercure", 
		"forêt" => "cristal",
		"marais" => "mercure", 
		"montagne" => "cristal", 
		"plaine" => "gemme", 
		"caverne" => "soufre"
	);
	foreach ($terrains_ressources AS $terrain => $ressource) {
		$terres_libres = $terres_totales[$terrain] - $terres_occupees[$terrain];
		$nb_ress = floor($gain_ress_joueur * $terres_libres / 500) * $q;
		$ress_trans[$ressource] += $nb_ress;
	}
	// Cas spécifique de l'arctique: une de chaque ressource
	$terres_libres = $terres_totales['arctique'] - $terres_occupees['arctique'];
	$nb_ress = floor($gain_ress_joueur * $terres_libres / 1500);
	$ress_trans['gemme'] += $nb_ress;
	$ress_trans['cristal'] += $nb_ress;
	$ress_trans['mercure'] += $nb_ress;
	$ress_trans['soufre'] += $nb_ress;
	// Mise à jour des ressources dans les tables
	mysql_query("UPDATE `joueurs_stats` SET `cristal` = `cristal` + '".$ress_trans['cristal']."', `gemme` = `gemme` + '".$ress_trans['gemme']."', `mercure` = `mercure` + '".$ress_trans['mercure']."', `soufre` = `soufre` + '".$ress_trans['soufre']."' WHERE nom = '".$joueur."'");
	// ---------------------------
	
	$re3 = mysql_query("SELECT * FROM joueurs_créatures_id where nom = '".$joueur."'") or die('Erreur SQL 268 !<br>'.mysql_error());
	$creature_id = mysql_fetch_assoc($re3);
	// Allons chercher tous les bâtiments...
	$req = mysql_query('SELECT * FROM joueurs_batiments_id WHERE nom = "'.$joueur.'"') or die('Erreur SQL 271 !<br>'.mysql_error());
	$batiment_id = mysql_fetch_assoc($req);
	
	for ($i=6; isset($batiment_id[$i]); $i++) // les id jusqu'à 5 sont des tours de magie
	{
		if ($batiment_id[$i] != '0')	// bâtiment construit, on traite
		{
			$re2 = mysql_query('SELECT nombre, niveau FROM creatures WHERE id = "'.$i.'"') or die('Erreur SQL 277 !<br>'.mysql_error());
			$da2 = mysql_fetch_row($re2);
			$nombrepJ = $da2[0];
			$nivo_bat = $da2[1];
			// On set le nouveau nombre de créature... avec un max à 5 jours de stack.
			$nbr = round( min( 5 *     ($nombrepJ * $crea_obj * ($crea_polit + $crea_palat) * $crea_cha),
				$creature_id[$i] + (($nombrepJ * $crea_obj * ($crea_polit + $crea_palat) * $crea_cha) * $q)));
			// On update...
			mysql_query('UPDATE `joueurs_créatures_id` SET `'.$i.'` = "'.$nbr.'" WHERE nom = "'.$joueur.'"');
		}
	}
	
	// Cas spécial créature du marché noir
	if ($commerce >= 24 && $crea_marche_noir != 0) {
		switch ($crea_marche_noir) {
			case 1:
				$nom_crea_mn = 'Chasseurs des cimes';
				break;
			case 2:
				$nom_crea_mn = 'Enforceurs nains';
				break;
			case 3:
				$nom_crea_mn = 'Quetzalcoatls';
				break;
			case 4:
				$nom_crea_mn = 'Soldats d\'élite de Maon';
				break;
			case 5:
				$nom_crea_mn = 'Certales';
				break;
			case 6:
				$nom_crea_mn = 'Revenants archers';
				break;
			case 7:
				$nom_crea_mn = 'Esprits vengeurs';
				break;
			case 8:
				$nom_crea_mn = 'Terreurs des égoûts';
				break;
			case 9:
				$nom_crea_mn = 'Croisés Impériaux';
				break;
			case 10:
				$nom_crea_mn = 'Dragons rouges';
				break;
			case 11:
				$nom_crea_mn = 'Galapars';
				break;
		}
		$re2 = mysql_query('SELECT id, nombre FROM creatures WHERE nom = "'.$nom_crea_mn.'"') or die('Erreur SQL 277 !<br>'.mysql_error());
		$da2 = mysql_fetch_assoc($re2);
		$id = $da2['id'];
		$nombrepJ = $da2['nombre'];
		$nbr = round(min ($nombrepJ * 5, $creature_id[$id] + $nombrepJ * $commerce / 120));
		mysql_query('UPDATE `joueurs_créatures_id` SET `'.$id.'` = "'.$nbr.'" WHERE nom = "'.$joueur.'"');
	}
	
	// mise à jour du champ connexion_créature dans la base de données
	mysql_query('UPDATE `joueurs_connexions` SET `connexion_créature` = `connexion_créature` + "'.($duree_jour * $q).'" WHERE nom = "'.$joueur.'"');
}

// MAJ PUISSANCE
	include_once("puissance.php");
	maj_puissance($joueur);

// UPDATES
	$req = mysql_query('UPDATE joueurs_stats SET `argent` = "'.$or.'", `mana` = "'.$mana.'" WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
	$req = mysql_query('UPDATE joueurs_connexions  	SET `connexion_or` = "'.$temps.'", `connexion_mana` = "'.$temps.'", `connexion_pop` = "'.$temps.'", `connexion_pop2` = "'.$temps.'", `connexion_taxe` = "'.$temps.'" WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
	$req = mysql_query("UPDATE joueurs_modificateurs SET `population` = '".$pop."', `population2` = '".$pop2."' WHERE nom = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
	$req = mysql_query("UPDATE provinces_politiques SET argent = `argent` + '".$prix."' WHERE province = '".$province."'")		or die('Erreur SQL !<br>'.mysql_error());
// FIN UPDATES
}
// fin maj OR et MANA



// fonction qui fait passer de niveau
function passedeniveau ($joueur) 
{
	$temps = floor(time()/60);
	$y = 0;		// nombre de niveaux à grimper
	
	if ($joueur != htmlentities(html_entity_decode($joueur)))
	{
		$joueur = htmlentities(html_entity_decode($joueur));
		$sql = "INSERT INTO `destinee_statistiques` (`param`, `remarques`) VALUES ('accents passeniveau', '".$joueur." ".$_SERVER['HTTP_REFERER']."')";
		$req = mysql_query($sql);
	}
	$req = mysql_query('SELECT connexion_or FROM joueurs_connexions WHERE nom = "'.$joueur.'"');
	if ($data = mysql_fetch_row($req))
	{}
	else
	{
		$sql = "INSERT INTO `destinee_statistiques` (`param`, `remarques`) VALUES ('introuvable passnive', '".$joueur." ".$_SERVER['HTTP_REFERER']."')";
		$req = mysql_query($sql);
		return false;
	}
	
	
	$req  = mysql_query("SELECT niveau, xp, but FROM joueurs_stats WHERE nom = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau	= $data[0];
	$xp	= $data[1];
	$but	= $data[2];

	if ($xp >= $but)
	{
		$nom = $joueur;	// on est dans une fonction, on doit être protégé contre les problèmes de variables globales. $nom est nécessaire dans le fichier inclus. C'est stupide :/
		global $tableBatSpe, $tableBatJoueurs, $branche, $batspe, $nbrBatAuth, $nivRestriction, $batSpeConstr, $nbrBatSpe;
		include ('batimentspec_include.php');
		
		$sql = 'SELECT joueurs_heros.race, joueurs_heros.classe, joueurs_heros.dieu, joueurs_aptitudes_base.points, classes.points, joueurs_aptitudes_base.proch_apt, joueurs_aptitudes_base.apts_a_choisir
			FROM joueurs_heros INNER JOIN joueurs_aptitudes_base ON joueurs_aptitudes_base.nom = joueurs_heros.nom INNER JOIN classes ON classes.classe = joueurs_heros.classe WHERE joueurs_heros.nom = "'.$joueur.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$dat = mysql_fetch_array($req);
		$race   = $dat[0];
		$classe = $dat[1];
		$dieux  = $dat[2];
		$pts	= $dat[3];
		$points = $dat[4];
		$proch_apt = $dat['proch_apt'];
		$apts_a_choisir = $dat['apts_a_choisir'];
		
		// combien de niveaux doit-on grimper?
		while ($xp >= $but)
		{
			$y++;
			$niveau++;
			// 2019-2020 
			// if ($niveau == 30) {
			// 	$but = 9999999;
			// } else {
			// 	$but += ($niveau + 1) * 2000;
			// }

			//2021 - On reprend l'ancien code
			if ($niveau == 30) {
				$but = 9999999;
			} else if ($niveau >= 15) {
				$but += 15000;
			} else {
				$but += ($niveau + 1) * 1000;
			}
			$pts += $points;
		}


		
		// Apprentissage nouvelle aptitude
		while ($niveau >= $proch_apt) {
			$proch_apt += 4;
			$apts_a_choisir++;
		}
		
		// Apprentissage du sort spécial
		$sql = "SELECT `30` FROM joueurs_sorts WHERE nom = '$joueur'";
		$req  = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		if ($data[0] == 0) {
			$sql = "SELECT `sort_spe`, `sort_spe_lvl` FROM classes WHERE classe = '$classe'";
			$req  = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			if ($niveau >= $data[1]) {
				$sort_spe = $data[0];
				mysql_query("UPDATE joueurs_sorts SET `30` = $sort_spe WHERE nom = '$joueur'");
			}
		}
		
		// mise à jour de la puissance
		include_once("puissance.php");
		maj_puissance($joueur);
		
		// mise à jour des stats
		$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM races WHERE race = "'.$race.'"') or die('Erreur SQL !<br>'.mysql_error());
		$stats_races = mysql_fetch_row($req);
		$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM stats_dieux WHERE nom = "'.$dieux.'"') or die('Erreur SQL !<br>'.mysql_error());
		$stats_dieux = mysql_fetch_row($req);
		$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM classes WHERE classe = "'.$classe.'"') or die('Erreur SQL !<br>'.mysql_error());
		$stats_classes = mysql_fetch_row($req);
		$req = mysql_query('SELECT satt, sdef, sini, scha, send, spui FROM joueurs_bonus WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
		$stats_supp = mysql_fetch_row($req);
		$att = ($stats_races[0] + $stats_dieux[0] + $stats_classes[0]) * $niveau + $stats_supp[0];
		$def = ($stats_races[1] + $stats_dieux[1] + $stats_classes[1]) * $niveau + $stats_supp[1];
		$ini = ($stats_races[2] + $stats_dieux[2] + $stats_classes[2]) * $niveau + $stats_supp[2];
		$cha = ($stats_races[3] + $stats_dieux[3] + $stats_classes[3]) * $niveau + $stats_supp[3];
		$end = ($stats_races[4] + $stats_dieux[4] + $stats_classes[4]) * $niveau + $stats_supp[4];
		$pui = ($stats_races[5] + $stats_dieux[5] + $stats_classes[5]) * $niveau + $stats_supp[5];
	    	
		// batiment spéciaux
		foreach ($batSpeConstr AS $id => $lvl)
		{
			if ($lvl > 0)
			{
				$req = mysql_query("SELECT `bnum1`, `bnum2`, `bfloat1`, `bfloat2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
				if ($data = mysql_fetch_assoc($req))
				{
					for ($i=1; $i<=2; $i++)
					{
						if (($data['tablename'.$i] == 'joueurs_bonus')&&(in_array($data['bfield'.$i], array('att','def','ini','end','pui','cha'))))
						{
							$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
							$bonus = getBonusLevel ($bonus, $lvl);
							if ($bonus != 0)
							{
								${$data['bfield'.$i]} += $bonus;	// par exemple: $def
							}
						}
					}
				}
			}
		}
		
		// objets
		include_once ("info_objets_include.php");
		$req = mysql_query('SELECT * FROM joueurs_inventaire WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
		$dat = mysql_fetch_assoc($req);
		foreach ($dat AS $ou => $item)
		{
			if ((is_numeric($item)) && ($item!=0) && ($ou!='id'))
			{
				$obj_data = retourne_carac_objet($item);
				if ($obj_data != false)
				{
					$att += $obj_data['att'];
					$def += $obj_data['def'];
					$ini += $obj_data['ini'];
					$end += $obj_data['end'];
					$pui += $obj_data['pui'];
					$cha += $obj_data['cha'];
				}
			}
		}
		
		$sql = "UPDATE `joueurs_stats` SET `but` = '$but', `niveau` = '$niveau', `att` = '$att', `def` = '$def', `ini` = '$ini', `end` = '$end', `pui` = '$pui', `cha` = '$cha' WHERE nom ='".$joueur."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_aptitudes_base` SET `points` = $pts, `focusmodifiable` = 1, `proch_apt` = $proch_apt, `apts_a_choisir` = $apts_a_choisir WHERE nom ='".$joueur."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		return true;
	}
	
	return false;
}
// fin de la fonction qui fait passer de niveau


?>
