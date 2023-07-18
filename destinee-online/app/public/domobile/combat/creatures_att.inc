<?php

$nb_plante = 0;
$total_bonus = 0;
$gros_pvstotal_att = 0;
$pvs_melee_att = 0;
$brouillard_noms_att = '';
if ($special_ermite2) {
	$pvs_type_ermite2 = array();
}

$creats_stats = mysql_query($sql_creats_stats) or die('Erreur SQL !<br>'.$sql_creats_stats.'<br>'.mysql_error());
while ($creat_stats = mysql_fetch_assoc($creats_stats))
{
	$polymorphee = false;
	$id = $creat_stats['id'];
	$qtee = $creatures_att[$id];
	$morts_animes = ($creat_stats['nom'] == $creas_invoc_liste['MortsAnimes']);
	if ($qtee == 0.1) {
		$polymorphee = true;
		$qtee = 0;
		$creatures_att[$id] = 0;
	}

	if ($qtee > 0 || $morts_animes || $polymorphee)
	{
		$env = min(100, max(0, $_POST[$id]));
		if (isset($_POST['tout']))
			$env = 100;
		$env = ceil($qtee*$env/100);

		if ($env > 0 || $morts_animes || $polymorphee)
		{
			$id_creature = $creat_stats['id'];
			$nom_creature = $creat_stats['nom'];
			if ($illus_att[$id] > 0) {
				$nom_creature .= ' illusoires';
			}
			$type = $illus_att[$id] > 0 ? 'Éthéré' : $creat_stats['type'];
			$niv_crea = $creat_stats['niveau'];
			$a_att_mag[$z] = $illus_att[$id] > 0 ? 1 : $creat_stats['att_mag'];
			$a_raciale[$z] = $creat_stats['raciale'];
			$a_bgh[$z] = $creat_stats['bgh'];

			$a_typ[$z] = $type;

			// Sort spécial du samouraï: Lame Rasoir
			if ($special_samourai2) {
				$creat_stats['def'] /= 2;
			}

			// Soldats d'élite de Maon: on augmente une carac au hasard
			if ($nom_creature == "Soldats d'élite de Maon") {
				switch (mt_rand(0,3)) {
					case 0:
						$soldat_stat_boostee = 'force';
						$creat_stats['att'] *= 2;
						break;
					case 1:
						$soldat_stat_boostee = 'défense';
						$creat_stats['def'] *= 2;
						break;
					case 2:
						$soldat_stat_boostee = 'vitesse';
						$creat_stats['ini'] *= 2;
						break;
					case 3:
						$soldat_stat_boostee = 'endurance';
						$creat_stats['end'] *= 2;
						break;
				}
				echo '<img src="/images/creatures/speciales/soldat_elite_maon.png" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Entraînement acharné :</strong> Vos '.$nom_creature.' font preuve d\'une '.$soldat_stat_boostee.' hors du commun !</small></span><br>';
				$message1 .= '<img src="http://www.destinee-online.com/images/creatures/speciales/soldat_elite_maon.png" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Entraînement acharné :</strong> Vos '.$nom_creature.' font preuve d\'une '.$soldat_stat_boostee.' hors du commun !</small></span><br>';
				$message .= '<img src="http://www.destinee-online.com/images/creatures/speciales/soldat_elite_maon.png" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Entraînement acharné :</strong> Les '.$nom_creature.' de votre adversaire font preuve d\'une '.$soldat_stat_boostee.' hors du commun !</small></span><br>';
			}

			// Si la créature est Raciale, on la boost avec les max (endurance, défense), (puissance, attaque)
			// Idem intuition nécrotique mais juste sur def et endu
			if ($a_raciale[$z] == 1)
			{
				$a_att[$z] = $creat_stats['att'] + max( round($att_att/6), round($pui_att/6) );
				$a_def[$z] = round($creat_stats['def'] + max( $def_att/6, $end_att/6 ));
				$a_end[$z] = $creat_stats['end'] + max( round($def_att/6), round($end_att/6) );
			}
			else
			{
				$a_def[$z] = round($creat_stats['def'] + $def_att/6);
				$a_end[$z] = $creat_stats['end'] + round($end_att/6);
				// attaque magique ou physique
				if ($a_att_mag[$z] == 1) {
					$a_att[$z] = $creat_stats['att'] + round($pui_att/6);
				} else {
					$a_att[$z] = $creat_stats['att'] + round($att_att/6);
				}
			}
			$a_niv[$z] = $creat_stats['niveau'];
			$a_ini[$z] = $creat_stats['ini'] + round($ini_att/6);
			$a_pvs[$z] = $creat_stats['pvs'];
			$a_pvs_nonmod[$z] = $creat_stats['pvs'];
			$pvs = $creat_stats['pvs'];
			$a_min[$z] = $illus_att[$id] > 0 ? 0 : $creat_stats['min'];
			$a_max[$z] = $illus_att[$id] > 0 ? 0 : $creat_stats['max'];
			$a_vol[$z] = $creat_stats['vol'];
			$a_flm[$z] = 0;
			$a_flm2[$z] = 0;

			// Petit trick pour que les créas polymorphées aient le même niveau que l'originale
			if (in_array($nom_creature, $creas_polymorph_liste)) {
				foreach ($poly_att as $orig_id => $donnees_poly) {
					if ($id_creature == $donnees_poly[1]) {
						// Pour le cas où on a des créas morphées de plusieurs niveaux différents, on prend le plus haut
						if ($a_niv[$z] < $donnees_poly[2])
							$a_niv[$z] = $donnees_poly[2];
					}
				}
				$niv_crea = $a_niv[$z];
				echo "La créature polymorphée $nom_creature a un niveau de $niv_crea <br>";
			}

			$niv_crea = $a_niv[$z];

			// Les créatures invoquées ne sont pas prises en compte dans le total des pvs par niveau de créature
			if ($a_max[$z] > 0 && !in_array($nom_creature, $creas_invoc_liste)) {
				$pvstotal_par_niv_att[$niv_crea] += $pvs*$qtee;
			}


			$a_ran[$z] = $creat_stats['range'];

			// Croissance accélérée (sort niv. 4 de Druide)
			if (($type == 'Animal' || $type == 'Vermine' || $type == 'Reptile') AND $croissance_acceleree)
			{
				$_bonus_pvs = round($creat_stats['pvs']*mt_rand(1,20)/100);

				$a_att[$z] += mt_rand(1,20);
				$a_def[$z] += mt_rand(1,20);
				$a_ini[$z] += mt_rand(1,20);
				$a_end[$z] += mt_rand(1,20);
				$a_pvs[$z] += $_bonus_pvs;
				$pvs = $a_pvs[$z];

			}
			// Protection divine (sort niv. 4 de Prêtre)
			if ($protection_divine)
			{
				$_bonus_pvs = round($creat_stats['pvs']*mt_rand(1,20)/100);

				$a_def[$z] += mt_rand(1,30);
				$a_end[$z] += mt_rand(1,30);
				$a_pvs[$z] += $_bonus_pvs;
				$pvs = $a_pvs[$z];
			}
			// Brouillard de guerre (Shaman niv. 4)
			if (($brouillard || $brouillard2) && (($a_ran[$z] > 0) || $a_vol[$z] > 0) && !$morts_animes && !$polymorphee)
			{
				if (mt_rand(1,100) <= 70)
				{
					if ($a_ran[$z] == 1)
						$a_ran[$z] = 2;
					if ($a_vol[$z] == 1)
						$a_vol[$z] = 2;
					$brouillard_noms_att .= $nom_creature.', ';
				}
			}

			// APTITUDE INGENIOSITE
			if ($type == 'Construction' && $ingenio_att > 0)
			{
				if ($ingenio_att_trait) {
					$pvs += floor($pvs * $bonus_ingenio_att);
					$a_pvs[$z] = $pvs;
				} else {
					$a_min[$z] += floor($a_min[$z] * $bonus_ingenio_att);
					$a_max[$z] += floor($a_max[$z] * $bonus_ingenio_att);
				}
			}

			$pvstotal = $pvs * $env;
			$gros_pvstotal_att += $pvstotal;
			$a_[$z] = $id;
			$a_id[$z] = $nom_creature;
			$a_qte[$z] = $env;
			$a_env[$z] = $env;
			$a_fui[$z] = 0;
			$a_pvstotal[$z] = $pvstotal;

			// Étude de la Morphologie
			if ($special_ermite2) {
				$pvs_type_ermite2[$type] += $pvstotal;
			}

			// On compte les pvs de melee pour Charge Meurtrière
			if ($a_ran[$z] == 0) {
				$pvs_melee_att += $pvstotal;
			}

			// On retient le stack correspondant aux morts-animés
			if ($morts_animes) {
				$morts = $z;
			}

			$z++;
		}
	}
}
if($croissance_acceleree)
{
	echo '<img src="images/sorts/croissanceacceleree.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Croissance accélérée a été lancé avec succès :</b></span><br> vos animaux, reptiles et vermines grossissent à vue d\'oeil.<br />';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/croissanceacceleree.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Croissance accélérée a été lancé avec succès :</b></span><br /> vos animaux, reptiles et vermines grossissent à vue d\'oeil.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/croissanceacceleree.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Croissance accélérée a été lancé avec succès :</b></span><br /> les animaux, reptiles et vermines de votre adversaire grossissent à vue d\'oeil.<br />';
}
if($special_rodeur)
{
	echo '<img src="images/sorts/spe_rodeur.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Esprit des bois a été lancé avec succès :</b></span><br> vous puisez dans la nature la force de terrasser vos plus redoutables adversaires.<br />';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/spe_rodeur.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Esprit des bois a été lancé avec succès :</b></span><br> vous puisez dans la nature la force de terrasser vos plus redoutables adversaires.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/spe_rodeur.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Esprit des bois a été lancé avec succès :</b></span><br> votre adversaire est aidé lors des frappes les plus difficiles.<br />';
}
if($protection_divine)
{
	echo '<img src="images/sorts/protectiondivine.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Protection divine a été lancé avec succès :</b></span><br> vos créatures sont plus robustes.<br />';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/protectiondivine.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Protection divine a été lancé avec succès :</b></span><br> vos créatures sont plus robustes.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/protectiondivine.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Protection divine a été lancé avec succès :</b></span><br /> les créatures de votre adversaire sont plus robustes.<br />';
}
if ($special_ermite2) {
	asort($pvs_type_ermite2);
	end($pvs_type_ermite2);
	$type_ermite2 = key($pvs_type_ermite2);
	echo '<img src="images/sorts/special/morphologie.png" width="20px" height="20px" align="center" border=1></a><span style="color:#B31141;"><b> Le sort Étude de la Morphologie a été lancé avec succès :</b></span><br /> Votre adversaire frappe vos '.$type_ermite2.' sur leurs points faibles.<br />';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/special/morphologie.png" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Étude de la Morphologie a été lancé avec succès :</b></span><br /> Votre adversaire frappe vos '.$type_ermite2.' sur leurs points faibles.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/special/morphologie.png" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Étude de la Morphologie a été lancé avec succès :</b></span><br> Vous frappez les '.$type_ermite2.' adverses sur leurs points faibles.<br />';
}

$gros_pvstotal_env = $gros_pvstotal_att;

if ($brouillard || $brouillard2) {
	if ($brouillard_noms_att != '') {
		$brouillard_noms_att = substr($brouillard_noms_att, 0, strlen($brouillard_noms_att) - 2).' de '.$nom;
	}
}

$pvscourant_att = $gros_pvstotal_att;

?>
