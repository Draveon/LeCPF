<?php

// Bonus Espionnage attaquant sur cible espionnée
if ($apt_att['15'] > 0) {
	$req = mysql_query('SELECT `nom_espionne1`, `nom_espionne2`, `nom_espionne3`, `nom_espionne4`, `nom_espionne5`, `nom_espionne6` FROM joueurs_aptitudes_base WHERE joueurs_aptitudes_base.nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$bonus_apt = round($apt_att['15'] / 2);
	// Si on a espionné la cible avec succès, bonus à CM / Embu / Rage / Précision
	if ($data[0] == $cible || $data[1] == $cible || $data[2] == $cible || $data[3] == $cible || $data[4] == $cible || $data[5] == $cible) {
		$apt_att['12'] += $bonus_apt;
		$apt_att['17'] += $bonus_apt;
		$apt_att['22'] += $bonus_apt;
		$apt_att['18'] += $bonus_apt;
		echo '<div align="left" style="color:#0D4573;"><img src="/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Au courant des positions de votre adversaire, vous élaborez un plan de bataille adapté !</small></div>';
		$message1.= '<div align="left" style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Au courant des positions de votre adversaire, vous élaborez un plan de bataille adapté !</small></div>';
		$message .= '<div align="left" style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Votre adversaire semble connaître toute votre stratégie !</small></div>';
	}
} 

// Bonus si Espionnage en défense
if ($apt_def['15'] > 0) {
	$bonus_apt = round($apt_def['15'] / 2);

	$apt_def['12'] += $bonus_apt;
	$apt_def['17'] += $bonus_apt;
	$apt_def['22'] += $bonus_apt;
	$apt_def['18'] += $bonus_apt;
		
	echo '<div align="left" style="color:#B31141;"><img src="/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Alors que votre attaque se déroule comme vous l\'aviez prévue, des troupes ennemies surgissent de nulle part; votre adversaire semble connaître toute votre stratégie !</small></div>';
	$message1.= '<div align="left" style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Alors que votre attaque se déroule comme vous l\'aviez prévue, des troupes ennemies surgissent de nulle part; votre adversaire semble connaître toute votre stratégie !</small></div>';
	$message .= '<div align="left" style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Au courant des positions de votre adversaire, vous élaborez un plan de bataille adapté !</small></div>';
	}

// Bonus Espionnage cible sur attaquant espionné
/*
if ($apt_def['15'] > 0) {
	$req = mysql_query('SELECT `nom_espionne1`, `nom_espionne2`, `nom_espionne3`, `nom_espionne4`, `nom_espionne5`, `nom_espionne6` FROM joueurs_aptitudes_base WHERE joueurs_aptitudes_base.nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$bonus_apt = round($apt_def['15'] / 2);
	// Si on a espionné la cible avec succès, bonus à CM / Embu
	if ($data[0] == $nom || $data[1] == $nom || $data[2] == $nom || $data[3] == $nom || $data[4] == $nom || $data[5] == $nom) {
		$apt_def['12'] += $bonus_apt;
		$apt_def['17'] += $bonus_apt;
		echo '<div align="left" style="color:#B31141;"><img src="/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Votre adversaire semble connaître toute votre stratégie !</small></div>';
		$message1.= '<div align="left" style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Votre adversaire semble connaître toute votre stratégie !</small></div>';
		$message .= '<div align="left" style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/espionnage.gif" width="20px" height="30px" border=1 align="center"><small><b>Espionnage :</b> Au courant des positions de votre adversaire, vous élaborez un plan de bataille adapté !</small></div>';
	}
}*/

// APTITUDE PERFECTIONNISME
$apts_possibles_perfec = array('1','2','3','4','5','8','10','12','14','16','17','18','19','20','22','24','28','29','33','31','35');
// ATTAQUANT
$perfec_att = $apt_att['32'];
if ($perfec_att > 0)
{
	$bonus_apt = round(50 * $perfec_att / 100);
	$nb_apt_perfec = mt_rand(3,5);
	$apts_perfec = array_rand($apts_possibles_perfec, $nb_apt_perfec);
	$noms_apts_boostees = "";
	foreach ($apts_perfec AS $key_apt) {
		$id_apt_courante = $apts_possibles_perfec[$key_apt];
		$req = mysql_query("SELECT `nom` FROM aptitudes_liste WHERE id = $id_apt_courante") or die('Erreur SQL !<br>'.mysql_error());
		$nom_apt_boostee = mysql_fetch_row($req);
		$nom_apt_boostee = $nom_apt_boostee[0];
		$noms_apts_boostees .= "$nom_apt_boostee, ";
		$apt_att[$id_apt_courante] = min(150, $apt_att[$id_apt_courante] + $bonus_apt);
	}
	$noms_apts_boostees = substr($noms_apts_boostees, 0, -2);
	echo '<div align="left" style="color:#0D4573;"><img src="/images/aptitudes/perfectionnisme.gif" width="20px" height="30px" border=1 align="center"><small><b>Perfectionnisme :</b> Votre entraînement acharné porte ses fruits ! ('.$noms_apts_boostees.')</small></div>';
	$message1.= '<div align="left" style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/perfectionnisme.gif" width="20px" height="30px" border=1 align="center"><small><b>Perfectionnisme :</b> Votre entraînement acharné porte ses fruits ! ('.$noms_apts_boostees.')</small></div>';
	$message .= '<div align="left" style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/perfectionnisme.gif" width="20px" height="30px" border=1 align="center"><small><b>Perfectionnisme :</b> L\'entraînement acharné de votre ennemi porte ses fruits ! ('.$noms_apts_boostees.')</small></div>';
}


// DEFENSEUR
$perfec_def = $apt_def['32'];
if ($perfec_def > 0)
{
	$bonus_apt = round(50 * $perfec_def / 100);
	$nb_apt_perfec = mt_rand(3,5);
	$apts_perfec = array_rand($apts_possibles_perfec, $nb_apt_perfec);
	$noms_apts_boostees = "";
	foreach ($apts_perfec AS $key_apt) {
		$id_apt_courante = $apts_possibles_perfec[$key_apt];
		$req = mysql_query("SELECT `nom` FROM aptitudes_liste WHERE id = $id_apt_courante") or die('Erreur SQL !<br>'.mysql_error());
		$nom_apt_boostee = mysql_fetch_row($req);
		$nom_apt_boostee = $nom_apt_boostee[0];
		$noms_apts_boostees .= "$nom_apt_boostee, ";
		$apt_def[$id_apt_courante] = min(150, $apt_def[$id_apt_courante] + $bonus_apt);
	}
	$noms_apts_boostees = substr($noms_apts_boostees, 0, -2);
	echo '<div align="left" style="color:#B31141;"><img src="/images/aptitudes/perfectionnisme.gif" width="20px" height="30px" border=1 align="center"><small><b>Perfectionnisme :</b> L\'entraînement acharné de votre ennemi porte ses fruits ! ('.$noms_apts_boostees.')<br></small></div>';
	$message1.= '<div align="left" style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/perfectionnisme.gif" width="20px" height="30px" border=1 align="center"><small><b>Perfectionnisme :</b> L\'entraînement acharné de votre ennemi porte ses fruits ! ('.$noms_apts_boostees.')</small></div>';
	$message .= '<div align="left" style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/perfectionnisme.gif" width="20px" height="30px" border=1 align="center"><small><b>Perfectionnisme :</b> Votre entraînement acharné porte ses fruits ! ('.$noms_apts_boostees.')</small></div>';
}



// APTITUDE SABOTAGE (cible)

$x = mt_rand(1,200);
if ($apt_def['23'] >= $x && $apt_def['actif23'] && $affaib_def)
{

		echo '<div align="center"><br><br />Malheureusement, vous ne parvenez pas à trouver les terres de l\'ennemi...<br><br><img src="images/aptitudes/sabotage.gif" border=0 width=175 height=250><br><br>Sans doute avez-vous été mal renseigné?<br>';
		$message1.= '<div align="center"><br><br />Malheureusement, vous ne parvenez pas à trouver les terres de l\'ennemi...<br /><br />Sans doute avez-vous été mal renseigné?<br />';
		$message.= '<div align="center"><br><br />Vos plans de sabotage portent leurs fruits ! '.$nom.' ne parvient pas à trouver vos terres ne parvient pas à trouver vos terres ! Tranquillisés, vos villageois produisent '.$bonus_or_sabo.' pièces d\'or supplémentaires."!<br /> En outre, vous gagnez '.$bonus_xp_sabo.' points d\'expérience';
		$texte1 = "Vous ne parvenez pas à atteindre $cible...";
	   	$texte2 = "Vos plans de sabotage portent leurs fruits ! $nom ne parvient pas à trouver vos terres !";
/* */
		// ajout du combat dans les archives
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
		$temps_immune = round($temps + 45 * $modif_prov_immune);
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
			$headers .= 'Content-type: text/html; charset="ISO-8859-1"'."\n";
			$headers .= "Content-transfer-encoding:8bit";
			mail($email1,$sujet,$message1,$headers);
		}
		// Envoi du rapport de combat
		if ($recevoir == 0)
		{
			$message .= "\n\nSi vous ne désirez plus recevoir ce type de mail, vous disposez de deux possibilités. Commencez par vous identifier sur le site www.destinee-online.com.\nPuis, si vous désirez simplement ne plus recevoir vos rapports de combats, allez dans le menu Action, page Stratégie, puis cochez la case appropriée et validez.\nSi vous désirez vous défaire de votre compte, l'option est disponible via le menu Personnage, page Votre compte, puis cochez la case appropriée et validez.";
			$sujet = "[Serveur ".$_SESSION['serveur']."] Rapport de combat : ".$nom;
			$headers = 'From: admin@destinee-online.com'."\n";
			$headers .= 'Reply-To: noreply@destinee-online.com'."\n";
			$headers .= 'MIME-version: 1.0'."\n";
			$headers .= 'Content-type: text/html; charset="ISO-8859-1"'."\n";
			$headers .= "Content-transfer-encoding:8bit";
			mail($email,$sujet,$message,$headers);
		}
		// on termine la page, ya pas besoin d'aller plus loin
		mysql_close();
		include("inclus/fin.inc");
		exit;	
}

	if ($actual_db == 2) {
		

		// APTITUDE DIPLOMATIE (cible)

		$x = 1;
		if (($apt_def['25'] >= $x) && ($pvstotal_def == 0) && ($tour == 1))
		{

				echo '<div align="center"><br><br />Malheureusement, vous épargnez les terres de l\'ennemi...<br><br><img src="images/aptitudes/sabotage.gif" border=0 width=175 height=250><br><br>Sans doute avez-vous été trop gentil?<br>';
				$message1.= '<div align="center"><br><br />Malheureusement, vous ne parvenez pas à anéantir les terres de l\'ennemi...<br /><br />Sans doute avez-vous mal dormi?<br />';
				$message.= '<div align="center"><br><br />Les dieux ont décidés de vous épargner ! '.$nom.' ne parvient pas à trouver vos terres !<br />';
				$texte1 = "Vous ne parvenez pas à lancer votre attaque sur $cible... vous vous sentez coupable...";
			   	$texte2 = "Vos prières ont été entendues ! $nom ne parvient pas à trouver vos terres !";

				// ajout du combat dans les archives
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
				$temps_immune = round($temps + 360 * $modif_prov_immune);
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
					$headers .= 'Content-type: text/html; charset="ISO-8859-1"'."\n";
					$headers .= "Content-transfer-encoding:8bit";
					mail($email1,$sujet,$message1,$headers);
				}
				// Envoi du rapport de combat
				if ($recevoir == 0)
				{
					$message .= "\n\nSi vous ne désirez plus recevoir ce type de mail, vous disposez de deux possibilités. Commencez par vous identifier sur le site www.destinee-online.com.\nPuis, si vous désirez simplement ne plus recevoir vos rapports de combats, allez dans le menu Action, page Stratégie, puis cochez la case appropriée et validez.\nSi vous désirez vous défaire de votre compte, l'option est disponible via le menu Personnage, page Votre compte, puis cochez la case appropriée et validez.";
					$sujet = "[Serveur ".$_SESSION['serveur']."] Rapport de combat : ".$nom;
					$headers = 'From: admin@destinee-online.com'."\n";
					$headers .= 'Reply-To: noreply@destinee-online.com'."\n";
					$headers .= 'MIME-version: 1.0'."\n";
					$headers .= 'Content-type: text/html; charset="ISO-8859-1"'."\n";
					$headers .= "Content-transfer-encoding:8bit";
					mail($email,$sujet,$message,$headers);
				}
				// on termine la page, ya pas besoin d'aller plus loin
				mysql_close();
				include("inclus/fin.inc");
				exit;	
		}


	}

