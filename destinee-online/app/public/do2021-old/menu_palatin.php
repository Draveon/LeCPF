<?php session_start();


function valeurtaxes($pourcentage)
{
	if ($pourcentage<=1)	return 'aucune';
	if ($pourcentage<=10)	return 'faibles';
	if ($pourcentage<=20)	return 'moyennes';
				return 'élevées';
}

function tdbold ($valeur)
{
	if ($valeur != 0)
		return ' style="font-weight: bold;"';
	return '';
}



// --- Connexion : Sont mises en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$temps = floor(time()/60);

include ("debut.php");
include ("menu.php");
entete("Palatinat");

include("connect.php");
include("temps_ecoulement.php");

$royaume = $_SESSION['royaume'];
$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];


include ("palatinat_include.php");
$caissenoire_max = 10;
$mcaissenoireSuppMax = 0.5;	// coef multiplicateur max pour le revenu du palatin (1.5 -> le palatin reçoit 0.5* son revenu EN PLUS)

// traitement de si le joueur veux rejoindre une province
$incProvJoin = false;
$mode = (isset($_REQUEST['mode'])) ? addslashes($_REQUEST['mode']) : '';
$provinc_ = (isset($_REQUEST['province'])) ? addslashes($_REQUEST['province']) : '';
// rejoindre une province
if (($mode == 'joindreprovince')&&($provinc_ != ''))
{
	if (!$incProvJoin)
	{
		include ('diplomatique_include.php');
		$incProvJoin = true;
	}
	echo join_province ($nom, $provinc_);
}


// récupération des données du joueur
$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '".$nom."'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$guilde = $data[1];


echo '<table class="localtable630"><tbody>';

