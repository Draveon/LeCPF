<?php
if ($_SESSION['connexion'] != 1){$_SESSION['connexion'] = 0;}

include("connect.php");
$sql = "SELECT puissance FROM joueurs_stats WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$puissance = $data[0];

$sql = "UPDATE `joueurs_stats` SET `puissance` = '$puissance' WHERE nom ='$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = "UPDATE `joueurs_heros` SET `puissance` = '$puissance' WHERE nom ='$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
mysql_close();
?>

<table style="width: 1003px;"><tbody><tr><td>
<img src="/images/bouton/gauche.gif" alt="" border=0>
<a href="default.htm" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu6, '150px')" onMouseout="delayhidemenu()">
<img src="/images/bouton/personnage.gif" hsrc="/images/bouton/personnage02.gif" alt="Personnage" border=1></a>
<a href="default.htm" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu7, '150px')" onMouseout="delayhidemenu()">
<img src="/images/bouton/action.gif" hsrc="/images/bouton/action02.gif" alt="Action" border=1></a>
<a href="default.htm" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu2, '150px')" onMouseout="delayhidemenu()">
<img src="/images/bouton/information.gif" hsrc="/images/bouton/information02.gif" alt="Information" border=1></a>
<a href="default.htm" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu4, '150px')" onMouseout="delayhidemenu()">
<img src="/images/bouton/serveur.gif" hsrc="/images/bouton/serveur02.gif" alt="Serveur" border=1></a>
<a href="default.htm" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu3, '150px')" onMouseout="delayhidemenu()">
<img src="/images/bouton/encyclopedie.gif" hsrc="/images/bouton/encyclopedie02.gif" alt="Encyclopédie" border=1></a>
<a href="default.htm" onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu5, '150px')" onMouseout="delayhidemenu()">
<img src="/images/bouton/deconnexion.gif" hsrc="/images/bouton/deconnexion02.gif" alt="Déconnexion" border=1></a>
<img src="/images/bouton/droite.gif" alt="" border=0><br><br>
</td></tr></tbody></table>
</td></tr><tr><td style="vertical-align: top; width: 100%;">


