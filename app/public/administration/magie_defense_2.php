<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title>Ajout de sorts d�fensifs</title>
</head>
<body>
<div align="center"><?


$nom = ucfirst($_POST['nom']);
$niveau = $_POST['niveau'];
$image = $_POST['image'];
$cout_mana = $_POST['mana'];
$cout_or = $_POST['or'];
$cout_soufre = $_POST['soufre'];
$cout_mercure = $_POST['mercure'];
$cout_cristaux = $_POST['cristaux'];
$cout_gemmes = $_POST['gemmes'];
$victime = $_POST['victime'];
$attaque = $_POST['attaque'];
$defense = $_POST['defense'];
$initiative = $_POST['initiative'];
$endurance = $_POST['endurance'];
$puissance = $_POST['puissance'];
$texte = $_POST['texte'];
$element = $_POST['�l�ment'];

if(!isset($_POST['Tous'])){
  $tous = "0";}
else{
  $tous = "Tous";}
  
  
if(!isset($_POST['Ancien'])){
  $ancien = "0";}
else{
  $ancien = "Ancien";}
  
  
if(!isset($_POST['C�lestial'])){
  $celestial = "0";}
else{
  $celestial = "C�lestial";}
  
  
if(!isset($_POST['Infernal'])){
  $infernal = "0";}
else{
  $infernal = "Infernal";}
  
  
if(!isset($_POST['Homme'])){
  $homme = "0";}
else{
  $homme = "Homme";}
  
  
if(!isset($_POST['Nain'])){
  $nain = "0";}
else{
  $nain = "Nain";}
  
  
if(!isset($_POST['Gnome'])){
  $gnome = "0";}
else{
  $gnome = "Gnome";}
  
  
if(!isset($_POST['Elfe'])){
  $elfe = "0";}
else{
  $elfe = "Elfe";}
  
  
if(!isset($_POST['Elfen'])){
  $elfenoir = "0";
}
else{
  $elfenoir = "Elfe noir";}
  
  
if(!isset($_POST['Orque'])){
  $orque = "0";}
else{
  $orque = "Orque";}
  
  
if(!isset($_POST['F�e'])){
  $fee = "0";}
else{
  $fee = "F�e";}
  
  
if(!isset($_POST['G�ant'])){
  $geant = "0";}
else{
  $geant = "G�ant";}
  
  
if(!isset($_POST['Minotaure'])){
  $minotaure = "0";}
else{
  $minotaure = "Minotaure";}
  
  
if(!isset($_POST['Vampire'])){
  $vampire = "0";}
else{
  $vampire = "Vampire";}

echo "
Nom du sort : $nom<br>
Niveau du sort : $niveau<br>
Bonus du sort � l'attaque : $attaque<br>
Bonus du sort � la d�fense : $defense<br>
Bonus du sort � l'initiative : $initiative<br>
Bonus du sort � l'endurance : $endurance<br>
Bonus du sort � la puissance : $puissance<br>
Co�t en mana : $cout_mana<br>
Co�t en or : $cout_or<br>
Co�t en soufre : $cout_soufre<br>
Co�t en mercure : $cout_mercure<br>
Co�t en cristaux : $cout_cristaux<br>
Co�t en gemmes : $cout_gemmes;<br>
Victimes du sort : $victime<br>";
$liste = array($ancien,$celestial,$infernal,$homme,$nain,$elfe,$elfenoir,$fee,$geant,$vampire,$minotaure,$gnome,$orque);

if($tous == '0'){echo"$tous<br>";}

else{
while($liste[0] != ''){
	if ($liste[0] != 0){echo "$liste[0],";}
	$liste[0] = '';
	rsort($liste);
  }
  echo"<br>";
}
echo"Image : $image<br>";

echo "<br><strong>Votre s�lection a �t� ajout�e avec succ�s</strong><br>";

include("connect.php");
$req1 = "INSERT INTO `magies_liste` ( `id`, `nom`, `niveau`, `victime`, `min`, `max`, `att`,`def`,`ini`,`end`,`pui`, `mana`, `or`, `soufre`, `mercure`, `cristal`, `gemme`, `affinite00`, `affinite01`, `affinite02`, `affinite03`, `affinite04`, `affinite05`, `affinite06`, `affinite07`, `affinite08`, `affinite09`, `affinite10`, `affinite11`, `affinite12`, `affinite13`, `image`, `texte`, `�l�ment`, `type`)
VALUES ('', '$nom', '$niveau', '$victime', '0', '0', '$attaque','$defense','$initiative','$endurance','$puissance', '$cout_mana', '$cout_or', '$cout_soufre', '$cout_mercure', '$cout_cristaux', '$cout_gemmes', '$tous', '$ancien', '$celestial', '$infernal', '$homme', '$gnome', '$nain', '$elfe', '$elfenoir', '$geant', '$minotaure', '$orque', '$vampire', '$fee', '$image', '$texte', '$element', 'D�fensif');";
mysql_query($req1,$db);

$sql = "SELECT * FROM magies_liste";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_num_rows($req);
$id = $data + 1;

$req6 = "ALTER TABLE `joueurs_magies` ADD `$id` TINYINT(3) DEFAULT '0' NOT NULL ;";
mysql_query($req6,$db);

mysql_close();
?>

<br><a href="magie_defense.php">Ajouter un autre sort d�fensif</a> |
<a href="magie_offense.php">Ajouter un  sort offensif</a> |
<a href="administration.php">Retour � l'administration</a></div>

</body>
</html>
