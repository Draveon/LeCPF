<?php 
//Heure actuelle
$time = time();


// $year = $time / 31556926 % 12;
// $week = $time / 86400 % 7;
// $day = $time / 86400 % 7;
// $hour = $time / 3600 % 24;
// $minute = $time / 60 % 60;
// $second = $time;

//Date actuelle
$dateNow = date('Y-m-d');
//Demain
$tomorrow = $time + (24 * 60 * 60); 
//Date demain
$dateTomorrow = date('Y-m-d', $tomorrow);
//Jours et Mois fr
$lundi = "Lundi";
$mardi = "Mardi";
$mercredi = "Mercredi";
$jeudi = "Jeudi";
$vendredi = "Vendredi";
$samedi = "Samedi";
$dimanche = "Dimanche";

$janvier = "Janvier";
$fevrier = "Fevrier";
$mars = "Mars";
$avril = "Avril";
$mai = "Mai";
$juin = "Juin";
$juillet = "Juillet";
$aout = "Août";
$septembre = "Septembre";
$octobre = "Octobre";
$novembre = "Novembre";
$decembre = "Décembre";

$test = $tomorrow - $time;

echo $time;
echo "<br>";
echo $tomorrow;
echo "<br>";
echo $test;
echo "<br>";
echo 1617347490-1617347467;

?>