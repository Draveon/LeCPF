<?php


$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];
include("connect.php");


$req = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$niv = $data[0];
// On prend pas en compte l'end et la pui parce que def et end vont ensemble de même que att et pui et comptent pour moitié chacun
$req = mysql_query("SELECT (satt + sdef + sini + scha) AS nbptcaracsupp FROM joueurs_bonus WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$nbptcaracsupp = $data[0];


if (isset($_REQUEST['aptitude']))
{
	$aptitude = (isset($_REQUEST['aptitude'])) ? $_REQUEST['aptitude'] : '';

	$x = 0;

	if ($aptitude == 'synchronisation')
	{
		include ('batimentspec_include.php');

		$mod_pts = array(); // contient les champs de la tablea joueurs_modificateurs
		$a_traiter = array('Air', 'Terre', 'Eau', 'Feu', 'Électricité', 'chance', 'population', 'mana', 'population2', 'res_phys', 'res_mag', 'res_feu', 'res_eau', 'res_terre', 'res_air', 'res_elec', 'res_elem', 'xp', 'terres', 'or', 'mana_consommation', 'HC_or', 'HC_mines', 'HC_recrut', 'prison', 'degat_phys', 'degat_mag', 'degat_range', 'res_range', 'degat_cac', 'res_cac', 'degat_vol', 'res_vol', 'degat_sol', 'res_sol', 'degat_vs_range', 'res_vs_range', 'degat_vs_cac', 'res_vs_cac', 'degat_vs_vol', 'res_vs_vol', 'degat_vs_sol', 'res_vs_sol', 'degat_vs_phys', 'degat_vs_mag', 'res_vs_phys', 'res_vs_mag', 'degat', 'res', 'degat_elem', 'effets_elem_def', 'cailloux_consommation', 'res_effets_elem_def', 'feu_def', 'eau_def', 'terre_def', 'air_def', 'elec_def', 'res_feu_def', 'res_eau_def', 'res_terre_def', 'res_air_def', 'res_elec_def', 'vol_ressources', 'globe_protect', 'cout_mana_creas');
		$mod_pts['chance'] = 9; // de base, le coefficient pour trouver des objets magique est de 10

		// niveau -> pts aptitudes
		$req = mysql_query("SELECT points FROM classes WHERE classe = '".$classe."'") or die('Erreur SQL !<br>'.mysql_error());
		$dat = mysql_fetch_row($req);
		$pts = $niv * $dat[0];
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

		$req = mysql_query("SELECT * FROM joueurs_créatures WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$dat = mysql_fetch_assoc($req);
		for ($i=1; isset($dat[$i]); $i++) {
			$pvstotal += $dat[$i] * $pvs_crea[$i];
		}

		// On met à jour en base et on recalcule la puissance
		$sql = 'UPDATE `joueurs_modificateurs` SET `pvstotal` = '.$pvstotal.' WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

		include_once("puissance.php");
		maj_puissance($nom);


		// CARACTÉRISTIQUES
		$req = mysql_query('SELECT race, classe, dieu FROM joueurs_heros WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
		$dat = mysql_fetch_row($req);
		$race   = $dat[0];
		$classe = $dat[1];
		$dieux  = $dat[2];

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
		$puiB = 0;include
		$chaB = 0;
		include ("info_objets_include.php");
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
	else if ($aptitude == 'apt23desact')
	{
		$req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `actif23` = '0' WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	}
	else if ($aptitude == 'apt23act')
	{
		$req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `actif23` = '1' WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	}
	else if ($aptitude == 'apt34desact')
	{
		$req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `actif34` = '0' WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	}
	else if ($aptitude == 'apt34act')
	{
		$req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `actif34` = '1' WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	}
	else if (($aptitude == 'ptsuppcarac')&&(($nbptcaracsupp < $niv)))
	{
		$carac = ((isset($_POST['carac']))&&(in_array($_POST['carac'], array('att','defend', 'ini', 'cha')))) ? $_POST['carac'] : '';
		if ($carac != '')
		{
			if ($carac == 'defend') {
				$sql = "UPDATE joueurs_stats SET `def` = `def` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_stats SET `end` = `end` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_bonus SET `sdef` = `sdef` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_bonus SET `send` = `send` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			} else if ($carac == 'att') {
				$sql = "UPDATE joueurs_stats SET `att` = `att` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_stats SET `pui` = `pui` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_bonus SET `satt` = `satt` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_bonus SET `spui` = `spui` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			} else {
				$sql = "UPDATE joueurs_stats SET `".$carac."` = `".$carac."` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
				$sql = "UPDATE joueurs_bonus SET `s".$carac."` = `s".$carac."` + '1' WHERE nom = '".$nom."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
			}
			$nbptcaracsupp++;
		}
	}
	else if ($aptitude == 'crea_marche_noir') {
		$crea_choisie = $_REQUEST['crea_marche_noir'];
		$req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `crea_marche_noir` = $crea_choisie WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	}
}

mysql_close();

$sql = "SELECT aptitude01, aptitude02, aptitude03, aptitude04, aptitude05, aptitude06, aptitude07, aptitude08, points, `actif23`, `actif34`, `fureur_counter`, `crea_marche_noir` FROM joueurs_aptitudes_base WHERE nom = '".$nom."'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$apt_1 = $data[0];
$apt_2 = $data[1];
$apt_3 = $data[2];
$apt_4 = $data[3];
$apt_5 = $data[4];
$apt_6 = $data[5];
$apt_7 = $data[6];
$apt_8 = $data[7];
$pts = $data[8];
$sabotactif = $data[9];
$fureuractif = $data[10];
$fureur_counter = $data[11];
$crea_marche_noir = $data[12];

$req1 = mysql_query("SELECT * FROM joueurs_aptitudes WHERE nom = '".$nom."'");
$data1 = mysql_fetch_assoc($req1);


echo '';
if ($nbptcaracsupp < $niv)
{
	echo '	<h2>Points de caractéristiques supplémentaires</h2>
	<div class="longtexte">Chaque personnage reçoit gratuitement un point de caractéristique supplémentaire à chaque changement de niveau. Ce point peut être attribué dans la caractéristique de votre choix!</div>';
	echo '<div class="longtexte">Vous disposez de <b>'.($niv-$nbptcaracsupp).'</b> points de caractéristique à attribuer.</div>
	<div class="longtexte">Ajouter un point de caractéristique à:</div>
	<form method="post" action="aptitudes.php">
	<div style="width:500px; text-align:left; margin:0 auto;">
	<input type="radio" name="carac" value="att"> Attaque et Puissance<br>
	<input type="radio" name="carac" value="defend"> Défense et Endurance<br>
	<input type="radio" name="carac" value="ini"> Initiative<br>
	<input type="radio" name="carac" value="cha"> Charisme<br>
	<input type="hidden" name="aptitude" value="ptsuppcarac">
	<input type="submit" value=" Ajouter 1 point >> " style="margin-top:10px;">
	</div>
	</form>
	';
}
else
{
	echo '	<h2>Vos aptitudes</h2>';
}

echo '
	Nombre de points à distribuer : &nbsp;</big>
	<span id="glowtext">'.$pts.'
<br>';

// on regarde s'il a des aptitudes à choisir, si oui on met un GROS lien
$sql = "SELECT apts_a_choisir FROM joueurs_aptitudes_base WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$apts_a_choisir = $data['apts_a_choisir'];
if ($apts_a_choisir > 0)
	echo '<center>Vous pouvez choisir une ou des nouvelles aptitudes.<br>~ <b><a href="aptitudes_choix.php">Cliquez ici !</a></b> ~</center><br><br>';
echo '';

$x = 0;
$z = 0;
$req = mysql_query("SELECT * FROM aptitudes_liste") or die('Erreur SQL !<br>'.mysql_error());
while ($apt = mysql_fetch_assoc($req))
{
	$id = $apt['id'];
	$nom_apt = $apt['nom'];
	$pourcent = $data1[$id];

	if ($pourcent > 0 OR $id == $apt_1 OR $id == $apt_2 OR $id == $apt_3 OR $id == $apt_4 OR $id == $apt_5 OR $id == $apt_6 OR $id == $apt_7 OR $id == $apt_8)
	{
		if (($x>0)&&(($x%4)==0))
			echo "\n";
		$x++;
		if ($id != $apt_1 AND $id != $apt_2 AND $id != $apt_3 AND $id != $apt_4 AND $id != $apt_5 AND $id != $apt_6 AND $id != $apt_7 AND $id != $apt_8)
		{
			$z = 1;
			$linkb = '';
			$linke = '';
		}
		else
		{
			$linkb = '<a href="info_aptitudes.php?aptitude='.$apt['id'].'&amp;mode=form" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false">';
			$linke = '</a>';
		}
		$complement = '<br>&nbsp;';
		$class = '';
		if ($nom_apt=='Sabotage')
		{
			if ($sabotactif) {	$complement = '<br><a href="aptitudes.php?aptitude=apt23desact">Désactiver</a><br>&nbsp;';	}
			else		{	$complement = '<br><a href="aptitudes.php?aptitude=apt23act">Activer</a><br>&nbsp;';	$class = 'class="unabled"'; }
		}
		if ($nom_apt=='Fureur')
		{
			$recharge_fureur = 4;
			$fureur_counter = min($recharge_fureur, $fureur_counter);
			$complement = '<br>Rechargement de l\'aptitude: '.$fureur_counter.' / '.$recharge_fureur;
			if ($fureuractif) {	$complement .= '<br><a href="aptitudes.php?aptitude=apt34desact">Désactiver</a><br>&nbsp;';	}
			else		{	$complement .= '<br><a href="aptitudes.php?aptitude=apt34act">Activer</a><br>&nbsp;';	$class = 'class="unabled"'; }
		}
		if ($nom_apt=='Commerce' && $pourcent >= 24) {
			$complement .= '<br><select name="crea_marche_noir" onchange="location = this.value">
									<option value="0" '; if ($crea_marche_noir == 0) $complement .= 'selected'; $complement .= '>Aucune</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=1" '; if ($crea_marche_noir == 1) $complement .= 'selected'; $complement .= '>Chasseurs des cimes</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=2" '; if ($crea_marche_noir == 2) $complement .= 'selected'; $complement .= '>Enforceurs nains</option>';
			if ($pourcent >= 48) {
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=3" '; if ($crea_marche_noir == 3) $complement .= 'selected'; $complement .= '>Quetzalcoatls</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=4" '; if ($crea_marche_noir == 4) $complement .= 'selected'; $complement .= '>Soldats d\'élite de Maon</option>';
			}
			if ($pourcent >= 72) {
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=5" '; if ($crea_marche_noir == 5) $complement .= 'selected'; $complement .= '>Certales</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=6" '; if ($crea_marche_noir == 6) $complement .= 'selected'; $complement .= '>Revenants archers</option>';
			}
			if ($pourcent >= 96) {
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=7" '; if ($crea_marche_noir == 7) $complement .= 'selected'; $complement .= '>Esprits vengeurs</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=8" '; if ($crea_marche_noir == 8) $complement .= 'selected'; $complement .= '>Terreurs des égoûts</option>';
			}
			if ($pourcent >= 120) {
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=9" '; if ($crea_marche_noir == 9) $complement .= 'selected'; $complement .= '>Croisés Impériaux</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=10" '; if ($crea_marche_noir == 10) $complement .= 'selected'; $complement .= '>Dragons rouges</option>';
				$complement .= '<option value="aptitudes.php?aptitude=crea_marche_noir&crea_marche_noir=11" '; if ($crea_marche_noir == 11) $complement .= 'selected'; $complement .= '>Galapars</option>';
			}
			$complement .= '</select>';
		}
		echo '	<div '.$class.' style="vertical-align:top;">'.$linkb.'<b>'.$apt['nom']."</b><br>\n".'<img src="'.$apt['image'].'" alt="'.strip_tags($apt['description']).'" title="'.strip_tags($apt['description']).'" width="175" height="250" border=1>'.$linke."<br>\n		".$pourcent.' %'.$complement>';
	}
}
for (;((($x%3)!=0)&&($x>4)); $x++)
	echo "	&nbsp;\n";

echo '
';

if ($z == 1)
	echo '<br><small>Note : <i>Vous ne pouvez attribuer de point dans les aptitudes qui vous sont uniquement données par les bâtiments spéciaux !</i></small>';

if ($x > 0)
{
	if ($z == 1)
		echo '<br>';
	echo '<br><center>~ <a href="aptitudes.php?aptitude=synchronisation">Synchronisation des points d\'aptitudes et des caractéristiques</a> ~ <br><br>';
}

mysql_close();



 ?>
