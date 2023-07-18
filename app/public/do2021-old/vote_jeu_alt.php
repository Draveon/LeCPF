<?php session_start();

// --- Connexion : Sont mises en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$login = $_SESSION['login'];
$nom = $_SESSION['nom']; ?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Votez pour Destinee-Online sur Jeux-Alternatifs!</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>
<body class="bodypopup" marginheight=0 marginwidth=0>
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc">
	
<?php

include ("connect.php");
include("temps_ecoulement.php");

if ($_SESSION['serveur'] == 1) {
	$req = mysql_query("SELECT time_last_vote FROM joueurs_vote WHERE nom = '".$login."'") 			or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$temps_depuis_last_vote = $temps - $data[0];
	$req = mysql_query("SELECT niveau FROM joueurs_stats WHERE nom = '".$nom."'") 			or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau = $data[0];

	$recompense = $temps_depuis_last_vote >= 1440 ? min(10000, $niveau * 1000) : 0;

	$req = mysql_query("UPDATE joueurs_stats SET argent = argent + ".$recompense." WHERE nom = '".$nom."'") 			or die('Erreur SQL !<br>'.mysql_error());
}

$req = mysql_query("UPDATE joueurs_vote SET time_last_vote = '".$temps."' WHERE nom = '".$login."'") 			or die('Erreur SQL !<br>'.mysql_error());
mysql_close();

?>

<b><br>Merci de voter!<br><br></b>

<meta http-equiv="refresh" content="0; url=http://www.jeux-alternatifs.com/Destinee-online-jeu226_hit-parade_1_1.html">


</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>
<br>


</body>
</html>