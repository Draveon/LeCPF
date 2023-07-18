<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$id = (isset($_GET['id'])) ? $_GET['id'] : -1;
$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$type = ((isset($_GET['type']))&&($_GET['type']==3)) ? 3 : 1;

$erreur = '';


if (!isset($_POST['detruire']))
{
	?>

	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
	<head>
	       <title></title>
	</head>
	<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
	style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
	<br>
	<div align="center"><table style="width: 92%; text-align: center; background-color: antiquewhite;" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
	</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
	</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
	</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">

	<?php
	include("connect.php");
	
	if ($type != 3)
	{
		$req = mysql_query("SELECT id, batiment, nom, nombre, espace, image FROM creatures WHERE id = '$id'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$id = $data[0];
		$batiment = $data[1];
		$nom_creature = $data[2];
		$nombre = $data[3];
		$espace = $data[4];
		if ($nom_creature == "")$nom_creature = "N/A";
		if ($nombre == 0)	$nombre = "N/A";
		$image = $data[5];
		
		$req = mysql_query("SELECT `".$id."` FROM joueurs_batiments_id WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$terrain = $data[0];
		$req = mysql_query("SELECT $terrain FROM races WHERE race = '$race'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_array($req);
		$mod = $data[0];
		
		$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$jbonus = mysql_fetch_assoc($req);
		$sql = "SELECT politiques_effets.batiments FROM politiques_effets WHERE politiques_effets.politique = '".$jbonus['politique']."'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$mod *= $data[0];
		
		$bonus = '';
	}

	$espace = ceil($espace/$mod);
	$espace = number_format($espace, 0, ",", ",");
	$terrain = ucfirst($terrain);
	
	mysql_close();

	echo "<strong>$batiment</strong><br><br>";
	echo "<img src='$image' alt='$batiment' border='1'><br><br>";
	if ($espace > 0)
		echo "Vous regagnerez <b>$espace</b> âcres ($terrain)<br>";
	echo $bonus.'<br>';
	

	echo '
		<form method="post" action="detruire.php">
		<input type="hidden" name="type" value="'.$type.'">
		<input type="hidden" name="detruire" value="'.$id.'">
		<input type="submit" value="Détruire >>"><br><br>
		</td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table></div>
		<br>
		</tbody>
		</table>
		</body>
		</html>';
	}
else
{
	print_r($_POST);
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
	<head><title></title></head>
	<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);" onLoad="setTimeout(\'self.close()\',0)" >
	<br>
	<div align="center">
	<table style="width: 92%; text-align: center; background-color: antiquewhite;" border="0" cellspacing="0" cellpadding="0">
	<tbody>
		<tr>	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td>
			<td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
		</tr>
		<tr>	<td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);"></td>
			<td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">';

	$id = $_POST['detruire'];
	$type = ((isset($_POST['type']))&&($_POST['type']==3)) ? 3 : 1;

	$temps = floor(time()/60);

	include("connect.php");
	
	if ($type != 3)
	{
		// batiments normaux
		$req = mysql_query("SELECT id, batiment, espace FROM creatures WHERE id = '".$id."'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$id = $data[0];
		$batiment = $data[1];
		$espace = $data[2];

		$req = mysql_query("SELECT `".$id."`, `1`,`2`,`3`,`4`,`5` FROM joueurs_batiments_id WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$terrain = $data[0];
		if ($id <=5)
		{
			for ($i=$id+1; $i<=5; $i++)
				if ($data[$i] != '0')
					exit();
		}

		if ($terrain != "0")
		{
			// retrouvailles avec terrains
			$req = mysql_query("SELECT `".$terrain."` FROM races WHERE race = '".$race."'") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_array($req);
			$mod = $data[0];
			
			$req = mysql_query("SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
			$jbonus = mysql_fetch_assoc($req);
			$sql = "SELECT politiques_effets.batiments FROM politiques_effets WHERE politiques_effets.politique = '".$jbonus['politique']."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$mod *= $data[0];
			
			$espace_perdu = 0;
			$espace_gagne = ceil($espace/$mod);
			
			$sql2 = "UPDATE `joueurs_terre_utile` 	SET `".$terrain."` = `".$terrain."` - '".$espace_gagne."', `total` = `total` - '".$espace_gagne."' WHERE nom = '".$nom."'";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
			
			// perte de créatures
			$req = mysql_query("SELECT cha FROM joueurs_stats WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
			$data = mysql_fetch_row($req);
			$cha = $data[0];
			$pertes = max(0, 0.80 - ($cha * 0.003));

			$req = mysql_query("SELECT pvs FROM creatures WHERE id = '".$id."'") or die('Erreur SQL !<br>'.mysql_error());
			$pvs = mysql_fetch_row($req);
			$req = mysql_query("SELECT `".$id."` FROM joueurs_créatures WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
			$nombre = mysql_fetch_row($req);
			$pertes = ceil($nombre[0] * $pertes);
			$nombre[0] = max(0, $nombre[0] - $pertes);
			$pertespvs = $pertes * $pvs[0];
			
			$sql = "UPDATE `joueurs_batiments_id` SET `".$id."` = '0' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$sql = "UPDATE `joueurs_créatures` SET `".$id."` = '".$nombre[0]."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$sql = "UPDATE `joueurs_modificateurs` SET `pvstotal` = `pvstotal` - '".$pertespvs."' WHERE nom = '".$nom."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			
			// on fait courir la mise à jour d'or, de mana et de POPULATION
			// qui en même temps fait la mise à jour de la puissance à partir des totaux de terres et de pvtotal
			// et du même coup on fait chier quand c'est une tour de magie, perte de mana
			include ("maj_or_mana.php");
			maj_or_mana($nom);
		}
	}

	mysql_close();


	echo '
	</td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
	</td></tr></tbody></table></div><br></tbody></table></body></html>';
	if ($erreur != '')
		echo '	<SCRIPT LANGUAGE="JavaScript">
		<!--
		alert(\''.addslashes($erreur).'\');
		// -->
		</SCRIPT>';

}
