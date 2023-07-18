<?php

//ini_set('memory_limit','64M');


$cible = htmlentities(html_entity_decode($_POST['cible']));
$erreur = 0;
$hier = (time() / 60) - 1440;

// tests préliminaires, avec interruption s'ils ne sont pas passés avec succès
//  l'attaque est-elle toujours possible ? (nombre d'attaques, puissances relatives du joueur et de la cible...)
include ("combat/combat_tests.inc");
include("combat/effets_particuliers.inc");


$race_att = $_SESSION['race'];
$_SESSION['combat'] = 1;
$now = floor(time() / 60);

echo '<div align="left">';
$message1 = '';
$message = '';
//  $messagebug = "";
// CALCUL DE LA DATE POUR LE MESSAGE ENVOYÉ
include ("inclus/dates.inc");
$date = $heure . '<br>' . $jour . ' ' . $mois;
//  FIN DU CALCUL DE LA DATE
// Récupération de divers infos sur le joueur et la cible
// joueur  : statistiques, aptitudes, retrait offensif, victoires, défaites, nombre de créatures différentes $total_att, divers bonus implantés à la raz sep07
// cible   : statistiques, aptitudes, race, email, retrait défensif, victoires, défaites, rapport,
//           nombre de créatures différentes $total_def, divers bonus implantés à la raz sep07
// fonction pour écrire les renseignements sur l'attaquant et la cible
// initialisation des booleans des sorts spéciaux
include ("combat/infos_recup_1.inc");

// Mise à jour de l'or et du mana pour la cible
include ("maj_or_mana.php");
maj_or_mana($cible);

// écriture des informations sur les joueurs
ecritstatsjoueurs(true);

// On calcule si le combat est affaiblissant
$affaib = isCombatAffaiblissant($nom, $pvs_attaquant, $niveau_att, $strategie_att, $cible, $pvs_defenseur, $niveau_def);
$affaib_att = $affaib[0];
$affaib_def = $affaib[1];

// APTITUDES 1 : perfectionnisme, sabotage, concentration
include ("combat/aptitudes_1.inc");
echo '<br>';


// si les 2 joueurs ont des créatures engagées dans le combat, on lance les sorts défensifs
if (($total_att > 0) AND ( $total_def > 0)) {
    include ("combat/magie_defensif.inc");
}

// On déclare tous les arrays nécessaires au combat...
$pvstotal = 0;
$z = 0;   // initialisation indice du tableau des créatures impliquées dans le combat
$a_ = array();  // id
$a_id = array(); // nom
$a_niv = array(); // niveau
$a_typ = array(); // type
$a_att = array(); // attaque
$a_def = array(); // défense
$a_ini = array(); // initiative
$a_end = array(); // endurance
$a_pvs = array(); // points de vie
$a_pvs_nonmod[$z] = array(); // points de vie non modifiés, utilisés pour la perte de puissance à la fin du combat
$a_min = array(); // dégâts min
$a_max = array(); // dégâts max
$a_vol = array(); // 1 si créature volante
$a_ran = array(); // 1 ou 2 si attaque à distance
$a_att_mag = array(); // 1 si attaque magique
$a_raciale = array(); // 1 si raciale
$a_bgh = array(); // 1 si chasseur de gros gibier
$a_qte = array(); // nombre de créatures prenant part au combat, mis à jour
$a_env = array(); // nombre de créatures prenant part au combat, qté de départ
$a_effraye = array(); // nombre de créatures ayant fui le combat (aptitude Effroi)
$a_pvstotal = array(); // points de vie total du stack
$a_abh = array(); // modificateur aux stats dûs aux dégâts des abhérations. cette variable est 1 au début, puis à chaque dégât d'abhération se réduit pour indiquer à combien est maintenant le pourcentage. Est initialisée seulement lorsqu'il y a besoin, c'est à dire lorsque un stack d'abhération tape sur un autre
$a_flm = array(); // dégâts sur la durée causés par le sort spécial d'archer; initialisation de la variable dans les creature_att et creature_def
$a_flm2 = array();
$a_abh[0] = 1;   // apparement faut ça pour éviter un bug. sans doute lié au fait que la variable est initialisée seulement en cas de besoin et pas pour toutes les créaures
$a_pois = array(); // poison des Terreurs des Égoûts
$a_haunt = array(); // hantise des Esprits vengeurs
$souffle_a = 2;   // souffle des Dragons rouges
$souffle_c = 2;
$seconde_fleche_a = 1; // double flèche des chasseurs des cimes
$seconde_fleche_c = 1;
$pv_kraken = 52200; // initialisation pv du kraken
$croise_pos = 1; // position défensive des croisés impériaux
$croise_pos2 = 1; // position défensive des croisés impériaux
$poly_att = array(); // liste des créas polymorphées
$poly_def = array();
$pvstotal_par_niv_att = array();
$pvstotal_par_niv_def = array();
// Stacks d'illusions des joueurs
$illus_att = array();
$illus_def = array();

// CARACTERISTIQUES DE L'ATTAQUANT
//  intelligence, force brute, résistance, agilité, endurance, ferveur
include ("combat/carac_att.inc");
// CREATURES DE L'ATTAQUANT

// Polymorphisme
if ($special_transmutateur) {
	$message_ajout = polymorphisme($pvs_defenseur, $creatures_def, $poly_def);
	echo '<img src="images/sorts/special/polymorphisme.png" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Polymorphisme a été lancé avec succès :</b></span><br> '.$message_ajout.'.<br>';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/special/polymorphisme.png" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Polymorphisme a été lancé avec succès :</b></span><br /> '.$message_ajout.'.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/special/polymorphisme.png" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Polymorphisme a été lancé avec succès :</b></span><br /> '.$message_ajout.'.<br />';
}
if ($special_transmutateur2) {
	$message_ajout = polymorphisme($pvs_attaquant, $creatures_att, $poly_att);
	echo '<img src="images/sorts/special/polymorphisme.png" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Polymorphisme a été lancé avec succès :</b></span><br> '.$message_ajout.'.<br>';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/special/polymorphisme.png" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Polymorphisme a été lancé avec succès :</b></span><br /> '.$message_ajout.'.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/special/polymorphisme.png" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Polymorphisme a été lancé avec succès :</b></span><br /> '.$message_ajout.'.<br />';
}

// Esclavagisme
if ($special_esclavagiste) {
	$message_ajout = ajouter_esclaves($pvs_attaquant, $pvs_defenseur, $bonus_raz07_att['population2'], $creatures_att);
	echo '<a href="/info_sorts.php?sort=120" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="/images/sorts/esclavagisme.gif" width="20px" height="20px" align="center" border=1></a><span style="color:#0D4573;"><b> Votre sort Esclavagisme a été lancé avec succès :</b></span><br> '.$message_ajout.' rejoignent vos troupes.<br>';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/esclavagisme.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Esclavagisme a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/esclavagisme.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Esclavagisme a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br />';
}
if ($special_esclavagiste2) {
	$message_ajout = ajouter_esclaves($pvs_attaquant, $pvs_defenseur, $bonus_raz07_def['population2'], $creatures_def);
	echo '<a href="/info_sorts.php?sort=120" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="/images/sorts/esclavagisme.gif" width="20px" height="20px" align="center" border=1></a><span style="color:#B31141;"><b> Le sort Esclavagisme a été lancé avec succès :</b></span><br> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br>';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/esclavagisme.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Esclavagisme a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/esclavagisme.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Esclavagisme a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
}

// Portail infernal
if ($demon) {
	$message_ajout = ajouter_demons($pvs_attaquant, $pvs_defenseur, $creatures_att);
	echo '<a href="/info_sorts.php?sort=97" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="/images/sorts/portailinfernal.gif" width="20px" height="20px" align="center" border=1></a><span style="color:#0D4573;"><b> Le sort Portail Infernal a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br />';
	$message1.= '<img src="/images/sorts/portailinfernal.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Le sort Portail Infernal a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br />';
	$message .= '<img src="/images/sorts/portailinfernal.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Votre sort Portail Infernal a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
}
if ($demon2) {
	$message_ajout = ajouter_demons($pvs_attaquant, $pvs_defenseur, $creatures_def);
	echo '<a href="/info_sorts.php?sort=97" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false"><img src="/images/sorts/portailinfernal.gif" width="20px" height="20px" align="center" border=1></a><span style="color:#B31141;"><b> Votre sort Portail Infernal a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
	$message1.= '<img src="/images/sorts/portailinfernal.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Votre sort Portail Infernal a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
	$message .= '<img src="/images/sorts/portailinfernal.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Le sort Portail Infernal a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br />';
}

// Réalité parallèle
if ($realite) {
	$message_ajout = ajouter_illusions($pvs_attaquant, $pvs_defenseur, $creatures_att, $illus_att);
	echo '<img src="images/sorts/realiteparallele.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Réalité Parallèle a été lancé avec succès :</b></span><br> '.$message_ajout.' rejoignent vos troupes.<br>';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/realiteparallele.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Réalité Parallèle a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/realiteparallele.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Réalité Parallèle a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br />';
}
if ($realite2) {
	$message_ajout = ajouter_illusions($pvs_defenseur, $pvs_attaquant, $creatures_def, $illus_def);
	echo '<img src="images/sorts/realiteparallele.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Réalité Parallèle a été lancé avec succès :</b></span><br> '.$message_ajout.' rejoignent les troupes de l\'adversaire.<br>';
	$message1.= '<img src="http://www.destinee-online.com/images/sorts/realiteparallele.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Réalité Parallèle a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent les troupes de l\'adversaire<br />';
	$message .= '<img src="http://www.destinee-online.com/images/sorts/realiteparallele.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Réalité Parallèle a été lancé avec succès :</b></span><br /> '.$message_ajout.' rejoignent vos troupes.<br />';
}

//  ingéniosité, croissance accélérée, protection divine, brouillard de guerre
include ("combat/creatures_att.inc");

$milieu = $z;              // on passe aux créatures de la cible
// CARACTERISTIQUES DE LA CIBLE
//  intelligence, force brute, résistance, agilité, endurance, ferveur
include ("combat/carac_def.inc");
// CREATURES DE LA CIBLE
//  ingéniosité
//  purification, profanation, croissance accélérée, protection divine, brouillard de guerre
include ("combat/creatures_def.inc");

// à ce stade, les créatures de l'attaquant sont indicées de (0) à (milieu-1)
//          et les créatures du défenseur sont indicées de (milieu) à ($z-1)
// initialisations concernant le sort Animation des Morts (du nécromancien)
$pvs_morts = 0;                        // initialisation des pvs tués par les sorts et par assassinat
// initialisation du sort spécial de paladin
$a_qte_old = $a_qte;
$a_pvstotal_old = $a_pvstotal;

// APTITUDES 2 : charge meurtrière, sort spécial du marchand
if (($total_att > 0) AND ( $total_def > 0)) {
    include ("combat/aptitudes_2.inc");
}

