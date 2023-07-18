<?php

$mod_xp_manip_att = 1;
$mod_xp_manip_def = 1;

// APTITUDE MANIPULATION de l'attaquant
$partiel = '';
$x = mt_rand(0,1);
$manip_att = $apt_att['20'];
if ($manip_att > 0)
{
	$mod_or_pop = 1 * $manip_att / 100;
	$mod_terre = 0.5 * $manip_att / 100;
	$mod_xp_manip_att = 0.25 * $manip_att / 100;
	if ($x == 0) {
		$mod_or_pop /= 2;
		$mod_terre /= 2;
		$mod_xp_manip_att /= 2;
		$partiel = ' (partiel)';
	}
	$mod_xp_manip_att += 1;
	
	$gain_or *= (1 + $mod_or_pop);
	$gain_pop *= (1 + $mod_or_pop);
	$gain_ress *= (1 + $mod_or_pop);
	$gain_terre *= (1 + $mod_terre);
	
	echo '<div align="left"><img src="/images/aptitudes/manipulation.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Manipulation'.$partiel.' :</strong> Vous tirez un grand profit de ce combat !<br></small></span></div>';
	$message1.= 'Manipulation'.$partiel.' : Vous tirez un grand profit de ce combat !'."\n";
	$message .= 'Manipulation'.$partiel.' : Les manigances ennemies vous forcent à concéder plus que de raison !'."\n";
}

// APTITUDE MANIPULATION du defenseur
$partiel = '';
$x = mt_rand(0,1);
$manip_def = $apt_def['20'];
if ($manip_def > 0)
{
	$mod_or_pop = 1 * $manip_def / 100;
	$mod_terre = 0.5 * $manip_def / 100;
	$mod_xp_manip_def = 0.25 * $manip_def / 100;
	if ($x == 0) {
		$mod_or_pop /= 2;
		$mod_terre /= 2;
		$mod_xp_manip_def /= 2;
		$partiel = ' (partiel)';
	}
	$mod_xp_manip_def += 1;
	
	$gain_or /= (1 + $mod_or_pop);
	$gain_pop /= (1 + $mod_or_pop);
	$gain_ress /= (1 + $mod_or_pop);
	$gain_terre /= (1 + $mod_terre);
	
	echo '<div align="left"><img src="/images/aptitudes/manipulation.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Manipulation'.$partiel.' :</strong> Les manigances ennemies vous forcent à repartir avec moins de terres, de richesses, d\'or et de prisonniers !<br></small></span></div>';
	$message1.= 'Manipulation'.$partiel.' : Les manigances ennemies vous forcent à repartir avec moins de terres, de richesses, d\'or et de prisonniers !'."\n";
	$message .= 'Manipulation'.$partiel.' : Vos talents de négociateur vous évitent de donner un lourd tribu à votre adversaire et vous permettent de mieux tirer profit de la défaite!'."\n";
}


// GAIN XP
$xp_gain1 = ceil($xp_att * $coef_retraite_att * $coef_xp_lvl_att * $coef_pa_att * $coef_xp_vs * $bonus_raz07_att['xp'] * $coef_xpserveur);
$xp_gain1 = ceil($xp_att * $coef_retraite_att * $coef_xp_lvl_att * $coef_pa_att * $coef_xp_vs * $bonus_raz07_att['xp'] * $coef_xpserveur);
$xp_gain2 = ceil($xp_def * $coef_retraite_def * $coef_xp_lvl_def * $coef_pa_def * $mod_xp_manip_def * $bonus_raz07_def['xp'] * $coef_xpserveur);

$xp_att = $xp_deja_att + $xp_gain1;
$xp_def = $xp_deja_def + $xp_gain2;
  
  
// GAIN: TERRES
$conquis = $gain_terre * $total_c * $bonus_raz07_att['terres'] * $coef_taille_armee_att;	// nombre d'acres perdus par la cible
if ($coef_xp_lvl_att > 1)
	$conquis *= $coef_xp_lvl_att;
if ($coef_pa_att > 1)
	$conquis *= $coef_pa_att;
