<?php session_start();

	if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] == 0){
		if (!isset($_POST['login'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}





include ('debut2.php');
include('header.php');
include('apt.php');
include('footer.php');




?>
