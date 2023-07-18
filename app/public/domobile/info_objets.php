<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}
function terminepage ($texte, $close=true)
{
	if ($close)
	{
		if ($texte == "")
		{
			echo '<script typ="text/javascript">setTimeout(\'self.close()\',0);</script>';
		}
		else
		{
			echo '<script typ="text/javascript">alert(\''.str_replace("'", "\'", $texte).'\'); setTimeout(\'self.close()\',0)</script>';
		}
	}
	exit;
}


include("connect.php");
include ("info_objets_include.php");

$ou_quoi = array(
	// 'Consommable'
	'cou' => array('Amulette'),
	'doigt01' => array('Anneau'),
	'doigt02' => array('Anneau'),
	'pieds' => array('Bottes'),
	'arme' => array('Bâton', 'Dague', 'Épée', 'Hache', 'Arc', 'Arbalète', 'Masse'),
	'bouclier' => array('Bouclier'),
	'corps' => array('Armure'),
	'tête' => array('Heaume'),
	'dos' => array('Cape'),
	'mains' => array('Gants'),
	'taille' => array('Ceinture'),
	'accessoire01' => array('Accessoire'),
	'accessoire02' => array('Accessoire'),
	'accessoire03' => array('Accessoire')
);


$item  = ((isset($_REQUEST['item'])) &&(is_numeric($_REQUEST['item'])))  ? round($_REQUEST['item'])  : '';
$item2 = ((isset($_REQUEST['item2']))&&(is_numeric($_REQUEST['item2']))) ? round($_REQUEST['item2']) : '';
$action = (isset($_REQUEST['action'])) ? $_REQUEST['action'] : $_GET['action'];

$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];

