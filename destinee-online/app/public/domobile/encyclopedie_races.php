<?php
session_start();

$head_title = 'Les races';
$head_keywords = 'race, classe, joueur, personnage, role';



include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Races");
echo '<table class="localtable963"><tbody><tr><td colspan="4"><h2>Les races</h2></td></tr><tr>';
include ("connect.php");


// RACES
$filename = 'cache/encyclopedie_races_'.$serveur.'.txt';
if (file_exists($filename)) {
	include ($filename);
}
else
{
	$out = '';

	// LISTE AVEC IMAGES
	$x = 0;
	$req = mysql_query("SELECT race, image FROM races ORDER BY race") or die('Erreur SQL 3 !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$nom_race = $data[0];
		$image = $data[1];
		if ($x == 6){$x = 0; $out .= "</tr>\n<tr>";}
		$x++;
		$out .= '	<td class="creatbatiliste4"><a href="info_race.php?race='.$nom_race.'" onclick="NewWindow(this.href,\'name\',\'550\',\'550\',\'yes\');return false">
			<h4>'.$nom_race.'</h4><br>
			<img src="'.$image.'" width="100" height="100" alt="'.$nom_race.'" title="'.$nom_race.'" border=1></a></td>'."\n";
	}
	for (; ($x<6)&&($x!==0); $x++)
		$out .= '<td>&nbsp;</td>'."\n";
	$out .= '</tr><tr><td colspan="6">';

	$out .= changement("Les races");
	$out .= '		<div class="longtexte" style="padding-bottom:0px; position:relative; top:0px;">
<ul>
<li>Un héros choisit une race parmi l\'ensemble des races disponibles</li>
<li>On ne peut changer de race en cours de round, à moins de reset son héros</li>
<li>La race confère au héros une aptitude de départ (cf. tableau ci-dessous)</li>
<li>La race confère au héros la possibilité de construire 2 bâtiments de créatures dites "raciales" (cf. section "créatures")</li>
<li>À chaque montée de niveau, le héros voit ses statistiques augmentées par celles de sa race (cf. tableau ci-dessous)</li>
<li>Chaque race est plus ou moins à l\'aise pour exploiter les terrains (cf terrains)</li>
<li style="padding: 0 25px;">Au regard des aptitudes Purification & Profanation, les races sont dites: <ul>
<li> bonnes (Ancien, Elfe, Fée, Fétide, Gnome, Célestial, Nain, Malakeh)</li>
<li> mauvaises (i.e. Elfe Noir, Géant, Infernal, Minotaure, Orque, Sahuagin, Septentrional, Vampire)</li>
<li> neutres (i.e. Humain, Ashtar)</li><br /></li></ul>
</ul>
</div>
		';

	// STATISTIQUES
	$out .= changement("Les statistiques");
	$out .= '<div class="longtexte" style="padding-bottom:0px; position:relative; top:0px;">Les statistiques gagnées à chaque niveau de tout héros sont fonction de sa race, à l\'exception près de quelques facteurs traités en d\'autres sections, tels que les dieux, les objets, etc. Ainsi le choix de la race est primordial, quelque soit la classe qui vous intéresse. Distribuées de manière équilibrée, les statistiques raciales établissent ce que deviendront les héros, influençant lors des gains de niveau. Le tableau qui suit vous montre les statistiques gagnées à chaques gain de niveau, en fonction de la race donnée.</div>
		';
	$sql3 = "SELECT att, def, ini, cha, end, pui, image FROM races ORDER BY race ASC";
	$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$anci = mysql_fetch_row($req3);
	$ash = mysql_fetch_row($req3);
	$cele = mysql_fetch_row($req3);
	$elfe = mysql_fetch_row($req3);
	$elfn = mysql_fetch_row($req3);
	$fees = mysql_fetch_row($req3);
	$feti = mysql_fetch_row($req3);
	$gean = mysql_fetch_row($req3);
	$gnom = mysql_fetch_row($req3);
	$homm = mysql_fetch_row($req3);
	$infe = mysql_fetch_row($req3);
	$mino = mysql_fetch_row($req3);
	$nain = mysql_fetch_row($req3);
	$orqu = mysql_fetch_row($req3);
	$sahu = mysql_fetch_row($req3);
	$sept = mysql_fetch_row($req3);
	$vamp = mysql_fetch_row($req3);
	$mala = mysql_fetch_row($req3);

	$out .= '<center>
<table class="tableraces" style="margin-right:30px;"><tbody>
<tr>	<td></td>
	<td style="width: 30px;"><img src="/images/terrain/anciens.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/ashtars.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/celestiaux.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/elfes.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/elfesnoirs.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/fees.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/fetides.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/geants.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/gnomes.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/hommes.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/infernaux.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/malakehs.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/minotaures.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/nains.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/orques.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/sahuagins.gif" align="middle"></td>
	<td style="width: 30px;"><img style="height: 125px;" src="/images/terrain/septentrionaux.gif" align="middle"></td>
	<td style="width: 30px;"><img src="/images/terrain/vampires.gif" align="middle"></td>
	</tr>';
	for ($i = 0; $i < 6; $i++)
	{
		$out .= '<tr><td></td><td colspan="16" class="hline"></td></tr>';
		switch ($i)
		{
			case '0': $out .= '<tr><td class="tdraces">Attaque</td>';	break;
			case '1': $out .= '<tr><td class="tdraces">Défense</td>';	break;
			case '2': $out .= '<tr><td class="tdraces">Initiative</td>';	break;
			case '3': $out .= '<tr><td class="tdraces">Charisme</td>';	break;
			case '4': $out .= '<tr><td class="tdraces">Endurance</td>';	break;
			case '5': $out .= '<tr><td class="tdraces">Puissance</td>';	break;
		}
		$out .= '	<td class="rollovercolor">'.$anci[$i].'</td>
		<td class="rollovercolor">'.$ash[$i].'</td>
		<td class="rollovercolor">'.$cele[$i].'</td>
		<td class="rollovercolor">'.$elfe[$i].'</td>
		<td class="rollovercolor">'.$elfn[$i].'</td>
		<td class="rollovercolor">'.$fees[$i].'</td>
		<td class="rollovercolor">'.$feti[$i].'</td>
		<td class="rollovercolor">'.$gean[$i].'</td>
		<td class="rollovercolor">'.$gnom[$i].'</td>
		<td class="rollovercolor">'.$homm[$i].'</td>
		<td class="rollovercolor">'.$infe[$i].'</td>
		<td class="rollovercolor">'.$mino[$i].'</td>
		<td class="rollovercolor">'.$nain[$i].'</td>
		<td class="rollovercolor">'.$orqu[$i].'</td>
		<td class="rollovercolor">'.$sahu[$i].'</td>
		<td class="rollovercolor">'.$sept[$i].'</td>
		<td class="rollovercolor">'.$vamp[$i].'</td>
		<td class="rollovercolor">'.$mala[$i].'</td>
		</tr>';
	}
	$out .= '</tbody></table></center>';


	// APTITUDES
	$out .= changement("Les aptitudes");
	$out .= '<div class="longtexte">Lors du choix de votre race, <a href="encyclopedie_aptitudes.php">une aptitude</a> dite "de base" vous est attribuée, de la même manière qu\'il l\'est fait lors du choix de <a href="encyclopedie_classes.php">votre classe</a>. Cette aptitude de base trouve son sens dans le fait que toute race possède un trait, un attribut ou un pouvoir unique et spécifique à cette dernière.</div>';
	$out .= '<UL style="text-align: left">';
	// construction du tableau $aptitudes
	$aptitude = array();
	$re1 = mysql_query("SELECT id, nom FROM `aptitudes_liste`") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($re1)) {
		$aptitude[$data[0]] = $data[1];
	}
	$aptitude[0] = 'Aucune aptitude n\'est imposée au niveau 1';
	$req = mysql_query("SELECT race, aptitude FROM `races` ORDER BY `race` ASC") or die('Erreur SQL !<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$out .= '	<li><div style="width:125px; float:left;">'.$data[0].'</div> -> ';
		if ($data[1] == 0)
			$out .= $aptitude[$data[1]].'</li>';
		else	$out .= '<a href="info_aptitude.php?aptitude='.$data[1].'" onclick="NewWindow(this.href,\'name\',\'380\',\'500\',\'yes\');return false">'.$aptitude[$data[1]].'</a></li>';
	}
	$out .= '</UL></div>';

	$out .= '</td></tr></tbody></table>';
	echo $out;
	// écriture dans le fichier cache
	$fp = fopen($filename,"w+");
	fwrite ($fp,$out);
	fclose ($fp);

}

mysql_close();
include ("fin.php");
?>
