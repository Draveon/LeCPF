<? session_start();

$serveur = $_GET['serveur'];

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
<title>Gérance des inscriptions</title>
</head>
<body>

<?

$emailmulti = 'BGCOLOR="lightblue"';
$emaildoubl = 'BGCOLOR="#FFDDDD"';
$ipmulti    = 'style="color:#0000CC;"';
$ipdoubl    = 'style="color:#FF0000;"';

echo "<table align='center'>
	<tr><td $emailmulti>multi email		</td><td $ipmulti>multi ip</td>
	<tr><td $emaildoubl>doublon email	</td><td $ipdoubl>doublon ip</td>
	</table><br>
";



include("../administration/choix_serveurs.php");

$sql = "SELECT * FROM joueurs_inscription ORDER BY id";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nblignes = (mysql_num_rows($req));
$p = -1;
echo '<center>SERVEUR '.$serveur.'</center>';
/* affichage de l'en-tete du tableau HTML avec les noms des champs */
echo '<div align="center"><table style="text-align: left; width: 90%;" border="0" cellspacing="2" cellpadding="0"><tr>';
?>
<form method="post" action="inscription_2.php?serveur=<? echo $serveur ?>">
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
<span style="font-family: Book Antiqua;"><div align="center">Royaume</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Password</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">E-mail</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Ip</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Race</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Classe</td>
<td style="vertical-align: top; background-color: #002450;">
<span style="color: rgb(255, 255, 255);">
<span style="font-family: Book Antiqua;"><div align="center">Dieu</td>


<?
if ($serveur == 3){
	echo '
		<td style="vertical-align: top; background-color: #002450;">
		<span style="color: rgb(255, 255, 255);">
		<span style="font-family: Book Antiqua;"><div align="center">Desc</td>
	';
}
?>

</tr>

<?

for($i=1; $i <= $nblignes; $i++)
{
	$data = mysql_fetch_row($req);
	$joueur = $data[1];
	$password = $data[2];
	$email = $data[3];
	
	//On rajoute des Slash (/) devant les caractéres speciaux pour eviter les erreurs (Zhao)
	$email2 = addslashes($email);
	
	$ip = $data[4];
	$race = $data[5];
	$classe = $data[6];
	$dieu = $data[7];
	$royaume = $data[9];
	$desc = $data[10];
 	$s = "nom".$i;
	$t = "roy".$i;
	$d = "desc".$i;

	$linkemailb = '';
	$linkemaile = '';
	$serveurmail = ' (';	
	$linkipb = '';
	$linkipe = '';
	$serveurip = ' (';
	
	$inscrMip = false;
	$inscrDip = false;
	$serveMip = false;
	$serveDip = false;
	$inscrMemail = false;
	$inscrDemail = false;
	$serveMemail = false;
	$serveDemail = false;
	
	$server = array('p','b','a','4');
	for ($j=0; $j<sizeof($server); $j++)	// recherche sur les différents serveurs
	{
		include("connect_".$server[$j].".php");
		
		$sql2 = "SELECT nom FROM joueurs_inscription WHERE `email` = '$email2'";	// recherche sur les joueurs s'inscrivant de l'email
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
//		if (mysql_num_rows($req2) != 1)
		if ((mysql_num_rows($req2) != 1)&&($j+1==$serveur))
		{
			$inscrMemail = true;
			$serveurmail .= ($j+1).' ';
		}
		if ((mysql_num_rows($req2) != 0)&&($j+1!=$serveur))
		{
			$inscrDemail = true;
			$serveurmail .= ($j+1).' ';			
		}
		
		$sql2 = "SELECT nom FROM joueurs_infos WHERE `email` = '$email2'";		// recherche sur les joueurs existants de l'email
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		if (mysql_num_rows($req2) > 0)
		{
			if ($j+1 == $serveur)	$serveMemail = true;
			else			$serveDemail = true;
			$linkemailb = '<a href="http://www.destinee-online.com/administration/joueur.php?mode=recherche&quoi=email&value='.$email.'">';
			$linkemaile = '</a>';
			$serveurmail .= ($j+1).' ';
		}
		$sql2 = "SELECT nom FROM joueurs_inscription WHERE ip = '$ip'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		if ((mysql_num_rows($req2) != 1)&&($j+1==$serveur))
		{
			$inscrMip = true;
			$serveurip .= ($j+1).' ';
		}
		if ((mysql_num_rows($req2) != 0)&&($j+1!=$serveur))
		{
			$inscrDip = true;
			$serveurip .= ($j+1).' ';
		}
		$sql2 = "SELECT nom FROM joueurs_infos WHERE ip = '$ip' OR ip_dernier = '$ip'";
		$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
		if ((mysql_num_rows($req2) > 0))
		{
			if ($j+1 == $serveur)	$serveMip = true;
			else			$serveDip = true;
			$linkipb = '<a href="http://www.destinee-online.com/administration/joueur.php?mode=recherche&quoi=ip&value='.$ip.'">';
			$linkipe = '</a>';
			$serveurip .= ($j+1).' ';
		}
		
	}
	if ($serveurmail == ' (')	$serveurmail = '';
	else				$serveurmail[ (strlen($serveurmail)-1) ] = ')';
	if ($serveurip == ' (')		$serveurip = '';
	else				$serveurip[ (strlen($serveurip)-1) ] = ')';
	
	$textcolor = '';
	$backcolor = '';
	//if ($inscrDip == true)		$textcolor = '';
	if ($inscrMip == true)		$textcolor = $ipdoubl;
	//if ($serveDip == true)		$textcolor = '';
	if ($serveMip == true)		$textcolor = $ipmulti;
	//if ($inscrDemail == true)	$backcolor = '';
	if ($inscrMemail == true)	$backcolor = $emaildoubl;
	//if ($serveDemail == true)	$backcolor = '';
	if ($serveMemail == true)	$backcolor = $emailmulti;


	
	echo "<tr  $backcolor $textcolor>";
	echo "<td><div align='center'><input type='checkbox' name='$i' value='$joueur'></div></td>";
	echo "<td><div align='center'><input type='checkbox' name='$p' value='$joueur'></div></td>";
	echo "<td><input type='text' name='$s' value='$joueur' size='20'></td>";
	echo "<td><input type='text' name='$t' value='$royaume' size='20'></td>";
	echo "<td>".md5($password)."</td>";
	echo "<td>$linkemailb$email$linkemaile$serveurmail</td>";
	echo "<td>$linkipb$ip$linkipe$serveurip</td>";
	echo "<td>$race</td>";
	echo "<td>$classe</td>";
	echo "<td>$dieu</td>";
	
	if ($serveur == 3)
		echo "<td><textarea cols='20' rows='5' name='$d'>$desc</textarea></td>";
	
	echo "</tr>\n";
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


echo'<br><br><table align="center"><tr><td><a href="inscription.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="inscription.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
