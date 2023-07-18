<?php

// Sort spécial du Marchand:
$fraction_marchand = 1/10;	// fraction des troupes corrompues par le sort
//ATTAQUANT
if ($special_marchand)
{
	for ($v=$milieu; $v<=$z-1; $v++)
	{
		$nbr_perdus = round($a_qte[$v] * $fraction_marchand);
		$pvs_perdus = $nbr_perdus*$a_pvs[$v];

		$a_qte[$v] -= $nbr_perdus;
		$a_fui[$v] += $nbr_perdus;
		$a_pvstotal[$v] -= $pvs_perdus;
		$gros_pvstotal_def -= $pvs_perdus;
		$pvscourant_def -= $pvs_perdus;
		$a_pvstotal_old[$v] -= $pvs_perdus;
	}
}
//DEFENSEUR
if ($special_marchand2)
{
	for ($v=0; $v<=$milieu-1; $v++)
	{
		$nbr_perdus = round($a_qte[$v] * $fraction_marchand);
		$pvs_perdus = $nbr_perdus*$a_pvs[$v];

		$a_qte[$v] -= $nbr_perdus;
		$a_fui[$v] += $nbr_perdus;
		$a_pvstotal[$v] -= $pvs_perdus;
		$gros_pvstotal_att -= $pvs_perdus;
		$pvscourant_att -= $pvs_perdus;
		$a_pvstotal_old[$v] -= $pvs_perdus;
	}
}


// APTITUDE CHARGE MEURTRIERE ET EMBUSCADE

// Défenseur

// CM ne fonctionne que si au moins 1/3 des créatures composant l'armée sont de contact
$ratio_melee_def = $pvs_melee_def / $gros_pvstotal_def;
if ($ratio_melee_def < 1/3) {
	$apt_def['12'] = 0;
	$apt_def['33'] = 0;
}

if ($apt_def['12'] > 0) {
	echo '<img src="/images/aptitudes/charge.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Charge Meurtrière :</strong> Les troupes adverses fondent sur votre armée avec une vélocité accrue !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/charge.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Charge Meurtrière :</strong> Les troupes adverses fondent sur votre armée avec une vélocité accrue !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/charge.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Charge Meurtrière :</strong> Vos troupes fondent sur l\'armée adverse avec une vélocité accrue !</small></span><br />';
}

if ($apt_def['17'] > 0) {
	echo '<img src="/images/aptitudes/embuscade.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Embuscade :</strong> Le placement astucieux des troupes adverses vous prend de court !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/embuscade.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Embuscade :</strong> Le placement astucieux des troupes adverses vous prend de court !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/embuscade.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Embuscade :</strong> En plaçant astucieusement vos troupes, vous réussissez à prendre votre adversaire de court !</small></span><br />';
}

$ratio_volant_def = $pvs_volant_def / $gros_pvstotal_def;
if ($apt_def['28'] > 0) {
	echo '<img src="/images/aptitudes/aerien.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Maîtrise aérienne :</strong> Les créatures volantes de votre adversaire se déplacent avec une maîtrise extraordinaire !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/aerien.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Maîtrise aérienne :</strong> Les créatures volantes de votre adversaire se déplacent avec une maîtrise extraordinaire !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/aerien.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Maîtrise aérienne :</strong> Vos créatures volantes se déplacent avec une maîtrise extraordinaire !</small></span><br />';
}

$ratio_sol_melee_def = $pvs_sol_melee_def / $gros_pvstotal_def;
if ($apt_def['33'] > 0) {
	echo '<img src="/images/aptitudes/filets.jpg" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Filets :</strong> Votre adversaire empêche vos créatures volantes de se mouvoir avec aisance !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/filets.jpg" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Filets :</strong> Votre adversaire empêche vos créatures volantes de se mouvoir avec aisance !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/filets.jpg" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Filets :</strong> Vous empêchez les créatures volantes adverses de se mouvoir normalement !</small></span><br />';
}

// Attaquant

// CM ne fonctionne que si au moins 1/3 des créatures composant l'armée sont de contact
$ratio_melee_att = $pvs_melee_att / $gros_pvstotal_att;
if ($ratio_melee_att < 1/3) {
	$apt_att['12'] = 0;
	$apt_att['33'] = 0;
}

if ($apt_att['12'] > 0) {
	echo '<img src="/images/aptitudes/charge.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Charge Meurtrière :</strong> Vos troupes fondent sur l\'armée adverse avec une vélocité accrue !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/charge.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Charge Meurtrière :</strong> Vos troupes fondent sur l\'armée adverse avec une vélocité accrue !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/charge.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Charge Meurtrière :</strong> Les troupes adverses fondent sur votre armée avec une vélocité accrue !</small></span><br />';
}

