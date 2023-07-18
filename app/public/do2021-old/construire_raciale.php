<?php

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

include('connect.php');
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];

switch ($race) {

			//Les Six Lames
			case 'Célestial': $crea_raciale1 = '110'; $crea_raciale2 = '227'; $terrain = "riverain"; break;
			case 'Fétide': $crea_raciale1 = '43'; $crea_raciale2 = '185'; $terrain = "marais"; break;
			case 'Sahuagin': $crea_raciale1 = '58'; $crea_raciale2 = '121'; $terrain = "riverain"; break;
			case 'Septentrional': $crea_raciale1 = '47'; $crea_raciale2 = '175'; $terrain = "arctique"; break;
			case 'Ashtar': $crea_raciale1 = '290'; $crea_raciale2 = '291'; $terrain = "désert"; break;
			case 'Malakeh': $crea_raciale1 = '286'; $crea_raciale2 = '287'; $terrain = "forêt"; break;

			//L'Ordre Impérial
			case 'Elfe': $crea_raciale1 = '119'; $crea_raciale2 = '122'; $terrain = "forêt"; break;
			case 'Homme': $crea_raciale1 = '71'; $crea_raciale2 = '241'; $terrain = "plaine"; break;
			case 'Nain': $crea_raciale1 = '84'; $crea_raciale2 = '210'; $terrain = "montagne"; break;
			case 'Ancien': $crea_raciale1 = '30'; $crea_raciale2 = '209'; $terrain = "désert"; break;
			case 'Gnome': $crea_raciale1 = '10'; $crea_raciale2 = '81'; $terrain = "montagne"; break;
			case 'Fée': $crea_raciale1 = '24'; $crea_raciale2 = '181'; $terrain = "forêt"; break;

			//Les Disciples du Chaos
			case 'Vampire': $crea_raciale1 = '56'; $crea_raciale2 = '114'; $terrain = "plaine"; break;
			case 'Orque': $crea_raciale1 = '31'; $crea_raciale2 = '83'; $terrain = "marais"; break;
			case 'Infernal': $crea_raciale1 = '35'; $crea_raciale2 = '207'; $terrain = "désert"; break;
			case 'Minotaure': $crea_raciale1 = '52'; $crea_raciale2 = '165'; $terrain = "arctique"; break;
			case 'Géant': $crea_raciale1 = '80'; $crea_raciale2 = '223'; $terrain = "colline"; break;
			case 'Elfe Noir': $crea_raciale1 = '140'; $crea_raciale2 = '156'; $terrain = "caverne"; break;
		}

	$sql1 = "UPDATE `joueurs_batiments_id` SET `$crea_raciale1` = '$terrain' WHERE `nom` = '$nom'";
	$sql2 = "UPDATE `joueurs_batiments_id` SET `$crea_raciale2` = '$terrain' WHERE `nom` = '$nom'";


	$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

?>
