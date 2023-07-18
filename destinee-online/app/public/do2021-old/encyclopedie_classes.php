<?php
session_start();

$head_title = 'Les classes';
$head_keywords = 'classe, race, joueur, role, statistique, caracteristique';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Classes");
include ("connect.php");


echo '<table class="localtable963"><tbody>
<tr>	<td colspan="4"><h2>Les classes</h2></td></tr>
<tr>';
$filename = 'cache/encyclopedie_classes_'.$serveur.'.txt';
if (file_exists($filename))
	include ($filename);
else
{
	$out = '';
	
	$req = mysql_query("SELECT classe, image FROM classes ORDER BY classe ASC") or die('Erreur SQL !<br>'.mysql_error());
	$nombre = mysql_num_rows($req);
	$x = 0;
	while ($data = mysql_fetch_row($req))
	{
		$nom_classe = $data[0];
		$image = $data[1];
		if ($x == 6)
		{
			$x = 0;
			$out .= "</tr>\n<tr>";
		}
		$x++;
		$out .= '	<td class="creatbatiliste4"><a href="info_classe.php?classe='.$nom_classe.'" onclick="NewWindow(this.href,\'name\',\'550\',\'550\',\'yes\');return false">
			<h4>'.$nom_classe.'</h4><br>
			<img src="'.$image.'" width="100" height="100" alt="'.$nom_classe.'" title="'.$nom_classe.'" border=1></a></td>';
	}
	$out .= '</tr><tr><td colspan="6">';
	
	
	$out .= changement("Caractéristiques des classes");

	$req3 = mysql_query("SELECT * FROM classes ORDER BY classe ASC") or die('Erreur SQL !<br>'.mysql_error());
	
	$out .= '<center>
	<table class="tableclasses"><tbody>
	<tr>	<td style="text-align: center;"></td>
		<td class="tdclasses"><img src="images/icones/héros/attaque.png" align="middle" title="Attaque"></td>
		<td class="tdclasses"><img src="images/icones/héros/defense.png" align="middle" title="Défense"></td>
		<td class="tdclasses"><img src="images/icones/héros/initiative.png" align="middle" title="Initiative"></td>
		<td class="tdclasses"><img src="images/icones/héros/endurance.png" align="middle" title="Endurance"></td>
		<td class="tdclasses"><img src="images/icones/héros/puissance.png" align="middle" title="Puissance"></td>
		<td class="tdclasses"><img src="images/icones/héros/charisme.png" align="middle" title="Charisme"></td>
		<td class="separator"></td>
		<td class="tdclasses"><img src="images/icones/magie/sort_1.png" align="middle" title="Sorts niveau 1"></td>
		<td class="tdclasses"><img src="images/icones/magie/sort_2.png" align="middle" title="Sorts niveau 2"></td>
		<td class="tdclasses"><img src="images/icones/magie/sort_3.png" align="middle" title="Sorts niveau 3"></td>
		<td class="tdclasses"><img src="images/icones/magie/sort_4.png" align="middle" title="Sorts niveau 4"></td>
		<td class="tdclasses"><img src="images/icones/magie/sort_5.png" align="middle" title="Sorts niveau 5"></td>
		<td class="tdclasses"><img src="images/icones/magie/sort_spe.png" align="middle" title="Sort spécial"></td>
		<td class="separator"></td>
		<td style="width: 12%;" colspan="2"><img src="images/icones/héros/aptitude.png" align="middle" title="Points d\'aptitude et Aptitude de départ"></td>
	</tr>
	<tr>	<td></td>
		<td colspan="16" class="hline"</td></tr>'."\n";

	while ($data =  mysql_fetch_assoc($req3)) {
		$out .= '<tr>
		<td>'.$data['classe'].'</td>
		<td class="tdclasses">'.round($data['att'], 1).'</td>
		<td class="tdclasses">'.round($data['def'], 1).'</td>
		<td class="tdclasses">'.round($data['ini'], 1).'</td>
		<td class="tdclasses">'.round($data['end'], 1).'</td>
		<td class="tdclasses">'.round($data['pui'], 1).'</td>
		<td class="tdclasses">'.round($data['cha'], 1).'</td>
		<td class="separator"></td>
		<td class="tdclasses">'.$data['1'].'</td>
		<td class="tdclasses">'.$data['2'].'</td>
		<td class="tdclasses">'.$data['3'].'</td>
		<td class="tdclasses">'.$data['4'].'</td>
		<td class="tdclasses">'.$data['5'].'</td>';
		$sortspe = $data['sort_spe'];
		$req_img_sortspe = mysql_query("SELECT image FROM magies_liste WHERE id = ".$sortspe) or die('Erreur SQL !<br>'.mysql_error());
		$dat_img_sortspe = mysql_fetch_row($req_img_sortspe);
		$img_sortspe = $dat_img_sortspe[0];
		$out .= '<td><a  href="info_sorts.php?sort='.$sortspe.'" onclick="NewWindow(this.href,\'name\',\'480\',\'500\',\'yes\');return false"><img src="'.$img_sortspe.'" height="35px" width="30px"></a></td>';
		$out .= '
		<td class="separator"></td>
		<td class="tdclasses">'.$data['points'].'</td>';
		$apti = $data['aptitude'];
		if ($apti != 0) {
			$req_img_apt = mysql_query("SELECT image FROM aptitudes_liste WHERE id = '".$apti."'") or die('Erreur SQL !<br>'.mysql_error());
			$dat_img_apt = mysql_fetch_row($req_img_apt);
			$img_apt = $dat_img_apt[0];
			$out .= '<td><a  href="info_aptitude.php?aptitude='.$apti.'" onclick="NewWindow(this.href,\'name\',\'480\',\'500\',\'yes\');return false"><img src="'.$img_apt.'" height="35px" width="30px"></a></td>';
		} else {
			$out .= '<td><img src="/images/icones/au_choix.png" height="35px" width="30px"></td>';
		}
		
		$out .= '</tr>
		<tr>	<td></td>
		<td colspan="16" class="hline"</td></tr>';
	}
	
	$out .= "</tbody></table></center>";


	$out .= changement("Gameplay");
	
	$out .= '<div class="longtexte">La classe, comme la race, détermine l\'évolution de vos statistiques.
	Ainsi, à chaque niveau, s\'ajoutent aux statistiques du héros les bonus définis ci-dessus, qui sont directement fonction de la classe. Lorsque, le cas échéant, l\'évolution d\'une certaine statistique se fait à coup de 0,50 points, cela veut alors dire que cette statistique ne connaîtra de réelle évolution que tous les deux niveaux. De la même manière, une évolution de 1,50 points voudra alors dire que, une fois sur deux, cette statistique gagne un point supplémentaire, et ce en plus de son gain habituel.</div>';
	$out .= '<div class="longtexte">Il va de soi qu\'un barbare n\'est pas aussi apte à utiliser la magie que l\'est un mage ou un prêtre. Par conséquent, chaque classe se voit attribuer un nombre défini de sorts de chaque niveau; un nombre de 0 signifiant que la classe n\'a pas accès à ce niveau de sort. Veuillez de plus prendre note que les toutes les classes se voient octroyer un sort dit spécial dont la définition et les effets sont décrits sur <a href="forum/index.php">le forum général</a> ainsi que <a href="encyclopedie_sorts.php">dans l\'encyclopédie</a>.</div>';
	$out .= '<div class="longtexte">De plus, lors du choix de votre classe <a href="encyclopedie_aptitudes.php">une aptitude</a> dite "de base" vous est attribuée, de la même manière qu\'il l\'est fait lors <a href="encyclopedie_races.php">du choix de votre race</a>. Cette aptitude de base trouve sont sens dans le fait que toute classe possède un trait, un attribut ou un pouvoir unique et spécifique à cette dernière. Ici, chaque classe possède sa propre aptitude, aucune n\'y fait exception. Qui plus est, il vous sera de plus possible de remarquer que chaque classe ne gagne pas nécessairement le même nombre de points d\'aptitude par niveau. Le tableau ci-dessus en fait d\'ailleurs mention.</div>';
	
	$out .= "</tbody></table>";

	echo $out;
	// écriture dans le fichier cache
	$fp = fopen($filename,"w+");
	fwrite ($fp,$out);
	fclose ($fp);
	
}


mysql_close();
include ("fin.php");

?>
