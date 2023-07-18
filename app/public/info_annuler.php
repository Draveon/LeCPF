<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];
$id = $_POST['id'];
$texte = "";

include("connect.php");
$sql = "SELECT * FROM foire_vente WHERE id = '$id'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$vendeur = $data[1];
$item = $data[2];
$qtee = $data[3];
$acheteur = $data[7];
$type = $data[8];
mysql_close();

if ($vendeur == $nom AND $acheteur == "")
{
	include("connect.php");

	if ($type == "ressource")
	{
		$sql = "UPDATE `joueurs_stats` SET `$item` = `$item` + '$qtee' WHERE nom = '$vendeur'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

		$delete = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'");
		mysql_query($delete,$db);
	}

	if ($type == "objet")
	{
		require_once ('info_objets_include.php');
		if (ajouteDansInventaire ($vendeur, $item))
		{
			$delete = mysql_query("DELETE FROM `foire_vente` WHERE `id` = '$id'");
			mysql_query($delete,$db);
		}
		else
			$texte = 'Vous n\\\'avez plus d\\\'emplacement disponible dans votre inventaire.';

		/*
		$sql = "SELECT * FROM joueurs_objets WHERE nom = '$acheteur'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_array($req);
	
		$sql = "SELECT * FROM joueurs_objets WHERE nom = '$vendeur'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_array($req);
		for ($k=1; $k < 17; $k++){
		$slot = $data[$k];
		if ($slot == 0){
		$sql = "UPDATE `joueurs_objets` SET `$k` = '$id_objet' WHERE nom ='$vendeur'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		break;
		}
		}
		*/
	}
	mysql_close();
}
else
{
	if ($vendeur != $nom)
		$texte = "Cet objet n\'est pas le vôtre. Nom vendeur : ".$vendeur." Nom Perso : ".$nom;
	else
		$texte = "Une offre vient d\'être faite sur cet objet.";
}

if ($texte == ""){?>
    <!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
    <body onLoad="setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
    style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
    </body></html><?php
}
else{?>
    <!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
    <body onload="alert('<?php echo $texte; ?>'); setTimeout('self.close()',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
    style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html><?php
}
