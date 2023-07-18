<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}


$message = $_GET['message'];
$nom     = $_SESSION['nom'];
$action	= (!isset($_GET['action'])) ? '' : $_GET['action'];

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title>Vos messages</title>
</head>
<body style="background: #d5cea6;
    background: -moz-linear-gradient(185deg, #d5cea6 0%, #c9c190 10%, #c9c190 18%, #c9c190 19%, #c9c190 19%, #ccc8a7 22%, #ccc8a7 29%, #c9c190 38%, #d5cea6 44%, #d5cea6 44%, #d5cea6 48%, #c6c48d 80%, #c6c48d 80%, #d5cea6 84%, #b7ad70 100%);
    background: -webkit-linear-gradient(185deg, #d5cea6 0%,#c9c190 10%,#c9c190 18%,#c9c190 19%,#c9c190 19%,#ccc8a7 22%,#ccc8a7 29%,#c9c190 38%,#d5cea6 44%,#d5cea6 44%,#d5cea6 48%,#c6c48d 80%,#c6c48d 80%,#d5cea6 84%,#b7ad70 100%);
    background: linear-gradient(185deg, #d5cea6 0%,#c9c190 10%,#c9c190 18%,#c9c190 19%,#c9c190 19%,#ccc8a7 22%,#ccc8a7 29%,#c9c190 38%,#d5cea6 44%,#d5cea6 44%,#d5cea6 48%,#cac294 80%,#cac499 80%,#d5cea6 84%,#b7ad70 100%);">
<br>
<div align="center">
<table style="width: 561px; text-align: center;" border="0" cellspacing="0" cellpadding="0">
<tbody>
	<tr>
	</tr>
	<tr>

<?php
include("connect.php");
include ("messagerie_include.php");

// Antyl, le 11/11/2006 : correction de la requête
//    pour inclure le destinataire "Tous", et donc pouvoir lire les missives publiques
$sql = 'SELECT *
        FROM messagerie
        WHERE `id` = "'.$message.'" AND
              ( (`destinataire` = "'.$nom.'") OR (`auteur` = "'.$nom.'") OR (`destinataire` = "Tous"))';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

echo '<table border="0" cellspacing="0" cellpadding="20" style="text-align: left; vertical-align: top;"><tbody><tr><td>';

$data = mysql_fetch_row($req);

$id		= $data[0];
$auteur		= $data[1];
$destinataire	= $data[2];
$titre2		= $data[3];
if ($titre2 == ""){$titre2 = "Aucun titre...";}
$message	= $data[4];
$date		= $data[5];
$signal		= $data[8];

if (mysql_num_rows($req) > 0 || $destinataire == 'Tous' || $destinataire == 'tous')
{
	if($destinataire == $nom)
	{
		$sql = mysql_query("UPDATE `messagerie` SET `lu` = '1' WHERE `id` = $id LIMIT 1");
		mysql_query($sql,$db);
	}

        if ( isofficiel($auteur) )
	{
	    $sql = "SELECT id FROM joueurs_modificateurs WHERE nom = '$nom'";
	    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	    $data = mysql_fetch_row($req);
	    $idjoueur = $data[0];

	    $sql = mysql_query("UPDATE `joueurs_modificateurs` SET `missive_publique` = '1' WHERE `id` = $idjoueur");
	    mysql_query($sql,$db);
	}

	if ($action == 'signaler')
	{
		$sql = mysql_query("UPDATE `messagerie` SET `signal` = '1' WHERE `id` = $id LIMIT 1");
		mysql_query($sql,$db);
		$signal = 1;
	}

	echo "Ecrit de la main de : $auteur<br>Pour : $destinataire<br>Messager envoyé le : $date<br><br>";
	echo '<strong><span style="font-family: papyrus;"><big><center>'.$titre2.'</center></big></span></strong><br>';
	echo '<div style="padding:5px;margin-left:5px;width:30em;min-height:50px;max-height:14.5em;overflow:auto;scrollbar-track-color:#E1DC91;scrollbar-base-color:#CDAF73;">'.nl2br(bbcode(str_replace("<", "", $message))).'</div>';

	mysql_close();
}
else
	echo 'Ce message ne vous regarde pas !';


?>
</td></tr></tbody></table>
<br><br>
		</div></td>
	</tr>
	<tr>
	</tr>
</tbody>
</div>
</table>
<?php
	if ($destinataire == $nom)
	{
		if ($signal == '0')
			echo '<small><i><a href="messagerie_ouvrir.php?message='.$id.'&action=signaler">Signaler ce message comme irrespectueux</a></i></small><br>';
		else
			echo 'Ce message a été signalé à l\'administration.<br>';
	}
?>
<br>
</body>
</html>
