<? session_start();

$head_title = 'Faire un don';
$head_keywords = 'don, serveur, aide, jeu, soutien, gratuit';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}

entete_index("Faire un don !");

?>

<table class="localtable630"><tbody>
<tr><td><h2>Je désire faire un don !</h2>
<DIV ALIGN=JUSTIFY><div class="longtexte">
Comme vous le savez, si l'équipe d'Administration n'avait à coeur qu'un et qu'un seul principe, ce serait sans aucun doute
la gratuité et le libre accès à Destinée. Qui plus est, l'idée d'infester le site de publicités et de fenêtres pop-up est elle
aussi bien loin de nous, ne serait-ce que par respect pour vous. Cela dit, il serait vous mentir que de prétendre qu'un pareil site web s'héberge et se gère gratuitement...
Nous vous invitons donc, à titre purement volontaire, sécuritaire et discret, à faire un don, aussi petit soit-il, afin de soutenir
l'équipe d'Administration dans ses démarches. L'absence de don n'affectera en rien la qualité de votre jeu. Faire un don n'entraîne pas la protection du donneur; il est soumit aux mêmes
règles que tout le monde. Vous n'avez pas à avoir de compte Paypal, il vous suffit de suivre le lien à cet effet. Les paiements peuvent se faire
en dollars, en euros, en yen ou en livres sterling. Vous devez avoir 18 ans ou plus. Sélectionnez l'option "Shipping is not required". Pour tout renseignement supplémentaire,
merci de contacter un admnistrateur (<img src="images/atdoadmin.gif" alt="" border="0" width="181" height="15" style="position:relative; top:4px;">).
</div>

<br><center>
<form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="image" src="http://www.destinee-online.com/images/don.gif" border="0" name="submit" alt="Faire un paiement grâce à Paypal - Rapide, gratuit et sécuritaire!">
<input type="hidden" name="encrypted" value="-----BEGIN PKCS7-----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-----END PKCS7-----
">
</form>
</td></tr></tbody></table><?

include("fin.php");
