<?

$serveur = $_GET['serveur'];

if(!isset($_POST['auto'])){
    $automatique = "non";}
else{
    $automatique = $_POST['auto'];
    if ($automatique == "oui"){
        ?>
        <!doctype html public "-//W3C//DTD HTML 4.0 //EN">
        <html>
        <meta http-equiv="refresh" content="2; url=/administration/Automatique.php">
        <head>
        <title>Destinee.com - Administration</title>
        </head><body>
       <?}
}

if ($_POST['efface'] != "0"){
   $joueur = $_POST['efface'];
   include("../administration/choix_serveurs.php");
   include("../effacer.php");
   mysql_close();
   echo "$joueur effacer de la base de données.<br>";
}

if(!isset($_POST['or'])){}
else{
    $temps = ceil(time()/60);
    include("../administration/choix_serveurs.php");
    $sql = "SELECT * FROM joueurs_connexions";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $nblignes = mysql_num_rows($req);
    for($i=0; $i < $nblignes; $i++) {
              $data = mysql_fetch_row($req);
              $nom = $data[1];
              $timer_or = $data[4];

              $result = "SELECT argent FROM joueurs_stats WHERE nom = '$nom'";
              $result = mysql_query($result) or die('Erreur SQL !<br>'.$result.'<br>'.mysql_error());
              $data2 = mysql_fetch_row($result);
              $argent = $data2[0];
              
              $result = "SELECT population FROM joueurs_modificateurs WHERE nom = '$nom'";
              $result = mysql_query($result) or die('Erreur SQL !<br>'.$result.'<br>'.mysql_error());
              $data2 = mysql_fetch_row($result);
              $pop = $data2[0];
              
              $mod =  round(pow($pop, 1/4));

              echo "$nom possède $argent, ";

              $gain = ($temps - $timer_or)*(10 + $mod);  // Le 8 est le nombre d'or gagné par minute
              $argent = ($argent + $gain);
              $sql1 = "UPDATE `joueurs_stats` SET `argent` = '$argent' WHERE nom = '$nom'";
              $req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
              $sql1 = "UPDATE `joueurs_connexions` SET `connexion_or` = '$temps' WHERE nom = '$nom'";
              $req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
              echo "$nom gagne $gain pièces d'or, portant son total à $argent.<br>";
     }
mysql_close();
}


if(!isset($_POST['vieux'])){}
else{
    $temps = ceil(time()/60);
    $limite = $temps - 22320; // 44640 = nb de minutes dans un mois

    include("../administration/choix_serveurs.php");
    $sql = "SELECT nom FROM joueurs_connexions WHERE connexion_dernière < '$limite'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $nblignes = mysql_num_rows($req);

    for($i=0; $i < $nblignes; $i++) {
        $data = mysql_fetch_row($req);
        $joueur = $data[0];
        echo "$joueur<br>";
        include("../effacer.php");
    }
     
    $sql = "SELECT nom FROM joueurs_infos WHERE password = 'bannis'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $nbligne = mysql_num_rows($req);

    for($i=0; $i < $nbligne; $i++) {
        $data = mysql_fetch_row($req);
        $joueur = $data[0];
        echo "$joueur<br>";
        include("../effacer.php");
    }
    
    $nblignes = $nblignes + $nbligne;
    mysql_close();
    echo "$nblignes joueurs effacer au total.<br><br>";
}?>

<br><br><a href="/administration/gerance_comptes.php">-Retour-</a>
