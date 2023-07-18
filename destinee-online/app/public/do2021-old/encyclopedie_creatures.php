<?php session_start();

$head_title = 'Les créatures';
$head_keywords = 'combat, creature, batiment, role';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Créatures");

include ("connect.php");


$niv = (isset($_GET['niv'])) ? mysql_real_escape_string($_GET['niv']) : '1';
$mag = (isset($_GET['mag'])) ? mysql_real_escape_string($_GET['mag']) : '2';
$tri = (isset($_GET['tri'])) ? mysql_real_escape_string($_GET['tri']) : '0';
$special = (isset($_GET['special'])) ? $_GET['special'] : 0;
$raciale = (isset($_GET['raciale'])) ? $_GET['raciale'] : 0;
$sol = (isset($_GET['sol'])) ? mysql_real_escape_string($_GET['sol']) : '1';
$vol = (isset($_GET['vol'])) ? mysql_real_escape_string($_GET['vol']) : '1';
$contact = (isset($_GET['contact'])) ? mysql_real_escape_string($_GET['contact']) : '1';
$range = (isset($_GET['range'])) ? mysql_real_escape_string($_GET['range']) : '1';
$bgh = (isset($_GET['bgh'])) ? mysql_real_escape_string($_GET['bgh']) : '1';
$nobgh = (isset($_GET['nobgh'])) ? mysql_real_escape_string($_GET['nobgh']) : '1';

$sqlniv = ($niv != 'Tous') ? 'AND niveau = \''.$niv.'\'' : '';
$sqlmag = ($mag != '2') ? 'AND att_mag = \''.$mag.'\'' : '';
$sqltri = ($tri != '0') ? ($tri != 'type') ? 'ORDER BY `'.$tri.'` DESC' : 'ORDER BY `type`' : 'ORDER BY `nom` DESC';
if ($tri=='max')
	$sqltri = 'ORDER BY `min`+`max` DESC, `max` DESC';
if ($tri=='terrain')
	$sqltri = 'ORDER BY `terrain01` DESC, `terrain01` DESC';

$sqlsol = ($sol == '0') ? 'AND vol = 1 ' : '';
$sqlvol = ($vol == '0') ? 'AND vol = 0 ' : '';
$sqlcontact = ($contact == '0') ? 'AND `range` = 1 ' : '';
$sqlrange = ($range == '0') ? 'AND `range` = 0 ' : '';
$sqlbgh = ($bgh == '0') ? 'AND bgh = 0 ' : '';
$sqlnobgh = ($nobgh == '0') ? 'AND bgh = 1 ' : '';
$sql_traits = $sqlsol.$sqlvol.$sqlcontact.$sqlrange.$sqlbgh.$sqlnobgh;

$traits_url = "&sol=$sol&vol=$vol&contact=$contact&range=$range&bgh=$bgh&nobgh=$nobgh";

echo '<div><table class="localtable963"><tbody>
	<tr><td colspan="6"><h2>Les créatures</h2>
	<div class="longtexte">Qu\'il soit question du plus petit des rats ou du plus énorme des dragons, chaque créature trouve sur
	Destinée un avantage dont elle peut se vanter. Jouant sur plus d\'une dizaine de variables, elles ont
	toutes une ou plusieurs caractéristiques spéciales qui les différencient des autres, leur donnant leur
	caractère unique, innovateur.</div>
	<div class="longtexte" style="padding-bottom:20px;">En vous fiant sur la liste présente ci-dessous, il
	vous est possible d\'analyser en profondeur quelques créatures ainsi que leurs caractéristiques respectives.
	Les différentes classifications présentées vous offriront la chance d\'évaluer le tout selon l\'angle de
	votre choix, que vous privilégiez la force de frappe, la rapidité ou encore la défense de vos troupes.</div>
	<a name="creature">
	<form method="get" action="encyclopedie_creatures.php#creature" name="form1">
	<table class="discr100"><tr><td colspan="6" class="discr100left1">
';

