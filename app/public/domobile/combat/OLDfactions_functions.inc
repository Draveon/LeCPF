<?php

include('connect.php');
include('session_joueur.php');

// VARIABLES
$joueur = $_SESSION['nom'];
$Factions;
$FactionsId;
$nivFaction;
$prochPalier;
$tabDef = [];
$vicFaction = 0;
$vicFactionAtt = 0;
$vicFactionDef = 0;
$defFaction = 0;
$victoiresTotales = $vicFaction + $defFaction;
$x = 0;
$totalXpFac;
$moyNivFactionMembers;

//IMPORT des infos de la base (factions, factions_membres, combats_joueurs, guerre_factions)
$sqlDef = "SELECT DISTINCT(combat_joueurs.attaquant), combat_joueurs.defendant, combat_joueurs.victoire, factions_membres.faction_id, factions.nom, COUNT(combat_joueurs.victoire) AS nbVic
FROM factions_membres
INNER JOIN factions
ON factions.id = factions_membres.faction_id
INNER JOIN combat_joueurs
ON combat_joueurs.attaquant = factions_membres.nom_membre
WHERE combat_joueurs.victoire != 'Espionnage'
AND combat_joueurs.victoire != 'artisanat'
AND faction_id
IN (SELECT faction_id
	FROM factions_membres
	WHERE factions_membres.nom_membre = combat_joueurs.defendant)
AND combat_joueurs.defendant = combat_joueurs.victoire
GROUP BY combat_joueurs.defendant";

$sqlFactions = "SELECT factions.id, factions.nom, factions.niv, factions.prochpalier
FROM factions INNER JOIN factions_membres ON factions_membres.faction_id = factions.id WHERE factions_membres.nom_membre = ' ".$joueur." ' ";
$reqFactions = mysql_query($sqlFactions) or die(mysql_error());
$reqDef = mysql_query($sqlDef) or die(mysql_error());


// Remplissage noms factions
while ($dataFactions = mysql_fetch_array($reqFactions)) {
   $Factions = $dataFactions['nom'];
   array_push($FactionsId = $dataFactions['id']);
   $nivFaction = $dataFactions['niv'];
   $prochPalier = $dataFactions['prochpalier'];
}
// MISE A JOUR DES infos de factions
function executeMajFaction($joueur) {
	$factionId = getFactionIdByMember($joueur);
	$nivFaction = getFactionNivByMember($joueur);
	$palierVic = getFactionPalierByMember($joueur);
	$vicAtt = vicFacAtt($factionId);
	$vicDef = vicFacDef($factionId);
	$vic = $vicAtt+$vicDef;

	if ($vic >= $palierVic) {
		gainNivFactions($factionId, $palierVic, $nivFaction);
		gainXpMbrFaction($factionId, calculateXP($factionId, $joueur));

		envoiMessageFactionGainNiv($factionId, $joueur, $vic) ;
		supprimerCombatsFac($factionId);
	}
}

