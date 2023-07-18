<?php

// Dans ce fichier sont des choses qui sont rarement utilisées: menu pour rejoindre une province, traitement de rejoignage de province (ceux qui ont décidé d'être indep s'en foutent), traitement de quittage de province

// écrit la liste des provinces accessibles dans un formulaire
function join_province_menu ($joueur)
{
	$req = mysql_query("SELECT race, niveau FROM joueurs_heros INNER JOIN joueurs_stats on joueurs_stats.nom = joueurs_heros.nom WHERE joueurs_heros.nom = '".$joueur."'") or die(mysql_error());
	$data = mysql_fetch_row($req);
	$race = $data[0];
	
	echo '<form method="POST" action="'.str_replace('/', '', $_SERVER['SCRIPT_NAME']).'">
	<img src="images/divers/aucune_province.png" width="100" height="100" alt="Aucune province" border=1 style="float:left; margin:8px 20px 8px 8px;">
	<div class="longtexte" style="min-height:116px;">Vous n\'êtes membre d\'aucune province. Afin de bénéficier des avantages de l\'une d\'elles, vous devez choisir une province. En rejoingnant cette province, vous acceptez d\'adopter le régime officiel de la province ainsi que de vous soumettres à ses taxes. <strong>L\'entrée dans une province est définitif!</strong> Vous pouvez rejoindre librement l\'une des provinces suivantes:</div>
	<center>';
	
	echo '
	<table class="localtable630">
	<tr>	<td></td>	<td class="cl_entete">Province</td>	<td class="cl_entete">Régime</td>	<td class="cl_entete">Palatin</td>	<td class="cl_entete">Taxe</td>	<td></td>	</tr>
	<tr>	<td></td>	<td colspan="4" class="hline"></td>	<td></td></tr>';
	
	$sql2 = "SELECT Province, politique1, Palatin, taxes, entree, politiques_effets.creatures, politiques_effets.batiments, politiques_effets.magie, politiques_effets.exploration, politiques_effets.protection, politiques_effets.or
		FROM provinces_politiques 
		INNER JOIN politiques_effets ON politiques_effets.politique = provinces_politiques.politique1
		ORDER BY Province ASC";
	$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
	
	while ($data2 = mysql_fetch_assoc($req2)) {
		$province = $data2['Province'];
		if ($data2['entree'])
		{
			echo '	<tr class="rollovercolor">
			<td class="tdlef" style="width:25px;"><input type="radio" name="province" value="'.$province.'"></td>
			<td class="tdlef">'.$province.'</td>
			<td>'.$data2['politique1'].'</td>
			<td>'.$data2['Palatin'].'</td>
			<td>'.$data2['taxes'].' %</td>
			<td><a href="#" class="infodiscr" onmouseover="afficheinfobulle(\'info\');">Détails<span class="Xlarge lalign" id="info">
				<div style="float:left;">
					Gain de créatures par jour:<br>
					Coût général des bâtiments:<br>
					Récup & Conso magique:<br>
					Exploration & Découvertes:<br>
					Globe de protection:<br>
					Total des revenus:</div>
				<div style="float:right;">
					'.(100*$data2['creatures']).' %<br>
					'.(100*$data2['batiments']).' %<br>
					'.(100*$data2['magie']).' %<br>
					'.(100*$data2['exploration']).' %<br>
					'.(100*$data2['protection']).' %<br>
					'.(100*$data2['or']).' %</div>
				</span></a>
			</td>	</tr>
			<tr>
			<td></td>
			<td colspan="4" class="hline"></td>
			<td></td></tr>'."\n";
		}
	}
	echo '</table>';
		
	echo '</center>
	<br>
	<input type="hidden" name="mode" value="joindreprovince">
	<input type="submit" value="Rejoindre la province >>">
	</form>';
	
	return true;
}

// fait rejoindre une province à un joueur
function join_province ($joueur, $province)
{
	$temps = floor(time()/60);
	$province = addslashes($province);
	
	$sql = "SELECT province, race, niveau, argent FROM joueurs_bonus
		INNER JOIN joueurs_heros on joueurs_heros.nom = joueurs_bonus.nom
		INNER JOIN joueurs_stats on joueurs_stats.nom = joueurs_bonus.nom
		WHERE joueurs_bonus.nom = '".$joueur."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$race = $data[1];
	$or = $data[3];
	
	if ($data[0] != 'Aucune')
		return 'Vous êtes déjà membre d\'une province et ne pouvez donc en rejoindre une autre.';
	
	$sql = "SELECT politique1, taxes, entree FROM provinces_politiques WHERE Province = '".$province."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if ($data = mysql_fetch_assoc($req))
	{
		if (!$data['entree'])
			return 'Les armées impériales bloquent actuellement l\'entrée dans la province désirée.';
		// le joueur peut entrer dans la province
		$sql = "SELECT `magie` FROM politiques_effets WHERE politique = '".$data['politique1']."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$conso_mana = mysql_fetch_assoc($req);
		$conso_mana = 1 - $conso_mana['magie'];
		mysql_query("UPDATE `joueurs_bonus` SET `politique` = '".$data['politique1']."', `province` = '".$province."' WHERE `nom` = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
		mysql_query("UPDATE `joueurs_modificateurs` SET `mana_consommation` = `mana_consommation` + '".$conso_mana."' WHERE `nom` = '".$joueur."'") or die('Erreur SQL !<br>'.mysql_error());
		return '';
	}
	return 'La province désirée n\'existe pas.';
}

function tempsrestant ($reste)
{
	$out = '';
	$j = floor( $reste /60  / 24);
	$h = floor(($reste /60) % 24);	
	$m = floor( $reste %60 );
	if ($j != 0)	$out .= $j.' jours, ';
	if ($h != 0)	$out.= $h.' heures, ';
	$out.= $m.' minutes';
	return $out;
}

?>
