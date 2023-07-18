<?php  session_start();

  $req  = mysql_query("SELECT date_derniere_connexion FROM joueurs_bonus WHERE nom = '".$nom."'") or die(mysql_error());
  $data = mysql_fetch_row($req);
  $date_conn = $data[0];
  $date_conn = floatval($date_conn);
   $temps = floor(time()/60);


  if ($date_conn == 0) {
    $sql = "UPDATE joueurs_bonus SET date_derniere_connexion = '".$temps."' WHERE nom = '".$nom."'";
    $req = mysql_query($sql) or die(mysql_error());
  }


  $req  = mysql_query("SELECT niveau, puissance FROM joueurs_stats WHERE nom = '".$nom."'") or die(mysql_error());
  $dataXp = mysql_fetch_row($req);

if ($actual_db == 2 && $niveau) {
  $butdate = floor($date_conn);

  if ($date_conn != $temps) {
    if (($temps*60) >= $butdate ) {
       echo "OKAAAAY".$diff/1000;
      $sql = "UPDATE joueurs_bonus SET date_derniere_connexion = '".$temps."' WHERE nom = '".$nom."'";
      $req = mysql_query($sql) or die(mysql_error());

      // On donne la récompense journalière en xp
      $niveau = $dataXp[0];
      // echo "Niv ".$niveau;
      $puissance = $dataXp[1];
      // echo "Puis ".$puissance;
      $newXp = round((((((0.005)*100)+($puissance/(1000000/$niveau))*60)*24)/2));
      $newXpText = '<div id="recompText" class="recompText fade">Vous gagnez '.$newXp.' points d\'expérience ! </p>
      <p> Merci pour votre fidélité, revenez dans 24 heures pour obtenir une nouvelle récompense ;)</div>';

      //maj de l'xp
      $sql = "UPDATE joueurs_stats SET xp = xp + '".$newXp."' WHERE nom = '".$nom."'";
      $req = mysql_query($sql) or die(mysql_error());
    } else {
           echo "Not OK".$diff/1000;
         }
  }
}

 ?>
