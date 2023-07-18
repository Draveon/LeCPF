<?php session_start();?>


<html>

<?php


if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] == 0){
	if (!isset($_POST['login'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

/* SELECTION PERSO DEBUT */
$temps = floor(time()/60);
require_once ("inclus/dates.inc");
$date = $heure.'<br>'.$jour.' '.$mois;

$_SESSION['connexion'] = 0;

if ($_SESSION['connexion_compte'] == 1)
{
	include("connect.php");
	$connexion_compte = 1;
}
else
{
	$_SESSION["serveur"] = $_POST['serveur'];
	include("connect.php");
	$connexion_compte = 0;
	$login     = str_replace('\'', '`', htmlentities($_POST['login']));
	$password  = $_POST['password'];

	include("fonctions/securite.class.php");
	$login = ucfirst($login);
	$sql = "SELECT id, login, password, email FROM joueurs_infos WHERE login = '".$login."' OR email = '".$login."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	
	if (($password != '') && ((md5($password) == $data['password']))) {
		$connexion_compte = 1;
		$_SESSION['connexion_compte'] = 1;
		$_SESSION['id_compte'] = $data['id'];
		$_SESSION['login'] = $data['login'];
	} else {
		$connexion_compte = 0;
	}
}

if ($connexion_compte == 1)
{
	$serveur = $_SESSION['serveur'];
	$id_compte = $_SESSION['id_compte'];
	include("temps_ecoulement.php");
	include ("connect.php");
	
	if (!isset($_POST['action'])) {
		$sql = "SELECT * FROM joueurs_heros WHERE id_compte = ".$id_compte;
		$result = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$nb_persos = mysql_num_rows($result);
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso1 = $row['id'];
			$nom_perso1 = $row['nom'];
			$avatar1 = $row['avatar'];
			$_SESSION['nom_perso1'] = $row['nom'];
		}
		if ($row = mysql_fetch_assoc($result)) {
			$id_perso2 = $row['id'];
			$nom_perso2 = $row['nom'];
			$avatar2 = $row['avatar'];
			$_SESSION['nom_perso2'] = $row['nom'];
		}
		

	} else if ($_POST['action'] == "creer2") {
			// Validation de la création
		include "inclus/conf.php";
		include "fonctions/profil.class.php";
		$profil = new Profil(Profil::ACT_CREATION_PERSO, 1);
		$retour = $profil->creerPersonnage($_SESSION['id_compte'], $_POST['nom'], $_POST['sexe'], $_POST['race'], $_POST['classe'], $_POST['dieu'], $_POST['royaume']);

		

		if($retour == Profil::INSCRIPTION_REUSSIE)
		{
			echo '
			<div class="col-md-12 inscript_reussie">
			<div class="div_inscript"
			style="
			text-align: center;
			margin: 205px;
			">
			<p>Personnage créé avec succès!</p>
			<form action="/selection_perso2.php">
			<input 
			class="btn-do_connect btn-create" 
			type="submit"
			value="Retourner à la sélection" 
			style="
			width: 250px;
			" />
			</form>
			</div>
			</div>
			';
		}
		else 
		{
			echo 'Erreur lors de la création du personnage :<br />'.$profil->getError();
		}
	} else {
			// Connexion personnage
		$result = mysql_query("SELECT * FROM joueurs_heros WHERE id = '".$_POST['action']."'");
		$data = mysql_fetch_assoc($result);
		$_SESSION['connexion'] = 1;
		$_SESSION['nom'] = $data['nom'];
		$_SESSION['id'] = $data['id'];
		$_SESSION["race"] = $data['race'];
		$_SESSION["classe"] = $data['classe'];
		$_SESSION["titre"] = $data['titre'];
		$_SESSION["royaume"] = $data['royaume'];
		$_SESSION["dieu"] = $data['dieu'];

		echo '<META http-equiv="refresh" content="1; url=/principale2.php">';
			exit;
	}

	/* SELECTION PERSO FIN */

	include ('debut2.php');
	include('header.php');
	include('body_sp.php');
	include('footer.php');


}
?>


</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
<script src="dist/js/bootstrap.min.js"></script>