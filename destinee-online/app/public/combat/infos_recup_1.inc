<?php

include("../connect.php");

$req = mysql_query('SELECT joueurs_aptitudes.*, joueurs_aptitudes_base.actif23, joueurs_aptitudes_base.actif34, joueurs_aptitudes_base.fureur_counter FROM joueurs_aptitudes INNER JOIN joueurs_aptitudes_base ON joueurs_aptitudes.id = joueurs_aptitudes_base.id WHERE joueurs_aptitudes.nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$apt_att = mysql_fetch_assoc($req);
$req = mysql_query('SELECT joueurs_aptitudes.*, joueurs_aptitudes_base.actif23, joueurs_aptitudes_base.actif34, joueurs_aptitudes_base.fureur_counter FROM joueurs_aptitudes INNER JOIN joueurs_aptitudes_base ON joueurs_aptitudes.id = joueurs_aptitudes_base.id WHERE joueurs_aptitudes.nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$apt_def = mysql_fetch_assoc($req);

$req = mysql_query('SELECT race, dieu FROM joueurs_heros WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$race_att = $data[0];
$dieu_att = $data[1];
$req = mysql_query('SELECT race, dieu FROM joueurs_heros WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$race_def = $data[0];
$dieu_def = $data[1];

$req = mysql_query('SELECT email FROM joueurs_heros WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$email1 = $data[0];
$req = mysql_query('SELECT email FROM joueurs_heros WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$email = $data[0];

$req = mysql_query('SELECT offensive, victoire, défaite, rapportOff, incantemin, province FROM joueurs_bonus WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$strategie_att = 100 - $data[0];
$victoire_att = $data[1];
$defaite_att  = $data[2];
$recevoir1    = $data[3];
$incantemin_att= $data[4]/100;
$prov_att = $data[5];
// Conso mana province
$req = mysql_query("SELECT `politiques_effets`.`magie` FROM politiques_effets INNER JOIN provinces_politiques ON provinces_politiques.`politique1` = politiques_effets.`politique` WHERE provinces_politiques.`Province` = '$prov_att'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$conso_mana_prov_att = 1 + (1 - $data['magie']);
$req = mysql_query("SELECT `niveau` FROM batiment_province WHERE `nom` = 'Académie de magie' AND `province` = '$prov_att'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$conso_mana_prov_att -= $data[0] / 100;

$req = mysql_query('SELECT defensive, victoire, défaite, rapport, incantemin, province FROM joueurs_bonus WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$strategie_def = 100 - $data[0];
$victoire_def = $data[1];
$defaite_def  = $data[2];
$recevoir = $data[3];
$incantemin_def= $data[4]/100;
$prov_def = $data[5];
// Conso mana province
$req = mysql_query("SELECT `politiques_effets`.`magie` FROM politiques_effets INNER JOIN provinces_politiques ON provinces_politiques.`politique1` = politiques_effets.`politique` WHERE provinces_politiques.`Province` = '$prov_def'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$conso_mana_prov_def = 1 + (1 - $data['magie']);
$req = mysql_query("SELECT `niveau` FROM batiment_province WHERE `nom` = 'Académie de magie' AND `province` = '$prov_def'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$conso_mana_prov_def -= $data[0] / 100;

// On récupère les stats des deux joueurs
$req = mysql_query('SELECT att, def, ini, end, pui, niveau FROM joueurs_stats WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$att_att = $data[0];
$def_att = $data[1];
$ini_att = $data[2];
$end_att = $data[3];
$pui_att = $data[4];
$niveau_att = $data[5];
$req = mysql_query('SELECT att, def, ini, end, pui, niveau, f_equi FROM joueurs_stats WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$att_def = $data[0];
$def_def = $data[1];
$ini_def = $data[2];
$end_def = $data[3];
$pui_def = $data[4];
$niveau_def = $data[5];
$f_equi_last_def = $data[6];

// nouveaux bonus RAZ septembre 07: résistances diverses, bonus aux gains de fin de combat, consommation de mana
// techniquement ya des champs qui sont pas utilisés, mais c'est tellement vite fait d'en oublier que j'ai mis SELECT *
$req = mysql_query("SELECT * FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$bonus_raz07_att = mysql_fetch_assoc($req);
$req = mysql_query("SELECT * FROM joueurs_modificateurs WHERE nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
$bonus_raz07_def = mysql_fetch_assoc($req);
$pvstotal_def = $bonus_raz07_def['pvstotal'];    // utile pour les choix de lancement de sorts

// quelles sont les créatures des joueurs?
$req = mysql_query('SELECT * FROM `joueurs_créatures` WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$creatures_att = mysql_fetch_assoc($req);
$req = mysql_query('SELECT * FROM `joueurs_créatures` WHERE nom = "'.$cible.'"') or die('Erreur SQL !<br>'.mysql_error());
$creatures_def = mysql_fetch_assoc($req);

// REQUETE qui sort toutes les infos des créatures, utile également dans creatures_att et creatures_def
$sql_creats_stats = 'SELECT id, nom, niveau, att, def, ini, end, pvs, min, max, vol, `range`, cout_argent, cout_mana, type, att_mag, raciale, bgh FROM creatures WHERE id > "5"';
// nécessaire pour être certain qu'il faille lancer les sorts défensifs (défaut de créatures?)
$creats_stats = mysql_query($sql_creats_stats) or die('Erreur SQL !<br>'.$sql_creats_stats.'<br>'.mysql_error());
$total_att = 0;
$total_def = 0;
$pvstotal_att = 0;
while ($creat_stats = mysql_fetch_assoc($creats_stats))
{
	$id_c = $creat_stats['id'];
	if ( ($creatures_att[$id_c] > 0) && ( (isset($_POST['tout'])) || ((isset($_POST[$id_c]))&&($_POST[$id_c]>0)) ) ) {
		$total_att++;
		if (isset($_POST['tout'])) {
			$nbr_creas_sent = 100;
		} else {
			$nbr_creas_sent = min(100, max(0, $_POST[$id_c]));
		}
		$nbr_creas_sent = ceil($creatures_att[$id_c]*$nbr_creas_sent/100);
		$pvstotal_att += ($creat_stats['pvs'] * $nbr_creas_sent);
	}
	if ($creatures_def[$id_c] > 0)
		$total_def++;
}

// On garde les totaux pour le récap en bas du rapport de combat
$pvs_attaquant = $pvstotal_att;
$pvs_defenseur = $pvstotal_def;

// initialissation des compteurs de sorts lancés en combat
$nsorts = array(0, 0);	// attaquant, défenseur
// initialisation des tops-déclenchements des sorts spéciaux, pour l'attaquant et la cible
$demon = false;
$demon2 = false;
$realite = false;
$realite2 = false;
$protection_divine = false;
$protection_divine2 = false;
$croissance_acceleree = false;
$croissance_acceleree2 = false;
$controle_mental = false;
$controle_mental2 = false;
$brouillard = false;
$brouillard2 = false;
$animation = false;
$animation2 = false;
$special_necrolvl3_ = false;
$special_necrolvl3_2 = false;
$special_archer = false;
$special_archer2 = false;
$special_assassin = false;
$special_assassin2 = false;
$special_barde = false;
$special_barde2 = false;
$special_barbare = false;
$special_barbare2 = false;
$special_chevalier = false;
$special_chevalier2 = false;
$special_guerrier = false;
$special_guerrier2 = false;
$special_forgeron = false;
$special_forgeron2 = false;
$special_marchand = false;
$special_marchand2 = false;
$special_paladin = false;
$special_paladin2 = false;
$special_rodeur = false;
$special_rodeur2 = false;
$special_voleur = false;
$special_voleur2 = false;
$special_inqui = false;
$special_inqui2 = false;
$special_enchant = false;
$special_enchant2 = false;
$special_ermite = false;
$special_ermite2 = false;
$special_samourai = false;
$special_samourai2 = false;

$creas_invoc_liste = array(
'Esclavagisme1' => 'Prisonniers affamés',
'Esclavagisme2' => 'Goules apprivoisées',
'Esclavagisme3' => 'Guerriers prisonniers',
'Esclavagisme4' => 'Mentalistes lobotomisés',
'Esclavagisme5' => 'Orques enchaînés',
'Esclavagisme6' => 'Gladiateurs',
'PortailInfernal1' => 'Familiers',
'PortailInfernal2' => 'Quasits',
'PortailInfernal3' => 'Vrocks',
'PortailInfernal4' => 'Bébiliths',
'PortailInfernal5' => 'Balors',
'MortsAnimes' => 'Morts animés');

$creas_polymorph_liste = array(
'Polymorphisme1' => 'Minuscules dragons',
'Polymorphisme2' => 'Chats sorciers',
'Polymorphisme3' => 'Oiseaux en colère',
'Polymorphisme4' => 'Souris bombardiers');


?>
