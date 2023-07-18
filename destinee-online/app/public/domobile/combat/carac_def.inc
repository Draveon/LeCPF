<?php

// APTITUDE FUREUR DU DEFENSEUR
$partiel = '';
$fureur_def = $apt_def['34'];
if ($fureur_def > 0 && $apt_def['actif34'] && $strategie_att <= 60) {
	$max_counter = 4;
	if ($apt_def['fureur_counter'] >= $max_counter) {
		$x = mt_rand(0,1);
		$bonus_apt = 135 * $fureur_def / 100;
		$charges_restantes = 0;
		if ($x == 0) {
			$bonus_apt /= 2;
			$partiel = ' (partiel)';
			// Lors d'un déclenchement partiel on utilise que la moitié des charges.
			$charges_restantes = 2;
		}
		$att_def += $bonus_apt;
		$def_def += $bonus_apt;
		$ini_def += $bonus_apt;
		$end_def += $bonus_apt;
		$pui_def += $bonus_apt;
		$sql = 'UPDATE `joueurs_aptitudes_base` SET `fureur_counter` = '.$charges_restantes.' WHERE nom = "'.$cible.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		echo '<img src="/images/aptitudes/fureur.jpg" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Fureur'.$partiel.' :</strong> Laissant exploser sa colère, votre adversaire entre dans une fureur guerrière qui décuple ses capacités !</small></span><br />';
		$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Fureur'.$partiel.' :</strong> Laissant exploser sa colère, votre adversaire entre dans une fureur guerrière qui décuple ses capacités !</small></span><br />';
		$message .= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Fureur'.$partiel.' :</strong> Laissant exploser votre colère accumulée, vous entrez dans une fureur guerrière qui décuple vos capacités !</small></span><br />';
	}
}

// APTITUDE INTELLIGENCE DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$intelligence_def = $apt_def['19'];
if ($intelligence_def > 0)
{
	$bonus_apt = 100 * $intelligence_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$pui_def += $bonus_apt;
	echo '<img src="/images/aptitudes/intelligence.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Intelligence'.$partiel.' :</strong> Votre ennemi semble plus puissant !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Intelligence'.$partiel.' :</strong> Votre ennemi semble plus puissant !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Intelligence'.$partiel.' :</strong> Vous vous sentez plus puissant !</small></span><br />';
}

// APTITUDE FORCE BRUTE DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$attaque_def = $apt_def['8'];
if ($attaque_def > 0)
{
	$bonus_apt = 100 * $attaque_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$att_def += $bonus_apt;
	echo '<img src="/images/aptitudes/force.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Force Brute'.$partiel.' :</strong> Votre ennemi semble plus fort !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/force.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Force Brute'.$partiel.' :</strong> Votre ennemi semble plus fort !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/force.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Force Brute'.$partiel.' :</strong> Vous vous sentez plus fort !</small></span><br />';
}

	
// APTITUDE SYNERGIE DE LA CIBLE

$partiel = '';
$x = mt_rand(0,2);
$attaque_syn = $apt_def['25'];
if ($attaque_syn > 0)
{
	$bonus_apt_syn = 75 * $attaque_syn / 100;
	//$bonus_apt_pui = 75 * $intelligence_def / 100;
	if ($x == 0) {
		$bonus_apt_att /= 2;
		//$bonus_apt_pui /= 2;
		$partiel = ' (partiel)';
	}
	$att_def += $bonus_apt_syn;
	$pui_def += $bonus_apt_syn;
	echo '<img src="/images/aptitudes/synergie.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Synergie'.$partiel.' :</strong> Votre ennemi semble manier le combat et les arcanes à la perfection !</small></span><br>';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/synergie.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Synergie'.$partiel.' :</strong> Votre ennemi semble manier le combat et les arcanes à la perfection !</small></span><br>';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/synergie.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Synergie'.$partiel.' :</strong> Vos Maîtrises des arcanes et du combat s\'intensifient, ne faisant plus qu\'une !</small></span><br>';
}



