<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Sorts d'attaque</title>
</head>
<body>

<div align="center"><strong>Ajout d'un nouveau sort offensif</strong>
<form method="post" action="magie_offense_2.php">
Nom du sort : <input type="text" name="nom" size="20"> |
Niveau du sort : <input type="text" name="niveau" size="20"><br><br> 
Cout d'incantation en mana : <input type="text" name="mana" size="20"> |
Cout d'incantation en soufre : <input type="text" name="soufre" size="20"> |
Cout d'incantation en cristaux : <input type="text" name="cristaux" size="20"> <br><br>
Cout d'incantation en mercure : <input type="text" name="mercure" size="20"> |
Cout d'incantation en gemmes : <input type="text" name="gemmes" size="20"> |
Cout d'incantation en or : <input type="text" name="or" size="20"> <br><br>
Image ( /images/sorts/exemple.gif ) : <input type="text" name="image" size="20"><br><br>
Qui le sort visera-t-il? : <select name="victime" size="1">
<option value="tous_tous">Toutes les cr�atures</option>
<option value="tous_adverse">Toutes les cr�atures ennemies</option>
<option value="tous_sol">Toutes les cr�atures terrestres</option>
<option value="tous_vol">Toutes les cr�atures volantes</option>
<option value="adverse_unique">Une seule cr�ature ennemie</option>
<option value="adverse_unique_vol">Une seule cr�ature volante, ennemie</option>
<option value="adverse_unique_sol">Une seule cr�ature terrestres, ennemie</option>
</select>
<br><br>
� quel �l�ment s'apparentera le sort? : <select name="�l�ment" size="1">
<option value="Air">Air</option>
<option value="Terre">Terre</option>
<option value="Eau">Eau</option>
<option value="Feu">Feu</option>
<option value="�lectricit�">�lectricit�</option>
</select>
<br><br> 
Ce sort a-t-il des affinit�s raciales? Si oui, lesquelles: <br><br>
Tous : <input type="checkbox" name="Tous" value="checkbox"> <br><br>
Anciens : <input type="checkbox" name="Ancien" value="checkbox"> |
Elfes : <input type="checkbox" name="Elfe" value="checkbox"> |
Elfes noirs : <input type="checkbox" name="Elfen" value="checkbox"> |
Nains : <input type="checkbox" name="Nain" value="checkbox"><br><br>
Gnomes : <input type="checkbox" name="Gnome" value="checkbox"> |
C�lestiaux : <input type="checkbox" name="C�lestial" value="checkbox"> |
Infernaux : <input type="checkbox" name="Infernal" value="checkbox"><br><br>
Vampires : <input type="checkbox" name="Vampire" value="checkbox"> |
Hommes : <input type="checkbox" name="Homme" value="checkbox"> |
Orques : <input type="checkbox" name="Orque" value="checkbox"><br><br>
G�ants : <input type="checkbox" name="G�ant" value="checkbox"> |
Minotaures : <input type="checkbox" name="Minotaure" value="checkbox"> |
F�es : <input type="checkbox" name="F�e" value="checkbox"><br><br>
</select>
<br><br>

D�g�t minimum : <input type="text" name="min" size="2"><br>
D�g�t maximum : <input type="text" name="max" size="2">
<br><br>
<input type="submit" value="- Ajouter -">
<br><br>
<a href="administration.php">Retour � l'administration</a></div>
</body>
</html>
