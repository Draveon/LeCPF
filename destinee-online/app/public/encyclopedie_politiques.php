<?php session_start();

$head_title = 'Les systèmes politiques';
$head_keywords = 'politique, influence, province';

include ("debut.php");
if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Politiques");

include("connect.php");


echo '<table class="localtable630"><tbody>
<tr>	<td><h1>Les différents systèmes politiques</h1><br>&nbsp;';

?>
<br>
<br>
<div class="creattypeliste"><h4>Gain de créatures par jour</h4> : Pourcentage appliqué au rendement des bâtiments de créatures.</div>
<div class="creattypeliste"><h4>Coût général des bâtiments</h4> : Pourcentage appliqué au coût des bâtiments, en termes de pièces d'or et d'âcres de terrain.</div>
<div class="creattypeliste"><h4>Récupération magique</h4> : Pourcentage appliqué au gain de mana par minute, et inversement appliqué au coût en mana des sorts.</div>
<div class="creattypeliste"><h4>Exploration & Découvertes</h4> : Pourcentage appliqué au nombre d'âcres de terrain trouvés en exploration et en pacification, ainsi qu'aux chances de trouver des objets.</div>
<div class="creattypeliste"><h4>Total des revenus</h4> : Pourcentage appliqué au gain de pièces d'or par minute.</div>
<div class="creattypeliste"><h4>Globe de protection</h4> : Pourcentage appliqué au temps de protection après un combat affaiblissant.</div>
<?php


$sql = "SELECT politique, texte FROM politiques_effets ORDER BY politique";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$politique = $data[0];
	$texte = $data[1];

	$sql2 = "SELECT * FROM politiques_effets WHERE politique = '$politique'";
	$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
	$data2 = mysql_fetch_row($req2);
	
	$liste = array();
	$sql3 = "SELECT Province FROM provinces_politiques WHERE politique1 = '$politique' ORDER BY Province ASC";
	$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.mysql_error());
	while ($data3 = mysql_fetch_row($req3))
		$liste[] = '<a href="historique.php?texte=3#'.strtolower($data3[0]).'">'.$data3[0].'</a>';
	$listeprovinces = '';
	if (sizeof($liste) == 1)	$listeprovinces = '<h4>Province</h4> : ' .implode(', ',$liste);
	else if (sizeof($liste) > 1)	$listeprovinces = '<h4>Provinces</h4> : '.implode(', ',$liste);

	echo changement($politique.'<a name="'.strtolower($politique).'"></a>');
	
	
	echo '<table style="width:100%;"><tbody>
	<tr>	<td rowspan="11" style="width: 55%; text-align:left; padding-right: 40px;"><div class="longtexte">'.$texte.'</div>'.$listeprovinces.'</td>
		<td class="tdlef">Gain de créatures par jour</td>
		<td class="tdrig">'.($data2[2]*100).' %</td>
		<td rowspan="11" style="width:30px;">&nbsp;</td>	</tr>
	<tr>	<td class="hline" colspan="2"></td></tr>
	<tr>	<td class="tdlef">Coût général des bâtiments</td>
		<td class="tdrig">'.($data2[3]*100).' %</td></tr>
	<tr>	<td class="hline" colspan="2"></td></tr>
	<tr>	<td class="tdlef">Récupération magique</td>
		<td class="tdrig">'.($data2[4]*100).' %</td></tr>
	<tr>	<td class="hline" colspan="2"></td></tr>
	<tr>	<td class="tdlef">Exploration & Découvertes</td>
		<td class="tdrig">'.($data2[5]*100).' %</td></tr>
	<tr>	<td class="hline" colspan="2"></td></tr>
	<tr>	<td class="tdlef">Total des revenus</td>
		<td class="tdrig">'.($data2[7]*100).' %</td></tr>
	<tr>	<td class="hline" colspan="2"></td></tr>
	<tr>	<td class="tdlef">Globe de protection</td>
		<td class="tdrig">'.($data2[6]*100).' %</td></tr>
	</tbody></table>';
}

mysql_close();
echo '</td></tbody></table>';
include("fin.php");
