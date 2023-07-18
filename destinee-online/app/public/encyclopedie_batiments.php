<?php session_start();

$head_title = 'Les batiments';
$head_keywords = 'batiment, recruter, creature, combat';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Bâtiments");

include ("connect.php");

$niv = (isset($_GET['niv'])) ? mysql_real_escape_string($_GET['niv']) : '1';
if(isset($_GET['tri'])) { $tri = ($_GET['tri'] == 'cout_bâtiment') ? 'cout_batiment' : mysql_real_escape_string($_GET['tri']) ; }
else { $tri = '0'; }
$sqlniv = (($niv != 'Tous')&&($niv!='Magie')) ? 'AND niveau = \''.$niv.'\'' : '';
$sqltri = ($tri != '0') ? 'ORDER BY `'.$tri.'` DESC' : 'ORDER BY `nom` DESC';



echo '<table class="localtable963"><tbody>
<tr>	<td colspan="6"><h2>Les bâtiments</h2>
<div class="longtexte">Sur Destinée, la construction d\'un bâtiment est chose plus complexe qu\'à l\'habitude. Chaque bâtiment étant relié à un ou plusieurs types de terres différents, il vous est d\'abord nécessaire d\'obtenir le nombre requis d\'acres associé au bâtiment de votre choix. Il est à noter que le nombre d\'acres requis pour un bâtiment est relatif aux <a href="encyclopedie_races.php">races</a>, ces dernières ayant un facteur de difficulté différent pour chaque type de terrains (<i>Voir "<a href="encyclopedie_terrains.php">Les terrains</a>"</i>). Il suffit ensuite d\'avoir le nombre de pièces d\'or nécessaire, nombre qui varie aussi en fonction du facteur de difficulté relié aux terrains ainsi qu\'en fonction de votre charisme, et la construction peut débuter !</div>
<div class="longtexte">La liste suivante vous propose, selon la classification de votre choix, le nom des différents bâtiments existant, <a href="encyclopedie_creatures.php">les créatures</a> auxquelles ils sont reliés ainsi qu\'une série de caractéristiques pertinentes qui, jumelées à celles présentées par <a href="encyclopedie_creatures.php">la liste des créatures</a>, vous offre un survol complet nécessaire à l\'élaboration des stratégies les plus complexes.</div>
<div class="longtexte" style="padding-bottom:20px;">Les données relatives aux bâtiments spéciaux, destinés non pas à recruter des créatures mais à augmenter leur efficacité au combat, se trouvent sur <a href="encyclopedie_batspe.php">une autre page</a>.</div>
<a name="batiment">
<form method="get" action="encyclopedie_batiments.php#batiment">
<table class="discr100"><tr><td class="discr100left1">';

$niveau = array('1','2','3','4','5','6','Tous','Magie');
$prems = true;
foreach ($niveau as $which)
{
	if (!$prems)	echo  '-';
	echo '<a href="encyclopedie_batiments.php?niv='.$which.'&tri='.$tri.'#batiment" class="';
	if ($which=="$niv")	echo 'EncCreatLien';
	else			echo 'EncCreatAffiche';
	echo '">';
	if (!$prems)	echo '&nbsp; ';
	echo $which.' &nbsp;</a>';
	$prems = false;
}
echo '</td>
<td class="discr100center1"><input type="hidden" name="niv" value="'.$niv.'"><b>Triés par&nbsp;</b></td>
<td class="discr100right1">
<select name="tri" size=1 onchange="javascript:this.form.submit();">
	<option value="0"';	if ($tri=='0')	 	echo ' selected'; echo '>Nom</option>
	<option value="niveau"';	if ($tri=='niveau')	echo ' selected'; echo '>Niveau</option>
	<option value="cout_bâtiment"';	if ($tri=='cout_bâtiment')echo' selected';echo '>Coût</option>
	<option value="nombre"';	if ($tri=='nombre')	echo ' selected'; echo '>Nbr/Jour</option>
	<option value="espace"';	if ($tri=='espace')	echo ' selected'; echo '>Espace</option>
	<option value="terrain01"';	if ($tri=='terrain01')	echo ' selected'; echo '>Terrain</option>
</select><input type="submit" value=" >> "></td></tr></table>
</form>
</td></tr><tr>
';

if ($niv == 'Magie')
	$sql = "SELECT id, batiment, nom, image, niveau FROM creatures WHERE id < '6' AND id != '142' ORDER BY `niveau` ASC";
else
	$sql = "SELECT id, batiment, nom, image, niveau FROM creatures WHERE id > '5' AND id != '142' AND constructible = '1' ".$sqlniv." ".$sqltri;

$x = 0;
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$nom_batiment = $data[1];
	$nom_creature = $data[2];
	$image = $data[3];
	$niveau = $data[4];

	if ($x > 5)
	{
		$x = 0;
		echo "</tr>\n<tr>";
	}
	$x++;
	
	echo '<td class="creatbatiliste4">
		<a class="discreb" href="info_createncyclo.php?mode=1&amp;id='.$id.'" onclick="NewWindow(this.href,\'name\',\'470\',\'310\',\'yes\');return false"><b>'.$nom_batiment.'</b><br>';
	if ($niv == "Magie")	echo '		(Tour de niveau '.$niveau.")<br>\n";
	else			echo '		('.$nom_creature.")<br>\n";
	echo '		<img src="'.$image.'" width="100" height="100" alt="'.$nom_batiment.'" title="'.$nom_batiment.'" border=1></a></td>
';
}

mysql_close();
echo "</tr></tbody></table>";
include ("fin.php");
?>
 