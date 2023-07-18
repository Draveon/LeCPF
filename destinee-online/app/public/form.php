<?php session_start();
//On se connecte
include("connect.php");
//On récupère les valeurs entrées par l'utilisateur :
$pseudo=$_SESSION['nom'];
$faction=$_POST['choix_faction'];
 
 
//On prépare la commande sql d'insertion
$sql = 'INSERT INTO factions_membres VALUES("","'.$pseudo.'","'.$faction.'")';
 
/*on lance la commande (mysql_query) et au cas où, 
on rédige un petit message d'erreur si la requête ne passe pas (or die) 
(Message qui intègrera les causes d'erreur sql)*/
mysql_query ($sql) or die ('Erreur SQL !'.$sql.'<br />'.mysql_error()); 
 
// on ferme la connexion
mysql_close($db);
?>