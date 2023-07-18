<?php session_start();

$head_title = "Armadas";
$head_keywords = "armada, guilde, alliance, guerre";

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Factions");

$serveur_off = (isset($_GET['serveur'])) ? str_replace("'","\'",($_GET['serveur'])) : mt_rand(1,3);

$style = array('','','','');
$style[$serveur_off] = ' style="font-weight: bold;"';

echo '<table class="localtable630"><tbody>
<tr>	<td colspan="3"><h2>Les Factions</h2>
<div class="longtexte">Bien qu\'un héros puisse évoluer de manière solitaire, il sera néanmoins tôt ou tard embarqué dans la Guerre de Factions, de gré ou de force. Les Factions sont des regroupement de différents peuples, tantôt unis, tantôt désunis, ces communautés ne partagent qu\'une seule chose: leur dédain pour les factions qui ne sont pas la leur... Les Factions se livrent corps et âmes un farouche conflit depuis la nuit des temps anciens. Partageant la gloire et les richesses, trois factions se détachent par leur forte popularité: 
<ul>
	<li>L\'Ordre Impérial : <br/>La faction la plus réputée parmi les fervents défenseurs de la Couronne, elle réunie les peuples Elfes, Hommes, Nains, Fées, Minotaures et Gnomes. <br/>Puissant et principal rempart contre les armées démoniaques, L\'Ordre fut fondé par le tout premier empereur humain de Kalamaï: Manassé, après la Guerre des Quatre.</li>
	<li>Les Disciples du Chaos : <br/>Comme son nom le suggère, cette faction regroupe les créatures les plus infâmes et les plus perfides de tout Kalamaï: Elfe Noir, Orque, Géant, Sahuagin, Infernal et Vampire... Leur ultime but est simple: Mettre l\'Empire Impérial à feu et à sang. Ce dernier, et tous ceux qui croiseront leur sombre chemin.</li>
	<li>Les Six Lames : <br/>L\'Union des peuples libres, formée par les Celestiaux à la suite de l\'Âge Sombre, ceux-ci souhaitèrent se dissocier de l\'Empire qui était selon eux, indigne de leur confiance et de leur loyauté. Rapidement, ils furent rejoints par les Anciens, les Fétides, les Malakehs, les Septentrionaux et dernièrement, les Ashtars. Respect et Liberté, voici les maîtres mots de la faction séparatiste des Six Lames. </li>
</ul>
</div>
<div class="longtexte">Lorsque vous serez dans la fureur de la bataille, observez bien qui vous tentez d\'occire, s\'il n\'est pas des vôtres, cela profitera autant à vous qu\'à votre Faction, qui finira par bien vous le rendre !</div>
<div class="longtexte">Hors-RP: Les factions disposent de niveaux, pouvant être atteints via l\'expérience gagnée par ses membres. Chaque membre de faction ennemie vaincu rapportera un peu d\'expérience à la faction. Lors d\'un passage de niveau de Faction, tous ses membres recevront une récompense !</div>';

echo '<br><center>~
	<a href="encyclopedie_armadas.php?serveur=1"'.$style[1].'>Serveur 1</a> &nbsp;|&nbsp;
	<a href="encyclopedie_armadas.php?serveur=2"'.$style[2].'>Serveur 2</a> &nbsp;|&nbsp;
	<a href="encyclopedie_armadas.php?serveur=3"'.$style[3].'>Serveur 3</a> ~
	</center>&nbsp;
</td></tr>
<tr>';


include ('administration/choix_serveurs_off.php');

$x = 0;
$sql = "SELECT * FROM guildes ORDER BY nom";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$arm = $data[1];
	$pro = $data[2];
	$img = $data[5];

	if ($x == 3)
	{
		$x = 0;
		echo "</tr>\n<tr>";
	}
	$x++;
	
	echo '<td class="creatbatiliste"><a href="armadas.php?armada='.$id.'&serveur='.$serveur_off.'">
		<h4>'.$arm.'</h4><br>
		('.$pro.')<br>
		<img src="'.$img.'" width="100" height="100" alt="'.$arm.'" title="'.$arm.'" border=1></a></td>';
}
for (;$x<3;$x++)
	echo '<td>&nbsp;</td>';
mysql_close();
echo "</tr></tbody></table>";


include ("fin.php");
?>
