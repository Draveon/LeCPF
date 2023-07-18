<?php session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1)
	$formsnbr = 1;
else
	$formsnbr = 0;


$head_title = "Aptitudes";
$head_keywords = "aptitudes, specialisation, classe, competence, role";
$onload = ' onload="initListGroup(\'vehicles\', document.forms['.$formsnbr.'].make, document.forms['.$formsnbr.'].type, document.forms['.$formsnbr.'].model)"';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	$connexion = 0;
	include ("menu_index.php");
}
else{
	$connexion = 1;
	include ("menu.php");
}
entete_index("Aptitudes");


echo '<table class="localtable963"><tbody>
<tr>	<td colspan="6"><h2>Les aptitudes</h2>
<div class="longtexte">Une aptitude est un trait, un don ou un pouvoir
qu\'un personnage peut maximiser en y investissant des points d\'aptitude obtenus à chaque niveau selon sa classe. Chaque classe et chaque race se voit attribuer une aptitude de départ qui pourra être maximisée à 120 points.
Par la suite, on obtient le choix d\'une nouvelle aptitude au niveau 8, puis de nouveau au niveaux 12, 16, 20, et 24. Si vous choisissez une race et une classe qui disposent de la même aptitude, celle-ci pourra être maximisée
à 140 points, et le débloquage des aptitudes sera avancé de 3 niveaux. <br>En outre, les aptitudes sont toutes classées selon 3 niveaux d\'accès: <br> <ul><li>Au niveau 0, accès possible dès le départ si votre choix de race/classe le permet</li><li>Au niveau 5</li> <li>Au niveau 8</li></ul></div>
<div class="longtexte">Les aptitudes choisies peuvent être montées jusqu\'à 100 points. Il est cependant possible de dépasser ce montant par la construction de <a href="encyclopedie_batspe.php">bâtiment spéciaux</a>. Notez que quels que soient vos bonus, la valeur maximale comptabilisée d\'une aptitude est de 150.</div>
<br><br></td></tr>
<tr>';

include("connect.php");
$sql = "SELECT id, nom, image, niveau, description FROM aptitudes_liste ORDER BY nom";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

$x=0;
while ($data = mysql_fetch_row($req))
{
	$id = $data[0];
	$aptitude = $data[1];
	$image = $data[2];
	$niveau = $data[3];
	$description = $data[4];

	if ($x == 6)
		{$x = 0; echo "</tr>\n<tr>"; }
	$x++;

	echo '<td class="creatbatiliste4"><a href="info_aptitude.php?aptitude='.$id.'" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false">
		<h4>'.$aptitude.'</h4><br><span>Niveau '.$niveau.'</span><br>
		<img src="'.$image.'" width="88" height="125" title="(Accessible au niveau '.$niveau.")   ".strip_tags($description).'" alt="(Accessible au niveau '.$niveau.") ".strip_tags($description).'" border=1></a></td>
';
}
for (;($x>0)&&($x<6); $x++)
	echo "<td>&nbsp;</td>\n";
echo '<td colspan="6">';




// Pseudo formulaire de création de perso

