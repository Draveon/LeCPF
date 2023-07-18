<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$nom = $_SESSION['nom']; ?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Votre population</title>
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
include("connect.php");
$sql = "SELECT population, population2 FROM joueurs_modificateurs WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pop1 = $puissance = number_format($data[0], 0, ",", " ");
$pop2 = $puissance = number_format($data[1], 0, ",", " ");
mysql_close();?>

<b><br>Civils : <?php echo $pop1 ?> | Prisonniers : <?php echo $pop2 ?><br><br></b>


</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>
<br>


</body>
</html>


