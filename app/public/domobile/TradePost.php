<?
session_start();
if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}  
if ($_POST['Echange']!=1 OR $_POST['Trade']!='Or' OR $_POST['Trade']!='Mana'){
include ('debut.php');
include ('menu.php');
entete('Trading Post');
?>
<form method="post" action="TradePost.php"> 
<table>
<tr>
	<td><input type="radio" name="Trade" value="Or"><strong>Or</strong></td>
	<td>&nbsp;</td>
	<td><input type="radio" name="Trade" value="Mana"><strong>Mana</strong></td>
	<td>&nbsp;</td>
</tr>
<tr>
	<td>Or à échanger:</td>
	<td><input type="text" name="Or_Echange"></td>
	<td>Mana à échanger:</td>
	<td><input type="text" name="Mana_Echange"><br></td>
</tr>
<tr><td><input type="hidden" name="Echange" value="1"><input type="submit" value="Trader"></td></tr> 
</table>
</form>

<?include ("fin.php");}
else
{
include ('debut.php');
include ('menu.php');
entete('Trading Post');
	include('connect.php');
		
	$nom  = $_SESSION['nom'];
	$erreur = 0;
    $sql  = "SELECT mana ,argent FROM joueurs_stats WHERE nom = '$nom'";
    $req  = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $result = mysql_fetch_assoc($req); 
	
    $mana = $result['mana'];
    $argent = $result['argent'];
    
	$Ressource_Echange = $_POST['Trade'];
	if($Ressource_Echange == "Or")
	{
		$Echange_Or = $_POST['Or_Echange'];
		if($argent < $Echange_Or)
		{
			echo"Vous n\'avez pas assez d\'or à échanger";
			$erreur = 1;
        }
        	if($erreur == 1)
        	{
				mysql_close();
        		include ("fin.php");
        		exit;	
        	}
		else
		{
          	$sql = 'SELECT `1`, `2`, `3`, `4`, `5` 
          	FROM joueurs_batiments_id 
          	WHERE nom = "'.$nom.'"';
  		  	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
  	  	  	$data = mysql_fetch_array($req);
  		  	$mana_max = 0;
  		  	for ($i=0; $i<5 ; $i++) {if ($data[$i] != '0') {$mana_max += 10000;}}
            
        	$mana_change = $Echange_Or/3;
			$mana_change = intval(abs($mana_change));
			$mana_new = $mana + $mana_change;
			$argent_new = $argent - $Echange_Or;
            
            if($mana_new > $mana_max)
            {
            	echo"Vous ne pouvez pas acquérir autant de points de magie.";
            }
            else
            {            
            	$sql="UPDATE joueurs_stats SET mana = '$mana_new', argent = '$argent_new' WHERE nom = '$nom'";
            	$req=mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
            
            	echo"Vous avez échangé  $Echange_Or piéces d'or contre  $mana_change points de magie";
            } 
            
            mysql_close();
        	include ("fin.php");
        	exit;         
		}
    }
	else if($Ressource_Echange == "Mana")
	{
		$Echange_Mana = $_POST['Mana_Echange'];
		if($mana < $Echange_Mana)
		{
			echo"Vous n\'avez pas assez de mana à échanger";
			$erreur = 1;
		}
        if($erreur == 1)
        {
			mysql_close();
        	include ("fin.php");
        	exit;	
        }
		else
		{
			$or_change = $Echange_Mana/3;
			$or_change = intval(abs($or_change));
			$argent_new = $argent + $or_change;
			$mana_new = $mana - $Echange_Mana;
            
            $sql="UPDATE joueurs_stats SET mana = '$mana_new', argent = '$argent_new' WHERE nom = '$nom'";
            $req  = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
            
            echo"Vous avez échangé $Echange_Mana points de magie contre $or_change piéces d'or"; 
            
            mysql_close();
        	include ("fin.php");
        	exit;  
		}         
     }
    }
?>
