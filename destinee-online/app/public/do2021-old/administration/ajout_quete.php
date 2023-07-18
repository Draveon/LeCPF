<?
include("connect_b.php"); 


$sql = "SELECT * FROM joueurs_stats";
$result = mysql_query($sql);

for($i=0;$i<mysql_num_rows($result);$i++)
{	
	$data = mysql_fetch_row($result);
	$id = $data[0];
	$nom = $data[1];
	
	$sql ="INSERT INTO joueurs_quetes VALUES('$id', '$nom', 0, 0, 0, 0, 0, 0, 0, 0, 0)";
	mysql_query($sql);	
	
	
}