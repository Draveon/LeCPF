<?php
// execute chaque 1er du moi la mise à jour du HOF.

function execPhp($file,$mois, $annee, $srv, $pg){
$tmp = "php ".$file."?date=".$mois."%20".$annee."&serveur=Serveur%20".$srv."&classement=".$pg."&creerhof=true";
//echo($tmp);
exec($tmp);
}

function incrementHofArray($mois, $annee, $file){
$str =sprintf(',array("%s %s","%s%s_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)',$mois,$annee,$annee,$mois);
system("sed -i '/replaceAinkurn/i $str' ./$file");//on ajoute avant le pattern ainkurn
}

try {
if(date("d") == "01"){//on le fait le premier jour du mois c'est tout => le premier connecté lance ce script, puis les autres aussi, mais il ne fait plus rien
//ajout dans le tableau du hof
$file = "hof.php";
$mois = date('M', strtotime("last month"));
$annee = date("y");


//teste que c'est pas déja fait 
system(sprintf("grep -q %s%s_ %s;",$annee,$mois,$file), $retval);
if($retval == 1 ){//array pas encore augmenté...
incrementHofArray($mois, $annee, $file);//on l'augmente...
$serv = array("1","2");
$page= array("puissance", "xp", "vict", "ratioVT", "g_puissance", "g_ratioVD","g_xp","g_guerres");
foreach($serv as $srv){
foreach($page as $pg){
//go sur chaque page
execPhp($file,$mois, $annee, $srv, $pg);
}
}
}

}

} catch (Exception $e) {
    echo 'Exception reçue : ',  $e->getMessage(), "\n";
}

?>
