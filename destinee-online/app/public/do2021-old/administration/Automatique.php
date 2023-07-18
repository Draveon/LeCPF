<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Destinée-Online :: Gain d'or automatisé</title>
       <META HTTP-EQUIV="Refresh" CONTENT="30; URL=/administration/Automatique.php">
</head>
<BODY>

<?

$temps = ceil(time()/60);
include("connect.php");
$sql = "SELECT nom, connexion_or FROM joueurs_connexions";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nblignes = mysql_num_rows($req);
for($i=0; $i < $nblignes; $i++) {
              $data = mysql_fetch_row($req);
              $nom = $data[0];
              $timer_or = $data[1];

              $result = "SELECT argent FROM joueurs_stats WHERE nom = '$nom'";
              $result = mysql_query($result) or die('Erreur SQL !<br>'.$result.'<br>'.mysql_error());
              $data2 = mysql_fetch_row($result);
              $argent = $data2[0];

              $result = "SELECT population FROM joueurs_modificateurs WHERE nom = '$nom'";
              $result = mysql_query($result) or die('Erreur SQL !<br>'.$result.'<br>'.mysql_error());
              $data2 = mysql_fetch_row($result);
              $pop = $data2[0];

              $mod = 2*(pow($pop, 1/4));

              echo "$nom possède $argent, ";

              $gain = ($temps - $timer_or)*(round(5 + $mod));  // Le 1 est le nombre d'or gagné par minute
              $argent = ($argent + $gain);
              $sql1 = "UPDATE `joueurs_stats` SET `argent` = '$argent' WHERE nom = '$nom'";
              $req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
              $sql1 = "UPDATE `joueurs_connexions` SET `connexion_or` = '$temps' WHERE nom = '$nom'";
              $req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
              echo "$nom gagne $gain pièces d'or, portant son total à $argent.<br>";
}
mysql_close();

?>
</body>
</html>