if ($apt_att['17'] > 0) {
	echo '<img src="/images/aptitudes/embuscade.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Embuscade :</strong> En plaçant astucieusement vos troupes, vous réussissez à prendre votre adversaire de court !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/embuscade.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Embuscade :</strong> En plaçant astucieusement vos troupes, vous réussissez à prendre votre adversaire de court !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/embuscade.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Embuscade :</strong> Le placement astucieux des troupes adverses vous prend de court !</small></span><br />';
}

$ratio_volant_att = $pvs_volant_att / $gros_pvstotal_att;
if ($apt_att['28'] > 0) {
	echo '<img src="/images/aptitudes/aerien.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Maîtrise aérienne :</strong> Vos créatures volantes se déplacent avec une maîtrise extraordinaire !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/aerien.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Maîtrise aérienne :</strong> Vos créatures volantes se déplacent avec une maîtrise extraordinaire !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/aerien.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Maîtrise aérienne :</strong> Les créatures volantes de votre adversaire se déplacent avec une maîtrise extraordinaire !</small></span><br />';
}

$ratio_sol_melee_att = $pvs_sol_melee_att / $gros_pvstotal_att;
if ($apt_att['33'] > 0) {
	echo '<img src="/images/aptitudes/filets.jpg" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Filets :</strong> Vous empêchez les créatures volantes adverses de se mouvoir normalement !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/filets.jpg" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong>Filets :</strong> Vous empêchez les créatures volantes adverses de se mouvoir normalement !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/filets.jpg" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong>Filets :</strong> Votre adversaire empêche vos créatures volantes de se mouvoir avec aisance !</small></span><br />';
}

$mod_purif_def = 0;
$mod_profa_def = 0;
// APTITUDE PURIFICATION DE LA CIBLE
$partiel = '';
$purif_def = $apt_def['4'];
$x = mt_rand(0,1);
if ($purif_def > 0)
{
	if (in_array($race_att, array('Homme', 'Ashtar', 'Elfe Noir', 'Géant', 'Infernal', 'Minotaure', 'Orque', 'Vampire', 'Sahuagin', 'Septentrional')))
	{
		$mod_purif_def = $purif_def / 100;
		if ($x == 0) {
			$mod_purif_def /= 2;
			$partiel = ' (partiel)';
		}
		if ($race_att == 'Homme' || $race_att == 'Ashtar')
			$mod_purif_def /= 2;
		echo '<img src="/images/aptitudes/purification.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Purification'.$partiel.' :</strong> Grâce à la foi inébranlable de votre adversaire, vos troupes faiblissent !</small></span><br />';
		$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/purification.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Purification'.$partiel.' :</strong> Grâce à la foi inébranlable de votre adversaire, vos troupes faiblissent !</small></span><br />';
		$message .= '<img src="http://www.destinee-online.com/images/aptitudes/purification.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Purification'.$partiel.' :</strong> Les troupes ennemies chancellent face à votre foi inébranlable !</small></span><br />';
	}
}
// APTITUDE PROFANATION DE LA CIBLE
$partiel = '';
$profa_def = $apt_def['5'];
$x = mt_rand(0,1);
if ($profa_def > 0)
{
	if (in_array($race_att, array('Homme', 'Ashtar', 'Ancien', 'Elfe', 'Fée', 'Fétide', 'Gnome', 'Célestial', 'Nain', 'Malakeh')))
	{
		$mod_profa_def = $profa_def / 100;
		if ($x == 0) {
			$mod_profa_def /= 2;
			$partiel = ' (partiel)';
		}
		if ($race_att == 'Homme' || $race_att == 'Ashtar')
			$mod_profa_def /= 2;
		echo '<img src="/images/aptitudes/profanation.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Profanation'.$partiel.' :</strong> Malheur ! Usant de puissants sortilèges, l\'ennemi corrompt vos troupes !</small></span><br />';
		$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/profanation.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Profanation'.$partiel.' :</strong> Malheur ! Usant de puissants sortilèges, l\'ennemi corrompt vos troupes !</small></span><br />';
		$message .= '<img src="http://www.destinee-online.com/images/aptitudes/profanation.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Profanation'.$partiel.' :</strong> Vos puissants sortilèges parviennent à corrompre les troupes adverses !</small></span><br />';
	}
}


