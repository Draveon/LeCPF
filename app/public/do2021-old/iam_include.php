<?
function return_iam($nom, $mode='etat')
{
	$serveur = (!isset($_SESSION['serveur'])) ? 1 : $_SESSION['serveur'];
	/* 3 modes possibles, correspondant à des utilisations diverses
	 * description : ETAT ( DESCRIPTION ) 	creatures.php
	 * etat : ETAT				espionnage.php
	 * modificateur : MODIFICATEUR		combat/creature_def.php
	 * temps restant : TEMPSRESTANT		espionnage.php, créatures.php		temps restant avant descente de l'indice. Si négatif, c'est que c'est IAM nul
	 */
	//	MODIFICATEUR	ETAT		DESCRIPTION
	$iam_indice = array(
		array(1,	'Excellent',	'Vos troupes semblent dans une forme impeccable !',	''),
		array(0.8,	'<a href="combat.php"><font color="red">Bon &#9876</font></a>',		'Vos troupes semblent en bonne forme !'),
		array(0.6,	'<a href="combat.php"><font color="red">Passable &#9876</font></a>', 	'L\'état de vos troupes est passable, sans plus.'),
		array(0.4,	'<a href="combat.php"><font color="red">Médiocre &#9876</font></a>',	'Vos troupes semblent négligées...'),
		array(0.2,	'<a href="combat.php"><font color="red">Nul &#9876</font></a>',		'Le moral de vos troupes est lamentable...')
	);
	
	// ce bout de code compare le temps depuis la dernière attaque ($indice) avec le seuil d'excellence ($seuil; durée pendant laquelle l'IAM est excellent)
	$temps= floor(time()/60);
	include("temps_ecoulement.php");
	
	$sql  = "SELECT indice_militaire, cha, xp FROM joueurs_stats WHERE nom = '$nom'";
	$req  = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$dat  = mysql_fetch_row($req);
	$sql2 = "SELECT victoire, défaite FROM joueurs_bonus WHERE nom = '$nom'";
	$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
	$comb = mysql_fetch_row($req2);

	$indice    = $temps - $dat[0];
	$tcharisme = pow((max($dat[1], 0)/60),0.756471);			// le charisme augmente le temps d'excellence (pas linéaire): 25 -> 0.52, 150 -> 2
	
	$seuil = 3 + $tcharisme;				// seuil d'excellence, en jours
	$seuil = $seuil;

	// on se repère dans le tableau donné au début	
	$z = 0;
	if ($indice >=($seuil+6)*$duree_jour)	{ $z = 4; $restant = -1; }
	if ($indice < ($seuil+6)*$duree_jour)	{ $z = 3; $restant = (($seuil+6)*$duree_jour - $indice); }
	if ($indice < ($seuil+4)*$duree_jour)	{ $z = 2; $restant = (($seuil+4)*$duree_jour - $indice); }
	if ($indice < ($seuil+2)*$duree_jour)	{ $z = 1; $restant = (($seuil+2)*$duree_jour - $indice); }
	if ($indice <  $seuil   *$duree_jour)	{ $z = 0; $restant = (($seuil+0)*$duree_jour - $indice); }
	
	// les différents formats de sortie possibles pour l'IAM
	if ($mode=='description')	return '<h4>'.$iam_indice[$z][1].'</h4>';
	if ($mode=='etat')		return $iam_indice[$z][1];
	if ($mode=='modificateur')	return $iam_indice[$z][0];
	
	// si on veut le temps restant avant la descente de l'indice
	$reste = '';
	if ($restant==-1)
		$reste = 'Le moral est à son plus bas';
	else
	{
		$j = floor( $restant /60  /24);
		$h = floor(($restant /60) %24);	
		$m = floor( $restant %60 );
		if ($j != 0)
			$reste = $j.' jours, ';
		if ($h != 0)
			$reste.= $h.' heures, ';
		$reste.= $m.' minutes';
	}
	if ($mode=='tempsrestant')	return $reste;
	
	// si on arrive la c'est qu'il y a un problème, ça devrait pas arriver! Mais au pire on renvoie l'IAM 0.8, 0.6, etc.
	return $iam_indice[$z][0];
}
?>