// CONCENTRATION (Attaquant)
$partiel = '';
$cout_sorts_att = 0;
$concentration_att = $apt_att['10'];
$x = mt_rand(0,1);
if ($concentration_att > 0)
{
	$bonus_apt = 0.10 * $concentration_att / 100;
	$cout_sorts_att = 0.5 * $concentration_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$cout_sorts_att /= 2;
		$partiel = ' (partiel)';
	}
	$bonus_raz07_att['effets_elem_def'] += $bonus_apt;
	$bonus_raz07_att['degat_elem'] += $bonus_apt;
	echo '<div align=\'left\' style="color:#0D4573;"><img src="/images/aptitudes/concentration.gif" width="20px" height="30px" border=1 align="center"><small><strong> Concentration'.$partiel.' :</strong> Vos sorts vous coûtent moitié moins cher !<br /></small></div>';
	$message1.= '<div align=\'left\' style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/concentration.gif" width="20px" height="30px" border=1 align="center"><small><strong> Concentration'.$partiel.' :</strong> Vos sorts vous coûtent moitié moins cher !<br /></small></div>';
	$message .= '<div align=\'left\' style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/concentration.gif" width="20px" height="30px" border=1 align="center"><small><strong> Concentration'.$partiel.' :</strong> Les sorts de votre adversaire lui coûtent moitié moins cher !<br /></small></div>';
}


