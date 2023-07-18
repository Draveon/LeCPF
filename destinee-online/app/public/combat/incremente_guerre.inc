<?php
/*
 * Module pour la gestion des guerres et des PNA
 * A noter que le type de relation (PNA ou guerre) n'influence pas l'enregistrement ou non des données.
 * Le script tient compte d'éventuels joueurs alliés, apportant leur soutien à l'un ou l'autre des factions.
 */

/*	Maj raz novembre 09: on aimerait tenir compte du modificateur de bottom pour l'ensemble des conditions de victoires qui s'y prête (durée et nombre de combats total ne n'y prêtent pas)
	or, prisonniers, xp, cailloux: modificateur déjà inclus dans le code. faut modifier le reste.
 */

 
include ("guerres_checktermine.php");


 
// détermination des guildes des protagonistes: a pour assaillant ($nom), c pour cible ($cible)
$reqa = mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '$nom'   LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
$reqc = mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '$cible' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
$guildea=mysql_result($reqa,0,"guilde");
$guildec=mysql_result($reqc,0,"guilde");
$flagupdate = false;

if (!isset($guerre_nbrbatdetruit))
	$guerre_nbrbatdetruit = 0;
	
// On applique un modificateur qui tient compte de la puissance des deux guildes au moment du combat
$req_guildea = mysql_query('SELECT puissance FROM guildes WHERE nom = "'.$guildea.'"') or die('Erreur SQL !<br>'.mysql_error());
$req_guildec = mysql_query('SELECT puissance FROM guildes WHERE nom = "'.$guildec.'"') or die('Erreur SQL !<br>'.mysql_error());
$data_guildea = mysql_fetch_row($req_guildea);
$data_guildec = mysql_fetch_row($req_guildec);
	



