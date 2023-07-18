<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];

include("connect.php");
include ("info_objets_include.php");

if ($nom == 'Turfel' || $nom == 'Sansst') {
	// Liste des emplacements possibles
	$emplacements["1"] = "tête";
	$emplacements["2"] = "cou";
	$emplacements["3"] = "corps";
	$emplacements["4"] = "doigt01";
	$emplacements["5"] = "doigt02";
	$emplacements["6"] = "pieds";
	$emplacements["7"] = "arme";
	$emplacements["8"] = "bouclier";
	$emplacements["9"] = "accessoire01";
	$emplacements["10"] = "accessoire02";
	$emplacements["11"] = "accessoire03";
	foreach ($emplacements as $key => $value) {
		// On récupère la liste des joueurs qui ont un objet de noel sur la place en cours
		$query = "SELECT `nom`, `".$value."` FROM `joueurs_inventaire` j WHERE (SELECT base FROM `objets_items` where id = j.`".$value."`) > 440";
		$result = mysql_query($query) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		// On parcourt la liste des joueurs
		while ($data=mysql_fetch_row($result)) {
			$nomJoueurEncours = $data[0];
			$objetAVirer = $data[1];
			// On récup les caracs de l'objet
			$obj_data = retourne_carac_objet($objetAVirer);
			// On enlève les bonus de l'objet au porteur
			objetchangemodificateurs($obj_data, $nomJoueurEncours, "-");
			echo "coucou";
			// On supprime l'objet de l'inventaire
			$query2 = "UPDATE `joueurs_inventaire` SET `".$value."` = 0 WHERE `nom` = '".$nomJoueurEncours."'";
			$result2 = mysql_query($query2) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
	}
}

?>