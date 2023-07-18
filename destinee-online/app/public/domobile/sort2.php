<?php session_start();

include("connect.php");
	if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] == 0){
		if (!isset($_POST['login'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}





include ('debut2.php');
include('header.php');
include('spells.php');
include('footer.php');




?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
<script src="dist/js/bootstrap.min.js"></script>
