<?   session_start();

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

// Gestion de la session
//  include("inclus/session.inc");


// Affichage de l'entête de page
include ("debut.php");
include ("menu.php");
entete("Combat");


// Connexion à la base
// ATTENTION ! En l'état actuel des choses, à faire APRES affichage de l'entête de page
//  la connexion ne survivant pas à la sortie du code php 
//                                 (effectuée dans debut.inc et menu.inc)
//Hum Faîtes gaffe a pas supprimer les fichier de connexion aprés ca bug ^^'
// include("inclus/connect.inc");
include("connect.php");


// fonctions particulières au combat
include ("combat/combat_fonctions.inc");


// Gestion des différentes étapes du combat : choix de la cible, puis choix des troupes envoyées, puis le combat en lui-même

if(!isset($_POST['cible']) OR !isset($_SESSION['combat']) OR $_SESSION['combat'] == "1")
{
	include("combat/choix_cible.inc");
}
else
{
	if ($_POST['combattre'] == "1" OR $_SESSION['combat'] == "2")
	{
		include("combat/choix_troupes.inc");
	}
	echo "<div align='left' style='width: 680px;'>";
	if($_POST['combattre'] == "2" AND $_SESSION['combat'] == "3")
	{
		include("combat/affrontement.inc");
	}
}

// Affichage du pied de page
include("fin.php");

?>