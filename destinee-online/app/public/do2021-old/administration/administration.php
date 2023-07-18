<?php session_start();

include ('connect_0.php');

$temps = floor(time()/60);
$serveur = 1;

for ($serveur=1; $serveur<=2; $serveur++)
{
	include("choix_serveurs.php");
	

}
 if ($_SESSION['login'] == 'Draveon') {
	
?>

	<h1>Bienvenue sur l'Administration</h1>
	<form action="raz.php">
		<label for="raz">Remettre a zéro le serveur 1</label>
		<input type="submit" name="raz" value="En Avant Guingamp !">
	</form>
<?php

}
?>


</div>
</body>
</html>