// traitement des informations
if ($province != "Aucune")
{
	echo '<tr>	<td><h2>Palatinat de '.$province.'</h2>';
	
	$sql = "SELECT Palatin,sortie FROM provinces_politiques WHERE Province = '$province'";
	$result = mysql_query($sql) or die(mysql_error());
	$data = mysql_fetch_row($result);
	$palatin = $data[0];
	$prov_sortie = $data[1];
	$ispalatin = ($palatin==$nom) ? true : false;
	
	$sql = "SELECT COUNT(`id`) AS `nbr` FROM joueurs_bonus WHERE `province` = '$province'";
	$result = mysql_query($sql) or die(mysql_error());
	$data = mysql_fetch_row($result);
	$nbrJProvince = $data[0];
	
	// affichage (ou non) du menu du palatin
	if ($palatin == '')		echo '<div class="longtexte">Aucun candidat ne s\'est présenté pour la charge de palatin dans votre province ('.$province.')</div>';
	else if ($palatin!=$nom)	echo '<div class="longtexte"><b>'.$palatin.'</b> est le palatin actuel de '.$province.', votre province.</div>';
	else if ($palatin==$nom)	echo '<div class="longtexte">Vous êtes le palatin actuel de '.$province.', votre province.</div>';
	
	
	// modification du budget de la semaine prochaine
	if (($ispalatin)&&(isset($_POST['mode']))&&($_POST['mode']=='budget'))
	{
		$erreur = '';
		$taxe_max = 50;
		
		// bornes aux différentes taxes
		if ((isset($_POST['Caissenoire']))&&(is_numeric($_POST['Caissenoire'])))
			$_POST['Caissenoire'] = min($caissenoire_max, min($mcaissenoireSuppMax*100/$nbrJProvince, $_POST['Caissenoire']));
		
		// calcul de la taxe totale de la semaine prochaine
		$taxe_tot = 0;
		foreach ($batiment_liste as $batiment)
		{
			$batipost = str_replace(array(' ',"'"),'',$batiment);
			if ((isset($_POST[$batipost]))&&(is_numeric($_POST[$batipost])))
			{	// si bonus envoyé dans le formulaire
				$taxe_tot += bonus2taxe(round($_POST[$batipost]), $batiment);
				if (bonus2taxe(round($_POST[$batipost]), $batiment) < 0)
					$erreur .= 'Vous ne pouvez pas créer de taxe négative.<br>';
			}
			else
			{	// si bonus pas envoyé (triche)
				$sql = "SELECT prochain FROM batiment_province WHERE province = '$province' AND nom = '".addslashes($batiment)."'";
				$result = mysql_query($sql) or die("Erreur avec la base");
				$data = mysql_fetch_row($result);
				$taxe_tot += bonus2taxe($data[0], $batiment);
			}
		}
		if ($taxe_tot > $taxe_max)
			$erreur .= 'Vous ne pouvez pas imposer de taxe plus élevée que '.$taxe_max.' % aux autres membres de la province!';
		
		// mise à jour du budget prévu pour la semaine prochaine
		if ($erreur != '')
		{
			echo '<b>'.$erreur.'</b>';
		}
		else
		{
			foreach ($batiment_liste as $batiment)
			{
				$batipost = str_replace(array(' ',"'"),'',$batiment);
				if ((isset($_POST[$batipost]))&&(is_numeric($_POST[$batipost])))
				{
					$sql = "UPDATE batiment_province SET prochain = '".round($_POST[$batipost])."' WHERE province = '$province' AND nom = '".addslashes($batiment)."'";
					mysql_query($sql) or die("Problème avec la base!");
				}
			}
		}
	}



	// affichage du budget de la province
	$sql="SELECT taxes, argent, politique1, datechgmtpol FROM provinces_politiques WHERE Province='".$province."'";
	$result = mysql_query($sql);
	$data = mysql_fetch_row($result);
	$taxe = $data[0];
	$argent = $data[1];
	$politique = $data[2];
	$datechgmtpol= $data[3];
	
	// <center>La province possède '.$argent.' pièces d\'or.<br><br>
	if (!$incProvJoin)
	{
		include ('diplomatique_include.php');
		$incProvJoin = true;
	}
	
	if ($ispalatin)
		echo '<form action="menu_palatin.php" method="POST">';
	echo'<table class="localtable630"><tbody>
	<tr>	<td class="cl_entete">Bâtiment</td>
		<td class="cl_entete" colspan="2">Semaine en cours</td>
		<td class="cl_entete" colspan="2">Semaine prochaine</td>
		<td class="cl_entete">Bonus permanent</td>
	</tr>
	<tr>	<td></td>
		<td class="cl_entete1">Bonus</td>
		<td class="cl_entete1">Taxe</td>
		<td class="cl_entete1">Bonus</td>
		<td class="cl_entete1">Taxe</td>
		<td></td>
	</tr>'."\n\n";
	echo '<tr>	<td colspan="6" class="hline"></td>	</tr>'."\n";

	// affichage de tous les batiments
	$taxe_tot = 0;
	$taxe_pro = 0;
	for ($i=0; $i<sizeof($batiment_liste); $i++)
	{
		$batiment = $batiment_liste[$i];
		
		$sql = "SELECT niveau, prochain, permanent FROM batiment_province WHERE province='".$province."' AND nom = '".addslashes($batiment)."'ORDER BY nom ASC";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$encours	= $data[0];
		$prochain	= $data[1];
		$permanent	= $data[2];
		
		$taxe_tot += bonus2taxe($encours-$permanent, $batiment);
		$taxe_pro += bonus2taxe($prochain, $batiment);
		
		$sql = "SELECT `".$batiment_champ[$i]."` FROM politiques_effets WHERE politique = '$politique'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$bonus_prov = ($data[0]*100).' + ';
		
		echo '<tr class="rollovercolor">
			<td class="tdlef">'.$batiment.'<br><small>('.$batiment_texte[$i].')</small></td>
			<td class="tdcen"'.tdbold($encours-$permanent).'>'.($encours-$permanent).' %</td>
			<td class="tdcen">'.bonus2taxe($encours-$permanent, $batiment).' %</td>
			<td class="tdcen"';
		if ($ispalatin && ($batiment != 'Etude d\'Architecte')) {
			echo '><input name="'.str_replace(array(' ',"'"),'',$batiment).'" value="'.$prochain.'" size="2" style="text-align: right;">';
		}
		else {
			echo tdbold($prochain).'>'.$prochain;
		}
		echo ' %</td>
			<td class="tdcen">'.bonus2taxe($prochain, $batiment).' %</td>
			<td class="tdlef" style="padding-left:20px;">'.$bonus_prov.$permanent.' %</td>	</tr>'."\n";
		echo '<tr>	<td colspan="6" class="hline"></td>	</tr>'."\n";
	}
	
	// fin de l'affichage
	echo '<tr>	<td colspan="6" class="hline"></td>	</tr>'."\n";
	echo '<tr class="rollovercolor">
		<td class="tdlef"><b>Total</b></td>
		<td></td>
		<td class="tdcen"><b>'.$taxe.' %</b></td>
		<td></td>
		<td class="tdcen"><b>'.$taxe_pro.' %</b></td>
		<td></td>	</tr>';
	echo '<tr>	<td colspan="6" class="hline"></td>	</tr>'."\n";
	echo '</tbody></table>';
	
	$restant = $datechgmtpol-$temps;
	$j = floor( $restant /60  /24);
	$h = floor(($restant /60) %24);	
	$m = floor( $restant %60 );
	$reste = '';
	if ($j != 0)
		$reste.= $j.' jours, ';
	if ($h != 0)
		$reste.= $h.' heures, ';
	$reste.= $m.' minutes';
	echo 'Prochain changement de semaine dans '.$reste.'.<br><br>'; 
	
	if (abs($taxe_tot-$taxe)>1e-10)
		echo '<font color=red>Problème dans le calcul de la taxe! ('.$taxe.' / '.$taxe_tot.' | '.($taxe-$taxe_tot).')</font><br>';
	
	if ($ispalatin)
		echo '<input type="hidden" name="mode" value="budget">
		<input type="submit" value="Modifier le budget">
		</form>';
	
	echo '	<div id="lien" style="display:block;"><a href="javascript:swapbonus(\'lien\', \'aide\');" class="linkunder">Afficher l\'aide sur le palatinat</a></div>
		<div id="aide" style="display:none;">
	<div class="affichecachetexte"><a href="javascript:swapbonus(\'aide\', \'lien\');" class="linkunder">Cacher l\'aide</a></div>
	<div class="longtexte">La nouvelle organisation des bonus du palatinat est très différente de l\'ancienne. Les bonus et les taxes sont maintenant étroitement liés et varient de semaine en semaine, selon le bon vouloir du palatin. Le tableau ci-dessus illustre ce fait: sur la gauche figurent les bonus et taxes qui ont actuellement cours dans la province, et à droite les bonus et taxes que le palatin prévoit d\'instaurer la semaine prochaine.</div>
	<div class="longtexte">Le palatin peut modifier à tout moment ses choix concernant la semaine prochaine; il ne peut en revanche modifier les bonus et taxes de la semaine en cours. La transition d\'une semaine à l\'autre a lieu deux jours après la (ré)élection du palatin, afin de laisser le temps à celui-ci d\'apporter ses modifications.</div>
	<div class="longtexte">Les taxes, qui ne prennent en compte que le revenu lié à la population et non les gains liés aux prisonners ou aux combats, sont calculées à partir des bonus désirés par le palatin. Le pourcentage de la taxe que nécessite le premier pourcent est relié à la caractéristique du régime politique correspondante; et chaque point de bonus supplémentaire coûte légèrement plus cher que le précédent. Les taxes de chaque catégorie sont ensuite sommées pour obtenir la taxe totale imposée aux joueurs. Quoiqu\'il choisisse, le palatin ne peut pas imposer de taxes plus élevées que 50% à ses concitoyens.</div>
	<div class="longtexte">Même si les taxes sont étroitement corrélées aux bonus, tout investissement n\'est pas perdu à la fin de la semaine. En effet, lorsqu\'un palatin impose un certain bonus à sa province, un petit bonus additionnel est accordé par la suite. Celui-ci sera de '.$tauxperm.'% pour chaque pourcent de bonus pour chaque semaine.</div>
	<div class="longtexte">Nouveauté, le palatin a maintenant le droit de puiser dans la caisse, au maximum '.$caissenoire_max.'% du revenu des joueurs de sa province. Un tel détournement de fond peut se détecter en sommant les différentes composantes de la taxe: si le résultat est différent du total affiché, il y a fraude!</div>
	<div class="longtexte">Les anciens palatins auront remarqué la disparition de la trésorerie de province. La raison en est simple: puisque les améliorations et les taxes sont en relation directe, de semaine en semaine, il n\'y a plus besoin de comptabiliser l\'or prélevé chez les joueurs et de le transférer à la province.</div>
	</div>';
	
}
else
{
	echo '<tr>	<td><h2>Palatinat</h2>';
	if ($province == 'Aucune')
	{
		if (!$incProvJoin)
		{
			include ('diplomatique_include.php');
			$incProvJoin = true;
		}
		join_province_menu ($nom);
	}
}



