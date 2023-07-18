<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---


include("connect.php");

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];


// récupération des variables
// Pour l'instantles les batiments usuels sont donnés en id et les bat spé en nom. Faudra changer les bat spé.
$batiment = urldecode(str_replace("\'","'",$_GET['batiment']));
if ((isset($_GET['terrain']))&&(in_array(strtolower($_GET['terrain']), array('riverain','colline','désert','forêt','arctique','marais','montagne','plaine','caverne'))))
	$terrain = strtolower($_GET['terrain']);
else	die ('Deux femmes qui discutent :<br>- Et votre bébé, comment va-t-il ?<br>- Très bien! Il marche depuis deux mois.<br>- Ho ! hé bien, il doit être loin à l\'heure qu\'il est...');
		
$type = ((isset($_GET['type']))&&(in_array($_GET['type'], array(2,3)))) ? $_GET['type'] : 1;


// mode d'affichage
if ((!isset($_GET['interface']))||($_GET['interface']!="creature"))
{
	$interface = "batiment";
	$linkinterface = "creature";
}
else
{
	$interface = "creature";
	$linkinterface = "batiment";
}
if ($type == 3)
	$interface = 'batspe';

// Contrôle des bâtiments interdits: Antres des la Fourberie, Ranch de Walker, etc.
if (($type==1)||($type==2))
{
	if (is_numeric($batiment))
	{
		$id = $batiment;
		$req = mysql_query("SELECT batiment, raciale FROM creatures WHERE id = '".$id."' AND constructible = '1'") or die('Erreur SQL !<br>'.mysql_error());
		$dat = mysql_fetch_row($req);
		$batiment = $dat[0];
		$raciale = $dat[1];
	}
	else
	{
		$req = mysql_query("SELECT id FROM creatures WHERE batiment = '".addslashes($batiment)."' AND constructible = '1'") or die('Erreur SQL !<br>'.mysql_error());
		$dat = mysql_fetch_row($req);
		$id = $dat[0];
	}
	if (mysql_num_rows($req) == 0 || ($raciale && strtolower(preg_replace('/(.*)[ ]+[^\w][ ]+(.*?)$/i','$2',$batiment)) != strtolower($race) ))
		exit("Mon petit lapin a bien du chagrin,<br />\nIl ne saute plus dans son p'tit jardin.<br />\nSaute saute saute mon petit lapin,<br />\nSaute saute saute et choisis quelqu'un!<br /><br /><img src=\"Aro/pingouin_easter.jpg\" />");
}

function linktobatiment ($parambatiment, $texte, $interface='')
{
	global $terrain, $type;
	if ($interface!='')
		$interface = '&amp;interface='.$interface;
	return '<a href="construire.php?type='.$type.'&amp;batiment='.$parambatiment.'&amp;terrain='.$terrain.$interface.'">'.$texte.'</a>';
}

