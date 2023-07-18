<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---
$nom = (isset($_SESSION['nom'])) ? $_SESSION['nom'] : '';

include("connect.php");

if ((isset($_GET['sort']))&&(is_numeric($_GET['sort'])))
	$sort_id = $_GET['sort'];
else	exit('Quel animal mange avec sa queue ?<br><i>Tous, aucun n\'enlève sa queue pour manger.');

$prec = ((isset($_GET['prec']))&&($_GET['prec']=='incanter')) ? $_GET['prec'] : 'encyclo';

include("info_objets_include.php");

$req = mysql_query("SELECT * FROM magies_liste WHERE id = '".$sort_id."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$nom_sort = $data['nom'];
$niveau = $data['niveau'];
$victime = $data['victime'];
$min = $data['min'];
$max = $data['max'];
$nb_cibles = $data['nb_cibles'];
$cout_mana = $data['coutmana'];
$cout_or = $data['coutor'];
$cout_soufre = $data['soufre'];
$cout_mercure = $data['mercure'];
$cout_cristal = $data['cristal'];
$cout_gemme = $data['gemme'];
$image = $data['image'];
$element = $data['élément'];
$type = $data['type'];
$texte = $data['texte'];
$prioritaire = $data['prioritaire'];
$notabene = $data['notabene'];

if (($prec == 'incanter')&&($nom != ''))
{
	$sq1 = "SELECT mana_consommation, Air, Terre, Eau, Feu, Électricité, cailloux_consommation, degat, degat_elem, degat_mag, effets_elem_def, air_def, terre_def, eau_def, feu_def, elec_def FROM joueurs_modificateurs WHERE nom = '$nom'";
	$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sq1.'<br>'.mysql_error());
	$dat1 = mysql_fetch_assoc($re1);
	if ($cout_mana > 0)
		$cout_mana	= round($cout_mana	* $dat1['mana_consommation']);		
	$cout_soufre	= round($data['soufre'] * $dat1['cailloux_consommation']);
	$cout_mercure	= round($data['mercure']* $dat1['cailloux_consommation']);
	$cout_cristal	= round($data['cristal']* $dat1['cailloux_consommation']);
	$cout_gemme	= round($data['gemme']	* $dat1['cailloux_consommation']);
		
	if ($type=='Offensif')
	{
		$mod_degats = $dat1['degat'] * $dat1['degat_elem'] * $dat1['degat_mag'];
		switch ($element)
		{
			//case 'Air' :	$min
			case 'Air'	: $min = round($min*$dat1['Air']	*$mod_degats);	$max = round($max*$dat1['Air']	*$mod_degats);	break;
			case 'Terre'	: $min = round($min*$dat1['Terre']	*$mod_degats);	$max = round($max*$dat1['Terre']*$mod_degats);	break;
			case 'Eau'	: $min = round($min*$dat1['Eau']	*$mod_degats);	$max = round($max*$dat1['Eau']	*$mod_degats);	break;
			case 'Feu'	: $min = round($min*$dat1['Feu']	*$mod_degats);	$max = round($max*$dat1['Feu']	*$mod_degats);	break;
			case 'Électricité':$min= round($min*$dat1['Électricité']*$mod_degats);	$max = round($max*$dat1['Électricité']*$mod_degats);	break;
		}
	}
	
	if ($type == 'Défensif')
	{
		$mod = $dat1['effets_elem_def'];
		switch ($element)
		{
			case 'Air'	: $mod *= $dat1['air_def']; break;
			case 'Terre'	: $mod *= $dat1['terre_def']; break;
			case 'Eau'	: $mod *= $dat1['eau_def']; break;
			case 'Feu'	: $mod *= $dat1['feu_def']; break;
			case 'Électricité':$mod*= $dat1['elec_def']; break;
		}
		foreach ($data AS $key => $bonus)
		{
			if (is_numeric($bonus))
			{
				$data[$key] *= $mod;
				if (in_array($key, array('att', 'def', 'ini', 'pui', 'end', 'cha', 'chance'))) {
					$data[$key]= round($data[$key]);
				} else {
					$data[$key]= round($data[$key]*100)/100;
				}
			}
		}
	}

}

echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>'.$nom_sort.' : sort : destinee-online</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne, à l\'ambiance médiévale-fantastique.">
	<meta name="keywords" content="'.$nom_sort.', sort, sorts, magie, magicien">
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body class="bodypopup" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0>
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td class="cadretopleft"  colspan="3"></td>
	<td class="cadretopright" rowspan="2"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td class="cadrecontentpopupc" colspan="2">';

