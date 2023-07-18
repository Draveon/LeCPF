<?php

// APTITUDE FUREUR DE L'ATTAQUANT
$partiel = '';
$fureur_att = $apt_att['34'];
if ($fureur_att > 0 && $apt_att['actif34']) {
	$max_counter = 4;
	if ($apt_att['fureur_counter'] >= $max_counter) {
		$x = mt_rand(0,1);
		$bonus_apt = 135 * $fureur_att / 100;
		$charges_restantes = 0;
		if ($x == 0) {
			$bonus_apt /= 2;
			$partiel = ' (partiel)';
			// Lors d'un déclenchement partiel on utilise que la moitié des charges.
			$charges_restantes = 2;
		}
		$att_att += $bonus_apt;
		$def_att += $bonus_apt;
		$ini_att += $bonus_apt;
		$end_att += $bonus_apt;
		$pui_att += $bonus_apt;
		$sql = 'UPDATE `joueurs_aptitudes_base` SET `fureur_counter` = '.$charges_restantes.' WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		echo '<img src="/images/aptitudes/fureur.jpg" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Fureur'.$partiel.' :</strong> Laissant exploser votre colère accumulée, vous entrez dans une fureur guerrière qui décuple vos capacités !</small></span><br />';
		$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Fureur'.$partiel.' :</strong> Laissant exploser votre colère accumulée, vous entrez dans une fureur guerrière qui décuple vos capacités !</small></span><br />';
		$message .= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Fureur'.$partiel.' :</strong> Laissant exploser sa colère, votre adversaire entre dans une fureur guerrière qui décuple ses capacités !</small></span><br />';
	
		//EFFET EN CAS DE SABOTAGE
	}
		if ($apt_def['actif23']) {
		$charges_restantes = 4;
		}	

	}

// APTITUDE INTELLIGENCE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$intelligence_att = $apt_att['19'];
if ($intelligence_att > 0)
{
	$bonus_apt = 100 * $intelligence_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$pui_att += $bonus_apt;
	echo '<img src="/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Intelligence'.$partiel.' :</strong> Vous vous sentez plus puissant !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Intelligence'.$partiel.' :</strong> Vous vous sentez plus puissant !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/intelligence.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Intelligence'.$partiel.' :</strong> Votre ennemi semble plus puissant !</small></span><br />';
}


// APTITUDE FORCE BRUTE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$attaque_att = $apt_att['8'];
if ($attaque_att > 0)
{
	$bonus_apt = 100 * $attaque_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$att_att += $bonus_apt;
	echo '<img src="/images/aptitudes/force.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Force Brute'.$partiel.' :</strong> Vous vous sentez plus fort !</small></span><br>';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/force.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Force Brute'.$partiel.' :</strong> Vous vous sentez plus fort !</small></span><br>';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/force.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Force Brute'.$partiel.' :</strong> Votre ennemi semble plus fort !</small></span><br>';
}
// APTITUDE SYNERGIE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,2);
$attaque_syn = $apt_att['25'];
if ($attaque_syn > 0)
{
	$bonus_apt_syn = 75 * $attaque_syn / 100;
	//$bonus_apt_pui = 75 * $intelligence_att / 100;
	if ($x == 0) {
		$bonus_apt_syn /= 2;
		//$bonus_apt_pui /= 2;
		$partiel = ' (partiel)';
	}
	$att_att += $bonus_apt_syn;
	$pui_att += $bonus_apt_syn;
	echo '<img src="/images/aptitudes/synergie.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Synergie'.$partiel.' :</strong> Vos Maîtrises des arcanes et du combat s\'intensifient, ne faisant plus qu\'une !</small></span><br>';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/synergie.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Synergie'.$partiel.' :</strong> Vos Maîtrises des arcanes et du combat s\'intensifient, ne faisant plus qu\'une !</small></span><br>';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/synergie.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Synergie'.$partiel.' :</strong> Votre ennemi semble manier le combat et les arcanes à la perfection !</small></span><br>';
}


