
	<h2>Les créatures</h2>
	<div class="longtexte">Qu'il soit question du plus petit des rats ou du plus énorme des dragons, chaque créature trouve sur
		Destinée un avantage dont elle peut se vanter. Jouant sur plus d\'une dizaine de variables, elles ont
		toutes une ou plusieurs caractéristiques spéciales qui les différencient des autres, leur donnant leur
		caractère unique, innovateur.
	</div>
	<div class="longtexte" style="padding-bottom:20px;">En vous fiant sur la liste présente ci-dessous, il
		vous est possible d\'analyser en profondeur quelques créatures ainsi que leurs caractéristiques respectives. 
		Les différentes classifications présentées vous offriront la chance d\'évaluer le tout selon l\'angle de 
		votre choix, que vous privilégiez la force de frappe, la rapidité ou encore la défense de vos troupes.
	</div>


<?php 
echo '<form>';
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



// Tri attaque magique ou non
$magique = array('Physique', 'Magique', 'Tous');
$prems = true;
foreach ($magique as $key => $which) {
	if (!$prems)	echo  '|';
	$prems = false;
	echo '<a href="encyclopedie_creatures.php?mag='.$key.'&niv='.$niv.'&tri='.$tri.$traits_url.'#creature" class="';
	if ($key=="$mag" && $special == 0 && $raciale == 0)	echo 'EncCreatLien';
	else			echo 'EncCreatAffiche';
	echo '">';
	if (!$prems)	echo '&nbsp; ';
	echo $which.'&nbsp; </a>';
}


// Tri par niveau
$niveau = array('1','2','3','4','5','6','Tous');
$prems = true;
foreach ($niveau as $which) {
	if (!$prems)	echo  '-';
	$prems = false;
	echo '<a href="encyclopedie_creatures.php?mag='.$mag.'&niv='.$which.'&tri='.$tri.$traits_url.'#creature" class="';
	if ($which=="$niv")	echo 'EncCreatLien';
	else			echo 'EncCreatAffiche';
	echo '">';
	if (!$prems)	echo '&nbsp; ';
	echo $which.'&nbsp; </a>';
}

// Tri par traits

$hide_sol = $_GET['sol'] == '0' ? 'checked' : '';
$hide_vol = $_GET['vol'] == '0' ? 'checked' : '';
$hide_contact = $_GET['contact'] == '0' ? 'checked' : '';
$hide_range = $_GET['range'] == '0' ? 'checked' : '';
$hide_bgh = $_GET['bgh'] == '0' ? 'checked' : '';
$hide_nobgh = $_GET['nobgh'] == '0' ? 'checked' : '';


// Tri par stats

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
		<td class="discr100left1"><b>Masquer: </b></td> 
	</tr>
	<tr class="rollovercolor">
			<td><span >Sol</span></td> <td style="width: 25px;"><input type="checkbox" name="sol" value="0" '.$hide_sol.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span >Volantes</span></td> <td style="width: 25px;"><input type="checkbox" name="vol" value="0" '.$hide_vol.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span >Contact</span></td> <td style="width: 25px;"><input type="checkbox" name="contact" value="0" '.$hide_contact.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span >A Distance</span></td style="width: 25px;"> <td><input type="checkbox" name="range" value="0" '.$hide_range.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span >BGH</span></td> <td style="width: 25px;"><input type="checkbox" name="bgh" value="0" '.$hide_bgh.'></td>
	</tr>
	<tr class="rollovercolor">
			<td><span >Non BGH</span></td> <td style="width: 25px;"><input type="checkbox" name="nobgh" value="0" '.$hide_nobgh.'></td> &nbsp;&nbsp;
	</tr>
	<tr>
			<td><input type="submit" value=" >> "></td>
	</tr>


	</table></form></td></tr><tr>';

try

{
	$bdd = new PDO('mysql:host=localhost;dbname=Destinee01;charset=utf8', 'phpmyadmin', 'n5k8Ha6W');
}
catch (Exception $e)
{
        die('Erreur : ' . $e->getMessage());
}

if( !empty($_POST['tri']) AND ($_POST['tri']) == 'niveau' )
{
	sql = 'SELECT * FROM creatures ORDER BY niveau';
}
/*
	if ($special != 0) {
	$sql = "SELECT id, type, image, nom, terrain01 FROM creatures WHERE id > '5' AND speciale = $special $sql_traits";
} else if ($raciale != 0) {
	$sql = "SELECT id, type, image, nom, terrain01 FROM creatures WHERE id > '5' AND raciale = $raciale AND `speciale` = 0 $sql_traits ORDER BY `niveau`";
} else {
	$sql = "SELECT id, type, image, nom, terrain01 FROM creatures WHERE id > '5' ".$sqlmag." ".$sqlniv." $sql_traits AND constructible = '1' AND raciale = 0 ".$sqltri;
}
*/

?>

<table>
	<tr>

<?php

$req = $bdd->query($sql);


$x = 0;
while ($data = $req->fetch())
{

	$x++;
		

?>

		
			<td>
				<a class="discreb" href="info_createncyclo.php?mode=0&amp;id="<?php echo $data['id'] ?>" onclick="NewWindow(this.href,\'name\',\'470\',\'430\',\'yes\');return false">

					<b><?php echo $data['nom'] ?></b><br>
					<?php echo $data['type'] ?><br>	
					<?php echo $data['terrain01'] ?><br>	
					<img src="'.$image.'" width="100" height="100" <?php echo 'alt="'.$data['nom'].'"' ?> <?php echo'title="'.$data['nom'].'"' ?> border=1>
				</a>
			</td>
		

<?php

	if ($x >= 6) {
		echo '</tr>';
		$x = 0;
	}

}

$req->closeCursor();


?>

</table>
