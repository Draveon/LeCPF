<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>Destinée-Online :: Jeu PHP multijoueurs gratuit</title>
    <meta name="description" content="Jeu PHP médiéval fantastique; guerre, gestion, monstres, magie, inventaire, aptitudes, combat.">
    <meta name="keywords"content="php, jeu, m&#233;di&#233;val, destin&#233;e, guerre, gestion, magie, inventaire, aptitude, jeu php, bas&#233; navigateur, combat, destin&#233;e-online, gratuit">
    <meta name="abstract" content="Jeu php à saveur médiévale-fantastique, gratuit.">
    <meta name="author" content="Christian BLAIS">
    <meta name="copyright" content="Destinee-Online - 2005">
    <meta http-equiv="Content-type" content="text/html;charset=iso-8859-1">
    <meta name="language" content="fr">
    <meta http-equiv="Content-Language" content="fr">
    <meta name="robots" content="index, follow">
    <meta name="revisit-after" content="30 days">
    <meta name="reply-to" content="balthazar@destinee-online.com">
    <meta name="identifier-url" content="http://www.destinee-online.com/">
    <meta name="subject" content="Jeu PHP gratuit à saveur médiévale-fantastique">
    <meta name="expires" content="never">
    <meta name="publisher" content="Christian BLAIS">
    <meta name="location" content="Quebec, CANADA">
    <meta name="rating" content="general">
    <meta name="category" content="jeu">
    <meta name="Date-Creation-ddmmyyyy" content="12092005">
    <meta name="DATE-REVISION-ddmmyyyy" content="12092005">
    <meta name="generator" content="notepad">
    
    <link rel="stylesheet" type="text/css" href="gallerystyle.css">
    <link rel="stylesheet" type="text/css" href="fonctions/menu_deroulant.css">
    <link rel="stylesheet" type="text/css" href="classement.css">
    <link rel="stylesheet" type="text/css" href="style_divers.css">

    <script type="text/javascript" src="motiongallery.js"></script>    
    <script type="text/javascript" src="fonctions/menu_deroulant.js"></script>
    <script type="text/javascript" src="fonctions/changement_image.js"></script>
    <script type="text/javascript" src="fonctions/nouvelle_fenetre.js"></script>
    <script type="text/javascript" src="fonctions/cache_liens.js"></script>
    <script type="text/javascript" src="fonctions/infobulle.js"></script>
    
    <link rel="shortcut icon" href="http://www.destinee-online.com/images/favicon.ico" />
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/arriereplan.gif);">
<div align="center">
<table style="text-align: center; width: 1003px;" border="0" cellspacing="0" cellpadding="0">
       <tbody>
              <tr>
                  <td style="height: 170px; vertical-align: center; text-align: center;">
                      <a href="index.php">
                      <img src="../images/logo.jpg" width="100%" height="170" alt="Destinée-Online.com" border=0>
                      </a>
                  </td>
              </tr>
       </tbody>
</table>

<?
function entete1($x){
    if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
        $connexion = 0;
    }
    else {
        $connexion = 1;
        $nom = $_SESSION['nom'];
        $titre = $_SESSION['titre'];
        $royaume = $_SESSION['royaume'];
        $temps = floor(time()/60);
        include("connect.php");
        $sql = "UPDATE `joueurs_connexions` SET `connexion_dernière` = '$temps' WHERE nom = '$nom'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        mysql_close();
    }
    ?>
    <div align="center"><table style="text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td style="vertical-align: bottom; background-image: URL(/images/bout.gif);"></td>
    <td style="vertical-align: center; text-align: left; height: 100px; width: 350px; background-image: URL(/images/fond_gauche.gif);">
    <span style="font-family: copperplate gothic light;"><font size="+3">
    <?if ($connexion == 1 ){
        echo "$nom</font>,</span><br><font size='+2'><span style='font-family: papyrus;'>";
        echo "$titre $royaume </span></font><br>";
    }
    else{
        echo "Bienvenue ! </font></span><br><font size='+2'><span style='font-family: papyrus;'>";
        echo "Destinee-Online.com </span></font><br>";
    }?>
    </td><td style="vertical-align: center; text-align: center; height: 100px; width: 350px; background-image: URL(/images/fond_droit.gif);">
    <span style="font-family: Garamond;"><font size="+3">
    ~ <strong><? echo $x ?></strong> ~
    </span></font>
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
    background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
<?}
function entete2(){?>
    <table style="width: 720px; text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br><div align="center">
    <?
}

