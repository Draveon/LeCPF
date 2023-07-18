<?

if (!isset($head_title))	$head_title = 'Destinee-Online.com : jeu medieval multijoueur gratuit en ligne';
else				$head_title .= ' : Destinee-Online.com - jeu medieval multijoueur gratuit en ligne';
if (!isset($head_keywords))	$head_keywords = 'jeu en ligne, médiéval, fantastique, fantasy, destinée, magie, jeu multijoueur, jeu gratuit';
else				$head_keywords .= ', jeu, gratuit, medieval fantastique, medieval fantasy';

if (!isset($meta_supp))		$meta_supp = '';
if (!isset($onload))		$onload = '';

echo '
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<title>'.$head_title.'</title>
	<meta name="description" content="Destinée-online est un jeu gratuit multijoueur en ligne (MMORPG), à l\'ambiance médiévale-fantastique">
	<meta name="keywords"content="'.$head_keywords.'">
	<meta name="abstract" content="Jeu multijoueur à saveur médiévale-fantastique 100% gratuit">
	<meta name="author" content="Camille BLANC">
	<meta name="copyright" content="Destinee-Online - 2008">
	<meta name="language" content="fr">
	<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1">
	<meta http-equiv="Content-Language" content="fr">
	<meta name="robots" content="index, follow">
	<meta name="revisit-after" content="7 days">
	<meta name="identifier-url" content="http://www.destinee-online.com/">
	<meta name="subject" content="Jeu multijoueur à saveur médiévale-fantastique 100% gratuit">
	<meta name="expires" content="never">
	<meta name="publisher" content="Camille BLANC">
	<meta name="location" content="FRANCE">
	<meta name="rating" content="general">
	<meta name="category" content="jeu">
	<meta name="Date-Creation-ddmmyyyy" content="12092005">
	<meta name="DATE-REVISION-ddmmyyyy" content="28082016">
	<meta name="generator" content="notepad">

	<link rel="icon" type="image/png" href="images/icones/favicondo.png" />
	<!--[if IE]><link rel="shortcut icon" type="image/x-icon" href="images/icones/favicondo.png" /><![endif]-->
	<link rel="shortcut icon" type="image/png" href="images/icones/favicondo.png">

	<link rel="stylesheet" type="text/css" href="fonctions/menu_deroulant.css">
	<link rel="stylesheet" type="text/css" href="style_divers.css">
	<link rel="stylesheet" type="text/css" href="chatbox.css">
	

	<script type="text/javascript" src="selection.js"></script>
	<script type="text/javascript" src="configuration.js"></script>    
	<script type="text/javascript" src="fonctions/cache_liens.js"></script>
	<script type="text/javascript" src="fonctions/changement_image.js"></script>
	<script type="text/javascript" src="fonctions/faq.js"></script>
	<script type="text/javascript" src="fonctions/infobulle.js"></script>
	<script type="text/javascript" src="fonctions/menu_deroulant.js"></script>
	<script type="text/javascript" src="fonctions/nouvelle_fenetre.js"></script>
	<script type="text/javascript" src="fonctions/affichecache.js"></script>
	<script type="text/javascript" src="fonctions/jquery.js"></script>
	<script type="text/javascript" src="fonctions/jquery_chatbox.js"></script>
	'.$meta_supp.'


</head>
';
echo '<body '.$onload.'>';

include 'overall_button_footer.php';
echo '<div style="text-align: center;">
<div class="page">
';
echo '<div id="logo">
	<div id="bannimg"><a href="http://www.destinee-online.com/index.php"><img src="./images/banniere_85px.jpg" width="1003" height="85" alt="Destinee-Online.com" border=0></a></div>
	<div id="bannlinks">
		<div id="bannlinksforum" ><a href="forum/" title="Forum"></a></div>
		<div id="bannlinksadmin" ><a href="administration.php"></a></div>
		<div id="bannlinkscredit"><a href="credits.php"></a></div>
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
	<table class="entetetableindex"><tbody>
	<tr>	<td class="entetetopleft"></td>
		<td class="entetetopcenter">';
	if ($connexion == 1)	echo '	<span class="nomJoueur">'.$nom.'</span>,<br>
					<span class="nomRoyaume">'.$titre.' '.$royaume.'</span>';
	else			echo '	<span class="nomJoueur">Bienvenue !</span><br>
					<span class="nomRoyaume">Destinee-Online.com</span>';
	echo '		</td>
		<td class="entetetopright"> ~ <h1>'.$x.'</h1> ~ </td>
		<td class="cadretopright" rowspan="2"></td></tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td class="cadrecontenu"  colspan="2">&nbsp;</td></tr>
	<tr>	<td class="cadrebottom"   colspan="4"></td></tr>
</tbody></table>'."\n\n";
}

function entete2()
{
	echo '<table class="cadretablenormal"><tbody>
	<tr>	<td class="cadretopleft"  colspan="3"></td>
		<td class="cadretopright" rowspan="2"></td></tr>
	<tr>	<td class="cadremiddleleft"></td>
		<td class="cadrecontenu"  colspan="2">
			<br><div align="center">'."\n\n";
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
		<form method="post" action="selection_perso.php" style="height:22px; padding:0px; margin:0px; border:0px;">
		<div class="lralign" id="formconnect">
			<div class="lralignr" style="width:500px;white-space:nowrap;">
				<a href="#" class="info" onmouseover="afficheinfobulle(\'infologin\');">
					Héros : <input type="text" name="login" size="10">&nbsp;&nbsp;&nbsp;
					<span id="infologin" class="tooltip">Nom ou email associé au compte</span></a>
				Mot de passe : <input type="password" name="password" size="10">&nbsp;&nbsp;
				<select name="serveur" style="width: 100px;">
					<option selected value="1">Serveur - 1</option>
					<option value="2">Serveur - 2</option>
				</select>
				<input type="submit" value=" >> " style="height:22px; position:relative; top:1px;">
				</div>
			<div class="lralignl" id="pasencoreinscrit">
				<a href="inscription.php" class="rollovercolor">Pas encore inscrit? Cliquez ici!</a></div>
		</div>
		</form>'."\n\n";
		}
	}
	else if ($connexion == 0)
	{
		echo'
				<form method="post" action="selection_perso.php" style="height:22px; padding:0px; margin:0px; border:0px;">
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
		echo'	<div class="calign">
				<b>Niveau :</b> '.$niveau.' | <b>Puissance :</b> '.$puissance.' | <b>Xp :</b> '.$exp.' / '.$but.' | <b>Pièces d\'or :</b> '.$argent.' | <b>Mana :</b> '.$mana.' | <b>Rang :</b> '.$rang.'
			</div>'."\n\n";
	}
	
	echo '<div class="cadretablenormal">'."\n";
	
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
			<br><div align="center">'."\n\n";
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
