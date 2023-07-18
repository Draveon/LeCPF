<? session_start();

$nom = $_SESSION['nom'];
?>

<!--<noscript>
<meta http-equiv="Refresh" content="0;URL=http://www.allopass.com/check/error_code.php4?DOC_ID=298426&SITE_ID=93912">
</noscript>
<script language="Javascript" src="http://www.allopass.com/check/chk.php4?IDD=298426&IDS=93912"></script>--> 


<noscript>
 <meta http-equiv="Refresh" content="0;URL=http://www.allopass.com/check/error_code.php4?DOC_ID=357354&SITE_ID=130643">
</noscript>
<script type="text/javascript" language="Javascript" src="http://www.allopass.com/check/chk.php4?IDD=357354&IDS=130643"></script>
			  

<?
include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("./menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}

entete("Faire un don !");

include("connect.php");
$sql = 'SELECT connexion_bonus FROM joueurs_connexions WHERE nom = "'.$nom.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$dat = mysql_fetch_row($req);
// ---------------------------

echo '<table border="0" style="width: 630px; text-align: left;"><tbody><tr><td>';

if ($dat[0] < ((time()/60) - 1440)){
	
	if (!isset($_POST['code']) || $_POST['code'] != $_POST['check']){
		
		echo '<strong><span style="font-family: papyrus;">Validation...</span></strong><br>';
		
		echo '<form method="POST" action="allopass_ressources.php">';
		
		$code = mt_rand(10000, 99999);
		
		echo '<input type="hidden" name="check" value="'.$code.'">';
		echo '<center>Entrez ce code pour obtenir vos ressources : '.$code.'<br>
			<input type="text" size="5" name="code" value="Code"><br><br>
			<input type="submit" value="Go >>">';
			
	}
	else {
	    $sql = 'SELECT soufre, mercure, cristal, gemme FROM joueurs_stats WHERE nom = "'.$nom.'"';
	    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	    $dat = mysql_fetch_row($req);
	    
	    $gain_s = mt_rand(15,30);
	    $gain_m = mt_rand(15,30);
	    $gain_c = mt_rand(15,30);
	    $gain_g = mt_rand(15,30);
	    
	    $souf = $dat[0] + $gain_s;
	    $merc = $dat[1] + $gain_m;
	    $cris = $dat[2] + $gain_c;
	    $gemm = $dat[3] + $gain_g;
	      
	    $sql = 'UPDATE `joueurs_stats` SET
	    		`soufre` = "'.$souf.'",
	    		`mercure` = "'.$merc.'",
	    		`cristal` = "'.$cris.'",
	    		`gemme` = "'.$gemm.'"
	    		WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql); 
		
		$req = "INSERT INTO `dons` (`nom`, `soufre`, `mercure`, `cristal`, `gemme`, `gain_s`, `gain_m`, `gain_c`, `gain_g`) VALUES ('$nom', '$dat[0]', '$dat[1]', '$dat[2]', '$dat[3]', '$gain_s', '$gain_m', '$gain_c', '$gain_g');";
        mysql_query($req);
		
		$sql = 'UPDATE `joueurs_connexions` SET `connexion_bonus` = "'.floor(time()/60).'" WHERE nom = "'.$nom.'"';
		$req = mysql_query($sql);
		
		?>
		<strong><span style='font-family: papyrus;'>Merci !</span></strong><br>
		
		<center><b>Votre don a bel et bien été effecté. Mille merci !</b><br><br>
		Vous pouvez désormais profiter de vos nouvelles ressources !	
		
		<?
	}
}

else {
	echo '<br><center>On tente de tricher... ?';
}

echo '</td></tr></tbody></table>';

// Fermeture de la connection
mysql_close();

include("fin.php");
