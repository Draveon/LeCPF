<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Destinée-Online :: Enregistrement des noms de royaumes</title>
</head>
<BODY>

<?

include('connect_p.php');
$sql = "SELECT nom FROM joueurs_heros";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nbr = mysql_num_rows($req);

for($i=0; $i<$nbr; $i++) {
	$dat = mysql_fetch_row($req);
	mysql_close();
	
	// On vérifie si le nom n'est pas déjà dans la BDD
	$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die ('I cannot connect to the database because: ' . mysql_error());
	mysql_select_db("Destinee00"); 
	$sq2 = 'SELECT id FROM usernames WHERE `username` = "'.$dat[0].'"';
	$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
	$nb2 = mysql_num_rows($re2);
	// -----------------------------------------------
	
	if ($nb2 == 0){
		$re3 = 'INSERT INTO `usernames` (`id`, `username`)VALUES ("", "'.$dat[0].'");';
		mysql_query($re3,$db);
		
		echo $dat[0].' a été ajouté<br>';	
	}
	mysql_close();
	include('connect_p.php');
}

include('connect_a.php');
$sql = "SELECT nom FROM joueurs_heros";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nbr = mysql_num_rows($req);

for($i=0; $i<$nbr; $i++) {
	$dat = mysql_fetch_row($req);
	mysql_close();
	
	// On vérifie si le nom n'est pas déjà dans la BDD
	$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die ('I cannot connect to the database because: ' . mysql_error());
	mysql_select_db("Destinee00"); 
	$sq2 = 'SELECT id FROM usernames WHERE `username` = "'.$dat[0].'"';
	$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
	$nb2 = mysql_num_rows($re2);
	// -----------------------------------------------
	
	if ($nb2 == 0){
		$re3 = 'INSERT INTO `usernames` (`id`, `username`)VALUES ("", "'.$dat[0].'");';
		mysql_query($re3,$db);
		
		echo $dat[0].' a été ajouté<br>';	
	}
	mysql_close();
	include('connect_a.php');
}

include('connect_b.php');
$sql = "SELECT nom FROM joueurs_heros";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nbr = mysql_num_rows($req);

for($i=0; $i<$nbr; $i++) {
	$dat = mysql_fetch_row($req);
	mysql_close();
	
	// On vérifie si le nom n'est pas déjà dans la BDD
	$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die ('I cannot connect to the database because: ' . mysql_error());
	mysql_select_db("Destinee00");
	$sq2 = 'SELECT id FROM usernames WHERE `username` = "'.$dat[0].'"';
	$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
	$nb2 = mysql_num_rows($re2);
	// -----------------------------------------------
	
	if ($nb2 == 0){
		$re3 = 'INSERT INTO `usernames` (`id`, `username`)VALUES ("", "'.$dat[0].'");';
		mysql_query($re3,$db);
		
		echo $dat[0].' a été ajouté<br>';	
	}
	mysql_close();
	include('connect_b.php');
}

?>
</body>
</html>
