<?php
// GESTION DE LA SESSION

// Start de la session
  session_start();

// Le joueur est-il non connecté (ou déconnecté) ? 
//  Si oui, on le redirige vers la page de connexion (index.php)
  if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0)
  {
    if (!isset($_POST['nom']))
    {
       header("Location: http://".$_SERVER['HTTP_HOST']."/index.php");
       exit;
    }
  }

// Récupération des variables de session : 'nom' et 'serveur'
  $nom = $_SESSION['nom'];
  $serveur = $_SESSION['serveur'];

?>


