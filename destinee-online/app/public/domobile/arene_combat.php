<?php session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$serveur = $_SESSION['serveur'];
$temps = floor(time()/60);

// Affichage de l'entête de page
include ("debut.php");
include ("menu.php");
entete("Combat");
include("connect.php");

// fonctions particulières au combat
include ("combat/combat_fonctions.inc");
echo "<input type='hidden' value='";
print_r($_SESSION); print_r($_POST);
echo "'>";

// INITIALISATION DU GroUPE DE creatures
// INSERT INTO `arene_creatures` (`id`, `creature`, `qte`, `niveau`) VALUES (NULL, '5', '5', '1');

// // Gestion des différentes étapes du combat : choix de la cible, puis choix des troupes envoyées, puis le combat en lui-même
// if (!isset($_POST['cible']) OR !isset($_SESSION['combat']) OR $_SESSION['combat'] == "1")
// {	// pas de choix fait pas l'utilisateur
// 	include("combat/choix_cible.inc");
// }
// else
// {
	// if ($_POST['combattre'] == "1" OR $_SESSION['combat'] == "2")
	// {
	// 	include("combat/choix_troupes.inc");
	// }
	else if (($_POST['combattre'] == "4") &&((isset($_POST['confirm']))&&($_POST['confirm']=='yes')))
	{
		echo "<div align='left' style='width: 963px;'>";
		include("combat/affront_arene.php");
	}
	// else	// changement de puissance de la cible et changement d'avis du joueur
	// {
	// 	unset($_POST);
	// 	include("combat/choix_cible.inc");
	// }
// }

// Affichage du pied de page
include("fin.php");

?>
