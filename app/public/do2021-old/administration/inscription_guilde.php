<? session_start();
?>
<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>Gérance des inscriptions</title>
	<meta http-equiv="Content-type" content="text/html; charset=iso-8859-1">
</head>
<body>
<?
include ('gestionauthentifications.php');



$_SESSION['serveur'] = $_GET['serveur'];

include("connect.php");
$sql = "SELECT * FROM guildes_creation ORDER BY id";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nblignes = (mysql_num_rows($req));
$p = -1;

/* affichage de l'en-tete du tableau HTML avec les noms des champs */
echo '<div align="center"><table style="text-align: left; width: 100%;" border="0" cellspacing="2" cellpadding="0"><tr>';
?>
<form method="post" action="inscription_guildes2.php">
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Accepter</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Refuser</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Créateur</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Armada</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Objectif</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Description</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Règles</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Image</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Province</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Forum</td>

<?

for($i=1; $i <= $nblignes; $i++) {
    $data = mysql_fetch_row($req);
    $createur = $data[1];
    $armada = $data[2];
    $objectif = $data[3];
    $description = $data[4];
    $regle = $data[5];
    $image = $data[6];
    $province = $data[7];
    $sitew = $data[8];
	
	$n = "nom".$i;
	$o = "obj".$i;
	$d = "des".$i;
	$r = "reg".$i;
	$im = "ima".$i;
	
	
    ?> <tr onMouseover="this.bgColor='#FFFFE0'" onMouseout="this.bgColor=''"> <?
    echo "<td><div align='center'><input type='checkbox' name='$i' value='$createur'></div></td>";
    echo "<td><div align='center'><input type='checkbox' name='$p' value='$createur'></div></td>";
    echo "<td>$createur</td>";
    echo "<td><input type='text' name='$n' value='$armada'></td>";
    echo "<td><textarea name='$o' cols='50' rows='10'>$objectif</textarea></td>";
    echo "<td><textarea name='$d' cols='50' rows='10'>$description</textarea></td>";
    echo "<td><textarea name='$r' cols='50' rows='10'>$regle</textarea></td>";
    echo "<td><img src='$image' width='100px' height='100px'><input type='text' name='$im' value='$image'></td>";
    echo "<td>$province</td>";
    echo '<td><a href="'.$sitew.'" target="_blank">'.$sitew.'</a></td>';
    echo "</tr>";
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


echo '<br><br><table align="center"><tr><td><a href="inscription_guilde.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="inscription_guilde.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<a href="administration.php">Retour à l\'administration</a></div>';

?>

</body>
</html>
