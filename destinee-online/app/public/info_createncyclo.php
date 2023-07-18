<?php
include("connect.php");

$id = ((isset($_GET['id']))&&(is_numeric($_GET['id']))) ? $_GET['id'] : -1;
$mode = ((isset($_GET['mode']))&&($_GET['mode']=='1')) ? $_GET['mode'] : 0;
$admin = (isset($_GET['admin'])) ? $_GET['admin'] : 0;

// bottor veut des noms de créatures... faut donner la possibilité
if ($id == -1)
{
	$sql = "SELECT creatures.id FROM creatures WHERE nom LIKE '".addslashes($_GET['id'])."' LIMIT 1";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if ($data = mysql_fetch_row($req))
		$id = $data[0];
}
echo'
<div class="textinfoimg">Pour switch entre stats creature/batiment, cliquer sur l\'image</div>
';



switch ($mode)
{
	case 1:
		$sql = "SELECT nom, batiment, niveau, image, nombre, cout_batiment, espace, cout_argent, cout_mana, terrain01, terrain02, terrain03 FROM creatures WHERE id = '".$id."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$creature = $data[0];
		$batiment = stripslashes($data[1]);
		$niv = $data[2];
		$image = $data[3];
		$nombre = $data[4];
		$cout = number_format($data[5], 0, ",", " ");
		$espace = number_format($data[6], 0, ",", " ");
		$cout_or = $data[7];
		$cout_mana = $data[8];
		$terrain = ($data[9] !='0') ? ucfirst($data[9] ).'<br>' : '';
		$terrain .= ($data[10]!='0') ? ucfirst($data[10]).'<br>' : '';
		$terrain .= ($data[11]!='0') ? ucfirst($data[11]).'<br>' : '';
		$nbr = 8;
		if ($creature == 'N/A')
		{
			$nbr = 5;
			$tour = true;
			$capacites = '<i>Ce bâtiment ne vous donne pas de créature. En revanche il vous permet de connaître des sorts, et d\'avoir le mana nécessaire à leur lancement ainsi qu\'au recrutement des créatures.</i><br>';
		}
		else
		{
			$capacites = '';
			$tour = false;
		}
		break;
	default:
		$sql = "SELECT nom, batiment, niveau, image, type, att, def, ini, end, pvs, min, max, vol, `range`, `desc`, `att_mag`, `raciale`, `bgh` FROM creatures WHERE id = '".$id."' AND (`speciale` < 3 OR `speciale` = '".$admin."')";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$creature = $data[0];
		$batiment = stripslashes($data[1]);
		$niv = $data[2];
		$image = $data[3];
		$type = $data[4];
		$att = $data[5];
		$def = $data[6];
		$ini = $data[7];
		$end = $data[8];
		$pvs = $data[9];
		$deg = $data[10].' à '.$data[11];
		$capacites  = ($data[16]==1) ? '<i>Créature raciale</i><br>' : '';
		$capacites .= ($data[12]==1) ? '<i>Créature volante</i><br>' : '';
		$capacites .= ($data[13]==1) ? '<i>Attaque à distance</i><br>' : '';
		$capacites .= ($data[15]==1) ? '<i>Attaque magique</i><br>' : '';
		$capacites .= ($data[17]==1) ? '<i>Chasseur de gros gibier</i><br>' : '';
		$description = '<i>'.$data[14].'</i><br>';
		$nbr = 9;
		if ($creature == 'N/A')
			exit();
		break;
}
	

mysql_close();

echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.$creature.' : '.$batiment.' : www.destinee-online.com</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
	<meta name="keywords" content="'.$creature.', '.$batiment.', créature, créature, creature, batiment, bâtiment, recruter, armée, armee">
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body class="bodypopup" marginheight=0 marginwidth=0>
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc">
	<b>';
switch ($mode)
{
	case 1 :	echo $batiment; break;
	default :	echo $creature; break;
}

echo '</b><br>&nbsp;
<table class="discr100"><tbody>
<tr>	<td rowspan="'.$nbr.'" class="discr100img">';
if ($creature != "N/A")
	echo '	<a href="info_createncyclo.php?mode='.(1-$mode).'&amp;id='.$id.'"><img src="'.$image.'" width="100" height="100" alt="'.$creature.'" title="'.$creature.'" border=1></a>';
else
	echo '	<img src="'.$image.'" width="100" height="100" alt="Tour de Magie" title="Tour de Magie" border=1>';

switch ($mode)
{
	case 1 :
		echo '</td>
		<td>Créature :	</td><td>'.$creature.'</td></tr>
		<tr><td>Niveau :	</td><td>'.$niv.'</td></tr>';		if (!$tour) echo '
		<tr><td style="white-space: nowrap;">Créatures/jour :	</td><td>'.$nombre.'</td></tr>'; echo '
		<tr><td>Coût de base :	</td><td>'.$cout.'</td></tr>
		<tr><td>Espace :	</td><td>'.$espace.'</td></tr>';	if (!$tour) echo '
		<tr><td>Coût (or) :	</td><td>'.$cout_or.'</td></tr>
		<tr><td>Coût (mana) :	</td><td>'.$cout_mana.'</td></tr>';	echo '
		<tr><td style="vertical-align: top;">Terrain(s) :</td><td>'.$terrain.'</td></tr>
		<tr><td colspan="3">'.$capacites;
		break;
	default :
		echo '</td>
		<td>Type :		</td><td> '.$type.'</td></tr>
		<tr><td>Niveau :	</td><td> '.$niv.'</td></tr>
		<tr><td>Attaque :	</td><td> '.$att.'</td></tr>
		<tr><td>Défense :	</td><td> '.$def.'</td></tr>
		<tr><td>Initiative :	</td><td> '.$ini.'</td></tr>
		<tr><td>Endurance :	</td><td> '.$end.'</td></tr>
		<tr><td>Vitalité :	</td><td> '.$pvs.'</td></tr>
		<tr><td>Dégâts :	</td><td> '.$deg.'</td></tr>
		<tr><td colspan="2">'.$capacites.'</td></tr>
		<tr><td colspan="3"><hr></td></tr>
		<tr><td colspan="3">'.$description;
		break;
}

echo '&nbsp;</td></tr></tbody></table>
</td></tr>
<tr><td colspan="4" class="cadrebottom"></td></tr>
</tbody></table>
</body>
</html>
';
?>
