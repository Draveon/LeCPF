<?php session_start();

$head_title = 'Les dieux';
$head_keywords = 'dieu, religion, statistiques';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Dieux");


echo '<table class="localtable630"><tbody>
<tr><td style="text-align: left;"><h2>Les dieux</h2>
<div class="longtexte">Au sein du monde de Destinée se trouve une véritable panoplie <a href="encyclopedie_creatures.php">de créatures</a>, <a href="encyclopedie_sorts.php">sorts</a> et dieux en tout genre.
C\'est d\'ailleurs grâce à ces dieux que le mondes des mortels put prendre forme et, peu à peu, se diversifier.</div>
<div class="longtexte">Stockant l\'essence de leur existence dans les étoiles, les dieux préfèrent, pour la plupart, agir par l\'entremise
de disciples, ne posant que rarement un doigt matériel dans le monde des mortels.. C\'est d\'ailleurs au fil des siècles que
les différentes races ont appris à regarder les étoiles, et se questionner sur les images qu\'elles forment entre-elles;
ainsi est née la connaissance sur les dieux... et à compter de ce jour, monastères, églises et temples naquirent. Disciples,
fervents et admirateurs se déclarèrent à travers toutes les civilisations du monde connu; guerres, pillages, vols et actes de compassion
furent revendiqués par certains mouvements religieux. Bon gré mal gré... les dieux sont partie intégrante de Destinée, et ils jouent un rôle, tout comme vous, à forger le destin du monde.</div>
<div class="longtexte">En vous fiant sur la liste présente ci-bas, il vous est possible d\'analyser en profondeurs tous les dieux
ainsi que leurs caractéristiques respectives.</div>
<div class="longtexte">
<h2>Concrètement...</h2>
<ul>
<li>Un héros choisit un dieu parmi l\'ensemble des dieux disponibles</li>
<li>On ne peut changer de dieu en cours de round, à moins de faire renaître son héros</li>
<li>À chaque montée de niveau, le héros voit ses statistiques augmentées par celles de son dieu (cf. tableau en bas de page)</li>
</ul>
</div>
';



include("connect.php");
$sql = "SELECT * FROM stats_dieux ORDER BY nom";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());


echo changement("Les dieux et leurs effets");

$sql3 = "SELECT att, def, ini, cha, end, pui FROM stats_dieux ORDER BY nom";
$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$adr = mysql_fetch_row($req3);
$aro = mysql_fetch_row($req3);
$bra = mysql_fetch_row($req3);
$bro = mysql_fetch_row($req3);
$che = mysql_fetch_row($req3);
$dam = mysql_fetch_row($req3);
$din = mysql_fetch_row($req3);
$dio = mysql_fetch_row($req3);
$fol = mysql_fetch_row($req3);
$has = mysql_fetch_row($req3);
$kan = mysql_fetch_row($req3);
$ker = mysql_fetch_row($req3);
$nim = mysql_fetch_row($req3);
$nuc = mysql_fetch_row($req3);
$orf = mysql_fetch_row($req3);
$sor = mysql_fetch_row($req3);
$vel = mysql_fetch_row($req3);

mysql_close();

echo '<div align="center";>
<table class="tableraces"><tbody>
<tr>	<td style="text-align: center;"></td>
	<td class="tddieux"><img src="/images/terrain/adrien.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/aro.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/brak.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/bronek.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/chezzer.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/damien.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/dinas.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/dios.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/folaniss.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/hassar.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/kanderak.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/kereb.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/nimburr.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/nucter.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/orfange.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/sorenssen.gif" align="middle"></td>
	<td class="tddieux"><img src="/images/terrain/velsfer.gif" align="middle"></td>
</tr><tr><td></td>
	<td colspan="15" class="hline"</td></tr>';

for ($i = 0; $i < 6; $i++)
{
	switch ($i)
	{
		case '0': echo '<tr><td class="tdraces">Attaque</td>';		break;
		case '1': echo '<tr><td class="tdraces">Défense</td>';		break;
		case '2': echo '<tr><td class="tdraces">Initiative</td>';	break;
		case '3': echo '<tr><td class="tdraces">Charisme</td>';		break;
		case '4': echo '<tr><td class="tdraces">Endurance</td>';	break;
		case '5': echo '<tr><td class="tdraces">Puissance</td>';	break;
	}
	echo '
	<td class=" rollovercolor" style="text-align: center;">'.$adr[$i].'</td>
	<td class=" rollovercolor" style="text-align: center;">'.$aro[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$bra[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$bro[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$che[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$dam[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$din[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$dio[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$fol[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$has[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$kan[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$ker[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$nim[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$nuc[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$orf[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$sor[$i].'</td>
	<td style="text-align: center;" class="rollovercolor">'.$vel[$i].'</td>
	</tr>
	<tr><td></td>
	<td colspan="16" class="hline"</td></tr>';
}

echo "</tr></tbody></table>";


while ($data = mysql_fetch_row($req))
{
	$nom_dieu = $data[1];
	$domaine = $data[2];
	$image = $data[9];
	$texte = $data[10];

	echo changement("$nom_dieu, $domaine<a name='$domaine'></a>");

	echo '<table border="0" style="width: 100%;"><tbody>
	<tr>	<td style="width: 115px; text-align: left;"><img src="'.$image.'" width="100" height="100" alt="'.$nom_dieu.', '. $domaine.'" title="'.$nom_dieu.', '. $domaine.'"></td>
		<td class="longtexte" style="vertical-align: top;">'.$texte.'</td></tr>
	</tbody></table>';
}
echo '</tbody></table>';

include("fin.php");
