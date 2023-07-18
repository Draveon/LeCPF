<?php 
// Voici ma dernière contribution à destinée online,
// Un système automatisé de remise à zéro de serveur
// Tous les 3 mois à partir du 31 décembre à 00h00,
// La requête de RàZ se lancera automatiquement..
// Définit le fuseau horaire par défaut à utiliser. Disponible depuis PHP 5.1
date_default_timezone_set('Europe/Paris');

?><br><?php
echo "HEURE ACTUELLE";
?><br><?php
// Affichage de quelque chose comme : Monday 8th of August 2005 03:12:46 PM
echo date('l jS \of F Y h:i:s A');

 ?>