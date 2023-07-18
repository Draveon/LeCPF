<?php

include ("temps_ecoulement.php");
// $duree_jour = 1440 / 1;
////////////////////////////////////////////////////////////
// épurer les archives datant de plus de 24 heures
function epuration_combat_joueurs($joueur)
{
	global $duree_jour;

	$hier = (time()/60) - $duree_jour * 4;       // $hier = instant présent - 24 heures

	// suppression des archives des combats menés par le joueur, datant de plus de 24 heures
	$sql = 'DELETE FROM combat_joueurs WHERE temps < '.$hier.' AND (attaquant = "'.$joueur.'" OR defendant = "'.$joueur.'")';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

}


////////////////////////////////////////////////////////////
// remise à zéro des attaques menées datant de plus de 24 heures
// la fonction retourne l'instant de la plus ancienne attaque restante (=0 s'il n'y en a pas)
function epuration_joueurs_combat($joueur)
{
	global $duree_jour;

	$hier = (time()/60) - $duree_jour;       // $hier = instant présent - 24 heures
	$t_next = 99999999;

	// sélection des combats menés par le joueur
	// cinq champs :  `1`, `2`, `3`, `4` et `5`, contenant chacun l'instant d'une attaque (ou zéro)
	$sql = 'SELECT * FROM joueurs_combat WHERE nom = "'.$joueur.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_array($req);

	// les attaques datant de plus de 24 heures sont supprimées (champs remis à zéro)
	for($i=1; $i<6; $i++)     // on boucle sur les 5 champs correspondant aux attaques
	{
		$t_att = $data["$i"];                  // $t_att = instant de l'attaque numéro $i
		if ($t_att != 0 AND $t_att < $hier)    // si cet instant est renseigné et vieux de plus de 24 heures,
		{                                      // on le remet à zéro
			$sql = 'UPDATE `joueurs_combat` SET `'.$i.'` = "0" WHERE nom = "'.$joueur.'"';
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$t_att = 0;
		}
		if ( ($t_att > 0) and ($t_att < $t_next) )
		{
			$t_next = $t_att;
		}
	}
	if ($t_next == 99999999) {$t_next = 0;}
	return $t_next;
}

