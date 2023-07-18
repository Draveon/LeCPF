
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" type="image/png" href="images/icones/favicondo.png" />
	<link rel="shortcut icon" type="image/png" href="images/icones/favicondo.png">
	<link rel="stylesheet" href="dist/css/bootstrap.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style_divers2.css?1">
</head>

<?php

include("connect.php");

if (!isset($head_title))	$head_title = 'Destinee-Online.com : jeu medieval multijoueur gratuit en ligne';
else				$head_title .= ' : Destinee-Online.com - jeu medieval multijoueur gratuit en ligne';
if (!isset($head_keywords))	$head_keywords = 'jeu en ligne, médiéval, destinée, magie, jeu multijoueur, jeu php, jeu gratuit';
else				$head_keywords .= ', jeu, gratuit, medieval, php';

if (!isset($meta_supp))		$meta_supp = '';
if (!isset($onload))		$onload = '';

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1)
	$connexion = 0;
else
{
	$connexion = 1;
	$nom = $_SESSION['nom'];
	$titre = $_SESSION['titre'];
	$royaume = $_SESSION['royaume'];
}

if (!isset($_SESSION['connexion'])) {
	$_SESSION['connexion'] = 0;
}
?>