// CONCENTRATION (Défendant)
$partiel = '';
$cout_sorts_def = 0;
$concentration_def = $apt_def['10'];
$x = mt_rand(0,1);
if ($concentration_def > 0)
{
	$bonus_apt = 0.10 * $concentration_def / 100;
	$cout_sorts_def = 0.5 * $concentration_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$cout_sorts_def /= 2;
		$partiel = ' (partiel)';
	}
	$bonus_raz07_def['effets_elem_def'] += $bonus_apt;
	$bonus_raz07_def['degat_elem'] += $bonus_apt;
	echo '<div align=\'left\' style="color:#B31141;"><img src="/images/aptitudes/concentration.gif" width="20px" height="30px" border=1 align="center"><small><strong> Concentration'.$partiel.' :</strong> Les sorts de votre adversaire lui coûtent moitié moins cher !<br></small></div>';
	$message1.= '<div align=\'left\' style="color:#B31141;"><img src="http://www.destinee-online.com/images/aptitudes/concentration.gif" width="20px" height="30px" border=1 align="center"><small><strong> Concentration'.$partiel.' :</strong> Les sorts de votre adversaire lui coûtent moitié moins cher !<br /></small></div>';
	$message .= '<div align=\'left\' style="color:#0D4573;"><img src="http://www.destinee-online.com/images/aptitudes/concentration.gif" width="20px" height="30px" border=1 align="center"><small><strong> Concentration'.$partiel.' :</strong> Vos sorts vous coûtent moitié moins cher !<br /></small></div>';
}