// détermination du nombre de sorts pour cette tour; à faire avant le début de l'affichage de la page
$new = true;
$destroyable = false;
if ($type == 2)
{
	$req = mysql_query("SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	$dejaConstruit = strtolower($data[$id]);
	$new = ($dejaConstruit=='0') ? true : false;
	$destroyable = (($id==5)||($data[($id+1)]=='0')) ? true : false;
	if ((!$new) && ($dejaConstruit != $terrain))
	{
		echo '|'.$dejaConstruit.'|'.$terrain.'|';
		exit();
	}
	
	include ("construire_magie_include.php");
	
	$rowspan = 4 + $nombre;
}

echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.$batiment.'</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
	<script language="javascript" src="fonctions/affichecache.js"></script>
';
if ($type == 2)
{
	echo '
	<script language="javascript">
	<!--
	</script>
	<style type="text/css">
	table#tableSorts td
	{
		padding-right: 5px;
	}
	</style>
	';
}

echo '
</head>
<body marginheight=0 marginwidth=0 class="bodypopup">
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td class="cadretopleft"  colspan="3"></td>
	<td class="cadretopright" rowspan="2"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td class="cadrecontenupopupc"  colspan="2">
';

$display = array();

// divers modificateurs
$req = mysql_query("SELECT `".$terrain."` FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$mod_terrain = $data[0];
$req = mysql_query("SELECT cha FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$mod_charisme =  2 / pow(($data[0] + 20), 1/5);
$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$jbonus = mysql_fetch_assoc($req);
if ($jbonus['province'] != 'Aucune') {
	$sql = "SELECT politiques_effets.batiments + ( batiment_province.niveau /100 ) AS prov_batiment FROM politiques_effets INNER JOIN batiment_province WHERE politiques_effets.politique = '".$jbonus['politique']."' AND batiment_province.province = '".$jbonus['province']."' AND batiment_province.nom = 'Etude d''architecte'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$mod_province = $data[0];


	if ($type != 3)
	{
		// batiment normal ou tour de magie
		$submit = true;
		$req = mysql_query("SELECT id, niveau, nom, cout_batiment, nombre, espace, type, att, def, ini, end, pvs, min, max, vol, `range`, cout_argent, cout_mana, image, att_mag, raciale, bgh FROM creatures WHERE id = '".$id."' AND constructible = '1'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$id = $data[0];
		$niv = $data[1];
		$creature = ($data[2] == '') ? 'N/A' : $data[2];
		$cout = ceil($data[3] / $mod_terrain / $mod_province * $mod_charisme);
		$cr_jour = ($data[4] == '0') ? 'N/A' : $data[4];
		$espace = ceil($data[5] / $mod_terrain / $mod_province);
		$typ_ = $data[6];
		$att = $data[7];
		$def = $data[8];
		$ini = $data[9];
		$end = $data[10];
		$pvs = $data[11];
		$min = $data[12];
		$max = $data[13];
		$vol = $data[14];
		$range = $data[15];
		$cout_or = $data[16];
		$cout_mana = $data[17];
		$image = $data[18];
		$att_mag = $data[19];
		$raciale = $data[20];
		$bgh = $data[21];

		
		if ($type == 1)
			$rowspan = 12;
	}
	if ($type == 3)
	{
		include ('batimentspec_include.php');
		foreach ($batspe AS $id => $data)
		{
			if ($data['nom'] == $batiment)
			{
				$id_ = $id;
				$espace = 0;
				$cout = $data['cout_or'];
				$image = 'images/special/'.$data['image'];
				$branch = $data['branche'];
				
				// complétion du tableau de données principal
				$sql1 = "SELECT `btxt1`, `bnum1`, `bfloat1`, `btxt2`, `bnum2`, `bfloat2` FROM `$tableBatSpe` WHERE `id` = '$id'";
				$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.mysql_error());
				$dat1 = mysql_fetch_assoc($req1);
				foreach ($dat1 AS $key => $value)
					$batspe[$id][$key] = $value;
				
				// prérequis
				$requis = '';
				if ($data['requis'] != '')
				{
					foreach (explode(',', $data['requis']) AS $j)
					{
						$requis .= linktobatiment ($batspe[$j]['nom'], $batspe[$j]['nom']);
						if ($batspe[$j]['branche'] != $branch)
							$requis .= ' (branche '.$branche[$batspe[$j]['branche']].')';
						$requis .= ', ';
					}
					$requis = substr($requis, 0, strlen($requis)-2);
				}
				if ($requis == '')
					$requis = '<i>Aucun</i>';
				if (substr_count($requis, ','))
					$requis .= ' <i>(un seul nécessaire)</i>';
				// bâtiment libérés
				$donne = '';
				foreach ($batspe AS $j => $dat1)
				{
					$req = $batspe[$j]['requis'];
					foreach (explode(',', $req) as $i)
						if ($i == $id)
					{
						$donne .= linktobatiment ($batspe[$j]['nom'], $batspe[$j]['nom']);
						if ($batspe[$j]['branche'] != $branch)
							$donne .= ' (branche '.$branche[$batspe[$j]['branche']].')';
						$donne .= ', ';
					}
				}
				$donne = substr($donne, 0, strlen($donne)-2);
				if ($donne == '')
					$donne = '<i>Aucun</i>';
				
				$lvl = $batSpeConstr[$id];
				$construit = ($lvl==0) ? 'Non' : $lvl.' f2ois';
				$bonus = getTxt ($id, $lvl+1);
				$bonusact = getTxt ($id, $lvl);
				$bonus0 = getTxt ($id, 1);
				// est-il possible de le construire (au sens des autres bâtiments requis)
				$submit = false;
				if (($nbrBatSpe < $nbrBatAuth) || ($niveau + ($nbrBatAuth-$nbrBatSpe) < $nivRestriction))
				{
					if ($batspe[$id]['requis'] == '')
						$submit = true;
					else
					{
						foreach (explode (',', $batspe[$id]['requis']) AS $j)
							if ($batSpeConstr[$j] > 0)
								$submit = true;
					}
					if ($bonus == $bonusact)
						$submit = false;

				}
				$rowspan = 6;
			}
		}
		$id = $id_;
	}

	if ($type==2)
		$cout .= ' (variable)';

	mysql_close();

	if (!$new)
	{
		if ($destroyable)
			echo '<small>(<a href="detruire.php?type='.$type.'&id='.$id.'" style="text-decoration:underline;">Détruire ce bâtiment</a>)</small><br>';
		echo '<h4>Pièces d\'or : '.number_format($cout, 0, ",", " ").' | Acres : déjà fournies</h4>';
	}
	else if (($cout!=0)||($espace!=0))
		echo '<h4>Pièces d\'or : '.number_format($cout, 0, ",", " ").' | Acres : '.number_format($espace, 0, ",", " ").'</h4>';
	else
		echo 'Ce bâtiment ne coûte ni pièces d\'or, ni ne nécessite d\'acres pour sa construction.';

	echo '<br>&nbsp;
	<form method="get" action="construit_new.php">
	<table class="discr100"><tbody>
	<tr>	<td rowspan="'.$rowspan.'" class="discr100img">';
	if ($type==1)	echo linktobatiment ($id, '<img src="'.$image.'" width="100" height="100" alt="'.$batiment.'" border=1>', $linkinterface);
	else		echo '<img src="'.$image.'" width="100" height="100" alt="'.$batiment.'" border=1>';

	if ($type == 2)
	{
		// Tour de magie
		echo '	<td>Nom :		</td><td> '.$batiment.'</td></tr><tr>
			<td>Niveau :		</td><td> '.$lvl.'</td></tr><tr>
			<td>Terrain :		</td><td> '.$terrain.'<br></td></tr><tr>';
		// affichage du prix de la construction
		if (!$new) {
			$texte_cout = "";
			if ($nb_connus != $nombre) {
				$cout_prochain = round($prix_base + ($nb_connus) * $prix_base/2);
				$texte_cout .= "<br>Chaque nouveau sort appris coûte plus cher que le précédent. Le prochain sort vous coûtera $cout_prochain pièces d'or.";
			}
			if ($nb_connus > 0) {
				$cout_modif = round($prix_base + $prix_base/2 * ($nb_connus - 1));
				$texte_cout .= "<br>La modification d'un sort appris vous coûtera $cout_modif pièces d'or.";
			}
			echo '<td colspan="2"><small>Le nombre de sorts que vous pouvez apprendre dans cette tour de magie dépend de votre classe.'.$texte_cout.'</small><br><br>';
			echo '</td></tr>';
			// affichage des boîtes de sélection
			$j=0;
			echo '</tbody></table><table width="100%"><tbody><tr><td><b>Slot</b></td><td><b>Sort à apprendre</b></td><td><b>Sort connu</b></td></tr>';

			for ($i=0; $i<$nombre; $i++)
			{
				$ainkGod = "";
				echo '<tr><td nowrap>'.($i+1).'</td><td><select name="sort'.$i.'" id="sort'.$i.'">';
				echo '<option value="-1">Aucun changement</option>';
				foreach ($choix_complet AS $sort)
				{
					if ($connus[$i] == $sort['id']) {
						$ainkGod = $sort['nom'];
					} else {
						echo '<option value="'.$sort['id'].'">'.$sort['nom'].'</option>';
					}
				}
				echo '</select></td>'."\n";
				echo '<td nowrap>'.$ainkGod.'</td></tr>';
			}
		}
	}

	else if ($interface == "batiment")
	{
		// batiment nomral
		echo '	
			</tbody></table>

			<table class="discr100"><tbody>
			<th class="discr100center2th">Bâtiment</td></tr><tr>			
				<td class="discr100center2">Nom :		</td><td>'.$batiment.'</td></tr><tr>
				<td class="discr100center2">Créature :		</td><td>'.$creature.'</td></tr><tr>
				<td class="discr100center2">Niveau :		</td><td>'.$niv.'</td></tr><tr>
				<td class="discr100center2" nowrap>Créatures/jour :	</td><td>'.$cr_jour.'</td></tr><tr>
				<td class="discr100center2">Terrain :		</td><td>'.ucfirst($terrain).'</td></tr><tr>
				<td class="discr100center2">Coût (or) :		</td><td>'.number_format($cout_or, 0, ",", " ").'</td></tr>
				<td class="discr100center2">Coût (mana) :	</td><td>'.number_format($cout_mana, 0, ",", " ").'</td></tr>
			<th class="discr100center2th">Créature</td></tr><tr>	
				<td class="discr100center2">Type :		</td><td>'.$typ_.'</td></tr><tr>
				<td class="discr100center2">Niveau :		</td><td>'.$niv.'</td></tr><tr>
				<td class="discr100center2">Attaque :		</td><td>'.$att.'</td></tr><tr>
				<td class="discr100center2">Défense :		</td><td>'.$def.'</td></tr><tr>
				<td class="discr100center2">Initiative :	</td><td>'.$ini.'</td></tr><tr>
				<td class="discr100center2">Endurance :		</td><td>'.$end.'</td></tr><tr>
				<td class="discr100center2">Vitalité :		</td><td>'.$pvs.'</td></tr><tr>
				<td class="discr100center2">Dégâts :		</td><td>'.$min.' à '.$max.'</td></tr>';
		if ($raciale == 1)	echo '<td colspan="2" class="discr100center2"><i>Créature raciale</i></td></tr>';
		if ($vol == 1)		echo '<td colspan="2" class="discr100center2"><i>Créature volante</i></td></tr>';
		if ($range == 1)	echo '<td colspan="2" class="discr100center2"><i>Attaque à distance</i></td></tr>';
		if ($att_mag == 1)	echo '<td colspan="2" class="discr100center2"><i>Attaque magique</i></td></tr>';
		if ($bgh == 1) echo '<td colspan="2" class="discr100center2"><i>Chasseur de gros gibier</i></td></tr>';
	}
	else if ($interface == 'creature')
	{
		// batiment normal
		echo '	</tbody></table>

			<table class="discr100"><tbody>
			<th class"discr100center2">Bâtiment</td></tr><tr>			
				<td class="discr100center2">Nom :		</td><td>'.$batiment.'</td></tr><tr>
				<td class="discr100center2">Créature :		</td><td>'.$creature.'</td></tr><tr>
				<td class="discr100center2">Niveau :		</td><td>'.$niv.'</td></tr><tr>
				<td class="discr100center2" nowrap>Créatures/jour :	</td><td>'.$cr_jour.'</td></tr><tr>
				<td class="discr100center2">Terrain :		</td><td>'.ucfirst($terrain).'</td></tr><tr>
				<td class="discr100center2">Coût (or) :		</td><td>'.number_format($cout_or, 0, ",", " ").'</td></tr>
				<td class="discr100center2">Coût (mana) :	</td><td>'.number_format($cout_mana, 0, ",", " ").'</td></tr>
			<th class"discr100center2">Créature</td></tr><tr>	
				<td class="discr100center2">Type :		</td><td>'.$typ_.'</td></tr><tr>
				<td class="discr100center2">Niveau :		</td><td>'.$niv.'</td></tr><tr>
				<td class="discr100center2">Attaque :		</td><td>'.$att.'</td></tr><tr>
				<td class="discr100center2">Défense :		</td><td>'.$def.'</td></tr><tr>
				<td class="discr100center2">Initiative :	</td><td>'.$ini.'</td></tr><tr>
				<td class="discr100center2">Endurance :		</td><td>'.$end.'</td></tr><tr>
				<td class="discr100center2">Vitalité :		</td><td>'.$pvs.'</td></tr><tr>
				<td class="discr100center2">Dégâts :		</td><td>'.$min.' à '.$max.'</td></tr>';
		if ($raciale == 1)	echo '<td colspan="2" class="discr100center2"><i>Créature raciale</i></td></tr>';
		if ($vol == 1)		echo '<td colspan="2" class="discr100center2"><i>Créature volante</i></td></tr>';
		if ($range == 1)	echo '<td colspan="2" class="discr100center2"><i>Attaque à distance</i></td></tr>';
		if ($att_mag == 1)	echo '<td colspan="2" class="discr100center2"><i>Attaque magique</i></td></tr>';
		if ($bgh == 1) echo '<td colspan="2" class="discr100center2"><i>Chasseur de gros gibier</i></td></tr>';
	}
	else if ($interface == 'batspe')
	{
		// batiment spécial
		echo '
			<td>Nom :		</td><td> '.$batiment.'</td></tr><tr>
			<td>Branche :		</td><td> '.$branche[$branch].'</td></tr>';
		if ($cout != 0) echo '
			<td>Coût :	</td><td> '.$cout_or.' pièces d\'or</td></tr>';
		echo '
			<td>Construit :	</td><td> '.$construit.'</td></tr>';
		if ($lvl > 0) echo '		<td nowrap>Bonus cumulé :<br><i>(constr. supp.)</i>	</td><td> '.$bonus.'</td></tr>';	else echo '<td colspan=2></td></tr>';
		if ($lvl > 0) echo '		<td>Bonus actuel :					</td><td> '.$bonusact.'</td></tr>';	else echo '<td colspan=2></td></tr>';
		if ($lvl!= 1) echo '		<td>Bonus initial :<br><i>(première construction)</i>	</td><td> '.$bonus0.'</td></tr>';	else echo '<td colspan=2></td></tr>';
		echo '
			<td nowrap>Prérequis :	</td><td colspan=2> '.$requis.'</td></tr>
			<td nowrap>Donne accès : </td><td colspan=2> '.$donne.'</td></tr>
			';
	}

	echo '</tbody></table>
	<br>
		</td></tr>
	<tr>	<td colspan="4" class="cadrebottom"></td></tr>
	</tbody></table>
	</div>
	<br><div align="center">
	';

	if ($submit)
	{
		$bouton = ($new) ? 'Construire >>' : 'Modifier les sorts >>';

		echo '
		<input type="hidden" name="type" value="'.$type.'">
		<input type="hidden" name="id" value="'.$id.'">
		<input type="hidden" name="terrain" value="'.$terrain.'">
		<input type="submit" value="'.$bouton.'">';
	}	
	echo '	</div>
		<br>
	</tbody>
	</table>
	</body>
	</html>
	';
}