<?php
 // error_reporting(-1); // reports all errors
 // ini_set("display_errors", "1"); // shows all errors
 // ini_set("log_errors", 1);
 // ini_set("error_log", "/tmp/php-error.log");
// Sabotage: se déclenche si le défenseur devait perdre ou si sa victoire serait trop just
if ($sabotage_on && (($gagnant == $nom) || ($pvstotal_att / $gros_pvstotal_att) * 1.33 > ($pvstotal_def / $gros_pvstotal_def))) {
	$bonus_or_sabo = $niveau_att * 1000;
	$bonus_xp_sabo = (($pvstotalatt / 100)*(isset($_SESSION['niveau'])/0.75));
	 $sql = 'UPDATE `joueurs_stats` SET `argent` = `argent` + '.$bonus_or_sabo.' WHERE nom = "'.$cible.'"';
	 $sqlXP = 'UPDATE `joueurs_stats` SET `xp` = `xp` + '.$bonus_xp_sabo.' WHERE nom = "'.$cible.'"';
	// $sql = 'UPDATE `joueurs_stats` SET `argent` = `argent` + ".$bonus_or_sabo.", `xp` = `xp` + ".$bonus_xp_sabo." WHERE nom = '".$cible."' '; 
	$req = mysqli_query($db, $sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysqli_error($db));
	$reqXP = mysqli_query($db, $sqlXP) or die('Erreur SQL !<br>'.$sqlXP.'<br>'.mysqli_error($db));
	echo '<div align="center"><br><br />Alors que le combat se termine, vous vous réveillez soudain dans votre lit...<br><br><img src="images/aptitudes/sabotage.gif" border=0 width=175 height=250><br><br>Tout ceci n\'était-il donc qu\'un rêve?<br>';
	$message1.= '<div align="center"><br><br />Alors que le combat se termine, vous vous réveillez soudain dans votre lit...<br /><br />Tout ceci n\'était-il donc qu\'un rêve?<br />';
	$message.= '<div align="center"><br><br />Vos plans de sabotage portent leurs fruits! '.$nom.' ne parvient pas à trouver vos terres! Tranquillisés, vos villageois produisent '.$bonus_or_sabo.' pièces d\'or supplémentaires.<br /> En outre, vous gagnez '.$bonus_xp_sabo.' points d\'expérience';
	$texte1 = "Vous ne parvenez pas à atteindre $cible...";
   	$texte2 = "Vos plans de sabotage portent leurs fruits ! $nom ne parvient pas à trouver vos terres ! Tranquillisés, vos villageois produisent $bonus_or_sabo pièces d\'or supplémentaires et $bonus_xp_sabo poits d\'expérience.<br />";
/**/
	// ajout du combat dans les archives OLD
	$sql = 'INSERT 	INTO `combat_joueurs` 	(`id`, `attaquant`, `defendant`, `temps`,	`victoire`, `date`,		`texte1`, `texte2`,	`nsorts_att`, `nsorts_def`, `ip_att`)
			VALUES			("",	"'.$nom.'", "'.$cible.'", "'.$now.'",	"", "'.$date.'",		"'.$texte1.'", "'.$texte2.'", "0", "0", "'.$_SERVER["REMOTE_ADDR"].'")';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());


	// ajout du combat dans la table joueurs_combat (5 attaques par jour)
	$sql2 = 'SELECT * FROM joueurs_combat WHERE nom = "'.$nom.'"';
	$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
	$data = mysql_fetch_array($req2);
	for ($i=1; $i<6; $i++)
	{
		$tchek = $data["$i"];
		if ($tchek == 0)
		{
			$sql = 'UPDATE `joueurs_combat` SET `'.$i.'` = "'.$now.'" WHERE nom = "'.$nom.'"';
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			break;
		}
	}

	// ajout du combat comme affaiblissant pour l'immunité
	$req = mysql_query("SELECT `niveau` FROM batiment_province WHERE `nom` = 'Temple des Sages' AND `province` = '$prov_def'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$modif_prov_immune = 1 + $data['niveau'] / 100;
	$req = mysql_query("SELECT `globe_protect` FROM joueurs_modificateurs WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$bonus_globe = $data['globe_protect'];
	$temps_immune = round($temps + 80 * $modif_prov_immune * $bonus_globe);
	$sql = 'UPDATE `joueurs_combat` SET `affaibli` = "'.$temps_immune.'" WHERE nom = "'.$cible.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	// envoi des mails
	if ($recevoir1 == 0)
	{
		//$message1 = str_replace(array("\n\n\n","\n\n\n\n", "\n\n\n\n\n","\n\n\n\n\n\n","\n \n"),"\n\n",strip_tags(str_replace(array("\n","\r",'</tr>','<br>','	','</td>',"Cristaux \n    ",'&nbsp;'),array('','',"\n","\n",'',' ','Cristaux',' '),$message1)));
		$message1 .= "\n\nSi vous ne désirez plus recevoir ce type de mail, vous disposez de deux possibilités. Commencez par vous identifier sur le site www.destinee-online.com.\nPuis, si vous désirez simplement ne plus recevoir vos rapports de combats, allez dans le menu Action, page Stratégie, puis cochez la case appropriée et validez.\nSi vous désirez vous défaire de votre compte, l'option est disponible via le menu Personnage, page Votre compte, puis cochez la case appropriée et validez.";
		$sujet = "[Serveur ".$_SESSION['serveur']."] Rapport de combat : ".$cible;
		$headers = 'From: admin@destinee-online.com'."\n";
		$headers .= 'Reply-To: noreply@destinee-online.com'."\n";
		$headers .= 'MIME-version: 1.0'."\n";
		$headers .= 'Content-type: text/html; charset="utf-8"'."\n";
		$headers .= "Content-transfer-encoding:8bit";
		mail($email1, 'rapports_de_combat@yopmail.com',$sujet,$message1,$headers);

	}
	// Envoi du rapport de combat
	if ($recevoir == 0)
	{
		$message .= "\n\nSi vous ne désirez plus recevoir ce type de mail, vous disposez de deux possibilités. Commencez par vous identifier sur le site www.destinee-online.com.\nPuis, si vous désirez simplement ne plus recevoir vos rapports de combats, allez dans le menu Action, page Stratégie, puis cochez la case appropriée et validez.\nSi vous désirez vous défaire de votre compte, l'option est disponible via le menu Personnage, page Votre compte, puis cochez la case appropriée et validez.";
		$sujet = "[Serveur ".$_SESSION['serveur']."] Rapport de combat : ".$nom;
		$headers = 'From: admin@destinee-online.com'."\n";
		$headers .= 'Reply-To: noreply@destinee-online.com'."\n";
		$headers .= 'MIME-version: 1.0'."\n";
		$headers .= 'Content-type: text/html; charset="utf-8"'."\n";
		$headers .= "Content-transfer-encoding:8bit";
		var_dump(mail($email, 'rapports_de_combat@yopmail.com',$sujet,$message,$headers));

	}
	// on termine la page, ya pas besoin d'aller plus loin
	mysql_close();
	include("inclus/fin.inc");
	exit;
}


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

// incrémentation nombres de victoires et de défaites
$sql = 'UPDATE `joueurs_bonus` SET `victoire` = `victoire` + 1 WHERE nom = "'.$gagnant.'"';
$req=  mysql_query($sql) or die('Erreur SQL !<br>'.$sql6.'<br>'.mysql_error());
$sql = 'UPDATE `joueurs_bonus` SET `défaite` = `défaite` + 1 WHERE nom = "'.$perdant.'"';
$req=  mysql_query($sql) or die('Erreur SQL !<br>'.$sql6.'<br>'.mysql_error());

// début du bilan de fin de combat : "victoire" ou "défaite"
if ($gagnant == $cible)
{
	echo '<tr><td class="tdcen"><br><strong>Défaite !</strong><br></td></tr></tbody></table>
		<div align="center"><br><img src="/images/defaite.gif" alt="Défaite" width="213" height="200"><br><br>';
	$message1.= '<tr><td style="text-align:center;"><br /><strong>Défaite !</strong><br /></td></tr></tbody></table><div align="center"><br /><img src="http://www.destinee-online.com/images/defaite.gif" alt="Défaite" width="213" height="200"><br /><br />';
	$message .= '<tr><td style="text-align:center;"><br /><strong>Victoire !</strong><br /></td></tr></tbody></table>';
}
else       // $gagnant = $nom
{
	if ($tour == 1)
	{
		echo '<tr><td class="tdcen"><br>Arrivant sur les terres ennemies, vous ne rencontrez aucun signe de résistance.</td></tr></tbody></table>';
		$message1.= '<tr><td style="text-align:center;"><br />Arrivant sur les terres ennemies, vous ne rencontrez aucun signe de résistance.</td></tr></tbody></table>';
		$message .= '<tr><td style="text-align:center;"><br />Arrivant sur vos terres, l\'ennemi ne rencontre aucun signe de résistance...</td></tr></tbody></table>';
	}

	else
	{
		echo '<tr><td class="tdcen"><br><strong>Victoire !</strong><br></td></tr></tbody></table>';
		$message1.= '<tr><td style="text-align:center;"><br /> Victoire !</td></tr></tbody></table>';
		$message.='<tr><td style="text-align:center;"><br /> Défaite !</td></tr></tbody></table>';
	}
	echo '<div align="center"><br><img src="/images/victoire.gif" alt="Victoire" width=179 height=200><br><br>';
	$message1 .= '<div align="center"><br /><img src="http://www.destinee-online.com/images/victoire.gif" alt="Victoire" width="179" height="200" /><br /><br />';
}

// Mise à jour des nombres de créatures
// et Calcul des XP

$xp_att = 0;			// xp remportés par l'attaquant
$xp_def = 0;			// xp remportés par la cible
$pvs_tues_effectif_att = 0;		// total des points de vie perdus par l'attaquant
$pvs_tues_effectif_def = 0;		// total des points de vie perdus par la cible
$pvs_morts_def = 0;		// points de vie tués en combat
$pvs_morts_att = 0;		// points de vie tués en combat
$or_recup_att = 0;		// or récupéré sur les pertes de l'attaquant
$or_recup_def = 0;		// or récupéré sur les pertes du défenseur
$medic = array($nom => '', $cible => '');
for ($i = 0; $i < $z; $i++)	// boucle sur les créatures impliquées dans le combat
{
	$env  = $a_env[$i];		// nombre de créatures ayant participé au combat
	$qtee = $a_qte[$i] + $a_fui[$i] + $a_effraye[$i]; // nombre de créatures restant à la fin du combat, parmi les $env
	$pvsnm= $a_pvs_nonmod[$i];	// points de vie non modifiés d'une créature
	$id   = $a_[$i];		// référence de la créature
	$nom_creat = $a_id[$i];		// nom de la créature

	if ($i < $milieu)            // créatures de l'attaquant
	{
		$hero = $nom;
		$f_equi_joueur = $f_equi_armee_att;
		$deja = $creatures_att[$id];       // nombre de créatures possédées avant le combat
		$recup = 1/5;			// l'attaquant récupère 1/5 des créatures mortes dans ses casernes
		$medecine = $apt_att['31'];
		$poly = $poly_att;
	}
	else                         // créatures de la cible
	{
		$hero = $cible;
		$f_equi_joueur = $f_equi_armee_def;
		$deja = $creatures_def[$id];
		$recup = 1/5;			// le défenseur récupère 1/5 des créatures mortes dans ses casernes
		$medecine = $apt_def['31'];
		$poly = $poly_def;
	}

	// Pourcentage du coût des créas mortes récupéré
	$pourc_or_recup = 1/3;

	$pvstotal = 0;
	$pvs_tues_effectif = 0;
	$nouv = 0;
	$xp_plus = 0;
	$or_recup = 0;
	$coef_niv_crea = 1;
	$or_pv_crea = 0;
	switch($a_niv[$i]) {
		case 6:
			$coef_niv_crea = 1.29687123005;
			$or_pv_crea = 9.32;
			break;
		case 5:
			$coef_niv_crea = 1.1789738455;
			$or_pv_crea = 6.88;
			break;
		case 4:
			$coef_niv_crea = 1.071794405;
			$or_pv_crea = 5.08;
			break;
		case 3:
			$coef_niv_crea = 0.97435855;
			$or_pv_crea = 3.75;
			break;
		case 2:
			$coef_niv_crea = 0.8857805;
			$or_pv_crea = 2.76;
			break;
		case 1:
		default:
			$coef_niv_crea = 0.805255;
			$or_pv_crea = 2.03;
	}

	// Pourcentages sauvés par médecines
	$sauves = 0.35 / $f_equi_joueur;
	$sauves_med = 0.2 * $medecine/100;

	// Cas spécial polymorphisme
	if ($poly[$id] != null) {
		$nb_creas_tuees_combat = 0;
		if ($deja > 0) {
			$nb_creas_tuees_combat = $env - $qtee;
		}
		$qtee_polymorphee = $poly[$id][0];
		$qtee_initiale = $deja + $qtee_polymorphee;
		$id_poly = $poly[$id][1];
		$indice_poly = array_search($id_poly, $a_);
		$poly_pourc_tue = ($a_env[$indice_poly] - $a_qte[$indice_poly]) / $a_env[$indice_poly];
		$nb_creas_tuees_combat += floor($qtee_polymorphee * $poly_pourc_tue);
		$nb_creas_tuees_effectif = round($nb_creas_tuees_combat * (1 - $sauves - $sauves_med));
		$nouv = 	max(0, $qtee_initiale - $nb_creas_tuees_effectif);
		$nouvSansMed =	$qtee_initiale - round($nb_creas_tuees_combat *  (1 - $sauves));
		if ($nouv > $nouvSansMed)
			$medic[$hero] .= ($nouv-$nouvSansMed).' '.$nom_creat.', ';
		$sql = 'UPDATE `joueurs_créatures` SET `'.$id.'` = "'.$nouv.'" WHERE nom = "'.$hero.'"';
		$req=  mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$pvs_tues_effectif = $pvsnm * $nb_creas_tuees_effectif;	// pv qui sont vraiment morts
		$pvs_tues_combat = $pvsnm * $nb_creas_tuees_combat; // pvs abattus en combat

		// une partie des troupes mortes au combat est rerecrutable
		$tiers = floor(($qtee_initiale - $nouv) * $recup / $f_equi_joueur);
		$sql = "UPDATE `joueurs_créatures_id` SET `$id` = `$id` + '$tiers' WHERE nom = '$hero'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

		$xp_plus = ceil( $pvs_tues_combat * $coef_niv_crea / 30 );

		$or_recup = ceil($pvs_tues_effectif * $or_pv_crea * $pourc_or_recup);

		if ($hero == $cible) {
			$xp_att += $xp_plus;
			$pvs_tues_effectif_def += $pvs_tues_effectif;
			$pvs_morts_def += $pvs_tues_combat;
			$nomdelacrea = $a_id[$i];
			$or_recup_def += $or_recup;
		} else if ($hero == $nom) {
			$xp_def += $xp_plus;
			$pvs_tues_effectif_att += $pvs_tues_effectif;
			$pvs_morts_att += $pvs_tues_combat;
			$or_recup_att += $or_recup;
		}
	} else if ($deja > 0)
	{
		// s'il s'agit de créatures ne venant ni de réalité parallèle, ni de portail infernal, ni de polymorphisme
		// on calcule les créatures restant, et on met à jour la base
		if (stackCompteDansRetraite($i) && !in_array($a_id[$i], $creas_polymorph_liste))
		{
			$nb_creas_tuees_combat = $env - $qtee;
			$nb_creas_tuees_effectif = round($nb_creas_tuees_combat * (1 - $sauves - $sauves_med));
			$nouv = 	max(0, $deja - $nb_creas_tuees_effectif);
			$nouvSansMed =	$deja - round($nb_creas_tuees_combat *  (1 - $sauves));
			if ($nouv > $nouvSansMed)
				$medic[$hero] .= ($nouv-$nouvSansMed).' '.$nom_creat.', ';

			$sql = 'UPDATE `joueurs_créatures` SET `'.$id.'` = "'.$nouv.'" WHERE nom = "'.$hero.'"';
			$req=  mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			$pvs_tues_effectif = $pvsnm * $nb_creas_tuees_effectif;	// pv qui sont vraiment morts
			$pvs_tues_combat = $pvsnm * $nb_creas_tuees_combat; // pvs abattus en combat

			// un tiers des troupes mortes au combat est rerecrutable
			$tiers = floor(($deja - $nouv) * $recup / $f_equi_joueur);
			$sql = "UPDATE `joueurs_créatures_id` SET `$id` = `$id` + '$tiers' WHERE nom = '$hero'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

			$xp_plus = ceil( $pvs_tues_combat * $coef_niv_crea / 30 );

			$or_recup = ceil($pvs_tues_effectif * $or_pv_crea * $pourc_or_recup);

			if ($hero == $cible) {
				$xp_att += $xp_plus;
				$pvs_tues_effectif_def += $pvs_tues_effectif;
				$pvs_morts_def += $pvs_tues_combat;
				$nomdelacrea = $a_id[$i];
				$or_recup_def += $or_recup;
			} else if ($hero == $nom) {
				$xp_def += $xp_plus;
				$pvs_tues_effectif_att += $pvs_tues_effectif;
				$pvs_morts_att += $pvs_tues_combat;
				$or_recup_att += $or_recup;
			}
		}
	}
}


// APTITUDE MEDECINE DE GUERRE (ATTAQUANT)
if ( ($apt_att['31'] > 0) && ($medic[$nom] != '') )
{
	echo '<div align="left"><img src="/images/aptitudes/medecinedeguerre.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><b> Médecine de guerre :</b> vos équipes de médecine d\'urgence parviennent à sauver de nombreuses vies !<br>'.substr($medic[$nom],0,strlen($medic[$nom])-2).' ont été sauvés.</small></span></div>';
	$message1.= '<div align="left"><img src="http://www.destinee-online.com/images/aptitudes/medecinedeguerre.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><b> Médecine de guerre :</b> vos équipes de médecine d\'urgence parviennent à sauver de nombreuses vies !<br />'.substr($medic[$nom],0,strlen($medic[$nom])-2).' ont été sauvés.</small></span></div>';
	$message .= '<div align="left"><img src="http://www.destinee-online.com/images/aptitudes/medecinedeguerre.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><b> Médecine de guerre :</b> vous voyez les médecins ennemis s\'activer auprès des ceux que vous avez laissé pour morts !</small></span></div>';
}
// APTITUDE MEDECINE DE GUERRE (DEFENSEUR)
if ( ($apt_def['31'] > 0) && ($medic[$cible] != '' ) )
{
	echo '<div align="left"><img src="/images/aptitudes/medecinedeguerre.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><b> Médecine de guerre :</b> vous voyez les médecins ennemis s\'activer auprès des ceux que vous avez laissé pour morts !<br></small></span></div>';
	$message1.= '<div align="left"><img src="http://www.destinee-online.com/images/aptitudes/medecinedeguerre.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><b> Médecine de guerre :</b> vous voyez les médecins ennemis s\'activer auprès des ceux que vous avez laissé pour morts !</small></span></div>';
	$message .= '<div align="left"><img src="http://www.destinee-online.com/images/aptitudes/medecinedeguerre.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><b> Médecine de guerre :</b> vos équipes de médecine d\'urgence parviennent à sauver de nombreuses vies !<br />'.substr($medic[$cible],0,strlen($medic[$cible])-2).' ont été sauvés.</small></span></div>';
}

// Récupération de divers infos sur le joueur et la cible
//   xp, or, population, terrains...
include ("combat/infos_recup_2.inc");
$temps = time()/60;

// Incrémentation du compteur de fureur
if ($apt_att['34'] > 0) {
	if (($xp_att + $xp_def) > min(1500, $niv_h * 100)) {
		$sql = 'UPDATE `joueurs_aptitudes_base`	SET `fureur_counter` = `fureur_counter` + 1 WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
}

if ($apt_def['34'] > 0) {
	if (($xp_att + $xp_def) > min(1500, $niv_c * 100)) {
		$sql = 'UPDATE `joueurs_aptitudes_base`	SET `fureur_counter` = `fureur_counter` + 1 WHERE nom = "'.$cible.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
}

// GESTION DES SERIES DE VICTOIRES EN DÉFENSE
$coef_win_streak = 1;
if ($affaib_att && $affaib_def) {
	if (($gagnant == $cible) && ($strategie_att <= 60) && ($pvs_morts_def / $pvs_defenseur < $pvs_morts_att / $pvs_attaquant) && $f_equi_armee_att <= 1.1) {
		$req = mysql_query("SELECT `win_streak` FROM `joueurs_stats` WHERE `nom` = '$cible'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$win_streak = $data[0];
		$win_streak += min(max(($niv_h / $niv_c) - 0.4, 0) * 2, 1) * (100 - $strategie_att) / 100 * min(1, $pvs_defenseur / ($niv_c * 4000));
		$win_streak = min(10, $win_streak);
		$sql = "UPDATE `joueurs_stats` SET `win_streak` = $win_streak WHERE nom = '$cible'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	} else if (($gagnant == $nom) && ($strategie_def <= 60) && $f_equi_armee_def <= 1.1) {
		// Gain de la prime sur le défenseur
		$req = mysql_query("SELECT `win_streak` FROM `joueurs_stats` WHERE `nom` = '$cible'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		// On pondère par la retraite, pour pas filer toute la prime si ça retraite tôt
		$win_streak_pond = $data[0] * (100 - $strategie_def) / 100;
		$gain_or_win_streak = $data[0] < 1 ? 0 : round(7000 * pow(1.5, $win_streak_pond) * (1 + $niv_c * 0.05));
		$sql = "UPDATE `joueurs_stats` SET `win_streak` = `win_streak` - $win_streak_pond WHERE nom = '$cible'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
}

// Ajustement des terres de la cible, pour être certain que pas de bug
$sql = 'UPDATE `joueurs_terre`       SET `total` = `riverain` + `colline` + `désert` + `forêt` + `arctique` + `marais` + `montagne` + `plaine` + `caverne` WHERE nom = "'.$cible.'"';
$req=  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = 'UPDATE `joueurs_terre_utile` SET `total` = `riverain` + `colline` + `désert` + `forêt` + `arctique` + `marais` + `montagne` + `plaine` + `caverne` WHERE nom = "'.$cible.'"';
$req=  mysql_query($sql) or die('Erreur SQL !<br>'.'<br>'.mysql_error());

// Facteur d'équilibre de l'armée divise les gains en xp
$xp_att /= ($f_equi_armee_att * $f_equi_armee_def);
$xp_def /= ($f_equi_armee_att * $f_equi_armee_def);


// DIFFERENTS COEFFICIENTS AU GAINS

// coef de gain à l'xp en fonction du serveur
$req = mysql_query("SELECT `valeur_double` FROM `destinee_statistiques` WHERE `param` = 'gain_xp'") or die('Erreur SQL !<br>'.mysql_error());
$coef_xpserveur = ($data = mysql_fetch_row($req)) ? $data[0] : 1;

// diminution de l'XP sur les retraites rapides (appliqué à l'xp)
$coef_retraite_att = min(1, 1/3 + 1/6 * ((100 - $strategie_att) / 10));
$coef_retraite_def = min(1, 1/3 + 1/6 * ((100 - $strategie_def) / 10));

// Coefficient pour les gains en fonction des levels (compris dans l'intervalle [0, 1.25]) (appliqué à l'xp, or, ressources, prisonniers, terres)
// Ce coefficient commence à s'appliquer au lvl 6 (pour ne pas perturber les débuts de round).
$coef_xp_lvl_att = ($niv_h < 6) ? 1 : max(0, min(1.25, ($niv_c / $niv_h) - ($niv_h - $niv_c) / 100));
$coef_xp_lvl_def = ($niv_c < 6) ? 1 : max(0, min(1.25, ($niv_h / $niv_c) - ($niv_c - $niv_h) / 100));
// Lorsque le coefficient du défenseur baisse son xp, on le limite par la quantité d'armée perdue: plus le défenseur a perdu de troupes, moins la baisse d'xp est importante
if ($coef_xp_lvl_def < 1) {
	$coef_xp_lvl_def = (1 - ((1 - $coef_xp_lvl_def) * (1 - ($pvs_morts_def / $pvs_defenseur))));
}

// Coefficient pour les gains d'xp lié à la puissance des armées: un combat contre une armée moins puissante rapporte moins, et inversement (appliqué à l'xp, or, ressources, prisonniers, terres)
$pui_armee_att = $pvs_attaquant * (1 + 0.05 * $niv_h);
$pui_armee_def = $pvs_defenseur * (1 + 0.05 * $niv_c);
$rapport_pui_armee = ($pui_armee_att - $pui_armee_def) / max($pui_armee_att, $pui_armee_def);
$coef_pui_armee = min(pow(abs($rapport_pui_armee), 0.8), 0.9);
$coef_pa_att = ($rapport_pui_armee > 0) ? 1 - $coef_pui_armee : 1 + $coef_pui_armee;
$coef_pa_def = ($rapport_pui_armee > 0) ? 1 + $coef_pui_armee : 1 - $coef_pui_armee;

// Coefficient baissant les gains si on a engagé une armée minable par rapport à son level (appliqué à or, terres, pop, ressources)
$coef_taille_armee_att = min(1, $pvs_attaquant / ($niv_h * 4000));

// Coefficient à la force de l'armée (appliqué à l'xp)
// Le calcul de ce coefficient a été déplacé dans affrontement.inc car utilisé dans le calcul des dégâts des sorts offensifs

// Coefficient lié au pourcentage d'armée envoyé, pour éviter d'optimiser ses gains en envoyant seulement une partie de ses troupes (appliqué à l'xp, or, ressources, prisonniers et terres)
$coef_pourc_armee_att = $pvs_attaquant / $pvstotalatt;

// Coefficient multiplicateur aux pertes du défenseur (appliqué à l'or et aux ressources)
$coef_destruction = 1.5;

// Coef lié à la part d'xp faite récemment sur ce joueur
$coef_xp_vs = 1;
$sql_xp_vs = mysql_query("SELECT * FROM joueurs_xp_vs WHERE `nom` = '$nom' AND `adversaire` = '$cible'") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
if ($data_xp_vs = mysql_fetch_assoc($sql_xp_vs)) {
	$sql_xp_vs_all = mysql_query("SELECT SUM(`xp`) FROM joueurs_xp_vs WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
	$data_xp_vs_all = mysql_fetch_row($sql_xp_vs_all);
	$coef_xp_vs -= $data_xp_vs['xp'] / $data_xp_vs_all[0];
}


// Coef difficulté adversaire
/*
// 1 - aptitudes (qui rajoutent des effets combat mais pas déjà comptés)
$pts_apt =
// Ingéniosité
$ingenio_att_effet / $pvs_attaquant +
// Purif / Profa
$mod_purif_att * 0.2 + $mod_profa_att * 0.2 +
// CM
$apt_att['12'] / 100 * (1 - $ratio_melee_def) * 0.15 +
// Assassinat
$apt_att['16'] / 100 * 0.1 +
// Embuscade
$apt_att['17'] / 100 * (1 - $ratio_melee_att) * 0.15 +
// Précision
$apt_att['18'] / 100 * (1 - $ratio_melee_att) * 0.15 +
// Rage
$apt_att['22'] / 100 * $ratio_melee_att * 0.15 +
// MA
$apt_att['28'] / 100 * $ratio_volant_att /  * 0.15 +
// Filets
$apt_att['33'] / 100 * $ratio_volant_def * $ratio_sol_melee_att * (0.14 * (1 + $apt_def['28'] / 100)) +
// Effroi
// Médecine de guerre
// Fureur
// Mutations

// 2 - stats
// 3 - modificateurs
// 4 - sort spé

*/


// FIN COEFFICIENTS

// mise à jour des points de vie totaux
$pvstotalatt -= $pvs_tues_effectif_att;
$pvstotaldef -= $pvs_tues_effectif_def;
$sql = 'UPDATE `joueurs_modificateurs` SET `pvstotal` = \''.$pvstotalatt.'\' WHERE nom = \''.$nom.'\'';
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = 'UPDATE `joueurs_modificateurs` SET `pvstotal` = \''.$pvstotaldef.'\' WHERE nom = \''.$cible.'\'';
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

// Rapport d'archives: initialisation
$texte1 = '';
$texte2 = '';
$tactique = (isset($_POST['tactique'])) ? $_POST['tactique'] : 'siege';

$gain_or = mt_rand(4,8)/100;
$gain_ress = mt_rand(2,4)/100;
$gain_pop = mt_rand(2,4)/3/100;
$gain_terre = mt_rand(3,6)/4/100;
// Les gains dans la "spécialité" soit deux fois plus élevés que les gains pour les autres modes
switch ($tactique)
{
	case 'conquete' :
		$texte1.="Vous ordonnez l`invasion des terres de $cible !<br>";
		$texte2.="$nom débute une véritable croisade en vos terres !<br>";
		$gain_terre *= 2;
		break;
	case 'pillage' :
		$texte1.="Vous foncez droit contre $cible, pillant et ravageant ses terres !<br>";
		$texte2.="$nom tente de piller vos terres et vos villages !<br>";
		$gain_or *= 2;
		break;
	case 'exaction' :
		$texte1.="Vous marchez sur les terres de $cible, exigeant un lourd tribu !<br>";
		$texte2.="$nom tente d`envahir vos terres et vos villages !<br>";
		$gain_ress *= 2;
		break;
	default :	// siège
		$texte1.="Vous ordonnez l`assaut contre les principaux bastions de $cible !<br>";
		$texte2.="$nom lance l`assaut contre vos principaux bastions !<br>";
		$gain_pop *= 2;
		break;
}


// Traitement des gains, en fonction du vainqueur
if ($gagnant == $nom)
{
	include ("combat/gain_att.inc");
}
if ($gagnant == $cible)
{
	include ("combat/gain_def.inc");
}

// On incrémente le total d'xp fait contre ce joueur
$sql_xp_vs = mysql_query("SELECT * FROM joueurs_xp_vs WHERE `nom` = '$nom' AND `adversaire` = '$cible'") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
if (mysql_num_rows($sql_xp_vs) > 0) {
	$sql_xp_vs_update = mysql_query("UPDATE joueurs_xp_vs SET `xp` = `xp` + $xp_gain1 WHERE `nom` = '$nom' AND `adversaire` = '$cible'") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
} else {
	$sql_xp_vs_insert = mysql_query("INSERT INTO `joueurs_xp_vs` (`id`, `nom`, `adversaire`, `xp`) VALUES (NULL, '$nom', '$cible', $xp_gain1);") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
}
// On décrémente tous les totaux d'xp faits contre les joueurs de 10%
$sql_xp_vs_update_all = mysql_query("UPDATE joueurs_xp_vs SET `xp` = ROUND(`xp` * 0.95) WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());

// Rapport d'archives
if ($affaib_def) {
	$texte2 .= '<br>Ce combat vous a considérablement affaibli !';
}

	$attFaction = mysql_query("SELECT faction_id FROM factions_membres WHERE nom_membre = '$nom' ");
	$defFaction = mysql_query("SELECT faction_id FROM factions_membres WHERE nom_membre = '$cible' ");
	$factionAtt = mysql_query("SELECT nom FROM factions_membres INNER JOIN factions ON `factions_membres`.faction_id = `factions`.id WHERE `factions_membres`.nom = '$nom' ");
	$factionDef = mysql_query("SELECT nom FROM factions_membres INNER JOIN factions ON `factions_membres`.faction_id = `factions`.id WHERE `factions_membres`.nom = '$cible' ");
	$data1 = mysql_fetch_array($attFaction);
	$data2 = mysql_fetch_array($defFaction);

	$xp_gainAtt = $xp_gain1;
	$xp_gainDef = $xp_gain2;

// LA TABLE ARCHIVE COMBATS JOUEURS SERT A AFFICHER L'HISTORIQUE DES COMBATS DANS LES ARCHIVES
$sql = 'INSERT INTO `archives_combat_joueurs`
	(`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`, `nsorts_att`, `nsorts_def`, `ip_att`) VALUES
	("", "'.$nom.'", "'.$cible.'", "'.$temps.'", "'.$gagnant.'", "'.$date.'", "'.$texte1.'", "'.$texte2.'", "'.$nsorts[0].'", "'.$nsorts[1].'", "'.$_SERVER["REMOTE_ADDR"].'")';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

// LA TABLE COMBATS JOUEURS sert notamment à savoir si un joueur en a attaqué un autre récemment 
$sql = 'INSERT INTO `combat_joueurs`
	(`id`, `attaquant`, `defendant`, `temps`, `victoire`, `date`, `texte1`, `texte2`, `nsorts_att`, `nsorts_def`, `ip_att`) VALUES
	("", "'.$nom.'", "'.$cible.'", "'.$temps.'", "'.$gagnant.'", "'.$date.'", "'.$texte1.'", "'.$texte2.'", "'.$nsorts[0].'", "'.$nsorts[1].'", "'.$_SERVER["REMOTE_ADDR"].'")';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());


// mise à jour des attaques de l'attaquant
$req = mysql_query('SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_combat WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
foreach ($data AS $i => $value)
{
	if ($value == 0)
	{
		$sql = 'UPDATE `joueurs_combat` SET `'.$i.'` = "'.$temps.'" WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		break;
	}
}

// Dome de protection
if ($affaib_att) {
	$req = mysql_query("SELECT `politiques_effets`.`protection` FROM politiques_effets INNER JOIN provinces_politiques ON provinces_politiques.`politique1` = politiques_effets.`politique` WHERE provinces_politiques.`Province` = '$prov_att'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$protec_province = $data['protection'];
	$req = mysql_query("SELECT `niveau` FROM batiment_province WHERE `nom` = 'Temple des Sages' AND `province` = '$prov_att'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$modif_prov_immune = $protec_province + $data['niveau'] / 100;
	$req = mysql_query("SELECT `globe_protect` FROM joueurs_modificateurs WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$bonus_globe = $data['globe_protect'];
	$temps_immune = round($temps + 160 * $modif_prov_immune * $bonus_globe * $coef_taille_armee_att);
	$sql = 'UPDATE `joueurs_combat` SET `affaibli` = "'.$temps_immune.'" WHERE nom = "'.$nom.'" AND `affaibli` < "'.$temps_immune.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

if ($affaib_def) {
	$req = mysql_query("SELECT `politiques_effets`.`protection` FROM politiques_effets INNER JOIN provinces_politiques ON provinces_politiques.`politique1` = politiques_effets.`politique` WHERE provinces_politiques.`Province` = '$prov_def'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$protec_province = $data['protection'];
	$req = mysql_query("SELECT `niveau` FROM batiment_province WHERE `nom` = 'Temple des Sages' AND `province` = '$prov_def'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$modif_prov_immune = $protec_province + $data['niveau'] / 100;
	$req = mysql_query("SELECT `globe_protect` FROM joueurs_modificateurs WHERE `nom` = '$cible'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$bonus_globe = $data['globe_protect'];
	$temps_immune = round($temps + 240 * $modif_prov_immune * $bonus_globe);
	$sql = 'UPDATE `joueurs_combat` SET `affaibli` = "'.$temps_immune.'" WHERE nom = "'.$cible.'" AND `affaibli` < "'.$temps_immune.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

// RECALCUL DE LA PUISSANCE + update f_equi pour le défenseur
$pui_terre_att = $new_tot1/100;
$pui_creas_att = (1 + 0.05 * $niv_h) * $pvstotalatt;
$pui_pop_att = $pop_h/200;
$puissance = round($pui_terre_att + $pui_creas_att + $pui_pop_att);

$pui_terre_def = $new_tot2/100;
$pui_creas_def = (1 + 0.05 * $niv_c) * $pvstotaldef;
$pui_pop_def = $pop_reste/200;
$pui_c = round($pui_terre_def + $pui_creas_def + $pui_pop_def);
$req = mysql_query('UPDATE `joueurs_stats` SET `puissance` = "'.$puissance.'" WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$req = mysql_query('UPDATE `joueurs_stats` SET `puissance` = "'.$pui_c.'", `f_equi` = "'.$f_equi_armee_def.'"  WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$req = mysql_query('UPDATE `joueurs_heros` SET `puissance` = "'.$puissance.'" WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$req = mysql_query('UPDATE `joueurs_heros` SET `puissance` = "'.$pui_c.'" WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());


// zieutage si passage de niveau
passedeniveau ($nom);
passedeniveau ($cible);


// écriture des informations sur les joueurs
$message1 .= "\n";
ecritstatsjoueurs(false);

// Récapitulatif des stats
echo '<script type="text/javascript">
    function toggle_visibility(id) {
       var e = document.getElementById(id);
       if(e.style.display == \'block\')
          e.style.display = \'none\';
       else
          e.style.display = \'block\';
    }
</script>';

// On affiche le tableau récapitulatif uniquement si l'attaquant a au moins un tiers de l'armée du défenseur.
if ($pvs_attaquant > ($pvs_defenseur * 0.33)) {
	echo '<br><br>';
	echo '<a href="javascript:toggle_visibility(\'recap\');">Afficher / Masquer le tableau récapitulatif des statistiques</a>';
	echo '<div id="recap" style="display:none;">';
	include("combat/recap_stats.inc");
	echo '</div>';
	echo '<br><br>';
}


// Ecriture et envoi du rapport de combat
//echo $message1;
if ($recevoir1 == 0)
{
	$message1 .= "<br /><br />Si vous ne désirez plus recevoir ce type de mail, vous disposez de deux possibilités. Commencez par vous identifier sur le site www.destinee-online.com.<br />Puis, si vous désirez simplement ne plus recevoir vos rapports de combats, allez dans le menu Action, page Stratégie, puis cochez la case appropriée et validez.\nSi vous désirez vous défaire de votre compte, l'option est disponible via le menu Personnage, page Votre compte, puis cochez la case appropriée et validez.";
	//echo '<xmp style="text-align: left;">'.$message1.'</xmp>';
	$sujet = "[Serveur ".$_SESSION['serveur']."] Rapport de combat : ".$cible;
	$headers = 'From: admin@destinee-online.com'."\n";
    $headers .= 'Reply-To: noreply@destinee-online.com'."\n";
	$headers .= 'MIME-version: 1.0'."\n";
	$headers .= 'Content-Type: text/html; charset="utf-8"'."\n";
	$headers .= "Content-transfer-encoding:8bit";
	// ligne suivante en commentaire pour le développement (éviter d'envoyer des mails)
	mail($email1,$sujet,$message1,$headers);
	//  echo '<br><br>Mail envoyé à l'attaquant : <br><textarea cols=80 rows=20>'.$message1.'</textarea>';
}
// Envoi du rapport de combat
if ($recevoir == 0)
{
	$message .= "<br /><br />Si vous ne désirez plus recevoir ce type de mail, vous disposez de deux possibilités. Commencez par vous identifier sur le site www.destinee-online.com.<br />Puis, si vous désirez simplement ne plus recevoir vos rapports de combats, allez dans le menu Action, page Stratégie, puis cochez la case appropriée et validez.\nSi vous désirez vous défaire de votre compte, l'option est disponible via le menu Personnage, page Votre compte, puis cochez la case appropriée et validez.";
	$sujet = "[Serveur ".$_SESSION['serveur']."] Rapport de combat : ".$nom;
	$headers = 'From: admin@destinee-online.com'."\n";
    $headers .= 'Reply-To: noreply@destinee-online.com'."\n";
	$headers .= 'MIME-version: 1.0'."\n";
	$headers .= 'Content-Type: text/html; charset="utf-8"'."\n";
	$headers .= "Content-transfer-encoding:8bit";
	// ligne suivante en commentaire pour le développement (éviter d'envoyer des mails)
	mail($email,$sujet,$message,$headers);
	//  echo '<br><br>Mail envoyé à la cible : <br><textarea cols=80 rows=20>'.$message.'</textarea>';
}

if ($gain_or_win_streak > 80000) {
	// mail admin sur primes importantes
	$sujet = "[Serveur ".$_SESSION['serveur']."] Prime élevée : ".$nom;
	$headers = 'From: admin@destinee-online.com'."\n";
	$headers .= 'Reply-To: noreply@destinee-online.com'."\n";
	$headers .= 'MIME-version: 1.0'."\n";
	$headers .= 'Content-Type: text/html; charset="utf-8"'."\n";
	$headers .= "Content-transfer-encoding:8bit";
	mail("rapports_de_combat@yopmail.com", $sujet, $message, $headers);
}

// On affiche le combat dans les événements si il a été fait dans le top 20% de puissance du serveur
$req = mysql_query("SELECT COUNT(id) FROM `joueurs_stats`") or die('Erreur SQL !<br>'.mysql_error());
$dat = mysql_fetch_row($req);
$nb_joueurs = round($dat[0] / 5);

$req = mysql_query("SELECT MIN(`pui`) FROM (SELECT `puissance` AS pui FROM `joueurs_stats` ORDER BY `puissance` DESC LIMIT $nb_joueurs) table_top") or die('Erreur SQL !<br>'.mysql_error());
$dat = mysql_fetch_row($req);
$pui_limite = $dat[0];

if (max($puissance_att, $puissance_def) > $pui_limite) {
	$sql = "INSERT INTO `evenement` ( `id` , `titre` , `texte` , `tempsdelete`, `tempspost` )
		VALUES ('', 'Grande bataille', '<b>".$nom."</b> a attaqué <b>".$cible."</b> et a gagné <b>".$xp_gain1."</b> points d\'expérience! Son adversaire en a gagné <b>".$xp_gain2."</b>.', '".($temps+1440)."', '".$temps."')";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

// On incrémente le nombre de combats du serveur
$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier` + 1 WHERE `param` = 'nbr_combats'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

?>
