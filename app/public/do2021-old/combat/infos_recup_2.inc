<?php

$sql = 'SELECT niveau, puissance, xp, argent FROM joueurs_stats WHERE nom = "'.$nom.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$niv_h = $data[0];
$puissance_h = round($data[1]/2);
$xp_deja_att = $data[2];
$argent_att = $data[3];
$puissance_att = $data[1];
$sql = 'SELECT niveau, xp, argent, puissance FROM joueurs_stats WHERE nom = "'.$cible.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$niv_c = $data[0];
$xp_deja_def = $data[1];
$argent_def = $data[2];
$puissance_def = $data[3];

$sql = 'SELECT pvstotal, population, population2 FROM joueurs_modificateurs WHERE nom = "'.$nom.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pvstotalatt = $data[0];
$pop_h = $data[1];
$pop2_h = $data[2];
$sql = 'SELECT pvstotal, population, population2 FROM joueurs_modificateurs WHERE nom = "'.$cible.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$pvstotaldef = $data[0];
$pop_c = $data[1];
$pop2_c = $data[2];

$sql1 = 'SELECT * FROM joueurs_terre WHERE nom = "'.$cible.'"';
$req1 = mysql_query($sql1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
$terre_tot = mysql_fetch_array($req1);
$total_c = $terre_tot['total'];
$new_tot2 = $total_c;
$sql2 = 'SELECT * FROM joueurs_terre_utile WHERE nom = "'.$cible.'"';
$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
$terre_utile = mysql_fetch_array($req2);
$utile_c = $terre_utile['total'];

$sql3 = 'SELECT * FROM joueurs_terre WHERE nom = "'.$nom.'"';
$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
$terre_tot_h = mysql_fetch_array($req3);
$total_h = $terre_tot_h['total'];
$new_tot1 = $total_h;

?>
