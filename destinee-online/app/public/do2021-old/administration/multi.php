<? session_start(); ?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Double-Compte !</title>
</head>
<body>
<center>

<!-- / On réenvoie l'information sur cette page -->
<form method="post" action="multi.php">

<big><b>VÉRIFICATION DES MULTICOMPTES</b></big><br><br><hr style="width: 50%;">

<?

// On définie la limite du nombre de compte
// à vérifier en un seul saisis.
if (isset($_POST['nbr'])){
	$nbr = $_POST['nbr'];
}
else {
	$nbr = 50;
}

if (isset($_POST['debut'])){
	$debut = $_POST['debut'];
}
else {
	$debut = 0;
}
// ----------------------------------------

if (!isset($_POST['Check']) && !isset($_POST['bannir']) && !isset($_POST['bloquer']) && !isset($_POST['ajouter'])){
	echo 'Selon quel critère désirez-vous exécuter votre recherche ?<br><br><br>';
	
	echo '<input type="radio" name="critere" value="password"> - Mot de passe<br>';
	echo '<input type="radio" name="critere" value="ip_dernier"> - Adresse IP<br>';
	echo '<input type="radio" name="critere" value="email"> - Adresse e-mail<br><br>';
	
	echo 'À partir de quel serveur la recherche doit-elle débuter ?<br><br>';
	echo '<input type="radio" name="serv" value="1" checked> - Serv 1';
	echo '<input type="radio" name="serv" value="2"> - Serv 2';
	echo '<input type="radio" name="serv" value="3"> - Serv 3<br><br>';
	
	echo 'Combien de comptes désirez-vous vérifier à la fois ? <input type="text" name="nbr" value="'.$nbr.'" size="3" maxlength="3"><br><br>';
	
	echo '<input type="submit" name="Check" value="Vérifier >>">';
	
	echo '<br><br><small><a href="administration.php">Retour</a>';
}
else {
	
	echo 'Tous les comptes sont classés par ordre de : '.$_POST['critere'].' | Début : '.$debut.' | Nombre de traitements : '.$nbr.'<br><br>';
	
	// On regarde si on doit effacer des joueurs !
	if (isset($_POST['delete']) && isset($_POST['bannir'])){
		
		$y = $_POST['delete'];
		$debut = $debut - $nbr;
		
		for ($i=0; $i<count($y); $i++){
			
			// On va chercher les informations...
			$w = explode(",", $y[$i]);
			
			switch ($w[0]){
				case '1' : include("connect_p.php"); break;
				case '2' : include("connect_b.php"); break;
				case '3' : include("connect_a.php"); break;
			}
			
			$id = $w[1];
			$s = "suppr".$id; 
			
			$t_suppr = $_POST[$s]; 

			mysql_query('UPDATE `joueurs_infos` SET `password` = "bannis" AND `temps_suppr` = "'.$t_suppr.'" WHERE `id` = "'.$w[1].'"') or die(mysql_error());
            
			mysql_close();
		}
		
		echo '<br>';
	}
	
	// On regarde si on doit effacer des joueurs !
	if (isset($_POST['delete']) && isset($_POST['bloquer'])){
		
		$y = $_POST['delete'];
		$debut = $debut - $nbr;
		
		for ($i=0; $i<count($y); $i++){
			
			// On va chercher les informations...
			$w = explode(",", $y[$i]);
			
			switch ($w[0]){
				case '1' : include("connect_p.php"); break;
				case '2' : include("connect_b.php"); break;
				case '3' : include("connect_a.php"); break;
			}
			
			$id = $w[1];
			$s = "suppr".$id;  
			
			$t_suppr = $_POST[$s]; 
			
			mysql_query('UPDATE `joueurs_infos` SET `password` = "'.md5("bloquer").'" AND `temps_suppr` = "'.$t_suppr.'" WHERE `id` = "'.$w[1].'"') or die(mysql_error());
            
			mysql_close();
		}
		
		echo '<br>';
	}
	
	// On regarde pour écrire les commentaires !
	if (isset($_POST['delete'])){
		
		$y = $_POST['delete'];
		$debut = $debut - $nbr;
		
		if ($debut < 0){$debut = 0;}
		
		for ($i=0; $i<count($y); $i++){
			
			// On va chercher les informations...
			$w = explode(",", $y[$i]);
			$z = $_POST['comments'];
			
			switch ($w[0]){
				case '1' : include("connect_p.php"); break;
				case '2' : include("connect_b.php"); break;
				case '3' : include("connect_a.php"); break;
			}
			
			mysql_query('UPDATE `joueurs_infos` SET `commentaires` = "'.$_POST['comments_'.$w[1]].'" WHERE `id` = "'.$w[1].'"') or die(mysql_error());
          	
			$id = $w[1];
			$s = "suppr".$id;  
			
			$t_suppr = $_POST[$s]; 
			mysql_query('UPDATE `joueurs_infos` SET `temps_suppr` = "'.$t_suppr.'" WHERE `id` = "'.$w[1].'"') or die(mysql_error());
            
			mysql_close();
		}
		
		echo '<br>';
	}
	
	// On redéfinie, en cas d'oublie...
	if (!isset($_POST['critere'])){$_POST['critere'] = 'password';}
	$x = 0;
	$z = array();
	
	// On se connecte à la première BDD
	switch($_POST['serv']){
		case '1' :include("connect_p.php"); break;
		case '2' :include("connect_b.php"); break;
		case '3' :include("connect_a.php"); break;
	}

	// Requête spéciale ici afin d'éviter ceux qui n'ont simplement pas de ip_dernier
	if ($_POST['critere'] == 'ip_dernier'){		
		$sq1 = 'SELECT '.$_POST['critere'].' FROM joueurs_infos WHERE `ip_dernier` != "" ORDER BY '.$_POST['critere'].' LIMIT '.$debut.', '.$nbr.'';
		$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$nb1 = mysql_num_rows($re1);
	}
	else {
		$sq1 = 'SELECT '.$_POST['critere'].' FROM joueurs_infos ORDER BY '.$_POST['critere'].' LIMIT '.$debut.', '.$nbr.'';
		$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$nb1 = mysql_num_rows($re1);
	}

	for ($i=0;$i<$nb1;$i++){
	    $da1 = mysql_fetch_row($re1);

	    if (!in_array("$da1[0]", $z)){
		    $z[] = $da1[0];
		    
		    $id   = array();
		    $nom  = array();
		    $emai = array();
		    $ip   = array();
		    $ip_d = array();
		    $comm = array();
		    $srv  = array();
		    $pass = array(); 
		    
		    $sq2 = 'SELECT id, nom, email, ip, ip_dernier, commentaires, password FROM joueurs_infos WHERE `'.$_POST['critere'].'` = "'.$da1[0].'"';
			$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
			$nb2 = mysql_num_rows($re2);
		    
			for ($j=0; $j<$nb2; $j++){
		    	$da2 = mysql_fetch_row($re2);
		    	
		    	$id[]   = $da2[0];
		    	$nom[]  = $da2[1];
		    	$emai[] = $da2[2];
		    	$ip[]   = $da2[3];
		    	$ip_d[] = $da2[4];
		    	$comm[] = $da2[5];
		    	$pass[] = $da2[6];
                switch($_POST['serv']){
				case '1' :$srv[]  = 1; break;
				case '2' :$srv[]  = 2; break;
				case '3' :$srv[]  = 3; break;
				}
		    	    	
		    }	    
		    mysql_close();
		    
		    // Connection au serveur 2  
	    	switch($_POST['serv']){
				case '1' :include("connect_b.php"); break;
				case '2' :include("connect_a.php"); break;
				case '3' :include("connect_p.php"); break;
			}
				
		    $sq2 = 'SELECT id, nom, email, ip, ip_dernier, commentaires, password FROM joueurs_infos WHERE `'.$_POST['critere'].'` = "'.$da1[0].'"';
			$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
			$nb2 = mysql_num_rows($re2);
		    
			for ($j=0; $j<$nb2; $j++){
		    	$da2 = mysql_fetch_row($re2);
		    	
		    	$id[]   = $da2[0];
		    	$nom[]  = $da2[1];
		    	$emai[] = $da2[2];
		    	$ip[]   = $da2[3];
		    	$ip_d[] = $da2[4];
		    	$comm[] = $da2[5];
		    	$pass[] = $da2[6];
		    	switch($_POST['serv']){
				case '1' :$srv[]  = 2; break;
				case '2' :$srv[]  = 3; break;
				case '3' :$srv[]  = 1; break;
				}     	
		    }	    
		    mysql_close();
		    
		    // Connection au serveur 3
		    switch($_POST['serv']){
				case '1' :include("connect_a.php"); break;
				case '2' :include("connect_p.php"); break;
				case '3' :include("connect_b.php"); break;
			}
			
		    $sq2 = 'SELECT id, nom, email, ip, ip_dernier, commentaires, password FROM joueurs_infos WHERE `'.$_POST['critere'].'` = "'.$da1[0].'"';
			$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
			$nb2 = mysql_num_rows($re2);
		    
			for ($j=0; $j<$nb2; $j++){
		    	$da2 = mysql_fetch_row($re2);
		    	
		    	$id[]    = $da2[0];
		    	$nom[]   = $da2[1];
		    	$emai[]  = $da2[2];
		    	$ip[]    = $da2[3];
		    	$ip_d[]  = $da2[4];
		    	$comm[]  = $da2[5];
		    	$pass[]  = $da2[6];
		    	switch($_POST['serv']){
				case '1' :$srv[]  = 3; break;
				case '2' :$srv[]  = 1; break;
				case '3' :$srv[]  = 2; break;
				}     	
		    }
		    mysql_close();	
		    
		    if (count($id) > 1){
			    
			    if ($x == 0){echo '<table style="width: 900px;" border="0"><tbody><tr><td></td><td><b>Srv</td><td><b>Id</td><td><b>Nom</td><td><b>Password</td><td><b>Email</td><td><b>Ip</td><td><b>Ip_dernier</td><td><b>Commentaires</td><td><b>Temps avant Suppression</td>';}
			    
			    // On tient le compte des comptes douteux
			    $x++;		    
			    
			    for ($k=0; $k<count($id); $k++){
				    echo '<tr><td><input type="checkbox" name="delete[]" value="'.$srv[$k].','.$id[$k].'"></td><td nowrap="nowrap">'.$srv[$k].'</td><td nowrap="nowrap">'.$id[$k].'</td><td nowrap="nowrap" style="text-align: left;"> - '.$nom[$k].'</td><td nowrap="nowrap">'.md5($pass[$k]).'</td><td nowrap="nowrap">'.$emai[$k].'</td><td nowrap="nowrap">'.$ip[$k].'</td><td nowrap="nowrap">'.$ip_d[$k].'</td><td>';
				    
				    echo '<input type="text" name="comments_'.$id[$k].'" value="';
				    
				    if ($comm[$k] != ''){
					    echo $comm[$k];
					}
					else {
						echo 'Null';
					}
										    		    
				    echo '" size="40"></td>';
					
					include('connect.php');
					
					$sq2 = 'SELECT temps_suppr FROM joueurs_infos WHERE `id` = "'.$id[$k].'"';
					$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
					$data2 = mysql_fetch_array($re2);
					
					mysql_close();	
					
					$suppr = $data2[0];
					$ide = $id[$k];
					
					$temps = round($suppr / 1440);
										
					
					$temps_suppr[$k] = ''.$temps.' jours';
					$suppr = "suppr".$ide;
					
					echo"<td nowrap='nowrap'><select name='$suppr'><option value ='".$suppr[$k]."' selected>".$temps_suppr[$k]."</option>";
					echo'
       					<option value="1440"> 1 jour</option>
       					<option value="2880"> 2 jours</option>
       					<option value="4320"> 3 jours</option>
       					<option value="5760"> 4 jours</option>
       					<option value="7200"> 5 jours</option>
       					<option value="8640"> 6 jours</option>
       					<option value="10080"> 7 jours</option>
       					<option value="20160"> 14 jours</option>
       					<option value="30240"> 21 jours</option>
       				</select></td>';
					echo'</tr>';
			    }
  
			    echo '</tr><tr><td colspan="25"><hr style="width: 75%;"></td></tr>';
		    }
	    
		    // On réonriente la connection vers le premier serveur
		    switch($_POST['serv']){
				case '1' :include("connect_p.php"); break;
				case '2' :include("connect_b.php"); break;
				case '3' :include("connect_a.php"); break;
			}
		    // -----------------------
	    }
	}
	
	if ($x == 0){
		echo '<center><b>Aucun compte douteux...</b><br><br><b>'.($debut + $nbr).' comptes ont été traités.<br><br>';
	}
	else {
		echo '</tbody></table><br>';
	}
	
	if ($nb1 != 0){	
		echo '<input type="hidden" name="nbr"     value="'.$_POST['nbr'].'">';
		echo '<input type="hidden" name="debut"   value="'.($debut + $nbr).'">';
		echo '<input type="hidden" name="critere" value="'.$_POST['critere'].'">';
		echo '<input type="hidden" name="serv" value="'.$_POST['serv'].'">';
		
		echo '<input type="submit" name="ajouter" value=" Écrire "> | <input type="submit" name="bloquer" value=" Bloquer "> | <input type="submit" name="bannir" value=" Bannir "> | <input type="submit" name="Check" value=" Poursuivre ">';
	}
	else {
		echo '<center><b>Il n\'y a plus de compte à traité !</b>';
	}
	
	echo '<br><br><small><a href="multi.php">Retour</a>';
	
	mysql_close();	
}
?>
</body>
</html>