// Tri attaque magique ou non
$magique = array('Physique', 'Magique', 'Tous');
$prems = true;
foreach ($magique as $key => $which) {
	if (!$prems)	echo  '-';
	$prems = false;
	echo '<a href="encyclopedie_creatures.php?mag='.$key.'&niv='.$niv.'&tri='.$tri.$traits_url.'#creature" class="';
	if ($key=="$mag" && $special == 0 && $raciale == 0)	echo 'EncCreatLien';
	else			echo 'EncCreatAffiche';
	echo '">';
	if (!$prems)	echo '&nbsp; ';
	echo $which.'&nbsp; </a>';
}
echo '- <a href="encyclopedie_creatures.php?special=1'.$traits_url.'" class="';
if ($special == 1) 	echo 'EncCreatLien';
else			echo 'EncCreatAffiche';
echo '">';
echo 'Invocations &nbsp; </a>';
echo '- <a href="encyclopedie_creatures.php?special=2'.$traits_url.'" class="';
if ($special == 2) 	echo 'EncCreatLien';
else			echo 'EncCreatAffiche';
echo '">';
echo 'Marché noir &nbsp; </a>';
echo '- <a href="encyclopedie_creatures.php?raciale=1'.$traits_url.'" class="';
if ($raciale == 1) 	echo 'EncCreatLien';
else			echo 'EncCreatAffiche';
echo '">';
echo 'Raciales &nbsp; </a>';

echo '</td></tr>
<tr><td class="discr100left1">';

$niveau = array('1','2','3','4','5','6','Tous');
$prems = true;
foreach ($niveau as $which)
{
	if (!$prems)	echo  '-';
	$prems = false;
	echo '<a href="encyclopedie_creatures.php?mag='.$mag.'&niv='.$which.'&tri='.$tri.$traits_url.'#creature" class="';
	if ($which=="$niv")	echo 'EncCreatLien';
	else			echo 'EncCreatAffiche';
	echo '">';
	if (!$prems)	echo '&nbsp; ';
	echo $which.'&nbsp; </a>';
}
$hide_sol = $_GET['sol'] == '0' ? 'checked' : '';
$hide_vol = $_GET['vol'] == '0' ? 'checked' : '';
$hide_contact = $_GET['contact'] == '0' ? 'checked' : '';
$hide_range = $_GET['range'] == '0' ? 'checked' : '';
$hide_bgh = $_GET['bgh'] == '0' ? 'checked' : '';
$hide_nobgh = $_GET['nobgh'] == '0' ? 'checked' : '';
echo '</td>
<td class="discr100center1"><input type="hidden" name="niv" value="'.$niv.'"><input type="hidden" name="mag" value="'.$mag.'"><b>Triées par&nbsp;</b></td>
<td class="discr100right1">
	<Select name="tri" size=1 onchange="javascript:this.form.submit();">
	<option value="0" ';	if ($tri=='0')	 echo ' selected'; echo '>Nom</option>
	<option value="niveau"';if ($tri=='niveau')echo' selected';echo '>Niveau</option>
	<option value="att"'; 	if ($tri=='att') echo ' selected'; echo '>Attaque</option>
	<option value="def"'; 	if ($tri=='def') echo ' selected'; echo '>Défense</option>
	<option value="ini"'; 	if ($tri=='ini') echo ' selected'; echo '>Initiative</option>
	<option value="end"'; 	if ($tri=='end') echo ' selected'; echo '>Endurance</option>
	<option value="pvs"'; 	if ($tri=='pvs') echo ' selected'; echo '>Vitalité</option>
	<option value="max"'; 	if ($tri=='max') echo ' selected'; echo '>Dégâts</option>
	<option value="type"'; 	if ($tri=='type') echo ' selected'; echo '>Type</option>
	<option value="terrain"'; 	if ($tri=='terrain01') echo ' selected'; echo '>Terrain principal</option>
	</select></a></td></tr>';


