<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Administration</title>
</head>
<body>

<div align="center"><strong>Ajout d'une nouvelle cr�ature</strong>
<form method="post" action="ajout_creature2.php">
Nom de la cr�ature : <input type="text" name="nom" size="20"><br><br>
Nom de son b�timent : <input type="text" name="batiment" size="20"><br><br>
Image ( /images/creatures/exemple.gif ) : <input type="text" name="image" size="20"><br><br>
Co�t du b�timent : <input type="text" name="cout_batiment" size="5"> |
Co�t (argent) : <input type="text" name="cout_1" size="5"> |
Co�t (mana) : <input type="text" name="cout_2" size="5"> |<br><br>
Cr�atures/semaine : <input type="text" name="nombre" size="5"> |
Upkeep (argent) : <input type="text" name="upkeep_1" size="5"> |
Upkeep (mana) : <input type="text" name="upkeep_2" size="5"><br><br>
Cr�ature de niveau : <select name="niveau" size="1">
<option selected value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
</select> |
Espace requis : <input type="text" name="espace" size="5">
<br><br>
<select name="type" size="4"><option selected value="0">- Choisir type -</option>
<option value="Aberration">Aberration</option>
<option value="Animal">Animal</option>
<option value="Cr�ature magique">Cr�ature magique</option>
<option value="Construction">Construction</option>
<option value="Dragon">Dragon</option>
<option value="�l�mentaire">�l�mentaire</option>
<option value="Planaire">Planaire</option>
<option value="F�e">F�e</option>
<option value="G�ant">G�ant</option>
<option value="Gobelino�de">Gobelino�de</option>
<option value="Humano�de">Humano�de</option>
<option value="Mort-Vivant">Mort-Vivant</option>
<option value="Plante">Plante</option>
<option value="Reptile">Reptile</option>
<option value="Vermine">Vermine</option>
<option value="L�gendaire">L�gendaire</option>
</select>
<select name="terrain01" size="4"><option selected value="0">- Choisir terrain01 -</option>
<option value="riverain">Riverain</option>
<option value="arctique">Arctique</option>
<option value="colline">Colline</option>
<option value="d�sert">D�sert</option>
<option value="for�t">For�t</option>
<option value="marais">Marais</option>
<option value="montagne">Montagne</option>
<option value="plaine">Plaine</option>
<option value="caverne">Caverne</option>
<option value="tous">Tous</option>
</select>
<select name="terrain02" size="4"><option selected value="0">- Choisir terrain02 -</option>
<option value="riverain">Riverain</option>
<option value="arctique">Arctique</option>
<option value="colline">Colline</option>
<option value="d�sert">D�sert</option>
<option value="for�t">For�t</option>
<option value="marais">Marais</option>
<option value="montagne">Montagne</option>
<option value="plaine">Plaine</option>
<option value="caverne">Caverne</option>
<option value="tous">Tous</option>
</select>
<select name="terrain03" size="4"><option selected value="0">- Choisir terrain03 -</option>
<option value="riverain">Riverain</option>
<option value="arctique">Arctique</option>
<option value="colline">Colline</option>
<option value="d�sert">D�sert</option>
<option value="for�t">For�t</option>
<option value="marais">Marais</option>
<option value="montagne">Montagne</option>
<option value="plaine">Plaine</option>
<option value="caverne">Caverne</option>
<option value="tous">Tous</option>
</select>
<br><br>
Att : <input type="text" name="att" size="2">
D�f : <input type="text" name="def" size="2">
Ini : <input type="text" name="ini" size="2">
End : <input type="text" name="end" size="2">
Pvs : <input type="text" name="pvs" size="2">
<br><br>
Cr�ature volante : <input type="checkbox" name="vol" value="checkbox">
Attaque � distance : <input type="checkbox" name="range" value="checkbox"><br><br>
D�g�t minimum : <input type="text" name="min" size="2"><br>
D�g�t maximum : <input type="text" name="max" size="2">
<br><br>
<input type="submit" value="- Ajouter -">
<br><br>
<a href="administration.php">Retour � l'administration</a></div>
</body>
</html>
