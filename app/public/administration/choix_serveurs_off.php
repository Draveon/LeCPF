<?php
switch($serveur_off){
    case '0' : include("connect_0.php"); break;
    case '1' : include("connect_p.php"); break;
    case '2' : include("connect_b.php"); break;
    case '3' : include("connect_a.php"); break;
    case '4' : include("connect_4.php"); break;
}
?>