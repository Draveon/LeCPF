<?php
$temps = floor(time()/60);
$action = (!isset($_POST['cible'])) ? '' : htmlentities(html_entity_decode($_POST['cible']));
$type 	= (!isset($_GET['type']))  ? 1  : $_GET['type'];
$serveur = $_SESSION['serveur'];
$nom = $_SESSION['nom'];
include("connect.php");




// fonctions particulières au combat
  include ("combat/combat_fonctions.inc");
// masquer Malfabas, Garfiniel et Gabu
 // include ("classement_cache.php");
  $jmasques=str_replace("joueurs_stats.","",$jmasques);
  if (strlen($jmasques)>0)
	$jmasques=" AND ".$jmasques;

// pour la variation de la formule de la puissance liée au serveur (score de créatures) ainsi que l'écoulement du temps
include ("temps_ecoulement.php");

// nécessaire pour l'espionnage proprement dit. c'est un include car c'est aussi utilisé pour générer l'auto-rapport de la page Strategie.
include ('espionner_include.php');


// donne la liste des joueurs espionnables par le joueur
function joueurs_portee_espion ($puissance, $espionnage)
{
	global $nom, $jmasques;
	$liste = array();
	
	// liste les types qui sont en dessus du joueur
	$w = 10 + round($espionnage / 10);
	$limite = (1.5 + 1.6 * ($espionnage/100)) * $puissance;
	$sql = "SELECT * FROM joueurs_heros WHERE puissance >= '$puissance' AND id_compte != '".$_SESSION['id_compte']."' AND puissance > '200' AND puissance <= '$limite' $jmasques ORDER BY puissance ASC  LIMIT $w";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nombre = mysql_num_rows($req);
	for ($i = ($nombre-1); $i >= 0; $i--)	// je garde cette formulation un peu bizarre pour l'éventualité où on voudrait étendre le range vers le haut en fonction des joueurs qu'on trouve dans le range
	{
		mysql_data_seek($req, $i);
		$liste[] = mysql_fetch_row($req);
	}
	// tableau des types qui sont en dessous du joueur
	$w = 5 + round($espionnage / 20);
	$limite = (0.85 - 0.2 * ($espionnage/100)) * $puissance;
	$sql = "SELECT * FROM joueurs_heros WHERE puissance < '$puissance' AND id_compte != '".$_SESSION['id_compte']."' AND puissance > '2000' AND puissance >= '$limite' $jmasques ORDER BY puissance DESC LIMIT $w";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nombre = mysql_num_rows($req);
	for ($i=0; $i < $nombre; $i++)
		$liste[] = mysql_fetch_row($req);
	
	return $liste;
}


// fin de toutes les fonctions!!! on démarre la page
$limite = $temps - $duree_jour;

// Aptitude espionnage du joueur
$sql = "SELECT `15` FROM joueurs_aptitudes WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_assoc($req);
$espionnage = $data["15"];

$max_espions = 1 + min(5, floor($espionnage / 24));


$colspan = 8;


	
// *** DEBUT DES CONTROLES

// établissement des joueurs qu'il est possible d'espionner
	// sélection de la puissance du joueur
$sql2 = "SELECT puissance FROM joueurs_heros WHERE nom = '$nom'";
$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
$data2 = mysql_fetch_row($req2);
$puissance = $data2[0];
// contrôle: la cible de l'espionnage doit être affichable dans la liste usuelle
$liste_cibles = joueurs_portee_espion ($puissance, $espionnage);
if ($action != '')	// le joueur veut espionner
{
	$flag = false;
	foreach ($liste_cibles as $data)
	{
		if ($data[2] == $action)
			$flag = true;
	}
	if ($flag == false)
	{
		$action = '';		// redirection vers la liste des espionnables
		echo '<table class="localtable963"><tbody>
		<tr><td><h2>Requête impossible</h2></td></tr>
		<tr><td>Malheureusement, le joueur que vous désirez espionner n\'est plus à votre portée!<br><br>&nbsp;</td></tr>
		<tr><td>';
	}
}


