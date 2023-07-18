<?php session_start();

$meta_supp = '
	<script type="text/javascript" src="fonctions/lightbox.js"></script>
	<link rel="stylesheet" type="text/css" href="gallerystyle.css">';

$head_title = 'Les Sorts';
$head_keywords = 'sort, magie, magicien, combat';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}
entete("Sorts");

include("connect.php");


// récupération du niveau
if ((isset($_GET['niv']))&&(is_numeric($_GET['niv'])))
	$niv = $_GET['niv'];
else if ((isset($_GET['ancienniv']))&&(is_numeric($_GET['ancienniv'])))
	$niv = $_GET['ancienniv'];
else $niv = 1;
// récupération du type de sort
$variable = (isset($_GET['sorte'])) ? mysql_real_escape_string($_GET['sorte']) : '0';

// contrôles
if ($variable=='spe')
{
		$niv = -1;
}

$aide =	"<p>Tantôt utiles, tantôt destructeurs, les différents sorts viennent garnir Destinée d\'un système de magie des plus complets qui saura satisfaire l\'appétit des plus grands sorciers.</p>
		<p>la construction d\'une première tour de magie est nécessaire au lancement de tout sort. La construction des tours suivantes débloque l'accès aux sorts de plus haut niveau. Le nombre ainsi que l'accès aux sorts des niveaux supérieurs sont fonction de votre classe et de votre niveau.</p>
		<p>La puissance des sorts offensifs est dépendante de la taille de l\'armée de votre adversaire. Les dégâts indiqués correspondent aux dégâts nominaux pour une armée de 100.000 points de vie.</p>
		<ul><li>Feu: augmente les dégâts infligés aux créatures de niveau 1 à 3 de 35%</li>
		<li>Eau: augmente les dégâts infligés aux créatures au sol de 35%</li>
		<li>Air: augmente les dégâts infligés aux créatures volantes de 50%</li>
		<li>Terre: augmente les dégâts infligés aux créatures physiques de 40%</li>
		<li>Électricité: augmente les dégâts infligés aux créatures magiques de 40%</li></ul>";

echo '<table class="localtable963"><tbody>
		<tr><td colspan="5"><h2>Les sorts</h2>';
echo '<div id="aide"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'aide\', \'nonaide\');">Afficher l\'aide</a></div>';
echo '<div id="nonaide" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'nonaide\', \'aide\');" >Cacher l\'aide</a><br><br><div style="font-family:default;text-align: left;">'.$aide.'</div></div>';
echo '<br><br>';
echo '<form method="get" action="encyclopedie_sorts.php#sorts">
<div class="rlalign">
	<div class="lralignl">
		<input type="hidden" name="ancienniv" value="'.$niv.'">
		<a href="encyclopedie_sorts.php?sorte='.$variable.'&niv=1#sorts" class="'; if ($niv==1) echo 'EncCreatLien'; else echo 'EncCreataffiche'; echo '">1</a> &nbsp;-&nbsp;
		<a href="encyclopedie_sorts.php?sorte='.$variable.'&niv=2#sorts" class="'; if ($niv==2) echo 'EncCreatLien'; else echo 'EncCreataffiche'; echo '">2</a> &nbsp;-&nbsp;
		<a href="encyclopedie_sorts.php?sorte='.$variable.'&niv=3#sorts" class="'; if ($niv==3) echo 'EncCreatLien'; else echo 'EncCreataffiche'; echo '">3</a> &nbsp;-&nbsp;
		<a href="encyclopedie_sorts.php?sorte='.$variable.'&niv=4#sorts" class="'; if ($niv==4) echo 'EncCreatLien'; else echo 'EncCreataffiche'; echo '">4</a> &nbsp;-&nbsp;
		<a href="encyclopedie_sorts.php?sorte='.$variable.'&niv=5#sorts" class="'; if ($niv==5) echo 'EncCreatLien'; else echo 'EncCreataffiche'; echo '">5</a> &nbsp;-&nbsp;
		<a href="encyclopedie_sorts.php?sorte='.$variable.'&niv=-1#sorts" class="';if ($niv==-1)echo 'EncCreatLien'; else echo 'EncCreataffiche'; echo '">Tous</a>
	</div>
	<div class="lralignr" style="position: relative; top:-3px;">
		<select  name="sorte" size=1 onchange="this.form.submit()">
			<option value="all"';		if ($variable=='0')	echo ' selected'; echo '>Choisir le type de sort...</option>
			<option value="Feu"';		if ($variable=='Feu')	echo ' selected'; echo '>Sorts de feu</option>
			<option value="Eau"';		if ($variable=='Eau')	echo ' selected'; echo '>Sorts d\'eau</option>
			<option value="Air"';		if ($variable=='Air')	echo ' selected'; echo '>Sorts d\'air</option>
			<option value="Terre"';		if ($variable=='Terre') echo ' selected'; echo '>Sorts de terre</option>
			<option value="Électricité"';	if ($variable=='Électricité')echo' selected';echo'>Sorts d\'électricité</option>
			<option value="att"';		if ($variable=='att')	echo ' selected'; echo '>Sorts offensifs</option>
			<option value="def"';		if ($variable=='def')	echo ' selected'; echo '>Sorfs défensifs</option>
			<option value="spe"';		if ($variable=='spe')	echo ' selected'; echo '>Sorts spéciaux</option>
		</select>
		<input type="submit" value=" >> "></a>
	</div>
</div>

<br>
</td></tr>
<tr>';


// construction des requètes sql
$sql = "SELECT id, nom, niveau, image, `élément` FROM magies_liste WHERE `id` != '-1'";
// niveau
if ($niv!=-1) $sql .= " AND niveau = $niv AND victime != 'Spécial'";
// type de sort
if ($variable == 'att')		$sql .= " AND type = 'Offensif' AND victime != 'Spécial'";
else if ($variable == 'def')	$sql .= " AND type = 'Défensif' AND victime != 'Spécial'";
else if ($variable == 'spe')	$sql .= " AND ( victime = 'Spécial' OR `nom` = 'Désintégration')";
else if ($variable == 'Feu' OR $variable == 'Eau' OR $variable == 'Air' OR $variable == 'Terre' OR $variable == 'Électricité')
				$sql .= " AND élément = '$variable' AND victime != 'Spécial'";
// tri
$sql .=  ' ORDER BY niveau ASC, nom ASC';



// affichage
$a = 0;
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))
{
	if($a == 4){$a = 0; echo"</tr>\n<tr>";}
	$a++;
	if ($data['nom'] != '')
	{
		echo '	
		<td class="creatbatiliste">
		<a class="discreb" href="info_sorts.php?sort='.$data['id'].'" onclick="NewWindow(this.href,\'name\',\'520\',\'300\',\'yes\');return false">
		<p>'.$data['nom'].'<br>
		('.$data['élément'].')<br></p>

		<div style="
		background-image: url(/images/border_spell.png);
	    background-position: center;
	    background-size: contain;
    	background-repeat: no-repeat;
		">
			<img  style="border-radius: 50%;margin: 15px; box-shadow: 0px 0px 10px black;" src="'.$data['image'].'" width="100" height="100" alt="'.$data['nom'].'" title="'.$data['nom'].'" border=1>
		</div>
		</a>
		</td>
		'."\n";
	}
}
for (;$a<3;$a++)
	echo "	<td>&nbsp;</td>\n";

mysql_close();
echo "</tr></tbody></table>";
include("fin.php");
