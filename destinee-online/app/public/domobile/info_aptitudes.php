<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];

include("connect.php");


if ((isset($_REQUEST['aptitude']))&&(is_numeric($_REQUEST['aptitude'])))
	$aptitude = $_REQUEST['aptitude'];
else	exit ('Que fait un canard aveugle quand il veut se marier ?<br><b>Il cherche une canne blanche.</i>');
$mode = (isset($_REQUEST['mode'])) ? $_REQUEST['mode'] : '';


// RECUPERATIONS D'INFOS DANS LA BDD
// l'aptitude
$req = mysql_query("SELECT `nom`, `image`, description, niveau FROM aptitudes_liste WHERE id = '".$aptitude."'") or die('Erreur SQL !<br>'.mysql_error());
if ($data = mysql_fetch_row($req))
{
	$nom_apt = $data[0];
	$image = $data[1];
	$desc = $data[2];
	$apt_niv = $data[3];
}
else
	exit ('Pourquoi les Indiens d\'Amérique ont-ils toujours froid ?<br><i>Parce que Christophe Colomb les a découverts...');

// les aptitudes choisies par le joueur
$req = mysql_query("SELECT `aptitude01`, `aptitude02`, `aptitude03`, `aptitude04`, `aptitude05`, `aptitude06`, `aptitude07`, `aptitude08`, `aptitude08`, `aptitude09`, `aptitude10`, `aptitude11`, `aptitude12`, `aptitude13`, `aptitude14`, `aptitude15`, `aptitude16`, `aptitude17`, `aptitude18`, `aptitude19`, `aptitude20`, `aptitude21`, `aptitude22`, `aptitude23`, `aptitude24`, `aptitude25`, `aptitude26`, `aptitude27`, `aptitude29`, `aptitude30`, `aptitude31`, `aptitude32`, `aptitude33`, `aptitude34`, `aptitude35`, `aptitude36` FROM joueurs_aptitudes_base WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$japtitudes = mysql_fetch_row($req);
$req = mysql_query("SELECT points, `apts_a_choisir` FROM joueurs_aptitudes_base WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$result = mysql_fetch_assoc($req);
$pts_libres = $result['points'];
$apts_a_choisir = $result['apts_a_choisir'];

// points d'aptitude actuels
$req = mysql_query("SELECT `".$aptitude."` FROM joueurs_aptitudes WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pts_act = $data[0];

// On calcule le maximum de points possibles
$max = 100;
// Les bâtiments spéciaux permettent de dépasser 100
include ('batimentspec_include.php');
foreach ($batSpeConstr AS $id => $lvl)
{
	if ($lvl > 0)				// si le bat spécial est au moins construit
	{
		$req = mysql_query("SELECT `bnum1`, `bnum2`, `tablename1`, `tablename2`, `bfield1`, `bfield2` FROM `$tableBatSpe` WHERE `affiche` = '1' AND `id` = '$id'") or die('Erreur SQL !<br>'.mysql_error());
		if ($dat1 = mysql_fetch_assoc($req))
		{
			for ($i=1; $i<=2; $i++)		// boucle sur les deux bonus possibles
			{				// si le bonus est un aptitude et correspond à l'aptitude désirée
				if (($dat1['tablename'.$i]=='joueurs_aptitudes') && ($dat1['bfield'.$i]==$aptitude))
					$max += getBonusLevel ($dat1['bnum'.$i], $lvl);
			}
		}
	}
}
// Les aptitudes de race et de classe permettent de dépasser 100
$req = mysql_query('SELECT race, classe FROM joueurs_heros WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$dat = mysql_fetch_row($req);
$race   = $dat[0];
$classe = $dat[1];
$req = mysql_query("SELECT `aptitude` FROM classes WHERE classe = '".$classe."'") or die('Erreur SQL !<br>'.mysql_error());
$dat = mysql_fetch_row($req);
if ($dat[0] == $aptitude) {
	$max += 20;
}
$req = mysql_query('SELECT `aptitude` FROM races WHERE race = \''.$race.'\'') or die(mysql_error());
$dat = mysql_fetch_row($req);
if ($dat[0] == $aptitude) {
	$max += 20;
}

// AFFICHAGE
if ($mode == 'form')
{
	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
	<head>
		<title>'.$nom_apt.' (aptitude) : destinee-online</title>
		<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
		<meta name="keywords" content="'.$nom_apt.', aptitude, heros, héros, niveau, évolution, evolution">
		<link rel="stylesheet" type="text/css" href="style_divers.css">
	</head>
	<body marginheight=0 marginwidth=0 style="background-image: URL(images/fond.gif);">
	<br>
	<div align="center">
	<table class="cadretablepopup"><tbody>
	<tr>	<td class="cadretopleft"  colspan="3"></td>
		<td class="cadretopright" rowspan="2"></td></tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td class="cadrecontenupopupc" colspan="2">
	<h4>'.$nom_apt.' : '.$pts_act.' %</h4><br>
	(max. '.$max.' %)<br>
	<img src="'.$image.'" alt="'.$nom_apt.'" border=1><br><br>';

	$action = false;
	// Si le joueur peut ajouter des points dans cette aptitude
	if (($pts_act < $max) && (in_array($aptitude, $japtitudes)) && ($pts_libres > 0))
	{
		$action = true;
		echo '	<form method="post" action="info_aptitudes.php">
		Ajouter <input type="text" name="qtee" size="2"> points !<br><br>
		<input type="hidden" name="aptitude" value="'.$aptitude.'">
		<input type="hidden" name="mode" value="ajouterpoints">
		<input type="submit" value="Ajouter >>">';
	}
	// si le joueur peut choisir cette aptitude
	else if (!in_array($aptitude, $japtitudes))
	{
		$req = mysql_query("SELECT `niveau` FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$niv = mysql_fetch_row($req);
		// on regarde s'il a des aptitudes à choisir, si oui on met un GROS lien
		if (($niv[0] >= $apt_niv) &&
		    $apts_a_choisir > 0 )
		{
			$action = true;
			echo '<form method="post" action="info_aptitudes.php">Choisir l\'aptitude<br>
				<input type="hidden" name="aptitude" value="'.$aptitude.'">
				<input type="hidden" name="mode" value="choisirapt">
				<input type="submit" value="Choisir >>">';
		}

	}
	// Si aucune action n'est possible...
	if (!$action)
		echo '<div style="margin: 0px auto;">Vous n\'avez plus de points d\'aptitudes à distribuer. Attendez le prochain niveau...</div>';

	echo '
	<div class="longtexte" style="padding-top:8px;">'.$desc.'</div>
	</td></tr>
	<tr><td class="cadrebottom" colspan="4"></td></tr>
	</tbody></table></div>
	<br></tbody></table>
	</body>
	</html>';
}

else if ($mode == 'ajouterpoints')
{
	$erreur = 0;
	$qtee = (isset($_POST['qtee'])) ? max(0, round($_POST['qtee'])) : 0;
	if ($qtee > 0)
	{
		$texte = 'Vous devez investir un nombre de points d\'aptitudes inférieur ou égal au nombre que vous possédez.';

		if ($pts_act + $qtee > $max)
		{
			$erreur = 1;
			$texte = 'Vous ne pouvez investir plus de 100 points dans une unique aptitude.';
		}

		// test et update
		if ((in_array($aptitude, $japtitudes)) && ($qtee <= $pts_libres) && ($erreur == 0))
		{
			$sql = "UPDATE `joueurs_aptitudes` SET `".$aptitude."` = `".$aptitude."` + '".$qtee."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$sql = "UPDATE `joueurs_aptitudes_base` SET `points` = `points` - '".$qtee."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

			echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onLoad="setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
			style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
			exit();
		}
	}
	else
		$texte = 'Veuillez entrer un nombre de points à investir.';

	echo '
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title>Erreur !</title></head>
	<body onload="alert(\''.str_replace("'","\'",$texte).'\'); setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
	style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
}

else if ($mode == 'choisirapt')
{
	if (!in_array($aptitude, $japtitudes) && $apts_a_choisir > 0)
	{
		$req = mysql_query("SELECT `niveau` FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$niv = mysql_fetch_row($req);
		if ($apt_niv <= $niv[0])
		{
			if ($japtitudes[0] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude01` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[1] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude02` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[2] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude03` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[3] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude04` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[4] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude05` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[5] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude06` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[6] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude07` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[7] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude08` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[8] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude09` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[9] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude10` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[10] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude11` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[11] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude12` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[12] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude13` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[13] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude14` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[14] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude15` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[15] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude16` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[16] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude17` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[17] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude18` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[18] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude19` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[19] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude20` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[20] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude21` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[21] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude22` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[22] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude23` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[23] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude24` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[24] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude25` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[25] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude26` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[26] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude27` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[27] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude28` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[28] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude29` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[29] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude30` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[30] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude31` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[31] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude32` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[32] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude33` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[33] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude34` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[34] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude35` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
			else if ($japtitudes[35] == 0)			{ $req = mysql_query("UPDATE `joueurs_aptitudes_base` SET `aptitude36` = '".$aptitude."', `apts_a_choisir` = `apts_a_choisir` - 1 WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error()); }
		}
	}
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
	<body onLoad="opener.location=\'aptitudes.php\';setTimeout(\'self.close()\',0);" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
	Aptitude choisie avec succès</body></html>';
}

mysql_close();
?>
