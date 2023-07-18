<? session_start();

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
       <title>Taverne</title>
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

<?
include("connect.php");
$sql = "SELECT message, date_crea FROM taverne ORDER BY id DESC LIMIT 3";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_row($req)) {
	$date_msg = "Le ".date('d-m', strtotime($data[1])).":";
	echo "<b><br>".$date_msg."</b> ".$data[0]."<br><br></b>";
}

mysql_close();?>


</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr></tbody></table>
<br>


</body>
</html>


