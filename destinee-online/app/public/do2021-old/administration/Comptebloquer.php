<?
echo '<center><table cellspacing="3"><tr><td align="center">Serveur</td><td align="center">Nom</td><td align="center">Email</td><td align="center">Commentaires</td></tr>'; 

	include("connect_p.php");
    $sql = 'SELECT nom, email, Commentaires FROM joueurs_infos WHERE password="'.md5('Bloquer').'" OR password="'.md5('bloquer').'" ORDER BY nom';
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
    for ($i =0; $i <= mysql_num_rows($req) - 1; $i++) 
	{
    	
   		if (!mysql_data_seek($req, $i)) {
       			echo "Ne peut pointer vers la ligne $i : " . mysql_error() . "\n";
       			continue;
   		}

   		if (!($serveur1 = mysql_fetch_assoc($req))) {
       			continue;
   		}
    	$comment = $serveur1['Commentaires'];
        echo '<tr><td align="center">1</td><td align="center">';
        echo $serveur1['nom'];
        echo '</td><td align="center">';
        echo $serveur1['email'];
        echo '</td><td align="center"><input type="text" value="'.$comment.'" size="50" maxlength="100">';
        echo "</td></tr>";
    }
    
    include("connect_b.php");
    $sql = 'SELECT nom, email, Commentaires FROM joueurs_infos WHERE password="'.md5('Bloquer').'" OR password="'.md5('bloquer').'" ORDER BY nom';
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
    for ($j =0; $j <= mysql_num_rows($req) - 1; $j++)  
	{
    
    	if (!mysql_data_seek($req, $j)) {
       			echo "Ne peut pointer vers la ligne $j : " . mysql_error() . "\n";
       			continue;
   		}

   		if (!($serveur2 = mysql_fetch_assoc($req))) {
       			continue;
   		}
        $comment = $serveur2['Commentaires'];
    	echo '<tr><td align="center">2</td><td align="center">';
        echo $serveur2['nom'];
        echo '</td><td align="center">';
        echo $serveur2['email'];
        echo '</td><td align="center"><input type="text" value="'.$comment.'" size="50" maxlength="100">';
        echo "</td></tr>";
    }
    
    include("connect_a.php");
    $sql = 'SELECT nom, email, Commentaires FROM joueurs_infos WHERE password="'.md5('Bloquer').'" OR password="'.md5('bloquer').'" ORDER BY nom';
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
    for ($k =0; $k <= mysql_num_rows($req) - 1; $k++)  
	{
    
    	if (!mysql_data_seek($req, $k)) {
       			echo "Ne peut pointer vers la ligne $k : " . mysql_error() . "\n";
       			continue;
   		}

   		if (!($serveur3 = mysql_fetch_assoc($req))) {
       			continue;
   		}
        $comment = $serveur3['Commentaires'];
    	echo '<tr><td align="center">3</td><td align="center">';
        echo $serveur3['nom'];
        echo '</td><td align="center">';
        echo $serveur3['email'];
        echo '</td><td align="center"><input type="text" value="'.$comment.'" size="50" maxlength="100">';
        echo "</td></tr>";
    }
echo "</table>";
?>
<br><br><br>
<center><a href="administration.php">Retour</a>
