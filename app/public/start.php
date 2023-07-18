<?php
if (!isset($head_title)) {
    $head_title = 'Destinee-Online.com : jeu medieval multijoueur gratuit en ligne';
} else {
    $head_title .= ' : Destinee-Online.com - jeu medieval multijoueur gratuit en ligne';
}

if (!isset($head_keywords)) {
    $head_keywords = 'jeu en ligne, médiéval, destinée, magie, jeu multijoueur, jeu php, jeu gratuit';
} else {
    $head_keywords .= ', jeu, gratuit, medieval, php';
}

$meta_supp = isset($meta_supp) ? $meta_supp : '';
$onload = isset($onload) ? $onload : '';

echo '
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Language" content="fr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>' . $head_title . '</title>
    <meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne (MMORPG), à l\'ambiance médiévale-fantastique">
    <meta name="keywords" content="' . $head_keywords . '">
    <meta name="author" content="Draveon">
    <link rel="icon" type="image/png" href="images/icones/favicondo.png">
    <!--[if IE]><link rel="shortcut icon" type="image/x-icon" href="images/icones/favicondo.png" /><![endif]-->
    <link rel="manifest" href="manifest.json">
    <link href="https://fonts.googleapis.com/css?family=Eater&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style_divers.css?1">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="fonctions/menu_deroulant.css">
    <script type="text/javascript" src="selection.js"></script>
    <script type="text/javascript" src="configuration.js"></script>
    <script type="text/javascript" src="fonctions/cache_liens.js"></script>
    <script type="text/javascript" src="fonctions/changement_image.js"></script>
    <script type="text/javascript" src="fonctions/faq.js"></script>
    <script type="text/javascript" src="fonctions/infobulle.js"></script>
    <script type="text/javascript" src="fonctions/menu_deroulant.js"></script>
    <script type="text/javascript" src="fonctions/nouvelle_fenetre.js"></script>
    <script type="text/javascript" src="fonctions/affichecache.js"></script>
    <script src="https://cloud.tinymce.com/5/tinymce.min.js?apiKey=gi7kl2drspin2azxln45jx7kdatrph4q7ye5ejh0s94zc9i7"></script>
    <script src="tinymce_fr.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    ' . $meta_supp . '
</head>
<body ' . $onload . '>
';
