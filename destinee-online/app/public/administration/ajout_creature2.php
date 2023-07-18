<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Ajout de créatures</title>
</head>
<body>
<div align="center"><?


$nom = ucfirst($_POST['nom']);
$batiment = ucfirst($_POST['batiment']);
$nombre = ucfirst($_POST['nombre']);
$cout_batiment = ucfirst($_POST['cout_batiment']);
$niveau = $_POST['niveau'];
$image = $_POST['image'];
$espace = $_POST['espace'];
$type = $_POST['type'];
$terrain01 = $_POST['terrain01'];
$terrain02 = $_POST['terrain02'];
$terrain03 = $_POST['terrain03'];
$creatures_semaine = $_POST['nombre'];
$cout_1 = $_POST['cout_1'];
$cout_2 = $_POST['cout_2'];
$upkeep_1 = $_POST['upkeep_1'];
$upkeep_2 = $_POST['upkeep_2'];
$att = $_POST['att'];
$def = $_POST['def'];
$ini = $_POST['ini'];
$end = $_POST['end'];
$pvs = $_POST['pvs'];
if(!isset($_POST['vol'])){
  $vol = "0";}
else{
  $vol = "1";}
if(!isset($_POST['range'])){
  $range = "0";}
else{
  $range = "1";}
$min = $_POST['min'];
$max = $_POST['max'];

echo "
Nom : $nom<br>
Bâtiment : $batiment<br>
Niveau : $niveau<br>
Type : $type<br>
Terrain01 : $terrain01<br>
Terrain02 : $terrain02<br>
Terrain03 : $terrain03<br>
Cout_1 = $cout_1;<br>
Cout_2 = $cout_2;<br>
Upkeep_1 = $upkeep_1;<br>
Upkeep_2 = $upkeep_2;<br>
Att : $att<br>
Déf : $def<br>
Ini : $ini<br>
End : $end<br>
Pvs : $pvs<br>
Min : $min<br>
Max : $max<br>
Image : $image<br>";
if ($vol == 1){
    echo "Vol : Oui<br>";}
else{
    echo "Vol : Non<br>";}
if ($range == 1){
    echo "Range : Oui<br>";}
else{
    echo "Range : Non<br>";}

echo "<br><strong>Votre sélection a été ajoutée avec succès</strong><br>";

// SERVEUR 1
include("connect_p.php");
$req1 = "INSERT INTO `creatures_liste` ( `id`, `nom`, `type`, `bâtiment`, `terrain01`, `terrain02`, `terrain03`, `image`)
VALUES ('', '$nom', '$type', '$batiment', '$terrain01', '$terrain02', '$terrain03', '$image');";
mysql_query($req1,$db);

$req2 = "INSERT INTO `creatures_stats` ( `id`, `nom`, `niveau`, `att`, `def`, `ini`, `end`, `pvs`, `min`, `max`, `vol`, `range`, `cout_argent`, `cout_mana`, `upkeep_argent`, `upkeep_mana`)
VALUES ('', '$nom', '$niveau', '$att', '$def', '$ini', '$end', '$pvs', '$min', '$max', '$vol', '$range', '$cout_1', '$cout_2', '$upkeep_1', '$upkeep_2');";
mysql_query($req2,$db);

$req3 = "INSERT INTO `bâtiments_stats` ( `id`, `nom`, `niveau`, `créature`, `cout_bâtiment`, `nombre`, `espace`, `terrain01`, `terrain02`, `terrain03`)
VALUES ('', '$batiment', '$niveau', '$nom', '$cout_batiment', '$nombre', '$espace', '$terrain01', '$terrain02', '$terrain03');";
mysql_query($req3,$db);

$sql = "SELECT id FROM bâtiments_stats WHERE nom = '$batiment'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$id = $data[0];

$req6 = "ALTER TABLE `joueurs_batiments_id` ADD `$id` VARCHAR(20) DEFAULT '0' NOT NULL ;";
mysql_query($req6,$db);

$req7 = "ALTER TABLE `joueurs_créatures_id` ADD `$id` INT NOT NULL ;";
mysql_query($req7,$db);

$req8 = "ALTER TABLE `joueurs_créatures` ADD `$id` INT NOT NULL ;";
mysql_query($req8,$db);
mysql_close();

