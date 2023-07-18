<? 
include("connect_b.php");

$sql = "SELECT VOTANT,VOTE FROM votant_palatinat";
$result = mysql_query($sql)or die(mysql_error());
for($i = 0; $i<mysql_num_rows($result);$i++)
{

	
	
	$data = mysql_fetch_row($result);
	
	$votant = $data[0];
	$vote = $data[1];
	
	$sql2 = "SELECT province FROM joueurs_bonus WHERE nom = '$votant'";
	$result2 = mysql_query($sql2)or die(mysql_error());
	$data2 = mysql_fetch_row($result2);
	echo "$sql2<br>";
	
	$province_votant = $data2[0];
	
	echo "$province_votant<br>";
	$sql2 = "SELECT NOM FROM candidat_palatinat WHERE ID = '$vote'";
	$result2 = mysql_query($sql2)or die(mysql_error());
	$data2 = mysql_fetch_row($result2);
	
	$candidat_vote = $data2[0];
	
	$sql2 = "SELECT province FROM joueurs_bonus WHERE nom = '$candidat_vote'";
	$result2 = mysql_query($sql2)or die(mysql_error());
	$data2 = mysql_fetch_row($result2);
	
	$province_vote = $data2[0];
	
	
	if($province_votant != $province_vote)
	{
		echo "$votant = $province_votant :$candidat_vote = $province_vote<br>";
		$sql = "DELETE FROM votant_palatinat WHERE VOTANT ='$votant'";
		mysql_query($sql)or die(mysql_error());
		
	}
}
