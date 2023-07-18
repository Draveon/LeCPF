<? session_start();

$serveur = $_GET['serveur'];

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Gérance des candidats au palatinat</title>
</head>
<body>

<?

include("../administration/choix_serveurs.php");

$sql = "SELECT * FROM candidat_palatinat WHERE ACCEPT = '0' ORDER BY ID ";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nblignes = (mysql_num_rows($req));
$p = -1;
echo '<center>SERVEUR '.$serveur.'</center>';
/* affichage de l'en-tete du tableau HTML avec les noms des champs */
echo '<div align="center"><table style="text-align: left; width: 90%;" border="0" cellspacing="2" cellpadding="0"><tr>';
?>
<form method="post" action="candidat_2.php?serveur=<? echo $serveur ?>">
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Accepter</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Refuser</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Nom</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Discours</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Province</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Orthographe</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Texte Vide ou Trop Court</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Hors Contexte</td>
</tr>

<?

for($i=1; $i <= $nblignes; $i++) {
    $data = mysql_fetch_array($req);
    $candidat = $data['NOM'];
	$discours = $data['DISCOURS'];
	$province = $data['PROVINCE'];

    $s = "nom".$i;
	$d = "discours".$i;
	$r1 = "refus1".$i;
	$r2 = "refus2".$i;
	$r3	= "refus3".$i;
	
    echo "<tr><td><div align='center'><input type='checkbox' name='$i' value='$candidat'></div></td>";
    echo "<td><div align='center'><input type='checkbox' name='$p' value='$candidat'></div></td>";
    echo "<td><input type='text' name='$s' value='$candidat' size='20'></td>";
	echo "<td><textarea cols='20' rows='5' name='$d'>$discours</textarea></td>";
	echo "<td><input type='text' value='$province'></td>";
	echo "<td><div align='center'><input type='checkbox' name='$r1' value='$candidat'></div></td>";
	echo "<td><div align='center'><input type='checkbox' name='$r2' value='$candidat'></div></td>";
	echo "<td><div align='center'><input type='checkbox' name='$r3' value='$candidat'></div></td></tr>";

    $p--;
}
mysql_close();
echo "</table><input type='hidden' name='total' value='$nblignes'>";

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


echo'<br><br><table align="center"><tr><td><a href="candidat.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="candidat.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
