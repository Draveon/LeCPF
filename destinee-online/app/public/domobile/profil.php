<?php session_start();
// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      header("Location: www.destinee-online.com");
  }
}

include "connect.php"; // On pourrait utiliser PDO si un codeur sait pas quoi faire un jour.
include "fonctions/profil.class.php";
include "profil_include.php";
include 'administration/include_fonctions.php';
$afficher_form = 1;
$afficher_form_raz = 0;
$afficher_form_del = 0;
$profil = new Profil(Profil::ACT_AUTRE, true);
$note = '';
$erreur = 0;

// LIGNE SUIVANTE A MODIFIER POUR L'ID
$donnees_joueur = getJoueurDonnees(0, $_SESSION['nom'], 0);


if(isset($_GET['v']) && (int)$_GET['v'] == 1)
{
	if(!isset($_GET['t']) || empty($_GET['t']) || $_GET['t'] != $_SESSION['profil_token']) // Si le jeton du fomulaire ne colle pas avec celui de la session.
		exit("Possibilite de faille CSRF.<br /><a href=\"index.php\">Retour à l'index.</a>");
	$token = $_SESSION['profil_token'];	// Sinon utilisera le jeton pour resécuriser ce forumulaire.
	// Modification de l'avatar
	if(isset($_POST['avatar']) && $_POST['avatar'] != $donnees_joueur['avatar'])
	{
		if(!empty($_POST['avatar']))
		{
			if(($retour = $profil->setAvatar($_SESSION['nom'], $_POST['avatar'])) == Profil::EXIT_SUCCESS)
			{
				$note .= '<span style="color:darkgreen;">Avatar modifié.</span><br />';
				$_SESSION['avatar'] = $_POST['avatar'];
			}
			elseif($retour == Profil::EXIT_FAILURE)
			{
				$note .= '<span style="color:darkred;">'.$profil->getError().'</span>';
				$erreur = 1;
			}
		}
	}
	// Modification de l'email
	if(isset($_POST['email']) && $_POST['email'] != $donnees_joueur['email'])
	{
		if(!empty($_POST['email']))
		{
			$profil->flushError();
			if(($retour = $profil->setEmailPerso($_SESSION['nom'], $_POST['email'])) == Profil::EXIT_SUCCESS)
			{
				$note .= '<span style="color:darkgreen;">Email modifié.</span><br />';
			}
			elseif($retour == Profil::EXIT_FAILURE)
			{
				$note .= '<span style="color:darkred;">'.$profil->getError().'</span>';
				$erreur = 1;
			}
		}
	}
	// Modification de la description
	if(isset($_POST['description']) && $_POST['description'] != $donnees_joueur['description'])
	{
		if(($retour = $profil->setDescription($_SESSION['nom'], $_POST['description'])) == Profil::EXIT_SUCCESS)
		{
			$note .= '<span style="color:darkgreen;">Description modifiée.</span><br />';
		}
		elseif($retour == Profil::EXIT_FAILURE)
		{
			$note .= '<span style="color:darkred;">Description non modifiée.</span><br />';
			$erreur = 1;
		}
	}
	// Remise à zéro du compte.
	if(isset($_POST['raz']) && !empty($_POST['raz']))
	{
		// Si on a pas encore sélectionné race-classe-dieu-sexe, on affiche le formulaire
		if($_POST['raz'] != 'etape1')
		{
			$afficher_form = 0;
			$afficher_form_raz = 1;
			$onload = 'onload="load_selects()"';
		}	
		// Sinon on effectue gentillement.
		else
		{
			if($profil->resetCompte($_SESSION['id_compte'], $_SESSION['id'], $_SESSION['nom'], $_POST['race'], $_POST['classe'], $_POST['dieu'], $_POST['sexe']) == Profil::EXIT_FAILURE) {
				$note .= '<span style="color:darkred;">Erreur dans le reset :<br />'.$profil->getError().'</span>';
				$erreur = 1;
			}
			else {
				rediriger($_POST['race'], $_POST['classe'], $_POST['dieu'], $_POST['sexe']);
			}
		}
	}
}
else if(empty($_SESSION['profil_token']))	// Si on arrive pas sur cette page parce qu'on a validé un formulaire, on génère le jeton.
{
	$_SESSION['profil_token'] = $token = md5(uniqid(rand(), true));
	$_SESSION['profil_token_time'] = time();
}
else
{
	$token = $_SESSION['profil_token'];
}
if(isset($_SESSION['profil_token_time']) && $_SESSION['profil_token_time'] != 0 && $_SESSION['profil_token_time'] < (time() - 15*60)) // Si le jeton existe et qu'il a expiré (+ d'1/4 h)
{
	$_SESSION['profil_token'] = $token = md5(uniqid(rand(), true));
	$_SESSION['profil_token_time'] = time();	// On regénère un token.
}

// On passe à l'affichage.
include "debut.php";
include "menu.php";
entete('Profil');
include "connect.php";
if($afficher_form)
{
	$donnees_joueur = getJoueurDonnees(0, $_SESSION['nom'], 0);
	include 'vues/profil/form.cache';
}
if($afficher_form_raz)
{
	include 'vues/profil/form_raz.cache';
}
if($afficher_form_del)
{
	include 'vues/profil/form_del.cache';
}
include "fin.php";
?>