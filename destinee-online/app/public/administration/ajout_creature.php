<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Administration</title>
</head>
<body>

<div align="center"><strong>Ajout d'une nouvelle créature</strong>
<form method="post" action="ajout_creature2.php">
Nom de la créature : <input type="text" name="nom" size="20"><br><br>
Nom de son bâtiment : <input type="text" name="batiment" size="20"><br><br>
Image ( /images/creatures/exemple.gif ) : <input type="text" name="image" size="20"><br><br>
Coût du bâtiment : <input type="text" name="cout_batiment" size="5"> |
Coût (argent) : <input type="text" name="cout_1" size="5"> |
Coût (mana) : <input type="text" name="cout_2" size="5"> |<br><br>
Créatures/semaine : <input type="text" name="nombre" size="5"> |
Upkeep (argent) : <input type="text" name="upkeep_1" size="5"> |
Upkeep (mana) : <input type="text" name="upkeep_2" size="5"><br><br>
Créature de niveau : <select name="niveau" size="1">
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
<option value="Créature magique">Créature magique</option>
<option value="Construction">Construction</option>
<option value="Dragon">Dragon</option>
<option value="Élémentaire">Élémentaire</option>
<option value="Planaire">Planaire</option>
<option value="Fée">Fée</option>
<option value="Géant">Géant</option>
<option value="Gobelinoïde">Gobelinoïde</option>
<option value="Humanoïde">Humanoïde</option>
<option value="Mort-Vivant">Mort-Vivant</option>
<option value="Plante">Plante</option>
<option value="Reptile">Reptile</option>
<option value="Vermine">Vermine</option>
<option value="Légendaire">Légendaire</option>
</select>
<select name="terrain01" size="4"><option selected value="0">- Choisir terrain01 -</option>
<option value="riverain">Riverain</option>
<option value="arctique">Arctique</option>
<option value="colline">Colline</option>
<option value="désert">Désert</option>
<option value="forêt">Forêt</option>
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
<option value="désert">Désert</option>
<option value="forêt">Forêt</option>
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
<option value="désert">Désert</option>
<option value="forêt">Forêt</option>
<option value="marais">Marais</option>
<option value="montagne">Montagne</option>
<option value="plaine">Plaine</option>
<option value="caverne">Caverne</option>
<option value="tous">Tous</option>
</select>
<br><br>
Att : <input type="text" name="att" size="2">
Déf : <input type="text" name="def" size="2">
Ini : <input type="text" name="ini" size="2">
End : <input type="text" name="end" size="2">
Pvs : <input type="text" name="pvs" size="2">
<br><br>
Créature volante : <input type="checkbox" name="vol" value="checkbox">
Attaque à distance : <input type="checkbox" name="range" value="checkbox"><br><br>
Dégât minimum : <input type="text" name="min" size="2"><br>
Dégât maximum : <input type="text" name="max" size="2">
<br><br>
<input type="submit" value="- Ajouter -">
<br><br>
<a href="administration.php">Retour à l'administration</a></div>
</body>
</html>