// est-ce que l'attaquant est membre de la guilde1 ?
$sql = "SELECT * FROM guerres WHERE 
	( guilde1 = '$guildea' OR indep1 LIKE '%|$nom|%'   ) AND
	( guilde2 = '$guildec' OR indep2 LIKE '%|$cible|%' )
	AND ( valide = '$VALIDE_EN_COURS' OR ( ( valide = '$VALIDE_EN_ATTENTE' OR valide = '$VALIDE_EN_NEGOCIA') AND type = '$TYPE_GUERRE' ) )";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))	// il y a bien une guerre, l'assaillant est membre de la guilde1
{
	$coefpuissarmada1 = 1;
	$coefpuissarmada2 = 1;
	//if ($data['dateDebut']>21060011)
	//{
		$req1 = mysql_query("SELECT puissance FROM guildes WHERE nom='".$data['guilde1']."'") or die('Erreur SQL !<br>'.mysql_error());
		if ($dat1 = mysql_fetch_row($req1))
		{
			$req2 = mysql_query("SELECT puissance FROM guildes WHERE nom='".$data['guilde2']."'") or die('Erreur SQL !<br>'.mysql_error());
			if ($dat2 = mysql_fetch_row($req2))
			{
				$coefpuissarmada1 = 1 / min(1.5, max(1, 2/3 + ($dat2[0]/$dat1[0])/3 ));
				$coefpuissarmada2 = 1 / min(1.5, max(1, 2/3 + ($dat1[0]/$dat2[0])/3 ));
			}
		}
	//}
	echo '<div align="left">Afin de prendre en compte l\'impact des puissances de vos deux armadas dans la guerre qui les opposent, les résultats de ce combat ont été multipliés par '.$coefpuissarmada1.' pour vous, et ceux de votre adversaire par '.$coefpuissarmada2.' en ce qui concerne les statistiques de la guerre en cours.</div>';

	
	// rien à faire
	//	id,	type,	guilde1,	guilde2,	indep1,	indep2,	vainqueur,	dateDebut,	puissDebut1,	puissDebut2,	dateFin,	puissFin1,	puissFin2,
	
	// champs mis à jours
	//	nbrAttaVict,	nbrAttaDefa,	nbrDefeVict,	nbrDefeDefa,	xp1,	xp2,	pertePuiss1,	pertePuiss2,	acres1,	acres2,	prison,	prison,	Tués1,	Tués2
	/* ancienne version
	if ($gagnant == $nom)	$data['nbrAttaVict'] += $coef_att;			// PAS SENSIBLE AUX MODIFICATEUR $coef_att qui diminue les gains des bottoms
	if ($gagnant == $cible)	$data['nbrAttaDefa'] += 1;				// NE DOIT PAS ETRE SENSIBLE AUX MODIFICATEUR $coef_att
	$data['nbrDefeVict']	+= 0;
	$data['nbrDefeDefa']	+= 0;*/
	// gère le véritable nombre de combats
	if ($gagnant == $nom)	$data['nbrAttaVict'] += 1;				// PAS SENSIBLE AUX MODIFICATEUR $coef_att qui diminue les gains des bottoms
	if ($gagnant == $cible)	$data['nbrAttaDefa'] += 1;				// NE DOIT PAS ETRE SENSIBLE AUX MODIFICATEUR $coef_att
	$data['nbrDefeVict']	+= 0;
	$data['nbrDefeDefa']	+= 0;
	// nbratta1 gère les conditions de victoires
	$data['nbratta1']	+= $coef_att * $coefpuissarmada1;
	$data['nbratta2']	+= 0;
	if ($gagnant == $nom)	$data['nbrvict1'] += $coef_att * $coefpuissarmada1;
	if ($gagnant == $cible)	$data['nbrvict2'] += 1 * $coefpuissarmada2;

	$data['xp1'] 		+= round($xp_gain1 * $coefpuissarmada1);
	$data['xp2'] 		+= round($xp_gain2 * $coefpuissarmada2);
	$data['pertePuiss1'] 	+= round($coef_att * ($puissance_att - $puissance) * $coefpuissarmada1);	// PAS SENSIBLE AUX MODIFICATEUR $coef_att
	$data['pertePuiss2'] 	+= round(1         * ($puissance_def - $pui_c    ) * $coefpuissarmada2);	// NE DOIT PAS ETRE SENSIBLE AUX MODIFICATEUR $coef_att
	$data['acres1'] 	+= round($coef_att * $gain_terre * $coefpuissarmada1);			// PAS SENSIBLE AUX MODIFICATEUR $coef_att
	$data['acres2'] 	+= 0;
	$data['prison1'] 	+= round($pop_gonfle_tot * $coefpuissarmada1);
	$data['prison2'] 	+= 0;
	$data['tues1']		+= round($pop_morte * $coefpuissarmada1);
	$data['tues2']		+= 0;
	$data['detruits1']	+= $coef_att * $guerre_nbrbatdetruit * $coefpuissarmada1;			// PAS SENSIBLE AUX MODIFICATEUR $coef_att
	$data['detruits2']	+= 0;
	$data['or1']		+= round($gain_or * $coefpuissarmada1);
	$data['or2']		+= 0;
	$data['ressources1']	+= round(array_sum($ress_transf) * $coefpuissarmada1);
	$data['ressources2']	+= 0;
	
	// test si le combat était le plus gros (au sens de la somme des xp)
	//	PGCjoueur1,	PGCjoueur2,	PCGxp1,	PGCxp2,	PGCatta,	PGCvainqueur
	if ( ($xp_gain1+$xp_gain2) > ($data['PGCxp1']+$data['PGCxp2']))
	{
		$data['PGCj1'] 		= $nom;
		$data['PGCj2'] 		= $cible;
		$data['PGCxp1'] 	= $xp_gain1;
		$data['PGCxp2'] 	= $xp_gain2;
		$data['PGCatta'] 	= $nom;
		$data['PGCvainqueur'] 	= $gagnant;
	}
	
	incremente_guerre($data);
}
	


