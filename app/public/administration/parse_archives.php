<? session_start();

$serveur = $_GET['serveur'];

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
<title>Destinée-online: détection des multis au marché central</title>
</head>
<body>

<?

include("../administration/choix_serveurs.php");



$seuil = 3000;

//$normal = ' style="display: none;"';
$normal = ' style="font-size: 7pt;"';
$simple = ' style=""';
$double = ' style="font-weight:bold;"';
$quadru = ' style="font-weight:bold; color: red;"';

echo '<div align="center">Achats de ressources ...
	<span'.$normal.'> < '.   $seuil .' &nbsp; </span>
	<span'.$simple.'> > '.   $seuil .' &nbsp; </span>
	<span'.$double.'> > '.(2*$seuil).' &nbsp; </span>
	<span'.$quadru.'> > '.(4*$seuil).' &nbsp; </span> l\'unité<br>au cours de ces dernières 24 heures<br>&nbsp;</div>';

echo '<table border="0" ALIGN="CENTER">';
echo '<tr style="font-weight:bold;"><td>vendeur</td><td>(guilde_v)</td><td>acheteur</td><td>(guilde_a)</td><td>multi ip?</td><td width="150">date</td><td>quantité</td><td>type</td><td>prix</td><td>prix unitaire</td></tr>';
$sql_ = "SELECT * FROM combat_joueurs WHERE victoire = 'Foire' AND texte1 LIKE 'Vos ressources (%' AND texte1 NOT LIKE '% vous en reprenez possession.' ORDER BY temps DESC;";
$req_ = mysql_query($sql_) or die('Erreur SQL !<br>'.$sql_.'<br>'.mysql_error());
while ($data_ = mysql_fetch_row($req_))
{
	$vendeur  = $data_[1];
	$acheteur = $data_[2];
	$temps  = $data_[3];
	$date 	= $data_[5];
	$texte1 = $data_[6];
	$texte2 = $data_[7];
	
	// guildes
	$sql = "SELECT guilde FROM joueurs_bonus WHERE nom = '$vendeur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$guilde_v = $data[0];
	$sql = "SELECT guilde FROM joueurs_bonus WHERE nom = '$acheteur'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$guilde_a = $data[0];
	
	// multi ip?
	$sql = "SELECT ip_dernier, ip FROM joueurs_infos WHERE nom LIKE '$vendeur';";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$ip1 = $data[0];
	$ip2 = $data[1];
	$sql = "SELECT ip_dernier, ip FROM joueurs_infos WHERE nom LIKE '$acheteur';";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$ip3 = $data[0];
	$ip4 = $data[1];
	$multiip = '';
	if (($vendeur!=$acheteur)&&(($ip1==$ip3)||($ip1==$ip4)))	$multiip = '<a href="joueur.php?mode=recherche&quoi=ip&value='.$ip1.'">Multi!</a>';
	if (($vendeur!=$acheteur)&&(($ip2==$ip3)||($ip2==$ip4)))	$multiip = '<a href="joueur.php?mode=recherche&quoi=ip&value='.$ip2.'">Multi!</a>';

	// date
	$date = str_replace('<br>', ', ', $date);
	
	// traitement de texte
	$text = substr($texte1, 16);
	$quan = substr($text, 0, strpos($text, ' ') );
	$text = substr($text, strpos($text, ' ')+1);
	$type = substr($text, 0, strpos($text, ')') );
	$text = substr($text, strpos($text, "au prix de ")+11 );
	$prix = substr($text, 0, strpos($text, ' ') );
	if (($quan>1)&&($type[(strlen($type)-1)]!='s'))
		$type .= 's';
	
	// prix unitaire
	$unit = round($prix/$quan);
	
	
	// mise en évidence
	$b = $normal;
	if ($unit >   $seuil)	$b = $simple;
	if ($unit > 2*$seuil)	$b = $double;
	if ($unit > 4*$seuil)	$b = $quadru;
	if ($multiip)		$b = $quadru;
	
	// affichage
	echo '<tr'.$b.'><td>'.$vendeur.'</td><td>('.$guilde_v.')</td><td>'.$acheteur.'</td><td>('.$guilde_a.')</td><td>'.$multiip.'</td><td width="150">'.$date.'</td><td>'.$quan.'</td><td>'.$type.'</td><td>'.$prix.'</td><td>'.$unit.'</td></tr>';
}
echo '</table>';

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


echo'<br><br><table align="center"><tr><td><a href="parse_archives.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="parse_archives.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
