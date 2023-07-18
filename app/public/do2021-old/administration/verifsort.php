<? session_start(); 



include("connect_p.php"); 

$serveur=1;



$sql="SELECT * FROM joueurs_infos";
$result = mysql_query($sql)or die(mysql_error());



echo "Pour le serveur :".$serveur."<br>";

for($j=0;$j<mysql_num_rows($result);$j++)
{
	$data = mysql_fetch_array($result);
	$nom = $data['nom'];
	$cpt = 0;
	
	$sql2="SELECT * FROM joueurs_sorts WHERE nom = '$nom'";
	$result2 = mysql_query($sql2);
	$data2 = mysql_fetch_row($result2);
	for($i=2;$i<32;$i++)
	{
			
		$id = $data2[$i];
		
		if($id == 0)
		{
		}
		else
		{
			$cpt++;
		}

	}
	$sql3="SELECT nombre FROM joueurs_sorts WHERE nom = '$nom'";
	$result3 = mysql_query($sql3);
	$data3 = mysql_fetch_row($result3);	
	$nombre = $data3[0];  
	if($cpt>$nombre)
	{
		$nombre = $cpt - $nombre;
		echo"le joueur $nom	est en infraction il a $nombre sorts en trop<br>";
	}
	
}

include("connect_b.php"); 

$serveur=2;



$sql="SELECT * FROM joueurs_infos";
$result = mysql_query($sql);

$sql2="SELECT * FROM joueurs_sorts WHERE nom = '$nom'";
$result2 = mysql_query($sql2);

echo "Pour le serveur :".$serveur."<br>";

for($j=0;$j<mysql_num_rows($result);$j++)
{
	$data = mysql_fetch_array($result);
	$nom = $data['nom'];
	$cpt = 0;
	
	$sql2="SELECT * FROM joueurs_sorts WHERE nom = '$nom'";
	$result2 = mysql_query($sql2);
	$data2 = mysql_fetch_row($result2);
	for($i=2;$i<32;$i++)
	{
			
		$id = $data2[$i];
		
		if($id == 0)
		{
		}
		else
		{
			$cpt++;
		}

	}
	$sql3="SELECT nombre FROM joueurs_sorts WHERE nom = '$nom'";
	$result3 = mysql_query($sql3);
	$data3 = mysql_fetch_row($result3);	
	$nombre = $data3[0];  
	if($cpt>$nombre)
	{
		$nombre = $cpt - $nombre;
		echo"le joueur $nom	est en infraction il a $nombre sorts en trop<br>";
	}
	
}

include("connect_a.php"); 

$serveur=3;



$sql="SELECT * FROM joueurs_infos";
$result = mysql_query($sql);

$sql2="SELECT * FROM joueurs_sorts WHERE nom = '$nom'";
$result2 = mysql_query($sql2);


echo "Pour le serveur :".$serveur."<br>";

for($j=0;$j<mysql_num_rows($result);$j++)
{
	$data = mysql_fetch_array($result);
	$nom = $data['nom'];
	$cpt = 0;
	
	$sql2="SELECT * FROM joueurs_sorts WHERE nom = '$nom'";
	$result2 = mysql_query($sql2);
	$data2 = mysql_fetch_row($result2);
	for($i=2;$i<32;$i++)
	{
			
		$id = $data2[$i];
		
		if($id == 0)
		{
		}
		else
		{
			$cpt++;
		}

	}
	$sql3="SELECT nombre FROM joueurs_sorts WHERE nom = '$nom'";
	$result3 = mysql_query($sql3);
	$data3 = mysql_fetch_row($result3);	
	$nombre = $data3[0];  
	if($cpt>$nombre)
	{
		$nombre = $cpt - $nombre;
		echo"le joueur $nom	est en infraction il a $nombre sorts en trop<br>";
	}
	
}

?>
