<? session_start();

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Gérance des BG(andouille de Zhao que je suis)</title>
</head>
<body>

<?
$serveur = 3;
include("../administration/choix_serveurs.php");
if (isset($_POST['debut'])){
	$debut = $_POST['debut'];
}
else {
	$debut = 0;
}
$nbr = 20;
if(isset($_POST['check']))
{
	for($i=1; $i <= $nbr; $i++) 
	{
		$s = "nom".$i;
		$d = "desc".$i;
		
		$desc = $_POST[$d];
		$nom = $_POST[$s];
	
		$sql = "UPDATE joueurs_infos SET description = '$desc' WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}		

}
/* affichage de l'en-tete du tableau HTML avec les noms des champs */
echo '<div align="center"><table style="text-align: left; width: 90%;" border="0" cellspacing="2" cellpadding="0"><tr>';

?>
<form method="post" action="bg.php">

<?

    $sql = "SELECT * FROM joueurs_infos LIMIT $debut, $nbr";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
for($i=1; $i <= $nbr; $i++) {

    $data = mysql_fetch_row($req);
	
	$nom = $data[1];
	$desc = $data[7];
	
    $s = "nom".$i;
	$d = "desc".$i;
	
    echo "<td><input type='text' name='$s' value='$nom' size='20'></td></tr>";
	echo "<tr><td><textarea cols='150' rows='10' name='$d'>$desc</textarea></td>";
    
	echo "</tr>";
    $p--;
}
mysql_close();
$debut = $debut + $nbr;
echo "</table><input type='hidden' name='debut' value='$debut'>";

echo'<br><br><input type="submit" name="check" value="- Suivant -">
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
