<?php
	
	include('connect.php');

	$req = mysql_query('SELECT id FROM joueurs_stats DESC puissance');
	for ($i=0; $i < $req.length(); $i++) { 
		$dat = mysql_fetch_row($req);
		$q = $dat[i];
	}
?>

<table>
	<th>exemple</th>
	<tr>
		<td><?php echo "$q"; ?></td>
	</tr>	
	<tr>
		<td>test2</td>
	</tr>	
	<tr>
		<td>test3</td>
	</tr>
</table>