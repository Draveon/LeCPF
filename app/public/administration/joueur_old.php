<?

echo '<form method="post" action="joueur.php">';

echo '<center><br><br><b>GESTION DES JOUEURS</b><br><br><br>';

if (!isset($_POST['joueur'])){
	echo 'Veuillez saisir le nom d\'un joueur :<br>';
	echo '<input type="text" size="20" name="joueur">';
	echo '<select name="srv">
		  <option value="1">1</option>
		  <option value="2">2</option>
		  <option value="3">3</option>
		  </select>';
		  
	echo '<br><br><input type="submit" value="Chercher >>">';
}
else {
	
	switch($_POST['srv']){
		case '1' : include("connect_p.php"); break;
		case '2' : include("connect_b.php"); break;
		case '3' : include("connect_a.php"); break;
	}
	
	if (isset($_POST['total'])){
		for ($i=1; $i<($_POST['total'] + 1); $i++){
			if (isset($_POST[$i])){				
				$sql = 'UPDATE `joueurs_infos` SET `email` = "'.$_POST['ema'.$i].'", `password` = "'.$_POST['pas'.$i].'", `Commentaires` = "'.$_POST['com'.$i].'" WHERE id = "'.$_POST['id'.$i].'"';
        		mysql_query($sql) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
    		}
		}
	}
	
	$sql = 'SELECT joueurs_infos.nom, joueurs_infos.email, joueurs_infos.password, joueurs_infos.ip_dernier, Commentaires, id, ip FROM joueurs_infos WHERE joueurs_infos.nom LIKE "'.trim($_POST['joueur']).'%" ORDER BY nom';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nbr = mysql_num_rows($req);
	
	if ($nbr > 0){
		echo '<center><br><br><table style="width: 60%; text-align: center;" border="1"><tbody>
			  <tr>
			  	  <td></td>
				  <td><b>Nom</td>
				  <td><b>Royaume</td>
				  <td><b>Armada</td>
				  <td><b>Email</td>
				  <td><b>Password</td>
				  <td><b>Dernier_IP</td>
				  <td><b>Premier_IP</td>
				  <td><b>Commentaire</td>
			  </tr>';
		
		for ($i=1; $i<($nbr+1); $i++){
			$dat = mysql_fetch_row($req);
		
			$sq2 = 'SELECT royaume FROM joueurs_heros WHERE nom LIKE "'.$dat[0].'"';
			$re2 = mysql_query($sq2);
			$da2 = mysql_fetch_row($re2);
			$sq3 = 'SELECT guilde FROM joueurs_bonus WHERE nom LIKE "'.$dat[0].'"';
			$re3 = mysql_query($sq3);
			$da3 = mysql_fetch_row($re3);
			
			echo '<input type="hidden" name="id'.$i.'" value="'.$dat[5].'">';
			
			echo '<tr>
			      <td><input type="checkbox" name="'.$i.'" value="1"></td>
				  <td nowrap="nowrap" style="text-align: left;">'.$dat[0].'</td>
				  <td nowrap="nowrap" style="text-align: left;">'.$da2[0].'</td>
				  <td nowrap="nowrap" style="text-align: left;">'.$da3[0].'</td>
				  <td><input type="text" name="ema'.$i.'" value="'.$dat[1].'" style="width: 100%;"> <a href="joueur.php?mode=recherche&quoi=email&value='.$dat[1].'">chercher</a></td>
				  <td><input type="text" name="pas'.$i.'" value="'.$dat[2].'" style="width: 100%;"> <a href="joueur.php?mode=recherche&quoi=passw&value='.$dat[2].'">chercher</a></td>
				  <td>'.$dat[3].' <a href="joueur.php?mode=recherche&quoi=ip&value='.$dat[3].'">chercher</a></td>
				  <td>'.$dat[6].' <a href="joueur.php?mode=recherche&quoi=ip&value='.$dat[6].'">chercher</a></td>
				  <td><input type="text" name="com'.$i.'" value="'.$dat[4].'" style="width: 100%;"></td>
				  </tr>';
		}
		
		echo '</tbody></table>';
	}
	
	echo '<input type="hidden" name="total"  value="'.$nbr.'">';
	echo '<input type="hidden" name="srv"    value="'.$_POST['srv'].'">';
	echo '<input type="hidden" name="joueur" value="'.trim($_POST['joueur']).'">';
	echo '<br><br><input type="submit" value="Modifier >>">';
}

if (isset($_POST['joueur'])){
	echo '<br><br><a href="joueur.php">Retour</a>';
}
else {
	echo '<br><br><a href="administration.php">Retour</a>';
}

?>
