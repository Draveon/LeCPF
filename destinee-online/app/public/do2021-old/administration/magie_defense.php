<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Sorts de d�fense</title>
</head>
<body>

<div align="center"><strong>Ajout d'un nouveau sort d�fensif</strong>
<form method="post" action="magie_defense_2.php">
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
<option value="tous">Tous les h�ros du combat</option>
<option value="unique_alli�">Vous seul</option>
<option value="unique_adverse">Seul le h�ro ennemie</option>
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
Quel effet le sort aura-t-il sur : <br>
Attaque : <input type="text" name="attaque" size="20"> |
D�fense : <input type="text" name="defense" size="20"> |
Initiative : <input type="text" name="initiative" size="20"> |
Endurance : <input type="text" name="endurance" size="20"> |
Puissance : <input type="text" name="puissance" size="20"> <br><br>

Texte du Sort :<br> <textarea rows=4" cols="40" name="texte"></textarea>

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
<input type="submit" value="- Ajouter -">
<br><br>
<a href="administration.php">Retour � l'administration</a></div>
</body>
</html>
