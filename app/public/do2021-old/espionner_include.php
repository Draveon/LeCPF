<?php

// je met le rapport d'espionnage dans sune fonction car il est utilisé à deux endroits: pour l'espionnage, mais aussi pour l'interrogatoire des espions capturés
function espionnage($nom, $cible, $espionnage)
{
	global $temps, $date, $jmasques, $temps_ecoulement;

	include_once ('maj_or_mana.php');
	maj_or_mana($cible);	
	
	$terrains = array('', '', "Riverain", "Colline", "Désert", "Forêt", "Arctique", "Marais", "Montagne", "Plaine", "Caverne");
	
	$sql = 'SELECT race, classe, dieu, titre, royaume, avatar FROM joueurs_heros WHERE nom = "'.$cible.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data2 = mysql_fetch_row($req);
	$rac_		= $data2[0];
	$class_		= $data2[1];
	$die_		= $data2[2];
	$titr_		= $data2[3];
	$royaum_	= $data2[4];
	$avatar = $data2[5];
	
	$sql = "SELECT guilde, offensive, defensive, victoire, défaite, politique, province FROM joueurs_bonus WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$alliance_c	= $data[0];
	$offensive_c	= $data[1];
	$defensive_c	= $data[2];
	$victoire_c	= $data[3];
	$defaite_c	= $data[4];
	$politique_c	= $data[5];
	$province_c	= $data[6];
	
	// infos sur les terrains
	$terres_c = array();
	$terres_c['occ'] = array();
	$terres_c['lib'] = array();
	$terres_c['tot'] = array();
	$type_disp = array('occ' => 'occupées', 'lib' => 'libres', 'tot' => 'totales');
	$sql = "SELECT riverain, colline, désert, forêt, arctique, marais, montagne, plaine, caverne, total FROM joueurs_terre WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$terres_c['tot'] = mysql_fetch_assoc($req);
	$terre_total_c = $terres_c['tot']['total'];
	$sql = "SELECT riverain, colline, désert, forêt, arctique, marais, montagne, plaine, caverne, total FROM joueurs_terre_utile WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$terres_c['occ'] = mysql_fetch_assoc($req);
	$terre2_c = $terre_total_c - $terres_c['occ']['total'];
	$max_terrain = array();
	$max = array();
	$max['occ'] = 0;
	$max['lib'] = 0;
	$max['tot'] = 0;
	foreach ($terres_c['tot'] AS $terrain => $nbr)
	{
		$terres_c['lib'][$terrain] = $nbr - $terres_c['occ'][$terrain];
		foreach ($max AS $sorte => $maxact)
		{
			if (($terres_c[$sorte][$terrain] > $maxact) && ($terrain != 'total'))
			{
				$max[$sorte] = $terres_c[$sorte][$terrain];
				$max_terrain[$sorte] = $terrain;
			}
		}
	}
	
	// Infos sur le dôme de protection
	$sql = "SELECT `affaibli` FROM joueurs_combat WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$affaibli	= $data[0];
	
	// infos sur les bâtiments
	$sql = "SELECT * FROM joueurs_batiments_id WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$batiments_c = mysql_fetch_assoc($req);
	$bati_data = array();
	$sql = "SELECT nom AS creat, batiment AS bat, id FROM creatures";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_assoc($req))
	{
		$bati_data[$data['id']]['bat'] = $data['bat'];
		$bati_data[$data['id']]['creat'] = (($data['creat']!='N/A')&&($data['creat']!='')) ? '('.$data['creat'].')' : '';
	}
	
	// infos sur les objets dans l'inventaire ou équipés
	$sql = "SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$obj_equ_c = mysql_fetch_assoc($req);
	
	// infos sur les bats spé
	include ('batimentspec_include.php');
	$req = mysql_query("SELECT * FROM `$tableBatJoueurs` WHERE `nom` = '$cible'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$batSpeConstr = array();
	$j = 1;
	while (isset($data[$j]))
	{
		$batSpeConstr[$j] = $data[$j];
		$j++;
	}
	
	// joueurs_stats
	$sql = "SELECT niveau, argent, mana, puissance, soufre, mercure, cristal, gemme, win_streak FROM joueurs_stats WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau_c	= $data[0];
	$argent_c	= $data[1];
	$mana_c	= $data[2];
	$puissance_c = $data[3];
	$ressource_c['soufres'] = $data[4];
	$ressource_c['mercures'] = $data[5];
	$ressource_c['cristaux'] = $data[6];
	$ressource_c['gemmes'] = $data[7];
	$richesse_c = number_format($argent_c, 0, ",", " ").' pièces d`or';
	$prime_or_win_streak = $data[8] < 1 ? 0 : round(7000 * pow(1.5, $data[8]) * (1 + $niveau_c * 0.05));
	$prime_or_win_streak = number_format($prime_or_win_streak, 0, ",", " ").' pièces d`or';
	
	$sql = "SELECT id FROM joueurs_stats WHERE puissance > '$puissance_c' $jmasques";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$rang = mysql_num_rows($req) + 1;

	
	$sql = "SELECT * FROM joueurs_créatures WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$creatures_c = array();
	$n = 0;
	for ($i=1; $i<399; $i++)
		if (isset($data[$i]))
			if ($data[$i]>0)
			{
				$sql2 = "SELECT nom, niveau FROM creatures WHERE id = '$i'";
				$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
				$dat2 = mysql_fetch_row($req2);
				$creatures_c[$n][0] = $dat2[0];
				$creatures_c[$n][1] = $data[$i];
				$creatures_c[$n][2] = $dat2[1];
				$n++;
			}
	
	// Sorts incantés
	$sql = "SELECT * FROM joueurs_magies WHERE nom = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$sorts_c = array();
	$n = 0;
	for ($i=1; $i<199; $i++)
	{
		if ((isset($data[$i])) && ($data[$i] > 0))
		{
			$sql2 = "SELECT nom, niveau FROM magies_liste WHERE id = '$i'";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
			$dat2 = mysql_fetch_row($req2);
			$sorts_c[$n][0] = $dat2[0];
			$sorts_c[$n][1] = $dat2[1];
			$n++;
		}
	}
	$nbr_sorts = $n;

	// Pourcentage de terres libres
	$pour3 = round(($terre2_c/$terre_total_c)*100);
	
	// liste des contrats que la cible a sur sa pomme
	$mercenCible = array();
	$sql = "SELECT commanditaire, prime FROM mise_a_prix WHERE termine = '0' AND `cible` = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
		$mercenCible[] = $data;
	// liste des contrats que la cible a lancés publiquement
	$mercenCommand = array();
	$sql = "SELECT cible, prime FROM mise_a_prix WHERE termine = '0' AND `commanditaire` = '$cible'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
		$mercenCommand[] = $data;
	// liste des contrats anonymes que la cible a lancés
	$mercenCommandR = array();
	$sql = "SELECT cible, prime FROM mise_a_prix WHERE termine = '0' AND `commanditaire_reel` = '$cible' AND `commanditaire_reel` != `commanditaire`";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
		$mercenCommandR[] = $data;
	
	// on a toutes les infos voulues, on peut rédiger le rapport et les comptes rendu pour les archives	
	$echo		= '';
	$rapport_off	= 'Rapport d\\\'espionnage: '.$cible.' '.$royaum_.'<br>';

	$introduction = '<b>Votre espion parvient à obtenir des informations !</b><br><br>';
	if ($espionnage == 1000) {
		$introduction = '';
		$rapport_off  = 'Profil du compte: '.$cible.' '.$royaum_.' ('.str_replace('<br>', ', ', $date).')<br>';
	}
	
	$echo .= '<center>'.$introduction.'
		<table style="width: 561px; text-align: center;" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
		<td style="width: 100%; height: 30px; text-align: center; background-image: URL(/images/parcheminhaut.gif);">
		</td></tr><tr><td style="width: 100%; text-align: center; background-image: URL(/images/parchemin.gif); padding: 0px 20px;">';
	$echo .= '<br><b><font size=+1><span style=\'font-family: papyrus;\'>'.$cible.', '.$titr_.' '.$royaum_.'</span></font></b><br>'.$rac_.', '.$class_.', '.$die_.'<br>'.($victoire_c+$defaite_c).' combats, niveau '.$niveau_c.', puissance '.number_format($puissance_c, 0, ",", ",").' ('.$rang.')<br><br>
		<img src="'.$avatar.'" alt="'.$cible.'" width="100px" height="100px" border="1"><br><br>';
		
	$echo .= 	'Alliances & Guildes : <b>'.$alliance_c.'</b><br><br>';
	$rapport_off .= $rac_.', '.$class_.', '.$die_.', '.($victoire_c+$defaite_c).' combats, niveau '.$niveau_c.', puissance '.number_format($puissance_c, 0, ",", ",").' ('.$rang.'), armada: '.$alliance_c.'<br>';

	if ($espionnage < 0) {
		$echo .= 'Aucune information exploitable.';
		$rapport_off .= 'Aucune information exploitable.';
		$echo .= '<br>';
	} else {
		// VICTOIRES / DEFAITES
		$echo .=	'Nombre de victoires : <b>'				. $victoire_c.'</b><br>Nombre de défaites : <b>'				. $defaite_c.'</b><br>';
		$rapport_off .= 'Nombre de victoires : <b>'				. $victoire_c.'</b><br>Nombre de défaites : <b>'				. $defaite_c.'</b><br>';
		$echo .= '<br>';
		
		// OR
		$echo .=	'Richesse: <b>'			. $richesse_c	.'</b><br>';
		$rapport_off .= 'Richesse: <b>'			. $richesse_c	.'</b><br>';
		
		// PRIME POUR WIN STREAK
		$echo .= 'Prime: <b>' . $prime_or_win_streak . '</b><br>';
		$rapport_off .= 'Prime: <b>' . $prime_or_win_streak . '</b><br>';
		
		if ($espionnage > 29) {
			// MANA
			$echo .=	'Mana: <b>'						. $mana_c.'</b><br>';
			$rapport_off .= 'Mana: <b>'						. $mana_c.'</b><br>';
			// RESSOURCES
			$rapport_res = '';
			$echo .= 'Ressources en minerai: ';
			$rapport_off .= 'Ressources en minerai: ';
			foreach ($ressource_c AS $type => $nbr)
			{
				$rapport_res .= '<b>'.$nbr.' '.$type.'</b>, ';
			}
			$echo .= substr($rapport_res,0,strlen($rapport_res)-2).'.<br>';
			$rapport_off .= substr($rapport_res,0,strlen($rapport_res)-2).'.<br>';
			
		}
		$echo .= '<br>';
		
		// CRÉATURES
		$niv_crea_max_esp = min(6, 1 + $espionnage / 24);
		$rapport_cre = '';
		for ($niv_crea=0; $niv_crea<=$niv_crea_max_esp; $niv_crea++) {
			for ($i=0; $i<sizeof($creatures_c);$i++)
			{
				if ($creatures_c[$i][2] == $niv_crea) {
					$echo .= 	'Votre espion a découvert <b>'.$creatures_c[$i][1].' '.$creatures_c[$i][0].'</b><br>';
					$rapport_cre .= '<b>'.$creatures_c[$i][1].' '.$creatures_c[$i][0].'</b>, ';
				}
			}
			if (strlen($rapport_cre)>0) {
				$rapport_off .= 'Votre espion a découvert '.substr($rapport_cre,0,strlen($rapport_cre)-2).'<br>'."\n";
				$rapport_cre = '';
			}
		}
		$echo .= '<br>';
		
		// SORTS INCANTÉS
		$rapport_sor = '';
		$niv_sort_max_esp = min(5, $espionnage / 24);
		for ($niv_sort=0; $niv_sort<=$niv_sort_max_esp; $niv_sort++) {
			for ($i=0; $i<sizeof($sorts_c);$i++)
			{
				if ($sorts_c[$i][1] == $niv_sort) {
					$echo .= 	'Le sort <b>'.$sorts_c[$i][0].'</b> est incanté !<br>';
					$rapport_sor .= '<b>'.$sorts_c[$i][0].'</b>, ';
				}
			}
			if (strlen($rapport_sor)>0) {
				$rapport_off .= 'Les sorts '.substr($rapport_sor,0,strlen($rapport_sor)-2).' sont incantés!<br>'."\n";
				$rapport_sor = '';
			}
		}
		$echo .= '<br>';
		
		if ($espionnage > 59) {
			// BATIMENTS SPÉCIAUX
			foreach ($batSpeConstr AS $batid => $construit)
			{
				if (is_numeric($batid) && $construit)
				{
					$echo .=	'Le bâtiment spécial <b>'.$batspe[$batid]['nom'].'</b> a été repéré.<br>';
					$rapport_off .= 'Le bâtiment spécial <b>'.$batspe[$batid]['nom'].'</b> a été repéré.<br>';
				}
			}
		}

		if ($espionnage > 89) {
			// OBJETS
			$rapport_obj = '';
			foreach ($obj_equ_c AS $emp => $item)
			{
				if ($item) {
					include_once ('info_objets_include.php');
					$obj_data = retourne_carac_display_objet($item);
					$rapport_obj .= '<b>'.$obj_data['nom'].'</b>, ';
				}
			}
			if (strlen($rapport_obj)>0)
			{
				$echo .=	'Votre espion a vu les objets suivants équipés : '.substr($rapport_obj,0,strlen($rapport_obj)-2).'<br>';
				$rapport_off .= 'Les objets suivants sont équipés : '.substr($rapport_obj,0,strlen($rapport_obj)-2).'<br>'."\n";
			}
			$echo .= '<br>';
		}
		
		if ($espionnage > 119) {			
			// STRATEGIES
			$echo .=	'Retraite offensive : <b>'				. $offensive_c.' %</b><br>';
			$rapport_off .= 'Retraite offensive : <b>'				. $offensive_c.' %</b><br>';
			$echo .=	'Retraite défensive : <b>'				. $defensive_c.' %</b><br>';
			$rapport_off .= 'Retraite défensive : <b>'				. $defensive_c.' %</b><br>';
			
			// DOME DE PROTECTION
			if ($affaibli > $temps) {
				$temps_restant = ($affaibli - $temps);
				$heures_restantes = floor(($temps_restant /60) %24);	
				$minutes_restantes = floor( $temps_restant %60 );
				$echo .= 'Temps restant sur le dôme de protection: '.$heures_restantes.' heures et '.$minutes_restantes.' minutes.<br>';
				$rapport_off .= 'Temps restant sur le dôme de protection: '.$heures_restantes.' heures et '.$minutes_restantes.' minutes.<br>';
			}
		}

		// TERRES LIBRES
		$echo .=	'Pourcentage de terres libres : <b>'			. $pour3	.' %</b><br>';
		$rapport_off .= 'Pourcentage de terres libres : <b>'			. $pour3	.' %</b><br>';
		
		// AUTO ESPIONNAGE TERRES ET BATIMENTS
		if ($espionnage == 1000) {
			$echo .=	'Type de terrain principal : <b>'			. $max_terrain['tot'] 	.'</b><br>';
			$rapport_off .= 'Type de terrain principal : <b>'			. $max_terrain['tot'] 	.'</b><br>';
			$echo .=	'Terrain inutilisé principal : <b>'			. $max_terrain['lib'] 	.'</b><br>';
			$rapport_off .= 'Terrain inutilisé principal : <b>'			. $max_terrain['lib']	.'</b><br>';
			// terres totales
			foreach ($terres_c AS $index => $type)
			{
				$echo .=	'Nombre d\'acres '.$type_disp[$index].' : <b>'	. number_format($type['total'], 0, ",", " ").'</b><br>';
				$rapport_off .=	'Acres '.$type_disp[$index].' : <b>'		. number_format($type['total'], 0, ",", " ").'</b><br>';
			}
			
			// terres détaillées
			foreach ($type AS $sorte => $tmp)
			{
				$rapport_terre = '';
				foreach ($terres_c AS $index => $typ_)
				{
					if ($sorte!='total')
					{
						$nbr = $typ_[$sorte];
						$rapport_terre .= ', <b>'.number_format($nbr, 0, ",", " ").'</b> acres '.$type_disp[$index];
					}
				}
				if ($rapport_terre != '')
				{
					$echo .=	'Terrain <b>'.$sorte.'</b>: '.substr($rapport_terre,2).'.<br>';
					$rapport_off .= 'Terrain <b>'.$sorte.'</b>: '.substr($rapport_terre,2).".<br>\n";
				}
				// bâtiments
				$rapport_bat = '';
				foreach ($batiments_c AS $batid => $terrain)
				{
					if (strtolower($terrain) == $sorte)
					{
						if ($bati_data[$batid]['creat'] != '')	$rapport_bat .= ', '.$bati_data[$batid]['bat'].' <b>'.$bati_data[$batid]['creat'].'</b>';
						else					$rapport_bat .= ', <b>'.$bati_data[$batid]['bat'].'</b>';
					}
				}
				if ($rapport_bat != '')
				{
					$echo .=	'Bâtiments construits en <b>'.$sorte.'</b>: '.substr($rapport_bat,2).'.<br>';
					$rapport_off .= 'Bâtiments construits en <b>'.$sorte.'</b>: '.substr($rapport_bat,2).".<br>\n";
				}
			}
			$echo .= '<br>';
		}
		
		// MERCENARIAT
		foreach ($mercenCible AS $merce)
		{
			$merce[0] = ($merce[0]=='Anonyme') ? '' : 'par '.$merce[0].' ';
			$echo .=	'La tête de '.$cible.' a été mise à prix '.$merce[0].' pour <b>'	. number_format($merce[1], 0, ",", " ").'</b> pièces d\'or.<br>';
			$rapport_off .= $cible.' est mis à prix pour <b>'					. number_format($merce[1], 0, ",", " ").'</b> pièces d\'or.<br>';
		}
		foreach ($mercenCommand AS $merce)
		{
			$echo .=	$cible.' a mis la tête de '.$merce[0].' à prix pour <b>'. number_format($merce[1], 0, ",", " ").'</b> pièces d\'or.<br>';
			$rapport_off .= 'Prime offerte sur la tête de '.$merce[0].' : <b>'	. number_format($merce[1], 0, ",", " ").'</b> pièces d\'or.<br>';
		}
		foreach ($mercenCommandR AS $merce)
		{
			$echo .=	'Anonymement, '.$cible.' a mis la tête de '.$merce[0].' à prix pour <b>'. number_format($merce[1], 0, ",", " ").'</b> pièces d\'or.<br>';
			$rapport_off .= 'Prime offerte de façon anonyme sur la tête de '.$merce[0].' : <b>'	. number_format($merce[1], 0, ",", " ").'</b> pièces d\'or.<br>';
		}
		$echo .= '<br>';
			
			
		$echo .= '</td></tr><tr><td style="width: 100%; height: 30px; text-align: center; background-image: URL(/images/parcheminbas.gif);"></td></tr></tbody></table>';
		
		
		
		if ($espionnage == 1000)	// autoespionnage
		{
			$espi = array('Votre espion a découvert', 'Votre espion a vu', 'Votre espion a aperçu', 'a été repéré');
			$auto = array('Vous possédez', 'Vous possédez', 'Vous possédez', 'est construit');
			$echo = str_replace($espi, $auto, $echo);
			$rapport_off = str_replace($espi, $auto, $rapport_off);
		}
	}
	echo $echo;
	$rapport_off = addslashes(stripslashes($rapport_off));
	$sql = "INSERT INTO `combat_joueurs` (`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`) VALUES ('', '$nom', '$nom', '$temps', 'Espionnage', '$date', '$rapport_off', '$rapport_off');";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

?>
