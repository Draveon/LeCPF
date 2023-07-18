<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_POST['qtee']))
{

	$id_cr = $_GET['creature'];
	$nom   = $_SESSION['nom'];
	
	include("connect.php");
	$sql = 'SELECT * FROM creatures_liste WHERE id = "'.$id_cr.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$id   = $data[0];
	$creature = $data[1];
	$type = $data[2];
	$batiment = $data[3];
	$image = $data[7];

	
	$sql = 'SELECT '.$id.' FROM joueurs_créatures_id WHERE nom = "'.$nom.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$qtee = $data[0];
	
	$sql = "SELECT cha FROM joueurs_stats WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$charisme = $data[0];
	
	$sql = "SELECT `mana_consommation` FROM joueurs_modificateurs WHERE nom = '".$nom."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$mana_consommation = $data[0];
	
	$sql = "SELECT * FROM creatures_stats WHERE id = '$id'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niv = $data[2];
	$att = $data[3];
	$def = $data[4];
	$ini = $data[5];
	$end = $data[6];
	$pvs = $data[7];
	$min = $data[8];
	$max = $data[9];
	$vol = $data[10];
	$range = $data[11];
	$mod = pow(($charisme + 20), 1/5);
	$cout = $data[12];
	$cout = round(($cout*2)/$mod);
	$mana = round($data[13] * $mana_consommation);
	
	$sql = "SELECT * FROM joueurs_créatures_id where nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_array($req);
	$qtee = $data[$id];
		
	// la valeur par défaut est le nombre de créature recrutables
        $sql2 = "SELECT argent, mana FROM joueurs_stats WHERE nom = '$nom'";
        $req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
	$data2 = mysql_fetch_row($req2);
	if ($cout == 0)	$nrecror = $qtee;
	else		$nrecror = floor($data2[0]/$cout);
	if ($mana == 0)	$nrecrma = $qtee;
	else		$nrecrma = floor($data2[1]/$mana);
	$qter = max(0,min($qtee, $nrecror, $nrecrma));
	
	mysql_close();	


	
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
	<title>'.$creature.'</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
<script type="text/javascript">
<!--
function estimate (nbr, coutor, coutmana, id)
{
	document.getElementById(id).innerHTML = \'Coût: \' + (nbr*coutor) + \' pièces d\\\'or et \' + (nbr*coutmana) + \' mana.<br>&nbsp;\';
}
//-->
</script>
</head>
<body marginheight=0 class="bodypopup" onload="javascript:estimate('.$qter.', '.$cout.', '.$mana.', \'idcouts\')">
<br>
<div align="center">
<table class="cadretablepopup"><tbody>
<tr>	<td colspan="3" class="cadretopleft"></td>
	<td rowspan="2" class="cadretopright"></td></tr>
<tr>	<td class="cadremiddleleft"></td>
	<td colspan="2" class="cadrecontenupopupc">
';
	echo '<h4>Pièces d\'or : '.$cout.' | Points de magie : '.$mana.'</h4><br><br>
	<form method="post" action="recruter.php">
	<table class="discr100"><tbody>
	<tr>	<td rowspan="9" class="discr100img"><img src="'.$image.'" width="100px" height="100px" alt="'.$creature.'" border="1"></td>
	<td>Nom :	</td><td>'.$creature.'</td></tr><tr>
	<td>Type :	</td><td>'.$type.'</td></tr><tr>
	<td>Niveau :	</td><td>'.$niv.'</td></tr><tr>
	<td>Attaque :	</td><td>'.$att.'</td></tr><tr>
	<td>Défense :	</td><td>'.$def.'</td></tr><tr>
	<td>Initiative :</td><td>'.$ini.'</td></tr><tr>
	<td style="white-space: nowrap;">Endurance :	</td><td>'.$end.'</td></tr><tr>
	<td>Vitalité :	</td><td>'.$pvs.'</td></tr><tr>
	<td>Dégâts :	</td><td>'.$min.' à '.$max.'</td></tr>
	</tbody></table>
	<br>
	<div align="center"><b>Quantité disponible : '.$qtee.'</b><br>
	Quantité désirée : <input type="text" name="qtee" size="3" value="'.$qter.'" onChange="javascript:estimate(this.value, '.$cout.', '.$mana.', \'idcouts\')"><br>
	<div id="idcouts"></div>
	</td></tr><tr><td colspan="4" class="cadrebottom"></td></tr>
	</tbody></table></div>
	<br><div align="center">
	<input type="hidden" name="recrutement" value="'.$creature.'">
	<input type="submit" value="Recruter >>"></div>
	<br>
	</tbody>
	</table>
	</body>
	</html>';
}
else
{
	$qtee = $_POST['qtee'];
	$creature = $_POST['recrutement'];
	$nom = $_SESSION['nom'];
	
	include("connect.php");
	
	$sql = "SELECT id FROM creatures_liste WHERE nom = '$creature'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$id = $data[0];
	
	$sql = "SELECT * FROM joueurs_créatures_id WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
	$data = mysql_fetch_array($req);
	$dispo = $data[$id];
	
	$sql = "SELECT cha FROM joueurs_stats WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$charisme = $data[0];
	
	$sql = "SELECT pvs, cout_argent, cout_mana FROM creatures_stats WHERE nom = '$creature'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$pvs = $data[0];
	$argent = $data[1];
	$mana = $data[2];
	
	$sql = "SELECT niveau, mana, argent FROM joueurs_stats WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau = $data[0];
	$mana_dispo = $data[1];
	$argent_dispo = $data[2];
	
	$sql = "SELECT `mana_consommation` FROM joueurs_modificateurs WHERE nom = '".$nom."'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$mana_consommation = $data[0];
	
	if ($qtee < 0){$qtee = 0;}
	$cout_argent = $qtee * $argent;
	$mod = pow(($charisme + 20), 1/5);
	$cout_argent = round(($cout_argent*2)/$mod);
	$cout_mana = ($qtee * $mana * $mana_consommation);
	
	if ($cout_argent > $argent_dispo)
		$text = "Vous ne possédez pas suffisamment d\'or.";
	if ($cout_mana > $mana_dispo)
		$text = "Vous ne possédez pas suffisamment de points de magie.";
	if ($dispo < $qtee)
		$text = "Il n\'y a pas suffisamment de créatures disponibles.";
	
	if ($dispo >= $qtee AND $argent_dispo >= $cout_argent AND $mana_dispo >= $cout_mana)
	{
		$sql = "SELECT * FROM joueurs_créatures WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_6.'<br>'.mysql_error());
		$data = mysql_fetch_array($req);
		$deja = $data[$id];
		
		$sql = "SELECT pvstotal, population FROM joueurs_modificateurs WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$pvstotal = $data[0];
		$population = $data[1];
		
		$pvstotal = $pvstotal + ($pvs*$qtee);
		
		$nouveau_1 = $deja + $qtee;
		$nouveau_2 = $dispo - $qtee;
		
		$argent_reste = $argent_dispo - $cout_argent;
		$mana_reste = $mana_dispo - $cout_mana;
		
		$sql = "SELECT total FROM joueurs_terre WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$terre_total = $data[0];
		
		include("puissance.php");
		
		$sql = "UPDATE `joueurs_heros` SET `puissance` = '$puissance' WHERE nom ='$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_stats` SET `puissance` = '$puissance' WHERE nom ='$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_créatures` SET `$id` = '$nouveau_1' WHERE nom ='$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_stats` SET `argent` = '$argent_reste', `mana` = '$mana_reste' WHERE nom ='$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_créatures_id` SET `$id` = '$nouveau_2' WHERE nom ='$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		$sql = "UPDATE `joueurs_modificateurs` SET `pvstotal` = '$pvstotal' WHERE nom ='$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		
		mysql_close();
		
		echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onLoad="setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
	}
	else
	{
		echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head><title></title></head>
			<body onload="alert(\''.$text.'\'); setTimeout(\'self.close()\',0)" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"></body></html>';
	}
}