// suppression des archives des combats menés par le joueur, datant de plus de 48 heures
function purge_combats($attaquant) {
	global $duree_jour;
	$purge_48 = (time()/60) - $duree_jour * 2;

	$sql = 'DELETE FROM combat_joueurs WHERE temps < '.$purge_48.' AND (attaquant = "'.$joueur.'" OR defendant = "'.$joueur.'")';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

////////////////////////////////////////////////////////////
// déterminer si un joueur a déjà attaqué 5 fois
// retourne 5 si oui, 0 sinon
function attaque_possible_5($attaquant)
{
	global $duree_jour;
	// purge_combats($attaquant);
	$hier = round((time()/60) - $duree_jour);       // $hier = instant présent - 24 heures

	$sql = 'SELECT *
		FROM combat_joueurs
		WHERE attaquant = "'.$attaquant.'"
		AND temps > '.$hier.'
		AND victoire != "Foire"
		AND victoire != "Espionnage"
		AND victoire != "Inventaire"
		AND victoire != "artisanat"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nb_att = mysql_num_rows($req);
	if ($nb_att > 4)
		return 5;
	// si on arrive là, l'attaque est possible
	return 0;
}


////////////////////////////////////////////////////////////
// déterminer si un joueur a déjà attaqué un autre joueur
// retourne 2 si oui, 0 sinon
function attaque_possible_2($attaquant, $defendant)
{

	// la table combat_joueurs doit avoir été épurée auparavant
	$sql1 = 'SELECT *
		FROM combat_joueurs
		WHERE attaquant = "'.$attaquant.'"
		AND defendant = "'.$defendant.'"
		AND victoire != "Foire"
		AND victoire != "Espionnage"';
	$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
	$nb_att = mysql_num_rows($req1);
	if ($nb_att > 0)
		return 2;

	// si on arrive là, l'attaque est possible
	return 0;

}


////////////////////////////////////////////////////////////
// déterminer si un joueur peut être attaqué (pas immunisé)
// retourne 1 si oui, 0 sinon
/*
function attaque_impossible_pasdarmeeenface($defendant)
{
	/* Tentative de Draveon pour contrer le "bug" du malus de 100% en cas d'attaque sur un gonz qui n'a pas de créature *//*
	$req = mysql_query("SELECT * FROM joueurs_modificateurs WHERE `nom` = '$defendant'") or die('Erreur SQL !<br>'.mysql_error());
	$bonus_raz07_def = mysql_fetch_assoc($req);
	$pvstotal_def = $bonus_raz07_def['pvstotal'];    // utile pour savoir si le défenseur a des créatures ou pas
	if $pvstotal_def != 0 {
		return $pvstotal_def;
	}
}
*/
////////////////////////////////////////////////////////////
// déterminer si un joueur peut être attaqué (pas immunisé)
// retourne 1 si oui, 0 sinon
function attaque_possible_immune($defendant)
{

	global $temps;
	$req = mysql_query("SELECT `affaibli` FROM joueurs_combat WHERE `nom` = '$defendant'") or die ('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
	$data = mysql_fetch_array($req);
	$result = $temps > $data[0];
	return $result;

}


////////////////////////////////////////////////////////////
// déterminer si 2 joueurs peuvent s'attaquer (pas de trop grosse différence de lvl)
// retourne 1 si oui, 0 sinon
function attaque_possible_lvl($joueur1, $joueur2)
{
	$req = mysql_query("SELECT `niveau` FROM joueurs_stats WHERE `nom` IN ('$joueur1', '$joueur2') ORDER BY `niveau` DESC") or die ('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau1 = $data[0];
	$data = mysql_fetch_row($req);
	$niveau2 = $data[0];
	$multiplicateur = ($niveau2 == 1) ? 6 : (($niveau2 == 2) ? 3 : 2);
	$result = $niveau1 <= $multiplicateur * $niveau2 ? 1 : 0;
	return $result;
}


////////////////////////////////////////////////////////////
// déterminer si une attaque est possible
// retourne 0 si possible,
//          5 si 5 attaques menées par $attaquant,
//          2 si $defendant attaqué 2 fois par $attaquant,
//          1 si la cible est immunisée
function attaque_possible($attaquant, $defendant)
{

	// Le joueur a-t-il déjà attaqué 5 fois ces dernières 24 heures ?
	//   la table combat_joueurs a été épurée des vieilles archives dans choix_cible.inc
	if (attaque_possible_5($attaquant) == 5)
		return 5;

	// Le joueur a-t-il déjà attaqué cette cible 2 fois ces dernières 24 heures ?
	if (attaque_possible_2($attaquant, $defendant) == 2)
		return 2;


	// La cible est-elle immunisée?
	if (attaque_possible_immune($defendant) == 0)
		return 1;

	// Les joueurs ont-ils une différence de niveau trop élevée?
	if (attaque_possible_lvl($attaquant, $defendant) == 0)
		return 10;

	// si on arrive là, l'attaque est possible
	return 0;

}


////////////////////////////////////////////////////////////




// fonction qui colorie un joueur dans la liste des cibles combat/espionnage
function colorie ($cible, $guilde2)
{
	global $nom, $guilde, $commentaire, $temps;


	// code couleur pour les gens impossible à attaquer
	$colordefaut  = '#000000';
	$colorImpTous = '#007000';
	$colorImpSeul = '#00C000';
	$colorOk      = '#000000';
	$colorquete   = '#660033';
	$colorprime	  = '#FF0000';
	$colorquetegentil = '#8A46FF';
	$colorDiffLvl = '#FF6600';

	// le petit message eplicatif au fond
	if ($cible == 'petitmessageexplicatifaufond')
		return 'Les joueurs apparaissant en <font color="'.$colorImpTous.'">vert sombre</font> ne sont pas attaquables car ils ont récemment mené un combat éprouvant. Ceux en <font color="'.$colorImpSeul.'">vert clair</font> ne sont pas attaquables par vous car vous les avez déjà attaqué dans les dernières 48h. Ceux en <font color="'.$colorDiffLvl.'">orange</font> ne sont pas attaquables par vous car la différence de niveau est trop importante.<br>Les cibles en <font color="'.$colorprime.'">rouge</font> ont une prime sur elles !';

	// Si le joueur a une prime sur lui il est affiché en rouge
	$sqlmise = "SELECT COUNT(id) FROM mise_a_prix WHERE `cible` = '$cible' AND `termine` = 0 AND `tempsactif` <= $temps";
	$reqmise = mysql_query($sqlmise) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($reqmise);
	if ($data[0] > 0)
		$prime = 1;




	$font = $colordefaut;
	$disabled = false;
	$suppinfobulle = '';

	// Comptes animation hostiles
	$pnjhostile = array("Monstres", "Kraken");
	$pnjneutre = array("Cartos", "Valiard");

	if ($prime == 1) {
		$font = $colorprime;
	} else if (in_array($cible, $pnjhostile)) {
		$font = $colorquete;
	} else if (in_array($cible, $pnjneutre)) {
		$font = $colorquetegentil;
	} else if (attaque_possible_2($nom, $cible) != 0) {
		$disabled = true;
		$font = $colorImpSeul;
	} else if (attaque_possible_immune($cible) == 0) {
		$disabled = true;
		$font = $colorImpTous;
	} else if (attaque_possible_lvl($nom, $cible) == 0) {
		$disabled = true;
		$font = $colorDiffLvl;
	}
	return array($font, $disabled, $suppinfobulle);
}






// fonction affiche un joueur dans la liste des cibles combat/espionnables
function affiche_joueur($data, $page, $limite = 0)
{
	global $nom, $temps, $type, $serveur, $colspan;

	$cible = $data[2];
	$race2 = $data[3];
	$classe2 = $data[4];
	$titre2 = $data[6];
	$royaume2 = $data[7];
	$puissance2 = $data[8];

	$req1 = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
	$data1 = mysql_fetch_row($req1);
	$niv2 = $data1[0];
	$req2 = mysql_query("SELECT province, guilde, victoire, défaite FROM joueurs_bonus WHERE nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
	$data2 = mysql_fetch_row($req2);


	$province2 = $data2[0];
	$guilde2   = $data2[1];
	$victoire  = $data2[2];
	$defaite   = $data2[3];
	$req3 = mysql_query("SELECT avatar FROM joueurs_heros WHERE nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
	$data3 = mysql_fetch_row($req3);
	$avatar = $data3[0];

	$font = colorie ($cible, $faction2);
	$color		= $font[0];
	$disabled	= $font[1];
	$suppinfobulle	= $font[2];

	if ($page == 'espionnage') {
		$disabled = false;
	} else if (!$disabled) {
		if ($page == 'combat_up') {
			$disabled = ($puissance2 < 2500 || $puissance2 > $limite);
		} else if ($page == 'combat_down') {
			$disabled = ($puissance2 < 2500 || $puissance2 < $limite);
		}
	}

	echo '<tr class="rollovercolor" style="color: '.$color.';">
		<td>';
		if (!$disabled) {
			echo '<input type="radio" name="cible" value="'.$cible.'">';
		}
		echo '</td>
		<td style="text-align: left;"  ><a href="#" class="info" onmouseover="afficheinfobulle(\''.$cible.'\');" style="color: '.$color.';">'.$cible.', '.$titre2.' '.$royaume2.'<span id="'.$cible.'" style="text-align:center;"><b>'.$cible.'</b><br><img src="'.$avatar.'" width="70px" height="70px" border=1><br>Titre : '.$titre2.'<br>Combats: '.($victoire+$defaite).$suppinfobulle.'</span></a></td>
		<td style="text-align: left;"  >'.$race2	.'</td>
		<td style="text-align: left;"  >'.$classe2	.'</td>
		<td style="text-align: center;">'.$niv2		.'</td>
		<td style="text-align: left;" >'.$province2	.'</td>
		<td style="text-align: right;" >'.number_format($puissance2, 0, ",", ",")	.'</td></tr>
	<tr>	<td></td>
		<td colspan="'.($colspan-1).'" class="hline"></td></tr>';
}


function ecritstatsjoueurs ($debut = true)
{
	// écrit nom race classe dieu province guilde niveau nbr_combat puissance pour attaquant/défenseur, avant/après les rapports de combat
	global $message, $message1, $nom, $cible;

	include("classement_cache.php");
	$jmasques = (strlen($jmasques)>0) ? 'AND '.$jmasques : '';
	$message1 .= '<center>';
	$message  .= '<center>';

	if ($debut)
	{
		echo 'Attaque de '.html_entity_decode($nom).' sur '.html_entity_decode($cible).'.<br>';
		$message1.= 'Attaque de '.html_entity_decode($nom).' sur '.html_entity_decode($cible).'<br /><br />';
		$message .= 'Attaque de '.html_entity_decode($nom).' sur '.html_entity_decode($cible).'<br /><br />';
	}
	for ($p=1; $p>=0; $p--)   // boucle sur les joueurs, d'abord l'attaquant, puis la cible
	{
		if ($p == 0)	$joueur = $cible;
		else		$joueur = $nom;

		$req = mysql_query("SELECT joueurs_stats.niveau, joueurs_stats.puissance, joueurs_heros.race, joueurs_heros.classe, joueurs_heros.dieu, joueurs_heros.titre, joueurs_heros.royaume, (joueurs_bonus.victoire + joueurs_bonus.défaite) AS `combats`, joueurs_bonus.guilde
			FROM joueurs_stats
			INNER JOIN joueurs_heros ON joueurs_heros.nom = joueurs_stats.nom
			INNER JOIN joueurs_bonus ON joueurs_bonus.nom = joueurs_stats.nom
			WHERE joueurs_stats.nom = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
		$jdata = mysql_fetch_assoc($req);

		$sql = "SELECT (COUNT(id)+1) AS rang FROM joueurs_stats WHERE puissance > '".$jdata['puissance']."' $jmasques";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$rang = mysql_fetch_row($req);

		echo 		html_entity_decode($joueur).', '.$jdata['titre'].' '.html_entity_decode($jdata['royaume']).', '.$jdata['race'].' '.$jdata['classe'].', '.$jdata['dieu'].', '.$jdata['combats'].' combats, niveau '.$jdata['niveau'].', puissance '.number_format($jdata['puissance'], 0, ",", ",").' ('.$rang[0].")<br>\n";
		$message1.= 	html_entity_decode($joueur).', '.$jdata['titre'].' '.html_entity_decode($jdata['royaume']).', '.$jdata['race'].' '.$jdata['classe'].', '.$jdata['dieu'].', '.$jdata['combats'].' combats, niveau '.$jdata['niveau'].', puissance '.number_format($jdata['puissance'], 0, ",", ",").' ('.$rang[0].")<br />";
		$message .= 	html_entity_decode($joueur).', '.$jdata['titre'].' '.html_entity_decode($jdata['royaume']).', '.$jdata['race'].' '.$jdata['classe'].', '.$jdata['dieu'].', '.$jdata['combats'].' combats, niveau '.$jdata['niveau'].', puissance '.number_format($jdata['puissance'], 0, ",", ",").' ('.$rang[0].")<br />";

	}
	$message1.= "</center><br /><br />";
	$message .= "</center><br /><br />";
}

// utile pour le sort spécial de voleur: savoir si le joueur possède un objet dans l'inventaire
function possedeobjetinventaire ($joueur)
{
	$n = 0;
	$sql = "SELECT * FROM joueurs_objets WHERE nom = '$joueur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	if ($data = mysql_fetch_array($req))
	{
		for ($i=1; $i<17; $i++)
		{
			if ($data[$i] != '0')
				$n++;
		}
	}
	return $n;
}

// détermine si le stack doit compter dans les tests pour la retraite ou non
function stackCompteDansRetraite ($i)
{
	global $a_min, $a_max, $a_id, $creas_invoc_liste;

	if (	($a_min[$i] != 0) AND	($a_max[$i] != 0) AND	// réalité parallèle
		(!in_array($a_id[$i], $creas_invoc_liste)) )	// esclavagisme, portail infernal, morts-animés
	{
		return true;
	} else {
		return false;
	}
}


// choisit un stack dans la liste avec une probabilité proportionelle aux points de vie
function chooseStacksWithPVProbability ($min, $max, $numberToSelect=1, $type_crea='tous')
{
	global $a_id, $a_pvstotal, $a_qte, $a_vol;
	// construction des tableaus nécessaires au tirage au sort pondéré
	$vict = array();
	$victt = array();
	$prob = array();
	$pvTot = 0;
	for ($s = $min; $s < $max; $s++)
	{
		if ( ($a_pvstotal[$s] > 0) AND ($a_qte[$s] > 0) )
		{
			if ($type_crea == 'tous' || ($type_crea == 'sol' AND $a_vol[$s] < 1) || ($type_crea == 'vol' AND $a_vol[$s] > 0)) {
				$victt[] = $s;
				$prob[] = $a_pvstotal[$s];
				$pvTot += $a_pvstotal[$s];
			}
		}
	}
	// choix des stacks
	$numberToSelect = min($numberToSelect, sizeof($victt));	// on veut pas sélectionner plus de stacks qu'il en existe
	while ((sizeof($vict) < $numberToSelect))
	{
		$choice = mt_rand(1,$pvTot);
		$probCumul = 0;
		foreach ($prob AS $key => $probInst)
		{
			$probCumul += $probInst;
			if ($choice < $probCumul)
			{
				$vict[] = $victt[$key];

				$pvTot -= $victt[$key];
				array_splice($victt, $key, 1);
				array_splice($prob, $key, 1);
				break;
			}
		}
	}
	return $vict;
}

// Ordonne par niveau croissant
function sortByLevel($crea_list) {
	global $a_niv;
	$crea_list_sorted = array();
	for ($i = 1; $i <= 6; $i++) {
		foreach ($crea_list as $key => $value) {
			$niveau_tri = $a_niv[$value];
			if ($niveau_tri == $i) {
				$crea_list_sorted[] = $value;
			}
		}
	}
	return $crea_list_sorted;
}

// Détermine si un combat est affaiblissant ou non. Un combat est affaiblissant pour l'attaquant si il engage une armée de taille suffisante par rapport à son adversaire
// avec au moins 40% de retrait et qu'il attaque un adversaire d'au moins la moitié de son niveau,
// et pour le défenseur si son attaquant a une armée d'au moins 50% la sienne en terme de puissance
function isCombatAffaiblissant($attaquant, $pvs_att, $niv_att, $retrait_att, $defenseur, $pvs_def, $niv_def) {
	$aff_att = $aff_def = 0;
	$pui_armee_att = (1 + 0.05 * $niv_att) * $pvs_att;
	$pui_armee_def = (1 + 0.05 * $niv_def) * $pvs_def;
	if ($retrait_att <= 60 && $niv_def >= ($niv_att / 2) && ($pui_armee_att / $pui_armee_def > 2/3) && ($pui_armee_def / $pui_armee_att > 2/3)) {
		$aff_att = 1;
	}
	if ($pui_armee_att / (1 + $pui_armee_def) > 2/3) {
		$aff_def = 1;
	}
	return array($aff_att, $aff_def);
}

?>