$mod_purif_att = 0;
$mod_profa_att = 0;
// APTITUDE PURIFICATION DE L'ATTAQUANT
$partiel = '';
$purif_att = $apt_att['4'];
$x = mt_rand(0,1);
if ($purif_att > 0)
{
	if (in_array($race_def, array('Homme', 'Ashtar', 'Elfe Noir', 'Géant', 'Infernal', 'Minotaure', 'Orque', 'Vampire', 'Sahuagin', 'Septentrional')))
	{
		$mod_purif_att = $purif_att / 100;
		if ($x == 0) {
			$mod_purif_att /= 2;
			$partiel = ' (partiel)';
		}
		if ($race_att == 'Homme' || $race_att == 'Ashtar')
			$mod_purif_att /= 2;
		echo '<img src="/images/aptitudes/purification.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Purification'.$partiel.' :</strong> Priant les dieux, ils purifient les troupes ennemies !</small></span><br>';
		$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/purification.gif" width="20" height="30" border=1 align="center"><span style="color:#0D4573;"><small><strong> Purification'.$partiel.' :</strong> Priant les dieux, ils purifient les troupes ennemies !</small></span><br />';
		$message .= '<img src="http://www.destinee-online.com/images/aptitudes/purification.gif" width="20" height="30" border=1 align="center"><span style="color:#B31141;"><small><strong> Purification'.$partiel.' :</strong> Grâce à la foi inébranlable de votre adversaire, vos troupes faiblissent !</small></span><br />';
	}
}

// APTITUDE PROFANATION DE L'ATTAQUANT
$partiel = '';
$profa_att = $apt_att['5'];
$x = mt_rand(0,1);
if ($profa_att > 0)
{
	if (in_array($race_def, array('Homme', 'Ashtar', 'Ancien', 'Elfe', 'Fée', 'Fétide', 'Gnome', 'Célestial', 'Nain', 'Malakeh')))
	{
		$mod_profa_att = $profa_att / 100;
		if ($x == 0) {
			$mod_profa_att /= 2;
			$partiel = ' (partiel)';
		}
		if ($race_att == 'Homme' || $race_att == 'Ashtar')
			$mod_profa_att /= 2;
		echo '<img src="/images/aptitudes/profanation.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Profanation'.$partiel.' :</strong> Vos puissants sortilèges parviennent à corrompre les troupes adverses !</small></span><br />';
		$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/profanation.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Profanation'.$partiel.' :</strong> Vos puissants sortilèges parviennent à corrompre les troupes adverses !</small></span><br />';
		$message .= '<img src="http://www.destinee-online.com/images/aptitudes/profanation.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Profanation'.$partiel.' :</strong> Malheur ! Usant de puissants sortilèges, l\'ennemi corrompt vos troupes !</small></span><br />';
	}
}

$effets_creas_att = 1.0;
$effets_creas_def = 1.0;
// APTITUDE MUTATION DE L'ATTAQUANT
$partiel = '';
$muta_att = $apt_att['35'];
$x = mt_rand(0,1);
if ($muta_att > 0)
{
	$bonus_apt = 0.66 * $muta_att / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$effets_creas_att += $bonus_apt;
	echo '<img src="/images/aptitudes/mutation.png" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Mutation'.$partiel.' :</strong> Vos expériences portent leurs fruits, vos créatures ont évolué !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/mutation.png" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Mutation'.$partiel.' :</strong> Vos expériences portent leurs fruits, vos créatures ont évolué !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/mutation.png" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Mutation'.$partiel.' :</strong> Les créatures adverses semblent avoir subi des mutations les rendant plus fortes !</small></span><br />';
}

// APTITUDE MUTATION DU DEFENSEUR
$partiel = '';
$muta_def = $apt_def['35'];
$x = mt_rand(0,1);
if ($muta_def > 0)
{
	$bonus_apt = 0.66 * $muta_def / 100;
	if ($x == 0) {
		$bonus_apt /= 2;
		$partiel = ' (partiel)';
	}
	$effets_creas_def += $bonus_apt;
	echo '<img src="/images/aptitudes/mutation.png" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Mutation'.$partiel.' :</strong> Les créatures adverses semblent avoir subi des mutations les rendant plus fortes !</small></span><br />';
	$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/mutation.png" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Mutation'.$partiel.' :</strong> Les créatures adverses semblent avoir subi des mutations les rendant plus fortes !</small></span><br />';
	$message .= '<img src="http://www.destinee-online.com/images/aptitudes/mutation.png" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Mutation'.$partiel.' :</strong> Vos expériences portent leurs fruits, vos créatures ont évolué !</small></span><br />';
}

?>
