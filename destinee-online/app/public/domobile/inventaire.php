<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

$meta_supp = '
	<script type="text/javascript" src="fonctions/lightbox.js"></script>
	<link rel="stylesheet" type="text/css" href="gallerystyle.css">';

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0)
{
	if (!isset($_POST['nom']))
	{
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];

include ("debut.php");
include ("menu.php");
entete("Inventaire");
include("connect.php");
include ("info_objets_include.php");

checkObjetsCharisme($nom);

$req = mysql_query("SELECT att, def, ini, end, cha, pui FROM joueurs_stats WHERE id = ".$_SESSION['id']) or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$att = $data['att'];
$def = $data['def'];
$ini = $data['ini'];
$end = $data['end'];
$cha = $data['cha'];
$pui = $data['pui'];

$img_obj = array();
$req = mysql_query("SELECT `tête`, cou, corps, doigt01, doigt02, pieds, arme, bouclier, accessoire01, accessoire02, accessoire03, dos, mains, taille FROM joueurs_inventaire WHERE id = ".$_SESSION['id']) or die('Erreur SQL !<br>'.mysql_error());
$slot = mysql_fetch_assoc($req);
foreach ($slot AS $ou => $item)
{
	$img_obj[$ou] = '<img src="images/objets/special/vide.gif" width="90" height="90" alt="" border=0>';
	if ($item != 0)
	{
		$obj_data = retourne_carac_display_objet ($item);
		if ($obj_data != false)
			$img_obj[$ou] = '<a href="info_objets.php?item='.$item.'" onclick="NewWindow(this.href,\'name\',\'360\',\'380\',\'yes\');return false">'.
			affiche_image_objet_inner ($obj_data['nom'], $obj_data['image'], $item, 90, 0).'
			</a>';
	}
}

	$aide =	"<h2>Les statistiques du héro</h2>
        <ul>
        <li> Attaque :
        <ul>
        <li>augmente l'attaque des créatures du héro *</li>
        </ul>
        </li>

        <li> Défense :
        <ul>
        <li>augmente la défense des créatures du héro *</li>
        </ul>
        </li>

        <li> Initiative :
        <ul>
        <li>augmente l'initiative des créatures du héros *</li>
        </ul>
        </li>

        <li> Endurance :
        <ul>
        <li>augmente l'endurance des créatures du héros *</li>
        </ul>
        </li>

        <li> Puissance :
        <ul>
        <li>augmente l'attaque des créatures du héros (celles avec le trait \"attaque magique\") *</li>
        </ul>
        </li>

        <li> Charisme :
        <ul>
        <li>Permet d'équiper les objets innaccessibles à la classe de votre héros lorsque le charisme est supérieur ou égal au niveau requis par l'objet multiplié par 12.</li>
        <li>Impacte le coût des créatures définit dans l'encyclopédie (=coût de base). Lorsque le charisme de votre héros est égal à 3 fois votre niveau, le coût des créatures est égal au coût de base. Si votre héros possède moins, les créatures seront d'autant plus chères, et inversement.</li>
        <li>Impacte le montant des taxes prélevées lors des ventes sur le marché central.</li>
        </ul>
        </li>

        </ul>

<div class='longtexte'>* : L'impact des statistiques du héros sur celles des créatures est de 1/6 (60 pour le héros => 10 pour la créature).</div>
<div class='cl_vspacer'></div>

        ";

echo '<div id="aide"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'aide\', \'nonaide\');">Afficher l\'aide</a></div>';
echo '<div id="nonaide" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'nonaide\', \'aide\');" >Cacher l\'aide</a><br><br><div style="font-family:default;text-align: left;">'.$aide.'</div></div>';

echo '<br>';

// affichage des stats
echo	'<span style="font-family: arial;">Attaque :</span> <font size="+1">'.floor($att).'</font> |
	<span style="font-family: arial;">Défense :</span> <font size="+1">'.floor($def).'</font> |
	<span style="font-family: arial;">Initiative :</span> <font size="+1">'.floor($ini).'</font> |
	<span style="font-family: arial;">Endurance :</span> <font size="+1">'.floor($end).'</font> |
	<span style="font-family: arial;">Puissance :</span> <font size="+1">'.floor($pui).'</font> |
	<span style="font-family: arial;">Charisme :</span> <font size="+1">'.floor($cha).'</font>
	<br><br>';


// préparation de l'affichage de l'ensemble des bonus
$sql = "SELECT joueurs_modificateurs.*,
		joueurs_bonus.att, joueurs_bonus.def, joueurs_bonus.ini, joueurs_bonus.pui, joueurs_bonus.end, joueurs_bonus.cha, joueurs_bonus.objets_casses,
		joueurs_aptitudes.`6` AS artisanat
		FROM joueurs_bonus
		INNER JOIN joueurs_aptitudes ON joueurs_bonus.id = joueurs_aptitudes.id
		INNER JOIN joueurs_modificateurs ON joueurs_modificateurs.id = joueurs_bonus.id
		WHERE joueurs_bonus.id = ".$_SESSION['id'];
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$artisanat = $data['artisanat'];
$objets_casses = $data['objets_casses'];

echo '<div id="lien"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien\', \'bonus\');">Afficher les bonus</a></div>';
echo '<div id="bonus" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus\', \'lien\');" >Cacher les bonus</a><br><br><div style="font-family:default;">'.liste_bonus($data, 1).'</div></div>';

echo '<br>

<table border="0" style="width: 620px; height: 500px; text-align: center; background-image: url(/images/divers/silhouette_femme.png);">
<tbody>
<tr>	<td style="vertical-align: top; width: 20%; height: 17%;"><br></td>
	<td style="vertical-align: top; width: 20%;">'.$img_obj['tête'].'</td>
	<td style="vertical-align: top; width: 20%;"><br></td>
	<td rowspan="2" style="vertical-align: top; width: 20%;"><br><br>'.$img_obj['cou'].'</td>
	<td style="vertical-align: top; width: 20%;"><br></td>
</tr>
<tr>	<td colspan="2" style="vertical-align: center; text-align: center; height: 17%;">'.$img_obj['doigt01'].$img_obj['doigt02'].'</td>
	<td style="vertical-align: center;">'.$img_obj['corps'].'</td>
	<td rowspan="4" style="vertical-align: top;">'.$img_obj['accessoire01'].'<br><br>'.$img_obj['accessoire02'].'<br><br>'.$img_obj['accessoire03'].'<br><br></td>
</tr>
<tr>	<td colspan="2" style="vertical-align: center; height: 17%; text-align: center;">'.$img_obj['mains'].'</td>
		<td style="vertical-align: center;">'.$img_obj['taille'].'</td>
		<td style="vertical-align: center;">'.$img_obj['dos'].'</td>
</tr>
<tr>	<td style="vertical-align: top; height: 17%;"><br></td>
	<td rowspan="2" style="vertical-align: center;">'.$img_obj['arme'].'</td><td></td>
	<td rowspan="2" style="vertical-align: center;">'.$img_obj['bouclier'].'</td>
</tr>
<tr>	<td style="vertical-align: top; height: 17%;"><br></td>
	<td style="vertical-align: top;"><br></td>
	<td style="vertical-align: top;"><br></td>
	<td style="vertical-align: top;"><br></td>
</tr>
<tr>	<td style="vertical-align: top; height: 17%;"><br></td>
	<td style="vertical-align: top;"><br></td>
	<td style="vertical-align: top; text-align: center;">'.$img_obj['pieds'].'</td>
	<td style="vertical-align: top;"><br></td>
	<td style="vertical-align: top;"><br></td>
</tr>
</tbody></table>
';


// Objets inutilisés
$leftright= '<table border="0" style="width:600px;padding:0; border: none; border-collapse: collapse;">
<tr>	<td style="width:50%; text-align:left; veertical-align:top;"><a href="javascript:hop_left()">&lt;&lt;&lt;</a></td>
	<td style="width:50%; text-align:right;"><a href="javascript:hop_right()">&gt;&gt;&gt;</a></td>	</tr>
</table>'."\n\n<br>\n";

//coffre 15 cases
$count = $artisanat / 10;
$height = 400 + 100 * $count/4;
	?>
	<br />
	<center>
	<div id="coffre_artisan">
        <div id="imgcoffre" style="height:<?php echo $height?>;width:400px;background-image: url('/images/coffre_artisan.png');">
	<?php
$req = mysql_query("SELECT * FROM joueurs_objets WHERE id = ".$_SESSION['id']) or die('Erreur SQL !<br>'.mysql_error());
$slot = mysql_fetch_assoc($req);
for ($i=1; isset($slot[$i]); $i++)
{
	$flag = true;
	if ($slot[$i] != 0)
	{
		$data = retourne_carac_display_objet ($slot[$i]);
		if ($data != false)
		{
			echo affiche_image_objet_inner ($data['nom'], $data['image'], $slot[$i], 90, 1);
			$flag = false;
		}

	}
	if ($flag)
		echo '<img src="images/objets/special/vide.gif" width="90" height="90" alt="" border="1">';
}
if($artisanat){
    $req1 ="SELECT joueurs_coffre.objet, objets_items.base, objets_stats.nom, objets_stats.image
						FROM joueurs_coffre
						LEFT JOIN objets_items ON joueurs_coffre.objet = objets_items.id
						LEFT JOIN objets_stats ON objets_items.base = objets_stats.id
						WHERE joueur_id = ".$_SESSION['id'];
	$req = mysql_query($req1) or die(mysql_error());
	$i = 0;
	if(mysql_num_rows($req))
	{
        $j = 0;
		while ($dat = mysql_fetch_row($req))
        {
            $j++;

			if(!$dat[0]){
				echo '<img src="images/objets/special/vide.gif" width="90" height="90" alt="" border="1">';
            }
			else
            {
				echo affiche_image_objet_inner($dat[2], $dat[3], $dat[0].'&coffre=1', 90, 1);
            }
			$i++;

		}
	}
	while($i < $count)
	{
		echo '<img src="images/objets/special/vide.gif" style="opacity:0.3; filter: alpha(opacity=30);" width="90" height="90" alt="" border="1">';
		$i++;
		$peut_ameliorer = true;
	}
}
	?>
	</center>
	<?php
//FIN 15 cases


mysql_close();

$ifpubgoogle=false;
include ("fin.php");
?>
