<?php


if (!isset($head_title))	$head_title = 'Destinee-Online.com : jeu medieval multijoueur gratuit en ligne';
else				$head_title .= ' : Destinee-Online.com - jeu medieval multijoueur gratuit en ligne';
if (!isset($head_keywords))	$head_keywords = 'jeu en ligne, médiéval, destinée, magie, jeu multijoueur, jeu php, jeu gratuit';
else				$head_keywords .= ', jeu, gratuit, medieval, php';

if (!isset($meta_supp))		$meta_supp = '';
if (!isset($onload))		$onload = '';

echo '
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>'.$head_title.'</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne (MMORPG), à l\'ambiance médiévale-fantastique">
	<meta name="keywords"content="'.$head_keywords.'">
	<meta name="abstract" content="Jeu php à saveur médiévale-fantastique, gratuit">
	<meta name="author" content="Camille BLANC">
	<meta name="copyright" content="Destinee-Online - 2008">
	<meta name="language" content="fr">
	<meta http-equiv="Content-type" content="text/html;">
	<meta charset="utf-8">
	<meta http-equiv="Content-Language" content="fr">
	<meta name="robots" content="index, follow">
	<meta name="revisit-after" content="7 days">
	<meta name="identifier-url" content="http://www.destinee-online.com/">
	<meta name="subject" content="Jeu par navigateur gratuit à saveur médiévale-fantastique">
	<meta name="expires" content="never">
	<meta name="publisher" content="Camille BLANC">
	<meta name="location" content="FRANCE">
	<meta name="rating" content="general">
	<meta name="category" content="jeu">
	<meta name="Date-Creation-ddmmyyyy" content="12092005">
	<meta name="DATE-REVISION-ddmmyyyy" content="28082016">
	<meta name="generator" content="notepad">
	<meta name="viewport" content="width=device-width, initial-scale=0.7">

	<link rel="icon" type="image/png" href="images/icones/favicondo.png" />
	<!--[if IE]><link rel="shortcut icon" type="image/x-icon" href="images/icones/favicondo.png" /><![endif]-->
	<link rel="shortcut icon" type="image/png" href="images/icones/favicondo.png">
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





	'.$meta_supp.'


</head>


';
echo '<body '.$onload.'>';




include('overall_button_footer.php');
echo '<div id="top" style="text-align: center;">
<div class="page main-grid">

<div id="inline-block">
';
echo '
<div id="logo logo-grid">
	<div id="bannimg"><a href="http://www.destinee-online.com/index.php"><img class="bann" src="./images/destinee-bann.jpg" width="1003" height="100" alt="Destinee-Online.com" border=0></a></div>
	<div id="bannlinks">
		<div class="infos_bann" ><a href="administration.php">L\'équipe</a></div>
		<!-- <div class="infos_bann"><a href="http://do-roleplay.bbfr.net/">Forum RP</a></div> -->
		<div class="infos_bann"><a href="/forum">Forum</a></div>
		<div class="infos_bann"><a href="index.php">Accueil</a></div>
		<div class="infos_bann">
			<ul class="container-fluid" style="list-style: none; padding: 0 0;">
				<li class="col-xs-1 col-sm-1 col-md-1">
					<a target="_blank" href="https://twitter.com/destinee_online"><span  class="social-buttons" style="font-size: 25px;"><i class="fab fa-twitter-square"></i></span></a>
				</li>
				<li class="col-xs-1 col-sm-1 col-md-1">
					<a target="_blank" href="https://www.facebook.com/destineeonline/"><span class="social-buttons" style="font-size: 25px;"><i class="fab fa-facebook-square"></i></span></a>
				</li>
			</ul>
		</div>
	</div>

</div>


';




function entete1($x)
{
	if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1)
		$connexion = 0;
	else
	{
		$connexion = 1;
		$nom = $_SESSION['nom'];
		$titre = $_SESSION['titre'];
		$royaume = $_SESSION['royaume'];
	}

	echo '
	<table class="entetetableindex nom-grid"><tbody>
	<tr>	<td class=""></td>
		<td class="text-left">';
	if ($connexion == 1)	echo '	<span class="nomJoueur">'.$nom.'</span>,<br>
					<span class="nomRoyaume">'.$titre.' '.$royaume.'</span>';
	else			echo '	<span class="nomJoueur">Bienvenue !</span><br>
					<span class="nomRoyaume"></span>';
	echo '		</td>
		<td class="nomPage"> ~ <h1>'.$x.'</h1> ~ </td>
		<td class="" rowspan="2"></td></tr>
	<tr>	<td class="cadrebottom"   colspan="4"></td></tr>
</tbody></table>';
}

function entete2()
{
	echo '<table class="cadretablenormal normal-grid"><tbody>
	<tr>	<td class="cadretopleft"  colspan="3"></td>
		<td class="cadretopright" rowspan="2"></td></tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td class="cadrecontenu"  colspan="2">
			<div class="col-md-12" align="center">';
}

function entete ($x)
{
	entete_index($x);
}

