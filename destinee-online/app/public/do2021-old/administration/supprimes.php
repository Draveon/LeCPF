<? session_start();

$serveur = $_GET['serveur'];

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
<title>Destinée-online: comptes supprimés</title>
</head>
<body>
<table width="800" border="0" align="center">
<?

include("../administration/choix_serveurs.php");

$sql = "SELECT * FROM joueurs_supprimes WHERE critique != '' ORDER BY id DESC";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_assoc($req))
{
	$nom	= $data['nom'];
	$race	= $data['race'];
	$classe	= $data['classe'];
	$niveau	= $data['niveau'];
	$critiqu= $data['critique'];
	$supp	= $data['suppression'];
	echo '<tr><td width="200" style="vetical-align: top;"><b>'.$nom.'</b><br>'.$race.', '.$classe.', lvl '.$niveau.'</td><td style="vetical-align: top;">'.$critiqu.'</td></tr>'."\n";
}

mysql_close();
echo "</table>";

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

echo '</table>';

echo'<br><br><table align="center"><tr><td><a href="supprimes.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="supprimes.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