function entete($x){
    if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
        $connexion = 0;
    }
    else {
        $connexion = 1;
        $nom = $_SESSION['nom'];
        $titre = $_SESSION['titre'];
        $royaume = $_SESSION['royaume'];
    
        include("connect.php");
        
        include("classement_cache.php");
	if (strlen($jmasques)>0)
		$jmasques = 'AND '.$jmasques;

        $sql = "SELECT * FROM joueurs_stats WHERE nom = '$nom'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_row($req);
        
        $sql = "SELECT nom FROM joueurs_stats WHERE puissance > '$data[3]' $jmasques";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $qtee = mysql_num_rows($req);
        $rang = $qtee+1;

        $niveau    = $data[2];
        $puissance = number_format($data[3], 0, ",", " ");
        $exp       = number_format($data[4], 0, ",", " ");
        $but       = number_format($data[5], 0, ",", " ");
        $mana      = number_format($data[12],0, ",", " ");
        $argent    = number_format($data[15],0, ",", " ");
        $rang      = number_format($rang,    0, ",", " ");
        
        mysql_close();
    }
    ?>
    <div align="center"><table style="text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td style="vertical-align: bottom; background-image: URL(/images/bout.gif);"></td>
    <td style="vertical-align: center; text-align: left; height: 100px; width: 350px; background-image: URL(/images/fond_gauche.gif);">
    <span style="font-family: copperplate gothic light;"><font size="+3">
    <?if ($connexion == 1 ){
        echo "$nom</font>,</span><br><font size='+2'><span style='font-family: papyrus;'>";
        echo "$titre $royaume </span></font><br>";
    }
    else{
        echo "Bienvenue ! </font></span><br><font size='+2'><span style='font-family: papyrus;'>";
        echo "Destinee-Online.com </span></font><br>";
    }?>
    </td><td style="vertical-align: center; text-align: center; height: 100px; width: 350px; background-image: URL(/images/fond_droit.gif);">
    <span style="font-family: Garamond;"><font size="+3">
    ~ <strong><? echo $x ?></strong> ~
    </span></font>
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
    background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
    <?if ($connexion == 1){
        echo "<strong>Niveau :</strong> $niveau | <strong>Puissance :</strong> $puissance | <strong>Xp :</strong> $exp / $but | <strong>Pièces d'or :</strong> $argent | <strong>Mana :</strong> $mana | <strong>Rang :</strong> $rang";
    }
    else{
        echo "<br>";
    }?>
    <table style="width: 720px; text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br><div align="center">
    <?
}

function entete_index($x){
    include("connect.php");
    $sql = "SELECT * FROM joueurs_stats";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $joueurs = mysql_num_rows($req);
    mysql_close();
    if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
        $connexion = 0;
    }
    else {
        $connexion = 1;
        $nom = $_SESSION['nom'];
        $titre = $_SESSION['titre'];
        $royaume = $_SESSION['royaume'];

        include("connect.php");
        $sql = "SELECT * FROM joueurs_stats WHERE nom = '$nom'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_row($req);
        mysql_close();

        $niveau = $data[2];
        $puissance = number_format($data[3], 0, ",", " ");
        $exp = number_format($data[4], 0, ",", " ");
        $mana = number_format($data[12], 0, ",", " ");
        $argent = number_format($data[15], 0, ",", " ");
    }?>
    <div align="center"><form method="post" action="principale.php"><table style="text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td style="vertical-align: bottom; background-image: URL(/images/bout.gif);"></td>
    <td style="vertical-align: center; text-align: left; height: 100px; width: 350px; background-image: URL(/images/fond_gauche.gif);">
    <span style="font-family: copperplate gothic light;"><font size="+3">
    <?if ($connexion == 1){
        echo "$nom</font>,</span><br><font size='+2'><span style='font-family: papyrus;'>";
        echo "$titre $royaume </span></font><br>";
    }
    else{
        echo "Bienvenue ! </font></span><br><font size='+2'><span style='font-family: papyrus;'>";
        echo "Destinee-Online.com </span></font><br>";
    }?>
    </td><td style="vertical-align: center; text-align: center; height: 100px; width: 350px; background-image: URL(/images/fond_droit.gif);">
    <span style="font-family: Garamond;"><font size="+3">
    ~ <strong><? echo $x ?></strong> ~
    </span></font>
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
    background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table><?

    if ($connexion == 0){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Visiteur</td>
       <td style="text-align: right;">
       Héros :&nbsp; <input type="text" name="nom" size="10">&nbsp;&nbsp;&nbsp;
       Mot de passe :&nbsp; <input type="password" name="password" size="10">&nbsp;&nbsp;&nbsp;
       <select name="serveur" style="width: 100px;">
       <option selected value="1">Serveur - 1</option>
       <option value="2">Serveur - 2</option>
       <option value="3">Serveur - RP</option>
       </select>
       <input type="submit" value=" >> ">
       </td></tr></tbody></table>
    <?}
    if ($connexion == 1){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Connecté</td></tr></tbody></table>
    <?}?>

    <table style="width: 720px; text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br><div align="center">
    <?
}

function changement($x){?>
    <br></td></tr></tbody></table>
    </td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
    background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
    </td></tr><tr>
    <td colspan="1" style="vertical-align: bottom; text-align: center; height: 5%;">
    </tr></td></tbody></table>
    <br>
    <div align="center"><table style="width: 720px; text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br><div align="center">
    <table style="width: 630px; text-align: left;" border="0"><tbody><tr><td>
    <strong><span style='font-family: papyrus;'><? echo $x; ?></span></strong><br><br><?
}

function ddate($x){
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