function entete_index($x)
{

	if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] != 1)
		$connexion_compte = 0;
	else
	{
		$connexion_compte = 1;
		if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1)
			$connexion = 0;
		else {
			$connexion = 1;
			$nom = $_SESSION['nom'];
			$titre = $_SESSION['titre'];
			$royaume = $_SESSION['royaume'];

			include("connect.php");
			include("classement_cache.php");
			if (strlen($jmasques)>0)
				$jmasques = 'AND '.$jmasques;

			$temps = floor(time()/60);
			$sql = "UPDATE `joueurs_connexions` SET `connexion_dernière` = '$temps' WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

			$sql = "SELECT niveau, puissance, xp, mana, argent, but, score FROM joueurs_stats WHERE nom = '$nom'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);

			$sql = "SELECT COUNT(id) FROM joueurs_infos WHERE score > '$data[6]'";
	        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	        $qtee = mysql_fetch_row($req);
	        $rang = $qtee[0]+1;

	        $niveau		= $data[0];
	        $puissance	= number_format($data[1], 0, ",", " ");
	        $exp		= number_format($data[2], 0, ",", " ");
	        $but		= number_format($data[5], 0, ",", " ");
	        $mana 		= number_format($data[3], 0, ",", " ");
	        $argent 	= number_format($data[4], 0, ",", " ");
	        $rang		= number_format($rang,    0, ",", " ");

			mysql_close();
		}
	}

	entete1($x);

	if ($connexion_compte == 0)
	{
		if($_GET['e_log'] == '1')
		{
		echo '
		<div class="lralign" id="formconnect">

			<span style="font-size:10px;font-weight:bold;" id="pasencoreinscrit">

				Votre IP est bloquée car vous avez fait 3 mauvaises identifications en moins de 5 minutes. Veuillez patienter 20 minutes avant de retenter de vous connecter.
			</span>

		</div>

		</form>';
		}
		else
		{
		echo '
		<form method="post" action="selection_perso.php" style="height:50px; padding:0px; margin:0px; border:0px;">
		<div class="" id="formconnect" style="display: flex; flex-direction: row-reverse; position: relative;">
			<div class="lralignr">

					Héros : <input type="text" name="login" size="10">&nbsp;&nbsp;&nbsp;

				Mot de passe : <input type="password" name="password" size="10">&nbsp;&nbsp;
				<select name="serveur" style="width: 100px;">
					<option selected value="1">Serveur - 1</option>
					<option value="2">Serveur - 2</option>
				</select>
				<button class="btn btn-do" type="submit" style="height:22px; position:relative; top:1px;"> Se connecter </button>
				</div>
			<div class="lralignl" id="pasencoreinscrit" style="position: absolute; top: 10px; left: 0;">
				<a href="inscription.php" class="rollovercolor" style="color: white; text-shadow: 0 0 8px cyan;">Pas encore inscrit? Cliquez ici!</a></div>
		</div>
		</form>'."\n\n";
		}
	}
	else if ($connexion == 0)
	{
		echo'
				<form  method="post" action="selection_perso.php" style="height:22px; padding:0px; margin:0px; border:0px;">

				<div class="lralign" id="formconnect">

					<div class="lralignr" style="width:500px;white-space:nowrap;">

						<b>Compte connecté :</b> '.$_SESSION['login'].'

						<input type="submit" value="Entrer" style="height:20px; position:relative; top:1px;">

						<a href="deconnexion.php">Déconnexion</a>

					</div>

				</div>
				</form>'."\n\n";
	}
	else
	{
		echo'
				<p class="statsHero"><strong>Niveau :</strong> '.$niveau.' | <strong>Puissance :</strong> '.$puissance.' | <strong>Xp :</strong> '.$exp.' / '.$but.' | <strong>Pièces d\'or :</strong> '.$argent.' | <strong>Mana :</strong> '.$mana.' | <strong>Rang :</strong> '.$rang.' </p>';
	}

	echo '<div class="cadretablenormal">';

	entete2();
}

function changement($title)
{
	return '<br></td></tr></tbody></table>' . cadre_fin() . cadre_spacer() . cadre_debut() . '<table class="localtable963"><tbody><tr><td>' . subtitle_papyrus($title);
}



function cadre_debut()
{
	return '<table class="cadretablenormal"><tbody>
	<tr>	<td class="cadretopleft"  colspan="3"></td>
		<td class="cadretopright" rowspan="2"></td></tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td class="cadrecontenu"  colspan="2">
			<div class="col-md-12" align="center">';
}
function cadre_fin()
{
	return "\n".'		</div></td></tr>
	<tr>	<td class="cadrebottom" colspan="4"></td></tr>
</tbody></table>'."\n\n";
}
function cadre_spacer()
{
	return '<div class="cadrespacer"></div>'."\n\n";
}



function subtitle_papyrus($title)
{
	return '<h2>'.$title.'</h2>';
}

function ddate($x)
{
	$h = gmdate("H") + $x;
	if ($h > 23){
		$h = $h - 24;
		if ($h < 10){
			$h = "0$h";
		}
	}
	$i = gmdate("i");
	$heure = "$h:$i";
	return $heure;
}



?>
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script> -->
