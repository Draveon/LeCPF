<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

$id_cr = ((isset($_GET['creature']))&&(is_numeric($_GET['creature']))) ? $_GET['creature'] : '';
if ($id_cr == '')
	exit;
	
$nom   = $_SESSION['nom'];
$race = $_SESSION['race'];
include("connect.php");


$req = mysql_query("SELECT `".$id_cr."` FROM `joueurs_créatures` WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
if ($data[0] > 0) {
	$req = mysql_query("SELECT att, def, ini, pui, end, cha, puissance, argent, mana FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$att_h = $data[0];
	$def_h = $data[1];
	$ini_h = $data[2];
	$pui_h = $data[3];
	$end_h = $data[4];
	
	
	$req = mysql_query('SELECT * FROM creatures WHERE id = "'.$id_cr.'"') or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$id   = $data[0];
	$creature = $data[1];
	$type = $data[2];
	$batiment = $data[4];
	$niv = $data[3];
	$att = $data[11];
	$def = $data[12];
	$ini = $data[13];
	$end = $data[14];
	$pvs = $data[15];
	$min = $data[16];
	$max = $data[17];
	$vol = $data[18];
	$range = $data[19];
	$image = $data[22];
	$description = $data[23];	
	$att_mag = $data[26];
	$raciale = $data[27];
	$bgh = $data[29];
	// calcul des stats du héros à partir du niveau de la créature
	$modif_impact_stats = 1 + ($niv * 0.05);
	// attaque
	if ($att_mag == 1) {
		$atth = $att + round($pui_h*$modif_impact_stats/4);
	}
	else if	($raciale == 1) {
		$atth = $att + round(max($pui_h, $att_h)*$modif_impact_stats/4);
	}
	else {
		$atth = $att + round($att_h*$modif_impact_stats/4);
	}
	// défense
	if	($raciale == 1) {
		$defh = $def + round(max($end_h, $def_h)*$modif_impact_stats/4);
		$endh = $end + round(max($end_h, $def_h)*$modif_impact_stats/4);
	}
	else {
		$defh = $def + round($def_h*$modif_impact_stats/4);
		$endh = $end + round($end_h*$modif_impact_stats/4);
	}
	$inih = $ini + round($ini_h*$modif_impact_stats/4);

	
		
	mysql_close();

	
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>'.$creature.'</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
	<script type="text/javascript" src="fonctions/affichecache.js"></script>
</head>
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc">
';

	echo '<table class="discr100"><tbody>
	<tr>	<td rowspan="7" class="discr100img"><img src="'.$image.'" width="100px" height="100px" alt="'.$creature.'" border="1"></td><td colspan="2">&nbsp;</td></tr>
	<tr>	<td>Nom :			</td><td><b>'.$creature.'</b></td></tr></tbody></table>';
	
	echo '
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
			</div>
		</div>';
	echo '</td></tr> <tr><td class="cadremiddleleft"></td><td colspan="2" class="cadrecontenupopupc">';
	if ($raciale == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Créature raciale</i></div>';
	if ($vol == 1)		echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Créature volante</i></div>';
	if ($range == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Attaque à distance</i></div>';
	if ($att_mag == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Attaque magique</i></div>';
	if ($bgh == 1)	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>Chasseur de gros gibier</i></div>';
	echo '<hr>';
	if ($description != '') 	echo '<div style="text-align:left; width:95%; margin: 0px auto;"><i>'.$description.'</i></div>';
	echo '<div style="text-align:left; width:100%; font-size:10pt; padding: 8px;">Entre parenthèses figurent les statistiques de base de la créature, lesquelles sont modifiées par le héros.</div>';
	
	echo '
	</td><td class="cadremiddleleft"></td></tr>
	<tr><td colspan="4" class="cadrebottom"></td></tr>
	</tbody></table>
	&nbsp;
	</body>
	</html>';
}


