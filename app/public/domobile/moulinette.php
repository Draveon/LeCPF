<?
  $db = mysql_connect("localhost", "destinee", "9HUMWpIU") or die ('I cannot connect to the database because: ' . mysql_error());

  mysql_select_db("destinee03"); 

// $sql = 'SELECT nom
$sql = 'SELECT *
        FROM joueurs_terre_utile';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$nombre = mysql_num_rows($req);

$l_terrain = array('riverain','colline','désert','forêt','arctique','marais','montagne','plaine','caverne');

$nb_t = 0;

for ($i=0 ; $i < $nombre ; $i++)
{
  $data = mysql_fetch_row($req);
  $nom = $data[1];
  $somme = $data[2] + $data[3] + $data[4] + $data[5] + $data[6] + $data[7] + $data[8] + $data[9] + $data[10];
  $total = $data[11];

  if ($somme != $total) 
  {
    echo '<br>'.$nom.' : somme = '.$somme.', total = '.$total;
    $nb_t += 1;
    $sql4 = 'UPDATE joueurs_terre_utile
             SET `total` = "'.$somme.'" 
             WHERE nom = "'.$nom.'"';
//    $req4 = mysql_query($sql4) or die('Erreur SQL !<br>'.$sql4.'<br>'.mysql_error());
  }
}

echo '<br>'.$nb_t.' joueurs mis à jour';

?>
