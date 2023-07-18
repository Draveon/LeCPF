<?
if ($_SESSION['connexion'] != 1){$_SESSION['connexion'] = 0;}

include("connect.php");
$nom = $_SESSION['nom'];
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

<div class="menudrop">
	<img src="images/bouton/gauche.gif" alt="" border=0 width="72" height="32">
	<a href="principale.php"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu6, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/personnage.gif"	hsrc="images/bouton/personnage02.gif"	alt="Personnage"	width="135" height="30" border=1></a>
	<a href="batiments.php"		onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu8, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/royaume.jpg"		hsrc="images/bouton/royaume02.jpg"	alt="Royaume"		width="135" height="30" border=1></a>
	<a href="combat.php"		onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu7, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/action.gif"		hsrc="images/bouton/action02.gif"	alt="Action"		width="135" height="30" border=1></a>
	<a href="classement.php?nb=50"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu4, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/serveur.gif"		hsrc="images/bouton/serveur02.gif"	alt="Serveur"		width="135" height="30" border=1></a>
	<a href="historique.php"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu3, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/encyclopedie.gif"	hsrc="images/bouton/encyclopedie02.gif"	alt="Encyclopédie"	width="135" height="30" border=1></a>
	<a href="deconnexion.php"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu5, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/deconnexion.gif"	hsrc="images/bouton/deconnexion02.gif"	alt="Déconnexion"	width="135" height="30" border=1></a>
	<img src="images/bouton/droite.gif" alt="" border=0 width="72" height="32">
</div>
