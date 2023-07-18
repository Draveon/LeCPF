<?php session_start();

$head_title = 'Les objets';
$head_keywords = 'objet, accessoire, armes, bouclier, armure';

if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;
include ("debut.php");
if ($_SESSION['connexion'] != 1)
	include ("menu_index.php");
if ($_SESSION['connexion'] == 1)
	include ("menu.php");
entete_index("Objets");

$xmax = 6;

echo '<form method="GET" action="encyclopedie_objets.php#objets">
<table class="localtable963"><tbody>
<tr>	<td colspan="'.$xmax.'" style="text-align: left;"><h2>Les objets</h2>
<div class="longtexte">Sur Destinée, un objet peut s\'acquérir de deux manières. Dans un premier temps, lors d\'une mission de <a href="pacification.php">pacification</a>, qui lorsqu\'elle est financée entièrement, rapportera un objet. En second lieu, il est aussi possible d\'acheter un objet sur la place publique en participant aux enchères, la plus forte mise l\'emportant. De la même manière, il vous est aussi possible d\'y vendre les votres.</div>
<div class="longtexte">Bien entendu, toutes les classes ne peuvent équiper tous les objets: il est difficilement concevable pour un magicien de brandir une hache à double tranchant, et encore moins de s\'en servir avec efficacité. Le maniement des objets est cependant facilité pour les personnages très charismatique: en effet, tout objet peut être équipé du moment que le charisme du porteur est 10 fois supérieur au niveau de l\'objet désiré.</div>
';


include ("connect.php");

$sortes = array(array('Choisir...', 	''),
		array('Accessoires', 	"'Accessoire'"),
		array('Armes',		"'Épée', 'Dague', 'Masse', 'Bâton', 'Hache', 'Arc', 'Arbalète'"),
		array('Armures', 	"'Armure', 'Bouclier', 'Heaume', 'Gants', 'Ceinture', 'Cape', 'Bottes'"),
		array('Bijoux',		"'Amulette', 'Anneau'"),
		array('Consommables',	"'Consommable'"),
		array('Marché noir',	"Marché noir")
	);
$classes = array(array('0',		'Choisir...'),
		array('Archer' ,	'Archers'),
		array('Assassin',	'Assassins'),
		array('Barbare' ,	'Barbares'),
		array('Barde' ,	 	'Bardes'),
		array('Chevalier' ,	'Chevaliers'),
		array('Chevalier noir' ,	'Chevaliers noir'),
		array('Clerc' ,	 	'Clercs'),
		array('Démonologiste',	'Démonologistes'),
		array('Druide' ,	'Druides'),
		array('Enchanteur' ,	'Enchanteurs'),
		array('Ermite' ,	'Ermites'),
		array('Esclavagiste' ,	'Esclavagistes'),
		array('Forgeron' ,	'Forgerons'),
		array('Guerrier' ,	'Guerriers'),
		array('Illusioniste' ,	'Illusionistes'),
		array('Inquisiteur' ,	'Inquisiteurs'),
		array('Magicien' ,	'Magiciens'),
		array('Marchand' ,	'Marchands'),
		array('Nécromancien' ,	'Nécromanciens'),
		array('Paladin' ,	'Paladins'),
		array('Prêtre' ,	'Prêtres'),
		array('Psioniste' ,	'Psionistes'),
		array('Rôdeur' ,	'Rôdeurs'),
		array('Samouraï' ,	'Samouraïs'),
		array('Shaman' ,	'Shamans'),
		array('Sorcier' ,	'Sorciers'),
		array('Transmutateur', 'Transmutateurs'),
		array('Voleur' ,	'Voleurs')
	);

// on va se bricoler une requète sql qui tient compte de la classe et du type d'objet
$sql_classe = "1 = 1";						// critère stupide toujours satisfait
$index_classe = 0;
if ((isset($_GET['classe'])) && ($_GET['classe'] != '0') && (is_numeric($_GET['classe'])))
{
	$index_classe = $_GET['classe'];
	$sql_classe = '`'.$classes[$index_classe][0]."` = '1'";
}

$sql_sortes = "type != ''";
{
	if ((!isset($_GET['sortes'])) || ($_GET['sortes'] == '0') || (!is_numeric($_GET['sortes']))) {
		$sql_sortes = "trouvable = '1'";
		$index_sortes = 0;
	} else {
		$index_sortes = $_GET['sortes'];
		$sorte_objet = $sortes[$index_sortes][1];
		if ($sorte_objet != 'Marché noir') {
			$sql_sortes = "`type` IN (".$sorte_objet.") AND trouvable = '1'";
		} else {
			$sql_sortes = "`marche_noir_special` = 1";
		}
	}
}

// on construit la requète
$sql = "SELECT nom, type, image, id FROM objets_stats WHERE $sql_classe AND $sql_sortes ORDER BY type ASC, niv ASC, id ASC";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

// on affiche le formulaire en haut de la page
echo '<br><center><h4><a name="objets"></a>Afficher seulement </h4>
	<select name="sortes" size=1 onchange="this.form.submit()">';
for ($i=0; $i<sizeof($sortes); $i++)
{
	echo '<option value="'.$i.'"';
	if ($index_sortes == $i)
		echo ' selected';
	echo '>'.$sortes[$i][0].'</option>'."\n";
}
echo '</select>&nbsp;&nbsp;,&nbsp;&nbsp;<h4>utilisables uniquement par </h4>
	<select name="classe" size=1 onchange="this.form.submit()">';
for ($i=0; $i<sizeof($classes); $i++)
{
	echo '<option value="'.$i.'"';
	if ($index_classe == $i)
		echo ' selected';
	echo '>'.$classes[$i][1].'</option>'."\n";
}
echo '</select>
	<input type="submit" value=" >> "></center><br></td><tr>';

// on peut afficher les objets
$x = 0;
while ($data = mysql_fetch_row($req))
{
	$nom_objet = $data[0];
	$type = $data[1];
	$image = $data[2];
	$id = $data[3];

	if ($x == $xmax)
	{
	    $x = 0;
	    echo "	</tr>\n<tr>";
	}
	$x++;
	echo '	<td class="creatbatiliste4"><a class="discreb" href="info_objets2.php?objet='.$id.'" onclick="NewWindow(this.href,\'name\',\'500\',\'310\',\'yes\');return false">
		<b>'.$nom_objet.'</b><br>
		('.$type.')<br>
		<img src="'.$image.'" width="100" height="100" alt="'.$nom_objet.'" title="'.$nom_objet.'" border="0"></a></td>'."\n";
}
for ( ; $x<$xmax; $x++)
{
	echo '	<td>&nbsp;</td>'."\n";
}

mysql_close();
echo "</tr></tbody></table>";
include ("fin.php");
?>