$conquis = floor($conquis);
$gain_terre_att = floor($gain_terre * $total_c * $bonus_raz07_att['terres'] * $coef_xp_lvl_att * $coef_pa_att * $coef_pourc_armee_att * $coef_taille_armee_att); // nombre d'acres gagnés par l'attaquant
if ($gain_terre_att > $conquis) {
	$conquis = $gain_terre_att;
}
$dispo = $total_c - $utile_c;						// nombre d'acres disponibles
$l_terrain = array('riverain','colline','désert','forêt','arctique','marais','montagne','plaine','caverne');

// Cas où la cible n'a pas assez de terres disponibles --> destruction d'un bâtiment
$h = "";
if ($conquis > $dispo)     // si la cible n'a pas assez de terres libres
{
	$guerre_nbrbatdetruit = 1;
	
	// On fait un tableau ordonné de tous les bâtiments par nombre d'âcres décroissant
	$list_bat = array();
	$sql_list_bat = mysql_query("SELECT id, batiment, espace FROM creatures WHERE id > 5 ORDER BY espace DESC") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
	$nombre = mysql_num_rows($sql_list_bat) + 5;
	while ($next = mysql_fetch_row($sql_list_bat)) {
		$list_bat[$next[0]] = array($next[1], $next[2]);
	}
	
	// constitution du tableau ordonné des bâtiments de la cible
	$sql4 = 'SELECT * FROM joueurs_batiments_id WHERE nom = "'.$cible.'"';
	$req4 = mysql_query($sql4) or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
	$data4 = mysql_fetch_array($req4);
	for($f = 5; $f <= $nombre; $f++)	// boucle sur les bâtiments existant
	{
		// Tharkis: Attention code super bancal: il faut que la table joueurs_batiments_id commence par id et nom puis les numéros des créas
		if ($data4[$f] == "0") {
			unset($list_bat[$f]);
		}
	}
	
	if (count($list_bat))		// si la cible possède au moins un bâtiment
	{
		$restant_a_conquerir = $conquis - $dispo;
		$id = 0;
		foreach ($list_bat as $id_bat => $infos) {
			if ($restant_a_conquerir <= intval($infos[1]) || $id == 0) {
				$id = $id_bat;
			} else {
				break;
			}
		}
		$terrain_b = $data4[$id];	// type de terrain sur lequel est construit ce bâtiment
		
		switch($terrain_b)
		{
			case 'Riverain' : $terrain_b = 'riverain';	break;
			case 'Colline'  : $terrain_b = 'colline';	break;
			case 'Désert'   : $terrain_b = 'désert';	break;
			case 'Forêt'    : $terrain_b = 'forêt';		break;
			case 'Arctique' : $terrain_b = 'arctique';	break;
			case 'Marais'   : $terrain_b = 'marais';	break;
			case 'Montagne' : $terrain_b = 'montagne';	break;
			case 'Plaine'   : $terrain_b = 'plaine';	break;
			case 'Caverne'  : $terrain_b = 'caverne';	break;
		}
		
		$nom_b    = $list_bat[$id][0];					// nom du bâtiment
		$espace_b = $list_bat[$id][1];					// nombre d'acres de base pour ce bâtiment
		
		$sql5 = 'SELECT `'.$terrain_b.'` FROM races WHERE race = "'.$race_def.'"';
		$req5 = mysql_query($sql5) or die('Erreur SQL !<br>'.$sql5.'<br>'.mysql_error());
		$data5 = mysql_fetch_row($req5);
		$mod = $data5[0];				// modificateur de terrain pour la race de la cible
		
		$req = mysql_query("SELECT `politiques_effets`.`batiments` FROM politiques_effets INNER JOIN provinces_politiques ON provinces_politiques.`politique1` = politiques_effets.`politique` WHERE provinces_politiques.`Province` = '$prov_def'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		$mod_bat_province = $data['batiments'];
		
		$mod *= $mod_bat_province;		
		$espace_b = floor($espace_b/$mod);			// nombre d'acres réellement occupés par ce bâtiment
		$terre_utile[$terrain_b] -= $espace_b;			// mise à jour de l'espace utilisé sur le terrain impliqué
		$terre_tot[$terrain_b] -= floor($espace_b * (1-0.9));	// mise à jour de l'espace total sur le terrain impliqué
		$utile_c -= $espace_b;					// mise à jour de l'espace utilisé par la cible, après destruction du bâtiment
		$total_c -= floor($espace_b * (1-0.9));			// mise à jour de l'espace total sur tous les terrains
		// mises à jour dans les bases : terrains occupés et destruction bâtiment 
		$sql = 'UPDATE `joueurs_terre_utile`	SET `total` = "'.$utile_c.'", `'.$terrain_b.'` = "'.$terre_utile[$terrain_b].'"	WHERE nom = "'.$cible.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$sql = 'UPDATE `joueurs_batiments_id`	SET `'.$id.'` = "0" 								WHERE nom = "'.$cible.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		echo 'Vous êtes parvenus à détruire les <strong>'.$nom_b.'</strong> de votre adversaire !<br><br>';
		$message1.= 'Vous êtes parvenus à détruire les <strong>'.$nom_b.'</strong> de votre adversaire !<br /><br />';
		$message .="L'ennemi est parvenu à détruire vos <strong>".$nom_b."</strong> !<br /><br />";
		$h = "$nom_b";
	}
	$dispo = $total_c - $utile_c;   // mise à jour du terrain disponible après destruction du bâtiment
}

// Cas où la cible n'a toujours pas assez de terres disponibles :
//  on ne détruit qu'un seul bâtiment, donc on revoit à la baisse la surface de terrain conquise
$conquis = max(0, min($dispo-1, $conquis));
// Si l'attaquant gagne plus de terres que le défenseur ne perd
$gain_terre_att = min($conquis, $gain_terre_att);
// maintenant qu'on a suffisamment de dispo, on va enlever le conquis à la cible (et le rajouter à l'attaquant)
$deja_conquis = 0;
$deja_perdu = 0;
$l_terrain_ = $l_terrain;
shuffle($l_terrain_);
for ($k=0; $k<sizeof($l_terrain_); $k++)			// on boucle sur les terrains dans un ordre aléatoire
{
	$gain_terrain_en_cours = 0;
	$perte_terrain_en_cours = 0;
	$terrain = $l_terrain_[$k];				// choix d'un type de terrain au hasard
	$libre = $terre_tot[$terrain] - $terre_utile[$terrain];	// acres totaux - acres utilisés, chez la cible
	// gain attaquant
	if ($tactique == 'conquete') {
		if ( $deja_conquis + $libre > $gain_terre_att )				// s'il y a plus d'acres que nécessaire sur le terrain en cours
		{
			$gain_terrain_en_cours = $gain_terre_att - $deja_conquis;
			$deja_conquis = $gain_terre_att;
		}
		else                      		// sinon (s'il y en a pas assez, donc)
		{
			$gain_terrain_en_cours = $libre;
			$deja_conquis += $libre;
		}
		$terre_tot_h[$terrain] += $gain_terrain_en_cours;		// gain pour l'attaquant
		$total_h += $gain_terrain_en_cours;
	}
	if ($gain_terrain_en_cours > 0) {
		$sql = 'UPDATE `joueurs_terre` SET `'.$terrain.'` = "'.$terre_tot_h[$terrain].'" WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
	
	// perte cible
	if ( $deja_perdu + $libre > $conquis )				// s'il y a plus d'acres que nécessaire sur le terrain en cours
	{
		$perte_terrain_en_cours = $conquis - $deja_perdu;
		$deja_perdu = $conquis;
	}
	else                      		// sinon (s'il y en a pas assez, donc)
	{
		$perte_terrain_en_cours = $libre;
		$deja_perdu += $libre;
	}
	$terre_tot[$terrain] -= $perte_terrain_en_cours;		// perte pour la cible
	$total_c -= $perte_terrain_en_cours;
	if ($perte_terrain_en_cours > 0) {
		$sql = 'UPDATE `joueurs_terre` SET `'.$terrain.'` = "'.$terre_tot[$terrain].'" WHERE nom = "'.$cible.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
}	// fin de la boucle for

// mise à jour des terres (BDD)
$sql = 'UPDATE `joueurs_terre` SET `total` = "'.$total_h.'"	WHERE nom = "'.$nom.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = 'UPDATE `joueurs_terre` SET `total` = "'.$total_c.'" WHERE nom = "'.$cible.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$gain_terre = $gain_terre_att;
$perte_terre = $conquis;

$new_tot1 = $total_h;
$new_tot2 = $total_c;
// fin de la gestion des terres


// GAIN: RESSOURCES
// stock actuel chez l'attaquant
$req = mysql_query('SELECT cristal, gemme, soufre, mercure FROM joueurs_stats WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$ress_att = mysql_fetch_assoc($req);
// stock actuel chez la cible
$req = mysql_query('SELECT cristal, gemme, soufre, mercure  FROM joueurs_stats  WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$ress_def = mysql_fetch_assoc($req);
// si la cible possède des minerais, calcul du pillage
$ress_transf = array('soufre' => 0, 'mercure' => 0, 'gemme' => 0, 'cristal' => 0);
$ress_perte_def = array('soufre' => 0, 'mercure' => 0, 'gemme' => 0, 'cristal' => 0);
// Base de perte / gain en fonction du niveau de la cible
$ress_base = floor($niv_c / 4);
if (array_sum($ress_def) > 0)
{
	foreach ($ress_transf AS $key => $value)
	{
		$gain_brut = $ress_base + (max(0, $ress_def[$key] - $ress_base)) * $gain_ress;
		$ress_perte_def[$key] = floor($gain_brut * $bonus_raz07_att['vol_ressources'] * $coef_destruction * $coef_taille_armee_att);
		$ress_transf[$key] = floor($gain_brut * $bonus_raz07_att['vol_ressources'] * $coef_xp_lvl_att * $coef_pa_att * $coef_pourc_armee_att * $coef_taille_armee_att);
		if ($ress_transf[$key] > $ress_perte_def[$key]) {
			$ress_perte_def[$key] = $ress_transf[$key];
		}
		// transfert des ressources
		$ress_att[$key] += $ress_transf[$key];
		// Le défenseur perd 2 fois plus de ressources que ce que ne gagne l'attaquant
		if ($ress_perte_def[$key] > $ress_def[$key]) {
			$ress_perte_def[$key] = $ress_def[$key];
		}
		$ress_def[$key] = $ress_def[$key] - $ress_perte_def[$key];
	}
	if (array_sum($ress_transf) > 0)
	{
		$sql = 'UPDATE `joueurs_stats` SET `cristal` = "'.$ress_att['cristal'].'", `gemme`   = "'.$ress_att['gemme'].'", `soufre`  = "'.$ress_att['soufre'].'", `mercure` = "'.$ress_att['mercure'].'" WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$sql = 'UPDATE `joueurs_stats` SET `cristal` = "'.$ress_def['cristal'].'", `gemme`   = "'.$ress_def['gemme'].'", `soufre`  = "'.$ress_def['soufre'].'", `mercure` = "'.$ress_def['mercure'].'" WHERE nom = "'.$cible.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		echo '<center><table border="0" style="width: 630px; text-align: center;"><tbody>
			<tr>	<td><b>Soufre</b></td><td><b>Mercure</b></td><td><b>Gemmes</b></td><td><b>Cristaux</b></td></tr>
			<tr>	<td><img src="/images/icones/soufre.gif"   title="'.$ress_transf['soufre']. ' minerais de souffre"  border="0" height="30" width="30"></td>
				<td><img src="/images/icones/mercure.gif"  title="'.$ress_transf['mercure'].' minerais de mercure"  border="0" height="30" width="30"></td>
				<td><img src="/images/icones/gemmes.gif"   title="'.$ress_transf['gemme'].  ' minerais de gemmes"   border="0" height="30" width="30"></td>
				<td><img src="/images/icones/cristal.gif"  title="'.$ress_transf['cristal'].' minerais de cristaux" border="0" height="30" width="30"></td>	</tr>
			<tr>	<td><b>'.$ress_transf['soufre'] .'</b></td>
				<td><b>'.$ress_transf['mercure'].'</b></td>
				<td><b>'.$ress_transf['gemme']  .'</b></td>
				<td><b>'.$ress_transf['cristal'].'</b></td>	</tr>
			</tbody></table><br>';
		$message1.= 'Vous dérobez à votre adversaire '.$ress_transf['soufre'].' minerai(s) de soufre, '.$ress_transf['mercure'].' minerai(s) de mercure, '.$ress_transf['gemme'].' minerai(s) de gemmes et '.$ress_transf['cristal'].' minerai(s) de cristaux !<br />';
		$message .= 'Votre adversaire vous dérobe '.$ress_perte_def['soufre'].' minerai(s) de soufre, '.$ress_perte_def['mercure'].' minerai(s) de mercure, '.$ress_perte_def['gemme'].' minerai(s) de gemmes et '.$ress_perte_def['cristal'].' minerai(s) de cristaux !<br />';
	}
}


// GAIN: POPULATION
$rapport = (rand(20,60)/100); // ratio de prisonniers / population qui rejoint
// population
$pop_conquise = ceil($pop_c * $gain_pop * $bonus_raz07_att['prison'] * $coef_xp_lvl_att * $coef_pa_att * $coef_pourc_armee_att * $coef_taille_armee_att);
$pop_reste    = $pop_c - $pop_conquise;
$pop_rejoint    = ceil($pop_conquise * $rapport);
$pop_gonfle   = $pop_conquise - $pop_rejoint;
// prisonniers
$pop2_conquise = ceil($pop2_c * $gain_pop * $coef_att * $bonus_raz07_att['prison'] * $coef_xp_lvl_att * $coef_pa_att * $coef_pourc_armee_att * $coef_taille_armee_att);
$pop2_reste    = $pop2_c - $pop2_conquise;
$pop2_rejoint    = ceil($pop2_conquise * $rapport);
$pop2_gonfle   = $pop2_conquise - $pop2_rejoint;
// bilans
$pop_gonfle_tot = round($pop_gonfle + $pop2_gonfle);
$pop_rejoint_tot = $pop_rejoint + $pop2_rejoint;

//  updates
$sql = 'UPDATE `joueurs_modificateurs` SET `population2` = `population2` + "'.$pop_gonfle_tot.'", `population` = `population` + "'.$pop_rejoint_tot.'" WHERE nom = "'.$nom.'"';
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = 'UPDATE `joueurs_modificateurs` SET `population` = `population` - "'.$pop_conquise.'", `population2` = `population2` - "'.$pop2_conquise.'" WHERE nom = "'.$cible.'"';
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

echo 'Lors de votre attaque, vous êtes parvenus à capturer <strong>'.$pop_gonfle_tot.'</strong> prisonniers et <strong>'.($pop_rejoint_tot).'</strong> habitants rejoignent votre royaume.<br>';
$message1.= 'Lors de votre attaque, vous êtes parvenus à capturer <strong>'.$pop_gonfle_tot.'</strong> prisonniers et <strong>'.($pop_rejoint_tot).'</strong> habitants rejoignent votre royaume.<br>';
$message .= "Lors de son attaque, l'ennemi parvient à capturer <strong>".$pop_gonfle_tot."</strong> prisonniers et <strong>".($pop_rejoint_tot).'</strong> de vos habitants rejoignent son royaume.<br>';


// GAIN: OR
// Base de perte / gain: niveau de la cible * 1500
$or_base = $niv_c * 1500 + $argent_def * $gain_or;
// pertes du défenseur
$perte_or = min($argent_def, floor($or_base * $bonus_raz07_att['or'] * $coef_destruction * $coef_taille_armee_att));
// gains de l'attaquant
$gain_or = min($argent_def, floor($or_base * $bonus_raz07_att['or'] * $coef_xp_lvl_att * $coef_pa_att * $coef_pourc_armee_att * $coef_taille_armee_att));
if ($gain_or > $perte_or) {
	$perte_or = $gain_or;
}
// Récupération or sur les cadavres
$recup_or_att = floor(($or_recup_att + 0.3 * $or_recup_def) * $coef_pa_att * $coef_force_armee_att * $coef_xp_lvl_att);
$recup_or_def = floor((0.7 * $or_recup_def) * $coef_xp_lvl_def * $coef_pa_def * $coef_force_armee_def);

$or_total = $argent_att + $gain_or + $recup_or_att + $gain_or_win_streak;
$or_cible = $argent_def - $perte_or + $recup_or_def;        // ce que possède la cible après le combat


// Rapport : or et acres gagnés/perdus
// $k = $conquis + $ajout;
$k = $conquis;
if ($tactique == 'conquete') {	
	echo 'Au cours de votre attaque, vous êtes parvenus à conquérir <strong>'.$gain_terre.' acres de terre</strong>,<br>ainsi qu\'à dérober <strong>'.$gain_or.' pièces d\'or</strong> à votre adversaire. Vous récupérez l\'équivalent de '.$recup_or_att.' pièces d\'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br>';
	$message1.= 'Au cours de votre attaque, vous êtes parvenus à conquérir <strong>'.$gain_terre.' acres de terre</strong>, ainsi qu\'à dérober <strong>'.$gain_or." pièces d'or</strong> à votre adversaire. Vous récupérez l'équivalent de $recup_or_att pièces d'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br />";
	$message.="Vous cédez aux mains de l'ennemi près de <strong>".$perte_terre." acres de terre</strong>, ainsi que plus ou moins <strong>".$perte_or." pièces d'or</strong>. Vous récupérez l'équivalent de $recup_or_def pièces d'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br />";
} else {
	echo 'Au cours de votre attaque, vous êtes parvenus à détruire <strong>'.$perte_terre.' acres de terre</strong>,<br>ainsi qu\'à dérober <strong>'.$gain_or.' pièces d\'or</strong> à votre adversaire. Vous récupérez l\'équivalent de '.$recup_or_att.' pièces d\'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br>';
	$message1.= 'Au cours de votre attaque, vous êtes parvenus à détruire <strong>'.$perte_terre.' acres de terre</strong>, ainsi qu\'à dérober <strong>'.$gain_or." pièces d'or</strong> à votre adversaire. Vous récupérez l'équivalent de $recup_or_att pièces d'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br />";
	$message.="L'ennemi détruit près de <strong>".$perte_terre." acres de vos terres</strong>, et vous dérobe <strong>".$perte_or." pièces d'or</strong>. Vous récupérez l'équivalent de $recup_or_def pièces d'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br />";
}

if ($gain_or_win_streak) {
	echo "Mettant fin à la série de victoires de votre adversaire, vous remportez $gain_or_win_streak pièces d'or supplémentaires.<br>";
	$message1.="Mettant fin à la série de victoires de votre adversaire, vous remportez $gain_or_win_streak pièces d'or supplémentaires.<br>";
	$message.="Mettant fin à votre série de victoires, votre adversaire remporte $gain_or_win_streak pièces d'or supplémentaires.<br>";
}

echo '<br>';
$message1.= "<br />";
$message .= "<br />";

// Rapport : mercenariat
$sql_merce = "SELECT prime, commanditaire_reel FROM mise_a_prix WHERE cible='$cible' AND termine='0' AND `tempsactif` < '$temps'";
$res_merce = mysql_query($sql_merce) or die(mysql_error());
$num_merce = mysql_num_rows($res_merce);
$mercenariat = 0;
if($num_merce != 0)
{
	$data = mysql_fetch_array($res_merce);
	$prime = $data['prime'];
	$commanditaire = $data['commanditaire_reel'];
	
	$res = mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '$nom' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($res);
	$armadanom = $data[0];
	$res = mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '$commanditaire' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($res);
	$armadacomm = $data[0];
	
	$sql = "SELECT id_compte FROM joueurs_heros WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$id_nom = $data[0];
	$sql = "SELECT id_compte FROM joueurs_heros WHERE nom = '$commanditaire'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		$id_comm = $data[0];
	else	$id_comm ='';
	
	if (($nom != $commanditaire) && (($armadanom != $armadacomm) || ($armadanom == 'Aucune')) && ($id_nom != $id_comm))
	{
		echo 'La tête de '.$cible.' était mise à prix. Grâce à ce contrat vous empochez une prime de <b>'.$prime.'</b> pièces d\'or.<br>';
		$message1.= 'La tête de '.$cible.' était mise à prix. Grâce à ce contrat vous empochez une prime de <b>'.$prime.'</b> pièces d\'or.<br>';
		$message .= "Votre tête était mise à prix. La victoire de votre assaillant lui a rapporté $prime pièces d'or.\n\n";
		
		$sql = "UPDATE mise_a_prix SET termine='1', mercenaire='$nom', `tempsfin` = '$temps' WHERE cible='$cible' AND termine='0'";
		mysql_query($sql) or die(mysql_error());
		
		$or_total = $or_total + $prime;
		$sql = 'UPDATE `joueurs_stats` SET `argent` = `argent` + "'.$prime.'" WHERE nom = "'.$nom.'"';
		$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$mercenariat = 1;
	}
}

// Mise à jour xp et or dans la base
$sql = "UPDATE `joueurs_stats` SET `xp` = `xp` + '".$xp_gain1."', `argent` = '".$or_total."' WHERE nom = '".$nom."'";
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = "UPDATE `joueurs_stats` SET `xp` = `xp` + '".$xp_gain2."', `argent` = '".$or_cible."' WHERE nom = '".$cible."'";
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

// Rapport d'archives
if ($xp_gain1 > 0) 
{
	echo '<strong>Cette glorieuse victoire vous donne '.$xp_gain1.' points d\'expérience !</strong><br>';
	$message1.= 'Cette glorieuse victoire vous donne '.$xp_gain1." points d'expérience !<br /><br />";
}
if ($xp_gain2 > 0)
	$message .= "Malgré votre défaite, vous méritez $xp_gain2 points d'expérience.<br /><br />";
   
$texte1.='Grâce à votre savoir-faire, votre entreprise se solde par une glorieuse victoire !<br>';
if ($h != "")
	$texte1.='Vous parvenez à détruire les <b>'.$h.'</b> de l`ennemi.<br>';
$texte1.='Vous mettez la main sur <b>'.$pop_gonfle_tot.'</b> prisonniers et <b>'.$pop_rejoint_tot.'</b> villageois</b>.<br>';
$texte1.='Vous remportez <b>'.$gain_or.' pièces d`or</b>. Vous récupérez l\'équivalent de '.$recup_or_att.' pièces d\'or sur les cadavres du champ de bataille.<br>';
if ($tactique == 'conquete') {
	$texte1.='Vous remportez <b>'.$gain_terre.' acres de terre vierge</b>.<br>';
} else {
	$texte1.='Vous détruisez <b>'.$gain_terre.' acres de terre</b>.<br>';
}
if ($xp_gain1 > 0)
	$texte1.='Vous méritez <b>'.$xp_gain1.' points d`expérience</b>.<br>';
if ($mercenariat == 1)
	$texte1.='La tête de votre adversaire était mise à prix. Grâce à ce contrat vous empochez une prime de '.$prime.' pièces d`or.';  

$texte2.='Malgré tous les efforts déployés, vous ne pouvez qu`admettre la défaite...<br>';
if ($h != "")
	$texte2.='L`ennemi parvient à détruire vos <b>'.$h.'</b>.<br>';
$texte2.='Vous perdez aux mains de l`ennemi près de <b>'.$pop_conquise.' villageois</b>.<br>';
$texte2.=$nom.' parvient à vous soutirer près de <b>'.$perte_or.' pièces d`or</b>.<br>';
$texte2.='L`ennemi parvient à mettre la main sur <b>'.$perte_terre.' acres de vos terres</b>. Vous récupérez l\'équivalent de '.$recup_or_def.' pièces d\'or sur les cadavres du champ de bataille.<br>';
if ($xp_gain2 > 0)
	$texte2.='Malgré tout, vous méritez <b>'.$xp_gain2.' points d`expérience</b>.<br>';
if ($mercenariat == 1)
	$texte2.='Votre tête était mise à prix. Grâce à ce contrat l`adversaire empoche une prime de '.$prime.' pièces d`or.';


?>