// Coefficient à la force de l'armée (appliqué à l'xp et à la puissance des sorts offensifs)
$force_armee_att = 0;
$force_armee_def = 0;
// La force de l'armée est un indicateur de la force de l'armée du joueur, compris entre 100 (armée full lvl 1) et 200 (armée full lvl 10)
// 100 		120 	140 	160 	180		200
// 25		18 		21		24		27		30
// 100 / 145 / 200
// Une armée parfaitement équilibrée vaut 145
for ($i=1;$i<=6;$i++) {
	$force_armee_att += $pvstotal_par_niv_att[$i] / $pvs_attaquant * (100 + ($i - 1) * 20);
	$force_armee_def += $pvstotal_par_niv_def[$i] / $pvs_defenseur * (100 + ($i - 1) * 20);
}
$coef_force_armee_att = min(145, $force_armee_def) / 100;
$coef_force_armee_def = min(145, $force_armee_att) / 100;

// si les 2 joueurs ont des créatures engagées dans le combat, on lance les sorts offensifs
if (($total_att > 0) AND ( $total_def > 0)) {
    include("combat/magie_offensif.inc");
}

// APTITUDES 3 : contrôle mental (sort), Assassinat
if (($total_att > 0) AND ( $total_def > 0)) {
    include "combat/aptitudes_3.inc";
}

// Bonus d'inertie
$bonus_ini_att = max(0, round(($ini_att - $ini_def) / 6));
$bonus_ini_def = max(0, round(($ini_def - $ini_att) / 6));

// Facteur d'équilibre de l'armée
$tranche_att = $pvstotal_att * 0.15;
$limite_att = $pvstotal_att * 0.15;
$pvstotal_par_niv_att_copy = $pvstotal_par_niv_att;

$f_equi_armee_att = 1;
for ($i=6;$i>1;$i--) {
	if ($i<6) {
		$pvstotal_par_niv_att_copy[$i] += $pvstotal_par_niv_att_copy[$i+1];
		$limite_att += $tranche_att;
	}
	$f_equi_armee_att += max((($pvstotal_par_niv_att_copy[$i] / $limite_att) - 1), 0) * (1 - 0.2 * (6 - $i)) / 2;
}

$tranche_def = $pvstotal_def * 0.15;
$limite_def = $pvstotal_def * 0.15;
$pvstotal_par_niv_def_copy = $pvstotal_par_niv_def;

if ($f_equi_last_def > 0) {
	$f_equi_armee_def = $f_equi_last_def;
} else {
	$f_equi_armee_def = 1;
	for ($i=6;$i>1;$i--) {
		if ($i<6) {
			$pvstotal_par_niv_def_copy[$i] += $pvstotal_par_niv_def_copy[$i+1];
			$limite_def += $tranche_def;
		}
		$f_equi_armee_def += (max((($pvstotal_par_niv_def_copy[$i] / $limite_def) - 1), 0) * (1 - 0.2 * (6 - $i)) / 2);
	}
}

$f_equi_armee_att = round($f_equi_armee_att, 2);
$f_equi_armee_def = round($f_equi_armee_def, 2);

echo '<span style="color:#000000;"><b> Le facteur d\'équilibre de l\'armée de l\'attaquant est :</b></span> '.$f_equi_armee_att.'.<br>';
$message1.= '<span style="color:#000000;"><b> Le facteur d\'équilibre de l\'armée de l\'attaquant est :</b></span> '.$f_equi_armee_att.'.<br>';
$message .= '<span style="color:#000000;"><b> Le facteur d\'équilibre de l\'armée de l\'attaquant est :</b></span> '.$f_equi_armee_att.'.<br>';

echo '<span style="color:#000000;"><b> Le facteur d\'équilibre de l\'armée du défenseur est :</b></span> '.$f_equi_armee_def.'.<br>';
$message1.= '<span style="color:#000000;"><b> Le facteur d\'équilibre de l\'armée du défenseur est :</b></span> '.$f_equi_armee_def.'.<br>';
$message .= '<span style="color:#000000;"><b> Le facteur d\'équilibre de l\'armée du défenseur est :</b></span> '.$f_equi_armee_def.'.<br>';
// Fin Facteur d'équilibre

echo '</div>';
echo "<table style='width: 100%; text-align: left; margin-left: auto; margin-right: auto;' border='0' cellspacing='2' cellpadding='2'><tbody>";
$message1.= "<table style='width: 100%; text-align: left; margin-left: auto; margin-right: auto;' border='0' cellspacing='2' cellpadding='2'><tbody>";
$message .= "<table style='width: 100%; text-align: left; margin-left: auto; margin-right: auto;' border='0' cellspacing='2' cellpadding='2'><tbody>";

