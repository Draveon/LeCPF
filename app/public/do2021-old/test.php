<?php

$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die (mysql_error());
mysql_select_db("Destinee03");

$sql = "SELECT id FROM joueurs_infos";
$res = mysql_query($sql) or die(mysql_error());

while($data = mysql_fetch_array($res))
{

  $id = $data['id'];
  $sql = "SELECT * FROM joueurs_terre WHERE id='$id'";
  $res2 = mysql_query($sql) or die(mysql_error());
  
  $data2 = mysql_fetch_row($res2);
  
  $total = $data2[2] + $data2[3] + $data2[4] + $data2[5] + $data2[6] + $data2[7] + $data2[8] + $data2[9] + $data2[10];
  
  if ($total != $data2[11])
  {
  $sql = "UPDATE joueurs_terre SET total='$total' WHERE id='$id'";
  mysql_query($sql) or die(mysql_error());
  
  $sql = "UPDATE joueurs_modificateurs SET population='1000000' WHERE id='$id'";
  mysql_query($sql) or die(mysql_error());
  }
  else
  {}

}

?>
