<?
include('connect_a.php');
$sql = 'SELECT * FROM creatures_stats WHERE ID > "5" ORDER BY niveau, nom';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

echo '<table border="1" style="text-align: center;"><tbody>';

for ($i=0; $i<mysql_num_rows($req); $i++){
	$dat = mysql_fetch_row($req);

	// Changement de ligne si on débute
	if (!isset($niveau) || $dat[2] != $niveau){
		echo '
		<tr>
		<td><b>Id</b></td>
		<td><b>Créature</b></td>
		<td><b>Niveau</b></td>
		<td><b>Att</b></td>
		<td><b>Def</b></td>
		<td><b>Ini</b></td>
		<td><b>End</b></td>
		<td><b>Hp</b></td>
		<td><b>Dmg</b></td>
		<td><b>Coût OR</b></td>
		<td><b>Coût MANA</b></td>
		<td><b>Total STATS</b></td>
		<td><b>Dmg MOYEN</b></td>
		</tr><tr>';
		
		$niveau = $dat[2];
	}
	else {	
		echo '</tr><tr>';
	}
	
	echo '<td>'.$dat[0].'</td>';
	echo '<td style="text-align: left;">'.$dat[1].'</td>';
	echo '<td>'.$dat[2].'</td>';
	echo '<td>'.$dat[3].'</td>';
	echo '<td>'.$dat[4].'</td>';
	echo '<td>'.$dat[5].'</td>';
	echo '<td>'.$dat[6].'</td>';
	echo '<td>'.$dat[7].'</td>';
	echo '<td>'.$dat[8].' à '.$dat[9].'</td>';

	echo '<td>'.$dat[12].'</td>';
	echo '<td>'.$dat[13].'</td>';
	
	echo '<td>'.($dat[3] + $dat[4] + $dat[5] + $dat[6]).'</td>';
	echo '<td>'.round(($dat[8] + $dat[9]) / 2).'</td>';
}

echo '</tr></tbody></table>';
mysql_close();
?>