$coef_perturb_att = 1;
// APTITUDE PERTURBATION DES FLUX DE L'ATTAQUANT
$partiel = '';
$perturb_att = $apt_att['36'];
$x = mt_rand(0,1);
if ($perturb_att > 0)
{
	$bonus_apt = 0.5 * $perturb_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$coef_perturb_att -= $bonus_apt;




// Coeff affectant les sorts offensifs
	$perturb_sorts_off = 1;
	$coef_perturb_source = 0.25 * $perturb_att / 100;
	if ($x == 0) {
		$coef_perturb_source /= 2;
		
	}
	$perturb_sorts_off -= $coef_perturb_source;


	echo '<img src="/images/aptitudes/perturbation_flux.png" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Perturbation des flux'.$partiel.' :</strong> La magie n\'est plus aussi efficace en votre présence !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/perturbation_flux.png" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Perturbation des flux'.$partiel.' :</strong> La magie n\'est plus aussi efficace en votre présence !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/perturbation_flux.png" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Perturbation des flux'.$partiel.' :</strong> Votre adversaire semble bloquer les canaux magiques !</small></span><br />';
}

$coef_perturb_def = 1;
// APTITUDE PERTURBATION DES FLUX DU DEFENSEUR
$partiel = '';
$perturb_def = $apt_def['36'];
$x = mt_rand(0,1);
if ($perturb_def > 0)
{
	$bonus_apt = 0.5 * $perturb_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$coef_perturb_def -= $bonus_apt;




// Coeff affectant les sorts offensifs
	$perturb_sorts_off = 1;
	$coef_perturb_source = 0.25 * $perturb_def / 100;
	if ($x == 0) {
		$coef_perturb_source /= 2;
		
	}
	$perturb_sorts_off -= $coef_perturb_source;



	
	echo '<img src="/images/aptitudes/perturbation_flux.png" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Perturbation des flux'.$partiel.' :</strong> Votre adversaire semble bloquer les canaux magiques !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/perturbation_flux.png" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Perturbation des flux'.$partiel.' :</strong> Votre adversaire semble bloquer les canaux magiques !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/perturbation_flux.png" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Perturbation des flux'.$partiel.' :</strong> La magie n\'est plus aussi efficace en votre présence !</small></span><br />';
}

?>
