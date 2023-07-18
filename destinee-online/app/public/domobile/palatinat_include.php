<?php

function bonus2taxe ($bonus, $batiment)
{
	$taux = 1;
	switch ($batiment)
	{
		case 'Casernes fortifiées' :	$taux = 2;	$supp = 0.1;	break;
		case 'Académie de magie' :	$taux = 1;	$supp = 0.05;	break;
		case 'Maître cartographe' :	$taux = 0.5;	$supp = 0;	break;
		case 'Bureau des percepteurs' :	$taux = 1;	$supp = 0.05;	break;
		case 'Temple des Sages' :	$taux = 0.3;	$supp = 0;	break;
	}
	// chaque point de bonus supplémentaire coute $supp en plus de $taux
	return floor( $bonus*$taux + $supp * $bonus*($bonus-1)/2 + 1e-12);
}


function metajourbonus ($province_)
{
	// mise à jour du budget de la province
	global $batiment_liste, $tauxperm;

	$taxe_tot = 0;
	foreach ($batiment_liste as $batiment)
	{
		// récupération de la taxe
		$sql = "SELECT prochain, niveau, permanent, actuel FROM batiment_province WHERE province = '$province_' AND nom = '".addslashes($batiment)."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$taxe_tot += bonus2taxe($data[0], $batiment);
		
		// On met à jour la conso mana pour tous les habitants de la province
		if ($batiment == 'Académie de magie')
		{
			$increment_permanent = ($data[1] - $data[2]) * $tauxperm;
			$diff_bonus = ($increment_permanent + $data[0] - $data[3]) / 100;
			$sql = mysql_query("SELECT `nom` FROM joueurs_bonus WHERE province ='$province_'");
			while ($data = mysql_fetch_row($sql)) {
				$sql = "UPDATE joueurs_modificateurs SET `mana_consommation` = `mana_consommation` + $diff_bonus WHERE nom = '".$data[0]."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			}
		}

        // mise à jour du bonus permanent, pour tous
            $sql = "UPDATE batiment_province SET permanent = (`permanent`+(`niveau`-`permanent`)*$tauxperm) WHERE province = '$province_' AND nom = '".addslashes($batiment)."'";
            $req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		
		// mise à jour des bonus à partir du budget prévu pour la semaine suivante
		$sql = "UPDATE batiment_province SET `niveau` = (`prochain`+`permanent`) WHERE province = '$province_' AND nom = '".addslashes($batiment)."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	}
	
	// mise à jour du total de la taxe
	$sql = "UPDATE provinces_politiques SET `taxes` = '$taxe_tot', `datechgmtpol` = (`datechgmtpol`+10080) WHERE `Province` = '$province_'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	
	echo 'Taxes mises à jour pour '.$province_.'.<br>';
}


function metajourpalatin ($province_)
{
	// Mise à jour du palatin
	global $batiment_liste;
	
	// ancien palatin
	$palatin_old = '';
	$sql = "SELECT Palatin FROM provinces_politiques WHERE Province = '$province_'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_array($req))
		$palatin_old = $data[0];
	
	// détermination du nouveau palatin
	$palatin = '';
	$max = 0;
	$sql = "SELECT `ID`, `NOM` FROM candidat_palatinat WHERE ACCEPT = '1' AND PROVINCE ='".$province_."'";
	$result = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_array($result))
	{
		$id = $data['ID'];
		$candidat = $data['NOM'];
		
		$sql2 = "SELECT COUNT(`ID`) AS nbr FROM votant_palatinat WHERE VOTE = '".$id."'";
		$result2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($result2);
		$nbr = $data[0];
		if (($nbr > $max) || (($nbr==$max)&&($candidat==$palatin_old)))	// en cas d'égalité, l'ancien palatin reste en place
		{
			$palatin = $candidat;
			$max = $nbr;
		}
	}
	
	// changement de palatin
	$sql = "UPDATE provinces_politiques SET Palatin = '$palatin' WHERE Province = '$province_'";
	$result = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	
	$sql = "UPDATE provinces_politiques SET `date` = (`date`+10080) WHERE Province = '$province_'";
	$result = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	
	echo 'Palatin élu pour '.$province_.'.<br>';
}

// *** *** Début du script automatique

$tauxperm = 0.025;	// combien donne de % de bonus permanent le fait de mettre 1% pendant une semaine

$batiment_liste = array('Casernes fortifiées',		'Etude d\'Architecte',	'Académie de magie',	'Maître cartographe',		'Bureau des percepteurs',	'Temple des Sages');
$batiment_texte = array('Gain de créatures par jour', 'Coût général des bâtiments', 'Récupération & Consommation magique', 'Exploration & Découvertes', 'Total des revenus', 'Globe de protection');
$batiment_champ = array('creatures', 					'batiments', 				'magie', 								'exploration', 					'or', 				'protection');

$temps = floor(time()/60);


// Boucle sur toutes les provinces
$sq1 = "SELECT Province, datechgmtpol, date FROM provinces_politiques";
$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.mysql_error());
while ($dat1 = mysql_fetch_row($re1))
{
	$province_ = $dat1[0];
	$datechgmtpol = $dat1[1];
	$date = $dat1[2];
	
	// Mise à jour des bonus provinciaux de semaine en semaine
	while ($datechgmtpol <= $temps)
	{
		metajourbonus ($province_);
		$datechgmtpol += 10080;
	}
	
	while ($date <= $temps)
	{
		metajourpalatin ($province_);
		$date = $date + 10080;
	}
}

?>
