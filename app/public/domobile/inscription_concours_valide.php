<? session_start();

?>
<noscript>
 <meta http-equiv="Refresh" content="0;URL=http://www.allopass.com/check/error_code.php4?DOC_ID=359598&SITE_ID=130643">
</noscript>
<script type="text/javascript" language="Javascript" src="http://www.allopass.com/check/chk.php4?IDD=359598&IDS=130643"></script>
<?

include ("debut_inscription.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}

if (!isset($_GET['etape'])){
    $_SESSION['autorisation'] = 0;

    entete1("Règlements");
    if ($connexion == 0){
	    ?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : En inscription...</td></tr></tbody></table>
    	<?
    }
    if ($connexion == 1){
	    ?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Connecté</td></tr></tbody></table>
    	<?
    }
    entete2();
    ?>

<strong><span style='font-family: papyrus;'>Inscription</span></strong><br>

<br><textarea rows=10 cols=59 wrap="off">
Destinée.com - Code de conduite
- - -

L'acceptation de ces règlements est un prérequis pour tout
joueur. Toute personne inscrite est considérée comme ayant
lu, accepté et approuvé ces règlements, dans leur ensemble
et dans un tout non fragmentable. Le joueur promet également
de dégager l'équipe d'administration ainsi que l'hébergeur
de tous problèmes liés à leurs comptes, quel qu'il soit. Tous
les comptes de www.destinee-online.com sont et demeurent la
propriété des Administrateurs, lesquels s'engagent à respecter
la confidentialité des données auxquelles ils ont accès.

Article premier :
Par la présente, je déclare avoir lu, comprit et accepté
les différents règlements relatif à la possession d'un
compte. Je suis conscient des différents interdits et
encourage l'application et le respect des pénalités qui
suivent leur non-respect, et ce même à mon propre égard.
Je suis de plus conscient que ces règlements sont
succeptibles d'évoluer avec le jeu, et conscent à
les suivres et à les respecter dans leur intégralité.

Article deuxième :
Par la présente, je m'engage à utiliser en tout temps un
langage respectueux envers tous les joueurs, tous les
membres de l'équipe et tous les visiteurs à l'intérieur
du cadre virtuel de Destinée, autant en jeu que sur les
forums.

Article troisième :
Par la présente, je m'engage à divulguer touts actes allant
à l'encontre de ces deux derniers énoncés, ou encore à
l'encontre de tout autre règlement que ce soit. L'indivu
préférant garder le silence sera considéré comme étant
complice du fautif.

Article quatrième :
Par la présente, j'exige de la part des membres de
l'Équipe d'administration de Destinée respect des
règlements, intégrité et professionalisme. L'Équipe
s'engage, comme juste retour des choses, à s'assurer du
plein respect des règlements autant de la part de ses
membres, que de la part des joueurs.

Article cinquième :
Je comprends que www.destinee-online.com est et demeure la
propriété des administrateurs et qu'ils ont plein droits
quant à l'acceptation des inscriptions, au bannissement et
au retrait des comptes de joueurs n'ayant pas respecté
ces présents règlements ainsi qu'au choix d'une date de
fermeture du présent site web. Aucune mesure ne peut
être prise contre l'application de ces droits.

Article sixième :
Toute personne possédant un compte sur www.destinee-online
est en droit de s'en défaire, et ce sans restriction ni
questionnement de la part de l'équipe d'administration. Un
e-mail se doit dans ce cas d'être acheminer à l'un des
administrateurs, dans lequel le joueur stipule son nom
de compte ainsi que son mot de passe. Le compte sera effacé
dans un délai raisonnable. Le joueur peut de plus laissé
son compte inactif pour quelques jours, ces derniers étant
supprimés régulièrement.

Article septième :
En aucun cas ni pour aucune raison que ce soit un joueur
peut demandé dédomagement pour la perte de données, la perte
d'un compte ou la fermeture du présent site web. Qu'il quitte
de manière volontaire ou par obligation, tout joueur accepte
de partir sans ne rien demander en retour, et ce peu importe
les raison pouvant être évoquées.

L'Équipe d'Administration
</textarea><br><br>

<form method="get" action="inscription_concours_valide.php">
<input type="checkbox" name="etape" value="2"> J'accepte le code de conduite<br><br>
<input type="submit" value="Suivant >>">
<?
}
else{

if ($_GET['etape'] == 2){

    $serveur = 4;

    entete1("Inscription");
    if ($connexion == 0){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : En inscription...</td></tr></tbody></table>
    <?}
    if ($connexion == 1){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Connecté</td></tr></tbody></table>
    <?}
    entete2();?>

<strong><span style='font-family: papyrus;'>Inscription</span></strong><br>
<br>
<form method="get" action="inscription_concours_valide.php">
<input type="hidden" name="etape" value="3">
<input type="hidden" name="serveur" value="<? echo $serveur ?>">
<table border="0" style="width: 80%;"><tbody>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Nom du Héros : </b></td>
<td><input type="text" name="nom" size="20"><br><i><small>Le nom doit débuter par une majuscule et se terminer par des minuscules.
Pour les noms composés, une majuscule à chaque mot. Seront refusés :
- les noms grossiers, à caractère sadique, violent ou sexuel ;
- les noms n'ayant aucune logique dans le cadre d'un jeu d'ambiance médiévale/fantastique ;
- les noms suggérant un titre au héros (Duc Charles, Prince William, etc.) ;
- les noms à consonnance anglophone ;
- les noms extrêmement connus (Legolas, Aragorn, Harry Potter, etc.) ;
- les noms contenant des caractères spéciaux (chiffres et symboles) ;
- les noms déjà utilisés sur Destinée-Online (chaque nom doit être unique) ;
- les noms formant un jeu de mots évident ;
- les noms trop génériques (L'Elfe, Le Barbare, etc.).
</i></small></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Nom du Royaume : </b></td>
<td><input type="text" name="royaume" size="20"><br>
<small><i>Les règles sont les mêmes que pour le nom du héros.
Le nom de vos terres ainsi que votre nom seront inscrits tel que : "Votre nom" titre de "Votre royaume".
La longueur maximale de ["votre nom" de "votre royaume"] est de 30 caractères.
Prière de ne pas inclure dans votre nom de royaume le titre de votre héros, ce dernier
étant automatiquement attribué. Seront refusées toutes les inscriptions suggérant un titre,
telles que, par exemple, "Charles, Prince d'Angleterre". </i></small></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Mot de passe : </b></td>
<td><input type="password" name="motdepasse" size="20"></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>E-mail : </b></td>
<td><input type="text" name="email" size="20"></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Sexe : </b></td>
<td><input type="radio" value="mâle" name="sexe"> Mâle / <input type="radio" value="femelle" name="sexe"> Femelle<br>
<small><i>Le sexe déterminé de votre Héros n'affectera en rien les statistiques
de ce dernier. Seul le titre sera modifié en conséquence (Ex: Roi, Reine). Il est
à noté que certains scripts négligerons ce détail en s'adressant à vous selon
une syntaxe purement masculine.</i></small></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Race : </b></td>
<td><select name="make" style="width: 180px;"></select></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Classe : </b></td>
<td><select name="type" style="width: 180px;"></select></td></tr>
<tr><td style="text-align: right; vertical-align: top; width: 45%;"> <b>Dieu : </b></td>
<td><select name="model" style="width: 180px;"></select></td></tr>
</tbody></table>
<br><input type="submit" value="Suivant >>">
<?}

if ($_GET['etape'] == 3){
    $erreur = 0;
    $accent = array("'");
    
    if(!isset($_GET['sexe'])){
        $sexe = "mâle";
    }
    else{
        $sexe = $_GET['sexe'];
    }
    
    $nom = $_GET['nom'];
    $nom = str_replace($accent, "`", "$nom");
    $nom = ucfirst($nom);
    $nom = trim($nom);
    
    $serveur = $_GET['serveur'];
    
    include('administration/choix_serveurs.php');
    
    $sql = "SELECT id FROM bannis WHERE Nom = '$nom'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $tchek = mysql_num_rows($req);
    
    if ($tchek > 0){
        $erreur = 1;
        $texte = "Votre nom n'est pas conforme aux exigeances !<br>";
    }
    
    $motdepasse = $_GET['motdepasse'];
    $email = $_GET['email'];

    if(!isset($_GET['royaume'])){
        $erreur = 1;
        $texte = "Vous devez choisir un nom de royaume !<br>";
    }
    else{
        $royaume = $_GET['royaume'];
    }
    $royaume = str_replace($accent, "`", "$royaume");
    $royaume = ucfirst($royaume);
    $royaume = trim($royaume);
    
    $sql = "SELECT id FROM bannis WHERE Nom = '$royaume'";
    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
    $tchek = mysql_num_rows($req);

    if ($tchek > 0){
        $erreur = 1;
        $texte = "Votre nom de royaume n'est pas conforme aux exigeances !<br>";
    }
    
    $voyelle = "$royaume";
    if ($voyelle != ""){
        if ($voyelle[0] == "A" OR $voyelle[0] == "E" OR $voyelle[0] == "I" OR $voyelle[0] == "O" OR $voyelle[0] == "U" OR $voyelle[0] == "Y"){
           $royaume = "d`".$royaume;
        }
        else{
            $royaume = "de ".$royaume;
        }
    }
    if(!isset($_GET['make'])){
        $erreur = 1;
    }
    else{
        $race = $_GET['make'];
    }
    if(!isset($_GET['type'])){
        $erreur = 1;
    }
    else{
        $classe = $_GET['type'];
    }
    if(!isset($_GET['model'])){
        $erreur = 1;
    }
    else{
        $dieu = $_GET['model'];
    }
    $ip = $_SERVER['REMOTE_ADDR'];
    $autorisation = $_SESSION['autorisation'];

if ($nom == ""){
    $erreur = 1;
    $texte = "Vous devez choisir un nom de héros !<br>";}
if ($motdepasse == ""){
    $erreur = 1;
    $texte = "Vous devez choisir un mot de passe !<br>";}
if ($email == ""){
    $erreur = 1;
    $texte = "Vous devez entrer une adresse email valide !<br>";}
if ($royaume == ""){
    $erreur = 1;
    $texte = "Vous devez choisir un nom de royaume !<br>";}
if ($race == ""){
    $erreur = 1;
    $texte = "Vous devez choisir une race !<br>";}
if ($classe == ""){
    $erreur = 1;
    $texte = "Vous devez choisir une classe !<br>";}
if ($dieu == ""){
    $erreur = 1;
    $texte = "Vous devez choisir un dieu !<br>";}
if (!ereg("^(.+)@(.+)\\.(.+)$",$email)){
    $erreur = 1;
    $texte = "Vous adresse e-mail n'est pas valide !<br>";}

$sql2 = "SELECT nom FROM joueurs_infos WHERE nom = '$nom'";
$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
$tchek = mysql_num_rows($req2);

$sql2 = "SELECT nom FROM joueurs_inscription WHERE nom = '$nom'";
$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
$tchek2 = mysql_num_rows($req2);

if ($tchek > 0 OR $tchek2 > 0){
    $erreur = 1;
    $texte = "Votre nom de héros existe déjà !<br>";
}

if (ereg("[0-9]",$nom)){
    $erreur = 1;
    $texte = "Votre nom de héros n'est pas conforme !<br>";
}

if (ereg("[0-9]",$royaume)){
    $erreur = 1;
    $texte = "Votre nom de royaume n'est pas conforme !<br>";
}

if ($nom == "" OR $motdepasse == "" OR $email == "" OR $autorisation == 1 OR $erreur == 1){
    entete1("Autorisation");
    if ($connexion == 0){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Inscription refusée</td></tr></tbody></table>
    <?}
    if ($connexion == 1){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Connecté</td></tr></tbody></table>
    <?}
    entete2();?>

    <div align="left"><p style="text-indent : 1cm;"><strong><span style='font-family: papyrus;'>
    Autorisation refusée</span></strong></div><br>

    Malheureusement, nous n'avons pu traiter votre requête.<br><br>
    <? echo "<b>$texte</b><br>"; ?>
    Si le problème persiste, prière d'aviser un membre<br>
    de l'Équipe d'administration par e-mail.<br>
    <?
    mysql_close();
}
else{

    $_SESSION['autorisation'] = 1;
    entete1("Autorisation");
    if ($connexion == 0){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Inscription acceptée</td></tr></tbody></table>
    <?}
    if ($connexion == 1){?>
       <table border="0" style="width: 720px"><tbody><tr>
       <td style="text-align: left;"><span style="font-family: Arial;"><font size="-1">
       <strong>STATUT</strong> : Connecté</td></tr></tbody></table>
    <?}
    entete2();?>
    <div align="left"><p style="text-indent : 1cm;"><strong><span style='font-family: papyrus;'>Autorisation en cours</span></strong></div><br>
    Votre requête d'admission vient d'être acheminer auprès<br>
    de l'Équipe d'administration. Un délai de quelques<br>
    jours est habituellement nécessaire pour le<br>
    traitement des demandes.<br>

    <?

switch ($race){
    case 'Ancien': switch ($sexe){
        case 'mâle' : $titre = "Vénérable"; break;
        case 'femelle' : $titre = "Vénérable"; break;
    } break;
    case 'Célestial': switch ($sexe){
        case 'mâle' : $titre = "Maître"; break;
        case 'femelle' : $titre = "Maîtresse"; break;
    } break;
    case 'Homme': switch ($sexe){
        case 'mâle' : $titre = "Seigneur"; break;
        case 'femelle' : $titre = "Seigneure"; break;
    } break;
    case 'Elfe': switch ($sexe){
        case 'mâle' : $titre = "Conseiller"; break;
        case 'femelle' : $titre = "Conseillère"; break;
    } break;
    case 'Nain': switch ($sexe){
        case 'mâle' : $titre = "Roi"; break;
        case 'femelle' : $titre = "Reine"; break;
    } break;
    case 'Elfe Noir': switch ($sexe){
        case 'mâle' : $titre = "Patriarche"; break;
        case 'femelle' : $titre = "Matriarche"; break;
    } break;
    case 'Gnome': switch ($sexe){
        case 'mâle' : $titre = "Gouverneur"; break;
        case 'femelle' : $titre = "Gouvernante"; break;
    } break;
    case 'Infernal': switch ($sexe){
        case 'mâle' : $titre = "Maître"; break;
        case 'femelle' : $titre = "Maîtresse"; break;
    } break;
    case 'Vampire': switch ($sexe){
        case 'mâle' : $titre = "Comte"; break;
        case 'femelle' : $titre = "Comtesse"; break;
    } break;
    case 'Orque': switch ($sexe){
        case 'mâle' : $titre = "Chef"; break;
        case 'femelle' : $titre = "Cheftaine"; break;
    } break;
    case 'Géant': switch ($sexe){
        case 'mâle' : $titre = "Chef"; break;
        case 'femelle' : $titre = "Cheftaine"; break;
    } break;
    case 'Minotaure': switch ($sexe){
        case 'mâle' : $titre = "Chef"; break;
        case 'femelle' : $titre = "Cheftaine"; break;
    } break;
    case 'Fée': switch ($sexe){
        case 'mâle' : $titre = "Intendant"; break;
        case 'femelle' : $titre = "Intendante"; break;
    } break;
}

    $sql2 = "SELECT nom FROM joueurs_inscription WHERE nom = '$nom'";
    $req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
    $tchek = mysql_num_rows($req2);

    if ($tchek == 0){
    $req = "INSERT INTO `joueurs_inscription` ( `id`, `nom`, `password`, `email`, `ip`, `race`, `classe`, `dieu`, `titre`, `royaume`)
    VALUES ('', '$nom', '$motdepasse', '$email', '$ip', '$race', '$classe', '$dieu', '$titre', '$royaume');";
    mysql_query($req,$db);
    }
    mysql_close();

}
}
}

include ("fin.php"); ?>

