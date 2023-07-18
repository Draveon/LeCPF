<? session_start();

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
<title>Destinée-online: Signalement des missives</title>
</head>
<body>

<div align="center"><a href="administration.php">Retour à l'administration</a></div><br>

<?

$mode		= (!isset($_GET['mode']))	? '' : $_GET['mode'];
$joueur1	= (!isset($_GET['joueur1']))	? '' : $_GET['joueur1'];
$joueur2	= (!isset($_GET['joueur2']))	? '' : $_GET['joueur2'];
$serveur	= (!isset($_GET['serveur']))	? 0  : $_GET['serveur'];
$id		= (!isset($_GET['id']))		? '' : $_GET['id'];


// ignarage d'un signalement de message
if (($mode == 'ignorer') && ($serveur != 0) && ($id != ''))
{
	include("../administration/choix_serveurs.php");
	
	$sql = "UPDATE `messagerie` SET `signal` = '0' WHERE `id` = '$id' LIMIT 1";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	
	echo '<p align=center>Délation ignorée</p>';
	
	mysql_close();
}


// historique de conversation
if (($mode == 'historique') && ($joueur1 != '') && ($joueur2 != '') && ($serveur != 0))
{
	include("../administration/choix_serveurs.php");
	
	
	echo '<table border="0" ALIGN="CENTER"><tr><td align="center" colspan="2"><a href="missives_signalees.php">Retour</a></td></tr>';
	
	$sql = "SELECT * FROM messagerie WHERE ( (auteur = '$joueur1' AND destinataire = '$joueur2') OR (auteur = '$joueur2' AND destinataire = '$joueur1') ) ORDER BY temps ASC;";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data = mysql_fetch_row($req))
	{
		$auteur		= $data[1];
		$destinataire	= $data[2];
		$titre2		= $data[3];
		if ($titre2 == ""){$titre2 = "Aucun titre...";}
		$message	= $data[4];
		$date		= $data[5];
		$signal		= $data[8];
		
		$vide1 = '';
		$vide2 = '';
		if ($auteur == $joueur1)
			$vide2 = '<td></td>';
		else
			$vide1 = '<td></td>';
		
		
		echo '<tr>'.$vide1.'<td width="400">De <b>'.$auteur.'</b> à <b>'.$destinataire.'</b><br>'.$date.'<br><b>'.$titre2.'</b><br>'.$message.'<br>';
		if ($signal != '0')
			echo '<b><font color="#FF0000">Signalé</font></b><br>';
		echo '<br>&nbsp;</td>'.$vide2.'</tr>';
	}
		
	echo '<tr><td align="center" colspan="2"><a href="missives_signalees.php">Retour</a></td></tr></table>';
	
	mysql_close();
}
// affichage de la liste par défaut
else
{
	echo '<p align=center><a href="missives_signalees.php">Actualiser</a></p>';
	echo '<table border="0" ALIGN="CENTER">';
	for ($serveur=1; $serveur<=4; $serveur++)
	{
		include("../administration/choix_serveurs.php");
	
		echo '<tr style="font-weight:bold;"><td>Serveur '.$serveur.'</td><td>Auteur</td><td>Bloqué?</td><td>Destinataire</td><td width="150">Titre</td><td width="400">Message</td><td>Date</td><td>Historique</td><td>Retirer de la liste</td></tr>';
		
		$sql = "SELECT * FROM messagerie WHERE signal = 1 ORDER BY temps DESC;";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
		{
			$id		= $data[0];
			$auteur		= $data[1];
			$auteur2 	= $data[1];
			$destinataire	= $data[2];
			$destinataire2	= $data[2];
			$titre		= $data[3];
			$message	= $data[4];
			$date		= $data[5];
			$signal		= $data[8];
			
			// pas envie de faire un form pour le lien vers les stats du joueur, donc je fais une recherche au mimille
			$bloquer = 'non';
			$sql1 = "SELECT password, ip_dernier FROM joueurs_infos WHERE nom = '$auteur'";
			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			if ($data1 = mysql_fetch_row($req1))
			{
				if ($data1[0] == 'bloquer')
					$bloquer = 'Bloqué';
				
				$auteur2 = '<a href="joueur.php?mode=recherche&quoi=ip&value='.$data1[1].'">'.$auteur2.'</a>';
			}
			
			// pas envie de faire un form pour le lien vers les stats du joueur, donc je fais une recherche au mimille
			$sql1 = "SELECT password, ip_dernier FROM joueurs_infos WHERE nom = '$destinataire'";
			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			if ($data1 = mysql_fetch_row($req1))
				$destinataire2 = '<a href="joueur.php?mode=recherche&quoi=ip&value='.$data1[1].'">'.$destinataire2.'</a>';
			
			echo '<tr style="vertical-align: top;"><td></td><td>'.$auteur2.'</td><td>'.$bloquer.'</td><td>'.$destinataire2.'</td><td>'.$titre.'<br>&nbsp;</td><td>'.$message.'&nbsp;</td><td>'.$date.'</td><td><a href="missives_signalees.php?mode=historique&serveur='.$serveur.'&joueur1='.$auteur.'&joueur2='.$destinataire.'">Historique</a></td><td><a href="missives_signalees.php?mode=ignorer&serveur='.$serveur.'&id='.$id.'" onclick="return confirm(\'Etes-vous sûr de vouloir ignorer cette dénonciation ?\')">retirer</a></td></tr>';
		}
		
		mysql_close();
	}
	echo '</table>';
}


echo '<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';?>
