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
		
		$sujet="Palatinat :: Destin�e-Online.com";
		$message="F�licitation !\n\n";
		$message.="Votre candidature pour le poste de palatin a �t� accept�!\n\n";
		$headers="From: balthazar@destinee-online.com\n";
		mail($email,$sujet,$message,$headers);
		
		$discours = $_POST[$d];
		
		$req = "UPDATE `candidat_palatinat` SET ACCEPT ='1', DISCOURS ='".str_replace("'", "`", $discours)."' WHERE NOM = '".htmlentities($candidat)."'";
		mysql_query($req)or die(mysql_error());
		
		// incr�ment du compteur des accept�s
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+1 WHERE `param` = 'palat_accep'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		
		echo "La candidature $candidat est accept�e.<br>";
		
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
		
		$sujet="Palatinat :: Destin�e-Online.com";
		$message="Malheureusement,\n\n";
		$message.="Votre candidature pour le poste de palatin a �t� refus�!\n";
		$message.="Vous pouvez toutefois refaire une demande � tout moment.\n";
		$message.="Voici la ou les raisons de votre refus :\n\n";
		if(isset($_POST[$r1]))
		{
			$message.="- Votre discours n'�tait pas assez soign�, il y avait trop de fautes d'orthographe\n";
		}
		if(isset($_POST[$r2]))
		{
			$message.="- Votre discours �tait inexistant ou trop court\n";
		}
		if(isset($_POST[$r3]))
		{
			$message.="- Votre discours n'�tait pas dans l'optique m�dievale de Destin�e\n";
		}
		if(!isset($_POST[$r1]) && !isset($_POST[$r2]) &&!isset($_POST[$r3]))
		{
			$message.="- Aucune remarque scp�cifique n'a �t� faites pour la raison de votre refus.";
		}
		$headers="From: balthazar@destinee-online.com\n";
		mail($email,$sujet,$message,$headers);
		
		$delete = mysql_query("DELETE FROM candidat_palatinat WHERE NOM = '".htmlentities($candidat)."'") or die(mysql_error());;
		mysql_query($delete);
		
		// incr�ment du compteur des refus�s
		$sql = "UPDATE destinee_statistiques SET `valeur_entier` = `valeur_entier`+1 WHERE `param` = 'palat_refus'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		
		echo "La candidature $candidat est delet�e.<br>";

		mysql_close();
	}
	$p--;
}
?>

<div align="center"><br><br><a href="/administration/candidat.php?serveur=<? echo $serveur ?>">Retour</a></div>
</body>
</html>