// est-ce que l'attaquant est membre de la guilde2 ?
$sql = "SELECT * FROM guerres WHERE 
	( guilde1 = '$guildec' OR indep1 LIKE '%|$cible|%') AND
	( guilde2 = '$guildea' OR indep2 LIKE '%|$nom|%'  )
	AND ( valide = '$VALIDE_EN_COURS' OR ( ( valide = '$VALIDE_EN_ATTENTE' OR valide = '$VALIDE_EN_NEGOCIA' ) AND type = '$TYPE_GUERRE' ) )";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))	// il y a bien une guerre, l'assaillant est membre de la guilde2
{
	// prise en compte du rapport des puissances des armadas dans tous les compteurs. La petite armada est pénalisée: ses compteurs progressent plus lentement
	$coefpuissarmada1 = 1;
	$coefpuissarmada2 = 1;
	//if ($data['dateDebut']>21060011)
	//{
		$req1 = mysql_query("SELECT puissance FROM guildes WHERE nom='".$data['guilde1']."'") or die('Erreur SQL !<br>'.mysql_error());
		if ($dat1 = mysql_fetch_row($req1))
		{
			$req2 = mysql_query("SELECT puissance FROM guildes WHERE nom='".$data['guilde2']."'") or die('Erreur SQL !<br>'.mysql_error());
			if ($dat2 = mysql_fetch_row($req2))
			{
				$coefpuissarmada1 = 1 / min(1.5, max(1, 2/3 + ($dat2[0]/$dat1[0])/3 ));
				$coefpuissarmada2 = 1 / min(1.5, max(1, 2/3 + ($dat1[0]/$dat2[0])/3 ));
			}
		}
	//}
	echo '<div align="left">Afin de prendre en compte l\'impact des puissances de vos deux armadas dans la guerre qui les opposent, les résultats de ce combat ont été multipliés par '.$coefpuissarmada2.' pour vous, et ceux de votre adversaire par '.$coefpuissarmada1.' en ce qui concerne les statistiques de la guerre en cours.</div>';
	
	// rien à faire
	//	id,	type,	guilde1,	guilde2,	indep1,	indep2,	vainqueur,	dateDebut,	puissDebut1,	puissDebut2,	dateFin,	puissFin1,	puissFin2,
	
	// champs mis à jours
	//	nbrAttaVict,	nbrAttaDefa,	nbrDefeVict,	nbrDefeDefa,	xp1,	xp2,	pertePuiss1,	pertePuiss2,	acres1,	acres2,	prison,	prison,	Tués1,	Tués2
	// gère le véritable nombre de combats
	$data['nbrAttaVict']	+= 0;
	$data['nbrAttaDefa']	+= 0;
	if ($gagnant == $cible)	$data['nbrDefeVict'] += 1; // défense victorieuse pour le joueur de la guilde1
	if ($gagnant == $nom)	$data['nbrDefeDefa'] += 1;
	// gère les conditions de victoires
	$data['nbratta1']	+= 0;
	$data['nbratta2']	+= $coef_att * $coefpuissarmada2;
	if ($gagnant == $cible)	$data['nbrvict1'] += 1 * $coefpuissarmada1;
	if ($gagnant == $nom)	$data['nbrvict2'] += $coef_att * $coefpuissarmada2;

	$data['xp1'] 		+= $xp_gain2 * $coefpuissarmada1;
	$data['xp2'] 		+= $xp_gain1 * $coefpuissarmada2;
	$data['pertePuiss1'] 	+= round(1         * ($puissance_def - $pui_c    ) * $coefpuissarmada1);
	$data['pertePuiss2'] 	+= round($coef_att * ($puissance_att - $puissance) * $coefpuissarmada2);
	$data['acres1'] 	+= 0;
	$data['acres2'] 	+= round($coef_att * $gain_terre * $coefpuissarmada2);
	$data['prison1'] 	+= 0;
	$data['prison2'] 	+= round($pop_gonfle_tot * $coefpuissarmada2);
	$data['tues1']		+= 0;
	$data['tues2']		+= round($pop_morte * $coefpuissarmada2);
	$data['detruits1']	+= 0;
	$data['detruits2']	+= $coef_att * $guerre_nbrbatdetruit * $coefpuissarmada2;
	$data['or1']		+= 0;
	$data['or2']		+= round($gain_or * $coefpuissarmada2);
	$data['ressources1']	+= 0;
	$data['ressources2']	+= round(array_sum($ress_transf) * $coefpuissarmada2);

	// test si le combat était le plus gros (au sens de la somme des xp)
	//	PGCjoueur1,	PGCjoueur2,	PCGxp1,	PGCxp2,	PGCvainqueur
	if ( ($xp_gain1+$xp_gain2) > ($data['PGCxp1']+$data['PGCxp2']))
	{
		$data['PGCj1'] 		= $cible;
		$data['PGCj2'] 		= $nom;
		$data['PGCxp1'] 	= $xp_gain2;
		$data['PGCxp2'] 	= $xp_gain1;
		$data['PGCatta'] 	= $nom;
		$data['PGCvainqueur'] 	= $gagnant;
	}
	
	incremente_guerre($data);
}

