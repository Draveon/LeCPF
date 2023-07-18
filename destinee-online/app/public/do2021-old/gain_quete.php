<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}
include ("debut.php");
include ("menu.php");
entete("Lieu étrange");

include("connect.php");

$royaume = $_SESSION['royaume'];
$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];

$sql = "SELECT * FROM joueurs_quetes WHERE nom = '".$nom."'";
$result = mysql_query($sql) or die(mysql_error());

$data = mysql_fetch_array($result);


if($data['caverne'] == 1 && $data['plaine'] == 1 && $data['désert'] == 1 && $data['montagne'] == 1 && $data['riverain'] == 1 && $data['caverne'] == 1 && $data['forêt'] == 1 && $data['arctique'] == 1 && $data['marais'] == 1 && $data['objet'] == 0)
{

	echo " Arrivé en ces lieux étranges, vous découvrez un coffre.<br>
		   Sur ce coffre se trouve neufs emplacements, chacun ayant la forme d'un des neufs pentacles.<br>
		   Vous décidez alors d'y poser vos pentacles un à un.<br>
		   Une fois le dernier pentacle posé un déclic se fait entendre.<br>
		   Vous ouvrez le coffre et découvrez un objet oublié depuis longtemps : La boîte de Pandore.<br>
		   <br><br><br>";
		   
		   
		   $a = 1;
	for ($i=1; $i<17; $i++)
	{
    	$sql = "SELECT * FROM joueurs_objets WHERE nom = '$nom'";
        $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
        $data = mysql_fetch_array($req);
        $slot = $data[$i];

        if ($slot == 0 && $a==1)
		{
        	$sql = "UPDATE `joueurs_objets` SET `$i` = '133' WHERE nom ='$nom'";
            $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
            $sql = "UPDATE joueurs_quetes SET objet ='1' WHERE nom = '$nom'";
			mysql_query($sql) or die(mysql_error());
			$a = 0;
			echo"Un nouvel objet s'ajoute à votre inventaire.<br><br>"; 
        }
    }
	if($a==1)
	{
		echo "Vous n'avez plus assez de place vous devez laissez cet objet sur place.";
	}	   

	
	
}
else if($data['caverne'] == 1 && $data['plaine'] == 1 && $data['désert'] == 1 && $data['montagne'] == 1 && $data['riverain'] == 1 && $data['caverne'] == 1 && $data['forêt'] == 1 && $data['arctique'] == 1 && $data['marais'] == 1 && $data['objet'] == 1)
{
	echo "Vous avez déjà obtenu le trésor qui se trouvait en ces lieux";
}
else
{
	echo "Vous voyez un étrange coffre mais impossible de l'ouvrir";
}
		   

mysql_close();
include("fin.php");
?>