// vérification que espionnage possible et "nettoyage" de la bdd
$nb_espionnage = 0;
$sql2 = "SELECT espion01, espion02, espion03, espion04, espion05, espion06 FROM joueurs_aptitudes_base WHERE nom = '$nom'";
$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
$data2 = mysql_fetch_row($req2);
if ($data2[0] <= $limite)
{
	$sql = "UPDATE `joueurs_aptitudes_base` SET `espion01` = '0', `nom_espionne1` = '' WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data2[0] = 0;
}
if ($data2[0] > 0)
	$nb_espionnage++;

// Espionnages supplémentaires pour l'aptitude espionnage
if ($espionnage > 23) {
	if ($data2[1] <= $limite)
	{
		$sql = "UPDATE `joueurs_aptitudes_base` SET `espion02` = '0', `nom_espionne2` = '' WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data2[1] = 0;
	}
	if ($data2[1] > 0)
		$nb_espionnage++;
	
	if ($espionnage > 47) {
		if ($data2[2] <= $limite)
		{
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion03` = '0', `nom_espionne3` = '' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data2[2] = 0;
		}
		if ($data2[2] > 0)
			$nb_espionnage++;

		if ($espionnage > 71) {
			if ($data2[3] <= $limite)
			{
				$sql = "UPDATE `joueurs_aptitudes_base` SET `espion04` = '0', `nom_espionne5` = '' WHERE nom = '$nom'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				$data2[3] = 0;
			}
			if ($data2[3] > 0)
				$nb_espionnage++;
			
			if ($espionnage > 95) {
				if ($data2[4] <= $limite)
				{
					$sql = "UPDATE `joueurs_aptitudes_base` SET `espion05` = '0', `nom_espionne5` = '' WHERE nom = '$nom'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					$data2[4] = 0;
				}
				if ($data2[4] > 0)
					$nb_espionnage++;
				
				if ($espionnage > 119) {
					if ($data2[5] <= $limite)
					{
						$sql = "UPDATE `joueurs_aptitudes_base` SET `espion06` = '0', `nom_espionne6` = '' WHERE nom = '$nom'";
						$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
						$data2[5] = 0;
					}
					if ($data2[5] > 0)
						$nb_espionnage++;
				}
			}
		}
	}
}

// *** MESSAGES D'ERREUR
// on a dépassé les 3 espionnages => affiche un message d'erreur
if ($nb_espionnage >= $max_espions)
{
	$next = 99999999;
	// trois champs :  `espion01`, `espion02`, `espion3` contenant chacun l'instant d'un espionnage (ou zéro)
	$sql = 'SELECT espion01, espion02, espion03, espion04, espion05, espion06 FROM joueurs_aptitudes_base WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	// les espionnages datant de plus de 24 heures sont supprimées (champs remis à zéro)
	for ($i=0; $i<$max_espions; $i++)	// on boucle sur les 3 champs correspondant aux espionnages
  	{
    		$esp = $data[$i];			// $esp = instant de l'espionnage numéro $i
		if ( ($esp > 0) and ($esp-$limite < $next) )
 			$next = $esp-$limite; 
	}
	if ($next == 99999999)
		$next = 0;
	// $reste: string contenant le temps restant avant prochain espionnage
	$reste = '';
	$j = floor( $next /60  /24);
	$h = floor(($next /60) %24);	
	$m = floor( $next %60 );
	if ($j != 0)
		$reste = $j.' jours, ';
	if ($h != 0)
		$reste.= $h.' heures, ';
	$reste.= $m.' minutes';
	
	$njours = ($temps_ecoulement == 1) ? 'jour' : round((1/$temps_ecoulement),2).' jours';

	echo '<table class="localtable963"><tbody>
	<tr><td><h2>Requête impossible</h2></td></tr>
	<tr><td>Malheureusement, vous n\'avez plus d\'espionnage disponible pour ajourd\'hui.<br><br>
		<center>Vous pourrez envoyer un espion dans: <b>'.$reste.'</b></center></td></tr>
	<tr><td>';
}
else	// espionnage possible, selon $action on affiche les cible ou on espionne
{
	if ($action == "")	// page de choix de cibles
	{
		echo '<form method="post" action="taverne.php?page=espionner"><div align="center">
			<table class="localtable963"><tbody>
			<tr><td colspan="'.$colspan.'"><h2>Choisir la cible de votre espion</h2></td></tr>';		
		// entêtes du tableau des cibles

		echo '
		  <tr>	<td width="2%"></td>
			<td class="cl_entete" width="30%">Nom</td>
			<td class="cl_entete" width="10%">Race</td>
			<td class="cl_entete" width="10%">Classe</td>
			<td class="cl_entete" width="6%">Niv</td>
			<td class="cl_entete" width="12%">Province</td>
			<td class="cl_entete">Armada</td>
			<td class="cl_entete" width="10%">Puissance</td>	</tr>
		  <tr>	<td></td>
			<td colspan="'.($colspan-1).'" class="hline"></td>		</tr>';

		// sélection du nom de la guilde (éventuelle) du joueur    
		$sql = 'SELECT guilde FROM joueurs_bonus  WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$guilde = $data[0];
		
		// liste des cibles et affichage
		$total = 0;
		foreach ($liste_cibles as $data) {
			affiche_joueur($data, 'espionnage');
			$total++;
		}
		
		// fin de l'affichage
		if ($total == 0)
			echo '<tr><td colspan="'.$colspan.'" style="text-align: center; vertical-align: center;">Malheureusement, vous n\'avez aucune cible à espionner.</td></tr>';
		echo '<tr><td colspan="'.$colspan.'" style="text-align: center;" class="stratexplic"><br>'.colorie('petitmessageexplicatifaufond', '').'</td></tr>';
		if ($total > 0)
			echo '<tr><td colspan="'.$colspan.'" style="text-align: center;"><br><input type="hidden" name="combattre" value="1"><input type="submit" value="Espionner >>"></td></tr>';
	}
	
	else		// équivaut à if ($action != "")
	{		// début des rapports d'espionnage

		$temps = floor(time()/60);
		include ("inclus/dates.inc");
		$date = $heure.'<br>'.$jour.' '.$mois;
		
		echo '	<table class="localtable630"><tbody>
		<tr>	<td style="vertical-align: top; text-align: left;">';
	
		$sql = "SELECT `15` FROM joueurs_aptitudes WHERE nom = '$action'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_assoc($req);
		$espionnage2 = $data["15"];				// aptitude espionnage de l'espionné
		$espionnage = $espionnage - $espionnage2;
		espionnage($nom, $action, $espionnage);
		if ($espionnage <= 0) {
			$action = '';
		}
		
		// on scribouille l'heure du nouvel espionnage
		$sql2 = "SELECT espion01, espion02, espion03, espion04, espion05, espion06 FROM joueurs_aptitudes_base WHERE nom = '$nom'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		if ($data2[0] == 0){
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion01` = '$temps', `nom_espionne1` = '$action' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		} else
		if ($data2[1] == 0){
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion02` = '$temps', `nom_espionne2` = '$action' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		} else
		if ($data2[2] == 0){
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion03` = '$temps', `nom_espionne3` = '$action' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		} else
		if ($data2[3] == 0){
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion04` = '$temps', `nom_espionne4` = '$action' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		} else
		if ($data2[4] == 0){
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion05` = '$temps', `nom_espionne5` = '$action' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		} else
		if ($data2[5] == 0){
			$sql = "UPDATE `joueurs_aptitudes_base` SET `espion06` = '$temps', `nom_espionne6` = '$action' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		}
	}
}

mysql_close();
echo "</td></tr></tbody></table>";
include("fin.php");


?>
