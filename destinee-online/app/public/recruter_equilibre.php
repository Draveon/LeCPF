<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

include ("debut.php");
include ("menu.php");
entete("Recrutement d'une armée");

$nom = $_SESSION['nom'];
include("connect.php");

$req = mysql_query("SELECT * FROM `joueurs_créatures` WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$creas_joueurs = mysql_fetch_array($req);
unset($creas_joueurs['id']);
unset($creas_joueurs['nom']);

$etape = (isset($_POST['etape'])) ? $_POST['etape'] : 0;

// Étape 1 : calcul de l'armée à recruter et demande de confirmation
if ($etape == 1) {
	echo '<table class="localtable630"><tbody><tr><td>';
	echo '<h2>Confirmation de recrutement des troupes</h2>
	<form method="post" action="recruter_equilibre.php" name="form3">';
	
	$req_creas = mysql_query("SELECT `id` FROM `creatures` WHERE `id` > 5 ORDER BY `niveau` DESC") or die('Erreur SQL !<br>'.mysql_error());
	$nb_stacks = 0;
	while ($crea = mysql_fetch_array($req_creas)) {
		$id_crea = $crea['id'];
		$param_crea = 'crea_'.$id_crea;
		$req = mysql_query("SELECT `$id_crea` FROM `joueurs_créatures_id` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$dispo = mysql_fetch_row($req);

		$req = mysql_query("SELECT `$id_crea` FROM `joueurs_créatures` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$deja_recrut = mysql_fetch_row($req);
		if ($deja_recrut[0] > 0) {
			$creatures_choisies[$id_crea] = $_POST[$param_crea];
			$nb_stacks++;
		} else if ($dispo[0] > 0) {
			$creatures_choisies[$id_crea] = $_POST[$param_crea];
			if ($_POST[$param_crea] != 2) {
				$nb_stacks++;
			}
		}
	}
	
	include("recruter_equilibre_include.php");
	
	if ($erreur != '') {
		echo $erreur;
	} else {
		echo '<input type="hidden" name="etape" value="2">
		<input type="submit" value="Confirmer >>">';
	}
	echo '</form>';

	echo '<br></td></tr></tbody></table>';
	echo cadre_fin();
	echo cadre_spacer();
	echo cadre_debut();
}

// Étape 2 : confirmation du recrutement ou affichage message d'erreur	
if ($etape == 2) {
	
	echo '<table class="localtable630"><tbody><tr><td>';
	echo '<h2>Confirmation du recrutement de votre armée</h2>';
	
	$prix_total = $mana_total = $pvs_total = 0;
	$recrut = $stock = '';
	
	include_once("calcul_bonus_recrutement.php");
	$mod_mana = calcul_bonus_conso_magie_recr($nom);
	$mod_or = calcul_mod_cout_creas($nom);
	
	$req_creas = mysql_query("SELECT `id`, `cout_argent`, `cout_mana`, `pvs` FROM `creatures` WHERE `id` > 5 ORDER BY `niveau` DESC") or die('Erreur SQL !<br>'.mysql_error());
	while ($crea = mysql_fetch_array($req_creas)) {
		$id_crea = $crea['id'];
		$param_crea = 'crea_'.$id_crea;
		if (isset($_POST[$param_crea])) {
			$nb_a_recruter = $_POST[$param_crea];
			$req = mysql_query("SELECT `$id_crea` FROM `joueurs_créatures_id` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
			$creas_dispo = mysql_fetch_row($req);
			if ($creas_dispo[0] < $nb_a_recruter) {
				$erreur .= 'T\'as pas les stocks nécessaires mon garçon ! <br />';
				break;
			} else {
				$pvs_total += $nb_a_recruter * $crea['pvs'];
				$prix_total += $nb_a_recruter * $crea['cout_argent'] * $mod_or;
				$mana_total += $nb_a_recruter * $crea['cout_mana'] * $mod_mana;
				$recrut .= "`$id_crea` = `$id_crea` + $nb_a_recruter , ";
				$stock .= "`$id_crea` = `$id_crea` - $nb_a_recruter , ";
			}
		}
	}
	
	$recrut = substr($recrut, 0, -2);
	$stock = substr($stock, 0, -2);	
	
	$prix_total = round($prix_total);
	$mana_total = round($mana_total);

	$req = mysql_query("SELECT `mana`, `argent` FROM `joueurs_stats` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$ressources = mysql_fetch_array($req);
	if ($ressources['argent'] < $prix_total) {
		$erreur .= 'Vous ne disposez pas de suffisamment d\'or ! <br />';
	}
	if ($ressources['mana'] < $mana_total) {
		$erreur .= 'Vous ne disposez pas de suffisamment de mana ! <br />';
	}
	
	if ($erreur != '') {
		echo $erreur;
	} else {
		$req = mysql_query("UPDATE `joueurs_créatures_id` SET $stock WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$req = mysql_query("UPDATE `joueurs_créatures` SET $recrut WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$req = mysql_query("UPDATE `joueurs_stats` SET `argent` = `argent` - $prix_total, `mana` = `mana` - $mana_total WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$req = mysql_query("UPDATE `joueurs_modificateurs` SET `pvstotal` = `pvstotal` + $pvs_total WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		echo "Recrutement effectué !";
		include_once("puissance.php");
		maj_puissance($nom);
	}
	
	echo '<br></td></tr></tbody></table>';
	echo cadre_fin();
	echo cadre_spacer();
	echo cadre_debut();
	
}


//   PV actuels de l'armée à insérer bientôt <tr>    <td><span class="longtexte">Pv actuels de l&apos;arm&eacute;e : '.$pvs_armee.'</span></td></tr>

// Affichage du formulaire de choix des troupes et de la puissance désirée
echo '<form method="post" action="recruter_equilibre.php" name="form2">
<table class="localtable630"><tbody>
<tr>	<td colspan="5" class="tdlef"><h2>Choisir la puissance souhaitée et les troupes qui composeront votre armée...</h2><div class="longtexte">Vous pouvez entrer la puissance que vous souhaitez atteindre après le recrutement de votre armée, et les troupes qui composeront votre armée. Pour chaque type de créature que vous souhaitez ajouter à votre armée, vous pouvez choisir si cette créature doit faire partie de votre armée en priorité, ou si elle n\'est que secondaire. Les troupes indiquées comme prioritaires sont recrutées en premier, les secondaires ne sont prises utilisées que si le nombre de créatures prioritaires est insuffisant pour atteindre la puissance souhaitée.<br>&nbsp;</div></td></tr>

<tr>	<td><strong>Nom</strong></td><td><strong>Niveau</strong></td><td><strong>Disponible</strong></td><td><strong>Recrut&eacute;</strong></td><td><strong>Prioritaire</strong></td><td><strong>Secondaire</strong></td><td><strong>Non utilisé</strong></td></tr>';

$req_creas = mysql_query("SELECT `id`, `nom`, `niveau` FROM `creatures` WHERE `id` > 5 ORDER BY `niveau` DESC") or die('Erreur SQL !<br>'.mysql_error());
while ($crea = mysql_fetch_array($req_creas)) {
	$id_crea = $crea['id'];
	$nom_crea = $crea['nom'];
	$req = mysql_query("SELECT `$id_crea` FROM `joueurs_créatures_id` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$niveau_crea = $crea['niveau'];
	$req = mysql_query("SELECT `$id_crea` FROM `joueurs_créatures_id` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$dispo = mysql_fetch_row($req);
	$req = mysql_query("SELECT `$id_crea` FROM `joueurs_créatures` WHERE `nom` = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
	$deja_recr = mysql_fetch_row($req);
	$gras = $deja_recr[0] > 0 ? 'style="color:darkblue;"' : '';
	if ($dispo[0] > 0) {
		echo '<tr>	<td> <span '.$gras.'>'.$nom_crea.'</span></td><td>'.$niveau_crea.'</td><td>'.$dispo[0].'</td><td>'.$deja_recr[0].'</td><td><input type="radio" name="crea_'.$id_crea.'" value="0" id="crea_'.$id_crea.'_prio"></td><td><input type="radio" name="crea_'.$id_crea.'" value="1" id="crea_'.$id_crea.'_second"></td><td><input type="radio" name="crea_'.$id_crea.'" value="2" id="crea_'.$id_crea.'_non" checked="checked"></td></tr>';	
	}
}
echo '</tbody></table>
<br>

Puissance désirée: <input type="text" name="puissance_cible" size="7" id="puissance_cible">

<br><br><input type="hidden" name="etape" value="1">
<input type="submit" value="Confirmer >>">
</form>
';


mysql_close();
$ifpubgoogle = false;
include ("fin.php");
?>