// traitement du formulaire
$new_classe = '';
$new_race = '';
$new_dieu = '';
if ((isset($_POST['make']))&&($_POST['make']!=''))
{
	$new_race = mysql_real_escape_string($_POST['make']);
	if ((isset($_POST['make']))&&($_POST['make']!=''))
	{
		$new_classe = mysql_real_escape_string($_POST['type']);
		if ((isset($_POST['model']))&&($_POST['model']!=''))
			$new_dieu = mysql_real_escape_string($_POST['model']);		
		
		echo changement ('Nouveau personnage<a name="nouveauperso"></a>');
		
		// image de la race
		$req = mysql_query("SELECT image FROM races WHERE race = '".$new_race."'") or die('Erreur SQL !<br>'.mysql_error());
		$race_img = ($data = mysql_fetch_row($req)) ? '<a href="info_race.php?race='.$new_race.'" onclick="NewWindow(this.href,\'name\',\'550\',\'550\',\'yes\');return false"><img src="'.$data[0].'" width=100 height=100 alt="'.$new_classe.'" title="'.$new_classe.'" border="1"></a>' : '';
		// image de la classe
		$req = mysql_query("SELECT image FROM classes WHERE classe = '".$new_classe."'") or die('Erreur SQL !<br>'.mysql_error());
		$classe_img = ($data = mysql_fetch_row($req)) ? '<span style="padding-right: 50px;">&nbsp;</span><a href="info_classe.php?classe='.$new_classe.'" onclick="NewWindow(this.href,\'name\',\'550\',\'550\',\'yes\');return false"><img src="'.$data[0].'" width="100" height="100" alt="'.$new_race.'" title="'.$new_race.'" border="1"></a>' : '';
		// image de la classe
		$req = mysql_query("SELECT image FROM stats_dieux WHERE dieu = '".$new_dieu."'") or die('Erreur SQL !<br>'.mysql_error());
		$dieu_img = ($data = mysql_fetch_row($req)) ? '<span style="padding-right: 50px;">&nbsp;</span><a href="encyclopedie_dieux.php#'.$new_dieu.'"><img src="'.$data[0].'" width=100 height=100 alt="'.$new_dieu.'" title="'.$new_dieu.'" border="0"></a>' : '';
		
		echo '<div class="encAptCen">'.$race_img.$dieu_img.$classe_img.'</div>';
		
		
		echo '<div class="encAptlef">Un <h4>'.$new_race.' '.$new_classe.'</h4> possède comme aptitude de départ ';
		$nb_apt = 0;
		// aptitude de la race
		$sql = "SELECT aptitudes_liste.nom, aptitudes_liste.image, aptitudes_liste.id FROM aptitudes_liste
			INNER JOIN `races` ON aptitudes_liste.id = races.aptitude WHERE race = '".$new_race."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		if ($data = mysql_fetch_row($req))
		{
			$apt_race = $data[0];
			$apt_ra_img = '<a href="info_aptitude.php?aptitude='.$data[2].'" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false"><img src="'.$data[1].'" width=88 height=125 alt="'.$apt_race.'" title="'.$apt_race.'" border="1"></a>';
			echo '<h4><a href="info_aptitude.php?aptitude='.$data[2].'" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false">'.$apt_race.'</a></h4>';
			$nb_apt++;
		}
		else	$apt_ra_img = '';
		
		// aptitude de la classe
		$sql = "SELECT aptitudes_liste.nom, points, aptitudes_liste.image, aptitudes_liste.id FROM aptitudes_liste
			INNER JOIN `classes` ON aptitudes_liste.id = classes.aptitude WHERE classe = '$new_classe'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		if ($data = mysql_fetch_row($req))
		{
			$apt_classe = $data[0];
			$apt_points = $data[1];
			$apt_cl_img = '<a href="info_aptitude.php?aptitude='.$data[3].'" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false"><img src="'.$data[2].'" width=88 height=125 alt="'.$apt_classe.'" title="'.$apt_classe.'" border="1"></a>';
			if ($nb_apt > 0)
			{
				echo ' et ';
				$apt_cl_img = '<span style="padding-right: 74px;">&nbsp;</span>'.$apt_cl_img;
			}
			echo '<h4><a href="info_aptitude.php?aptitude='.$data[3].'" onclick="NewWindow(this.href,\'name\',\'380\',\'480\',\'yes\');return false">'.$apt_classe.'</a></h4> ('.$apt_points.' pts/niv.)</div>';
			$nb_apt++;
		}
		else	$apt_cl_img = '';
		
		echo '<div class="encAptCen">'.$apt_ra_img.$apt_cl_img.'</div>';
		
		
		// accès aux provinces - faut commencer par établir la liste des provinces
		$provliste = '';
		$req = mysql_query("SELECT Province FROM provinces_politiques ORDER BY Province ASC") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
			$provliste .= ', `'.$data[0].'`';
		$req = mysql_query("SELECT ".substr($provliste,2)." FROM races WHERE race = '$new_race'") or die('Erreur SQL !<br>'.mysql_error());
		if ($data = mysql_fetch_assoc($req))
		{
			echo '<div class="encAptlef">Il de plus accès aux provinces de ';
			$first = true;
			foreach ($data as $prov => $acces)
			{
				if ($acces == $prov)
				{
					$re1 = mysql_query("SELECT politique1 FROM provinces_politiques WHERE province = '$prov'") or die('Erreur SQL !<br>'.mysql_error());
					$dat1 = mysql_fetch_row($re1);
					if (!$first)
						echo ', ';
					echo '<b><a href="historique.php?texte=3#'.strtolower($prov).'">'.$prov.'</a></b> (<a href="encyclopedie_politiques.php#'.strtolower($dat1[0]).'">'.$dat1[0].'</a>)';
					$first = false;
				}
			}
		}
		echo '.</div>';
		
		// liste des sorts
		$classes = array('0', 'Archer', 'Assassin', 'Barbare', 'Barde', 'Chevalier', 'Démonologiste', 'Druide', 'Enchanteur', 'Guerrier', 'Illusioniste', 'Inquisiteur', 'Magicien', 'Marchand', 'Nécromancien', 'Paladin', 'Prêtre', 'Psioniste','Rôdeur', 'Shaman', 'Sorcier', 'Voleur');
		if ($classe_encObj = array_keys($classes, $new_classe))
			$classe_encObj[0] = ', ainsi que <a href="encyclopedie_objets.php?sortes=0&classe='.$classe_encObj[0].'#objets">la <b>liste des objets</b></a> qu\'il peut équiper de manière usuelle';
		else
			$classe_encObj[0] = '';
		echo '<div class="encAptlef"><a href="encyclopedie_sorts.php?sorte=all&race='.$new_race.'&niv=-1#sorts">La <b>liste de sorts</b> auxquel il a accès</a> peut être consultée'.$classe_encObj[0].'.</div>';
	}
}


echo '</td></tr></tbody></table>';
mysql_close();
include ("fin.php");
?>
