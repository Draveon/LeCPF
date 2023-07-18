<?php

// Contrôle mental (attaquant)
$pct_controle = 0.15;
if ($controle_mental)
{
	$vict = array();
	for ($s = $milieu; $s < $z; $s++)
	{
		$pvs = $a_pvstotal[$s];
		$qte = $a_qte[$s];
		if ($pvs > 0 AND $qte > 0)
			$vict[] = $s;
	}
	$c = count($vict);
	if ($c != 0)
	{
		// On trie les créatures par level croissant
		$vict = sortByLevel($vict);
		$controle_pvs = round($pvscourant_def * $pct_controle);
		$stack_controle = 0;
		$texte = '';
		$pvs_perdus = 0;
		while ($controle_pvs > 0 && $total_def > 0) {
			$v = $vict[$stack_controle];
			$nom1 = $a_id[$v];
			if ($a_pvstotal[$v] > $controle_pvs)
			{
				$controle_nb_tues = floor($controle_pvs / $a_pvs[$v]);
				$a_qte[$v] -= $controle_nb_tues;
				$a_pvstotal[$v] -= $controle_nb_tues * $a_pvs[$v];
				$pvs_perdus += $controle_nb_tues * $a_pvs[$v];
				$controle_pvs = 0;
			}
			else
			{
				$pvs_perdus += $a_pvstotal[$v];
				$controle_pvs -= $a_pvstotal[$v];
				$controle_nb_tues = $a_qte[$v];
				$a_qte[$v] = 0;
				$a_pvstotal[$v] = 0;
				$total_def--;
			}
			$a_fui[$v] += $controle_nb_tues;
			$texte .= ', '.$controle_nb_tues.' '.$nom1;
			$gros_pvstotal_def -= $pvs_perdus;
			$pvscourant_def -= $pvs_perdus;
			$a_pvstotal_old[$v] -= $pvs_perdus;
			$stack_controle++;
		}
	}
	// message
	echo '<img src="images/sorts/controlemental.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort Contrôle Mental a été lancé avec succès :</b></span><br /> '.substr($texte,2).' refusent de prendre part au combat.<br />';
	$message1.= '<img src="images/sorts/controlemental.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort sort Contrôle Mental a été lancé avec succès :</b></span><br /> '.substr($texte,2).' refusent de prendre part au combat.<br />';
	$message .= '<img src="images/sorts/controlemental.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Contrôle Mental a été lancé avec succès :</b></span><br /> '.substr($texte,2).' refusent de prendre part au combat.<br />';
}

// Contrôle mental (défenseur)
if ($controle_mental2)
{
	$vict = array();
	for($s = 0; $s < $milieu; $s++)
	{
		$pvs = $a_pvstotal[$s];
		$qte = $a_qte[$s];
		if ($pvs > 0 AND $qte > 0)
			$vict[] = $s;
	}
	$c = count($vict);
	
	if ($c != 0)
	{
		// On trie les créatures par level croissant
		$vict = sortByLevel($vict);
		$controle_pvs = round($pvscourant_att * $pct_controle);
		$stack_controle = 0;
		$texte = '';
		$pvs_perdus = 0;
		while ($controle_pvs > 0 && $total_att > 0) {
			$v = $vict[$stack_controle];
			$nom1 = $a_id[$v];
			if ($a_pvstotal[$v] > $controle_pvs)
			{
				$controle_nb_tues = floor($controle_pvs / $a_pvs[$v]);
				$a_qte[$v] -= $controle_nb_tues;
				$a_pvstotal[$v] -= $controle_nb_tues * $a_pvs[$v];
				$pvs_perdus += $controle_nb_tues * $a_pvs[$v];
				$controle_pvs = 0;
			}
			else
			{
				$pvs_perdus += $a_pvstotal[$v];
				$controle_pvs -= $a_pvstotal[$v];
				$controle_nb_tues = $a_qte[$v];
				$a_qte[$v] = 0;
				$a_pvstotal[$v] = 0;
				$total_att--;
			}
			$a_fui[$v] += $controle_nb_tues;
			$texte .= ', '.$controle_nb_tues.' '.$nom1;
			$gros_pvstotal_att -= $pvs_perdus;
			$pvscourant_att -= $pvs_perdus;
			$a_pvstotal_old[$v] -= $pvs_perdus;
			$stack_controle++;
		}
	}
	// message
	echo '<img src="images/sorts/controlemental.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Contrôle Mental a été lancé avec succès :</b></span><br> '.substr($texte,2).' refusent de prendre part au combat.<br>';
	$message1.= '<img src="images/sorts/controlemental.gif" width="20px" height="20px" align="center" border=1><span style="color:#B31141;"><b> Le sort Contrôle Mental a été lancé avec succès :</b></span><br /> '.substr($texte,2).' refusent de prendre part au combat.<br />';
	$message .= '<img src="images/sorts/controlemental.gif" width="20px" height="20px" align="center" border=1><span style="color:#0D4573;"><b> Votre sort sort Contrôle Mental a été lancé avec succès :</b></span><br /> '.substr($texte,2).' refusent de prendre part au combat.<br />';
}

