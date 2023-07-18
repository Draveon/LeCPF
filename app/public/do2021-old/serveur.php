<? session_start();

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
    echo "<br>";
}

else{
    $connexion = 1;
    include ("menu.php");
    echo "<br>";
}

entete_index("Serveur");
?>

<table border="0" style="width: 630px; text-align: left;"><tbody><tr><td>

<strong><span style='font-family: papyrus;'>Le serveur</span></strong><br>
<P STYLE="text-indent: 1cm">
Destinée-online.com est hébergé sur un serveur mutualisé chez
<a href="http://www.iweb.ca"><b>iWeb technologies</b></a>
, une compagnie montréalaise spécialisé dans l'informatique, le réseautage et l'hébergement web.
En plus d'offrir d'excellents plans et tarifs, <a href="http://www.iweb.ca"><b>iWeb</b></a> met à notre disposition une équipe
dynamique, sérieuse, qui nous garantie une disponibilité réseau supérieure à 99,9%.<br><br>

<center><a href="http://www.iweb.ca"><img src="http://www.destinee-online.com/images/iweb.jpg" alt="iWeb technologies"></a></center><br><br>

Leur site web est disponible à l'adresse suivante : <a href="http://www.iweb.ca">www.iweb.ca</a>
</P>

</tr></td></tbody></table><?

include("fin.php");
