<? session_start();
?>
<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
<title>Gestion des Provinces</title>
</head>
<body>
<?
$serveur = 1;
if (isset($_GET['serveur']))
	$serveur = $_GET['serveur'];
include("../administration/choix_serveurs.php");


// traitement des données: taxes
$sql = "SELECT Province, Palatin, taxes FROM provinces_politiques";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
while ( $data = mysql_fetch_row($req) )
{
	$valueold = $data[2];
	$valuenew = -1;
	if ( (isset($_POST[$data[0]])) && (is_numeric($_POST[$data[0]])) )
		$valuenew = $_POST[$data[0]];
	if (($valuenew != $valueold) && ($valuenew > -1))
	{
		$valuenew = min(100, max(0, $valuenew));
		$sql2 = "UPDATE provinces_politiques SET taxes = '$valuenew' WHERE Province = '$data[0]' LIMIT 1";
		echo $sql2."<br>\n";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.mysql_error());
	}
}


// formulaire: taxes
echo '<center>
	<form method="post" action="provinces.php?serveur='.$serveur.'">
	<input type="hidden" name="serveur" value="'.$serveur.'">
	<table border="0" align="center">
	<tr>	<td>Province</td>	<td>Palatin</td>	<td>Taxes</td>	</tr>'."\n";
$sql = "SELECT Province, Palatin, taxes FROM provinces_politiques";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
	echo '	<tr>	<td>'.$data[0].'</td>	<td>'.$data[1].'</td>	<td><input type="text" name="'.$data[0].'" value="'.$data[2].'" size="3"></td>	</tr>'."\n";	
echo '</table>
	<input type="submit" value="Valider">
	</form>
	</center>'."\n\n";



mysql_close();
if($serveur == 1)
{
	$serveurPre = 3;
	$serveurSui = 2;
}
if($serveur == 2)
{
	$serveurPre = 1;
	$serveurSui = 3;
}
if($serveur == 3)
{
	$serveurPre = 2;
	$serveurSui = 1;
}
echo'<br><br><table align="center"><tr><td><a href="provinces.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="provinces.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