// VICTOIRES DE LA FACTION
// EN ATTAQUE
function vicFacAtt($faction) {
  global $vicFactionsAtt;
	global $vicFaction;
  $sqlVicFacAtt = "SELECT COUNT(combat_factions.victoire) as Vic
  FROM factions_membres
  INNER JOIN joueurs_bonus
  ON joueurs_bonus.nom = factions_membres.nom_membre
  INNER JOIN factions
  ON factions_membres.faction_id = factions.id
  INNER JOIN combat_factions
  ON combat_factions.attaquant = factions_membres.nom_membre
  WHERE combat_factions.victoire != 'Espionnage'
  AND combat_factions.victoire != 'artisanat'
  AND combat_factions.victoire != 'Foire'
  AND combat_factions.victoire != ''
  AND factions.id = '".$faction."'
  AND combat_factions.defendant != combat_factions.victoire
  GROUP BY factions.nom";
  $reqVicFacAtt = mysql_query($sqlVicFacAtt) or die(mysql_error());
  // Victoires attaquant
  $dataVicFacAtt = mysql_fetch_array($reqVicFacAtt);
  	$vicFactionsAtt = $dataVicFacAtt[0];
		$vicFaction = $dataVicFacAtt[0];

		return $vicFaction;
}
// VICTOIRES DE LA FACTION
// EN DEFENSE
function vicFacDef($faction) {
  global $vicFactionsDef;
	global $defFaction;
  $sqlVicFacDef = "SELECT COUNT(combat_factions.victoire) as Vic
  FROM factions_membres
  INNER JOIN joueurs_bonus
  ON joueurs_bonus.nom = factions_membres.nom_membre
  INNER JOIN factions
  ON factions_membres.faction_id = factions.id
  INNER JOIN combat_factions
  ON combat_factions.defendant = factions_membres.nom_membre
  WHERE combat_factions.victoire != 'Espionnage'
  AND combat_factions.victoire != 'artisanat'
  AND combat_factions.victoire != 'Foire'
  AND combat_factions.victoire != ''
  AND factions.id = '".$faction."'
  AND combat_factions.defendant = combat_factions.victoire
  GROUP BY factions.nom";
  $reqVicFacDef = mysql_query($sqlVicFacDef) or die(mysql_error());
  // Victoires defendant
  $dataVicFacDef = mysql_fetch_array($reqVicFacDef);
  	$vicFactionsDef = $dataVicFacDef[0];
  	$defFaction = $dataVicFacDef[0];

		return $defFaction;
}
// total d'xp gagné par la faction (faction id)
function getTotalXpFaction($faction) {
	global $totalXpFac;
	$reqXPFacAtt = mysql_query("SELECT ROUND(AVG(combat_factions.xpAtt))
  FROM combat_factions
  WHERE combat_factions.victoire != 'Espionnage'
  AND combat_factions.victoire != 'artisanat'
  AND combat_factions.victoire != 'Foire'
  AND combat_factions.victoire != ''
  AND combat_factions.victoire = combat_factions.attaquant
  AND combat_factions.factionAtt = '".$faction."'
  ");
	$reqXPFacDef = mysql_query("SELECT ROUND(AVG(combat_factions.xpAtt))
  FROM combat_factions
  WHERE combat_factions.victoire != 'Espionnage'
  AND combat_factions.victoire != 'artisanat'
  AND combat_factions.victoire != 'Foire'
  AND combat_factions.victoire != ''
  AND combat_factions.victoire = combat_factions.defendant
  AND combat_factions.factionAtt = '".$faction."'
  ");
	$dataXpFacAtt = 0;
	$dataXpFacDef = 0;
	while ($data = mysql_fetch_array($reqXPFacAtt)) {
		$dataXpFacAtt = $data[0];
	}
	while ($data = mysql_fetch_array($reqXPFacDef)) {
		$dataXpFacDef = $data[0];
	}
	$totalXpFac = $dataXpFacAtt+$dataXpFacDef;

	return $totalXpFac;
	// echo "tt: ".$totalXpFac;
}
// moyenne des niveaux (faction id)
function getMoyNivFacMembers($faction) {
	// global $moyNivFactionMembers;
	$reqMoyNivFactionMembers = mysql_query("SELECT ROUND(AVG(joueurs_stats.niveau))
  FROM joueurs_stats INNER JOIN factions_membres
	ON factions_membres.nom_membre = joueurs_stats.nom
  WHERE factions_membres.faction_id = '".$faction."'
  ");
	while ($data = mysql_fetch_array($reqMoyNivFactionMembers)) {
		$moyNivFactionMembers = $data[0];
	}
	return $moyNivFactionMembers;
}
// Calcul de l'xp gagnée par le joueur
function calculateXP($factionId, $joueur) {
	$nivJoueur = 0;
	$nbJ = 0;
	$nbVicJoueur = 0;
	$nbDefJoueur = 0;
	$joueurActif = 0;
	// avant maj d'xp
	$nbTotalVicDefJoueurAvant = 0;
	// apres maj d'xp
	$nbTotalVicDefJoueurApres = 0;
	$reqNbCombatJoueur = mysql_query("SELECT joueurs_bonus.nbrCombats FROM joueurs_bonus WHERE joueurs_bonus.nom = '".$joueur."' ");
	$totalXpFac = getTotalXpFaction($factionId);
	$moyNivFactionMembers = getMoyNivFacMembers($factionId);
	$reqNbMbr = mysql_query("SELECT COUNT(factions_membres.id_membre) FROM joueurs_stats INNER JOIN factions_membres ON factions_membres.nom_membre = joueurs_stats.nom INNER JOIN joueurs_bonus ON joueurs_bonus.nom = joueurs_stats.nom WHERE factions_membres.faction_id = '".$factionId."' AND joueurs_bonus.victoire + joueurs_bonus.`défaite` > 0 ");
	$reqNivJ = mysql_query("SELECT joueurs_stats.niveau FROM joueurs_stats INNER JOIN factions_membres ON factions_membres.nom_membre = joueurs_stats.nom WHERE factions_membres.faction_id = '".$factionId."' AND joueurs_stats.nom = '".$joueur."' ");
	$reqNbVic = mysql_query("SELECT joueurs_bonus.victoire FROM joueurs_stats INNER JOIN joueurs_bonus ON joueurs_bonus.nom = joueurs_stats.nom WHERE joueurs_stats.nom = '".$joueur."' ");
	$reqNbDef = mysql_query("SELECT joueurs_bonus.`défaite` FROM joueurs_stats INNER JOIN joueurs_bonus ON joueurs_bonus.nom = joueurs_stats.nom WHERE joueurs_stats.nom = '".$joueur."' ");

	while ($data = mysql_fetch_array($reqNivJ)) {
		$nivJoueur = $data[0];
	}
	while ($data = mysql_fetch_array($reqNbMbr)) {
		$nbJ = $data[0];
	}
	while ($data = mysql_fetch_array($reqNbVic)) {
		$nbVicJoueur = $data[0];
	}
	while ($data = mysql_fetch_array($reqNbDef)) {
		$nbDefJoueur = $data[0];
	}
	while ($data = mysql_fetch_array($reqNbCombatJoueur)) {
		$nbTotalVicDefJoueurAvant = $data[0];
	}
	$nbTotalVicDefJoueurApres = $nbVicJoueur+$nbDefJoueur;

	// Si le joueur a fait des combats depuis la dernière fois c'est qu'il est actif
	if ($nbTotalVicDefJoueurApres > $nbTotalVicDefJoueurAvant) {
		$joueurActif = 1;
		// On met a jour les combats
		mysql_query("UPDATE joueurs_bonus SET joueurs_bonus.nbrCombats = '".$nbTotalVicDefJoueurApres."' ");
	}
	// Si il est actif il est reçoit de l'xp
	if ($joueurActif == 1) {
		$xpMbr = round((((($totalXpFac*$nivJoueur)/$nbJ)/$moyNivFactionMembers)*30));
	} else {
		$xpMbr = 0;
	}
	// $xpMbr = (($totalXpFac*$nivJoueur)/$nbJ);
/*	if ($joueur = 'Kofhtagn') {

	echo "<br>";
	echo $totalXpFac;
	echo "<br>";
	echo $nivJoueur;
	echo "<br>";
	echo $nbJ;
	echo "<br>";
	echo $moyNivFactionMembers;
	echo "<br>";
	echo $nivJoueur;
	echo "<br>";
	echo $xpMbr;
}*/
	mysql_query("UPDATE joueurs_stats SET lastXpFac = '".$xpMbr."'");
	return $xpMbr;
}
// Gain d'XP pour le joueur
function gainXpMbrFaction($factionId, $xp) {
	//maj de l'xp
	$sqlXpMbrFac = "UPDATE factions_membres
	INNER JOIN joueurs_stats
	ON joueurs_stats.nom = factions_membres.nom_membre
	INNER JOIN factions
	ON factions.id = factions_membres.faction_id
	SET joueurs_stats.xp = joueurs_stats.xp + '".$xp."'
	WHERE factions_membres.faction_id = ".$factionId."";
	 // $req = mysql_query($sqlXpMbrFac) or die(mysql_error());
}
//Méthode envoi de message vers membres d'une faction pour avertir du gain d'xp
function envoiMessageFactionGainNiv($factionId, $joueur, $vic) {
	$xp = 0;
	$req = mysql_query("SELECT lastXpFac FROM joueurs_stats WHERE nom = '".$joueur."'");
	while ($data = mysql_fetch_array($req)) {
		$xp = $data[0];
	}
	$temps = time()/1000;
	// $date = date('m-d', $temps*1000);
	$nom_jour_fr = array("dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi");
$mois_fr = Array("", "janvier", "février", "mars", "avril", "mai", "juin", "juillet", "août",
        "septembre", "octobre", "novembre", "décembre");
// on extrait la date du jour
list($nom_jour, $jour, $mois, $annee) = explode('/', date("w/d/n/Y"));
$date = $jour.' '.$mois_fr[$mois];
//Affichera par exemple : "date du jour en français : samedi 24 juin 2006."
	$message = "Votre faction s\'est imposée face aux autres avec ";
	$message .= $vic.' victoires ! ';
	$message .= "De ce fait, vous récoltez votre part du butin : ";
	$message .= $xp;
	$message .= " xp";
	$req = "INSERT INTO messagerie (auteur, destinataire, titre, message, `date`, temps)
					VALUES 	('Messager'	, '".$joueur."'	, 'Votre Faction connaît la gloire !'	, '".$message."'	, '".$date."'	, '".$temps."') ";
					// echo $req;
		mysql_query($req) or die(mysql_error());
}

function supprimerCombatsFac($factionId) {
	mysql_query(" DELETE combat_factions FROM combat_factions INNER JOIN factions_membres ON factions_membres.nom_membre = combat_factions.victoire WHERE factions_membres.faction_id = '".$factionId."' ");
}

function getFactionIdByMember($joueur) {
	$sqlGetFID = "SELECT factions.id, factions_membres.nom_membre FROM factions INNER JOIN factions_membres ON factions_membres.faction_id = factions.id WHERE factions_membres.nom_membre = '".$joueur."'";
	$reqFID = mysql_query($sqlGetFID) or die(mysql_error());
	$reqDataToReturn = "";
	$reqData = mysql_fetch_array($reqFID);
			return $reqData[0];
}
function getFactionPalierByMember($joueur) {
	$sqlGetFID = "SELECT factions.prochpalier, factions_membres.nom_membre FROM factions INNER JOIN factions_membres ON factions_membres.faction_id = factions.id WHERE factions_membres.nom_membre = '".$joueur."'";
	$reqFID = mysql_query($sqlGetFID) or die(mysql_error());
	$reqDataToReturn = "";
	$reqData = mysql_fetch_array($reqFID);
			return $reqData[0];
}
function getFactionNivByMember($joueur) {
	$sqlGetFNIV = "SELECT factions.niv FROM factions INNER JOIN factions_membres ON factions.id = factions_membres.faction_id WHERE nom_membre = '".$joueur."' ";
	$reqFNIV = mysql_query($sqlGetFNIV) or die(mysql_error());
	$reqDataToReturn;
	while ($reqData = mysql_fetch_array($reqFNIV)) {
		$reqDataToReturn = $reqData[0];
	}

	return $reqDataToReturn;
}



function gainNivFactions($factionId, $palierVic, $nivFaction) {
    //maj de l'xp
    $sql = "UPDATE factions SET niv = niv + 1 WHERE factions.id = '".$factionId."' ";
    $req = mysql_query($sql) or die(mysql_error());

		// On met à jour les paliers
		majPalierFaction($factionId, $palierVic);
}

function majPalierFaction($factionId, $palierVic) {


var_dump($palierVic);
    //maj de l'xp

    $sql = "UPDATE factions SET prochpalier = prochpalier + 25 WHERE id = '".$factionId."' ";
    $req = mysql_query($sql) or die(mysql_error());


	// On distribue l'xp aux membres
	// gainXpMbrFaction($factionId, calculateXP($factionId, $joueur));

  return $palierVic;
}
function getPaliers($facId) {
  $sql = "SELECT prochpalier FROM factions WHERE id = '".$facId."' ";
  $req = mysql_query($sql) or die(mysql_error());
	$z = 0;
	$palier = null;
	while ($data = mysql_fetch_array($req)) {
		$palier = $data[0];
		$z++;
	}
	return $palier;
}

 ?>
