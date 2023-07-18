<? 
include("connect_p.php");

$sql = "SELECT nom,id FROM joueurs_infos";
$result = mysql_query($sql)or die(mysql_error());
for($i = 0; $i<mysql_num_rows($result);$i++)
{

	$data = mysql_fetch_row($result);
	
	$nom = $data[0];
	$id = $data[1];
	
	$sql2 = "SELECT * FROM joueurs_quetes WHERE nom = '$nom'";
	$result2 = mysql_query($sql2)or die(mysql_error());
	$nombre = mysql_num_rows($result2);
	
	
	if($nombre == 0)
	{
		echo "$id :$nom = $nombre<br>";
		$sql = "INSERT INTO joueurs_quetes VALUES ('$id','$nom','0','0','0','0','0','0','0','0','0','0')";
		mysql_query($sql)or die(mysql_error());
		
	}
}
