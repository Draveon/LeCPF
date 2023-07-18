<?php
/* ------------------------------------------
	session.inc.php
	Gère les sessions. Redirige vers la 
	page d'accueil le cas échéant.
------------------------------------------ */

// Sont misent en variables de session : Nom, Password, Race et Classe
session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
	  header('Location: /');
  }
}
?>