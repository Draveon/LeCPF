/***********************************************

* AnyLink Drop Down Menu- © Dynamic Drive (www.dynamicdrive.com)

* This notice MUST stay intact for legal use

* Visit http://www.dynamicdrive.com/ for full source code

***********************************************/



var menu1=new Array()
menu1[0]='<img src="images/bouton/haut.gif" height="14">'
menu1[1]='<a href="reglement.php">Règlements</a>'
menu1[2]='<a href="inscription.php">Inscription</a>'
menu1[3]='<a href="faq_reglement.php">FAQ - Inscription</a>'
menu1[4]='<img src="images/bouton/bas.gif" height="30">'

var menu2=new Array()
menu2[0]='<img src="images/bouton/haut.gif" height="14">'
menu2[1]='<a href="forum/">Forums</a>'
menu2[2]='<a href="http://do-roleplay.bbfr.net/">Forums (RP)</a>'
menu2[3]='<a href="dons.php">Faire un don !</a>'
menu2[4]='<a href="administration.php">L\'équipe</a>'
menu2[5]='<a href="faq.php">FAQ - Général</a>'
menu2[6]='<a href="credits.php">Crédits</a>'
//menu2[7]='<a href="serveur.php">Serveur</a>'
menu2[7]='<a href="liens.php">Partenaires</a>'
menu2[8]='<img src="images/bouton/bas.gif" height="30">'

var menu3=new Array()
menu3[0]='<img src="images/bouton/haut.gif" height="14">'
menu3[1]='<a href="info_combat.php">Général</a>'
menu3[2]='<a href="historique.php">Historique</a>'
menu3[3]='<a href="encyclopedie_creatures.php">Créatures</a>'
menu3[4]='<a href="encyclopedie_batiments.php">Bâtiments</a>'
menu3[5]='<a href="encyclopedie_batspe.php">Batiments Spéciaux</a>'
menu3[6]='<a href="encyclopedie_aptitudes.php">Aptitudes</a>'
menu3[7]='<a href="encyclopedie_armadas.php">Armadas</a>'
menu3[8]='<a href="encyclopedie_races.php">Races</a>'
menu3[9]='<a href="encyclopedie_classes.php">Classes</a>'
menu3[10]='<a href="encyclopedie_dieux.php">Dieux</a>'
menu3[11]='<a href="encyclopedie_sorts.php?sorte=&niv=1">Sorts</a>'
menu3[12]='<a href="encyclopedie_objets.php">Objets</a>'
menu3[13]='<a href="encyclopedie_terrains.php">Terrains</a>'
menu3[14]='<a href="encyclopedie_politiques.php">Politiques</a>'
menu3[15]='<a href="encyclopedie_palatinat.php">Palatinat</a>'
menu3[16]='<img src="images/bouton/bas.gif" height="30">'

var menu4=new Array()
menu4[0]='<img src="images/bouton/haut.gif" height="14">'
menu4[1]='<a href="etatduserveur.php">État du serveur</a>'
menu4[2]='<a href="classement.php?nb=50">Classement général</a>'
menu4[3]='<a href="classement_guildes.php">Classement (Guildes)</a>'
menu4[4]='<a href="guerres.php">Guerres</a>'
menu4[5]='<a href="statistiques.php">Statistiques</a>'
menu4[6]='<a href="hof.php">Hall of Fame</a>'
menu4[7]='<img src="images/bouton/bas.gif" height="30">'

var menu5=new Array()
menu5[0]='<img src="images/bouton/haut.gif" height="14">'
menu5[1]='<a href="deconnexion.php">Déconnexion</a>'
menu5[3]='<img src="images/bouton/bas.gif" height="30">'

var menu6=new Array()
menu6[0]='<img src="images/bouton/haut.gif" height="14">'
menu6[1]='<a href="principale.php">Statut</a>'
//menu6[2]='<a href="creatures.php">Créatures</a>'
menu6[3]='<a href="inventaire.php">Inventaire</a>'
menu6[4]='<a href="aptitudes.php">Aptitudes</a>'
menu6[5]='<a href="mines.php">Prospection</a>'
//menu6[7]='<a href="connaissances.php">Connaissances</a>'
menu6[6]='<a href="diplomatique.php">Diplomatie</a>'
menu6[7]='<a href="archives.php">Archives</a>'
menu6[8]='<a href="profil.php">Votre Compte</a>'
menu6[9]='<img src="images/bouton/bas.gif" height="30">'

var menu7=new Array()
menu7[0]='<img src="images/bouton/haut.gif" height="14">'
menu7[1]='<a href="combat.php">Combattre</a>'
menu7[4]='<a href="palatinat.php">Palatinat</a>'
menu7[5]='<a href="mercenariat.php">Mercenariat</a>'
menu7[6]='<a href="discussion.php">Place Publique</a>'
menu7[7]='<a href="foire.php">Marché Central</a>'
menu7[8]='<a href="taverne.php?page=espionner">Sombre taverne</a>'
menu7[9]='<img src="images/bouton/bas.gif" height="30">'