// Pour les autres provinces
echo changement ('Autres provinces');
echo '</td></tr>
<tr>	<td>
	<table class="localtable630"><tbody>
	<tr>	<td style="text-align: center; width: 1%;">&nbsp;</td>
		<td class="cl_entete">Palatin</td>
		<td class="cl_entete" style=" width:15%;">Province</td>
		<td class="cl_entete" style=" width:15%;">Taxes</td>	</tr>';

$sql = "SELECT * FROM provinces_politiques";
$result = mysql_query($sql) or die("Erreur avec la base");
while ($data = mysql_fetch_row($result))
{
	$palatin = $data[5];
	$province = $data[1];
	$taxes = $data[7];
	$palat_lien = $palatin;
	if($palatin == "")
	{
		$palatin = "Aucun palatin en fonction";
		$da3[0] = '<img src="/images/divers/aucune_province.png" width="20" height="20" alt="'.$province.'" ALIGN=middle border=1>';
	}
	else
	{
		$sql2 = "SELECT avatar FROM joueurs_heros WHERE nom='$palatin'";
		$result2 = mysql_query($sql2) or die("Erreur avec la base");
		$da3 = mysql_fetch_row($result2);
		$re4 = mysql_query('SELECT titre, royaume FROM joueurs_heros WHERE nom = "'.$palatin.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da4 = mysql_fetch_row($re4);
		$da3[0] = '<a href="information.php?cible='.$palatin.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false"><img src="'.$da3[0].'" width="20" height="20" alt="'.$palatin.'" title="'.$palatin.'" ALIGN=middle border=1></a>';
		$palatin = '<a href="information.php?cible='.$palatin.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false">'.$palatin.', '.$da4[0].' '.$da4[1].'</a>';
	}
	echo '	<tr>	<td></td>
			<td colspan="3" class="hline"></td>	</tr>
		<tr>	<td>'.$da3[0].'</td>
			<td class="tdlef">'.$palatin.'</td>
			<td class="tdlef">'.$province.'</td>
			<td class="tdrig">'.valeurtaxes($taxes).'</td>	</tr>';
	}
	echo '	<tr>	<td></td>
			<td colspan="3" class="hline"></td>	</tr>';
	echo '</tbody></table>';

	echo '</td></tr></tbody></table>';

mysql_close();
include "fin.php"; 
