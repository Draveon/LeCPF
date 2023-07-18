<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Administration</title>
</head>
<body>

<?
if (isset($_POST['ajout'])){
	
	include('connect_'.$_POST['serveur'].'.php');
	
	$sql = 'SELECT id FROM joueurs_infos WHERE nom LIKE "'.trim($_POST['nom']).'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$nbr = mysql_num_rows($req);

	if ($nbr > 0){
		$req = 'INSERT INTO `medailles` ( `id`, `nom`, `medaille`, `texte`)
		VALUES ("", "'.$_POST['nom'].'", "'.$_POST['medaille'].'", "'.$_POST['texte'].'");';
		mysql_query($req,$db);
		
		echo '<center>La médaille '.$_POST['medaille'].' vient d\'être ajoutée au joueur '.$_POST['nom'].' !<br><br>';
	}
}
// ----------------

?>

<center><strong>Attribution d'une Médaille !</strong>
<form method="post" action="ajout_medaille.php">

Serveur ou le joueur se trouve :<br>
<select name="serveur" size="4">
<option selected value="0">- Choisir -</option>
<option value="p">Serveur - 1</option>
<option value="b">Serveur - 2</option>
<option value="a">Serveur - 3 (RP)</option>
</select><br><br>

Nom du Joueur à Récompenser : <input type="text" name="nom" size="20"><br><br>
Nom de la Médaille : <input type="text" name="medaille" size="20"><br><br>
Petit texte d'accompagnement :<br><input type="text" name="texte" size="50"><br><br>

<input type="submit" name="ajout" value="- Ajouter -">
<br><br>
<a href="administration.php">Retour à l'administration</a></div>
</body>
</html>
