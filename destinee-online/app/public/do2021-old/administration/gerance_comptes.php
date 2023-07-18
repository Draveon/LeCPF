<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title>Destinee.com - Administration</title>
</head>
<body>

<big>Ajouter l'or dû aux joueurs ?</big><br><br>

<?

$serveur = $_GET['serveur'];
?>

<form method="POST" action="gerance_comptes_2.php?serveur=<? echo $serveur ?>" name="AVIS">
<?
echo "Je désire ajouter l'or dû aux joueurs : ";?>
<input type="checkbox" name="or" value="checkbox">
<?
echo "<br>Mode automatique : ";?>
<input type="radio" value="oui" name="auto">
- Oui
<input type="radio" name="auto" value="non">
- Non
<br><br>

<big>Effacer un joueur ?</big>
<br><br>
<select name="efface" size="10">
<option selected value="0">- Choisir -</option>
<?

?>
</select>

<br><br>

<big>Effacer les anciens accounts ?</big>
<br><br>
<?
echo "Je désire effacer tous les accounts datant de plus d'un mois : ";?>
<input type="checkbox" name="vieux" value="checkbox">
<br><br>
<input type="submit" value="Envoyer" name=" Voila ">
<br><br>
<a href="/">Page d'accueil</a>
</body>
</html>
