<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

if (!isset($_POST['qtee']))
{

	$creature = $_GET['creature'];
	$nom = $_SESSION['nom'];?>

	<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
	<html>
	<head>
	       <title><?php echo $creature?></title>
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
	$sql = "SELECT att, def, ini, pui, end FROM joueurs_stats WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$att_h = floor($data[0]/4);
	$def_h = floor($data[1]/4);
	$ini_h = floor($data[2]/4);
	$pui_h = floor($data[3]/4);
	$end_h = floor($data[4]/4);

	$sql = "SELECT * FROM joueurs_créatures_id WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_array($req);
	$qtee = $data[$id];

	$sql = "SELECT * FROM creatures WHERE nom = '$creature'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$id = $data[0];
	$type = $data[2];
	$niv = $data[3];
	$batiment = $data[4];
	$image = $data[22];

	/*$sql = "SELECT * FROM creatures_stats WHERE nom = '$creature'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niv = $data[2];*/

	if	($type == "Créature magique")		{$att = $data[11] + $pui_h;}
	else if	(substr($type,0,9) == 'Raciale :')	{$att = $data[11] + max($pui_h, $att_h);}
	else						{$att = $data[11] + $att_h;}

	if	($type == "Créature magique")		{$def = $data[12] + $end_h;}
	else if	(substr($type,0,9) == 'Raciale :')	{$def = $data[12] + max($end_h, $def_h);}
	else						{$def = $data[12] + $def_h;}

	$ini = $data[13] + $ini_h;
	$end = $data[14] + $end_h;
	$pvs = $data[15];
	$min = $data[16];
	$max = $data[17];
	$vol = $data[18];
	$range = $data[19];

	$sql = "SELECT * FROM joueurs_créatures where nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_array($req);
	$qtee = $data[$id];
	mysql_close();


	echo '<h4>'.$creature.'</h4><br>&nbsp;
	<table class="discr100"><tbody>
	<tr>	<td rowspan="12" class="discr100img"><a href="info_batiment.php?batiment='.$batiment.'"><img src="'.$image.'" width="100" height="100" alt="'.$creature.'" border=1></a></td>
		<td>Type :	</td><td>'.$type.'</td></tr>
	<tr>	<td>Niveau :	</td><td>'.$niv.'</td></tr>
	<tr>	<td>Attaque :	</td><td>'.$att.'</td></tr>
	<tr>	<td>Défense :	</td><td>'.$def.'</td></tr>
	<tr>	<td>Initiative :</td><td>'.$ini.'</td></tr>
	<tr>	<td>Endurance :	</td><td>'.$end.'</td></tr>
	<tr>	<td>Vitalité :	</td><td>'.$pvs.'</td></tr>
	<tr>	<td>Dégâts :	</td><td>'.$min.' à '.$max.'</td></tr>';
	if ($vol == 1)		echo "<td colspan='2'><i>Créature volante</i></td></tr>";
	if ($range == 1)	echo "<td colspan='2'><i>Attaque à distance</i></td></tr>";

	echo "</tbody></table>
	<br><strong>Quantité recrutée: $qtee</strong><br><br>
	</td></tr>
	<tr><td colspan='4' class='cadrebottom'></td></tr></tbody></table>
	</body>
	</html>
	";


}
else{

$qtee = $_POST['qtee'];
$creature = $_POST['recrutement'];
$nom = $_SESSION['nom'];

include("connect.php");
$sql = "SELECT * FROM creatures WHERE nom = '$creature'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$id = $data[0];

$sql = "SELECT * FROM joueurs_créatures_id WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
$data = mysql_fetch_array($req);
$dispo = $data[$id];

if ($dispo >= $qtee){
    $sql = "SELECT * FROM joueurs_créatures WHERE nom = '$nom'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
    $data = mysql_fetch_array($req);
    $deja = $data[$id];

    $nouveau_1 = $deja + $qtee;
    $nouveau_2 = $dispo - $qtee;

    $sql = "UPDATE `joueurs_créatures` SET `$id` = '$nouveau_1' WHERE nom ='$nom'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $sql = "UPDATE `joueurs_créatures_id` SET `$id` = '$nouveau_2' WHERE nom ='$nom'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    mysql_close();?>
    
    <!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
    <body onLoad="setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
    style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html><?php
}
else{?>

    <!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
    <body onload="alert('Limite surpassée !'); setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
    style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html><?php
}
}


