<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

function unhtmlentities($chaineHtml) {
        $tmp = get_html_translation_table(HTML_ENTITIES);
        $tmp = array_flip ($tmp);
        $chaineTmp = strtr ($chaineHtml, $tmp);

        return $chaineTmp;
}

include ("debut.php");
include ("menu.php");
entete("Stratégies");

include("connect.php");
include("temps_ecoulement.php");
$nom = $_SESSION['nom'];

echo '<form method="get" action="strategie.php">
<table class="localtable630 strategies" border=0><tbody>
<tr>	<td><h2>Stratégies de combat</h2></td></tr>';


// données du joueur
$req = mysql_query("SELECT joueurs_stats.niveau, joueurs_stats.puissance, joueurs_stats.mana, joueurs_modificateurs.pvstotal, joueurs_modificateurs.population, joueurs_modificateurs.population2, joueurs_modificateurs.mana, joueurs_modificateurs.HC_or FROM joueurs_stats INNER JOIN joueurs_modificateurs ON joueurs_modificateurs.nom = joueurs_stats.nom WHERE joueurs_stats.nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$niveau  = $data[0];
$puissance=$data[1];
$mana    = $data[2];
$pop     = $data[4];
$pop2    = $data[5];
$mana_obj= $data[6];
$or_obj  = $data[7];
$pvstotal = $data[3];
$puiss_creas = (1 + 0.05 * $niveau) * $data[3];
$p1 = round(($puiss_creas/$puissance)*100);
$puiss_pop = $pop/200;
$p2 = round(($puiss_pop/$puissance)*100);

$req = mysql_query("SELECT offensive, defensive, rapport, politique, victoire, défaite, province, guilde, rapportOff, incantemin FROM joueurs_bonus WHERE `nom` = '$nom'") or die('Erreur SQL !<br>Ligne 40 :'.mysql_error());
$data = mysql_fetch_row($req);
$off       = $data[0];
$def       = $data[1];
$rapDef    = $data[2];
$politique = $data[3];
$victoire  = $data[4];
$defaite   = $data[5];
$province  = $data[6];
$guilde    = $data[7];
$rapOff	   = $data[8];
$incantemin= $data[9];

$req = mysql_query("SELECT joueurs_terre.total, joueurs_terre_utile.total FROM joueurs_terre INNER JOIN joueurs_terre_utile ON joueurs_terre_utile.nom = joueurs_terre.nom WHERE joueurs_terre.nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$total1 = $data[0];
$total2 = $data[1];
$puiss_terre = round($total1/100);
$p3 = round(($puiss_terre/$puissance)*100);
$p5 = round((($total1 - $total2)/$total1)*100);

// Manipulation
$req = mysql_query('SELECT `20` FROM joueurs_aptitudes WHERE nom = "'.$joueur.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$manip  	= $data[0];

// données provinciales
$req  = mysql_query('SELECT taxes FROM provinces_politiques WHERE province = "'.$province.'"') or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$taxe = $data[0]/100;
$req = mysql_query("SELECT `or`, magie FROM politiques_effets WHERE politique = '".$politique."'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$or_politique	= $data[0];
$mana_politique = $data[1];
$req = mysql_query("SELECT niveau, gain FROM batiment_province WHERE province = '".$province."' AND nom='Académie de magie'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$mana_palatin = $data[0] * $data[1] /100;
$req = mysql_query("SELECT niveau,gain FROM batiment_province WHERE province = '".$province."' AND nom='Bureau des percepteurs'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$or_palatin = $data[0] * $data[1] /100;

// Coefficient d'armée faible: limite le gain lié aux prisonniers
$coef_armee_faible = min(1, ($pvstotal / ($niveau * 4000)));
$coef_armee_faible_prisio = 1 - ((1 - min(1, ($pvstotal / ($niveau * 4000)))) * (1 - $manip/150));

// Bonus or niveau: 3% par niveau à partir du niveau 5
$bonus_or_niveau = 1 + (max(0, $niveau - 5) * 0.03);

// gains du joueur
$gainparmin	= 0.0002426 * $pop;
// Gain or
$gain_or_min = round($gainparmin * $or_obj * ($or_politique + $or_palatin) * $temps_ecoulement/2 * $bonus_or_niveau  * (2/3 + 1/3 * $coef_armee_faible));
// Taxes
$taxe_or_min = round($gain_or_min * $taxe);
// Gain par les esclaves
$pop2_rentabilite = 5/8000;
$gain_esclave_min = round(1.5 * $pop2_rentabilite * $pop2 * $or_obj * ($or_politique + $or_palatin) * $temps_ecoulement/2 * $bonus_or_niveau  * (2/3 + 1/3 * $coef_armee_faible_prisio));
// Taxe esclave
$taxe_esclave = round($gain_esclave_min * $taxe);
// gain de mana
$niv_tour = 0;
$req   = mysql_query("SELECT `1`, `2`, `3`, `4`, `5` FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$data  = mysql_fetch_row($req);
foreach ($data AS $value){
	if ($value != '0') {
		$niv_tour++;
	}
}
$gain_mana_min = round(($niv_tour * 27) * $mana_obj * ($mana_politique + $mana_palatin) * $temps_ecoulement/2);

// mercenariat
$req = mysql_query("SELECT COUNT(id) AS `nbr`, SUM(prime) AS `primetot` FROM mise_a_prix WHERE `commanditaire_reel` = '".unhtmlentities($nom)."'") or die('Erreur SQL !<br>'.mysql_error());
$merceComm = mysql_fetch_assoc($req);
$req = mysql_query("SELECT COUNT(id) AS `nbr`, SUM(prime) AS `primetot` FROM mise_a_prix WHERE `mercenaire` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$merceMerce = mysql_fetch_assoc($req);
$req = mysql_query("SELECT COUNT(id) AS `nbr`, SUM(prime) AS `primetot` FROM mise_a_prix WHERE `cible` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$merceCible = mysql_fetch_assoc($req);


// autoespionnage
if ((isset($_GET['mode']))&&($_GET['mode']=='autoespionnage'))
{
	echo '<tr><td>';
	include ("inclus/dates.inc");
	$date = $heure.'<br>'.$jour.' '.$mois;
	include_once ('espionner_include.php');
	espionnage($nom, $nom, 1000);
	echo '<br>&nbsp;</td></tr>';
}
// changement des stratégies
if (isset($_GET['offensive']) OR isset($_GET['defensive']) OR isset($_GET['incantemin']))
{
	if (is_numeric($_GET['offensive']))	$off = max(10, min(100, $_GET['offensive']));
	if (is_numeric($_GET['defensive']))	$def = max(10, min(100, $_GET['defensive']));
	if (is_numeric($_GET['incantemin']))	$incantemin = $_GET['incantemin'];
	$sql = "UPDATE `joueurs_bonus` SET `offensive` = '".$off."', `defensive` = '".$def."', `incantemin` = '".$incantemin."' WHERE nom = '".$nom."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	echo '<tr>	<td colspan="3" class="tdcen"><b>Vos stratégies ont été modifiées avec succès !</b><br>&nbsp;</td></tr>'."\n";
}
// rapports de combat
if ((isset($_GET['rapp']))&&($_GET['rapp']=='change'))
{
	$emailoff = ((isset($_GET['emailOff']))&&($_GET['emailOff'] == "oui")) ? 0 : 1;
	$emaildef = ((isset($_GET['emailDef']))&&($_GET['emailDef'] == "oui")) ? 0 : 1;
	$req = mysql_query("UPDATE `joueurs_bonus` SET `rapportOff` = '".$emailoff."' WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
	$req = mysql_query("UPDATE `joueurs_bonus` SET `rapport` = '".$emaildef."' WHERE nom = '".$nom."'")    or die('Erreur SQL !<br>'.mysql_error());
}


// AFFICHAGE
echo '<tr><td class="tdlef">
	<fieldset class="divvertspacing">
	<legend>Retraites</legend>
	<div>	<select name="offensive" size="1">
			<option selected value="'.$off.'">Modifier...</option>
			<option value="10">10%</option><option value="20">20%</option><option value="30">30%</option><option value="40">40%</option><option value="50">50%</option><option value="60">60%</option><option value="70">70%</option><option value="80">80%</option><option value="90">90%</option><option value="100">100%</option>
		</select>
		<b>Stratégie offensive : &nbsp; '.$off.' %</b></div>
	<div class="explic">Détermine la proportion de votre armée perdue au dessus de laquelle vous abandonnez le combat, lorsque vous menez une attaque sur un autre joueur.</div>
	<div>	<select name="defensive" size="1">
			<option selected value="'.$def.'">Modifier...</option>
			<option value="10">10%</option><option value="20">20%</option><option value="30">30%</option><option value="40">40%</option><option value="50">50%</option><option value="60">60%</option><option value="70">70%</option><option value="80">80%</option><option value="90">90%</option><option value="100">100%</option>
		</select>
		<b>Stratégie défensive : &nbsp; '.$def.' %</b></div>
	<div class="explic endoffieldset">Détermine la proportion de votre armée perdue au dessus de laquelle vous abandonnez le combat, lorsque vous subissez une attaque de la part d\'un autre joueur.</div>
	</fieldset>';

$displayIncMin = ($incantemin < 0) ? 'N\'incanter </b>aucun sort</b> si l\'armée ennemie est négligeable.' : 'N\'incanter <b>aucun sort face à une armée représentant moins de '.$incantemin.' %</b> de la puissance de la votre.';

echo '&nbsp;<br>
	<fieldset class="divvertspacing">
	<legend>Sorts et Incantations</legend>
	<div class="noexplic">Lorsque vous combattez un ennemi avec une armée bien inférieure en puissance, il peut être utile de ne pas lancer vos sorts pour économiser mana et ressources.</div>
	<div>	<select name="incantemin" size="1">
			<option selected value="'.$incantemin.'">Modifier...</option>
			<option value="-1">toujours</option>
			<option value="10">10%</option><option value="20">20%</option><option value="30">30%</option><option value="40">40%</option><option value="50">50%</option><option value="60">60%</option><option value="70">70%</option><option value="80">80%</option><option value="90">90%</option><option value="100">100%</option><option value="120">120%</option><option value="150">150%</option>
		</select>
		'.$displayIncMin.'</div>
	<div class="explic">Lors de vos prochains combats vous ne lancerez aucun sort si la taille de l\'armée adverse est inférieure à cette limite.</div>
	</fieldset>
';

$checkedOff = ($rapOff == 0) ? ' checked' : '';
$checkedDef = ($rapDef == 0) ? ' checked' : '';
echo '	&nbsp;
	<fieldset class="divvertspacing">
	<legend>Contacts par e-mail</legend>
  <p><span style="font-weight: bold;">Attention :</span> Les adresse Gmail et Hotmail ne permettent pas de recevoir les rapport de combats. <br />(Recommandé : Yopmail, Yahoo)</p>
	<input type="hidden" name="rapp" value="change">
	<div class="noexplic"><INPUT TYPE="CHECKBOX" name="emailOff" value="oui" '.$checkedOff.'> Cochez ici si désirez recevoir les rapports des combats <b>offensifs</b> via e-mail.</div>
	<div><INPUT TYPE="CHECKBOX" name="emailDef" value="oui" '.$checkedDef.'> Cochez ici si désirez recevoir les rapports des combats <b>défensifs</b> via e-mail.</div>
	</fieldset>
</td></tr>
<tr><td class="tdcen"><br><input type="submit" value="Régler >>"></td></tr>';

// rapport d'autoespionnage
echo '<tr><td colspan="4" class="tdcen"><br><a href="strategie.php?mode=autoespionnage">Générer un rapport sur votre compte !</a><!--</td></tr>';



echo '</tbody></table>-->';
echo changement('Statistiques');
//echo '<table><tbody>';



echo '<tr><td colspan="4" class="tdcen">
	Pourcentage de votre puissance lié à vos créatures : <b>'.$p1.' %</b> <br>
	Pourcentage de votre puissance lié à votre population : <b>'.$p2.' %</b> <br>
	Pourcentage de votre puissance lié à vos terres : <b>'.$p3.' %</b><br>
	<b>'.$p5.' %</b> de vos terres sont actuellement libres !<br>
	<br>';

echo '	Votre population vous rapporte <b>'.$gain_or_min.'</b> pièces d\'or par minute, taxé à hauteur de <b>'.$taxe_or_min.'</b>, <br>et vos prisonniers vous rapportent <b>'.$gain_esclave_min.'</b>, taxé à hauteur de <b>'.$taxe_esclave.'</b> pour un total de <b>'.round($gain_or_min-$taxe_or_min+$gain_esclave_min-$taxe_esclave).'</b> pièces d\'or par minute!<br>';
echo 'Vos tours de magie vous rapportent <b>'.$gain_mana_min.'</b> mana par minute !<br>';
if ($mana == 0)
	echo '<div class="stratexplic">Pour avoir du mana, il vous faut construire une tour de magie. Pour cela, allez dans le menu <i>Action</i> -> <i>Construire</i>, choisissez un terrain, puis cliquez sur l\'onglet <i>Magie & Technologies</i>. La première tour de magie à construire est le <i>Cercle Arcanique</i>.</div>';

echo '<br>';

echo 'Nombre de victoires : <b>'.$victoire.'</b>.<br>
	Nombre de défaites : <b>'.$defaite.'</b>.<br>';
if ($merceComm['nbr']>0)	echo 'Vous avez mis les têtes de <b>'.$merceComm['nbr'].'</b> personnes à prix, pour un total de <b>'.number_format($merceComm['primetot'], 0, ",", ",").'</b> pièces d\'or<br>';
else				echo 'Vous n\'avez jamais mis à prix la tête de quiconque<br>';
if ($merceMerce['nbr']>0)	echo 'Vous avez chassé <b>'.$merceMerce['nbr'].'</b> primes pour un total de <b>'.number_format($merceMerce['primetot'], 0, ",", ",").'</b> pièces d\'or<br>';
else				echo 'Vous n\'avez jamais obtenu de prime<br>';
if ($merceCible['nbr']>0)	echo 'Votre tête a été mise <b>'.$merceCible['nbr'].'</b> fois à prix, pour un total de <b>'.number_format($merceCible['primetot'], 0, ",", ",").'</b> pièces d\'or<br>';
else				echo 'Vous n\'avez jamais été mis à prix<br>';
echo '</td></tr>';

echo '</tbody></table>';



mysql_close();
include("fin.php");

?>
