<?php session_start();

$etape = (!isset($_GET['etape'])) ? 0 : (($_GET['etape'] > 0) ? (($_GET['etape'] == 1) ? 1 : (($_GET['etape'] == 2) ? 2 : 0 ))  : 0 ) ;

// Quelques inclusions
include "inclus/conf.php";
include "fonctions/profil.class.php";

$head_keywords = 'inscription, multijoueur, jeu, compte';
$meta_supp = "<script type=\"text/Javascript\">
	<!--
	function montrerBulle(partie)
	{
	var ell = document.getElementById(\"aide\"+partie);
	ell.style.visibility = \"visible\";
	ell.style.display = \"inline\";
	}
	function cacherBulle(partie)
	{
	var ell = document.getElementById(\"aide\"+partie);
	ell.style.visibility = \"hidden\";
	ell.style.display = \"none\";
	}
	function afficherReglement()
	{
	var ell = document.getElementById(\"reglement\");
	ell.style.visibility = \"visible\";
	ell.style.display = \"inline\";
	}
	-->
	</script>";

// On initialise quelques variables
$erreurs = 0;
$note = '';
$mdp_genere = '';

$nom = $email = '';

// On passe à la page proprement dite.
// L'étape 0 est l'étape où on choisit le serveur. c'est l'étape par défaut.
if($etape == 0)
{
	// récupération du nombre de joueurs
	$i = 1;
	while($i <= 3)
	{
		$_SESSION['serveur'] = $i;
		include('connect.php');
		$req = mysql_query('SELECT COUNT(id) FROM joueurs_infos');
		$dat = mysql_fetch_row($req);
		${'joueurs_serveur_'.$i} = $dat[0];
		$i++;
		mysql_close();
	}
	unset($_SESSION['serveur']);
	
	// Boléens qui définissent si on affiche ou non les serveurs.
	$afficher_serveur_1 = ($joueurs_serveur_1 < MAX_JOUEURS) ? true : false ;
	$afficher_serveur_2	= ($joueurs_serveur_2 < MAX_JOUEURS) ? true : false ;
	$afficher_serveur_3	= ($joueurs_serveur_3 < MAX_JOUEURS) ? true : false ;
}
if($etape == 2)
{
	$_SESSION['serveur'] = $_GET['serveur'];
	include("connect.php");
	$description = (isset($_POST['desc'])) ? $_POST['desc'] : '';
	$profil = new Profil(Profil::ACT_INSCRIPTION, 1);
	if(($retour = $profil->demanderInscription($_POST['login'], $_POST['motdepasse'], $_POST['email'])) == Profil::INSCRIPTION_REUSSIE)
	{
		$inscription_reussie = 1;
	}
	else
	{
		$note .= 'Erreur lors de l\'inscription :<br />'.$profil->getError();
		$erreurs = 1;
	}
	mysql_close();
	unset($_SESSION['serveur']);
}

// On passe à l'affichage des données
include "debut.php";
include "menu_index.php";
if($etape == 0)
{
	entete_index('Inscription - 1/2');
	include "vues/inscription/form_serveurs.cache";
}
if($etape == 1)
{
	entete_index('Inscription - 2/2');
	include "vues/inscription/form_races.cache";
}
if($etape == 2)
{
	entete_index('Inscription');
	include "vues/inscription/form_special.cache";
}
include "fin.php";
?>

