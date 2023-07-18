<?php session_start();

$head_title = 'Palatinat';
$head_keywords = 'palatin, palatinat, province, arrondissement, region';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Palatinat");



echo '<table class="localtable630"><tbody>
<tr>	<td><h2>Palatinat</h2>
	<div class="longtexte">Les élections du palatin se font toutes les semaines. Le palatin élu sera celui ayant le plus grand nombre de voix à l\'heure de la fin du vote. Si deux candidats se retrouvent avec le même nombre de voix , le candidat ayant posé sa candidature en premier sera élu.</div>
	<div class="longtexte">Les taxes que vous choisirez d’instaurer seront établies seulement sur la population et non sur les prisonniers.<br><br>
L\'utilité des taxes est la suivante:<br><br>
<table class="discr100">
<tr>	<td class="encHisRubr">Maître cartographe : 	</td><td>Permet d’augmenter le pourcentage d’Exploration & Découvertes (augmente les terres et la chance de trouver des objets en exploration)</td></tr>
<tr>	<td class="encHisRubr">Bureau des percepteurs :	</td><td>Permet d’augmenter le pourcentage du Total des revenus (augmente les gains en or de votre population)</td></tr>
<tr>	<td class="encHisRubr">Académie de magie : 	</td><td>Permet d’augmenter le pourcentage de Récupération magique (augmente les gains en mana de votre population) et le pourcentage de Réduction aux coûts des sorts et des créatures (incanter des sorts et recruter des créatures vous coûte moins de mana)</td></tr>
<tr>	<td class="encHisRubr">Casernes fortifiées : 	</td><td>Permet d’augmenter le pourcentage de Gain de créatures par jour (augmente les créatures recrutables chaque jour)</td></tr>
</table>
<br>
</tbody></table>
';

include ("fin.php");
?>