// APTITUDE ASSASSINAT DE L'ATTAQUANT
$partiel = '';
$assassinat_att = $apt_att['16'];
$x = mt_rand(0,1);
if ($assassinat_att > 0)
{
	// Effet à 100 = 6% de l'armée éliminée
	$pcts_ass = 0.06 * $assassinat_att / 100;
	if ($x == 0) {
		$pcts_ass /= 2;
		$partiel = ' (partiel)';
	}
	// On pondère le pourcentage par la différence de niveau si défavorable au déclencheur, pour éviter que l'apt ne perde de l'intérêt si on combat un level plus faible
	if ($niveau_att > $niveau_def) {
		$pcts_ass *= ((1 + 0.05 * $niveau_att) / (1 + 0.05 * $niveau_def));
	}
	$vict = array();
	for ($s = $milieu; $s < $z; $s++)
	{
		$pvs = $a_pvstotal[$s];
		$qte = $a_qte[$s];
		if ($pvs > 0 AND $qte > 0)
			$vict[] = $s;
	}
	$c = count($vict);
	if ($c != 0)
	{
		// On trie les créatures par level croissant
		$vict = sortByLevel($vict);
		$ass_pvs = min($pvstotal_att, $pvscourant_def) * $pcts_ass;
		// On limite la puissance de l'apti si utilisé avec une retraite faible
		$ass_pvs *= min(1, 0.25 * ((100 - $strategie_att) / 10));
		// Si on fait face à une armée avec plus de 3 stacks de level 3+, assassinat se déclenche au hasard sur l'un de ces 3 stacks.
		// Sinon, il se déclenche sur le stack de plus haut niveau.
		if ($c > 2){
			$lim_ass = $c - 4;
			$stack_lim_ass = $vict[$lim_ass];
			if ($a_niv[$stack_lim_ass] >= 3) {
				$rand_stack = mt_rand(0,2);
				$c = $c - $rand_stack;
			}
		}
		while ($c >= 0 && $ass_pvs > 0 && $total_def > 0) {
			$c--;
			$v = $vict[$c];
			$nom1 = $a_id[$v];
			if ($a_pvstotal[$v] > $ass_pvs)
			{
				$ass_nb_tues = floor($ass_pvs / $a_pvs[$v]);
				$a_qte[$v] -= $ass_nb_tues;
				$a_pvstotal[$v] -= $ass_nb_tues * $a_pvs[$v];
				$pvs_morts += $ass_nb_tues * $a_pvs[$v];
				$pvscourant_def -= $ass_nb_tues * $a_pvs[$v];
				$ass_pvs = 0;
				echo '<img src="/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Assassinat'.$partiel.' :</strong> Vous parvenez à éliminer '.$ass_nb_tues.' des '.$nom1.' de l\'ennemi !</small></span><br />';
				$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Assassinat'.$partiel.' :</strong> Vous parvenez à éliminer '.$ass_nb_tues.' des '.$nom1.' de l\'ennemi !</small></span><br />';
				$message .= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Assassinat'.$partiel.' :</strong> L\'ennemi parvient à éliminer '.$ass_nb_tues.' de vos '.$nom1.' !</small></span><br />';
			}
			else
			{
				$pvs_morts += $a_pvstotal[$v];
				$pvscourant_def -= $a_pvstotal[$v];
				$ass_pvs -= $a_pvstotal[$v];
				$ass_nb_tues = $a_qte[$v];
				$a_qte[$v] = 0;
				$a_pvstotal[$v] = 0;
				$total_def -= 1;
				echo '<img src="/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Assassinat'.$partiel.' :</strong> Vous parvenez à éliminer complètement les '.$ass_nb_tues.' '.$nom1.' de l\'ennemi !</small></span><br />';
				$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Assassinat'.$partiel.' :</strong> Vous parvenez à éliminer complètement les '.$ass_nb_tues.' '.$nom1.' de l\'ennemi !</small></span><br />';
				$message .= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Assassinat'.$partiel.' :</strong> L\'ennemi parvient à éliminer complètement vos '.$ass_nb_tues.' '.$nom1.' !</small></span><br />';
			}
		}
	}
}


