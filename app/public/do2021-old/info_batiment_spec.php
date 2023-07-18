<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

$id = $_GET['batiment'];

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title>Destinee-online</title>
</head>
<body onUnload="opener.location.href.reload()" topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
<br>
<div align="center"><table style="width: 92%; text-align: center; background-color: antiquewhite;" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">

<?php
include("connect.php");

$sql = "SELECT nom, image FROM bâtiments_liste WHERE id = '$id'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql_.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$batiment = $data[0];
$image = $data[1];
mysql_close();

echo "<b>$batiment</b><br>";
?>

<table border="0" cellspacing="0" cellpadding="0" style="width: 100%; text-align: left; vertical-align: top;"><tbody><tr>
<td rowspan="10" colspan="10" style="width: 40%";><div align="center">
<img src="<?phpecho $image?>" width="100px" height="100px" alt="<?phpecho $batiment?>" border=1>
</div></td></tr><tr>
<form method="get" action="construit_spec.php">
<?php

// Branche de combat
if ($batiment == "Forge")
{
    echo "<td><UL>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 0.5 à la défense / niveau</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Écurie</LI>
                   <LI>Armurerie</LI>
                   <LI>Camp d'Entraînement</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Écurie")
{
    $terrain = ucfirst($terrain);
    echo "<td><UL>
         <LI>+ 10 à l'initiative</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.0 à l'initiative / niveau</LI>
         <LI>+ 20% à Agilité</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Écurie Royale</LI>
                   <LI>Arène de Joute</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Armurerie")
{
    echo "<td><UL>
         <LI>+ 10 à la défense</LI>
         <LI>+ 1.0 à la défense / niveau</LI>
         <LI>+ 1.0 à l'endurance / niveau</LI>
         <LI>+ 15% à Résistance</LI>
         <LI>+ 15% à Endurance</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Armurerie Impériale</LI>
                   <LI>Forge du Pouvoir</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Écurie Royale")
{
    $terrain = ucfirst($terrain);
    echo "<td><UL>
         <LI>+ 20 à l'initiative</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.5 à l'initiative / niveau</LI>
         <LI>+ 30% à Embuscade</LI>
	</td></tr>";
}

if ($batiment == "Armurerie Impériale")
{
    echo "<td><UL>
         <LI>+ 15 à la défense</LI>
         <LI>+ 10 à l'endurance</LI>
         <LI>+ 1.5 à la défense / niveau</LI>
         <LI>+ 1.5 à l'endurance / niveau</LI>
         <LI>+ 20% à Résistance</LI>
         <LI>+ 20% à Endurance</LI>
	</td></tr>";
}

if ($batiment == "Arène de Joute")
{
    echo "<td><UL>
         <LI>+ 15 à l'attaque</LI>
         <LI>+ 5 à l'initiative</LI>
         <LI>+ 1.5 à l'attaque / niveau</LI>
         <LI>+ 1.0 à l'initiative / niveau</LI>
         <LI>+ 35% à Charge Meurtrière</LI>
</td></tr>";
}

if ($batiment == "Forge du Pouvoir"){
    echo "<td><UL>
         <LI>+ 10 à l'attaque</LI>
         <LI>+ 15 à l'endurance</LI>
         <LI>+ 1.5 à l'attaque / niveau</LI>
         <LI>+ 1.5 à l'endurance / niveau</LI>
         <LI>+ 20% à Force Brute</LI>
         <LI>+ 20% à Endurance</LI>
	</td></tr>";
}

if ($batiment == "Camp d`Entraînement")
{
    echo "<td><UL>
         <LI>+ 5 à l'attaque</LI>
         <LI>+ 5 à la défense</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.0 à la défense / niveau</LI>
         <LI>+ 20% à Rage</LI>
               <LI>Donne accès à :
               <UL>
               <LI>Temple de la Puissance</LI>
               <LI>Château de la Prestance</LI>
               </UL>
	</LI></UL></td></tr>";
}

if ($batiment == "Temple de la Puissance")
{
    echo "<td><UL>
         <LI>+ 10 à l'endurance</LI>
         <LI>+ 15 à la puissance</LI>
         <LI>+ 1.5 à l'endurance / niveau</LI>
         <LI>+ 1.5 à la puissance / niveau</LI>
         <LI>+ 25% à Purification</LI>
         <LI>+ 25% à Profanation</LI>
	</td></tr>";
}

if ($batiment == "Château de la Prestance")
{
    echo "<td><UL>
         <LI>+ 10 à l'attaque</LI>
         <LI>+ 15 au charisme</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.5 au charisme / niveau</LI>
         <LI>+ 30% à Ferveur</LI>
	</td></tr>";
}

// Branche du charisme
if ($batiment == "École de la Rhétorique")
{
    echo "<td><UL>
         <LI>+ 1.0 au charisme / niveau</LI>
         <LI>+ 0.5 à la puissance / niveau</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Guilde d'Espions</LI>
                   <LI>Manoir de la Répute</LI>
                   <LI>Forteresse du Savoir</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}
if ($batiment == "Guilde d`Espionnage")
{
    $terrain = ucfirst($terrain);
    echo "<td><UL>
         <LI>+ 10 à l'initiative</LI>
         <LI>+ 1.0 à l'initiative / niveau</LI>
         <LI>+ 1.0 au charisme / niveau</LI>
         <LI>+ 25% à l'Espionnage</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>École d'Assassins</LI>
                   <LI>Laboratoire Alchimique</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Manoir de l`Honneur")
{
    echo "<td><UL>
         <LI>+ 10 au charisme</LI>
         <LI>+ 1.5 au charisme / niveau</LI>
         <LI>+ 1.0 à l'endurance / niveau</LI>
         <LI>+ 30% à Manipulation</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Temple de la Gloire</LI>
                   <LI>Forge Impériale</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Forteresse du Savoir")
{
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 1.0 au charisme / niveau</LI>
         <LI>+ 1.0 de puissance / niveau</LI>
         <LI>+ 25% à Concentration</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Camp de l'Illumintation</LI>
                   <LI>Salle des Tacticiens</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Guilde des Assassins")
{
    echo "<td><UL>
         <LI>+ 10 à l'attaque</LI>
         <LI>+ 10 à l'initiative</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.0 à l'initiative / niveau</LI>
         <LI>+ 35% à Assassinat</LI>
	</td></tr>";
}

if ($batiment == "Laboratoire Alchimique")
{
    echo "<td><UL>
         <LI>+ 10 à la défense</LI>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 1.0 à la défense / niveau</LI>
         <LI>+ 1.0 à la puissance / niveau</LI>
         <LI>+ 30% à Sabotage</LI>
	</td></tr>";
}

if ($batiment == "Temple de la Gloire")
{
    echo "<td><UL>
         <LI>+ 10 au charisme</LI>
         <LI>+ 5 à la puissance</LI>
         <LI>+ 5 à l'endurance</LI>
         <LI>+ 1.5 au charisme / niveau</LI>
         <LI>+ 1.0 à l'endurance / niveau</LI>
         <LI>+ 30% à Manipulation</LI>
	</td></tr>";
}

if ($batiment == "Forge Impériale")
{
    echo "<td><UL>
         <LI>+ 10 à l'attaque</LI>
         <LI>+ 10 à la défense</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.0 à la défense / niveau</LI>
         <LI>+ 15% à Force Brute</LI>
         <LI>+ 15% à Résistance</LI>
	</td></tr>";
}

if ($batiment == "Camp de l`Illumination")
{
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 10 à l'endurance</LI>
         <LI>+ 1.5 à la puissance / niveau</LI>
         <LI>+ 1.0 à l'endurance / niveau</LI>
         <LI>+ 15% à Concentration</LI>
         <LI>+ 15% à Intelligence</LI>
	</td></tr>";
}

if ($batiment == "Salle des Tacticiens")
{
    echo "<td><UL>
         <LI>+ 5 à l'attaque</LI>
         <LI>+ 5 à la défense</LI>
         <LI>+ 5 à l'initiative</LI>
         <LI>+ 5 à l'endurance</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 0.5 à la défense / niveau</LI>
         <LI>+ 0.5 à l'initiative / niveau</LI>
         <LI>+ 0.5 à l'endurance / niveau</LI>
         <LI>+ 35% à Manipulation</LI>
	</td></tr>";
}

// Branche de la Magie
if ($batiment == "Bibliothèque Royale")
{
    echo "<td><UL>
         <LI>+ 0.5 à la puissance / niveau</LI>
         <LI>+ 1.0 à l'endurance / niveau</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Tour de la Sérénité</LI>
                   <LI>Tour de l`Instabilité</LI>
                   <LI>Tour de l`Agressivité</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}
if ($batiment == "Tour de la Sérénité")
{
    $terrain = ucfirst($terrain);
    echo "<td><UL>
         <LI>+ 10 à la défense</LI>
         <LI>+ 1.0 à la puissance / niveau</LI>
         <LI>+ 1.0 à la défense / niveau</LI>
         <LI>+ 25% à Concentration</LI>
         <LI>+ 15% aux sorts de Terre</LI>
         <LI>+ 15% aux sorts d'Air</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Temple de la Renaissance</LI>
                   <LI>Temple de la Tranquillité</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Tour de l`Instabilité")
{
    echo "<td><UL>
         <LI>+ 10 à l'attaque</LI>
         <LI>+ 1.0 à la puissance / niveau</LI>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 20% aux sorts de Foudre</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Temple de la Folie</LI>
                   <LI>Temple de la Dévastation</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Tour de l`Agressivité")
{
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 1.5 à la puissance / niveau</LI>
         <LI>+ 0.5 à l'initiative / niveau</LI>
         <LI>+ 10% à Focus Mental</LI>
         <LI>+ 10% aux sorts de Feu</LI>
         <LI>+ 10% aux sorts d'Eau</LI>
         <LI>Donne accès à :
                   <UL>
                   <LI>Temple de l'Anéantissement</LI>
                   <LI>Temple de la Destruction</LI>
                   </UL>
         </LI>
         </UL></td></tr>";
}

if ($batiment == "Temple de la Tranquillité")
{
    echo "<td><UL>
         <LI>+ 10 à la défense</LI>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 1.5 à la défense / niveau</LI>
         <LI>+ 1.0 à la puissance / niveau</LI>
         <LI>+ 30% à Focus Mental</LI>
	</td></tr>";
}

if ($batiment == "Temple de la Renaissance"){
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 10 au charisme</LI>
         <LI>+ 1.0 à la puissance / niveau</LI>
         <LI>+ 1.5 au charisme / niveau</LI>
         <LI>+ 30% à Intelligence</LI>
	</td></tr>";
}

if ($batiment == "Temple de la Destruction")
{
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 1.5 à la puissance / niveau</LI>
         <LI>+ 35% à Focus Mental</LI>
         <LI>+ 20% aux sorts de Feu</LI>
	</td></tr>";
}

if ($batiment == "Temple de l`Anéantissement")
{
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 10 à l'endurance</LI>
         <LI>+ 1.5 à la puissance / niveau</LI>
         <LI>+ 1.0 à l'endurance / niveau</LI>
         <LI>+ 10% à Focus Mental</LI>
         <LI>+ 25% à Intelligence</LI>
	</td></tr>";
}

if ($batiment == "Temple de la Folie")
{
    echo "<td><UL>
         <LI>+ 10 à la puissance</LI>
         <LI>+ 10 à l'initiative</LI>
         <LI>+ 1.5 à la puissance / niveau</LI>
         <LI>+ 1.0 à l'initiative / niveau</LI>
         <LI>+ 25% à Intelligence</LI>
	</td></tr>";
}

if ($batiment == "Temple de la Dévastation")
{
    echo "<td><UL>
         <LI>+ 1.0 à l'attaque / niveau</LI>
         <LI>+ 1.0 à la puissance / niveau</LI>
         <LI>+ 15% à Focus Mental</LI>
         <LI>+ 20% aux sorts de Foudre</LI>
	</td></tr>";
}

?>
</tbody></table><br>
</td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table></div>
<br>
</tbody>
</table>
</body>
</html>
