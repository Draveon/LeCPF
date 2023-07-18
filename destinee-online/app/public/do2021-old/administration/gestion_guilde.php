<?php session_start();

$serveur = $_GET['serveur'];

?>


<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
<title>Gérationage des guildes</title>
</head>
<body>

<?

include("../administration/choix_serveurs.php");


// fonction qui donne une boite select des gens qui sont dans l'armada
function papables($id, $nom)
{
	$out = '<select name="nouveau'.$id.'"><option value=""></option>';
	$sql = "SELECT id, nom FROM joueurs_bonus WHERE guilde = '$nom';";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	while ($data=mysql_fetch_row($req))
		$out .= '<option value="'.$data[1].'">'.$data[1].'</option>';
	$out .= '</select>';
	return $out;
}
// fonction met une étoile si le joueur existe pas
function joueurexiste($joueur)
{
	$sql = "SELECT id FROM joueurs_bonus WHERE nom = '$joueur';";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	if ($data=mysql_fetch_row($req))
		return $joueur;
	return '*'.$joueur.'*';
}


// *** *** *** on commence le code de la page proprement dit

// traitement des demandes de changement de chef et de delete d'armada
$sql = "SELECT id, nom, chef, img FROM guildes ORDER BY nom ASC;";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
while ($data = mysql_fetch_row($req))
{
	// changement de chef
	if ((isset($_POST['nouveau'.$data[0]]))&&(isset($_POST['confirm'.$data[0]])))
	{
		if (($_POST['nouveau'.$data[0]]!='')&&($_POST['confirm'.$data[0]]=="yes"))
		{
			echo "CHANGEMENT DE CHEF ($data[1] : $data[2] -> ".$_POST['nouveau'.$data[0]].")<br>";
			$sql1 = "UPDATE guildes SET chef = '".$_POST['nouveau'.$data[0]]."' WHERE id = '$data[0]' LIMIT 1;";
			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());		
		}
	}
	//changement d'image
	if ((isset($_POST['image'.$data[0]]))&&(isset($_POST['confirm'.$data[0]])))
	{
		if (($_POST['image'.$data[0]]!='')&&($_POST['confirm'.$data[0]]=="yes"))
		{
			echo "CHANGEMENT D'IMAGE ($data[1] : $data[3] -> ".$_POST['image'.$data[0]].")<br>";
			$sql1 = "UPDATE guildes SET img = '".$_POST['image'.$data[0]]."' WHERE id = '$data[0]' LIMIT 1;";
			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());		
		}
	}
	//changement de nom
	if ((isset($_POST['nom'.$data[0]]))&&(isset($_POST['confirm'.$data[0]])))
	{
		if (($_POST['nom'.$data[0]]!=$data[1])&&($_POST['confirm'.$data[0]]=="yes"))
		{
			echo "CHANGEMENT DE NOM ($data[1] -> ".$_POST['nom'.$data[0]].")<br>";
			$sql1 = "UPDATE `guildes`		SET `nom`	= '".$_POST['nom'.$data[0]]."' WHERE `id`	 = '$data[0]' LIMIT 1;";	$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `guerres`		SET `guilde1`	= '".$_POST['nom'.$data[0]]."' WHERE `guilde1`	 = '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `guerres`		SET `guilde2`	= '".$_POST['nom'.$data[0]]."' WHERE `guilde2`	 = '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `guerres`		SET `vainqueur`	= '".$_POST['nom'.$data[0]]."' WHERE `vainqueur` = '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `guerres`		SET `initiateur`= '".$_POST['nom'.$data[0]]."' WHERE `initiateur`= '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `guerres`		SET `proposeur`	= '".$_POST['nom'.$data[0]]."' WHERE `proposeur` = '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `joueurs_bonus`		SET `guilde`	= '".$_POST['nom'.$data[0]]."' WHERE `guilde`	 = '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			$sql1 = "UPDATE `guildes_inscription`	SET `guilde`	= '".$_POST['nom'.$data[0]]."' WHERE `guilde`	 = '$data[1]'";			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
		}
	}
	// delete d'armada
	if ((isset($_POST['delete'.$data[0]]))&&(isset($_POST['confirm'.$data[0]])))
	{
		if (($_POST['delete'.$data[0]]=="yes")&&($_POST['confirm'.$data[0]]=="yes"))
		{
			echo "SUPPRESSION DE LA GUILDE ($data[1])<br>";
			// mettre 'Aucune' dans la liste des joueurs
			$sql1 = "UPDATE joueurs_bonus SET guilde = 'Aucune' WHERE guilde = '$data[1]';";
			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
			// delete enregistrement guilde
			$sql1 = "DELETE FROM guildes WHERE id = '$data[0]' LIMIT 1;";
			$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
		}
	}
}

// Affichage des guildes
$sql = "SELECT * FROM guildes ORDER BY puissance DESC;";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
echo '<form method="post" action="gestion_guilde.php?serveur='.$serveur.'" style="text-align:center;">
<a href="gestion_guilde.php?serveur='.$serveur.'">Actualiser</a><br>
<table border="0" align="center" style="text-align:left;">
<tr>	<td>Etes vous vraiment sûr?</td>	<td></td>	<td></td>	<td>Nom</td>	<td>Province</td>	<td>Chef</td>	<td></td>	<td>Membres</td>	<td>Score</td>	<td>Supprimer</td>	</tr>
';
while ($data=mysql_fetch_row($req))
{
	echo '<tr>
	<td style="text-align:center;"><input type="checkbox" name="confirm'.$data[0].'" value="yes"></td>
	<td><img src="'.$data[5].'" width="20" height="20" border="0"><input type="text" name="image'.$data[0].'" value="'.$data[5].'"></td>	
	<td>('.$data[0].')</td>
	<td><input type="text"	name="nom'.$data[0].'"		value="'.$data[1].'"></td>
	<td>'.$data[2].'</td>
	<td>'.joueurexiste($data[6]).'</td>
	<td>'.papables($data[0],$data[1]).'</td>
	<td style="text-align:right;">'.$data[3].'</td>
	<td style="text-align:right;">'.$data[10].'</td>
	<td style="text-align:center;"><input type="checkbox" name="delete'.$data[0].'" value="yes"></td>
</tr>';
}
echo '</table>
<a href="gestion_guilde.php?serveur='.$serveur.'">Actualiser</a><br>
';








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
echo'<br><br><table align="center"><tr><td><a href="gestion_guilde.php?serveur='.$serveurPre.'"> Serveur'.$serveurPre.'</a></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><input type="submit" value="- Valider -"></td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td><a href="gestion_guilde.php?serveur='.$serveurSui.'">Serveur  '.$serveurSui.'</a></td></tr></table>
<br><br>
<div align="center"><a href="administration.php">Retour à l\'administration</a></div>

</body>
</html>';

?>
