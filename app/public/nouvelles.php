<? session_start();

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}

entete1("Les Nouvelles");
if ($connexion == 0){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Visiteur</td></tr></tbody></table>
    <?}
if ($connexion == 1){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Connecté</td></tr></tbody></table>
    <?}
entete2();?>

<table border="0" style="width: 630px; text-align: left;"><tbody><tr><td>

<div align=right><i>5 octobre 2005</i></div>

<strong><span style='font-family: papyrus;'>Nouveau Départ !</span></strong><br><br>

<P STYLE="text-indent: 1cm">
En raison d'une remise à zéro générale ayant lieu sous peu, les inscriptions sont temporairement suspendues. En effet, d'ici quelques
jours tout au plus, tous et chacun seront invité à refaire un nouveau compte afin de repartir à neuf, toujours dans le cadre d'un BETA test qui,
pour sa part, se voudra final. Une dernière vérification générale aura lieu durant quelques jours, quelques semaines tout au plus, après quoi
le jeu débutera dans sa version officielle.
</P>
<P STYLE="text-indent: 1cm">
À noter que, cette fois et pour toujours, je serai beaucoup plus sévère sur les noms. Une limite de 30 caractères sur le nom ainsi que sur
le royaume se devra d'être respectée, et tous les noms suggérés avec un titre, tel que "Duc X" ou "Grand Y" seront refusé, le titre se devant
d'être octroyé automatiquement par le biais de votre race, et ainsi rester sous forme de variable et pouvant subir des modifications par le futur.
</P>
<P STYLE="text-indent: 1cm">
Nous vous tiendrons informer de la date officielle de la remise à neuf, mais celle-ci devrait avoir lieu d'ici peu.
</P>
<div align=right>Merci de votre compréhension,<br><br><i>L'Équipe d'Administration</i></div>

    <br></td></tr></tbody></table>
    </td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
    background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
    </td></tr><tr>
    <td colspan="1" style="vertical-align: bottom; text-align: center; height: 5%;">
    </tr></td></tbody></table>
    <br>
    <div align="center"><table style="width: 720px; text-align: left; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
    <td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
    </td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
    </tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
    </td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
    <br><div align="center">

<table style="width: 90%; text-align: left;" border="0"><tbody><tr><td>

<div align=right><i>8 septembre 2005</i></div>

<strong><span style='font-family: papyrus;'>Destinée-Online ouvre ses portes !</span></strong><br><br>

<P STYLE="text-indent: 1cm">
Enfin ! Il en aura fallut du temps, de la sueur et des nuits blanches pour en venir jusqu'ici où,
pour la première fois dans l'histoire, Destinée-Online devient accessible au grand public, bien
qu'encore et toujours en construction. Nous en voilà donc à la première version officielle, soit
Destinée-Online 1.0, qui nous l'espérons saura satisfaire vos plus folles attentes ! Mais, malgré
l'excitation du moment, tout ce boulot semble bien loin d'être terminé pour nous, administrateurs...
Nouveaux objets, systèmes, sorts, créatures... Rien n'est trop beau pour Destinée !
</P>
<P STYLE="text-indent: 1cm">
Pour le moment, soit pour notre version 2.0 BETA, nous n'intégrerons à Destinée-Online aucun contexte
historique pouvant expliquer nos différentes races, nos différentes classes, nos dieux, ainsi de suite. Cela
dit, nous comptons bien le faire pour notre prochaine version, question d'inspirer les amateurs de RP
parmis vous, ou tout simplement ceux aimant pouvoir baser leur jeu sur une quelconque ligne historique.
</P>
<P STYLE="text-indent: 1cm">
Veuillez cependant noter que nous nous verrons dans l'obligation d'imposer une limite temporaire
quant au nombre de joueurs, pour une raison de serveur. Il se peut donc que votre inscription demeure
sans réponse, nous vous tiendrons informer par le biais des forums. Pour ce qui est du reste, nous
vous souhaitons la bienvenue et la meilleur des chances !
</P>
<div align=right>Amusez-vous !<br><br><i>L'Équipe d'Administration</i></div>
</td></tr></tbody></table>

<? include("fin.php");
