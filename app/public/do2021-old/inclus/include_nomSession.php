
<?php
/*
$_SESSION["serveur"] = $_POST['serveur'];
	include("connect.php");
	$connexion_compte = 0;
	$login     = str_replace('\'', '`', htmlentities($_POST['login']));
	$password  = $_POST['password'];

	include("fonctions/securite.class.php");
	$login = ucfirst($login);
include("connect.php");
$sql = "SELECT id, login, password, email FROM joueurs_infos WHERE login = '".$login."' OR email = '".$login."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
$_SESSION['login'] = $data['login'];


echo "$_SESSION['login']"; 
*/
echo "test envoi";
?> 