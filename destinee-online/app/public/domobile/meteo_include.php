<?php

$meteo = array (
	'Beau temps',
	'Temps calme',
	'Couvert',
	'Orageux',
	'Tempête',
	'Pluvieux',
	'Brumeux',
	'Nuageux',
	'Ensoleillé'
);

$deltaTmeteo = 6*60;	// temps en minutes entre deux évolutions de la météo

function meteoSuivant ($actuel = '')
{
	global $meteo;
	if ($actuel == '')
		return mt_rand (0, sizeof($meteo) - 1);
	
	$prob = array();	// tableau de probabilités
	$tot = 0;		// fonction de partition de $prob
	foreach ($meteo AS $key => $value)
	{
		// ça bouge, mais préférentiellement ça bouge de 1 seul cran dans le tableau des météos
		$prob[$key] = 1;
		if ((abs($key-$actuel) == 1) || (abs(abs($key-$actuel) - sizeof($meteo) ) == 1))
			$prob[$key] = max(1, round(sizeof($meteo)*2/3));
		$tot += $prob[$key];
	}
	$choix = mt_rand(1,$tot);
	$subtot = 0;
	for ($i=0; $i<sizeof($prob); $i++)
	{
		$subtot += $prob[$i];
		if ($choix <= $subtot)
			return $i;
	}
}

?>