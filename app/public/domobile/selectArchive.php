<?php
include("connect.php");
$query = "SELECT * FROM combat_joueurs WHERE id = '".$_POST["archive_id"]."'";
     $result = mysql_query($query);
     while($data = mysql_fetch_array($result))
     {
          $output .= '
                  <div><h4>Date - '.$data["date"].'</h4></div>
                  <p>
                    '.$data["texte1"].'
                  </p>
               ';
     }
     echo $output;

     ?>
