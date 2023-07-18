<?php

include('connect.php');

function getRacesList() {
  $i = 0;
  $req = mysql_query("SELECT * FROM races") or die(mysql_error());
  while ($data = mysql_fetch_array($req)) {
    echo '<a id="race-'.$i.'"><li>'.$data['race'].'</li></a>';
    $i++;
  }
}

function getClassesList() {
  $i = 0;
  $req = mysql_query("SELECT * FROM classes") or die(mysql_error());
  while ($data = mysql_fetch_array($req)) {
    echo '<li id="class-'.$i.'">'.$data['classe'].'</li>';
    $i++;
  }
}

function getGodsList() {
  $i = 0;
  $req = mysql_query("SELECT * FROM stats_dieux") or die(mysql_error());
  while ($data = mysql_fetch_array($req)) {
    echo '<li id="god-'.$i.'">'.$data['nom'].', '.$data['dieu'].'</li>';
    $i++;
  }
}
// function getDescRace($id) {
//   $req = mysql_query("SELECT * FROM races WHERE id = '".$id."' ");
//   while ($data = mysql_fetch_array($req)) {
//     $nomRace = $data['race'];
//     echo $data['race'];
//     echo $data['att'];
//     echo $data['def'];
//     echo $data['ini'];
//     echo $data['end'];
//     echo $data['pui'];
//     echo $data['cha'];
//     echo $data['aptitude'];
//     echo $data['t_favoris'];
//     echo $data['image'];
//     echo $data['description'];
//     return $nomRace;
//   }
//   getRaciales($nomRace);
// }
// function getRaciales($nomRace) {
//   $req = mysql_query("SELECT nom FROM creatures WHERE raciale = '".$nomRace."' ");
//   while ($data = mysql_fetch_array($req)) {
//     echo $data[0];
//   }
// }

function getDescClass() {

}

function getDescGod() {

}
 ?>
