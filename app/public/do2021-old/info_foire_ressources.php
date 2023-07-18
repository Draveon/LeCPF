<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];

$ressource = (isset($_REQUEST['ressource'])) ? $_REQUEST['ressource'] : "";
if ($ressource == "") {
	$ressource = (isset($_POST['ressource'])) ? $_POST['ressource'] : "";
}
$ressource_image = ($ressource == "Gemme") ? $ressource.'s' : $ressource;
$action_achat = $action_vente = false;
if (isset($_POST['AchatBtn'])) {
	$action_achat = true;
} else if (isset($_POST['VenteBtn'])) {
	$action_vente = true;
}

include("connect.php");

$sql = "SELECT qte_dispo, prix_courant FROM foire_ressources WHERE nom_ressource = '$ressource'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$qte_dispo = $data[0];
$prix_courant = $data[1];

echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
	<title>Acheter des ressources</title>
	<script type="text/javascript" src="fonctions/affichecache.js"></script>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>';

if (!($action_achat || $action_vente)) {
	echo '	<body class="bodypopup" marginheight=0 marginwidth=0>
		<form method="post" action="info_foire_ressources.php">
		<br>
		<div align="center">
		<table class="cadretablepopup">
		<tr>	<td colspan="3" class="cadretopleft"></td>
			<td rowspan="2" class="cadretopright"></td></tr>
		<tr>	<td class="cadremiddleleft"></td>
			<td colspan="2" class="cadrecontenupopupc">
		<b>'.$ressource.'</b></b><br>&nbsp;
		<table><tbody>
		<tr>	<td>';
	echo '<img src="/images/icones/'.lcfirst($ressource_image).'.gif" width="60" height="60" alt="'.$ressource.'"></td></tr>';
	echo "<tr><td>Quantité disponible: $qte_dispo</td></tr>";
	echo "<tr><td>Prix courant: $prix_courant <br><br></td></tr>";
	echo '<tr><td>Quantité à échanger: <input type="text" size="5" name="qte_achat_vente"><br><br></td></tr>';
	echo '<tr><td><input type="hidden" name="ressource" value="'.$ressource.'"><input type="submit" name="VenteBtn" value=" Vendre >> "></td><td><input type="submit" name="AchatBtn" value=" Acheter >> "></td></tr><tr><td>&nbsp;</td></tr>';
	
	echo '</table></td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table></div>
		<br>
		</tbody>
		</table>
		</form>
		</body>
		</html>';
} else {
	$texte = "";
	$qte_achat_vente = ((isset($_POST['qte_achat_vente']))&&(is_numeric($_POST['qte_achat_vente']))) ? round($_POST['qte_achat_vente']) : 0;
	$time = time()/60;
	if ($qte_achat_vente == 0) {
		$texte = "Vous n\'avez entré aucune quantité.";
	} else {
		$variation_prix = 0.002;
		$sql = "SELECT argent FROM joueurs_stats WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$cash = $data[0];
		if ($action_achat) {
			if ($qte_achat_vente > $qte_dispo) {
				$texte = "Il n\'y a pas assez de ressources en vente!";
			} else {
				$prix_nouveau = $prix_courant;
				for ($i=0;$i<$qte_achat_vente;$i++) {
					$prix += $prix_nouveau;
					$prix_nouveau = $prix_nouveau * (1 + $variation_prix);
				}
				$prix = round($prix);
				$prix_nouveau = round($prix_nouveau);
				if ($prix > $cash) {
					$texte = "Vous ne disposez pas de suffisamment d\'or.";
				} else {
					$cash = $cash - $prix;
					$sql = "UPDATE `joueurs_stats` SET `argent` = '$cash', `$ressource` = `$ressource` + $qte_achat_vente WHERE nom ='$nom'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					//On met à jour le prix de la ressource et sa quantité dispo
					$sql = "UPDATE `foire_ressources` SET `qte_dispo` = `qte_dispo` - $qte_achat_vente, `prix_courant` = $prix_nouveau WHERE `nom_ressource` = '$ressource'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					$texte = "Vous achetez $qte_achat_vente unités de $ressource au prix de $prix.";
				}
			}
		}
		if ($action_vente) {
			$sql = "SELECT `$ressource` FROM joueurs_stats WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$ressource_stock = $data[0];
			if ($qte_achat_vente > $ressource_stock) {
				$texte = "Vous ne disposez pas de suffisamment de $ressource.";
			} else {
				$prix_nouveau = $prix_courant;
				for ($i=0;$i<$qte_achat_vente;$i++) {
					$prix += $prix_nouveau;
					$prix_nouveau = $prix_nouveau * (1 - $variation_prix);
				}
				$prix = round($prix);
				$prix_nouveau = round($prix_nouveau);
				// On récupère les points de commerce pour la vente
				$commerce = 0;
				$sql = "SELECT `21` FROM joueurs_aptitudes WHERE nom = '$nom'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				$data = mysql_fetch_row($req);
				$commerce = $data[0];
				$prix = round($prix / (2 - $commerce / 150));
				$cash = $cash + $prix;
				$sql = "UPDATE `joueurs_stats` SET `argent` = '$cash', `$ressource` = `$ressource` - $qte_achat_vente WHERE nom ='$nom'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				//On met à jour le prix de la ressource et sa quantité dispo
				$sql = "UPDATE `foire_ressources` SET `qte_dispo` = `qte_dispo` + $qte_achat_vente, `prix_courant` = $prix_nouveau WHERE `nom_ressource` = '$ressource'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				$texte = "Vous vendez $qte_achat_vente unités de $ressource au prix de $prix.";
			}
		}
	}
	
	if ($texte == "") {
		?>
		<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
		<body onLoad="setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
		style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>
		<?php
	} else {
		?>
		<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
		<body onload="alert('<?php echo $texte; ?>'); setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
		style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>
		<?php
	}
}

mysql_close();
?>
