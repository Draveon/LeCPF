<? session_start(); ?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Inscription</title>
</head>
<body>

<?

$serveur = $_SESSION['serveur'];

$total = $_POST['total']+1;
$p = -1;

for($i=1; $i < $total; $i++)
{
	if(!isset($_POST[$i]))
	{
	}
	else
	{
		$createur = $_POST[$i];
		include("connect.php");
		$sql = "SELECT * FROM guildes_creation WHERE nom = '".htmlentities($createur)."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		
		$n = "nom".$i;
		$o = "obj".$i;
		$d = "des".$i;
		$r = "reg".$i;
		$im = "ima".$i;
		
		$armada = $_POST[$n];
		$objectif = $_POST[$o];
		$description = $_POST[$d];
		$regle = $_POST[$r];
		$image = $_POST[$im];
		$province = $data[7];
		$sitew = $data[8];
		
		$temps = time()/60;
		
		$req = "INSERT INTO `guildes` ( `id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `siteweb`)
		VALUES ('', '".str_replace("'", "`", $armada)."', '$province', '1', '$temps', '$image', '".htmlentities($createur)."', '$description', '$objectif', '$regle', '".$sitew."');";
		mysql_query($req,$db);
		
		$sql = mysql_query("UPDATE `joueurs_bonus` SET `guilde` = '".str_replace("'", "`", $armada)."' WHERE `nom` = '".htmlentities($createur)."'");
		mysql_query($sql,$db);
		
		// incrément du compteur des acceptés
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+1 WHERE `param` = 'guilde_accep'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		
		$delete = mysql_query("DELETE FROM guildes_creation WHERE nom = '".htmlentities($createur)."'") or die(mysql_error());;
		mysql_query($delete,$db);
		
		echo "$createur est accepté.<br>";

		mysql_close();
	}
	
	if(!isset($_POST[$p]))
	{
	}
	else
	{
		$createur = $_POST[$p];
		
		include("connect.php");
		
		// incrément du compteur des refusés
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+1 WHERE `param` = 'guilde_refus'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());

		$delete = mysql_query("DELETE FROM guildes_creation WHERE nom = '".htmlentities($createur)."'") or die(mysql_error());;
		mysql_query($delete,$db);
		
		echo 'L\'armada de '.$createur.' est refusée.<br>';
		
		mysql_close();
	}
	
	$p--;
}

echo '<div align="center"><br><br><a href="/administration/inscription_guilde.php?serveur='.$serveur.'">Retour</a></div>';
?>
</body>
</html>