// si ya des changements à faire, càd une guerre à incrémenter
function incremente_guerre($data)
{
	global $TYPE_GUERRE, $TYPE_PNA, $VALIDE_EN_COURS, $VALIDE_EN_ATTENTE, $VALIDE_EN_NEGOCIA, $VALIDE_BLOQUE, $VALIDE_TERMINE;
	$sql = "UPDATE `guerres` SET
		`nbrAttaVict` =  '".$data['nbrAttaVict']."', 
		`nbrAttaDefa` =  '".$data['nbrAttaDefa']."', 
		`nbrDefeVict` =  '".$data['nbrDefeVict']."', 
		`nbrDefeDefa` =  '".$data['nbrDefeDefa']."',
		`nbratta1` =	 '".$data['nbratta1']."',
		`nbratta2` =	 '".$data['nbratta2']."',
		`nbrvict1` =	 '".$data['nbrvict1']."',
		`nbrvict2` =	 '".$data['nbrvict2']."',
		`xp1` = 	 '".$data['xp1']."', 
		`xp2` = 	 '".$data['xp2']."', 
		`pertePuiss1` =  '".$data['pertePuiss1']."', 
		`pertePuiss2` =  '".$data['pertePuiss2']."', 
		`acres1` = 	 '".$data['acres1']."', 
		`acres2` = 	 '".$data['acres2']."', 
		`prison1` = 	 '".$data['prison1']."', 
		`prison2` = 	 '".$data['prison2']."', 
		`tues1` = 	 '".$data['tues1']."', 
		`tues2` = 	 '".$data['tues2']."', 
		`detruits1` = 	 '".$data['detruits1']."', 
		`detruits2` = 	 '".$data['detruits2']."', 
		`or1` = 	 '".$data['or1']."', 
		`or2` = 	 '".$data['or2']."', 
		`ressources1` =  '".$data['ressources1']."', 
		`ressources2` =  '".$data['ressources2']."', 
		`PGCj1` = 	 '".$data['PGCj1']."', 
		`PGCj2` = 	 '".$data['PGCj2']."', 
		`PGCxp1` = 	 '".$data['PGCxp1']."', 
		`PGCxp2` = 	 '".$data['PGCxp2']."', 
		`PGCatta` = 	 '".$data['PGCatta']."', 
		`PGCvainqueur` = '".$data['PGCvainqueur']."'
		WHERE `id`     = '".$data['id']."'
		LIMIT 1";	
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	// contrôle si la guerre est terminée
	if ($data['type'] == $TYPE_GUERRE)
	{
		if (checkguerreterminee($data['id'], true))
		{
//			envoie_missive($guilde, 'Fin de la guerre: Victoire!', 'Votre alliance à vaincu l\'armada '.$autre."\n\n".'Une étoile de plus orne désormais le panthéon...', 'tous');
//			envoie_missive($autre,  'Fin de la guerre: Défaite!',  'Votre alliance a été défaite par l\'armada '.$autre."\n\n".'Il ne vous reste plus qu\'à rentrer chez vous...', 'tous');
		}
	}
}

?>
