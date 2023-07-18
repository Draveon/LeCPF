<? session_start();

$serveur = $_GET['serveur'];
?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Candidature</title>
</head>
<body>


<?

$accent = array("'");
$total = $_POST['total'];
$total = $_POST['total']+1;
$p = -1;

for($i=1; $i < $total; $i++)
{
	if(!isset($_POST[$i]))
	{
	}
	else
	{
		$tchek = $_POST[$i];
		
		$s = "nom".$i;
		$d = "discours".$i;
		
		$candidat = $_POST[$s];
		$candidat = str_replace($accent, "`", "$candidat");
		
		include("../administration/choix_serveurs.php");
		
		$sql = "SELECT email FROM joueurs_infos WHERE nom='".htmlentities($candidat)."'";
		$result = mysql_query($sql); 
		$data = mysql_fetch_row($result);
		
		$email = $data[0];
		
		$sujet="Palatinat :: Destinée-Online.com";
		$message="Félicitation !\n\n";
		$message.="Votre candidature pour le poste de palatin a été accepté!\n\n";
		$headers="From: balthazar@destinee-online.com\n";
		mail($email,$sujet,$message,$headers);
		
		$discours = $_POST[$d];
		
		$req = "UPDATE `candidat_palatinat` SET ACCEPT ='1', DISCOURS ='".str_replace("'", "`", $discours)."' WHERE NOM = '".htmlentities($candidat)."'";
		mysql_query($req)or die(mysql_error());
		
		// incrément du compteur des acceptés
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+1 WHERE `param` = 'palat_accep'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		
		echo "La candidature $candidat est acceptée.<br>";
		
		mysql_close();
	}

	if(!isset($_POST[$p]))
	{
	}
	else
	{
		$tchek = $_POST[$i];
		
		$s = "nom".$i;
		$candidat = $_POST[$p];
		$d = "discours".$i;
		$r1 = "refus1".$i;
		$r2 = "refus2".$i;
		$r3	= "refus3".$i;
		
		include("../administration/choix_serveurs.php");
		
		$sql = "SELECT email FROM joueurs_infos WHERE nom='".htmlentities($candidat)."'";
		$result = mysql_query($sql); 
		$data = mysql_fetch_row($result);
		
		
		$email = $data[0];
		
		$sujet="Palatinat :: Destinée-Online.com";
		$message="Malheureusement,\n\n";
		$message.="Votre candidature pour le poste de palatin a été refusé!\n";
		$message.="Vous pouvez toutefois refaire une demande à tout moment.\n";
		$message.="Voici la ou les raisons de votre refus :\n\n";
		if(isset($_POST[$r1]))
		{
			$message.="- Votre discours n'était pas assez soigné, il y avait trop de fautes d'orthographe\n";
		}
		if(isset($_POST[$r2]))
		{
			$message.="- Votre discours était inexistant ou trop court\n";
		}
		if(isset($_POST[$r3]))
		{
			$message.="- Votre discours n'était pas dans l'optique médievale de Destinée\n";
		}
		if(!isset($_POST[$r1]) && !isset($_POST[$r2]) &&!isset($_POST[$r3]))
		{
			$message.="- Aucune remarque scpécifique n'a été faites pour la raison de votre refus.";
		}
		$headers="From: balthazar@destinee-online.com\n";
		mail($email,$sujet,$message,$headers);
		
		$delete = mysql_query("DELETE FROM candidat_palatinat WHERE NOM = '".htmlentities($candidat)."'") or die(mysql_error());;
		mysql_query($delete);
		
		// incrément du compteur des refusés
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+1 WHERE `param` = 'palat_refus'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		
		echo "La candidature $candidat est deletée.<br>";

		mysql_close();
	}
	$p--;
}
?>

<div align="center"><br><br><a href="/administration/candidat.php?serveur=<? echo $serveur ?>">Retour</a></div>
</body>
</html>