echo '
	<tr>
		<td class="discr100left1"><b>Afficher Uniquement : </b></td>
	</tr>
	<tr class="rollovercolor">
			<td><span>Créatures Volantes</span></td> <td style="width: 25px;"><input type="checkbox" name="sol" value="0" '.$hide_sol.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span>Créatures au Sol</span></td> <td style="width: 25px;"><input type="checkbox" name="vol" value="0" '.$hide_vol.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span>Créatures Attaque à Distance</span></td> <td style="width: 25px;"><input type="checkbox" name="contact" value="0" '.$hide_contact.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span>Créatures de Contact</span></td style="width: 25px;"> <td><input type="checkbox" name="range" value="0" '.$hide_range.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span >Créatures Chasseurs de gros gibier</span></td> <td style="width: 25px;"><input type="checkbox" name="nobgh" value="0" '.$hide_nobgh.'></td> &nbsp;&nbsp;
	</tr>
	<tr class="rollovercolor">
			<td><span>Créatures NON-Chasseurs de gros gibier</span></td> <td style="width: 25px;"><input type="checkbox" name="bgh" value="0" '.$hide_bgh.'></td>
	</tr>
	<tr>
			<td><input class="" type="submit" value=" >> "></td>
	</tr>


	</table></form></td></tr><tr>';

if ($special != 0) {
	$sql = "SELECT id, type, image, nom, terrain01 FROM creatures WHERE id > '5' AND speciale = $special $sql_traits";
} else if ($raciale != 0) {
	$sql = "SELECT id, type, image, nom, terrain01 FROM creatures WHERE id > '5' AND raciale = $raciale AND `speciale` = 0 $sql_traits ORDER BY `niveau`";
} else {
	$sql = "SELECT id, type, image, nom, terrain01 FROM creatures WHERE id > '5' ".$sqlmag." ".$sqlniv." $sql_traits AND constructible = '1' AND raciale = 0 ".$sqltri;
}
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

$x = 0;
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$type_creature = $data[1];
	$image = $data[2];
	$nom_creature= $data[3];
	$terrain_creature = $data[4];

	if ($x == 6)
	{
		$x = 0;
		echo '</tr><tr>';
	}
	$x++;

	echo '
	<td>
	<a class="discreb" href="info_createncyclo.php?mode=0&amp;id='.$id.'" onclick="NewWindow(this.href,\'name\',\'470\',\'430\',\'yes\');return false">
		<p>'.$nom_creature.'<br>
		('.$type_creature.')<br>
		('.$terrain_creature.')<br></p>
		<div style="
		background-image: url(/images/border_crea.png);
	    background-position: center;
	    background-size: contain;
    	background-repeat: no-repeat;
		">
			<img style="border-radius: 50%;margin: 15px; box-shadow: 0px 0px 10px black;" src="'.$image.'" width="100" height="100" alt="'.$nom_creature.'" title="'.$nom_creature.'" border=1>
		</div>
	</a>
	</td>
';
}

if ($x == 0)
	$x = 6;
for (; $x<6;$x++)
	echo '<td></td>';
