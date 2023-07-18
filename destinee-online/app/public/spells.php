<?php
$etat_sort = (isset($_POST['Etat_Sort'])) ? mysql_real_escape_string($_POST['Etat_Sort']) : '';
$dissiper  = (isset($_POST['dissiper']))  ? mysql_real_escape_string($_POST['dissiper'])  : 1;

// récup des données de base
$req = mysql_query("SELECT * FROM joueurs_magies WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$jmagies = mysql_fetch_assoc($req);
$req = mysql_query("SELECT * FROM joueurs_sorts  WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$jsorts = mysql_fetch_assoc($req);

// Focus Mental
$req = mysql_query("SELECT `11` FROM joueurs_aptitudes WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$focus_mental = mysql_fetch_assoc($req);
$focus_mental = $focus_mental['11'];
if ($focus_mental > 0) {
	$req = mysql_query("SELECT `focusmental`, `focusmodifiable` FROM joueurs_aptitudes_base WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data_fm = mysql_fetch_assoc($req);
	$valeur_fm = $data_fm['focusmental'];
	$focus_modifiable = $data_fm['focusmodifiable'];
}

// Conso mana province
$req = mysql_query('SELECT province FROM joueurs_bonus WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$req = mysql_query("SELECT `politiques_effets`.`magie` FROM politiques_effets INNER JOIN provinces_politiques ON provinces_politiques.`politique1` = politiques_effets.`politique` WHERE provinces_politiques.`Province` = '$province'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$conso_mana_prov = 1 + (1 - $data['magie']);
$req = mysql_query("SELECT `niveau` FROM batiment_province WHERE `nom` = 'Académie de magie' AND `province` = '$province'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$conso_mana_prov -= $data[0] / 100;

// si ya des changements d'incantation des sorts
if ($dissiper == 2)
{
	foreach ($jsorts AS $nbr => $idsort)
	{
		if (((is_numeric($nbr))&&($idsort>0)) && (isset($_POST[$idsort])))	// si le sort est connu et que le forumlaire a envoyé une infomation a propos du sort
		{
			if ((($_POST[$idsort] == "Incanter")||($etat_sort == "Incantertout")) && ($etat_sort != "Dissipertout"))
			{
				$jmagies[$idsort] = 1;
				$req = mysql_query("UPDATE `joueurs_magies` SET `".$idsort."` = '1' WHERE `nom` = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			}
			else if (($_POST[$idsort] == "Dissiper")||($etat_sort == "Dissipertout"))
			{
				$jmagies[$idsort] = 0;
				$req = mysql_query( "UPDATE `joueurs_magies` SET `".$idsort."` = '0' WHERE `nom` = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
			}
		}
	}
	// Focus mental
	if (isset($_POST['fm_radio']) && ($_POST['fm_radio'] != $valeur_fm)) {
		$valeur_fm = $_POST['fm_radio'];
		$focus_modifiable = 0;
		$req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `focusmental` = '".$valeur_fm."', `focusmodifiable` = 0 WHERE `nom` = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	}
	$dissiper = 1;
}
// fin de modification des incantations

// vérification qu'aucun sort n'est incanté alors qu'il ne devrait pas.
$out = '';
foreach ($jmagies AS $id => $incant)
{
	if ((is_numeric($id))&&($incant!=0))
	{
		// si incanté, on vérifie qu'il est connu
		$flag = false;
		foreach ($jsorts AS $nbr => $idsort)
			if (((is_numeric($nbr))&&($idsort!=0)) && ($id==$idsort))
				$flag = true;

		if ($flag == false)				// cheat probable, toujours est-il qu'il faut corriger
		{
			$jmagies[$id] = 0;
			mysql_query("UPDATE joueurs_magies SET `".$id."` = '0' WHERE nom = '$nom' LIMIT 1") or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

			$reqsort = mysql_query("SELECT nom FROM magies_liste WHERE id = '".$id."' LIMIT 1") or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$datsort = mysql_fetch_row($reqsort);	// nom du sort
			$out.= $nom.'	:	'.$datsort[0].'	est incanté alors qu\'il n\'est pas connu. Tricheur de pacotille!<br>';
		}
	}
}
// Vérification que le joueur connait bien le sort augmenté par focus mental, sinon on rend forcément le choix possible
foreach ($jsorts AS $nbr => $idsort) {
	if ($valeur_fm == $idsort) {
		$focus_ok = 1;
	}
}
if (!$focus_ok)
	$focus_modifiable = 1;
if ($out != '')
	echo $out;
// fin vérifications


// début de l'affichage
$req = mysql_query("SELECT mana_consommation, cailloux_consommation, effets_elem_def, feu_def, eau_def, terre_def, air_def, elec_def FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$jmodific = mysql_fetch_assoc($req);
$req = mysql_query("SELECT argent AS `coutor`, mana AS `coutmana`, soufre, mercure, gemme, cristal, niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$ressources = mysql_fetch_assoc($req);

$couttotal= array('coutor' => 0, 'coutmana' => 0, 'soufre' => 0, 'gemme' => 0, 'cristal' => 0, 'mercure' => 0);

$req = mysql_query("SELECT * FROM magies_liste LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
$effettotal = mysql_fetch_assoc($req);
foreach ($effettotal AS $type => $value)
	if (is_numeric($value))
		$effettotal[$type] = 0;
$effettotaladv = $effettotal;

// total de sorts connus
$total = 0;
foreach ($jsorts AS $nbr => $idsort)
	if ((is_numeric($nbr))&&($idsort!=0))
		$total ++;

if ($total != 0)
{
  ?>
<div class="col-md-12">
  <form method="post" action="Sort.php">
	<table border="0" cellspacing="2" cellpadding="0" style="width: 630px; vertical-align: center; text-align: left;"><tbody>
	<tr>	<td colspan="7"><h2>La bibliothèque de magie</h2></td></tr>
	<tr>	<td></td>
		<td class="cl_entete">Sort</td>
		<td class="cl_entete" style="width:10%;">Niveau</td>
		<td class="cl_entete" style="width:10%;">Type</td>
		<td class="cl_entete" style="width:13%;">Élément</td>
		<td class="cl_entete" style="width:17%;">Sort Incanté</td>
		<td class="cl_entete" style="width:17%;">Sort Dissipé</td>';
    <?php
	if ($focus_mental > 0) {
		echo '<td class="cl_entete" style="width:17%;">Augmenté</td>';
	} else {
		echo '<td></td>';
	}
	echo '</tr>
	<tr>	<td></td>
		<td colspan="7" class="hline"></td></tr>';

	// pour tenir compte de l'effet de mélopée ancestrale
	$spe_enchanteur = false;
	if ($jmagies[22] == 1)
	{
		$spe_enchanteur = true;
		$jmodific['effets_elem_def'] += 20 / 100;
		$effettotal['effets_elem_def'] += 20 / 100;
		$effettotal['degat_elem'] += 20 / 100;
	}


	$totincant = 0;
	foreach ($jsorts AS $nbr => $idsort)
	{
		if ((is_numeric($nbr))&&($idsort!=0))		// si le joueur connait le Xième sort de sa bibliothèque
		{
			$facteur_fm = 1;
			$checked_incante = '';
			$checked_dissipe = '';
			if ($jmagies[$idsort] > 0)	$checked_incante = ' checked="true"';
			else				$checked_dissipe = ' checked="true"';

			$req = mysql_query("SELECT * FROM magies_liste WHERE id = '".$idsort."'") or die('Erreur SQL !<br>'.mysql_error());
			$datasort = mysql_fetch_assoc($req);
			if ($datasort['coutmana'] > 0)
				$datasort['coutmana'] *= $jmodific['mana_consommation'] * $conso_mana_prov;	// on tient compte du modificateur de conso de mana
			if (($spe_enchanteur) && ($datasort['coutmana'] > 0) && ($idsort!=22) && ($datasort['prioritaire']<2))
				$datasort['coutmana'] = max(0, $datasort['coutmana']-400);
			$datasort['soufre'] *= $jmodific['cailloux_consommation'];
			$datasort['mercure']*= $jmodific['cailloux_consommation'];
			$datasort['cristal']*= $jmodific['cailloux_consommation'];
			$datasort['gemme']  *= $jmodific['cailloux_consommation'];

			echo '<tr class="rollovercolor">
				<td class="tdlef" style="width:1px;"><a href="info_sorts.php?sort='.$datasort['id'].'&prec=incanter" onclick="NewWindow(this.href,\'name\',\'520\',\'350\',\'yes\');return false">
					<img src="'.$datasort['image'].'" width="30" height="30" alt="'.$datasort['nom'].'" title="'.$datasort['nom'].'" border="1"></a></td>
				<td class="tdlef"><a href="info_sorts.php?sort='.$datasort['id'].'&prec=incanter" onclick="NewWindow(this.href,\'name\',\'520\',\'350\',\'yes\');return false">'.$datasort['nom'].'</a></td>
				<td>'.$datasort['niveau'].'</td>
				<td>'.$datasort['type'].'</td>
				<td>'.$datasort['élément'].'</td>
				<td><input type="radio" name="'.$idsort.'" value="Incanter"'.$checked_incante.'></td>
				<td><input type="radio" name="'.$idsort.'" value="Dissiper"'.$checked_dissipe.'></td>';
			if ($focus_mental > 0) {
				$disabled_fm = $focus_modifiable ? '' : 'disabled="disabled"';
				if ($idsort == $valeur_fm) {
					echo '<td><input type="radio" name="fm_radio" value="'.$idsort.'" checked="true" '.$disabled_fm.'></td>';
				} else if ($datasort['victime'] != "Spécial") {
					echo '<td><input type="radio" name="fm_radio" value="'.$idsort.'" '.$disabled_fm.'></td>';
				} else {
					echo '<td></td>';
				}
			} else {
				echo '<td></td>';
			}
			echo '</tr>
			<tr><td></td><td colspan="6" class="hline"></td></tr>';

			if ($jmagies[$idsort] > 0)
			{
				$totincant++;
				// le cout s'incrémente
				foreach ($couttotal AS $type => $value)
					if (is_numeric($value))
						$couttotal[$type] += $datasort[$type];
				if ($idsort == $valeur_fm) {
					$facteur_fm += $focus_mental * (3 + 0.5 * (5 - $datasort['niveau']))/200;
					// Faste Opulence: on applique l'effet sur le coût en mana
					if ($idsort == 104) {
						$couttotal['coutmana'] += $datasort['coutmana'] * $facteur_fm;
					} else // Concentration de l'Ascète: on applique l'effet sur la réduction des ressources
						if ($idsort == 103) {
						$couttotal['soufre'] += $datasort['soufre'] * $facteur_fm;
						$couttotal['mercure'] += $datasort['mercure'] * $facteur_fm;
						$couttotal['cristal'] += $datasort['cristal'] * $facteur_fm;
						$couttotal['gemme'] += $datasort['gemme'] * $facteur_fm;
					} else {
						$couttotal['coutmana'] += round($datasort['coutmana'] * $focus_mental / 100);
					}
				}
				// les effets se cumulent
				$modif_sorts_def = $jmodific['effets_elem_def'];
				switch ($datasort['élément'])
				{
					case 'Feu'	: $modif_sorts_def *= $jmodific['feu_def'];	break;
					case 'Eau'	: $modif_sorts_def *= $jmodific['eau_def'];	break;
					case 'Terre'	: $modif_sorts_def *= $jmodific['terre_def'];	break;
					case 'Air'	: $modif_sorts_def *= $jmodific['air_def'];	break;
					case 'Électricité': $modif_sorts_def *= $jmodific['elec_def'];	break;
				}
				// effets des sorts défensifs
				if ($datasort['victime'] == 'unique_allié')
				{
					foreach ($effettotal AS $type => $value)
						if (is_numeric($value))
							$effettotal[$type] += $datasort[$type] * $modif_sorts_def * $facteur_fm;
				}
				else if ($datasort['victime'] == 'unique_adverse')
				{
					foreach ($effettotal AS $type => $value)
						if (is_numeric($value))
							$effettotaladv[$type] += $datasort[$type] * $modif_sorts_def * $facteur_fm;
				}
			}
		}
	}
	// pour l'affichage du coût total
	$style = $effettotal;
	foreach ($couttotal AS $type => $montant)
		$style[$type] = ($montant > $ressources[$type]) ? ' style="color:#FF0000;"' : '';
		// inutile maintenant je crois $effettotal[$type] = max(0, round($effettotal[$type]));

	// pour l'affichage des bonus
	if ($totincant == 0)
	{
		$liste_bonus = '';
		$liste_bonusadv = '';
	}
	else
	{
		$carac = array('att', 'def', 'ini', 'end', 'pui', 'cha', 'chance');
		foreach ($effettotal AS $type => $value)
			if (is_numeric($value))
				$effettotal[$type]    = (in_array($type, $carac)) ? round($value) : round($value*100)/100;
		foreach ($effettotaladv AS $type => $value)
			if (is_numeric($value))
				$effettotaladv[$type] = (in_array($type, $carac)) ? round($value) : round($value*100)/100;

		include ("info_objets_include.php");
		$liste_bonus = liste_bonus($effettotal);
		if (strlen($liste_bonus)>4)
			$liste_bonus = '<br>Effets cumulés des sorts défensifs sur vos statistiques:<br>'.$liste_bonus;
		$liste_bonusadv = liste_bonus($effettotaladv, ' ', 0);
		if (strlen($liste_bonusadv)>4)
			$liste_bonusadv = '<br>Effets cumulés des sorts défensifs sur votre adversaire:<br>'.$liste_bonusadv;
	}

	echo '</table>
		<br>
		<center>
		<table border="0" style="text-align: center;">
		<tr>	<td colspan="6">Pour lancer tous vos sorts incantés, vous devez disposer de :</td></tr>
		<tr>	<td width="60"><img src="/images/icones/or.gif" width="30" height="30" title="Pièces d\'or" border=0></td>
			<td width="60"><img src="/images/icones/mana.gif" width="30" height="30" title="Points de magie" border=0></td>
			<td width="60"><img src="/images/icones/soufre.gif" width="30" height="30" title="Soufre" border=0></td>
			<td width="60"><img src="/images/icones/mercure.gif" width="30" height="30" title="Mercure" border=0></td>
			<td width="60"><img src="/images/icones/cristal.gif" width="30" height="30" title="Cristaux" border=0></td>
			<td width="60"><img src="/images/icones/gemmes.gif" width="30" height="30" title="Gemmes" border=0></td> </tr>
		<tr>	<td'.$style['coutor']	.'>'.max(0, round($couttotal['coutor']))	.'</td>
			<td'.$style['coutmana']	.'>'.max(0, round($couttotal['coutmana']))	.'</td>
			<td'.$style['soufre']	.'>'.max(0, round($couttotal['soufre']))	.'</td>
			<td'.$style['mercure']	.'>'.max(0, round($couttotal['mercure']))	.'</td>
			<td'.$style['cristal']	.'>'.max(0, round($couttotal['cristal']))	.'</td>
			<td'.$style['gemme']	.'>'.max(0, round($couttotal['gemme']))		.'</td> </tr>
		<tr>	<td colspan="6"><br>Vous disposez actuellement de</td></tr>
		<tr>	<td width="60"><img src="/images/icones/or.gif" width="30" height="30" title="Pièces d\'or" border=0></td>
			<td width="60"><img src="/images/icones/mana.gif" width="30" height="30" title="Points de magie" border=0></td>
			<td width="60"><img src="/images/icones/soufre.gif" width="30" height="30" title="Soufre" border=0></td>
			<td width="60"><img src="/images/icones/mercure.gif" width="30" height="30" title="Mercure" border=0></td>
			<td width="60"><img src="/images/icones/cristal.gif" width="30" height="30" title="Cristaux" border=0></td>
			<td width="60"><img src="/images/icones/gemmes.gif" width="30" height="30" title="Gemmes" border=0></td>	</tr>
		<tr>	<td class="tdcen">'.$ressources['coutor']	.'</td>
			<td class="tdcen">'.$ressources['coutmana']	.'</td>
			<td class="tdcen">'.$ressources['soufre']	.'</td>
			<td class="tdcen">'.$ressources['mercure']	.'</td>
			<td class="tdcen">'.$ressources['cristal']	.'</td>
			<td class="tdcen">'.$ressources['gemme']	.'</td>	</tr>
		<tr style="font-size:10pt; color:#666666;">
			<td class="tdcen">'.$ressourcesfutures['soufre'].'</td>
			<td class="tdcen">'.$ressourcesfutures['mercure'].'</td>
			<td class="tdcen">'.$ressourcesfutures['cristal'].'</td>
			<td class="tdcen">'.$ressourcesfutures['gemme']	.'</td>	</tr>
		</tbody></table>
		<br>
		<center>
		<input type="radio" name="Etat_Sort" value="Incantertout"> Incanter Tout<br>
		<input type="radio" name="Etat_Sort" value="Dissipertout"> Dissiper Tout<br>
		<input type="hidden" name="dissiper" value="2">
		<br><input type="submit" value="- Valider -"><br>
		'.$liste_bonus.'
		'.$liste_bonusadv;
}
else
{
	echo '<br>Vous ne connaissez aucun sort...<br><br>
	<a href="construction.php">Pour en apprendre, il vous faut construire une tour de magie.<br>
	(Menu Action -> Constuire, onglet Magie & Bâtiments spéciaux.<br>';
}

?>
</div>
<div class="hide hideSpellInfo">
	<table>
		<tr>
			<th>Effets</th>
		</tr>
		<tr>
			<td>
				<?php
				 if ($datasort['type'] === 'Offensif') {
					echo "Dégâts : ".$datasort['min']." à ".$datasort['max'].", Créatures touchées : ".$datasort['nb_cibles'];
				} if ($datasort['type'] === 'Défensif') {
					$liste_bonus = liste_bonus($datasort);
					echo $liste_bonus;
				} ?>
			</td>
		</tr>
	</table>
</div>