$nbrrows = 3;	// pour faire un code propre et fusionner le bon nombre de lignes pour la case de l'image
$out1 = '';
$out2 = '';

switch($victime)
{
	// défensif
	case 'unique_allié'	: $victime = "Vous"; $nb_cibles = '';				break;
	case 'unique_adverse'	: $victime = "Votre adversaire"; $nb_cibles = '';		break;
	// offensifs
	case 'tous'		: $victime = ($nb_cibles == 1)? " créature adverse" : " créatures adverses";	break;
	case 'sol'		: $victime = ($nb_cibles == 1)? " créature adverse au sol" : " créatures adverses au sol";	break;
	case 'vol'		: $victime = ($nb_cibles == 1)? " créature adverse volantes" : " créatures adverses volantes";		break;
	// spécial
	case 'Spécial'	: $sort_spe = true;
}

if ($sort_spe) {
	$sq2 = "SELECT * FROM classes WHERE `sort_spe` = $sort_id";
	$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
	$dat2 = mysql_fetch_assoc($re2);
	$sort_spe_lvl = $dat2['sort_spe_lvl'];
	$sort_spe_classe = $dat2['classe'];
}

if ($texte!='')
	$texte.='<br>&nbsp;';


$out1 .= '<h4>'.$nom_sort.'</h4>
	<div style="padding-left:20px; padding-right:20px; font-style: italic;">'.$texte.'&nbsp;</div>
	<table class="discr100"><tbody>
	<tr>	<td rowspan="';
if ($sort_spe) {
	$out2.= '" style="width: 40%; text-align: center;";><img src="'.$image.'" width="100" height="100" alt="'.$nom_sort.'" border=1></td>
		<td>Classe :</td><td> '.$sort_spe_classe.'</td></tr>
		<tr></tr>
	<tr>	<td>Niveau d\'obtention :</td><td> '.$sort_spe_lvl.'</td></tr>';
} else {
	$out2.= '" style="width: 40%; text-align: center;";><img src="'.$image.'" width="100" height="100" alt="'.$nom_sort.'" border=1></td>
		<td nowrap>Type d\'élément :</td><td> '.$element.'</td></tr>
	<tr>	<td>Niveau du sort :</td><td> '.$niveau.'</td></tr>
	<tr>	<td>Victime(s) :</td><td> '.$nb_cibles.''.$victime.'</td></tr>';
}

if (($type =='Offensif') && ($nom_sort != 'Désintégration'))
			{	$out2 .= '<tr><td>Dégâts :		</td><td> '.$min.' à '.$max.'</td></tr>';$nbrrows++;	}
if ($cout_mana != 0)	{	$out2 .= '<tr><td>Coût en mana :	</td><td> '.$cout_mana	.'</td></tr>';	$nbrrows++;	}
if ($cout_or != 0)	{	$out2 .= '<tr><td>Coût en or :		</td><td> '.$cout_or	.'</td></tr>';	$nbrrows++;	}
if ($cout_soufre != 0)	{	$out2 .= '<tr><td>Coût en soufre :	</td><td> '.$cout_soufre.'</td></tr>';	$nbrrows++;	}
if ($cout_mercure != 0)	{	$out2 .= '<tr><td>Coût en mercure :	</td><td> '.$cout_mercure.'</td></tr>';	$nbrrows++;	}
if ($cout_cristal != 0)	{	$out2 .= '<tr><td>Coût en cristaux :	</td><td> '.$cout_cristal.'</td></tr>';	$nbrrows++;	}
if ($cout_gemme != 0)	{	$out2 .= '<tr><td nowrap>Coût en gemmes :	</td><td> '.$cout_gemme	.'</td></tr>';	$nbrrows++;	}
if ($prioritaire == 1)	{	$out2 .= '<tr><td colspan="2"><i>Ce sort se lance en premier</i></td></tr>';	$nbrrows++;	}
if ($type == 'Défensif')
{
	$liste_bonus = liste_bonus($data);
	if (strlen($liste_bonus)>0){	$out2 .= '<tr><td colspan="2"><i>'.$liste_bonus.'</i></td></tr>';		$nbrrows++;	}
}

echo $out1.$nbrrows.$out2;

// complément d'information, par exemple pourles sorts spéciaux, ou pour des mises en garde (ex: cailloux <-> mana)
if (strlen($notabene)>0)
	echo '<tr><td colspan="3" style="padding-right: 20px; padding-left: 20px; text-align: justify;">'.$data['notabene'].'</td></tr>';

echo '</tbody></table><br>

		</td></tr>
	<tr><td class="cadrebottom" colspan="4"></td></tr>
</tbody></table>
</tbody></table>
</div>
</body>
</html>';

mysql_close();
?>