$req = mysql_query("SELECT `cha`, `niveau`, argent FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$charisme = $data[0];
$niveau = $data[1];
$argent = $data[2];
$req = mysql_query("SELECT `6` FROM joueurs_aptitudes WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$artisanat = $data[0];

if($_GET['coffre'] != 1)
{
	if ((($item == '')||($item <= 0)))
		terminepage ('Cet objet n\'existe pas.');
	else
	{
		$obj_data = retourne_carac_objet ($item);
		if ($obj_data == false)
			terminepage ('Cet objet n\'existe pas en Kalamaï.');
	}
}else{

		$obj_data = retourne_carac_objet ($item);
}

$amelioration_en_cours = false;
// localisation de l'objet
$jobjet = -1;
$req = mysql_query("SELECT * FROM joueurs_objets WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$slotobj = mysql_fetch_assoc($req);
for ($i=1; isset($slotobj[$i]); $i++) {
	if ($slotobj[$i] == $item) {
		$jobjet = $i;
	}
	$en_cours_data = retourne_carac_objet($slotobj[$i]);
	if ($en_cours_data['fin_amelioration'] > (time()/60)) {
		$amelioration_en_cours = true;
	}
}
$jinvent = -1;
$req = mysql_query("SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, dos, mains, taille, accessoire01, accessoire02, accessoire03 FROM joueurs_inventaire WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$slotinv = mysql_fetch_assoc($req);
foreach ($slotinv AS $ou => $quoi) {
	if ($quoi == $item) {
		$jinvent = $ou;
	}
}

$accessoires_equipes = array();
// Liste des accessoires déjà équipés et qu'on ne peut donc plus équiper (pas de doublon au niveau des accessoires portés)
if ($slotinv['accessoire01'] != 0) {
	$accessoire1 = retourne_carac_display_objet($slotinv['accessoire01']);
	$accessoires_equipes[] = $accessoire1['base'];
}
if ($slotinv['accessoire02'] != 0) {
	$accessoire2 = retourne_carac_display_objet($slotinv['accessoire02']);
	$accessoires_equipes[] = $accessoire2['base'];
}
if ($slotinv['accessoire03'] != 0) {
	$accessoire3 = retourne_carac_display_objet($slotinv['accessoire03']);
	$accessoires_equipes[] = $accessoire3['base'];
}



// page par défaut
if ($action == '')
{
	$actionequipe = false;
	$actionenleve = false;
	$actionpermu1 = false;
	$actionpermu2 = false;
	$actiondetrui = false;
	$actionvendre = false;
	$actionutlamel= false;
	$actionamelior= false;
	
	$actionpermu2txt = '';
	
	$equipabletxt = '';
	$equipable = (estEquipable ($obj_data, $classe, $charisme)) ? true : false;
	if (!$equipable) {
		$equipabletxt .= 'Votre classe n\'a pas accès à cet objet';
	}
	if ($niveau < $obj_data['niv'])
	{
		if ($equipable) {
			$equipable = false;
		} else {
			$equipabletxt .= '.<br />';
		}
		$equipabletxt .= 'Vous n\'avez pas le niveau requis pour porter cet objet';
	}
	$permutables = array();
	
	$is_ameliored = false;
	// Si l'objet est en cours d'amélioration on ne peut rien faire avec
	if ($obj_data['fin_amelioration'] > 0) {
		$is_ameliored = true;
	} else {
		// ou est-il? existe? inventaire? équipé?
		if ($jobjet > -1)
		{
			if ($obj_data['vendable'] != 0)
				$actionvendre = true;
			// si on peut l'équiper
			$location = '';
			if ($equipable)
			{
				// ya un tit bordel puisque si deux emplacements sont utilisables par l'objet, faut les vérifier les 2
				if ($obj_data['type'] == 'Consommable') {
					$actionequipe = true;
				} else if (!in_array($obj_data['base'], $accessoires_equipes)) {
					foreach ($ou_quoi AS $ou => $quoi)
					{
						if (in_array($obj_data['type'], $quoi))
						{
							if ($slotinv[$ou] == 0) {
								$actionequipe = true;
							}
							$item_equipe_sur_slot_correspondant = retourne_carac_display_objet($slotinv[$ou]);
							// Si ce n'est pas un accessoire et que l'item équipé n'est pas maudit, on permet la permutation
							if ($quoi[0] != 'Accessoire' && $item_equipe_sur_slot_correspondant['maudit'] == 0)
							{								
								$actionpermu2 = true;
								$permutables[] = $item_equipe_sur_slot_correspondant;
							}
							// surtout pas de break (anneaux, acceesoires)
						}
					}
					if ($actionequipe)
						$action_permu2 = false;
				}
			}
			// L'objet est améliorable si le joueur possède des points d'artisanat, qu'il n'a pas une autre amélioration en cours et que l'objet n'est pas déjà amélioré
			if (($artisanat > 0) && (!$amelioration_en_cours) && ($obj_data['bonus'] == 0)) {
				$actionamelior = true;
			}
		}
		if ((!$actionequipe)&&(!$actionpermu2))	// si l'objet est pas dans les objets non utilisés
		{
			if ($jinvent > -1)
			{
				if ($obj_data['type'] == 'Accessoire' || $obj_data['maudit'] == 1) {
					$actiondetrui = true;
				} else {
					$actionenleve = true;
					$actionpermu1 = true;
					// liste des objets permutables
					for ($j=1; isset($slotobj[$j]); $j++)
					{
						$tmp = retourne_carac_objet($slotobj[$j]);
						if (in_array($tmp['type'], $ou_quoi[$jinvent]) && $tmp['fin_amelioration'] == 0)
							if ((estEquipable($tmp, $classe, $charisme))&&($niveau >= $tmp['niv']))
								$permutables[] = $tmp;
					}
				}
			}
		}
	}

	
	echo '	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
		<html>
		<head>
			<title>'.$obj_data['nom'].'</title>
			<link rel="stylesheet" type="text/css" href="style_divers.css" />
			<script type="text/javascript" src="fonctions/changement_image.js"></script>
			<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
			<meta name="keywords" content="objet, '.$obj_data['type'].', '.$obj_data['nom'].', objet, inventaire, accessoires, armes, equipement, équipement, armure, amulette, epee">
		</head>
		<body class="bodypopup" marginheight=0 marginwidth=0>
		<br>
		<div align="center">
		<table class="cadretablepopup">
		<tr>	<td colspan="3" class="cadretopleft"></td>
			<td rowspan="2" class="cadretopright"></td></tr>
		<tr>	<td class="cadremiddleleft"></td>
			<td colspan="2" class="cadrecontenupopupc">
		<b>'.$obj_data['nom'].'</b></b><br>&nbsp;
		<table class="discr100"><tbody>
		<tr>	<td class="discr100img">';
	echo affiche_image_objet ($obj_data['nom'], $obj_data['image'], '', 100, 0);
	echo 	'</td><td>Type : '.$obj_data['type'].'<br>Niveau '.$obj_data['niv'].'<br><br>';
	if ($obj_data['type'] == 'Consommable') {
		echo affiche_effet_consommable($obj_data);
	} else if (!$is_ameliored) {
		echo liste_bonus ($obj_data);
	}
	echo '</td></tr></table><table class="objaction">';

	// Si l'objet est en cours d'amélioration on ne peut rien faire avec
	if ($is_ameliored) {
		$tps_amel_restant = $obj_data['fin_amelioration'] - time()/60;
		$jours_amel_restant = floor($tps_amel_restant / 1440);
		$heures_amel_restant = floor(($tps_amel_restant % 1440) / 60);
		$minutes_amel_restant = round($tps_amel_restant - $jours_amel_restant * 1440 - $heures_amel_restant * 60 - 1);
		echo '<tr><td colspan="2"><b><font color="purple">Cet objet est en cours d\'amélioration !</font></b>';
		echo "<br>Fin de l'amélioration dans $jours_amel_restant jours, $heures_amel_restant heures et $minutes_amel_restant minutes.";
	} else {
		// Si l'objet est dans le coffre
		if($jinvent == -1 && $jobjet == -1 && (int)$_GET['coffre'] == 1)
		{
			include "info_coffre_include.php";
			if(!trouverobjet($_SESSION['id'], $item))
				terminepage('Vous ne possédez pas cet objet.');
			echo '	<form method="post" action="info_objets.php?coffre=1"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="outcoffre"><input type="hidden" name="etape" value="1">
				<tr>	<td>Sortir du coffre</td>
					<td class="submit"><input type="submit" value="A l\'inventaire"></td>
				</tr></form>';
			echo '&nbsp;</td></tr></tbody></table></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></body></html>';
			exit;
		}
		// si l'objet est équipé
		if ($actionenleve)
		{
			echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="enlever">
				<tr>	<td><b>Enlever l\'objet</b></td>
					<td class="submit"><input type="submit" value="Enlever"></td>
				</tr></form>';
		}
		if ($actiondetrui) {
			echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="detruire">
				<tr>	<td><b>Détruire l\'objet</b></td>
					<td class="submit"><input type="submit" value="Détruire"></td>
				</tr></form>';
		}
		if (($actionpermu1)&&(sizeof($permutables)>0))
		{
			echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="permuter1">
				<tr>	<td>Permuter l\'objet avec ';
			if (sizeof($permutables)==1)
				echo '<b>'.$permutables[0]['nom'].'<input type="hidden" name="item2" value="'.$permutables[0]['item'].'"></b>';
			else
			{
				echo '<select name="item2"><option value="0">Choisir un objet...</option>';
				foreach ($permutables AS $obj_data2)
					echo '<option value="'.$obj_data2['item'].'">'.$obj_data2['nom'].'</option>';
				echo '</select>';
			}
			echo '	<td class="submit"><input type="submit" value="Permuter"></td>
				</tr></form>';
		}
		
		// si l'objet est pas équipé
		if ($equipable)
		{
			if ($actionequipe)
			{
				$equipersubmit = ($obj_data['type'] == 'Consommable') ? 'Consommer' : 'Équiper';
				echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="equiper">
					<tr>	<td><b>'.$equipersubmit.' l\'objet</b></td>
						<td class="submit"><input type="submit" value="'.$equipersubmit.'"></td>
					</tr></form>';
			}
			if (($actionpermu2)&&(sizeof($permutables)>0))
			{
				echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="permuter2">
					<tr>	<td><b>Permuter l\'objet</b> avec ';
				if (sizeof($permutables)==1)
					echo '<b>'.$permutables[0]['nom'].'<input type="hidden" name="item2" value="'.$permutables[0]['item'].'"></b>';
				else
				{
					echo '<select name="item2">';
					foreach ($permutables AS $obj_data2)
						echo '<option value="'.$obj_data2['item'].'">'.$obj_data2['nom'].'</option>';
					echo '</select>';
				}
				echo '	</td><td class="submit"><input type="submit" value="Permuter"></td>
				</tr></form>';
			}
		}
		else if ($item != '')
		{
			echo '<tr><td colspan="2"><i>Cet objet ne peut pas être équipé.</i>';
			if (strlen($equipabletxt)>0)
				echo '<br>('.$equipabletxt.')';
			echo '</td></tr>';
		}
		
	if ($actionvendre)
		{
			include("temps_ecoulement.php");
			// Mise aux enchères sur le marché
			echo '	<form method="post" action="info_vente.php"><input type="hidden" name="vente" value="'.$item.'">
				<tr>	<td>Mettre l\'objet aux enchères<br>
					Mise à prix: <input type="text" name="prix" size="9"><input type="hidden" name="qtee" value="1"><br>
					Durée de l\'enchère: <select  name="temps" size=1><br>
					<option selected value="0">Choisir...</option>';
			if ($obj_data['bonus'] == 0) {
				echo '
					<option value="'. $duree_jour     .'">'.round(24/$temps_ecoulement).'h</option>';
			}
			echo '
					<option value="'.($duree_jour*2)  .'">'.round(48/$temps_ecoulement).'h</option>
					</select></td>
				<td class="submit"><input type="submit" value="Mettre aux enchères"></td>
				</tr></form>';
			// Vente au système
			echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="vendre"><input type="hidden" name="etape" value="1">
				<tr>	<td>Vendre l\'objet</td>
					<td class="submit"><input type="submit" value="Vendre"></td>
				</tr></form>';
		}

		
		if ($actionamelior)
		{
			echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="action" value="ameliorer"><input type="hidden" name="etape" value="1">
				<tr>	<td>Améliorer l\'objet</td>
					<td class="submit"><input type="submit" value="Améliorer"></td>
				</tr></form>';
		}
		include "info_coffre_include.php";
		if ($jobjet > -1 && $artisanat>0 && possedeobjetcoffre($_SESSION['id']) < ($artisanat/10))
		{
			echo '	<form method="post" action="info_objets.php"><input type="hidden" name="item" value="'.$item.'"><input type="hidden" name="place" value="'.$jobjet.'"><input type="hidden" name="action" value="incoffre"><input type="hidden" name="etape" value="1">
				<tr>	<td>Mettre l\'objet dans le coffre</td>
					<td class="submit"><input type="submit" value="Au coffre"></td>
				</tr></form>';
		}
	}	
	
	echo '&nbsp;</td></tr></tbody></table></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></body></html>';
	exit;
}

// EQUIPER
if ($action == 'equiper')
{
	$texte = "";
	if ($niveau >= $obj_data['niv'])
	{
		if (estEquipable ($obj_data, $classe, $charisme))
		{
			$texte = "Aucun objet de ce type ne vous appartient.";
			if ($jobjet > -1)
			{
				$texte = '';
				$succes = false;
				// l'objet est équipable. Ya de la place?
				if ($obj_data['type'] == 'Consommable')
				{
					utilise_consommable ($nom, $item);
					include_once ("maj_or_mana.php");
					maj_or_mana($nom);
					$succes = true;
				} else {
					// ya un tit bordel puisque si deux emplacements sont utilisables par l'objet, faut les vérifier les 2
					foreach ($ou_quoi AS $ou => $quoi)
					{
						if (in_array($obj_data['type'], $quoi))
						{
							$req = mysql_query("SELECT `".$ou."` FROM joueurs_inventaire WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
							$slot = mysql_fetch_row($req);
							if ($slot[0] == 0)
							{
								$succes = true;
								inventaire2equiper ($nom, $jobjet, $item, $ou);
								objetchangemodificateurs ($obj_data, $nom, '+');
								break;
							}
						}
					}
				}
				if (!$succes)
					$texte = "Vous n'avez pas la place pour équiper cet objet!";
			}
		}
		else	$texte = 'Les '.$classe.'s ne peuvent porter ce type d\'objet.';
	}
	else	$texte = 'Il faut être au moins niveau '.$obj_data['niv'].' pour espérer pouvoir porter cet objet.';
	
	terminepage ($texte);
}
// FIN D'ÉQUIPER

// PERMUTER
if (($action == 'permuter1')||($action == 'permuter2'))
{
	$texte = '';
	$obj1 = false;
	$obj2 = false;
	// on scanne les objets équipés et pas équipés, $ la recherche de item et item2
	$locations = array();	// liste des endroits ou l'objet peut être connaissant le type de l'objet non équipé. sert de sécurité en même temps.
	for ($i=1; isset($slotobj[$i]); $i++)
	{
		if (($slotobj[$i] == $item)||($slotobj[$i] == $item2))
		{
			$obj1 = retourne_carac_objet ($slotobj[$i]);
			$location1 = $i;
			foreach ($ou_quoi AS $ou => $quoi)
			{
				if (in_array($obj1['type'], $quoi))
					$locations[] = $ou;
			}
			break;
		}
	}
	if (sizeof($locations) > 0)
	{
		foreach ($locations AS $ou)
		{
			$quoi = $slotinv[$ou];
			if ((($quoi == $item)||($quoi == $item2)) && ($quoi != $obj1['item']))
			{
				$obj2 = retourne_carac_objet($quoi);
				$location2 = $ou;
				break;
			}
		}
		// on les a trouvés; si l'objet est équipable, si tout blablabla, on les permutte
		if (($obj1 != false)&&($obj2 != false))
		{
			if ($niveau >= $obj1['niv'])
			{
				if (estEquipable ($obj1, $classe, $charisme))
				{
					equiperSWAPinventaire ($nom, $location1, $location2);
					objetchangemodificateurs ($obj1, $nom, '+');
					objetchangemodificateurs ($obj2, $nom, '-');
				}
				else	$texte = 'Votre classe ne vous permet pas d\'équiper cet objet.';
			}
			else	$texte = 'Vous ne possédez pas le niveau pour équiper cet objet.';
		}
		else	$texte = 'Vous ne possédez pas ces objets.';
	}
	else	$texte = 'Vous ne possédez pas cet objet.';
	
	terminepage ($texte);
}
// FIN PERMUTER

// ENLEVAGE
if ($action == 'enlever')
{
	// on commence par trouver l'objet
	$texte = "Aucun objet de ce type ne vous appartient.";
	if ($jinvent > -1)
	{
		$texte = 'Vous n\'avez pas de place libre dans votre inventaire!';
		// on doit trouver une place libre dans l'inventaire maintenant!
		for ($i=1; isset($slotobj[$i]); $i++)
		{
			if ($slotobj[$i] == 0)
			{
				$texte = '';
				equiper2inventaire ($nom, $i, $item, $jinvent);
				objetchangemodificateurs ($obj_data, $nom, '-');
				break;
			}
		}
	}
	
	terminepage ($texte);
}
// FIN ENLEVAGE

// DESTRUCTION (accessoires équipés)
if ($action == 'detruire')
{
	// on commence par trouver l'objet
	$texte = "Aucun objet de ce type ne vous appartient.";
	if ($jinvent > -1)
	{
		$texte = '';
		equiper2destroy ($jinvent, $nom);
		objetchangemodificateurs ($obj_data, $nom, '-');
	}
	
	terminepage ($texte);
}

// AMELIORATION
if ($action == 'ameliorer')
{
	// amélioration de l'objet
	$temps_fin_amelioration = floor(time()/60) + (3.5 * 24 * 60);
	$bonus_min = (45 - $obj_data['niv']) * $artisanat / 100;
	$bonus_max = (70 - $obj_data['niv']) * $artisanat / 100;
	$bonus_amelioration = mt_rand($bonus_min, $bonus_max) / 100;
	$req = mysql_query("UPDATE `objets_items` SET `fin_amelioration` = $temps_fin_amelioration, `bonus` = $bonus_amelioration WHERE id = '".$item."'") or die('Erreur SQL !<br>'.mysql_error());

	terminepage ($texte);
}
// FIN D'AMELIORATION

// VENDRE AU SYSTEME
if ($action == 'vendre')
{
	$prix_vente_insta = $obj_data['niv'] * 2000;
	$req = mysql_query("SELECT joueurs_aptitudes.`21` , joueurs_stats.cha FROM joueurs_stats INNER JOIN joueurs_aptitudes ON joueurs_stats.id = joueurs_aptitudes.id WHERE joueurs_stats.nom = '".$nom."'") or die(mysql_error());
	$data = mysql_fetch_row($req);
	$commerce = $data[0];
	$charisme = $data[1];
	$taxetaux = ((0.1*log10($prix_vente_insta))) * (1 - $commerce/150) * (1 - $charisme/750);
	$taxe = max(0, round($prix_vente_insta * $taxetaux));
	$texte = "";
	$etape = ((isset($_REQUEST['etape']))&&($_REQUEST['etape']==2)) ? $_REQUEST['etape'] : 1;
	if ($jobjet > -1) {
		if ($etape == 1)
		{
			echo '
			<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
			<html>
			<head>
				<title>'.$obj_data['nom'].'</title>
				<link rel="stylesheet" type="text/css" href="style_divers.css" />
				<script type="text/javascript" src="fonctions/changement_image.js"></script>
				<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
				<meta name="keywords" content="objet, '.$obj_data['type'].', '.$obj_data['nom'].'">
			</head>
			<body class="bodypopup" marginheight=0 marginwidth=0>
			<br>
			<div align="center">
			<table class="cadretablepopup"><tbody>
			<tr>	<td colspan="3" class="cadretopleft"></td>
				<td rowspan="2" class="cadretopright"></td></tr>
			<tr>	<td class="cadremiddleleft"></td>
				<td colspan="2" class="cadrecontenupopupc">
			<b>'.$obj_data['nom'].'</b></b><br>&nbsp;
			<table class="discr100"><tbody>
			<tr>	<td class="discr100img">';
			echo affiche_image_objet ($obj_data['nom'], $obj_data['image'], '', 100, 0);
			echo 	'</td><td style="text-align:center;"><br>
			<strong>ATTENTION !</strong><br><br>
			Voulez-vous réellement vendre cet objet pour '.$prix_vente_insta.' ? (Taxe: '.$taxe.')<br><br>
			Vous ne pourrez en reprendre possession par la suite.<br><br>
			<form method="post" action="info_objets.php">
			<input type="hidden" name="item" value="'.$item.'">
			<input type="hidden" name="action" value="vendre">
			<input type="hidden" name="etape" value="2">
			<input type="submit" value="Vendre">
			</form><br>&nbsp;
			</td></tr></tbody></table></td></tr>
			<tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></body></html>';
			exit();
		} else if ($etape == 2) {
			inventaire2detroy($nom, $item);
			detruire_objet ($item);
			mysql_query("UPDATE `joueurs_stats` SET `argent` = `argent` + $prix_vente_insta - $taxe WHERE nom = '$nom'") or die(mysql_error());
			$texte = '';
		}
	} else {
		$texte = 'Vous ne possédez pas cet objet !';
	}
	
	terminepage($texte);
}
// FIN VENDRE AU SYSTEME

// COFFRE : on met l'objet de l'inventaire dans le coffre
if($action == 'incoffre')
{
	include "info_coffre_include.php";
	if(!inventaire2coffre((int)$_SESSION['id'], (int)$_POST['place']))
		$texte = 'L\'objet n\'a pu être placé dans votre coffre... Vérifiez qu\'il reste de la place dedans.';
	
	terminepage ($texte);
}
if($action == 'outcoffre' && (int)$_GET['coffre'] == 1 && $jinvent == -1 && $jobjet == -1)
{
	include "info_coffre_include.php";
	if(!trouverobjet($_SESSION['id'], $item))
		terminepage('Vous ne possédez pas cet objet.');
	if(!coffre2inventaire($_SESSION['id'], $item))
		$texte = 'Vous n\'avez pas réussi à sortir l\'objet du coffre... Vérifiez que vous avez une place libre dans l\'inventaire.';
		
	terminepage($texte);
}
if($action == 'agrandircoffre' && (int)$_GET['coffre'] == 1)
{
	$req = mysql_query('SELECT joueurs_bonus.objets_casses, COUNT(joueurs_coffre.id), joueurs_aptitudes.`6`
						FROM joueurs_bonus
						LEFT JOIN joueurs_coffre ON joueurs_bonus.id = joueurs_coffre.joueur_id
						LEFT JOIN joueurs_aptitudes ON joueurs_bonus.id = joueurs_aptitudes.id
						WHERE joueurs_bonus.id = '.$_SESSION['id'].' GROUP BY joueurs_aptitudes.id') or die(mysql_error());
	$dat = mysql_fetch_row($req);
	if(($dat[2] >= 75) && (((($dat[1] / 4) + 1) * 100) <= $dat[0]))
	{
		mysql_query('INSERT INTO joueurs_coffre (`joueur_id`) VALUES ('.$_SESSION['id'].'), ('.$_SESSION['id'].'), ('.$_SESSION['id'].'), ('.$_SESSION['id'].')') or die(mysql_error());
		echo afficher_coffre($_SESSION['id']);
	}
						
}


mysql_close();
?>