var menu8=new Array()
menu8[0]='<img src="images/bouton/haut.gif" height="14">'
menu8[1]='<a href="batiments.php">Créatures & Bâtiments</a>'
menu8[2]='<a href="construction.php">Construire</a>'
//menu7[2]='<a href="recrutement.php">Recruter</a>'
menu8[3]='<a href="exploration.php">Explorer</a>'
menu8[4]='<a href="abandonner.php">Abandonner</a>'
menu7[2]='<a href="strategie.php">Stratégies</a>'
menu7[3]='<a href="Sort.php">Sorts</a>'
menu8[5]='<a href="menu_palatin.php">Gestion Province</a>'
menu8[6]='<a href="messagerie_reception.php">Messagerie</a>'
menu8[7]='<img src="images/bouton/bas.gif" height="30">'



var menuwidth='165px' //default menu width
var menubgcolor=''  //menu bgcolor
var disappeardelay=0  //menu disappear speed onMouseout (in miliseconds)
var hidemenu_onclick="yes" //hide menu when user clicks within menu?

var ie4=document.all
var ns6=document.getElementById&&!document.all

if (ie4||ns6)
document.write('<div id="dropmenudiv" style="visibility:hidden;width:'+menuwidth+';background-color:'+menubgcolor+';" onMouseover="clearhidemenu()" onMouseout="dynamichide(event)"></div>')

function getposOffset(what, offsettype)
{
	var totaloffset=(offsettype=="left")? what.offsetLeft : what.offsetTop;
	var parentEl=what.offsetParent;
	while (parentEl!=null)
	{
		totaloffset=(offsettype=="left")? totaloffset+parentEl.offsetLeft : totaloffset+parentEl.offsetTop;
		parentEl=parentEl.offsetParent;
	}
	return totaloffset;
}

function showhide(obj, e, visible, hidden, menuwidth)
{
	if (ie4||ns6)
		dropmenuobj.style.left=dropmenuobj.style.top=-500
	if (menuwidth!="")
	{
		dropmenuobj.widthobj=dropmenuobj.style
		dropmenuobj.widthobj.width=menuwidth
	}
	if (e.type=="click" && obj.visibility==hidden || e.type=="mouseover")
		obj.visibility=visible
	else if (e.type=="click")
		obj.visibility=hidden
}

function iecompattest()
{
	return (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body
}

function clearbrowseredge(obj, whichedge)
{
	var edgeoffset=0
	if (whichedge=="rightedge")
	{
		var windowedge=ie4 && !window.opera? iecompattest().scrollLeft+iecompattest().clientWidth-15 : window.pageXOffset+window.innerWidth-15
		dropmenuobj.contentmeasure=dropmenuobj.offsetWidth
		if (windowedge-dropmenuobj.x < dropmenuobj.contentmeasure)
			edgeoffset=dropmenuobj.contentmeasure-obj.offsetWidth
	}
	else
	{
		var windowedge=ie4 && !window.opera? iecompattest().scrollTop+iecompattest().clientHeight-15 : window.pageYOffset+window.innerHeight-18
		dropmenuobj.contentmeasure=dropmenuobj.offsetHeight
		if (windowedge-dropmenuobj.y < dropmenuobj.contentmeasure)
			edgeoffset=dropmenuobj.contentmeasure+obj.offsetHeight
	}
	return edgeoffset
}

function populatemenu(what)
{
	if (ie4||ns6)
		dropmenuobj.innerHTML=what.join("")
}

function dropdownmenu(obj, e, menucontents, menuwidth)
{
	if (window.event) event.cancelBubble=true
	else if (e.stopPropagation) e.stopPropagation()
	clearhidemenu()
	dropmenuobj=document.getElementById? document.getElementById("dropmenudiv") : dropmenudiv
	populatemenu(menucontents)

	if (ie4||ns6)
	{
		showhide(dropmenuobj.style, e, "visible", "hidden", menuwidth)
		dropmenuobj.x=getposOffset(obj, "left")
		dropmenuobj.y=getposOffset(obj, "top")
		dropmenuobj.style.left=dropmenuobj.x-clearbrowseredge(obj, "rightedge")+"px"
		dropmenuobj.style.top=dropmenuobj.y-clearbrowseredge(obj, "bottomedge")+obj.offsetHeight+"px"
	}
	return clickreturnvalue()
}

function clickreturnvalue()
{
	if (ie4||ns6) return false
	else return true
}

function contains_ns6(a, b)
{
	while (b.parentNode)
		if ((b = b.parentNode) == a)
			return true;
	return false;
}

function dynamichide(e)
{
	if (ie4&&!dropmenuobj.contains(e.toElement))
		delayhidemenu()
	else if (ns6&&e.currentTarget!= e.relatedTarget&& !contains_ns6(e.currentTarget, e.relatedTarget))
		delayhidemenu()
}

function hidemenu(e)
{
	if (typeof dropmenuobj!="undefined")
	{
		if (ie4||ns6)
			dropmenuobj.style.visibility="hidden"
	}
}

function delayhidemenu()
{
	if (ie4||ns6)
		delayhide=setTimeout("hidemenu()",disappeardelay)
}

function clearhidemenu()
{
	if (typeof delayhide!="undefined")
		clearTimeout(delayhide)
}

if (hidemenu_onclick=="yes")
	document.onclick=hidemenu
