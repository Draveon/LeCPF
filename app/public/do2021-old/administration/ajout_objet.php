<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Administration</title>
  <script language="javascript" src="exampleconfig.js"></script>
</head>
<body>

<div align="center"><strong>Ajout d'un nouvel objet magique</strong>
<form method="post" action="ajout_objet2.php">
Nom de l'objet : <input type="text" name="nom" size="20"><br><br>
Niveau minimal obligatoire : <select name="niveau" size="1">
<option selected value="1">1</option>
<option value="3">3</option>
<option value="5">5</option>
<option value="8">8</option>
<option value="10">10</option>
<option value="12">12</option>
<option value="15">15</option>
<option value="18">18</option>
<option value="20">20</option>
<option value="22">22</option>
<option value="25">25</option>
<option value="30">30</option>
<option value="40">40</option>
<option value="50">50</option>
</select> | Choisir le type d'objet :
<select name="type" size="1"><option selected value="Amulette">- Choisir type -</option>
<option value="Amulette">Amulette</option>
<option value="Armure">Armure</option>
<option value="Anneau">Anneau</option>
<option value="Arc">Arc</option>
<option value="Bottes">Bottes</option>
<option value="B�ton">B�ton</option>
<option value="Bouclier">Bouclier</option>
<option value="Dague">Dague</option>
<option value="�p�e">�p�e</option>
<option value="Hache">Hache</option>
<option value="Heaume">Heaume</option>
<option value="Masse">Masse</option>
<option value="V�tement">V�tement</option>
</select>
<br><br>

Image ( /images/objets/exemple.gif ) : <input type="text" name="image" size="20"><br>
<small>- ( Laisser vide pour l'image par d�faut ) -</small><br><br>

Bonus / Malus � l'attaque : <input type="text" name="att" size="2"> |
Bonus / Malus � la d�fense : <input type="text" name="def" size="2"><br>
Bonus / Malus � l'initiative : <input type="text" name="ini" size="2"> |
Bonus / Malus � l'endurance : <input type="text" name="end" size="2"><br>
Bonus / Malus au charisme : <input type="text" name="cha" size="2"> |
Bonus / Malus � la puissance : <input type="text" name="pui" size="2"><br>
Bonus / Malus � la mana : <input type="text" name="mana" size="2"> |
Bonus / Malus � la chance : <input type="text" name="chance" size="2"><br>

<br><br>
Tous : <input type="checkbox" name="Tous" value="checkbox"> |
Assassin : <input type="checkbox" name="Assassin" value="checkbox"> |
Archer : <input type="checkbox" name="Archer" value="checkbox"> |
Barbare : <input type="checkbox" name="Barbare" value="checkbox"> |
Barde : <input type="checkbox" name="Barde" value="checkbox">|
Chevalier : <input type="checkbox" name="Chevalier" value="checkbox"> |
D�monologiste : <input type="checkbox" name="D�monologiste" value="checkbox"> |
Druide : <input type="checkbox" name="Druide" value="checkbox">|
Guerrier : <input type="checkbox" name="Guerrier" value="checkbox">  <br>
Illusioniste : <input type="checkbox" name="Illusioniste" value="checkbox"> |
Inquisiteur : <input type="checkbox" name="Inquisiteur" value="checkbox">|
Magicien : <input type="checkbox" name="Magicien" value="checkbox"> |
Marchand : <input type="checkbox" name="Marchand" value="checkbox"> |
Paladin : <input type="checkbox" name="Paladin" value="checkbox"> |
Pr�tre : <input type="checkbox" name="Pr�tre" value="checkbox"> |
R�deur : <input type="checkbox" name="R�deur" value="checkbox"> |
Shaman : <input type="checkbox" name="Shaman" value="checkbox"> |
Sorcier : <input type="checkbox" name="Sorcier" value="checkbox"> |
Voleur : <input type="checkbox" name="Voleur" value="checkbox"> |
<br><br>
Ins�rez ci-bas une courte description de l'objet en question :<br>
<textarea rows=5 name="description" cols=45 wrap="on"></textarea>
<br>
<small>*Pri�re d'�viter les apostrophes ( </small>'<small> ). Utilisez plut�t l'accent grave ( </small>`<small> ).
<br><br>

<input type="submit" value="- Ajouter -">
<br><br>
<a href="administration.php">Retour � l'administration</a>
</div>

</body>
</html>
