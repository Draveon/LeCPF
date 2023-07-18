<?php

$mod_xp_manip_att = 1;
$mod_xp_manip_def = 1;
// APTITUDE MANIPULATION de l'attaquant
$partiel = '';
$x = mt_rand(0,1);
$manip_att = $apt_att['20'];
if ($manip_att > 0)
{
	$mod_xp_manip_att = 0.25 * $manip_att / 100;
	if ($x == 0) {
		$mod_xp_manip_att /= 2;
		$partiel = ' (partiel)';
	}
	$mod_xp_manip_att += 1;

	echo '<div align="left"><img src="/images/aptitudes/manipulation.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Manipulation'.$partiel.' :</strong> Malgré la défaite, vous tirez un grand profit de ce combat !<br></small></span></div>';
	$message1.= 'Manipulation'.$partiel.' : Malgré la défaite, vous tirez un grand profit de ce combat !'."\n";
	$message .= 'Manipulation'.$partiel.' : Malgré sa défaite, votre adversaire tire le meilleur profit de ce combat !'."\n";
}

// APTITUDE MANIPULATION du defenseur
$partiel = '';
$x = mt_rand(0,1);
$manip_def = $apt_def['20'];
if ($manip_def > 0)
{
	$mod_xp_manip_def = 0.25 * $manip_def / 100;
	if ($x == 0) {
		$mod_xp_manip_def /= 2;
		$partiel = ' (partiel)';
	}
	$mod_xp_manip_def += 1;

	echo '<div align="left"><img src="/images/aptitudes/manipulation.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Manipulation'.$partiel.' :</strong> Votre adversaire tire le meilleur profit de sa victoire !<br></small></span></div>';
	$message1.= 'Manipulation'.$partiel.' : Votre adversaire tire le meilleur profit de sa victoire !'."\n";
	$message .= 'Manipulation'.$partiel.' : Vous tirez un grand profit de ce combat!'."\n";
}

// Mise à jour des xp et or dans la base
$xp_gain1 = ceil($xp_att * $coef_retraite_att * $coef_xp_lvl_att * $coef_pa_att * $coef_xp_vs * $mod_xp_manip_att * $bonus_raz07_att['xp'] * $coef_xpserveur);
 
$xp_gain2 = ceil($xp_def * $coef_xp_lvl_def * $coef_pa_def * $mod_xp_manip_def * $bonus_raz07_def['xp'] * $coef_xpserveur);

$xp_att = $xp_deja_att + $xp_gain1;
$xp_def = $xp_deja_def + $xp_gain2;

$pop_totale = $pop_h;
$pop_reste = $pop_c;

echo '<br>';
$message1.= "<br />";
$message .= "<br />";

// Récupération or sur les cadavres
$recup_or_att = floor((0.7 * $or_recup_att) * $coef_pa_att * $coef_force_armee_att * $coef_xp_lvl_att);
$recup_or_def = floor(($or_recup_def + 0.3 * $or_recup_att) * $coef_xp_lvl_def * $coef_pa_def * $coef_force_armee_def);

$or_total = $argent_att + $recup_or_att;
$or_cible = $argent_def + $recup_or_def;

$sql = "UPDATE `joueurs_stats` SET `xp` = `xp` + '".$xp_gain1."', `argent` = '".$or_total."' WHERE nom = '".$nom."'";
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = "UPDATE `joueurs_stats` SET `xp` = `xp` + '".$xp_gain2."', `argent` = '".$or_cible."' WHERE nom = '".$cible."'";
$req =  mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

echo 'Vous récupérez l\'équivalent de '.$recup_or_att.' pièces d\'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br>';
$message1.= "Vous récupérez l'équivalent de $recup_or_att pièces d'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br />";
$message.="Vous récupérez l'équivalent de $recup_or_def pièces d'or en matériel, scalps et autres biens de valeur sur les cadavres du champ de bataille.<br />";

// Rapport + mail
if ($xp_gain1 > 0)
{
	echo '<strong>Malgré cette défaite, ce combat vous donne '.$xp_gain1.' points d\'expérience !</strong><br>';
	$message1.= '<strong>Malgré cette défaite, ce combat vous donne '.$xp_gain1.' points d\'expérience !</strong><br /><br />';
}
$message.="<strong>Grâce à cette victoire, vous méritez ".$xp_gain2." points d'expérience.</strong><br /><br />'";


// Textes qui apparaîtront dans les archives
$texte1 .= 'Devant les puissantes défenses ennemies, vos hommes tombent les uns après autres...<br>';
$texte2 .= 'Grâce à vos puissantes fortifications, vos hommes parviennent à repousser l`attaque !<br>';
$texte1 .= 'Vous remportez tout de même <b>'.$xp_gain1.'</b> points d`expérience. Vous récupérez l\'équivalent de '.$recup_or_att.' pièces d\'or sur les cadavres du champ de bataille.<br>';
$texte2 .= 'Vous méritez une récompense de <b>'.$xp_gain2.'</b> points d`expérience! Vous récupérez l\'équivalent de '.$recup_or_def.' pièces d\'or sur les cadavres du champ de bataille.<br>';

// "calcul" des gains en acres, prisonniers, etc.
$gain_terre = 0;
$perte_terre = 0;
$pop_reste = $pop_c;
$pop_gonfle_tot = 0;
$pop_morte = 0;
$gain_or = 0;
$perte_or = 0;
$ress_transf = array('soufre' => 0, 'mercure' => 0, 'gemme' => 0, 'cristal' => 0);

?>
