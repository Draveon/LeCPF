<?php

$recapitulatif = '<br><br><table border="0" width="90%"><tbody><tr>';

// Table attaquant
$recapitulatif .= '<td style="vertical-align:top"><table border="0"><tbody>';

$recapitulatif .= '<tr><td colspan="2"><strong>Statistiques de '.$nom.' :</strong></td></tr>';
$recapitulatif .= "<tr><td>Attaque</td><td>".round($att_att)."</td></tr>";
$recapitulatif .= "<tr><td>Défense</td><td>".round($def_att)."</td></tr>";
$recapitulatif .= "<tr><td>Initiative</td><td>".round($ini_att)."</td></tr>";
$recapitulatif .= "<tr><td>Endurance</td><td>".round($end_att)."</td></tr>";
$recapitulatif .= "<tr><td>Puissance</td><td>".round($pui_att)."</td></tr>";
$recapitulatif .= '<tr><td colspan="2"><br><td></td></tr>';

$recapitulatif .= "<tr><td>Points de vie de l'armée: </td><td>$pvs_attaquant</td></tr>";
$sql_bonus = 'SELECT `bonus`, `libellé` FROM bonus_libellé WHERE `id` < 52 ORDER BY `id` ASC';
$req = mysql_query($sql_bonus) or die('Erreur SQL !<br>'.$sql_bonus.'<br>'.mysql_error());
// On démarre le traitement en boucle des bonus
while ($data = mysql_fetch_assoc($req)) {
	$nom_bonus = $data['bonus'];
	$libelle_bonus = $data['libellé'];
	if (isset($bonus_raz07_att[$nom_bonus]) && ($bonus_raz07_att[$nom_bonus] != 0)) {
		$valeur_bonus = round(($bonus_raz07_att[$nom_bonus] - 1) * 100);
		if ($valeur_bonus != 0) {
			$recapitulatif .= "<tr><td>".$libelle_bonus."</td><td>$valeur_bonus%</td></tr>";
		}
	}
}

$recapitulatif .= "</tbody></table></td>";

// Table défenseur
$recapitulatif .= '<td style="vertical-align:top"><table border="0"><tbody>';

$recapitulatif .= '<tr><td colspan="2"><strong>Statistiques de '.$cible.' :</strong></td></tr>';
$recapitulatif .= "<tr><td>Attaque</td><td>".round($att_def)."</td></tr>";
$recapitulatif .= "<tr><td>Défense</td><td>".round($def_def)."</td></tr>";
$recapitulatif .= "<tr><td>Initiative</td><td>".round($ini_def)."</td></tr>";
$recapitulatif .= "<tr><td>Endurance</td><td>".round($end_def)."</td></tr>";
$recapitulatif .= "<tr><td>Puissance</td><td>".round($pui_def)."</td></tr>";
$recapitulatif .= '<tr><td colspan="2"><br><td></td></tr>';


// Pvs de l'armée
$recapitulatif .= "<tr><td>Points de vie de l'armée: </td><td>$pvs_defenseur</td></tr>";
$req = mysql_query($sql_bonus) or die('Erreur SQL !<br>'.$sql_bonus.'<br>'.mysql_error());
// On démarre le traitement en boucle des bonus
while ($data = mysql_fetch_assoc($req)) {
	$nom_bonus = $data['bonus'];
	$libelle_bonus = $data['libellé'];
	if (isset($bonus_raz07_def[$nom_bonus]) && ($bonus_raz07_def[$nom_bonus] != 0)) {
		$valeur_bonus = round(($bonus_raz07_def[$nom_bonus] - 1) * 100);
		if ($valeur_bonus != 0) {
			$recapitulatif .= "<tr><td>".$libelle_bonus."</td><td>$valeur_bonus%</td></tr>";
		}
	}
}

$recapitulatif .= "</tbody></table></td></tr>";

$recapitulatif .= '<tr><td colspan="2" height="10px"></td></tr><tr>';

// Tableau des différents coefficients à l'xp
// Attaquant
$recapitulatif .= '<td style="vertical-align:top"><table border="0"><tbody>';
$recapitulatif .= '<tr><td colspan="2"><strong>Coefficients aux gains de '.$nom.' :</strong></td></tr>';
if ($coef_retraite_att != 1 && ($gagnant == $cible)) {
	$recapitulatif .= "<tr><td>Retraite prématurée</td><td>".round(($coef_retraite_att - 1) * 100)."%</td></tr>";
}
if ($coef_xp_lvl_att != 1) {
	$recapitulatif .= "<tr><td>Niveau des héros</td><td>".round(($coef_xp_lvl_att - 1) * 100)."%</td></tr>";
}
if ($coef_pa_att != 1) {
	$recapitulatif .= "<tr><td>Taille de l'armée</td><td>".round(($coef_pa_att - 1) * 100)."%</td></tr>";
}
if ($coef_force_armee_att != 1) {
	$recapitulatif .= "<tr><td>Force de l'armée</td><td>".round(($coef_force_armee_att - 1) * 100)."%</td></tr>";
}
if ($coef_pourc_armee_att != 1) {
	$recapitulatif .= "<tr><td>Pourcentage d'armée</td><td>".round(($coef_pourc_armee_att - 1) * 100)."%</td></tr>";
}
if ($coef_taille_armee_att != 1 && ($gagnant == $nom)) {
	$recapitulatif .= "<tr><td>Armée faible</td><td>".round(($coef_taille_armee_att - 1) * 100)."%</td></tr>";
}
/* if ($coef_xp_vs != 1) {
	$recapitulatif .= "<tr><td>Déjà-vu</td><td>".round(($coef_xp_vs - 1) * 100)."%</td></tr>";
} */
$recapitulatif .= "</tbody></table></td>";

// Défenseur
$recapitulatif .= '<td style="vertical-align:top"><table border="0"><tbody>';
$recapitulatif .= '<tr><td colspan="2"><strong>Coefficients aux gains de '.$cible.' :</strong></td></tr>';
if ($coef_retraite_def != 1 && ($gagnant == $nom)) {
	$recapitulatif .= "<tr><td>Retraite prématurée</td><td>".round(($coef_retraite_def - 1) * 100)."%</td></tr>";
}
if ($coef_xp_lvl_def != 1) {
	$recapitulatif .= "<tr><td>Niveau des héros</td><td>".round(($coef_xp_lvl_def - 1) * 100)."%</td></tr>";
}
if ($coef_pa_def != 1) {
	$recapitulatif .= "<tr><td>Taille de l'armée</td><td>".round(($coef_pa_def - 1) * 100)."%</td></tr>";
}
if ($coef_force_armee_def != 1) {
	$recapitulatif .= "<tr><td>Force de l'armée</td><td>".round(($coef_force_armee_def - 1) * 100)."%</td></tr>";
}
$recapitulatif .= "</tbody></table></td>";

$recapitulatif .= "</tr></tbody></table>";


echo $recapitulatif;
$message1.= $recapitulatif;
$message .= $recapitulatif;

?>
