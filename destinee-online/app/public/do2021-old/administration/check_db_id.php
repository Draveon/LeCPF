<html>
<head>
<title>Contrôle des id de la bdd Destinee</title>
</head>
<body>
<a href="check_db_id.php?serveur=1">1</a> 
<a href="check_db_id.php?serveur=2">2</a> 
<a href="check_db_id.php?serveur=3">3</a> 
<br><br>
<small>En cas d'utilisation de l'algorithme de correction de la base, plusieurs itérations peuvent etre nécessaires</small><br><br>
<?php



include ("include_fonctions.php");


$serveur = ((isset($_GET['serveur']))&&(in_array($_GET['serveur'], array(1,2,3,4,5)))) ? $_GET['serveur'] : 1;
$resoudr = ((isset($_GET['resoudr']))&&($_GET['resoudr'] == 'oui')) ? true : false;


$return = check_id_autoincrement ($serveur, $resoudr);
if (!($return === true))
{
	echo $return.'<br><br>';
	echo '<a href="check_db_id.php?serveur='.$serveur.'&resoudr=oui">Cliquer ici pour résoudre automatiquement les problèmes</a><br>';
}


?>
</body>
</html>


