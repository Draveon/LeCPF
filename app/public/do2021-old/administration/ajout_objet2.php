<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Ajout d'objets magiques</title>
</head>
<body>
<div align="center"><?

$nom = ucfirst($_POST['nom']);
$niveau = $_POST['niveau'];
$type = $_POST['type'];
$att = $_POST['att'];
$def = $_POST['def'];
$ini = $_POST['ini'];
$end = $_POST['end'];
$pui = $_POST['pui'];
$cha = $_POST['cha'];
$mana = $_POST['mana'];
$chance = $_POST['chance'];
$image = $_POST['image'];

if ($image = ""){
   switch ($type){
          case 'Amulette': $image = "/images/objets/amulette01.gif"; break;
          case 'Anneau': $image = "/images/objets/anneau01.gif"; break;
          case 'Bottes': $image = "/images/objets/amulette.gif"; break;
          case 'B�ton': $image = "/images/objets/amulette.gif"; break;
          case 'Bouclier': $image = "/images/objets/bouclier.gif"; break;
          case '�p�e': $image = "/images/objets/amulette.gif"; break;
          case 'Hache': $image = "/images/objets/amulette.gif"; break;
          case 'Heaume': $image = "/images/objets/amulette.gif"; break;
          case 'Armure': $image = "/images/objets/amulette.gif"; break;
          case 'V�tement': $image = "/images/objets/amulette.gif"; break;
   }
}

if(!isset($_POST['Tous'])){
    if(!isset($_POST['Assassin'])){ $assassin = 0;}
    else{ $assassin = 1;}
    if(!isset($_POST['Archer'])){ $archer = 0;}
    else{ $archer = 1;}
    if(!isset($_POST['Barbare'])){ $barbare = 0;}
    else{ $barbare = 1;}
    if(!isset($_POST['Barde'])){ $barde = 0;}
    else{ $barde = 1;}
    if(!isset($_POST['Chevalier'])){ $chevalier = 0;}
    else{ $chevalier = 1;}
    if(!isset($_POST['D�monologiste'])){ $demonologiste = 0;}
    else{ $demonologiste = 1;}
    if(!isset($_POST['Druide'])){ $druide = 0;}
    else{ $druide = 1;}
    if(!isset($_POST['Guerrier'])){ $guerrier = 0;}
    else{ $guerrier = 1;}
    if(!isset($_POST['Illusioniste'])){$illusioniste = 0;}
    else{ $illusioniste = 1;}
    if(!isset($_POST['Inquisiteur'])){ $inquisiteur = 0;}
    else{ $inquisiteur = 1;}
    if(!isset($_POST['Magicien'])){ $magicien = 0;}
    else{ $magicien = 1;}
    if(!isset($_POST['Marchand'])){ $marchand = 0;}
    else{ $marchand = 1;}
    if(!isset($_POST['Paladin'])){ $paladin = 0;}
    else{ $paladin = 1;}
    if(!isset($_POST['Pr�tre'])){ $pretre = 0;}
    else{ $pretre = 1;}
    if(!isset($_POST['R�deur'])){ $rodeur = 0;}
    else{ $rodeur = 1;}
    if(!isset($_POST['Shaman'])){ $shaman = 0;}
    else{ $shaman = 1;}
    if(!isset($_POST['Sorcier'])){ $sorcier = 0;}
    else{ $sorcier = 1;}
    if(!isset($_POST['Voleur'])){ $voleur = 0;}
    else{ $voleur = 1;}
}
else{
    $assassin = 1;
    $archer = 1;
    $barbare = 1;
    $barde = 1;
    $chevalier = 1;
    $demonologiste = 1;
    $druide = 1;
    $guerrier = 1;
    $illusioniste = 1;
    $inquisiteur = 1;
    $magicien = 1;
    $marchand = 1;
    $paladin = 1;
    $pretre = 1;
    $rodeur = 1;
    $shaman = 1;
    $sorcier = 1;
    $voleur = 1;
}

$description = $_POST['description'];

echo "<br><strong>Votre s�lection a �t� ajout�e avec succ�s !</strong><br>";

include("connect.php");

$req1 = "INSERT INTO `objets_stats` ( `id`, `nom`, `niveau_requis`, `type`, `att`, `def`, `ini`, `end`, `pui`, `cha`, `mana`, `chance`,
`Assassin`, `Archer`, `Barbare`, `Barde`, `Chevalier`, `D�monologiste`, `Druide`, `Guerrier`, `Illusioniste`, `Inquisiteur`, `Magicien`,
`Marchand`, `Paladin`, `Pr�tre`, `R�deur`, `Shaman`, `Sorcier`, `Voleur`, `image`)
VALUES ('', '$nom', '$niveau', '$type', '$att', '$def', '$ini', '$end', '$pui', '$cha', '$mana', '$chance',
'$assassin', '$archer', '$barbare', '$barde', '$chevalier', '$demonologiste', '$druide', '$guerrier', '$illusioniste', '$inquisiteur', '$magicien',
'$marchand', '$paladin', '$pretre', '$rodeur', '$shaman', '$sorcier', '$voleur', '$image');";

$req2 = "INSERT INTO `objets_description` ( `id`, `nom`, `description`)
VALUES ('', '$nom', '$description');";
mysql_query($req1,$db);
mysql_query($req2,$db);
mysql_close();

    
?>

<br><a href="ajout_objet.php">Ajouter un autre objet</a> |
<a href="ajout_creature.php">Ajouter une cr�ature</a> |
<a href="administration.php">Retour � l'administration</a></div>

</body>
</html>
