<?php
session_start();

$head_title = 'Les types de terrains';
$head_keywords = 'terrain, espace, construction, race';


include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0)
{
	$connexion = 0;
	include ("menu_index.php");
}
else{
	$connexion = 1;
	include ("menu.php");
}
entete_index("Terrains");
include("connect.php");


echo '<table class="localtable630"><tbody>
<tr>	<td style="text-align: left;"><h2>Les terrains</h2>';

$out = '';
$out .= '<div class="longtexte">Offrant une perspective stratégique supplémentaire, les terrains apparaissent sur Destinée comme étant d\'une importance cruciale, leurs différentes caractéristiques se devant d\'être connues de tous bons joueurs. Allant des cavernes les plus profondes aux vertes collines de la surface, les différents terrains offrent à chacune des races avantages et inconvénients, avec lesquels ces dernières se devront de jongler. Certaines y parviendront avec facilité, d\'autres, moins fortunées en ce sens, peineront davantage.</div>
<div class="longtexte">Le tableau suivant offre une vision globale des différents avantages et inconvénients qu\'ont <a href="encyclopedie_races.php">chaque races</a> face aux différents types de terrain. Ce facteur de difficulté se divise aux coûts et à l\'espace nécessaire pour la construction <a href="encyclopedie_batiments.php">des différents bâtiments</a> sur un type de terrain donné, et multiplie le nombre de terres trouvées lors d\'expéditions. À titre d\'exemple,  un bâtiment occupant normalement 1 000 acres de terres en occupera 1 666 pour à un Ancien en terre riveraine (<i>Facteur de difficulté</i> : 0.6), alors qu\'un Célestial (<i>Facteur de difficulté</i> : 1.4) pourra au contraire le bâtir sur seulement 714 acres. Les mêmes modifications s\'appliquent au nombre de pièces d\'or nécessaires.</div>
<div class="longtexte">En plus de leurs affinités distinctives sur les différents types de sol, chaque personnage débute de plus avec un certain nombre d\'acres de terre libre, dont le type est fonction de sa race. Généralement, un personnage débute avec le type de terre sur lequel sa race se meut avec le plus d\'aisance.</div>';
$out .= '<div class="longtexte" style="padding-bottom:0px;">Dans le tableau ci-dessous relevant l\'ensemble des coefficients des terrains, les types de terrains de départ sont indiqués avec une astérisque:</div>';


$out .= '<table class="localtable630" id="encTerrCoef"></tbody>
<tr>	<td></td>
	<td></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/aquatique.gif"	width="60" height="60" alt="Riverain"	title="Riverain"></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/colline.gif"	width="60" height="60" alt="Collines"	title="Collines"></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/desert.gif"	width="60" height="60" alt="Désert"	title="Désert"	></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/foret.gif"		width="60" height="60" alt="Forêt"	title="Forêt"	></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/arctique.gif"	width="60" height="60" alt="Arctique"	title="Arctique"></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/marais.gif"	width="60" height="60" alt="Marais"	title="Marais"	></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/montagne.gif"	width="60" height="60" alt="Montagne"	title="Montagnes"></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/plaine.gif"	width="60" height="60" alt="Plaines"	title="Plaines"	></td>
	<td style="text-align: center; width:60px;"><img src="images/terrain/caverne.gif"	width="60" height="60" alt="Cavernes"	title="Cavernes"></td>	</tr>
';
$terrains = array('riverain', 'colline', 'désert', 'forêt', 'arctique', 'marais', 'montagne', 'plaine', 'caverne');
$sql = '';
foreach ($terrains AS $terrain)
	$sql .= ', `'.$terrain.'`';
$req = mysql_query("SELECT ".substr($sql, 2).", `race`, t_favoris FROM races ORDER BY race ASC") or die('Erreur SQL !<br>'.mysql_error());
while ($dat = mysql_fetch_row($req))
{
	$out .= '<tr class="rollovercolor"><td class="tdraces">'.$dat[9].'</td><td></td>';
	for ($i=0; $i<9; $i++)
		if ($terrains[$i] == strtolower($dat[10]))
			$out .= '<td style="font-weight:bold; size:14pt;">'.$dat[$i].'*</td>	';
		else	$out .= '<td>'.$dat[$i].'</td>	';
	$out .= "</tr>\n"; //outline-style: dashed; outline-width: 5px; outline-color: invert;
}
$out .= '</tbody></table>';
echo $out;

echo '</td></tr></tbody></table>';
mysql_close();
include ("fin.php");
