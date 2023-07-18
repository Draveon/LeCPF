<?php

$_SESSION['combat'] = 0;
$now = floor(time()/60);        // $now  = instant présent
include ("temps_ecoulement.php");



// nécessaire pour les joueurs cachés
include ('classement_cache.php');
$jmasques = str_replace("joueurs_stats.nom", "nom", $jmasques);
if (strlen($jmasques) > 0)
	$jmasques = 'AND '.$jmasques;




// suppression des archives des combats menés par le joueur, datant de plus de 24 heures
epuration_combat_joueurs($nom);


// épuration de la table joueurs_combat, retourne l'instant de l'attaque la plus ancienne
//                                                = 0 si aucune attaque
$next = epuration_joueurs_combat($nom);


// si 5 attaques ont été menées ces dernières 24 heures, il est impossible d'attaquer
// on affiche alors le temps restant avant la prochaine attaque
if (attaque_possible_5($nom) == 5)
{
	$result = mysql_query("SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_combat WHERE nom = '".$nom."'") or die(mysql_error());
	$data = mysql_fetch_assoc($result);
	$mini = $data[2];
	for($i=1;$i<=5;$i++)
	{
		$att = $data[$i];
		if($att < $mini && $att != 0)
			$mini = $att;
	}
	$mini = $duree_jour - ($temps - $mini);

	$reste = '';
	$j = floor( $mini /60  /24);
	$h = floor(($mini /60) %24);
	$m = floor( $mini %60 );
	if ($j != 0)
		$reste = $j.' jours, ';
	if ($h != 0)
		$reste.= $h.' heures, ';
	$reste.= $m.' minutes';

	$html = '<div align="left"><p style="text-indent : 1cm;"><strong><span style="font-family: papyrus;">';
	$html .= 'Requête impossible</span></strong></div><br>';
	$html .= '<table style="width: 500px; text-align: center;"><tbody><tr><td>';
	$html .= 'Malheureusement, à l\'heure actuelle, vos troupes semblent trop épuisées et refusent de répondre ';
	$html .= 'à votre ordre d\'attaquer. Un peu de repos leur sera sans doute nécéssaire avant de reprendre ';
	$html .= 'la route des guerres et des victoires.<br><br>';
	$html .= '<b> Prochaine attaque (Approximatif) : '.$reste.'<br>';
	$html .= '</td></tr></tbody></table>';
	echo $html;

	mysql_close();
	include("inclus/fin.inc");
	exit;
}



