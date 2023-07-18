<?php session_start();

// --- Connexion : Sont mises en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$inutilisable = '#666666';

include ("info_objets_include.php");

// Calcul date et heure
require_once ("inclus/dates.inc");
$date = $heure.'<br>'.$jour.' '.$mois;

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];
$time = floor(time()/60);


include("connect.php");
// page serveur
$req = mysql_query("UPDATE `joueurs_connexions` SET `connexion_dernière` = '".$time."' WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());

// mise à jour des ventes terminées
$transactionError = '';
$req3 = mysql_query("SELECT COUNT(`id`) AS nbr FROM foire_vente WHERE (acheteur = '".$nom."' OR vendeur = '".$nom."') AND temps < '".$time."'") or die('Erreur SQL !<br>'.mysql_error());
$nombre = mysql_fetch_row($req3);
if ($nombre[0] > 0)
{
	require_once ('foire_include.php');
	$transactionError = realiseVentesMarche();
}
$req = mysql_query("SELECT id FROM foire_vente WHERE acheteur = '".$nom."' OR vendeur = '".$nom."' ORDER BY temps ASC ") or die('Erreur SQL !<br>'.mysql_error());
$nombre_h = mysql_num_rows($req);


mysql_close();



include ("debut.php");
include ("menu.php");
entete("Marché Central");

echo '<table class="localtable630 marchecentral"><tbody>
    <tr><td style="text-align: left;">
    ';
$aide = '<h2>Fonctionnement des achats d\'objets:</h2>
<div class="longtexte">
<ul>
<li>Une enchère doit dépasser le prix actuel d\' au moins 10%</li>
<li>Enchérir repousse le temps restant pour l\'enchère à 6 heures (si le temps était inférieur à 6 heures)</li>
<li>Les enchères du marché noir ne sont ouvertes qu\'aux joueurs disposant d\'un certain nombre de points dans l\'aptitude commerce. <br> Il propose (po = prix en or; pa = points d\'aptitudes nécessaires) :</li>
<ul>
<li>Un objet "normal" tous les 2 jours (po = niveau x 5000 ; pa = niveau x 2)</li>
<li>Un objet "spécial" tous les 6 jours (po = niveau x 15000 ; pa = niveau x 4)</li>
<li>Des créatures spéciales de niveau 6 à 10 tous les 4 jours (po = 40% du prix de base ; pa = 20 pour un niveau 6, 100 pour niveau 10)</li>
</ul>
<li>À l\'issue de la vente, les gains sont versés au vendeur; une taxe (supprimée par l\'aptitude commerce & diminuée par le charisme) est retenue</li>
</ul>
</div>
<h2>Fonctionnement des achats et ventes de ressources:</h2>
<div class="longtexte">
<ul>
<li>Le prix de chaque ressource dépend de la quantité en stock au marché</li>
<li>L\'achat et la vente prennent effet immédiatement</li>
<li>Le prix lors d\'une transaction est mis à jour pour chaque ressource, de sorte que le prix final ne vaut pas la quantité * prix en cours</li>
<li>La vente rapporte la moitié du prix d\'achat de la ressource, ou les 3/4 si vous disposez de 100 points dans l\'aptitude Commerce</li>
</ul>
</div>
</td></tr>
';
	echo '<tr><td colspan="3"><br><br><div id="lien"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien\', \'bonus\');">Afficher l\'aide</a></div>';
	echo '<div id="bonus" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus\', \'lien\');" >Cacher l\'aide</a><br><br><div style="font-family:default;">'.$aide.'</div></div></td></tr>';
echo '<tr><td><h2>Vente aux enchères</h2>';

include("connect.php");

$req = mysql_query("SELECT `cha` FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$charisme = $data[0];


$style = array();
$style['Ressources'] = '';
$style['Accessoires'] = '';
$style['Armes'] = '';
$style['Armures'] = '';
$style['Bijoux'] = '';
$style['Personnel'] = '';
$style['Marché noir'] = '';

$mode = (isset($_GET['mode']) && is_numeric($_GET['mode']) && ($_GET['mode']>-1) && ($_GET['mode']<7)) ? round($_GET['mode']) : 1;
switch ($mode)
{
	case 1:		$type = "'Accessoire', 'Consommable'";$style['Accessoires']	= 'style="font-weight:bold;"';	break;
	case 2:		$type = "'Épée', 'Dague', 'Masse', 'Bâton', 'Hache', 'Arc', 'Arbalète'";	$style['Armes']		= 'style="font-weight:bold;"';	break;
	case 3:		$type = "'Armure', 'Bouclier', 'Bottes', 'Gants', 'Cape', 'Ceinture', 'Heaume'";			$style['Armures']	= 'style="font-weight:bold;"';	break;
	case 4:		$type = "'Amulette', 'Anneau'";					$style['Bijoux']	= 'style="font-weight:bold;"';	break;
	case 5:		$type = "Marché noir";						$style['Marché noir']	= 'style="font-weight:bold;"';	break;
	case 6:		$type = "Personnel";						$style['Personnel']	= 'style="font-weight:bold;"';	break;
	default :	$type = "Ressource";						$style['Ressources']	= 'style="font-weight:bold;"';	break;
}



echo '<form method="GET" action="foire.php">
	<div align="center">
	~
	<a href="foire.php?mode=0"	'.$style['Ressources']	.'>Ressources</a> |
	<a href="foire.php?mode=1"	'.$style['Accessoires']	.'>Accessoires</a> |
	<a href="foire.php?mode=2"	'.$style['Armes']	.'>Armes</a> |
	<a href="foire.php?mode=3"	'.$style['Armures']	.'>Armures</a> |
	<a href="foire.php?mode=4"	'.$style['Bijoux']	.'>Bijoux</a> |
	<a href="foire.php?mode=5"	'.$style['Marché noir']	.'>Marché noir</a>';

if ($nombre_h != 0)
	echo ' | <a href="foire.php?mode=6" '.$style['Personnel'].'>Achats & Ventes</a> ~';
else	echo " ~";

if ($transactionError != '')
	echo '<br><br>'.$transactionError;

echo '<br><br></div>
<div align="center">';
if ($mode == 0) {
	// Ressources: affichage différent
	$sql = "SELECT nom_ressource, qte_dispo, prix_courant FROM foire_ressources";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	echo '<table border="0" cellspacing="2" cellpadding="0" style="width: 100%; vertical-align: center;"><tbody>
	<tr>	<td style="width: 30px;"></td>
		<td class="cl_entete">Ressource</td>
		<td class="cl_entete">Quantité disponible</td>
		<td class="cl_entete">Prix actuel</td></tr>
	<tr>	<td></td>
			<td colspan="3" class="hline"></td></tr>';
	while ($data = mysql_fetch_array($req)) {
		$nom_ress = $data["nom_ressource"];
		$qte_dispo = $data["qte_dispo"];
		$prix_courant = $data["prix_courant"];
		echo '
		<tr>	<td></td>
			<td class="tdlef"><a href="info_foire_ressources.php?ressource='.$nom_ress.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">'.$nom_ress.'</a></td>
			<td class="tdcen">'.$qte_dispo.'</td>
			<td class="tdcen">'.$prix_courant.'</td></tr>';
	}
	echo "</tbody></table>";
} else {
	echo '<table border="0" cellspacing="2" cellpadding="0" style="width: 100%; vertical-align: center;"><tbody>
	<tr>	<td style="width: 30px;"></td>
		<td class="cl_entete">Item</td>
		<td class="cl_entete">Quantité</td>
		<td class="cl_entete">Prix</td>
		<td class="cl_entete">Offrant</td>
		<td class="cl_entete">Vendeur</td>
		<td class="cl_entete">Temps</td></tr>
	<tr>	<td></td>
		<td colspan="6" class="hline"></td></tr>';


	// requète qui donne les enchères en cours
	$equipable = '';
	$borderequipable = '';
	switch ($type)
	{
		// case "Ressource" :	$sql = "SELECT * FROM foire_vente WHERE `commerce_min` = 0 AND `type` = 'ressource' AND temps > '$time' ORDER BY temps";				break;
		case "Personnel" :	$sql = "SELECT * FROM foire_vente WHERE (acheteur = '$nom' OR vendeur = '$nom') AND temps > '$time' ORDER BY temps";	break;
		case "Marché noir" : $sql = "SELECT * FROM foire_vente WHERE (`type`= 'créature' OR `commerce_min` > 0) AND temps > '$time' ORDER BY temps";				break;
		default :		$sql = "SELECT * FROM foire_vente WHERE `commerce_min` = 0 AND type2 IN ($type) AND temps > '$time' AND (vendeur = '$nom' OR (vendeur != '".$_SESSION['nom_perso1']."' AND vendeur != '".$_SESSION['nom_perso2']."' AND vendeur != '".$_SESSION['nom_perso3']."')) ORDER BY temps";				break;
	}
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$id = $data[0];
		$vendeur = $data[1];
		$item = $data[2];
		$qtee = number_format($data[3], 0, ",", " ");
		$offre = number_format($data[4], 0, ",", ",");
		$temps = $data[5] - $time;
		$image = $data[6];
		$acheteur = $data[7];
		$type_vente = $data[8];
		$prive_nom = $data[11];

		$h = floor(($temps /60));
		$m = floor( $temps %60 );
		$a = ($h > 0) ? $h.'h' : $m.'m';
		if ($temps < 2)
			$a = ((60 - (time()-($data[5]*60))) - 60)." sec";

		$style = (($vendeur == $nom) || ($acheteur == $nom)) ?  'font-weight: bold;' : '';

		if ($type_vente == 'créature') {
			$req_nom_crea = mysql_query("SELECT nom FROM `creatures` WHERE id = ".$item) or die('Erreur SQL !<br>'.mysql_error());
			$data_crea = mysql_fetch_row($req_nom_crea);
			$nom_objet = $data_crea[0];
		} else if ($type_vente == 'objet') {
			$obj_data = retourne_carac_objet ($item);
			$nom_objet = ucfirst ($obj_data['nom']);
			$equipable 	= (estEquipable($obj_data, $classe, $charisme)) ? '' : 'color: '.$inutilisable.';';
			$borderequipable= (estEquipable($obj_data, $classe, $charisme)) ? '' : ' style="border-color: '.$inutilisable.';"';
		} else {
			$nom_objet = ucfirst($item);
		}

		if ($prive_nom == '' || $prive_nom == $nom) {
			echo '<tr class="rollovercolor" style="'.$style.$equipable.'">
				<td style="width: 35px;"><a href="info_foire.php?item='.$id.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">
					'.affiche_image_objet_inner ($nom_objet, $image,'', 30, 1).'
					</a></td>
				<td class="tdlef"><a href="info_foire.php?item='.$id.'" style="'.$equipable.'" onclick="NewWindow(this.href,\'name\',\'550\',\'380\',\'yes\');return false">'.$nom_objet.'</a></td>
				<td class="tdcen">'.$qtee.'</td>
				<td class="tdcen">'.$offre.'</td>
				<td class="tdcen">'.$acheteur.'</td>
				<td class="tdcen">'.$vendeur.'</td>
				<td class="tdcen">'.$a.'</td></tr>
				<tr><td></td><td colspan="6" class="hline"></td></tr>';
		}
	}

	echo "</tbody></table>";
}



$req = mysql_query("SELECT COUNT(`id`) AS `nbr` FROM foire_vente WHERE vendeur = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$nombre = mysql_fetch_row($req);
$req = mysql_query('SELECT `21` FROM joueurs_aptitudes WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$maxventessimult = round(2 + 8*$data[0]/100);

if ($nombre[0] < $maxventessimult)
{
	echo '<a href="info_vente.php" onclick="NewWindow(this.href,\'name\',\'520\',\'430\',\'yes\');return false"><br>
	- Proposer une vente -</a>';
}
else
	echo '<br>Vous ne pouvez pas proposer plus de ventes qu\'actuellement. L\'aptitude Commerce peut sans doute vous aider?';

echo '<br><br><div class="stratexplic"><span style="color:'.$inutilisable.';">Les ventes grisées</span> représentent les objets interdits à votre classe, et que votre charisme ne permet pas d\'équiper.</div>';

echo "</div></td></tr></tbody></table>";
mysql_close();
include ("fin.php");