// APTITUDE ASSASSINAT DE LA CIBLE
$partiel = '';
$assassinat_def = $apt_def['16'];
$x = mt_rand(0,1);
if ($assassinat_def > 0)
{
	$pcts_ass = 0.06 * $assassinat_def / 100;
	if ($x == 0) {
		$pcts_ass /= 2;
		$partiel = ' (partiel)';
	}
	// On pondère le pourcentage par la différence de niveau si défavorable au déclencheur, pour éviter que l'apt ne perde de l'intérêt si on combat un level plus faible
	if ($niveau_def > $niveau_att) {
		$pcts_ass *= ((1 + 0.05 * $niveau_def) / (1 + 0.05 * $niveau_att));
	}
	$vict = array();
	for($s = 0; $s < $milieu; $s++)
	{
		$pvs = $a_pvstotal[$s];
		$qte = $a_qte[$s];
		if ($pvs > 0 AND $qte > 0)
			$vict[] = $s;
	}
	$c = count($vict);
	if ($c != 0)
	{
		// On trie les créatures par level décroissant
		$vict = sortByLevel($vict);
		// On assassine 8% de ses pvs dans la limite de 8% des pvs adverses
		$ass_pvs = min($pvscourant_att, $pvstotal_def) * $pcts_ass;
		// On limite la puissance de l'apti si utilisé avec une retraite faible
		$ass_pvs *= min(1, 0.25 * ((100 - $strategie_def) / 10));
		// Si on fait face à une armée avec plus de 3 stacks de level 3+, assassinat se déclenche au hasard sur l'un de ces 3 stacks.
		// Sinon, il se déclenche sur le stack de plus haut niveau.
		if ($c > 2){
			$lim_ass = $c - 4;
			$stack_lim_ass = $vict[$lim_ass];
			if ($a_niv[$stack_lim_ass] >= 3) {
				$rand_stack = mt_rand(0,2);
				$c = $c - $rand_stack;
			}
		}
		while ($c >= 0 && $ass_pvs > 0 && $total_att > 0) {
			$c--;
			$v = $vict[$c];
			$nom1 = $a_id[$v];
			if ($a_pvstotal[$v] > $ass_pvs)
			{
				$ass_nb_tues = floor($ass_pvs / $a_pvs[$v]);
				$a_qte[$v] -= $ass_nb_tues;
				$a_pvstotal[$v] -= $ass_nb_tues * $a_pvs[$v];
				$pvs_morts += $ass_nb_tues * $a_pvs[$v];
				$pvscourant_att -= $ass_nb_tues * $a_pvs[$v];
				$ass_pvs = 0;
				echo '<img src="/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Assassinat'.$partiel.' :</strong> L\'ennemi parvient à éliminer '.$ass_nb_tues.' de vos '.$nom1.' !</small></span><br />';
				$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Assassinat'.$partiel.' :</strong> L\'ennemi parvient à éliminer '.$ass_nb_tues.' de vos '.$nom1.' !</small></span><br />';
				$message .= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Assassinat'.$partiel.' :</strong> Vous parvenez à éliminer '.$ass_nb_tues.' des '.$nom1.' de l\'ennemi !</small></span><br />';
			}
			else
			{
				$pvs_morts += $a_pvstotal[$v];
				$pvscourant_att -= $a_pvstotal[$v];
				$ass_pvs -= $a_pvstotal[$v];
				$ass_nb_tues = $a_qte[$v];
				$a_qte[$v] = 0;
				$a_pvstotal[$v] = 0;
				$total_att -= 1;
				echo '<img src="/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Assassinat'.$partiel.' :</strong> L\'ennemi parvient à éliminer complètement vos '.$ass_nb_tues.' '.$nom1.' !</small></span><br>';
				$message1.= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#B31141;"><small><strong> Assassinat'.$partiel.' :</strong> L\'ennemi parvient à éliminer complètement vos '.$ass_nb_tues.' '.$nom1.' !</small></span><br />';
				$message .= '<img src="http://www.destinee-online.com/images/aptitudes/assassinat.gif" width="20px" height="30px" border=1 align="center"><span style="color:#0D4573;"><small><strong> Assassinat'.$partiel.' :</strong> Vous parvenez à éliminer complètement les '.$ass_nb_tues.' '.$nom1.' de l\'ennemi !</small></span><br />';
			}
		}
	}
}



?>