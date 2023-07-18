<?php

$tableBatSpe = 'batimentspeciaux';
$tableBatJoueurs = 'joueurs_batspe';

$branche = array('du Combat', 'de la Magie', 'du Héros');

// Tableau avec les données principales des bâtiments spéciaux
$batspe = array();
$reqspec = mysql_query("SELECT `id`, `nom`, `branche`, `image`, `type`, `requis`, `niveau`, `cout_or` FROM `$tableBatSpe` WHERE `affiche` = '1' ORDER BY `branche` ASC, `niveau` ASC, `type` ASC, `id` ASC") or die('Erreur SQL !<br>'.mysql_error());
while ($dataspec = mysql_fetch_assoc($reqspec))
	$batspe[$dataspec['id']] = $dataspec;

// limites de bâtiment spécial, etc.
$sqlspec = "SELECT `niveau` FROM `joueurs_stats` WHERE `nom` = '".$nom."'";
$resspec = mysql_query($sqlspec) or die('Erreur SQL !<br>'.mysql_error());
$dataspec = mysql_fetch_row($resspec);
$niveau = $dataspec[0];
$nbrBatAuth = ceil($niveau/3);

// liste des bâtiments construits
$req = mysql_query("SELECT * FROM `$tableBatJoueurs` WHERE `nom` = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$nivRestriction = $data['nivRestriction'];
$batSpeConstr = array();
$nbrBatSpe = 0;
$j = 1;
while (isset($data[$j]))
{
	$batSpeConstr[$j] = $data[$j];
	$nbrBatSpe += $data[$j];
	$j++;
}



// retourne la somme des bonus donné par le bâtiment, selon son niveau
if (!function_exists('getBonusLevel'))
{
	function getBonusLevel ($bonus, $level)
	{
		if ($level == 0)	return 0;
		if ($level == 1)	return $bonus;
		if ($level == 2)	return round($bonus *5/3 * 100)/100;	// on veut s'assurer que les arrondis soient toujours calculés de la même manière, en monté-descente-etc.
		if ($level == 3)	return $bonus * 2;
		return $bonus * 2;
		
		// erroné return max(0, $bonus*(4-$level)/3);
	//	return round($bonus * (1- pow(2/3, $level))*3 *1000)/1000;
	}
}

// retourne le descriptif du bâtiment
if (!function_exists('getDescriptif'))
{
	function getDescriptif ($string, $num, $float)
	{
		return str_replace (array('NUM', 'FLOAT'), array($num, $float*100), $string);
	}
}

// retourne le descrptif complet du bâtiment
if (!function_exists('getTxt'))
{
	function getTxt ($j, $level)
	{
		global $batspe;
		$txt1 = getDescriptif($batspe[$j]['btxt1'], round(getBonusLevel($batspe[$j]['bnum1'], $level),0), round(getBonusLevel($batspe[$j]['bfloat1'], $level),3));
		$txt2 = getDescriptif($batspe[$j]['btxt2'], round(getBonusLevel($batspe[$j]['bnum2'], $level),0), round(getBonusLevel($batspe[$j]['bfloat2'], $level),3));
	//	if ($txt2 != '')
	//		$txt2 = ''.strtolower($txt2[0]).substr($txt2,1);
		return $txt1.'<br>'.$txt2;
	}
}

?>