// SERVEUR 2
include("connect_b.php");
$req1 = "INSERT INTO `creatures_liste` ( `id`, `nom`, `type`, `bâtiment`, `terrain01`, `terrain02`, `terrain03`, `image`)
VALUES ('', '$nom', '$type', '$batiment', '$terrain01', '$terrain02', '$terrain03', '$image');";
mysql_query($req1,$db);

$req2 = "INSERT INTO `creatures_stats` ( `id`, `nom`, `niveau`, `att`, `def`, `ini`, `end`, `pvs`, `min`, `max`, `vol`, `range`, `cout_argent`, `cout_mana`, `upkeep_argent`, `upkeep_mana`)
VALUES ('', '$nom', '$niveau', '$att', '$def', '$ini', '$end', '$pvs', '$min', '$max', '$vol', '$range', '$cout_1', '$cout_2', '$upkeep_1', '$upkeep_2');";
mysql_query($req2,$db);

$req3 = "INSERT INTO `bâtiments_stats` ( `id`, `nom`, `niveau`, `créature`, `cout_bâtiment`, `nombre`, `espace`, `terrain01`, `terrain02`, `terrain03`)
VALUES ('', '$batiment', '$niveau', '$nom', '$cout_batiment', '$nombre', '$espace', '$terrain01', '$terrain02', '$terrain03');";
mysql_query($req3,$db);

$sql = "SELECT id FROM bâtiments_stats WHERE nom = '$batiment'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$id = $data[0];

$req6 = "ALTER TABLE `joueurs_batiments_id` ADD `$id` VARCHAR(20) DEFAULT '0' NOT NULL ;";
mysql_query($req6,$db);

$req7 = "ALTER TABLE `joueurs_créatures_id` ADD `$id` INT NOT NULL ;";
mysql_query($req7,$db);

$req8 = "ALTER TABLE `joueurs_créatures` ADD `$id` INT NOT NULL ;";
mysql_query($req8,$db);
mysql_close();

// SERVEUR 3
include("connect_a.php");
$req1 = "INSERT INTO `creatures_liste` ( `id`, `nom`, `type`, `bâtiment`, `terrain01`, `terrain02`, `terrain03`, `image`)
VALUES ('', '$nom', '$type', '$batiment', '$terrain01', '$terrain02', '$terrain03', '$image');";
mysql_query($req1,$db);

$req2 = "INSERT INTO `creatures_stats` ( `id`, `nom`, `niveau`, `att`, `def`, `ini`, `end`, `pvs`, `min`, `max`, `vol`, `range`, `cout_argent`, `cout_mana`, `upkeep_argent`, `upkeep_mana`)
VALUES ('', '$nom', '$niveau', '$att', '$def', '$ini', '$end', '$pvs', '$min', '$max', '$vol', '$range', '$cout_1', '$cout_2', '$upkeep_1', '$upkeep_2');";
mysql_query($req2,$db);

$req3 = "INSERT INTO `bâtiments_stats` ( `id`, `nom`, `niveau`, `créature`, `cout_bâtiment`, `nombre`, `espace`, `terrain01`, `terrain02`, `terrain03`)
VALUES ('', '$batiment', '$niveau', '$nom', '$cout_batiment', '$nombre', '$espace', '$terrain01', '$terrain02', '$terrain03');";
mysql_query($req3,$db);

$sql = "SELECT id FROM bâtiments_stats WHERE nom = '$batiment'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$id = $data[0];

$req6 = "ALTER TABLE `joueurs_batiments_id` ADD `$id` VARCHAR(20) DEFAULT '0' NOT NULL ;";
mysql_query($req6,$db);

$req7 = "ALTER TABLE `joueurs_créatures_id` ADD `$id` INT NOT NULL ;";
mysql_query($req7,$db);

$req8 = "ALTER TABLE `joueurs_créatures` ADD `$id` INT NOT NULL ;";
mysql_query($req8,$db);
mysql_close();
?>

<br><a href="ajout_creature.php">Ajouter une autre créature</a> |
<a href="ajout_objet.php">Ajouter un  objet</a> |
<a href="administration.php">Retour à l'administration</a></div>

</body>
</html>
