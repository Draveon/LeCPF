<?

$db = mysql_connect("localhost", "destinee-online", "hNme2cGR6eqmSDY5") or die (mysql_error());
mysql_select_db("Destinee01");

// Liste des joueurs
$req_joueurs = mysql_query("SELECT `nom`, `classe`, `race`, `dieu` FROM `joueurs_heros`") or die('Erreur SQL !<br>'.mysql_error());
while ($joueur = mysql_fetch_row($req_joueurs)) {
	$nom = $joueur[0];
	$classe = $joueur[1];
	$race = $joueur[2];
	$dieux = $joueur[3];
	$req_niveau = mysql_query("SELECT `niveau` FROM `joueurs_stats` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$niv = mysql_fetch_row($req_niveau);
	$niv = $niv[0];
	echo "Joueur $nom $classe $race $dieux $niv <br>";

	include ("../batimentspec_include.php");
		
	$mod_pts = array(); // contient les champs de la tablea joueurs_modificateurs
	$a_traiter = array('Air', 'Terre', 'Eau', 'Feu', 'Électricité', 'chance', 'population', 'mana', 'population2', 'res_phys', 'res_mag', 'res_feu', 'res_eau', 'res_terre', 'res_air', 'res_elec', 'res_elem', 'xp', 'terres', 'or', 'mana_consommation', 'HC_or', 'HC_mines', 'HC_recrut', 'prison', 'degat_phys', 'degat_mag', 'degat_range', 'res_range', 'degat_cac', 'res_cac', 'degat_vol', 'res_vol', 'degat_sol', 'res_sol', 'degat_vs_range', 'res_vs_range', 'degat_vs_cac', 'res_vs_cac', 'degat_vs_vol', 'res_vs_vol', 'degat_vs_sol', 'res_vs_sol', 'degat_vs_phys', 'degat_vs_mag', 'res_vs_phys', 'res_vs_mag', 'degat', 'res', 'degat_elem', 'effets_elem_def', 'cailloux_consommation', 'res_effets_elem_def', 'feu_def', 'eau_def', 'terre_def', 'air_def', 'elec_def', 'res_feu_def', 'res_eau_def', 'res_terre_def', 'res_air_def', 'res_elec_def', 'vol_ressources', 'globe_protect', 'cout_mana_creas');
	$mod_pts['chance'] = 9; // de base, le coefficient pour trouver des objets magique est de 10
	
	// niveau -> pts aptitudes
	$req = mysql_query("SELECT points FROM classes WHERE classe = '".$classe."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$pts = 15 + (($niv - 1) * $dat[0]);
	echo 'niveau : '.$pts.'<br>';
	
	// batiment spéciaux -> aptitudes
	foreach ($batSpeConstr AS $id => $lvl)
	{
		if ($lvl > 0)
		{
			$req = mysql_query("SELECT `nom`,  `type`, `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
			if ($data = mysql_fetch_assoc($req))
			{
				for ($i=1; $i<=2; $i++)
				{
					if ($data['tablename'.$i] == 'joueurs_aptitudes')
					{
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $lvl);
						$pts += $bonus;
					}
					elseif ($data['tablename'.$i] == 'joueurs_modificateurs' && in_array($data['bfield1'], $a_traiter))
					{
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $lvl);
						$mod_pts[$data['bfield'.$i]] += $bonus;
					}
				}
			}
		}
	}
	echo 'Bat spé : '.$pts.'<br>';
	
	// Points utilisés par le joueur
	$points2 = 0;
	$req = mysql_query("SELECT * FROM joueurs_aptitudes WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	for ($i=1; isset($dat[$i]); $i++)
		$points2 += $dat[$i];

	$sql = 'UPDATE `joueurs_aptitudes_base` SET `points` = '.($pts - $points2).' WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	// Total points de vie
	$pvs_crea = array();
	$req = mysql_query("SELECT id, pvs FROM creatures") or die('Erreur SQL !<br>'.mysql_error());
	while ($row = mysql_fetch_row($req)) {
		$pvs_crea[$row[0]] = $row[1];
	}
	
	$pvstotal = 0;
	$req = mysql_query("SELECT * FROM joueurs_créatures WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	for ($i=1; isset($dat[$i]); $i++) {
		$pvstotal += $dat[$i] * $pvs_crea[$i];
	}
	
	// On met à jour en base et on recalcule la puissance
	$sql = 'UPDATE `joueurs_modificateurs` SET `pvstotal` = '.$pvstotal.' WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	include_once("../puissance.php");
	maj_puissance($nom);	

	
	// CARACTÉRISTIQUES
	$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM races WHERE race = "'.$race.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dataraces = mysql_fetch_row($req);
	$att = ($dataraces[0]) * $niv;
	$def = ($dataraces[1]) * $niv;
	$ini = ($dataraces[2]) * $niv;
	$cha = ($dataraces[3]) * $niv;
	$end = ($dataraces[4]) * $niv;
	$pui = ($dataraces[5]) * $niv;
	echo "Race : $att $def $ini $cha $end $pui <br>";
	$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM stats_dieux WHERE nom = "'.$dieux.'"') or die('Erreur SQL !<br>'.mysql_error());
	$datadieux = mysql_fetch_row($req);
	$att += ($datadieux[0]) * $niv;
	$def += ($datadieux[1]) * $niv;
	$ini += ($datadieux[2]) * $niv;
	$cha += ($datadieux[3]) * $niv;
	$end += ($datadieux[4]) * $niv;
	$pui += ($datadieux[5]) * $niv;
	echo "Dieu : $att $def $ini $cha $end $pui <br>";
	$req = mysql_query('SELECT att, def, ini, cha, end, pui FROM classes WHERE classe = "'.$classe.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dataclasse = mysql_fetch_row($req);
	$att += ($dataclasse[0]) * $niv;
	$def += ($dataclasse[1]) * $niv;
	$ini += ($dataclasse[2]) * $niv;
	$cha += ($dataclasse[3]) * $niv;
	$end += ($dataclasse[4]) * $niv;
	$pui += ($dataclasse[5]) * $niv;
	echo "Classe : $att $def $ini $cha $end $pui <br>";

	$attB = 0;	// pour la table joueurs_bonus (les bonus conférés par les objets et les bâtiments spéciaux nouvelle version)
	$defB = 0;
	$iniB = 0;
	$endB = 0;
	$puiB = 0;
	$chaB = 0;
	include_once ("../info_objets_include.php");
	$req = mysql_query('SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_assoc($req);
	foreach ($dat AS $ou => $item)
	{
		$obj_data = retourne_carac_objet($item);
		if ($obj_data != false)
		{
			$att += $obj_data['att'];
			$def += $obj_data['def'];
			$ini += $obj_data['ini'];
			$end += $obj_data['end'];
			$pui += $obj_data['pui'];
			$cha += $obj_data['cha'];
			$attB += $obj_data['att'];
			$defB += $obj_data['def'];
			$iniB += $obj_data['ini'];
			$endB += $obj_data['end'];
			$puiB += $obj_data['pui'];
			$chaB += $obj_data['cha'];
			
			foreach($obj_data AS $cle => $valeur)
			{
				if(in_array($cle, $a_traiter))
					$mod_pts[$cle] += $valeur;
			}
		}
	}
	echo "Objets : $att $def $ini $cha $end $pui <br>";

	
	// batiment spéciaux
	foreach ($batSpeConstr AS $id => $lvl)
	{
		if ($lvl > 0)
		{
			$req = mysql_query("SELECT `nom`,  `type`, `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
			if ($data = mysql_fetch_assoc($req))
			{
				for ($i=1; $i<=2; $i++)
				{
					if (($data['tablename'.$i] == 'joueurs_bonus')&&(in_array($data['bfield'.$i], array('att','def','ini','end','pui','cha'))))
					{
						$bonus = ($data['bnum'.$i] != 0) ? $data['bnum'.$i] : $data['bfloat'.$i];
						$bonus = getBonusLevel ($bonus, $lvl);
						if ($bonus != 0)
						{
							${$data['bfield'.$i]} += $bonus;	// par exemple: $def
							${$data['bfield'.$i].'B'} += $bonus;	// par exemple: $defB
						}
					}
				}
			}
		}
	}
	echo "Bat Spé : $att $def $ini $cha $end $pui <br>";
	
	// pt de carac supp (1 librement attribuable par niveau)
	$req = mysql_query("SELECT satt, sdef, sini, spui, send, scha FROM joueurs_bonus WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$att += $data['satt'];
	$def += $data['sdef'];
	$ini += $data['sini'];
	$pui += $data['spui'];
	$end += $data['send'];
	$cha += $data['scha'];
	echo "Pts libres : $att $def $ini $cha $end $pui <br>";
	
	
	$sql = 'UPDATE `joueurs_stats` SET `att` = '.$att.', `def` = '.$def.', `ini` = '.$ini.', `cha` = '.$cha.', `end` = '.$end.', `pui` = '.$pui.' WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	$sql = 'UPDATE `joueurs_bonus` SET `att` = '.$attB.', `def` = '.$defB.', `ini` = '.$iniB.', `cha` = '.$chaB.', `end` = '.$endB.', `pui` = '.$puiB.'  WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	$str_sql = '';
	foreach($mod_pts AS $cle => $valeur)
	{
		if($valeur != NULL && $valeur != 0)
			if(isset($str_sql) && !empty($str_sql))
				$str_sql .= ', `'.$cle.'` = '.(string)(1+$valeur).' ';
			else
				$str_sql = ' `'.$cle.'` = '.(string)(1+$valeur).' ';
	}
	if(!empty($str_sql))
		mysql_query('UPDATE `joueurs_modificateurs` SET '.$str_sql.' WHERE nom = "'.$nom.'"') or die(mysql_error());
}
			
mysql_close();
include ("fin.php");
?>