echo '</tr><tr><td colspan=6 style="text-align:left;"></div>';
echo changement("Traits des créatures");
?>
<div class="creattypeliste"><h4><i>Par defaut</i></h4> : Les statistiques d'attaque, de défense, d'initiative et d'endurance de la créature sont augmentés respectivement par celles d'attaque, de défense, d'initiative et d'endurance du héro. La résolution des dégâts s'effectue sur la défense de la créature qui defend. Les créatures sont considérées comme "au sol", "corps à corps" et leur dégâts dits "physiques".</div>
<div class="creattypeliste"><h4>Attaque magique</h4> : La statistique d'attaque de la créature est augmentée par la statistique de puissance du héro. De plus la résolution des dégâts s'effectue sur la statistique d'endurance de la créature qui défend. Les dégats sont dits "magiques".</div>
<div class="creattypeliste"><h4>Créature raciale</h4> : La statistique d'attaque de la créature est augmentée par le maximum des statistiques d'attaque ou de puissance du héros. De même la défense et d'endurance de la créature sont augmentés par le maximum de la défense ou endurance du héros. La créature bénéficie en outre des bonus de dégâts et de résistances les plus avantageux du héros quels que soient ses traits.</div>
<div class="creattypeliste"><h4>Attaque à distance</h4> : Attaque au tour préliminaire, infligeant 50% de ses dégâts.</div>
<div class="creattypeliste"><h4>Créature volante</h4> : 18% de résistance face aux créatures n'ayant pas les traits "Attaque à distance" ou "Créature volante" ; c'est à dire les créatures "au sol" et "corps à corps". 6% de résistance face aux créatures ayant le trait "Attaque à distance".</div>
<div class="creattypeliste"><h4>Chasseur de gros gibier</h4> : 50% de chances d'attaquer une créature parmis les plus puissantes créatures adverses (au lieu d'une créature choisie au hasard) et de lui infliger 30% de dégâts supplémentaires.</div>
<?php
echo changement("Effets des types de créatures");
?>
<div class="creattypeliste"><h4>Aberration</h4> (Torpeur) : diminue l'attaque des créatures frappées par les Aberrations (x% de baisse à l'attaque pour une baisse de x% des points de vie du stack de créatures touché).</div>
<div class="creattypeliste"><h4>Animal</h4> (Furie bestiale) : donne une chance sur 5 d'infliger 50% de dégâts supplémentaires.</div>
<div class="creattypeliste"><h4>Construction</h4> (Pure mécanique) : 15% de résistance contre les attaques des créatures magiques.</div>
<div class="creattypeliste"><h4>Cuirassé</h4> (Impénétrable) : 21% de résistance face aux créatures volantes.</div>
<div class="creattypeliste"><h4>Dragon</h4> (Ecailles) : 21% de résistance face aux créatures archères.</div>
<div class="creattypeliste"><h4>Épineux</h4> (Piquants) : les créatures de contact qui frappent les épineux reçoivent des dommages en retour (équivalent à une attaque des créatures tuées).</div>
<div class="creattypeliste"><h4>Ethéré</h4> (Immatériel) : les attaques des créatures éthérées ignorent jusqu'à 15% de la moyenne de la défense et de l'endurance de la cible.</div>
<!--<div class="creattypeliste"><h4>Ethéré</h4> (Immatériel) : <br/>- Immatériel : La créature adverse subit plus de dégâts s'il elle possède plus de résistance que d'initiative.<br/>- Âme Puissante : La créature Ethérée inflige moins de dégâts si la créature adverse possède plus d'initiative que de résistance. <br/>(<u>résistance = statistique la plus élevée entre la défense et l'endurance</u>)</div>-->
<div class="creattypeliste"><h4>Géant</h4> (Attaque puissante) : bonus offensif contre les créatures de haut niveau (+5% de dégâts infligés par niveau supérieur à 1).</div>
<div class="creattypeliste"><h4>Gobelinoïde</h4> (Sauvagerie) : augmentation de 15% des dégâts contre les créatures non-volantes.</div>
<div class="creattypeliste"><h4>Humanoïde</h4> : ignore les bonus offensifs/défensifs des autres types de créatures.</div>
<div class="creattypeliste"><h4>Légendaire</h4> (Légende vivante) : bonus défensif contre les créatures de bas niveau (4% de résistance par niveau inférieur à 6).</div>
<div class="creattypeliste"><h4>Mort-vivant</h4> (Non-mort) : 15% de résistance contre les attaques des créatures physiques.</div>
<div class="creattypeliste"><h4>Planaire</h4> (Transplanaire) : augmentation de 15% des dégâts infligés aux créatures magiques.</div>
<div class="creattypeliste"><h4>Plante</h4> (Force végétale) : augmentation de 15% des dégâts infligés aux créatures physiques.</div>
<div class="creattypeliste"><h4>Reptile</h4> (Approche discrète) : infligent entre 40% et 80% de leurs dégâts au tour préliminaire.</div>
<div class="creattypeliste"><h4>Vermine</h4> (Multitude) : bonus défensif contre les créatures de haut niveau (5% de résistance par niveau supérieur à 1).</div>
</div>

<?php
echo "</td></tr></tbody></table>";

mysql_close();
include ("fin.php");
?>
