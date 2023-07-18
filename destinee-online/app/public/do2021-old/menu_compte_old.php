<?
if ($_SESSION['connexion'] != 1)
{
	$_SESSION['connexion'] = 0;
}

?>

<div class="menudrop">
	<img src="images/bouton/gauche.gif" alt="" border=0 width="72" height="32">
	<a href="forum/"		onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu2, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/information.gif"	hsrc="images/bouton/information02.gif"	alt="Information"  width="135" height="30" border=1></a>
	<a href="classement.php"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu4, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/serveur.gif"		hsrc="images/bouton/serveur02.gif" 	alt="Serveur"	   width="135" height="30" border=1></a>
	<a href="historique.php"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu3, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/encyclopedie.gif"	hsrc="images/bouton/encyclopedie02.gif" alt="Encyclopédie" width="135" height="30" border=1></a>
	<a href="deconnexion.php"	onClick="return clickreturnvalue()" onMouseover="dropdownmenu(this, event, menu5, '150px')" onMouseout="delayhidemenu()"><img src="images/bouton/deconnexion.gif"	hsrc="images/bouton/deconnexion02.gif"	alt="Déconnexion"	width="135" height="30" border=1></a>
	<img src="images/bouton/droite.gif" alt="" border=0 width="72" height="32">
</div>
