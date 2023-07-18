<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_POST['qtee']))
{

	$id_cr = ((isset($_GET['creature']))&&(is_numeric($_GET['creature']))) ? $_GET['creature'] : '';
	if ($id_cr == '')
		exit;
        
	$nom   = $_SESSION['nom'];
	$race = $_SESSION['race'];
	include("connect.php");
	include_once("calcul_bonus_recrutement.php");
	
	$mana_consommation = calcul_bonus_conso_magie_recr($nom);
	$crea_obj = calcul_bonus_recr($nom);	

	$req = mysql_query("SELECT att, def, ini, pui, end, cha, puissance, argent, mana, niveau FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$att_h = $data[0];
	$def_h = $data[1];
	$ini_h = $data[2];
	$pui_h = $data[3];
	$end_h = $data[4];
	$charisme = $data[5];
	$puissance = $data[6];
	$argent_dispo = $data[7];
	$mana_dispo = $data[8];
	$niveau_hero = $data[9];
	//$mod_charisme = 2 / pow(($charisme + 20), 1/5); // ancien modificateur aux prix
	
	// Nouveau modificateur aux prix: ne prend pas en compte le bat spé charisme et le bonus des objets équipés depuis moins de 24h
	$mod_charisme = calcul_mod_cout_creas($nom);
	
	// 1 % de recrutement par 40 de charisme
	$crea_cha  = calcul_bonus_recr_charisme($nom);
	
	// gain de créatures provincial
	$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$jbonus = mysql_fetch_assoc($req);
	if ($jbonus['province'] == 'Aucune')	$sql = "SELECT politiques_effets.creatures AS prov_creatures FROM politiques_effets WHERE politiques_effets.politique = '".$jbonus['politique']."'";
	else					$sql = "SELECT politiques_effets.creatures + ( batiment_province.niveau /100 ) AS prov_creatures FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '".$jbonus['politique']."' AND batiment_province.province = '".$jbonus['province']."' AND batiment_province.nom = 'Casernes fortifiées'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$mod_province = $data[0];
	
	$req = mysql_query('SELECT * FROM creatures WHERE id = "'.$id_cr.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$id   = $data['id'];
	$creature = $data['nom'];
	$type = $data['type'];
	$batiment = $data['batiment'];
	$niv = $data['niveau'];
	$nombrepJ = ($data['nombre']==0) ? 'N/A' : $data['nombre'];
	$espace = $data['espace'];
	$att = $data['att'];
	$def = $data['def'];
	$ini = $data['ini'];
	$end = $data['end'];
	$pvs = $data['pvs'];
	$min = $data['min'];
	$max = $data['max'];
	$vol = $data['vol'];
	$range = $data['range'];
	$cout = $data['cout_argent'] * $mod_charisme;
	$mana = $data['cout_mana'] * $mana_consommation;
	$image = $data['image'];
	$description = $data['desc'];
	$att_mag = $data['att_mag'];
	$raciale = $data['raciale'];
	$bgh = $data['bgh'];
	// attaque
	if ($att_mag == 1 && !$raciale ==1) {
		$atth = $att + round($pui_h/6);
	}
	else if	($raciale == 1) {
		$atth = $att + round(max($pui_h, $att_h)/6);
	}
	else {
		$atth = $att + round($att_h/6);
	}
	// défense
	if	($raciale == 1) {
		$defh = $def + round(max($end_h, $def_h)/6);
		$endh = $end + round(max($end_h, $def_h)/6);
	}
	else {
		$defh = $def + round($def_h/6);
		$endh = $end + round($end_h/6);
	}
	$inih = $ini + round($ini_h/4);

	$req = mysql_query("SELECT  `".$id."` FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$terrain = $data[0];
      if (($terrain=='0')||($terrain==''))
		exit ('Comment s\'appellent les enfants de Francs ?<br><i>Les centimes...</i>');
	$req = mysql_query("SELECT `".$terrain."` FROM races WHERE race = '".$race."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_array($req);
	$mod_terrain = $data[0];
	$req = mysql_query("SELECT `".$id."` FROM `joueurs_créatures` WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$exist = $data[0];
	$req = mysql_query("SELECT `".$id."` FROM `joueurs_créatures_id` where nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$qtee = $data[0];
		
	// la valeur par défaut est le nombre de créature recrutables
	$nrecror = ($cout == 0) ? $qtee : floor($argent_dispo / $cout);
	$nrecrma = ($mana == 0)	? $qtee : floor($mana_dispo / $mana);
	$qter = max(0,min($qtee, $nrecror, $nrecrma));
        
	// mise en forme de données numériques
	$espacemod = number_format(ceil($espace / $mod_terrain), 0, ",", ",");;
	$espace = number_format($espace, 0, ",", ",");
	$terrain = ucfirst($terrain);
	$nombrepJmod = round($nombrepJ * $crea_obj * $mod_province * $crea_cha);
	// écoulement du temps
	include("temps_ecoulement.php");
	$parjour = '/jour';
	if ($temps_ecoulement != 1)
		$parjour = ' / '.round(1/$temps_ecoulement,2).' jours';

	
        
	mysql_close();

	
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>'.$creature.'</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
	<script type="text/javascript" src="fonctions/affichecache.js"></script>
<script type="text/javascript">
<!--
function estimate (nbr, coutor, coutmana, pvs, id)
{
	document.getElementById(id).innerHTML = \'Coût: \' + Math.ceil(nbr*coutor) + \' pièces d\\\'or et \' + Math.ceil(nbr*coutmana) + \' mana<br>Puissance après recrutement: \' + Math.round('.$puissance.' + nbr*pvs*(1 + 0.05 * '.$niveau_hero.')) + \'.\';
}
function estimate_renvoi (nbr, pvs, id)
{
	document.getElementById(id).innerHTML = \'Puissance après renvoi: \' + Math.round('.$puissance.' - nbr*pvs*(1 + 0.05 * '.$niveau_hero.')) + \'.\';
}
function set_value (id, nbr)
{
	document.getElementById(id).value = nbr;
}
//-->
</script>
</head>
<body marginheight=0 class="bodypopup" onload="javascript:estimate(0, '.$cout.', '.$mana.', '.$pvs.', \'idcouts\'); javascript:estimate_renvoi(0,0,\'idrenvoi\');">
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc">
';
	echo '<h4>Pièces d\'or : '.round($cout).' | Points de magie : '.round($mana).'</h4><br>';
	if ($raciale == 0) {
		echo '<small>(<a href="detruire.php?type=1&id='.$id.'" style="text-decoration:underline;">Détruire ce bâtiment</a>)</small><br>';
	}
	echo '
	<form method="post" action="recruter.php">	
	<table class="discr100"><tbody>
	<tr>	<td rowspan="10" class="discr100img"><img src="'.$image.'" width="100px" height="100px" alt="'.$creature.'" border="1"></td><td colspan="2">&nbsp;</td></tr>
	<tr>	<td>Nom :			</td><td><b>'.$creature.'</b></td></tr>
	<tr>	<td>Quantité recrutée:		</td><td><b>'.$exist.'</b></td></tr>
	<tr>	<td style="white-space: nowrap;">Quantité disponible :	</td><td><b>'.$qtee.'</b></td></tr>
	<tr>	<td>Quantité désirée :		</td><td><input id="qtee" type="text" name="qtee" size="5" value="" onChange="javascript:estimate(this.value, '.$cout.', '.$mana.', '.$pvs.', \'idcouts\')"></td></tr>
	<tr>	<td colspan="2"><div id="idcouts"></div></td></tr>
	<tr><td colspan="2" style="text-align:center;padding:10px;">
		<input type="hidden" name="recrutement" value="'.$id.'">
		<input type="submit" name="RecruteBtn" value="Recruter >>">
<button type="button" onclick="set_value(\'qtee\','.$qter.');set_value(\'qtee_renvoi\',\'\');estimate('.$qter.', '.$cout.', '.$mana.', '.$pvs.', \'idcouts\');estimate_renvoi(0,0,\'idrenvoi\');">Tout</button>	
	</td></tr>
	<tr>	<td>Renvoi de troupes : </td><td><input id="qtee_renvoi" type="text" name="qtee_renvoi" value="" size="5" onChange="javascript:estimate_renvoi(this.value, '.$pvs.', \'idrenvoi\')"></td></tr>
	<tr>	<td colspan="2"><div id="idrenvoi"></div></td></tr>
	<tr><td colspan="2" style="text-align:center;padding:10px;">
		<input type="submit" name="RenvoiBtn" value="Renvoyer >>">
<button type="button" onclick="set_value(\'qtee_renvoi\','.$exist.');set_value(\'qtee\',\'\');estimate(0, '.$cout.', '.$mana.', '.$pvs.', \'idcouts\'); javascript:estimate_renvoi('.$exist.','.$pvs.',\'idrenvoi\');">Tout</button>	
	
	</td></tr>
	';
	echo '	</tbody></table>';
	
	echo '<div id="creatHide" style="padding-bottom: 8px;">
		<a href="javascript:swapbonus(\'creatHide\',\'creatDetails\');">Afficher les détails</a>
	</div>
	<div id="creatDetails" style="display:none;">
		<a href="javascript:swapbonus(\'creatDetails\',\'creatHide\');">Cacher les détails</a>
		<div style="width:95%; margin:0px auto;">
			<div class="tableRecrR">
				<div><span class="tdRecr">Attaque :	</span>'.$atth.' ('.$att.')</div>
				<div><span class="tdRecr">Défense : 	</span>'.$defh.' ('.$def.')</div>
				<div><span class="tdRecr">Initiative :	</span>'.$inih.' ('.$ini.')</div>
				<div><span class="tdRecr">Endurance :	</span>'.$endh.' ('.$end.')</div>
				<div><span class="tdRecr">Vitalité :	</span>'.$pvs.'</div>
				<div><span class="tdRecr">Dégâts :	</span>'.$min.' à '.$max.'</div>
			</div>
			<div class="tableRecrL">
				<div><span class="tdRecr">Bâtiment :	</span>'.$batiment.'</div>
				<div><span class="tdRecr">Type :	</span>'.$type.'</div>
				<div><span class="tdRecr">Niveau :	</span>'.$niv.'</div>
				<div><span class="tdRecr">Terrain :	</span>'.$terrain.'</div>
				<div><span class="tdRecr">Espace :	</span>'.$espacemod.' ('.$espace.')</div>
				<div><span class="tdRecr">Créatures'.$parjour.' :</span>'.$nombrepJmod.' ('.$nombrepJ.')</div>
			</div>';
	echo '
	</div>';
	if ($raciale == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Créature raciale</i></div>';
	if ($vol == 1)		echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Créature volante</i></div>';
	if ($range == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Attaque à distance</i></div>';
	if ($att_mag == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Attaque magique</i></div>';
	if ($bgh == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Chasseur de gros gibier</i></div>';
	echo '<div style="text-align:left; width:100%; font-size:10pt; padding: 8px;">Entre parenthèses figurent les statistiques de base de la créature, lesquelles sont modifiées par le héros, le terrain, la province, etc.</div>
	</div>';
	
	echo '
	</td></tr>
	<tr><td colspan="4" class="cadrebottom"></td></tr>
	</tbody></table>
	&nbsp;
	</body>
	</html>';
}
else
{
	$nom = $_SESSION['nom'];
	$qtee = ((isset($_POST['qtee']))&&(is_numeric($_POST['qtee']))) ? max(0, round($_POST['qtee'])) : 0;
	$qtee_renvoi = ((isset($_POST['qtee_renvoi']))&&(is_numeric($_POST['qtee_renvoi']))) ? max(0, round($_POST['qtee_renvoi'])) : 0;
	$action_recruter = false;
	$action_renvoyer = false;
	$id = 0;
	if ((isset($_POST['recrutement']))&&(is_numeric($_POST['recrutement']))) {
		if (isset($_POST['RecruteBtn'])) {
			$action_recruter = true;
		} else if (isset($_POST['RenvoiBtn'])) {
			$action_renvoyer = true;
		}
		$id = $_POST['recrutement'];
	} else {
		exit("Tu connais la blague du déménagement ?<br>Non? Pourtant elle a fait un carton !");
	}
		
	include("connect.php");
	include_once("calcul_bonus_recrutement.php");
	
	$mana_consommation = calcul_bonus_conso_magie_recr($nom);
	
	// Nouveau modificateur aux prix: ne prend pas en compte le bat spé charisme et le bonus des objets équipés depuis moins de 24h
	$mod_charisme = calcul_mod_cout_creas($nom);
	
	$req = mysql_query("SELECT nom, pvs, cout_argent, cout_mana FROM creatures WHERE id = '".$id."'") or die('Erreur SQL !<br>'.mysql_error());
	if (mysql_num_rows($req) != 1) exit("Que fait une fraise sur un cheval ?<br><i>Tagada.. Tagada...");
	$data = mysql_fetch_row($req);
	$creature = $data[0];
	$pvs = $data[1];
	$argent = $data[2];
	$mana = $data[3];
	
	$req = mysql_query("SELECT `".$id."` FROM `joueurs_créatures_id` WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$dispo = $data[0];
	$req = mysql_query("SELECT `".$id."` FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$batiment = ($data[0] != '0') ? true : false ;
	
	$req = mysql_query("SELECT niveau, mana, argent FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau = $data[0];
	$mana_dispo = $data[1];
	$argent_dispo = $data[2];
	$req = mysql_query("SELECT pvstotal FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$pvstotal = $data[0];
	
	$req = mysql_query("SELECT * FROM `joueurs_créatures` WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$deja_recrutees = $data[$id];
	
	if ($action_recruter) {	
		$cout_argent = ceil($qtee * $argent * $mod_charisme);
		$cout_mana   = ceil($qtee * $mana * $mana_consommation);
		$nb_stacks = 0;
		for ($i=6;isset($data[$i]);$i++) {
			if ($data[$i] > 0 && $i != $id) {
				$nb_stacks++;
			}
		}
		
		// Contrôles avant le recrutement proprement dit
		$texte = '';
		if ($nb_stacks >= 12)
			$texte = "Vous ne pouvez recruter plus de 12 types de créatures différentes.";
		if ($cout_argent > $argent_dispo)
			$texte = "Vous ne possédez pas suffisamment d\'or.";
		if ($cout_mana > $mana_dispo)
			$texte = "Vous ne possédez pas suffisamment de points de magie.";
		if ($dispo < $qtee)
			$texte = "Il n\'y a pas suffisamment de créatures disponibles.";
		if (!$batiment)
			$texte = "Vous ne possédez pas le bâtiment nécessaire.";
		if ($texte == '')
		{
			// pas d'erreur, on recrute la créature
			$pvstotal += $pvs * $qtee;
			$sql = "UPDATE `joueurs_créatures` SET `".$id."` = `".$id."` + '".$qtee."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$sql = "UPDATE `joueurs_créatures_id` SET `".$id."` = `".$id."` - '".$qtee."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$sql = "UPDATE `joueurs_stats` SET `argent` = `argent` - '".$cout_argent."', `mana` = `mana` - '".$cout_mana."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
	} else if ($action_renvoyer) {
		// Contrôles avant de renvoyer
		$texte = '';
		if ($deja_recrutees < $qtee_renvoi)
			$texte = "Il n\'y a pas suffisamment de créatures à renvoyer.";
		if ($texte == '')
		{
			// Pas d'erreur, on renvoie les troupes
			$pvstotal -= $pvs * $qtee_renvoi;
			$sql = "UPDATE `joueurs_créatures` SET `".$id."` = `".$id."` - '".$qtee_renvoi."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$sql = "UPDATE `joueurs_créatures_id` SET `".$id."` = `".$id."` + '".floor($qtee_renvoi/2)."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
	}
		
	// On met à jour pvs et puissance
	$sql = "UPDATE `joueurs_modificateurs` SET `pvstotal` = '".$pvstotal."' WHERE nom = '".$nom."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	include_once("puissance.php");
	maj_puissance($nom);
	
	if ($texte == '')
	{
		echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onLoad="setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
	} else {
		echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onload="alert(\''.$texte.'\'); setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">'.$texte.'</body></html>';
	}
	
	mysql_close();
}