// APTITUDE RESISTANCE DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$defense_def = $apt_def['24'];
if ($defense_def > 0)
{
	$bonus_apt = 150 * $defense_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$def_def += $bonus_apt;
	echo '<img src="/images/aptitudes/resistance.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Résistance'.$partiel.' :</strong> Votre ennemi semble plus résistant !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/resistance.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Résistance'.$partiel.' :</strong> Votre ennemi semble plus résistant !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/resistance.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Résistance'.$partiel.' :</strong> Vous vous sentez plus résistant !</small></span><br />';
}

// APTITUDE AGILITE DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$agilite_def = $apt_def['1'];
if ($agilite_def > 0)
{
	$bonus_apt = 100 * $agilite_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$ini_def += $bonus_apt;
	echo '<img src="/images/aptitudes/agilite.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Agilité'.$partiel.' :</strong> Les sens de votre ennemi semblent s\'aiguiser !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/agilite.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Agilité'.$partiel.' :</strong> Les sens de votre ennemi semblent s\'aiguiser !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/agilite.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Agilité'.$partiel.' :</strong> Vos sens s\'aiguisent !</small></span><br />';
}

// APTITUDE ENDURANCE DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$endurance_def = $apt_def['2'];
if ($endurance_def > 0) 
{
	$bonus_apt = 150 * $endurance_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$end_def += $bonus_apt;
	echo '<img src="/images/aptitudes/endurance.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Endurance'.$partiel.' :</strong> Votre ennemi semble plus endurant !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/endurance.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Endurance'.$partiel.' :</strong> Votre ennemi semble plus endurant !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/endurance.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Endurance'.$partiel.' :</strong> Vous vous sentez plus endurant !</small></span><br />';
}

// APTITUDE FERVEUR DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$ferveur_def = $apt_def['14'];
if ($ferveur_def > 0) 
{
	$bonus_apt = 200 * $ferveur_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$y = mt_rand(1,5);
	switch($y)
	{
		case '1' : $att_def += $bonus_apt; $texte_10 = "fort"; break;
		case '2' : $def_def += $bonus_apt; $texte_10 = "résistant"; break;
		case '3' : $pui_def += $bonus_apt; $texte_10 = "puissant"; break;
		case '4' : $ini_def += $bonus_apt; $texte_10 = "rapide"; break;
		case '5' : $end_def += $bonus_apt; $texte_10 = "endurant"; break;
	}
	echo '<img src="/images/aptitudes/ferveur.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Ferveur'.$partiel.' :</strong> Le Dieu de l\'adversaire intervient en sa faveur, votre adversaire semble plus '.$texte_10.' !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/ferveur.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Ferveur'.$partiel.' :</strong> Le Dieu de l\'adversaire intervient en sa faveur, votre adversaire semble plus '.$texte_10.' !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/ferveur.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Ferveur'.$partiel.' :</strong> Votre Dieu intervient en votre faveur, vous vous sentez plus '.$texte_10.' !</small></span><br />';
}

// APTITUDE INGENIOSITE DE LA CIBLE
$partiel = '';
$x = mt_rand(0,1);
$ingenio_def = $apt_def['3'];
if ($ingenio_def > 0) 
{
	$bonus_ingenio_def = 0.2 * $ingenio_def / 100;
	if ($x == 0) {
		$bonus_ingenio_def /= 2;
		$partiel = ' (partiel)';
	}
	$y = mt_rand(0,1);
	$ingenio_def_trait = $y;
	$texte_ing = $y? "points de vie" : "dégâts";
	
	echo '<img src="/images/aptitudes/ingeniosite.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Ingéniosité'.$partiel.' :</strong> Les constructions de votre adversaire voient leurs '.$texte_ing.' augmentés!</small></span><br>';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/ingeniosite.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Ingéniosité'.$partiel.' :</strong> Les constructions de votre adversaire voient leurs '.$texte_ing.' augmentés!</small></span><br>';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/ingeniosite.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Ingéniosité'.$partiel.' :</strong> Vos constructions voient leurs '.$texte_ing.' augmentés!</small></span><br>';
}

?>
