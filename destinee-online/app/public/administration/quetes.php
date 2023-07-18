<? session_start();

if (!isset($_GET['serveur']))
	$_GET['serveur'] = 1;
$serveur = $_GET['serveur'];

if (!isset($_GET['affiche']))
	$_GET['affiche'] = '';
$affiche = $_GET['affiche'];

include("../administration/choix_serveurs.php");

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Résultats des quêtes</title>
</head>
<body>

<?

for ($i=1; $i<=2; $i++)		// boucle sur les n° de quete
{
	$needle = '';
	$reqquete_ =  mysql_query("SELECT nom_perso FROM quetes WHERE numquete = '$i';") or die('Erreur SQL !<br>'.mysql_error());
	if ($dataquete_ = mysql_fetch_row($reqquete_))
		$needle = $dataquete_[0];
	echo '<b>Objet de la quête '.$i.':</b> ';
	if ($needle=='')
		echo 'pas de quête en ce moment.<br>';
	if ($needle!='')
	{
		echo $needle.' (';
		if ($affiche=='tout')	echo	'<a href="quetes.php?serveur='.$serveur.'&affiche=rien">masquer détails</a>';
		else			echo	'<a href="quetes.php?serveur='.$serveur.'&affiche=tout">détails</a>';
		echo ')<br>';
		
		echo '<table border=0>';
		if ($affiche=='tout')
			echo '<tr>	<td>Nom</td>	<td></td>	<td>Attaques victorieuses</td>	<td>Attaques ratées</td>	<td>Défenses victorieuses</td>	<td>Défenses perdues</td>	<td>A - D</td>	<td>V - D</td>	<td>Combats</td>	</tr>';
		$req =  mysql_query("	SELECT nom, q".$i."NAttaVict, q".$i."NAttaDefa, q".$i."NDefeVict, q".$i."NDefeDefa
					FROM joueurs_combat
					WHERE q".$i."NAttaVict + q".$i."NAttaDefa + q".$i."NDefeVict + q".$i."NDefeDefa > 0
					ORDER BY q".$i."NAttaVict + q".$i."NAttaDefa DESC, q".$i."NAttaVict DESC,
						 q".$i."NDefeVict + q".$i."NDefeDefa DESC, q".$i."NDefeVict DESC,
						 nom ASC;
			") or die('Erreur SQL !<br>'.mysql_error());
		$sum = array(0, 0, 0, 0, 0);
		while ($data = mysql_fetch_row($req))
		{
			if ($affiche=='tout')
			{
				$guilde = '';
				$reqtmp =  mysql_query("SELECT guilde FROM joueurs_bonus WHERE nom = '".$data[0]."';") or die('Erreur SQL !<br>'.mysql_error());
				if ($datatmp = mysql_fetch_row($reqtmp))
					$guilde = $datatmp[0];
				echo '<tr>	<td>'.$data[0].'</td>	<td>'.$guilde.'</td>	<td>'.$data[1].'</td>	<td>'.$data[2].'</td>	<td>'.$data[3].'</td>	<td>'.$data[4].'</td>	<td>'.(($data[1]+$data[2])-($data[3]+$data[4])).'</td>	<td>'.(($data[1]+$data[3])-($data[2]+$data[4])).'</td>	<td>'.($data[1]+$data[2]+$data[3]+$data[4]).'</td>	</tr>';
			}
			$sum[1] += $data[1];
			$sum[2] += $data[2];
			$sum[3] += $data[3];
			$sum[4] += $data[4];
		}
		echo '<tr>	<td><b>Total</b></td>	<td></td>	<td>'.$sum[1].'</td>	<td>'.$sum[2].'</td>	<td>'.$sum[3].'</td>	<td>'.$sum[4].'</td>	<td>'.(($sum[1]+$sum[2])-($sum[3]+$sum[4])).'</td>	<td>'.($data[1]-$data[2]+$data[3]-$data[4]).'</td>	<td>'.($data[1]+$data[2]+$data[3]+$data[4]).'</td>	</tr>';
		echo '</table><br><br>';
	}
}






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


echo'<br><br><table align="center"><tr><td><a href="quetes.php?serveur='.$serveurPre.'&affiche='.$affiche.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="quetes.php?serveur='.$serveurSui.'&affiche='.$affiche.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