// sélection du nom de la guilde (éventuelle) du joueur
$req = mysql_query('SELECT guilde FROM joueurs_bonus  WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$guilde = $data[0];
// sélection de la puissance du joueur
$req = mysql_query('SELECT puissance, niveau FROM joueurs_stats WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$puissance = $data[0];
$niveau = $data[1];
// Gestion de l'aptitude 'navigation', qui permet d'augmenter le nombre de cibles
$req = mysql_query('SELECT `26` FROM joueurs_aptitudes WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$navigation = $data[0];
// Taille de l'armée du joueur
$req = mysql_query("SELECT pvstotal FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pvstotal = $data[0];
// Taille d'armée des joueurs
$req = mysql_query("SELECT pvstotal FROM joueurs_modificateurs WHERE nom = '".$cible."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pvstotal_cible = $data[0];
// Affichage du coefficient d'armée faible
$limite_taille = $niveau * 4000;
$message_avert = '';
if ($pvstotal <= $limite_taille) {
	$message_avert = "<small>Votre armée n'est pas suffisante pour que cette attaque vous procure des gains et un dôme de protection optimaux ($pvstotal pvs / $limite_taille)</small> <br>";
}



$colspan = 8;

// Affichage entête de la liste des cibles
echo '	<form method="post" action="combat.php" style="z-index: 1;">
	<div align="center">
	<table class="localtable963"><tbody>';

	$aide =	"<div class=\"longtexte\">

<h3>Gains des combats</h3>
<p>A l'issue d'un combat, vous remportez des points d'expérience en fonction du nombre de créatures adverses que vous avez anéanti. Lorsque vous attaquez un adversaire, une victoire vous rapportera également or, ressources, prisonniers et éventuellement des terres.</p>
<p>Ces gains sont influencés par divers coefficients:<ul>
<li><strong>Taille de l'armée:</strong> si votre armée est supérieure en puissance, vos gains seront amoindris. A l'inverse, si l'armée de votre adversaire est supérieure en puissance, vos gains se verront augmentés</li>
<li><strong>Force de l'armée:</strong> si l'armée de votre adversaire est composée de créatures de haut niveau dans des proportions élevées, vous obtiendrez un bonus à votre gain d'expérience. En revanche, combattre une armée faible réduira votre gain.</li>
<li><strong>Niveau de l'adversaire:</strong> si votre adversaire est d'un niveau supérieur au votre, vous obtiendrez un bonus à vos gains, et inversement si son niveau est inférieur. En défense, le malus, si vous êtes attaqué par un level plus faible, est amoindri selon les pertes de votre armée à l'issue du combat</li>
<li><strong>Retraite rapide:</strong> si vous retraitez rapidement, (avant 40% de pertes, voir page \"Stratégie\"), vos gains en expérience sont amoindris.</li>
</ul></p>
</div>";


    echo '<tr><td colspan="'.$colspan.'"><br><div id="lien"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'lien\', \'bonus\');">Afficher l\'aide</a></div>';
	echo '<div id="bonus" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'bonus\', \'lien\');" >Cacher l\'aide</a><br><br><div style="font-family:default;">'.$aide.'</div></div></td></tr>';
    echo '<tr><td colspan="'.$colspan.'"><br>Sur cette page, vous pouvez choisir une cible et partir l\'attaquer. Les joueurs affichés sont les joueurs dont la puissance est proche de la votre (<u>entre 98% et 130% de votre puissance, ou 98% si vous êtes au-dessus de 90k puissance</u>).';

	echo '<!--border="0" cellspacing="2" cellpadding="0" style="width: 963px; vertical-align: middle; z-index: 1;"-->
	<tr>	<td colspan="'.$colspan.'" style="text-align: left;"><br><h2>Choisir la cible de votre attaque</h2></td></tr>';


echo '
  <tr>	<td width="2%"></td>
	<td class="cl_entete" width="30%">Nom</td>
	<td class="cl_entete" width="10%">Race</td>
	<td class="cl_entete" width="10%">Classe</td>
	<td class="cl_entete" width="6%">Niv</td>
	<td class="cl_entete" width="12%">Province</td>
';
	include('connect.php');
	if ($actual_db == 2 || $actual_db == 1) {
/*		echo'<td class="cl_entete">Faction</td>';*/
	} else {
	/*	echo'<td class="cl_entete">Armada</td>';*/
	}
echo'	<td class="cl_entete" width="10%">Puissance</td>	</tr>
  <tr>	<td></td>
	<td colspan="'.($colspan-1).'" class="hline"></td>		</tr>';



// Affichage des cibles
$total = 0;
for($j = 1; $j<= 2; $j++)      // $j=1 => cibles plus puissantes ; $j=2 => cibles moins puissantes
{
	$w = 10;
				if ($_SESSION['id_compte'] != 32) {


	// sélection des $w cibles
	if ($j==1)
	{
		$limite = ($puissance * 1.3);	// anciennement 1.1 (RAZ fin-avril 2019)
		$sql = 'SELECT * FROM (SELECT * FROM joueurs_heros WHERE puissance >= "'.$puissance.'" AND id_compte != "'.$_SESSION['id_compte'].'" '.$jmasques.' ORDER BY puissance ASC  LIMIT '.$w.') desordre ORDER BY desordre.puissance DESC';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req)) {
			affiche_joueur($data, 'combat_up', $limite);
			$total++;
		}
	}
	else
	{
		$antibottom = 0.99;
		$limite = ($puissance * $antibottom); 	// le joueur ne peut pas attaquer les cibles ayant moins de 99% de sa puissance
		$sql = 'SELECT * FROM joueurs_heros WHERE puissance <  "'.$puissance.'" AND id_compte != "'.$_SESSION['id_compte'].'" '.$jmasques.' ORDER BY puissance DESC LIMIT '.$w;
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req)) {
			$total = affiche_joueur($data, 'combat_down', $limite);
			$total++;
		}
	}
				} else {

						// sélection des $w cibles POUR DRAVEON
	if ($j==1)
	{
		$limite = ($puissance * 1.3);	// anciennement 1.1 (RAZ fin-avril 2019)
		$sql = 'SELECT * FROM (SELECT * FROM joueurs_heros WHERE puissance >= "'.$puissance.'" '.$jmasques.' ORDER BY puissance ASC  LIMIT '.$w.') desordre ORDER BY desordre.puissance DESC';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req)) {
			affiche_joueur($data, 'combat_up', $limite);
			$total++;
		}
	}
	else
	{
		$antibottom = 0.99;
		$limite = ($puissance * $antibottom); 	// le joueur ne peut pas attaquer les cibles ayant moins de 99% de sa puissance
		$sql = 'SELECT * FROM joueurs_heros WHERE puissance <  "'.$puissance.'" '.$jmasques.' ORDER BY puissance DESC LIMIT '.$w;
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req)) {
			$total = affiche_joueur($data, 'combat_down', $limite);
			$total++;
		}
	}

				}



}		// fin de la boucle sur $j


// fin de l'affichage
if ($total == 0)
	echo '<tr><td colspan="'.$colspan.'" style="text-align: center; vertical-align: center;">Malheureusement, vous n\'avez aucune cible à portée d\'attaque.</td></tr>';
echo '<tr><td colspan="'.$colspan.'" style="text-align: center;" class="stratexplic"><br>'.colorie('petitmessageexplicatifaufond', '').'</td></tr>';




// affichage des boutons du formulaire en bas de la liste des cibles
// "combattre" = "1" ==> on passera donc au choix des troupes
echo '</tbody></table><br>
	<input type="hidden" name="combattre" value="1">
	<input type="submit" value="Combattre >>">';
echo '<br><br>';
echo $message_avert;
echo '</div></form>';


// Update de la dernière connexion
$last_cnx = floor(time()/60);
$sql = 'UPDATE `joueurs_connexions` SET `connexion_dernière` = "'.$last_cnx.'" WHERE nom = "'.$nom.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
mysql_close();

?>
