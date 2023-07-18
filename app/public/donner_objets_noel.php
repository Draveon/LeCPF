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

if ($nom == 'Turfel' || $nom == 'Sansst') {
	// On récupère la liste des joueurs et leur 1ère place libre dans l'inventaire
	$query = "SELECT `nom`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`, `14`, `15`, `16` FROM `joueurs_objets`";
	$result = mysql_query($query) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	// On parcourt la liste des joueurs
	while ($data=mysql_fetch_row($result)) {
		$nomJoueurEncours = $data[0];
		if ($nomJoueurEncours == 'Droïn Pierre de Feu' || $nomJoueurEncours == 'Larah' || $nomJoueurEncours == 'Treleg' || $nomJoueurEncours == 'Baduit' || $nomJoueurEncours == 'Cyrielle' || $nomJoueurEncours == 'Nebkan') {
			// On boucle sur les places d'inventaire (sur le nom du joueur aussi mais pas grave)
			foreach ($data as $key => $value) {
				// On s'arrête dès qu'on en trouve une libre
				if (is_numeric($value) && $value == 0) {
					break;
				}
			}
			// L'inventaire du joueur était plein, on note son nom pour lui remettre plus tard
			if ($value != 0) {
				echo 'Joueur à dédommager : '.$nomJoueurEncours.' <br>';
				// On lui envoie un message pour le prévenir de libérer une place
				envoyerMessage($nomJoueurEncours);
			} else {
				// On a bien trouvé une place d'inventaire, on crée l'objet
				creerObjet(441, 448, $key, $nomJoueurEncours);
			}
		}
	}
}

// On crée un objet random dans un range d'id et le met dans l'inventaire d'un joueur
function creerObjet($idMin, $idMax, $placeInventaire, $joueur) {
	// On crée l'objet
	$query = "INSERT INTO `objets_items` ( `id` , `base` , `usure` , `bbonus1` , `bint1` , `bfloat1` , `badj1` , `bbonus2` , `bint2` , `bfloat2` , `badj2` )
				VALUES (NULL , '".mt_rand($idMin, $idMax)."', '-1', '', '0', '0.00', '', '', '0', '0.00', '')";
	mysql_query($query) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$idObjet = mysql_insert_id();

	// On le met dans l'inventaire du joueur
	$query = "UPDATE `joueurs_objets` SET `".$placeInventaire."` = '".$idObjet."' WHERE `nom` = '".$joueur."'";
	mysql_query($query) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}

function envoyerMessage($joueur) {
	$query = "INSERT INTO `messagerie` ( `id` , `auteur` , `destinataire` , `titre` , `message` , `date` , `temps` , `lu` , `signal` )
			VALUES (NULL , 'Le père noël', '".$joueur."', 'Ho ho ho', 'Vous n''avez pas pu recevoir votre cadeau du Père Noël car votre inventaire était plein.<br>Si vous souhaitez le recevoir, merci de libérer une place de votre inventaire.<br><br>Bon jeu !', '', '0', '0', '0')";
	mysql_query($query) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
}


?>