// APTITUDE RESISTANCE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$defense_att = $apt_att['24'];
if ($defense_att > 0)
{
	$bonus_apt = 150 * $defense_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$def_att += $bonus_apt;
	echo '<img src="/images/aptitudes/resistance.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Résistance'.$partiel.' :</strong> Vous vous sentez plus résistant !</small></span><br>';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/resistance.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Résistance'.$partiel.' :</strong> Vous vous sentez plus résistant !</small></span><br>';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/resistance.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Résistance'.$partiel.' :</strong> Votre ennemi semble plus résistant !</small></span><br>';
}


// APTITUDE AGILITE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$agilite_att = $apt_att['1'];
if ($agilite_att > 0)
{
	$bonus_apt = 100 * $agilite_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$ini_att += $bonus_apt;
	echo '<img src="/images/aptitudes/agilite.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Agilité'.$partiel.' :</strong> Vos sens s\'aiguisent !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/agilite.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Agilité'.$partiel.' :</strong> Vos sens s\'aiguisent !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/agilite.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Agilité'.$partiel.' :</strong> Les sens de votre ennemi semblent s\'aiguiser !</small></span><br />';
}


// APTITUDE ENDURANCE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$endurance_att = $apt_att['2'];
if ($endurance_att > 0) 
{
	$bonus_apt = 150 * $endurance_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$end_att += $bonus_apt;
	echo '<img src="/images/aptitudes/endurance.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Endurance'.$partiel.' :</strong> Vous vous sentez plus endurant !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/endurance.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Endurance'.$partiel.' :</strong> Vous vous sentez plus endurant !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/endurance.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Endurance'.$partiel.' :</strong> Votre ennemi semble plus endurant !</small></span><br />';
}


// APTITUDE FERVEUR DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$ferveur_att = $apt_att['14'];
if ($ferveur_att > 0) 
{
	$bonus_apt = 200 * $ferveur_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$y = mt_rand(1,5);
	switch($y)
	{
		case '1' : $att_att += $bonus_apt; $texte_10 = "fort"; break;
		case '2' : $def_att += $bonus_apt; $texte_10 = "résistant"; break;
		case '3' : $pui_att += $bonus_apt; $texte_10 = "puissant"; break;
		case '4' : $ini_att += $bonus_apt; $texte_10 = "rapide"; break;
		case '5' : $end_att += $bonus_apt; $texte_10 = "endurant"; break;
	}
	echo '<img src="/images/aptitudes/ferveur.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Ferveur'.$partiel.' :</strong> Votre Dieu intervient en votre faveur, vous vous sentez plus '.$texte_10.' !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/ferveur.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Ferveur'.$partiel.' :</strong> Votre Dieu intervient en votre faveur, vous vous sentez plus '.$texte_10.' !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/ferveur.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Ferveur'.$partiel.' :</strong> Le Dieu de l\'adversaire intervient en sa faveur, votre adversaire semble plus '.$texte_10.' !</small></span><br />';
}


// APTITUDE INGENIOSITE DE L'ATTAQUANT
$partiel = '';
$x = mt_rand(0,1);
$ingenio_att = $apt_att['3'];
if ($ingenio_att > 0) 
{
	$bonus_ingenio_att = 0.2 * $ingenio_att / 100;
	if ($x == 0) {
		$bonus_ingenio_att /= 2;
		$partiel = ' (partiel)';
	}
	$y = mt_rand(0,1);
	$ingenio_att_trait = $y;
	$texte_ing = $y? "points de vie" : "dégâts";
	
	echo '<img src="/images/aptitudes/ingeniosite.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Ingéniosité'.$partiel.' :</strong> Vos constructions voient leurs '.$texte_ing.' augmentés!</small></span><br>';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/ingeniosite.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Ingéniosité'.$partiel.' :</strong> Vos constructions voient leurs '.$texte_ing.' augmentés!</small></span><br>';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/ingeniosite.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Ingéniosité'.$partiel.' :</strong> Les constructions de votre adversaire voient leurs '.$texte_ing.' augmentés!</small></span><br>';
}

?>