// On débute le combat en enclenchant les tours...
$tour = 1;
while ($tour > 0) {
    // On calcule le nombre de PVS total restant dans les deux équipes...
    $pvstotal_att = 0;
    $pvstotal_def = 0;
    $i = 0;
    while ($i < $milieu) {
        if (stackCompteDansRetraite($i))
            $pvstotal_att += $a_pvstotal[$i];
        $i++;
    }
    $i = $milieu;
    while ($i < $z) {
        if (stackCompteDansRetraite($i))
            $pvstotal_def += $a_pvstotal[$i];
        $i++;
    }
    // Conditions de retraite
    $perdu_att = false;
    $perdu_def = false;
    if ($pvstotal_att == 0)
        $perdu_att = true;   // si l'attaquant n'a plus de créatures
    else if ($pvstotal_def == 0)
        $perdu_def = true;  // si la cible n'a plus de créatures
    else if ($tour > 2 && ((($pvstotal_att / $gros_pvstotal_att) * 100) <= $strategie_att) && $pvstotal_att < (2 * $pvstotal_def)) // On regarde si la stratégie offensive de l'attaquant doit s'activer
        $perdu_att = true;
    else if ($tour > 2 && ((($pvstotal_def / $gros_pvstotal_def) * 100) <= $strategie_def) && $pvstotal_def < (2 * $pvstotal_att)) // On regarde si la stratégie défensive de la cible doit s'activer
        $perdu_def = true;
    // L'attaquant a-t-il perdu le combat ?
    if ($perdu_att) {
        $gagnant = $cible;
        $perdant = $nom;
        include ("combat/fin_combat.inc");
        break;
    }
    // La cible a-t-elle perdu le combat ?
    if ($perdu_def) {
        $gagnant = $nom;
        $perdant = $cible;
        include ("combat/fin_combat.inc");
        break;
    }

    // Si personne ne meurt, on débute enfin le combat...
    echo '<tr><td class="tdcen">&nbsp;<br><b>- Tour ' . $tour . ' -</b><br>&nbsp;</td></tr>';
    $message1.= '<tr><td style="text-align:center;font-family:garamond;"><br /><br /><b>- Tour ' . $tour . ' -</b><br /></td></td>';
    $message .= '<tr><td style="text-align:center;font-family:garamond;"><br /><br /><b>- Tour ' . $tour . ' -</b><br /></td></td>';

    // Réinitialisation de début de tour
    $a_qte[$morts] = 0;
    $a_env[$morts] = 0;
    $a_pvstotal[$morts] = 0;
    $a_qte[$morts2] = 0;
    $a_env[$morts2] = 0;
    $a_pvstotal[$morts2] = 0;

    // Animation des Morts
    if ($animation) {
        $a_qte[$morts] += floor($pvs_morts / 2 / $a_pvs[$morts]);
        $a_env[$morts] += $a_qte[$morts];
        $a_pvstotal[$morts] += $a_qte[$morts] * $a_pvs[$morts];
    }
    if ($animation2) {
        $a_qte[$morts2] += floor($pvs_morts / 2 / $a_pvs[$morts2]);
        $a_env[$morts2] += $a_qte[$morts2];
        $a_pvstotal[$morts2] += $a_qte[$morts2] * $a_pvs[$morts2];
    }
    $pvs_morts = 0;

    // Revenants archers
	$a_qte[$morts] += floor($pv_tues_revenants / $a_pvs[$morts]);
	$a_env[$morts] += $a_qte[$morts];
	$a_pvstotal[$morts] += $a_qte[$morts] * $a_pvs[$morts];
	$a_qte[$morts2] += floor($pv_tues_revenants2 / $a_pvs[$morts2]);
	$a_env[$morts2] += $a_qte[$morts2];
	$a_pvstotal[$morts2] += $a_qte[$morts2] * $a_pvs[$morts2];
    $pv_tues_revenants = 0;
    $pv_tues_revenants2 = 0;

    // Calcul des dégats (sort spécial d'archers - flèches enflammées: fait 50% de dégats supplémentaires au début du tour suivant)
    if ($tour == 2) {
        // Flèches enflammées du défenseur
        foreach ($a_flm AS $v => $value) {
            if ($a_flm[$v] > 0 && $a_pvstotal[$v] > 0) {
                $degat2 = round($a_flm[$v] * 0.5);
                $n_pvstotal = ($a_pvstotal[$v] - $degat2);
                if ($n_pvstotal <= 0) { // Élimination du stack
                    echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Flèches enflammées:</b> Le feu brûle les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                    $message1.= '<tr><td style="color:#0D4573;"><b>Flèches enflammées:</b> Le feu brûle les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    $message .= '<tr><td style="color:#B31141;"><b>Flèches enflammées:</b> Le feu brûle vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";

                    $pvs_morts += $a_pvstotal[$v];
                    $a_qte[$v] = 0;
                    $a_pvstotal[$v] = 0;
                } else { // les dégats n'ont pas été suffisants pour détruire le stack adverse
                    $qte_rest = ceil($n_pvstotal / $a_pvs[$v]);
                    $qte_elim = $a_qte[$v] - $qte_rest;

                    echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Flèches enflammées:</b> Le feu brûle les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . ' !</td></tr>';
                    $message1.= '<tr><td style="color:#0D4573;"><b>Flèches enflammées:</b> Le feu brûle les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                    $message .= '<tr><td style="color:#B31141;"><b>Flèches enflammées:</b> Le feu brûle vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";

                    $pvs_morts += $degat2;
                    $a_qte[$v] = $qte_rest;
                    $a_pvstotal[$v] = $n_pvstotal;
                }
                $a_flam[$v] = 0;
            }
        }

        // Flèches enflammées de l'attaquant
        foreach ($a_flm2 AS $v => $value) {
            if ($a_flm2[$v] > 0 && $a_pvstotal[$v] > 0) {
                $degat2 = round($a_flm2[$v] * 0.5);
                $n_pvstotal = ($a_pvstotal[$v] - $degat2);
                if ($n_pvstotal <= 0) { // Élimination du stack
                    echo '<tr><td class="tdlef" style="color:#B31141;"><b>Flèches enflammées:</b> Le feu brûle vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                    $message1.= '<tr><td style="color:#B31141;"><b>Flèches enflammées:</b> Le feu brûle vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    $message .= '<tr><td style="color:#0D4573;"><b>Flèches enflammées:</b> Le feu brûle les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";

                    $pvs_morts += $a_pvstotal[$v];
                    $a_qte[$v] = 0;
                    $a_pvstotal[$v] = 0;
                } else { // les dégats n'ont pas été suffisants pour détruire le stack adverse
                    $qte_rest = ceil($n_pvstotal / $a_pvs[$v]);
                    $qte_elim = $a_qte[$v] - $qte_rest;

                    echo '<tr><td class="tdlef" style="color:#B31141;"><b>Flèches enflammées:</b> Le feu brûle vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . ' !</td></tr>';
                    $message1.= '<tr><td style="color:#B31141;"><b>Flèches enflammées:</b> Le feu brûle vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                    $message .= '<tr><td style="color:#0D4573;"><b>Flèches enflammées:</b> Le feu brûle les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";

                    $pvs_morts += $degat2;
                    $a_qte[$v] = $qte_rest;
                    $a_pvstotal[$v] = $n_pvstotal;
                }
                $a_flam[$v] = 0;
            }
        }
    }

    // Poison des Terreurs des égoûts
    if (!empty($a_pois)) {
        foreach ($a_pois as $v => $degat_pois) {
            if ($a_pvstotal[$v] > 0) {
                $degat2 = round($degat_pois / 10);
                $n_pvstotal = ($a_pvstotal[$v] - $degat2);
                if ($n_pvstotal <= 0) { // Élimination du stack
                    if ($v < $milieu) {
                        echo '<tr><td class="tdlef" style="color:#B31141;"><b>Poison:</b> Le poison décime vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                        $message1.= '<tr><td style="color:#B31141;"><b>Poison:</b> Le poison décime vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                        $message .= '<tr><td style="color:#0D4573;"><b>Poison:</b> Le poison décime les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    } else {
                        echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Poison:</b> Le poison décime les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                        $message1.= '<tr><td style="color:#0D4573;"><b>Poison:</b> Le poison décime les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                        $message .= '<tr><td style="color:#B31141;"><b>Poison:</b> Le poison décime vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    }

                    $pvs_morts += $a_pvstotal[$v];
                    $a_qte[$v] = 0;
                    $a_pvstotal[$v] = 0;
                } else { // les dégats n'ont pas été suffisants pour détruire le stack adverse
                    $qte_rest = ceil($n_pvstotal / $a_pvs[$v]);
                    $qte_elim = $a_qte[$v] - $qte_rest;

                    if ($v < $milieu) {
                        echo '<tr><td class="tdlef" style="color:#B31141;"><b>Poison:</b> Le poison décime vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . ' !</td></tr>';
                        $message1.= '<tr><td style="color:#B31141;"><b>Poison:</b> Le poison décime vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                        $message .= '<tr><td style="color:#0D4573;"><b>Poison:</b> Le poison décime les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                    } else {
                        echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Poison:</b> Le poison décime les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . ' !</td></tr>';
                        $message1.= '<tr><td style="color:#0D4573;"><b>Poison:</b> Le poison décime les ' . $a_qte[$v] . ' ' . $a_id[$v] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                        $message .= '<tr><td style="color:#B31141;"><b>Poison:</b> Le poison décime vos ' . $a_qte[$v] . ' ' . $a_id[$v] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                    }

                    $pvs_morts += $degat2;
                    $a_qte[$v] = $qte_rest;
                    $a_pvstotal[$v] = $n_pvstotal;
                }
            }
        }
    }

    // Machoire intérieure du Kraken
    if (!is_null($englouti)) {
        if ($a_pvstotal[$englouti] > 0) {
            $degat2 = round($pv_kraken / (($a_niv[$englouti] + 1) * 2));
            $n_pvstotal = ($a_pvstotal[$englouti] - $degat2);
            if ($n_pvstotal <= 0) {
                // Élimination du stack
                if ($englouti < $milieu) {
                    echo '<tr><td class="tdlef" style="color:#B31141;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée de vos ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ', leur infligeant ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                    $message1.= '<tr><td style="color:#B31141;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée de vos ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ', leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    $message .= '<tr><td style="color:#0D4573;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée des ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ' adverses, leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                } else {
                    echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée des ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                    $message1.= '<tr><td style="color:#0D4573;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée des ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ' adverses, leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    $message .= '<tr><td style="color:#B31141;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée de vos ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ', leur infligeant ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                }

                $pvs_morts += $a_pvstotal[$englouti];
                $a_qte[$englouti] = 0;
                $a_pvstotal[$englouti] = 0;
				$englouti = null;
            } else { // les dégats n'ont pas été suffisants pour détruire le stack adverse
                $qte_rest = ceil($n_pvstotal / $a_pvs[$englouti]);
                $qte_elim = $a_qte[$englouti] - $qte_rest;

                if ($englouti < $milieu) {
                    echo '<tr><td class="tdlef" style="color:#B31141;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée de vos ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . ' !</td></tr>';
                    $message1.= '<tr><td style="color:#B31141;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée de vos ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                    $message .= '<tr><td style="color:#0D4573;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée des ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                } else {
                    echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée des ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . ' !</td></tr>';
                    $message1.= '<tr><td style="color:#0D4573;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée des ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ' adverses, leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                    $message .= '<tr><td style="color:#B31141;"><b>Machoire intérieure:</b> Le kraken ne fait qu\'une bouchée de vos ' . $a_qte[$englouti] . ' ' . $a_id[$englouti] . ', leur infligeant ' . $degat2 . ' dégâts, en éliminant ' . $qte_elim . " !</td></tr>";
                }

                $pvs_morts += $degat2;
                $a_qte[$englouti] = $qte_rest;
                $a_pvstotal[$englouti] = $n_pvstotal;
            }
        }
    }

    if ($special_barde && $tour > 1 ) { // Mélodie entraînante augmente les stats des créatures de 2 à chaque tour
		for ($i = 0; $i < $milieu; $i++) {
			$a_att[$i] += 2;
            $a_def[$i] += 2;
            $a_ini[$i] += 2;
            $a_end[$i] += 2;
		}
	}

	if ($special_barde2 && $tour > 1) { // Mélodie entraînante augmente les stats des créatures de 2 à chaque tour
		for ($i = $milieu; $i < $z; $i++) {
			$a_att[$i] += 2;
            $a_def[$i] += 2;
            $a_ini[$i] += 2;
            $a_end[$i] += 2;
		}
	}

	    if ($special_clerc && $tour > 1 ) { // Confusion baisse les stats des créatures adverses de 1% à chaque tour
		for ($i = 0; $i < $milieu; $i++) {
			$a_att[$v] *= 0.995;
            $a_def[$v] *= 0.995;
            $a_ini[$v] *= 0.995;
            $a_end[$v] *= 0.995;
		}
	}

	if ($special_clerc2 && $tour > 1) { // Confusion baisse les stats des créatures adverses de 0.5% à chaque tour
		for ($i = $milieu; $i < $z; $i++) {
			$a_att[$v] *= 0.995;
            $a_def[$v] *= 0.995;
            $a_ini[$v] *= 0.995;
            $a_end[$v] *= 0.995;
		}
	}





	if ($special_paladin) { // soigne jusqu'à 30% des points de vie de chaque type de créature perdus lors du tour de combat précédent - inclus également les sorts
        $spepaltxt = '';
        for ($i = 0; $i < $milieu; $i++) {
            $tmp = $a_qte[$i];
            $tmp_pvstotal = $a_pvstotal[$i];
            $a_pvstotal[$i] += mt_rand(10,30)/100 * ($a_pvstotal_old[$i] - $a_pvstotal[$i] - ($a_effraye[$i] * $a_pvs[$i]));
            $a_qte[$i] = ceil($a_pvstotal[$i] / $a_pvs[$i]);
            if ($a_qte[$i] > $tmp)
                $spepaltxt .= ', ' . ($a_qte[$i] - $tmp) . ' ' . $a_id[$i];
        }
        if (strlen($spepaltxt) > 0) {
            $spepaltxt = substr($spepaltxt, 2);
            echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Imposition des mains: ' . $spepaltxt . '</b> sont soignés!</td></tr>';
            $message1.= '<tr><td style="text-align:center;color:#0D4573;"><b>Imposition des mains: ' . $spepaltxt . "</b> sont soignés!</td></tr>";
            $message .= '<tr><td style="text-align:center;color:#B31141;"><b>Imposition des mains: ' . $spepaltxt . "</b> sont soignés!</td></tr>";
        }
    }
    if ($special_paladin2) {
        $spepaltxt = '';
        for ($i = $milieu; $i < $z; $i++) {
            $tmp = $a_qte[$i];
            $tmp_pvstotal = $a_pvstotal[$i];
            $a_pvstotal[$i] += mt_rand(10,30)/100 * ($a_pvstotal_old[$i] - $a_pvstotal[$i] - ($a_effraye[$i] * $a_pvs[$i]));
            $a_qte[$i] = ceil($a_pvstotal[$i] / $a_pvs[$i]);
            if ($a_qte[$i] > $tmp)
                $spepaltxt .= ', ' . ($a_qte[$i] - $tmp) . ' ' . $a_id[$i];
        }
        if (strlen($spepaltxt) > 0) {
            $spepaltxt = substr($spepaltxt, 2);
            echo '<tr><td class="tdlef" style="color:#B31141;"><b>Imposition des mains: ' . $spepaltxt . '</b> sont soignés!</td></tr>';
            $message1.= '<tr><td style="text-align:center;color:#B31141;"><b>Imposition des mains: ' . $spepaltxt . "</b> sont soignés!</td></tr>";
            $message .= '<tr><td style="text-align:center;color:#0D4573;"><b>Imposition des mains: ' . $spepaltxt . "</b> sont soignés!</td></tr>";
        }
    }
    $a_qte_old = $a_qte;
    $a_pvstotal_old = $a_pvstotal;


    // Calcul du nombre de créatures prenant part au combat ce tour-ci
    // tri du tableau sur l'initiative
    $a_ini_sort = $a_ini;
    foreach ($a_ini_sort AS $key => $value) {
        $a_ini_sort[$key] += mt_rand(1, 5);
		// Charge irrésistible du chevalier: les créatures de contact gagnent 25 d'initiative au tour 2
		if ($tour == 2 && (($special_chevalier && ($key < $milieu)) || ($special_chevalier2 && $key >= $milieu)) && ($a_ran[$key] == 0)) {
			$a_ini_sort[$key] += 25;
		}
	}
    arsort($a_ini_sort);
	// tri du tableau sur les level des créatures
	$a_niv_sort = $a_niv;
	arsort($a_niv_sort);
    // tableau des clés, permettant donc de faire le lien entre le tableau $a_ini_sort (trié) et les autres $a_* (non triés)
    $k = array_keys($a_ini_sort);
    $k2 = array_keys($a_id);
	$k3 = array_keys($a_niv_sort);

    // Calcul du nombre de créatures prenant part au combat ce tour-ci
    $combat = array();
    // Calcul du nombre de créatures à faire partie des rounds normaux...
    if ($tour > 1) {
        foreach ($k AS $i => $k_i) {
            if ($a_pvstotal[$k_i] > 0 && $a_max[$k_i] > 0) {
                $combat[] = $k_i;
			}
		}
    }
    // Calcul du nombre de créatures à faire partie du round d'archer
    else {
		if ($special_chevalier || $special_chevalier2) {
			echo '<tr><td class="tdlef" style="color:#000000;">Chaaaaaaarge!!!</td></tr>';
			$message1.= '<tr><td style="color:#000000;">Chaaaaaaarge!!!</td></tr>';
			$message .= '<tr><td style="color:#000000;">Chaaaaaaarge!!!</td></tr>';
		} else {
			foreach ($k AS $i => $k_i) {
				if (($a_pvstotal[$k_i] > 0) && ($a_ran[$k[$i]] == 1 || (($a_typ[$k_i] == 'Reptile' || $a_id[$k_i] == 'Quetzalcoatls') && !($k_i < $milieu && $effets_creas_att <= 0) && !($k_i >= $milieu && $effets_creas_def <= 0))) && $a_max[$k_i] > 0) {
					$combat[] = $k_i;
				}
			}
			if (empty($combat)) {
				echo '<tr><td class="tdlef" style="color:#000000;">Rien ne se passe...</td></tr>';
				$message1.= '<tr><td style="color:#000000;">Rien ne se passe...</td></tr>';
				$message .= '<tr><td style="color:#000000;">Rien ne se passe...</td></tr>';
			}
		}
    }

    // Début du combat en fonction du nombre de créatures y participant...
    foreach ($combat AS $x) {
        $repercute = 1;
        $degat3 = 0;

        while ($repercute == 1 AND $a_qte[$x] > 0) {

			$nom1 = $a_id[$x];
			$qte1 = $a_qte[$x];

			if ($x < $milieu) {
				$p = 1;        // quel est le joueur
				$min = $milieu;       // indice mini des cibles
				$max = $z;            // incide maxi des cibles
				$apt_a = &$apt_att;    // aptitudes pour la créature attaquante
				$apt_c = &$apt_def;    // aptitudes pour la créature cible
				$raz07_a = &$bonus_raz07_att; // bonus de la créature qui tappe
				$raz07_c = &$bonus_raz07_def; // bonus de la céature qui se fait taper
				$special_barde_a = $special_barde ? 1 : 0; // sort spé de barde; utilisé assez de fois pour que ce soit utile
				$special_barde_c = $special_barde2 ? 1 : 0;
				$div_degats = $f_equi_armee_att;
				$mod_profa_a = $mod_profa_att;
				$mod_purif_a = $mod_purif_att;
				$mod_profa_c = $mod_profa_def;
				$mod_purif_c = $mod_purif_def;
				$effets_creas_a = $effets_creas_att;
				$effets_creas_c = $effets_creas_def;
				$bonus_ini_a = $bonus_ini_att;
			} else {
				$p = 2;        // quel est le joueur
				$min = 0;             // indice mini des cibles
				$max = $milieu;       // incide maxi des cibles
				$apt_a = &$apt_def;    // aptitudes pour la créature attaquante
				$apt_c = &$apt_att;    // aptitudes pour la créature cible
				$raz07_a = &$bonus_raz07_def; // bonus de la créature qui tappe
				$raz07_c = &$bonus_raz07_att; // bonus de la céature qui se fait taper
				$special_barde_a = $special_barde2 ? 1 : 0; // sort spé de barde; utilisé assez de fois pour que ce soit utile
				$special_barde_c = $special_barde ? 1 : 0;
				$div_degats = $f_equi_armee_def;
				$mod_profa_a = $mod_profa_def;
				$mod_purif_a = $mod_purif_def;
				$mod_profa_c = $mod_profa_att;
				$mod_purif_c = $mod_purif_att;
				$effets_creas_a = $effets_creas_def;
				$effets_creas_c = $effets_creas_att;
				$bonus_ini_a = $bonus_ini_def;
			}

            $t_type = '';
            $t_type_m = '';
            echo '<tr class="rollovercolor">';
            $message1.= '<tr>';
            $message .= '<tr>';

            // On détermine la cible
			$vict = array();
			foreach ($k3 AS $i => $k_i) {
				if ($k_i >= $min && $k_i < $max) {
					if (( ( $a_pvstotal[$k_i] ) > 0 ) AND ( $a_qte[$k_i] > 0 ) AND ($k_i != $morts) AND ($k_i != $morts2) AND ( is_null($untargetable) OR $k_i != $untargetable))
						$vict[] = $k_i;
				}
			}

            // On réinitialise untargetable
            $untargetable = null;

			// Si il n'y a plus de cibles, on arrête le combat...
			$nbr_c = count($vict);
            if ($nbr_c == 0)
                break;

			// Si la créature est un big game hunter, on ne garde que les créas de plus haut level
			$bgh_luck = mt_rand(0,1);
			if ($a_bgh[$x] == 1 && $bgh_luck == 1) {
				$bonus_degats_bgh = 0.3;
				$vict_bgh = array();
				if ($nbr_c > 1) {
					$i = 0;
					while ($a_niv[$vict[$i]] > ($a_niv[$vict[0]] - 2)) {
						$vict_bgh[] = $vict[$i];
						$i++;
					}
					$vict = $vict_bgh;
					// On rétablit le compte de cibles
					$nbr_c = count($vict);
				}
				$t_type .= '<b>Traque: </b>';
                $t_type_m.='<b>Traque: </b>';
			}

			shuffle($vict);

            $c = mt_rand(0, ($nbr_c - 1));
            // Engloutissement du Kraken
            if (!is_null($englouti) && $englouti == $x) {
                $c = 0;
                while ($a_id[$vict[$c]] != 'Kraken' && $c < $nbr_c) {
                    $c++;
                }
            }
            $v = $vict[$c];
            $nom2 = $a_id[$v];
            $qte2 = $a_qte[$v];

            // On calcule les dégâts...
            if ($degat3 == 0) {
                $degat_crea = mt_rand($a_min[$x], $a_max[$x]);
                // Certales : 2 jets d'attaque supplémentaires, on prend le max
                if ($a_id[$x] == 'Certales') {
                    $degat_crea = max($degat_crea, mt_rand($a_min[$x], $a_max[$x]), mt_rand($a_min[$x], $a_max[$x]));
                    $t_type .= '<b>Meilleur des trois: (' . $degat_crea . ')! </b>';
                    $t_type_m.='<b>Meilleur des trois: (' . $degat_crea . ')! </b>';
                }
                // Hantise: on prend le minimum des dégâts
                if ($a_haunt[$x] > 0) {
                    $degat_crea = $a_min[$x];
                    $t_type .= '<b>Hanté: </b>';
                    $t_type_m.='<b>Hanté: </b>';
					$a_haunt[$x] -= 1;
                }
				// Enforceurs nains: la 1ère attaque fait plus de dégâts
				if ($tour == 2 && $a_id[$x] == 'Enforceurs nains') {
					$degat_crea *= 2;
					$t_type .= '<b>Ruée tumultueuse: </b>';
                    $t_type_m.='<b>Ruée tumultueuse: </b>';
				}
				// Médecine de guerre: à 100, une chance sur 2 d'avoir un jet supplémentaire et on garde le meilleur des 2
				$medic = mt_rand(1, 200);
				if ($apt_a['31'] >= $medic) {
					$jet_sup = mt_rand($a_min[$x], $a_max[$x]);
					if ($jet_sup > $degat_crea) {
						$degat_crea = $jet_sup;
						$t_type .= '<b>VETERAN: </b>';
						$t_type_m .= '<b>VETERAN: </b>';
					}
				}

                $degat = $degat_crea * $a_qte[$x];
				if ($a_id[$x] == 'Chasseurs des cimes') {
					$degat *= 2/3;
				}
            } else
                $degat = $degat3;

			// Bonus de l'initiative lors du tour 2
			$bonus_inertie = 0;
			if ($tour == 2) {
				$bonus_inertie = $bonus_ini_a;
			}

            $degat2 = ($a_att_mag[$x] == 1) ? $degat * (100 + max(0, $a_att[$x] + $bonus_inertie - $a_end[$v])) / (100 + max(0, $a_end[$v] - $a_att[$x] - $bonus_inertie)) : $degat * (100 + max(0, $a_att[$x] + $bonus_inertie - $a_def[$v])) / (100 + max(0, $a_def[$v] - $a_att[$x] - $bonus_inertie));

        // if ($actual_db == 2) {
        	//Draveon (MAJ bonus reptile fin-avril 2019)
 			// Si c'est le tour 1, les créatures ne font qu'une partie de leurs dégâts
			if ($tour == 1) {
				if ($special_barde_c == 0) {
					if ($a_typ[$x] == 'Reptile' || $a_id[$x] == 'Quetzalcoatls') {
						$randReptile = (mt_rand(40,80))/100;
						$randReptileAffich = (mt_rand(40,80));
						$t_type .= '<b>Approche discrète</b> ('.$randReptileAffich.'%) : ';
						$t_type_m .= '<b>Approche discrète</b> ('.$randReptileAffich.'%) : ';
						$degat2 *= $randReptile * $effets_creas_a;
					} else {
						$degat2 *= 0.5;
					}
				} else {
					if ($a_typ[$x] == 'Reptile') {
						$t_type .= '<b>Approche Indiscrète: </b>';
						$t_type_m .= '<b>Approche Indiscrète: </b>';
						$degat2 *= 0.28 * $effets_creas_a;
					}
				}

				// Embu augmente les dégâts alors que CM les baisse
				$degat2 *= (1 + ($apt_a['17'] * 0.006)) / (1 + ($apt_c['12'] * 0.005));
	        }
	    // }

	  //   if ($actual_db == 1) {

	  //   	// Si c'est le tour 1, les créatures ne font qu'une partie de leurs dégâts
			// if ($tour == 1) {
			// 	if ($special_barde_c == 0) {
			// 		if ($a_typ[$x] == 'Reptile' || $a_id[$x] == 'Quetzalcoatls') {
			// 			$t_type .= '<b>Approche discrète: </b>';
			// 			$t_type_m .= '<b>Approche discrète: </b>';
			// 			$degat2 *= 0.4 * $effets_creas_a;
			// 		} else {
			// 			$degat2 *= 0.5;
			// 		}
			// 	} else {
			// 		if ($a_typ[$x] == 'Reptile') {
			// 			$t_type .= '<b>Approche Indiscrète: </b>';
			// 			$t_type_m .= '<b>Approche Indiscrète: </b>';
			// 			$degat2 *= 0.28 * $effets_creas_a;
			// 		}
			// 	}



			// 	// Embu augmente les dégâts alors que CM les baisse
			// 	$degat2 *= (1 + ($apt_a['17'] * 0.006)) / (1 + ($apt_c['12'] * 0.005));
			// }

	  //   }



			// CM tour 2: bonus vs contact
			if ($tour == 2 && ($apt_a['12'] > 0) && $a_ran[$x] == 0 && $a_ran[$v] == 0) {
				$degat2 *= 1 + (0.1 * $apt_a['12'] / 100);
			}

			// pack de bonus aux dégâts et résistances diverses (U = R I)
            $degat2 = ($degat2 * $raz07_a['degat'] / $raz07_c['res']);
            // Bonus dégâts et résistance
			$bonus_degats = 1;
			$bonus_degats *= ($a_att_mag[$v] == 1) ? $raz07_a['degat_vs_mag'] : $raz07_a['degat_vs_phys'];
			$bonus_degats *= ($a_ran[$v] == 0) ? $raz07_a['degat_vs_cac'] : $raz07_a['degat_vs_range'];
			$bonus_degats *= ($a_vol[$v] == 0) ? $raz07_a['degat_vs_sol'] : $raz07_a['degat_vs_vol'];
			if ($a_raciale[$x]) {
				$bonus_degats *= max($raz07_a['degat_mag'], $raz07_a['degat_phys']);
				$bonus_degats *= max($raz07_a['degat_cac'], $raz07_a['degat_range']);
				$bonus_degats *= max($raz07_a['degat_sol'], $raz07_a['degat_vol']);
			} else {
				$bonus_degats *= ($a_att_mag[$x] == 1) ? $raz07_a['degat_mag'] : $raz07_a['degat_phys'];
				$bonus_degats *= ($a_ran[$x] == 0) ? $raz07_a['degat_cac'] : $raz07_a['degat_range'];
				$bonus_degats *= ($a_vol[$x] == 0) ? $raz07_a['degat_sol'] : $raz07_a['degat_vol'];
			}

			$bonus_resist = 1;
			$bonus_resist *= ($a_att_mag[$x] == 1) ? $raz07_c['res_vs_mag'] : $raz07_c['res_vs_phys'];
			$bonus_resist *= ($a_ran[$x] == 0) ? $raz07_c['res_vs_cac'] : $raz07_c['res_vs_range'];
			$bonus_resist *= ($a_vol[$x] == 0) ? $raz07_c['res_vs_sol'] : $raz07_c['res_vs_vol'];
			if ($a_raciale[$v]) {
				$bonus_resist *= max($raz07_c['res_mag'], $raz07_c['res_phys']);
				$bonus_resist *= max($raz07_c['res_cac'], $raz07_c['res_range']);
				$bonus_resist *= max($raz07_c['res_sol'], $raz07_c['res_vol']);
			} else {
				$bonus_resist *= ($a_att_mag[$v] == 1) ? $raz07_c['res_mag'] : $raz07_c['res_phys'];
				$bonus_resist *= ($a_ran[$v] == 0) ? $raz07_c['res_cac'] : $raz07_c['res_range'];
				$bonus_resist *= ($a_vol[$v] == 0) ? $raz07_c['res_sol'] : $raz07_c['res_vol'];
			}

			$degat2 *= $bonus_degats / $bonus_resist;

			// Diviseur de dégâts lié à l'équilibre de l'armée
            $degat2 /= $div_degats;

			// Purification
			$bonus_baisse_deg_purif = (0.08 + 0.01 * $a_niv[$x]) * $mod_purif_c;
			$degat2 *= (1 - $bonus_baisse_deg_purif); // si la cible a purifié l'attaquant, alors la créature inflige moins de dégâts (9% si elle est level 1, 14% si elle est level 6)
			$bonus_deg_purif = (0.13 - 0.01 * $a_niv[$v]) * $mod_purif_a;
			$degat2 *= (1 + $bonus_deg_purif); // si l'attaquant a purifié la cible, alors la créature inflige plus de dégâts (12% si elle est level 1, 7% si elle est level 6)

			// Profanation
			$bonus_baisse_def_profa = (0.13 - 0.01 * $a_niv[$x]) * $mod_profa_c;
			$degat2 *= (1 - $bonus_baisse_def_profa); // si la cible a profané l'attaquant, alors la créature inflige moins de dégâts (12% si elle est level 1, 7% si elle est level 6)
			$bonus_deg_profa = (0.08 + 0.01 * $a_niv[$v]) * $mod_profa_a;
			$degat2 *= (1 + $bonus_deg_profa); // si l'attaquant a profané la cible, alors la créature inflige plus de dégâts (9% si elle est level 1, 14% si elle est level 6)

			// Filets sur sol
			$filets_bonus_deg = ($a_vol[$v] == 0) ? 1 + 0.04 * $apt_a['33'] / 100 : 1;
			$degat2 *= $filets_bonus_deg;

            // Effroi
            $effroi = mt_rand(1, 300);
            if ((($apt_a['29'] >= $effroi) || ($a_id[$x] == $creas_invoc_liste['MortsAnimes'])) AND ( $a_typ[$x] == 'Mort-vivant' || (($p == 1 && $special_necrolvl3_) || ($p == 2 && $special_necrolvl3_2))) AND ( (5 * $a_pvstotal[$x]) > $a_pvstotal[$v] )) {
                $fui = floor($a_qte[$v] * 0.3);
				if ($tour == 1) {
					$redu_effroi_tour1 = 0.5 + 0.25 * $apt_a['17'] / 100;
					$fui = round($fui * $redu_effroi_tour1);
				}
                $a_effraye[$v] += $fui;
                $a_qte[$v] -= $fui;
                $qte2 = $a_qte[$v];
                $a_pvstotal[$v] -= $fui * $a_pvs[$v];
                $a_pvstotal_old[$v] -= $fui * $a_pvs[$v];
                $t_type .= '<b>EFFROI: </b>';
                $t_type_m .= '<b>EFFROI: </b>';
            }
            // Rage
            $rage = mt_rand(1, 500);
            if (($apt_a['22'] >= $rage) AND ( $a_ran[$x] == 0)) {
                $degat2 *= 1.5;
                $t_type .= '<b>RAGE: </b>';
                $t_type_m .= '<b>RAGE: </b>';
            }
            // Précision
            $prec = mt_rand(1, 500);
            if (($apt_a['18'] >= $prec) AND ( $a_ran[$x] > 0)) {
                $degat2 *= 1.5;
                $t_type .= '<b>PRÉCISION: ';
                $t_type_m .= '<b>PRÉCISION: </b>';
            }
            // Sol contre volante
            if ($a_vol[$x] == 0 && $a_vol[$v] == 1) {
				if ($a_ran[$x] == 0) {
					// Contact: grosse resist
					$res_maitrise = 1.18 + 0.21 * $apt_c['28'] / 100;
				} else {
					// Range: petite resist
					$res_maitrise = 1.06 + 0.07 * $apt_c['28'] / 100;
				}
				// Aptitude Filets: réduit la résistance des volants de 2/3 à 100
				if ($apt_a['33'] > 0) {
					$res_maitrise = 1 + ($res_maitrise - 1) * $apt_a['33'] / 150;
				}
                $degat2 /= $res_maitrise;
            }

            // Barbare: au deuxième tour, inflige 40% de dommages supplémentaires
            if ($tour == 2) {
                if ($special_barbare && ($x < $milieu) && ($a_ran[$x] == 0)) {
                    $t_type .= '<b>Rage berserk: </b>';
                    $t_type_m .= '<b>Rage berserk: </b>';
                    $degat2 *= 1.4;
                }
                if ($special_barbare2 && ($x >= $milieu) && ($a_ran[$x] == 0)) {  // conserver les deux 'if' séparés, au cas où les deux sont des barbares et que...
                    $t_type .= '<b>Rage berserk: </b>';
                    $t_type_m .= '<b>Rage berserk: </b>';
                    $degat2 *= 1.4;
                }
            }
			// Au 3ème tour, il prend 15% de dégâts supplémentaires
			if ($tour == 3) {
                if ($special_barbare && ($v < $milieu) && ($a_ran[$v] == 0)) {
                    $t_type .= '<b>Essoufflement: </b>';
                    $t_type_m .= '<b>Essouflement: </b>';
                    $degat2 *= 1.15;
                }
                if ($special_barbare2 && ($v >= $milieu) && ($a_ran[$v] == 0)) {  // conserver les deux 'if' séparés, au cas où les deux sont des barbares et que...
                    $t_type .= '<b>Essoufflement: </b>';
                    $t_type_m .= '<b>Essoufflement: </b>';
                    $degat2 *= 1.15;
                }
            }

            // Zèle divin - sort spé de l'Inquisiteur
            if ((mt_rand(1, 3) == 1) && ((($p == 1) && ($special_inqui)) || ($p == 2) && ($special_inqui2))) {
            	$zele_type = mt_rand(30,50);
            	$zele = $zele_type/100;
                $t_type .= '<b>Zèle divin:</b> ('.$zele_type.'%) ';
                $t_type_m .= '<b>Zèle divin:</b> ('.$zele_type.'%) ';

                $degat2 *= 1+$zele;
            }
            // Lames Trempées (Sort du forgeron)
        		// A partir du tour 2, les créatures du forgeron de niveau 1 à 3 ignorent 5% à 25% de la défense de la cible (Wesh t'as vu comment j'suis balèse pour faire des épées efficaces ?)
        		if ( (mt_rand(1, 2) == 1) && ($a_bgh[$x] == 0) && ($a_typ[$x] != 'Éthéré') && ( (($p == 1) && $special_forgeron || ($p == 2) && $special_forgeron2) && $a_niv[$x] <= 3 ) && $tour > 1 ) {
        			$forge_type = mt_rand(5,25);
        			$malusForge = (100-$forge_type)/100;
              $t_type .= '<b>Lames Trempées:</b> ('.$forge_type.'%) ';
              $t_type_m .= '<b>Lames Trempées:</b> ('.$forge_type.'%) ';

        			$a_def[$v] *= $malusForge;
        		}

            $effets_creas_c_coup = max(0, $effets_creas_c);
			$effets_creas_a_coup = max(0, $effets_creas_a);
			// Bonus des types de créature
			if ($a_typ[$x] == 'Humanoïde') {
				$effets_creas_c_coup = max(0, $effets_creas_c_coup - 1.0 * ($effets_creas_a - $special_barde_c));
			}
			if ($a_typ[$v] == 'Humanoïde') {
				$effets_creas_a_coup = max(0, $effets_creas_a_coup - 1.0 * ($effets_creas_c - $special_barde_a));
			}

			// Les Quetzacoatls sont immunisés aux effets sur les types de créa
			if ($a_id[$x] == 'Quetzalcoatls') {
				$effets_creas_a_coup = 1;
				$special_barde_c = 0;
			} else if ($a_id[$v] == 'Quetzalcoatls') {
				$effets_creas_c_coup = 1;
				$special_barde_a = 0;
			}

			if ($effets_creas_c_coup > 0) {
				// Si la créature cible est un dragon: bonus défensif contre archers (21% de résistance)
				if (($a_typ[$v] == 'Dragon') && ($a_ran[$x] > 0)) {
					$bonus_typ_crea = max(0, round(21 * $effets_creas_c_coup - 12 * $special_barde_a));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 21? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Ecailles</b> $affiche_bonus: ";
						$t_type_m .= "<b>Ecailles</b> $affiche_bonus: ";
					}
				}

				// Si la cible est un légendaire: bonus défensif contre les bas lvl (les faibles créatures sont paniquées devant des êtres si impressionnants sortis de leurs mythes)
				if ($a_typ[$v] == 'Légendaire') {
					$bonus_typ_crea = max(0, round(4 * (6 - $a_niv[$x]) * ($effets_creas_c_coup - $special_barde_a)));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$t_type .= "<b>Légende vivante</b> ($bonus_typ_crea%): ";
						$t_type_m .= "<b>Légende vivante</b> ($bonus_typ_crea%): ";
					}
				}
				// Si la cible est une vermine: bonus défensif contre les créatures de haut lvl
				if ($a_typ[$v] == 'Vermine') {
					$bonus_typ_crea = max(0, round(5 * ($a_niv[$x] - 1) * ($effets_creas_c_coup - $special_barde_a)));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$t_type .= "<b>Multitude</b> ($bonus_typ_crea%): ";
						$t_type_m .= "<b>Multitude</b> ($bonus_typ_crea%): ";
					}
				}

				// Si la cible est Mort-vivant: 15% de résistance aux dégâts physiques
				if (($a_typ[$v] == 'Mort-vivant') && $a_att_mag[$x] == 0) {
					$bonus_typ_crea = max(0, round(15 * $effets_creas_c_coup - 12 * $special_barde_a));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 15? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Non-mort</b> $affiche_bonus: ";
						$t_type_m .= "<b>Non-mort</b> $affiche_bonus: ";
					}
				} else if ((($p == 1 && $special_necrolvl3_2) || ($p == 2 && $special_necrolvl3_)) && $a_att_mag[$x] == 0 && $a_typ[$x] != 'Humanoïde') {
					$bonus_typ_crea = max(0, round(15 - 12 * $special_barde_a));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 15? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Non-mort</b> $affiche_bonus: ";
						$t_type_m .= "<b>Non-mort</b> $affiche_bonus: ";
					}
				}

				// Si la cible est une construction: 15% de résistance aux dégâts magiques
				if ($a_typ[$v] == 'Construction' && $a_att_mag[$x] == 1) {
					$bonus_typ_crea = max(0, round(15 * $effets_creas_c_coup - 12 * $special_barde_a));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 15? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Pure mécanique</b> $affiche_bonus: ";
						$t_type_m .= "<b>Pure mécanique</b> $affiche_bonus: ";
					}
				}

				// Si la cible est un cuirassé: 21% de résistance contre les créatures volantes
				if ($a_typ[$v] == 'Cuirassé' && $a_vol[$x] == 1) {
					$bonus_typ_crea = max(0, round(21 * $effets_creas_c_coup - 12 * $special_barde_a));
					if ($bonus_typ_crea > 0) {
						$degat2 /= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 21? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Impénétrable</b> $affiche_bonus: ";
						$t_type_m .= "<b>Impénétrable</b> $affiche_bonus: ";
					}
				}
			}

            // SORT SPECIAL
            // Assassin : une chance sur 4 de réduire les dégâts de 50%
            $y = mt_rand(1, 400);
            if (($y < 101) && ( (($p == 1) && ($special_assassin2)) || (($p == 2) && ($special_assassin)) )) {
                $t_type .= '<b>Camouflage: </b>';
                $t_type_m .= '<b>Camouflage: </b>';
                $degat2 *= 0.5;
            }

			if ($effets_creas_a_coup > 0) {
				// Si la créature est un animal: simili-rage (1/5 de faire 1.5* les dégâts)
				$rageanim = mt_rand(1, 500);
				if (($a_typ[$x] == 'Animal' || $a_id[$x] == 'Quetzalcoatls') && (100 >= $rageanim)) {
					$bonus_typ_crea = max(0, round(50 * ($effets_creas_a_coup - $special_barde_c)));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 50? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Furie bestiale</b> $affiche_bonus: ";
						$t_type_m .= "<b>Furie bestiale</b> $affiche_bonus: ";
					}
				}
				// Si la créature est un géant: bonus offensif contre les haut lvl
				if ($a_typ[$x] == 'Géant') {
					$bonus_typ_crea = max(0, round(5 * ($a_niv[$v] - 1) * ($effets_creas_a_coup - $special_barde_c)));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$t_type .= "<b>Attaque puissante</b> ($bonus_typ_crea%): ";
						$t_type_m .= "<b>Attaque puissante</b> ($bonus_typ_crea%): ";
					}
				}
				// Si le créature est un gobelinoïde: bonus aux dégâts contre les créatures non-volantes (15% de dégâts infligés en plus)
				if ($a_typ[$x] == 'Gobelinoïde' && $a_vol[$v] != 1) {
					$bonus_typ_crea = max(0, round(15 * $effets_creas_a_coup - 12 * $special_barde_c));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 15? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Sauvagerie</b> $affiche_bonus: ";
						$t_type_m .= "<b>Sauvagerie</b> $affiche_bonus: ";
					}
				}


				//Si la créature est éthéré: ignore 15% de la défense de la cible.
				if ($a_typ[$x] == 'Éthéré' && $a_typ[$v] != 'Humanoïde' && $special_barde_c == 0) {
					//def_ignore = 15% de la moyenne entre la défense/endurance de la cible
					$def_ignore = 15*(($a_def[$v]+$a_end[$v])/2)/100;
					if ($def_ignore > 15) {
						$def_ignore = 15;
					}
					//application des différents modificateurs
					$bonus_typ_crea = max(0, round($def_ignore * $effets_creas_a_coup - $special_barde_c));

          $bonus_typ_crea_ethere = $bonus_typ_crea/100;
					if ($bonus_typ_crea > 0) {
						$degat2 *= round(1 + $bonus_typ_crea/100);

            if ($_SESSION['login'] == 'Draveon') {
              // if ($bonus_typ_crea_ethere > 0.15) {
              //   $bonus_typ_crea_ethere = 0.15
              // }
              $affiche_bonus = $bonus_typ_crea;
            } else {
            	$affiche_bonus = 15;
            }
						$t_type .= '<b>Immatériel:</b> ('.$affiche_bonus.'%) ';
						$t_type_m .= '<b>Immatériel:</b> ('.$affiche_bonus.'%) ';
					}
				}




				// Si la créature est une plante: 15% dégâts en plus contre les créatures physiques
				if ($a_typ[$x] == 'Plante' && $a_att_mag[$v] == 0) {
					$bonus_typ_crea = max(0, round(15 * $effets_creas_a_coup - 12 * $special_barde_c));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 15? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Force végétale</b> $affiche_bonus: ";
						$t_type_m .= "<b>Force végétale</b> $affiche_bonus: ";
					}
				}
				// Si la créature est planaire: 15% dégâts en plus contre les créatures magiques
				if ($a_typ[$x] == 'Planaire' && $a_att_mag[$v] == 1) {
					$bonus_typ_crea = max(0, round(15 * $effets_creas_a_coup - 12 * $special_barde_c));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 15? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Transplanaire</b> $affiche_bonus: ";
						$t_type_m .= "<b>Transplanaire</b> $affiche_bonus: ";
					}
				}
				// Si la créature est humanoïde et sous l'effet de mélopée ancestrale, +9% dégâts
				if ($a_typ[$x] == 'Humanoïde' && $special_barde_a) {
					$bonus_typ_crea = max(0, round(9 * $effets_creas_a_coup - 12 * $special_barde_c));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 9? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Exalté</b> $affiche_bonus: ";
						$t_type_m .= "<b>Exalté</b> $affiche_bonus: ";
					}
				}
				// Si la créature un mort vivant sous l'effet d'intuition nécrotique, +9% dégâts
				if ($a_typ[$x] == 'Mort vivant' && (($p == 1 && $special_necrolvl3_) || ($p == 2 && $special_necrolvl3_2)) && $a_typ[$v] != 'Humanoïde') {
					$bonus_typ_crea = max(0, round(9 - 12 * $special_barde_c));
					if ($bonus_typ_crea > 0) {
						$degat2 *= 1 + $bonus_typ_crea/100;
						$affiche_bonus = $bonus_typ_crea == 9? "" : "($bonus_typ_crea%) ";
						$t_type .= "<b>Exalté</b> $affiche_bonus: ";
						$t_type_m .= "<b>Exalté</b> $affiche_bonus: ";
					}
				}

				// Si la créature est une aberration: baisse l'attaque du stack frappé
				if ($a_typ[$x] == 'Aberration' || $a_id[$x] == 'Quetzalcoatls') {
					$tmp = max(0, $degat2 / ($a_env[$v] * $a_pvs[$v])) * ($effets_creas_a_coup - $special_barde_c);  // fraction dégâts/pvs_initiaux infligés par les abhérations
					$baisse_torp = round(100 * $tmp);
					if ($baisse_torp > 0) {
						$a_att[$v] = max(1, round($a_att[$v] - $baisse_torp));
						$t_type .= "<b>Torpeur</b> (-$baisse_torp): ";
						$t_type_m .= '<b>Torpeur</b> (-'.$baisse_torp.'): ';
					}
				}
			}

            // Archer: flèches enflammées (inflammation) (seulement pour les créatures archères)
            // A calculer juste avant la fin du calcul des dégâts pour que le décompte des dégâts des flammes soit le plus exact possible
            if (($tour == 1) && ((($p == 1) && ($special_archer)) || (($p == 2) && ($special_archer2))) && ($a_ran[$x] > 0)) {
                $t_type .= '<b>Flèches enflammées: </b>';
                $t_type_m .= '<b>Flèches enflammées: </b>';
                if ($p == 1) {
                    $a_flm[$v] += $degat2;
                } else {
                    $a_flm2[$v] += $degat2;
                }
            }

			// Sort spécial de l'ermite
			if (($p == 1) && $special_ermite && $a_typ[$v] == $type_ermite || ($p == 2) && $special_ermite2 && $a_typ[$v] == $type_ermite2) {
				$degat2 *= 1.25;
				$t_type .= '<b>Frappe ajustée: </b>';
                $t_type_m .= '<b>Frappe ajustée: </b>';
			}

			// Sort spécial du rôdeur
			if ($a_bgh[$x] == 0 && ((($p == 1) && $special_rodeur || ($p == 2) && $special_rodeur2) && $a_niv[$v] > 4)) {
				$degat2 *= 2;
				$t_type .= '<b>Force de la nature: </b>';
                $t_type_m .= '<b>Force de la nature: </b>';
			}

			// Big game hunter: bonus dégâts
			if ($a_bgh[$x] == 1) {
				$degat2 *= (1 + $bonus_degats_bgh);
			}
			$bonus_degats_bgh = 0;

            // Terreurs des Égoûts: sorte de flèches enflammées permanent
            if ($a_id[$x] == 'Terreurs des égoûts') {
                $t_type .= '<b>Attaque empoisonnée: </b>';
                $t_type_m .= '<b>Attaque empoisonnée: </b>';
                $a_pois[$v] += $degat2;
            }

            // Esprits vengeurs: hante la cible
            if ($a_id[$x] == 'Esprits vengeurs' && ((5 * $a_pvstotal[$x]) > $a_pvstotal[$v])) {
                $t_type .= '<b>Hantise: </b>';
                $t_type_m .= '<b>Hantise: </b>';
                $a_haunt[$v] = 2;
            }

            // Galapars: l'attaquant prend 1/3 de ses propres dégâts en retour
            if ($a_id[$v] == 'Galapars') {
                $deg_explosion = round(min($degat2, $a_pvstotal[$v]) * 1/3);
            }

            // Dragons rouges: souffle ardent
            if ($a_id[$x] == 'Dragons rouges' && (($x < $milieu && $souffle_a == ($tour + 1)) || ($x >= $milieu && $souffle_c == ($tour + 1)))) {
                $t_type .= '<b>Souffle ardent: </b>';
                $t_type_m .= '<b>Souffle ardent: </b>';
            }

			// Chasseurs des cimes: seconde flèche
            if ($a_id[$x] == 'Chasseurs des cimes') {
				if (($x < $milieu && $seconde_fleche_a == ($tour + 1)) || ($x >= $milieu && $seconde_fleche_c == ($tour + 1))) {
					$t_type .= '<b>Seconde flèche: </b>';
					$t_type_m .= '<b>Seconde flèche: </b>';
				}
            }

			// Croisés impériaux: position défensive ajoute 50% de résistance
			if ($a_id[$v] == 'Croisés Impériaux' && (($p==2 && $croise_pos == 1) || ($p==1 && $croise_pos2 == 1)) AND ((2 * $a_pvstotal[$v]) > $a_pvstotal[$x] )) {
				$degat2 /= 2;
                $t_type .= '<b>Position défensive! </b>';
                $t_type_m .= '<b>Position défensive! </b>';
            }

			// Les Croisés impériaux agissent: ils n'ont plus la position défensive
			if ($a_id[$x] == 'Croisés Impériaux') {
                if ($p==1 && $croise_pos == 1) {
					$croise_pos = 0;
				} else if ($p==2 && $croise_pos2 == 1) {
					$croise_pos2 = 0;
				}
            }


			$degat2 = round($degat2);
            // Les dégâts sont-ils suffisants pour détruire tout le stack adverse ?
            $n_pvstotal = ($a_pvstotal[$v] - $degat2);
            if ($n_pvstotal <= 0) {
				// Épineux: renvoient des dommages aux attaquants de contact
				if ($a_typ[$v] == 'Épineux' && $a_ran[$x] == 0) {
					//$nb_piquants = $a_qte[$v] * ($effets_creas_c_coup - $special_barde_a * 2/3); - ligne buguée, corrigée par ARO
					$nb_piquants = $special_barde_a  ? 0 : $a_qte[$v] * ($effets_creas_c_coup * 2/3);
				}
                $degat3 = ceil($degat * ($n_pvstotal * -1) / $degat2);
                // Revenants archers
                if ($a_id[$x] == 'Revenants archers') {
                    if ($x < $milieu)
                        $pv_tues_revenants += $a_pvstotal[$v];
                    else
                        $pv_tues_revenants2 += $a_pvstotal[$v];
                    $t_type .= '<b>Flèches d\'outre-tombe: </b>';
                    $t_type_m .= '<b>Flèches d\'outre-tombe: </b>';
                }

                // On règle les PVStotal ainsi que la qtee de créature à 0...
                $pvs_morts += $a_pvstotal[$v];
                $a_qte[$v] = 0;
                $a_pvstotal[$v] = 0;

                // Si la créature était engloutie on libère la bouche du Kraken
                if ($englouti == $v) {
                    $englouti = null;
                }

                // Si le Kraken meurt on libère la créature engloutie
                if ($a_id[$v] == 'Kraken') {
                    $englouti = null;
                }

				// Si le stack a des créas qui ont fui sous le coup de effroi, on laisse 1 pv pour permettre aux créas de réintégrer le combat: le stack n'attaquera pas et ne pourra être ciblé,
				// mais les créas ayant fui reviendront après le moment qui était censé être la prochaine attaque du stack
				if ($a_effraye[$v] > 0) {
					$a_pvstotal[$v] = 1;
				}

                // L'écriture des bonnes lignes...
                if ($x < $milieu) {
                    echo '<td class="tdlef" style="color:#0D4573;">' . $t_type . ' Vos ' . $qte1 . ' ' . $nom1 . ' frappent les ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                    $message1.= '<td style="color:#0D4573;">' . $t_type_m . ' Vos ' . $qte1 . ' ' . $nom1 . ' frappent les ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    $message .= '<td style="color:#B31141;">' . $t_type_m . ' Les ' . $qte1 . ' ' . $nom1 . ' frappent vos ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                } else {
                    echo '<td class="tdlef" style="color:#B31141;">' . $t_type . ' Les ' . $qte1 . ' ' . $nom1 . ' frappent vos ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, les éliminant complètement !</td></tr>';
                    $message1.= '<td style="color:#B31141;">' . $t_type_m . ' Les ' . $qte1 . ' ' . $nom1 . ' frappent vos ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                    $message .= '<td style="color:#0D4573;">' . $t_type_m . ' Vos ' . $qte1 . ' ' . $nom1 . ' frappent les ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . " dégâts, les éliminant complètement !</td></tr>";
                }
            } else { // les dégats n'ont pas été suffisants pour détruire le stack adverse
                $repercute = 0;
                // Souffle ardent des dragons rouges
                if ($a_id[$x] == 'Dragons rouges') {
					if (($x < $milieu) && ($souffle_a == $tour)) {
						$repercute = 1;
						$degat3 = ceil($degat * 1/3);
						$souffle_a++;
						$untargetable = $v;
					} else if (($x >= $milieu) && ($souffle_c == $tour)) {
						$repercute = 1;
						$degat3 = ceil($degat * 1/3);
						$souffle_c++;
						$untargetable = $v;
					}
                }

				if ($a_id[$x] == 'Chasseurs des cimes') {
					if (($x < $milieu) && ($seconde_fleche_a == $tour)) {
						$repercute = 1;
						$seconde_fleche_a++;
					} else if (($x >= $milieu) && ($seconde_fleche_c == $tour)) {
						$repercute = 1;
						$seconde_fleche_c++;
					}
                }

                // Kraken: englouti la cible
                if ($a_id[$x] == 'Kraken' && is_null($englouti)) {
                    $t_type .= '<b>Engloutissement: </b>';
                    $t_type_m .= '<b>Engloutissement: </b>';
                    $englouti = $v;
                }

                $pvs_morts += $degat2;
                // Revenants archers
                if ($a_id[$x] == 'Revenants archers') {
                    if ($x < $milieu)
                        $pv_tues_revenants += $degat2;
                    else
                        $pv_tues_revenants2 += $degat2;
                    $t_type .= '<b>Flèches d\'outre-tombe: </b>';
                    $t_type_m .= '<b>Flèches d\'outre-tombe: </b>';
                }

                $r = ceil($n_pvstotal / $a_pvs[$v]);
                $m = $a_qte[$v] - $r;
				// Épineux: renvoient des dommages aux attaquants de contact
				if ($a_typ[$v] == 'Épineux' && $a_ran[$x] == 0) {
					$nb_piquants = $m * ($effets_creas_c_coup - $special_barde_a * 2/3);
				}
                $a_qte[$v] = $r;
                $a_pvstotal[$v] = $n_pvstotal;
                if ($x < $milieu) {
                    echo '<td class="tdlef" style="color:#0D4573;">' . $t_type . ' Vos ' . $qte1 . ' ' . $nom1 . ' frappent les ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, en éliminant ' . $m . ' !</td></tr>';
                    $message1.= '<td style="color:#0D4573;">' . $t_type_m . ' Vos ' . $qte1 . ' ' . $nom1 . ' frappent les ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, en éliminant ' . $m . " !</td></tr>";
                    $message .= '<td style="color:#B31141;">' . $t_type_m . ' Les ' . $qte1 . ' ' . $nom1 . ' frappent vos ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, en éliminant ' . $m . " !</td></tr>";
                } else {
                    echo '<td class="tdlef" style="color:#B31141;">' . $t_type . ' Les ' . $qte1 . ' ' . $nom1 . ' frappent vos ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, en éliminant ' . $m . ' !</td></tr>';
                    $message1.= '<td style="color:#B31141;">' . $t_type_m . ' Les ' . $qte1 . ' ' . $nom1 . ' frappent vos ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, en éliminant ' . $m . " !</td></tr>";
                    $message .= '<td style="color:#0D4573;">' . $t_type_m . ' Vos ' . $qte1 . ' ' . $nom1 . ' frappent les ' . $qte2 . ' ' . $nom2 . ' et font ' . $degat2 . ' dégâts, en éliminant ' . $m . " !</td></tr>";
                }  // fin du  if ($x < $milieu)
            }    // fin du  if ($n_pvstotal <= 0)
            // MaJ pvs restants du Kraken
            if ($a_id[$v] == 'Kraken') {
                $pv_kraken = $a_pvstotal[$v];
            }

            // Retour de flamme des Galapars
            if ($deg_explosion > 0 && ($a_id[$x] != $creas_invoc_liste['MortsAnimes'])) {
                $cibl_explos_pvs = ($a_pvstotal[$x] - $deg_explosion);
                if ($cibl_explos_pvs <= 0) {
                    // On règle les PVStotal ainsi que la qtee de créature à 0...
                    $pvs_morts += $a_pvstotal[$x];
                    $a_qte[$x] = 0;
                    $a_pvstotal[$x] = 0;
                    if ($x < $milieu) {
                        echo '<tr><td class="tdlef" style="color:#B31141;"><b>Retour de flamme!</b> Les Galapars infligent ' . $deg_explosion . ' dégâts à vos ' . $qte1 . ' ' . $nom1 . ', les éliminant tous !</td></tr>';
                        $message1.= '<tr><td style="color:#B31141;"><b>Retour de flamme!</b> Les Galapars infligent ' . $deg_explosion . ' dégâts à vos ' . $qte1 . ' ' . $nom1 . ", les éliminant tous !</td></tr>";
                        $message .= '<tr><td style="color:#0D4573;"><b>Retour de flamme!</b> Vos Galapars infligent ' . $deg_explosion . ' dégâts aux ' . $qte1 . ' ' . $nom1 . " adverses, les éliminant tous !</td></tr>";
                    } else {
                        echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Retour de flamme!</b> Vos Galapars infligent ' . $deg_explosion . ' dégâts aux ' . $qte1 . ' ' . $nom1 . ' adverses, les éliminant tous !</td></tr>';
                        $message1.= '<tr><td style="color:#0D4573;"><b>Retour de flamme!</b> Vos Galapars infligent ' . $deg_explosion . ' dégâts aux ' . $qte1 . ' ' . $nom1 . " adverses, les éliminant tous !</td></tr>";
                        $message .= '<tr><td style="color:#B31141;"><b>Retour de flamme!</b> Les Galapars infligent ' . $deg_explosion . ' dégâts à vos ' . $qte1 . ' ' . $nom1 . ", les éliminant tous !</td></tr>";
                    }
                } else {
                    $pvs_morts += $degat2;
                    $r = ceil($cibl_explos_pvs / $a_pvs[$x]);
                    $m = $a_qte[$x] - $r;
                    $a_qte[$x] = $r;
                    $a_pvstotal[$x] = $cibl_explos_pvs;
                    if ($x < $milieu) {
                        echo '<tr><td class="tdlef" style="color:#B31141;"><b>Retour de flamme!</b> Les Galapars infligent ' . $deg_explosion . ' dégâts à vos ' . $qte1 . ' ' . $nom1 . ', en éliminant ' . $m . ' !</td></tr>';
                        $message1.= '<td style="color:#B31141;"><b>Retour de flamme!</b> Les Galapars infligent ' . $deg_explosion . ' dégâts à vos ' . $qte1 . ' ' . $nom1 . ', en éliminant ' . $m . " !</td></tr>";
                        $message .= '<td style="color:#0D4573;"><b>Retour de flamme!</b> Vos Galapars infligent ' . $deg_explosion . ' dégâts aux ' . $qte1 . ' ' . $nom1 . ' adverses, en éliminant ' . $m . " !</td></tr>";
                    } else {
                        echo '<tr><td class="tdlef" style="color:#0D4573;"><b>Retour de flamme!</b> Vos Galapars infligent ' . $deg_explosion . ' dégâts aux ' . $qte1 . ' ' . $nom1 . ' adverses, en éliminant ' . $m . ' !</td></tr>';
                        $message1.= '<tr><td style="color:#0D4573;"><b>Retour de flamme!</b> Vos Galapars infligent ' . $deg_explosion . ' dégâts aux ' . $qte1 . ' ' . $nom1 . ' adverses, en éliminant ' . $m . " !</td></tr>";
                        $message .= '<tr><td style="color:#B31141;"><b>Retour de flamme!</b> Les Galapars infligent ' . $deg_explosion . ' dégâts à vos ' . $qte1 . ' ' . $nom1 . ', en éliminant ' . $m . " !</td></tr>";
                    }
                }
                $deg_explosion = 0;
            }

			// Piquants des épineux
			if ($nb_piquants > 0) {
				$epineux = $v;
				$victime_piquee = $x;

				$nom1 = $a_id[$epineux];
				$nom2 = $a_id[$victime_piquee];
				$qte2 = $a_qte[$victime_piquee];

				if ($epineux < $milieu) {
					$p = 1;        // quel est le joueur
					$min = $milieu;       // indice mini des cibles
					$max = $z;            // incide maxi des cibles
					$apt_a = &$apt_att;    // aptitudes pour la créature attaquante
					$apt_c = &$apt_def;    // aptitudes pour la créature cible
					$raz07_a = &$bonus_raz07_att; // bonus de la créature qui tappe
					$raz07_c = &$bonus_raz07_def; // bonus de la céature qui se fait taper
					//$special_barde_a = &$special_barde; // sort spé de barde; utilisé assez de fois pour que ce soit utile
					//$special_barde_c = &$special_barde2;
					$div_degats = $f_equi_armee_att;
					$mod_profa_a = $mod_profa_att;
					$mod_purif_a = $mod_purif_att;
					$mod_profa_c = $mod_profa_def;
					$mod_purif_c = $mod_purif_def;
					$effets_creas_a = $effets_creas_att;
					$effets_creas_c = $effets_creas_def;
				} else {
					$p = 2;        // quel est le joueur
					$min = 0;             // indice mini des cibles
					$max = $milieu;       // incide maxi des cibles
					$apt_a = &$apt_def;    // aptitudes pour la créature attaquante
					$apt_c = &$apt_att;    // aptitudes pour la créature cible
					$raz07_a = &$bonus_raz07_def; // bonus de la créature qui tappe
					$raz07_c = &$bonus_raz07_att; // bonus de la céature qui se fait taper
					//$special_barde_a = &$special_barde2; // sort spé de barde; utilisé assez de fois pour que ce soit utile
					//$special_barde_c = &$special_barde;
					$div_degats = $f_equi_armee_def;
					$mod_profa_a = $mod_profa_def;
					$mod_purif_a = $mod_purif_def;
					$mod_profa_c = $mod_profa_att;
					$mod_purif_c = $mod_purif_att;
					$effets_creas_a = $effets_creas_def;
					$effets_creas_c = $effets_creas_att;
				}

				$degat = mt_rand($a_min[$epineux], $a_max[$epineux]) * $nb_piquants;
				$degat2 = ($a_att_mag[$epineux] == 1) ? $degat * (100 + max(0, $a_att[$epineux] - $a_end[$victime_piquee])) / (100 + max(0, $a_end[$victime_piquee] - $a_att[$epineux])) : $degat * (100 + max(0, $a_att[$epineux] - $a_def[$victime_piquee])) / (100 + max(0, $a_def[$victime_piquee] - $a_att[$epineux]));
				// pack de bonus aux dégâts et résistances diverses (U = R I)
				$degat2 = ($degat2 * $raz07_a['degat'] / $raz07_c['res']);
				// Bonus dégâts et résistance
				$bonus_degats = 1;
				$bonus_degats *= ($a_att_mag[$victime_piquee] == 1) ? $raz07_a['degat_vs_mag'] : $raz07_a['degat_vs_phys'];
				$bonus_degats *= ($a_ran[$victime_piquee] == 0) ? $raz07_a['degat_vs_cac'] : $raz07_a['degat_vs_range'];
				$bonus_degats *= ($a_vol[$victime_piquee] == 0) ? $raz07_a['degat_vs_sol'] : $raz07_a['degat_vs_vol'];
				if ($a_raciale[$epineux]) {
					$bonus_degats *= max($raz07_a['degat_mag'], $raz07_a['degat_phys']);
					$bonus_degats *= max($raz07_a['degat_cac'], $raz07_a['degat_range']);
					$bonus_degats *= max($raz07_a['degat_sol'], $raz07_a['degat_vol']);
				} else {
					$bonus_degats *= ($a_att_mag[$epineux] == 1) ? $raz07_a['degat_mag'] : $raz07_a['degat_phys'];
					$bonus_degats *= ($a_ran[$epineux] == 0) ? $raz07_a['degat_cac'] : $raz07_a['degat_range'];
					$bonus_degats *= ($a_vol[$epineux] == 0) ? $raz07_a['degat_sol'] : $raz07_a['degat_vol'];
				}

				$bonus_resist = 1;
				$bonus_resist *= ($a_att_mag[$epineux] == 1) ? $raz07_c['res_vs_mag'] : $raz07_c['res_vs_phys'];
				$bonus_resist *= ($a_ran[$epineux] == 0) ? $raz07_c['res_vs_cac'] : $raz07_c['res_vs_range'];
				$bonus_resist *= ($a_vol[$epineux] == 0) ? $raz07_c['res_vs_sol'] : $raz07_c['res_vs_vol'];
				if ($a_raciale[$victime_piquee]) {
					$bonus_resist *= max($raz07_c['res_mag'], $raz07_c['res_phys']);
					$bonus_resist *= max($raz07_c['res_cac'], $raz07_c['res_range']);
					$bonus_resist *= max($raz07_c['res_sol'], $raz07_c['res_vol']);
				} else {
					$bonus_resist *= ($a_att_mag[$victime_piquee] == 1) ? $raz07_c['res_mag'] : $raz07_c['res_phys'];
					$bonus_resist *= ($a_ran[$victime_piquee] == 0) ? $raz07_c['res_cac'] : $raz07_c['res_range'];
					$bonus_resist *= ($a_vol[$victime_piquee] == 0) ? $raz07_c['res_sol'] : $raz07_c['res_vol'];
				}

				$degat2 *= $bonus_degats / $bonus_resist;

				// Diviseur de dégâts lié à l'équilibre de l'armée
				$degat2 /= $div_degats;

				// Purification
				$bonus_baisse_deg_purif = (0.05 + 0.01 * (max(0, $a_niv[$epineux] - 1))) * $mod_purif_c;
				$degat2 *= (1 - $bonus_baisse_deg_purif); // si la cible a purifié l'attaquant, alors la créature inflige moins de dégâts (5% si elle est level 1, 10% si elle est level 6)
				$bonus_deg_purif = (0.1 - 0.01 * (max(0, $a_niv[$victime_piquee] - 1))) * $mod_purif_a;
				$degat2 *= (1 + $bonus_deg_purif); // si l'attaquant a purifié la cible, alors la créature inflige plus de dégâts (10% si elle est level 1, 5% si elle est level 6)

				// Profanation
				$bonus_baisse_def_profa = (0.1 - 0.01 * (max(0, $a_niv[$epineux] - 1))) * $mod_profa_c;
				$degat2 *= (1 - $bonus_baisse_def_profa); // si la cible a profané l'attaquant, alors la créature inflige moins de dégâts (10% si elle est level 1, 5% si elle est level 6)
				$bonus_deg_profa = (0.05 + 0.01 * (max(0, $a_niv[$victime_piquee] - 1))) * $mod_profa_a;
				$degat2 *= (1 + $bonus_deg_profa); // si l'attaquant a profané la cible, alors la créature inflige plus de dégâts (5% si elle est level 1, 10% si elle est level 6)

				$degat2 = round($degat2);
				// Les dégâts sont-ils suffisants pour détruire tout le stack adverse ?
				$n_pvstotal = ($a_pvstotal[$victime_piquee] - $degat2);
				if ($n_pvstotal <= 0) {
					// On règle les PVStotal ainsi que la qtee de créature à 0...
					$pvs_morts += $a_pvstotal[$victime_piquee];
					$a_qte[$victime_piquee] = 0;
					$a_pvstotal[$victime_piquee] = 0;

					// Si le stack a des créas qui ont fui sous le coup de effroi, on laisse 1 pv pour permettre aux créas de réintégrer le combat: le stack n'attaquera pas et ne pourra être ciblé,
					// mais les créas ayant fui reviendront après le moment qui était censé être la prochaine attaque du stack
					if ($a_effraye[$victime_piquee] > 0) {
						$a_pvstotal[$victime_piquee] = 1;
					}

					// L'écriture des bonnes lignes...
					if ($epineux < $milieu) {
						echo '<td class="tdlef" style="color:#0D4573;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et sont complètement éliminés !</td></tr>';
						$message1.= '<td style="color:#0D4573;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . " dégâts, et sont complètement éliminés !</td></tr>";
						$message .= '<td style="color:#B31141;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . " dégâts, et sont complètement éliminés !</td></td></tr>";
					} else {
						echo '<td class="tdlef" style="color:#B31141;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et sont complètement éliminés !</td></tr>';
						$message1.= '<td style="color:#B31141;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . " dégâts, et sont complètement éliminés !</td></tr>";
						$message .= '<td style="color:#0D4573;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . " dégâts, et sont complètement éliminés !</td></tr>";
					}
				} else { // les dégats n'ont pas été suffisants pour détruire le stack adverse
					$pvs_morts += $degat2;

					$r = ceil($n_pvstotal / $a_pvs[$victime_piquee]);
					$m = $a_qte[$victime_piquee] - $r;
					$a_qte[$victime_piquee] = $r;
					$a_pvstotal[$victime_piquee] = $n_pvstotal;
					if ($epineux < $milieu) {
						echo '<td class="tdlef" style="color:#0D4573;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et ' . $m . ' succombent à leurs blessures !</td></tr>';
						$message1.= '<td style="color:#0D4573;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et ' . $m . " succombent à leurs blessures !</td></tr>";
						$message .= '<td style="color:#B31141;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et ' . $m . " succombent à leurs blessures !</td></tr>";
					} else {
						echo '<td class="tdlef" style="color:#B31141;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et ' . $m . ' succombent à leurs blessures !</td></tr>';
						$message1.= '<td style="color:#B31141;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et ' . $m . " succombent à leurs blessures !</td></tr>";
						$message .= '<td style="color:#0D4573;"><b>Piquants!</b> Les ' . $qte2 . ' ' . $nom2 . ' prennent ' . $degat2 . ' dégâts, et ' . $m . " succombent à leurs blessures !</td></tr>";
					}
				}

				$nb_piquants = 0;
			}
        }      // fin du  while ($repercute == 1 AND $a_qte[$x] > 0)
		if ($a_effraye[$x] != 0) {
			$a_qte[$x] += $a_effraye[$x];
			// On enlève le pv qu'on avait gardé pour que le stack ne soit pas oublié
			if ($a_pvstotal[$x] == 1) {
				$a_pvstotal[$x] = 0;
			}
			$a_pvstotal[$x] += $a_effraye[$x] * $a_pvs[$x];
			$a_pvstotal_old[$x] += $a_effraye[$x] * $a_pvs[$v];
			$a_effraye[$x] = 0;
		}
    } // fin du foreach ($combat AS $x)
    $tour++;
} // fin du while ($tour++)
?>
