var clic_barre=false; 
var clic_carre=false;
 
var r=255,g=0,b=0;
var r_1=255,g_1=0,b_1=0;
var blanc=0,noir=1;

var x=360,y=20;

function clique(objet)
{
	if(objet=="barre")
	{	
		clic_barre=true;
	}
	else
	{ 
		clic_carre=true;
	}
}

function position(axe,event)
{
	var e = event || window.event; 
	if(axe=="x")
	{
		var rep=e.clientX;
	}
	else
	{
		var rep=e.clientY;
	}
	return rep;
}

document.onmousemove=calcul;
document.onmousedown=calcul;
document.onmouseup=function() { clic_barre=false;clic_carre=false; }

function calcul(event)
{
	if(clic_barre && position('y',event)<=320 && position('y',event)>=20)
	{
		document.getElementById("curseur1").style.top=position('y',event)-7+"px";

		if((position('y',event)-20)<=50)
		{
			r=255;
			g=0;
			b=Math.round((position('y',event)-20)*255/50);
		}
		else if((position('y',event)-20)<=100)
		{
			r=Math.round(255-((position('y',event)-70)*255/50));
			g=0;
			b=255;
		}
		else if((position('y',event)-20)<=150)
		{
			r=0;
			g=Math.round((position('y',event)-120)*255/50);
			b=255;
		}
		else if((position('y',event)-20)<=200)
		{
			r=0;
			g=255;
			b=Math.round(255-((position('y',event)-170)*255/50));
		}
		else if((position('y',event)-20)<=250)
		{
			r=Math.round((position('y',event)-220)*255/50);
			g=255;
			b=0;
		}
		else if((position('y',event)-20)<=300)
		{
			r=255;
			g=Math.round(255-((position('y',event)-270)*255/50));
			b=0;
		}
		document.getElementById("carre").style.backgroundColor="rgb("+r+","+g+","+b+")";

		afficher();
	}
	if(clic_carre)
	{
		if(position('y',event)>20 && position('y',event)<320)
		{ 
			document.getElementById("curseur2").style.top=(position('y',event)-10)+"px";
			y=position('y',event);
		}
		if(position('x',event)>60 && position('x',event)<360)
		{
			document.getElementById("curseur2").style.left=(position('x',event)-10)+"px";
			x=position('x',event);
		}
		afficher();
	}
}

function afficher()
{ 
	noir=Math.round( (x-60)*100/300)/100; 
	blanc=Math.round((y-20)*100/300)/100; 

	r_1=Math.round((255-r)*blanc)+r;
	g_1=Math.round((255-g)*blanc)+g;
	b_1=Math.round((255-b)*blanc)+b;
	 
	r_1=Math.round(r_1*noir);
	g_1=Math.round(g_1*noir);
	b_1=Math.round(b_1*noir);
	 
	document.getElementById("rgb").value=r_1+","+g_1+","+b_1;
	document.getElementById('resultat').style.backgroundColor="rgb("+r_1+","+g_1+","+b_1+")";
}

function valider()
{
	
	startTag = "[color=\"rgb("+document.getElementById("rgb").value+");\"]";
	endTag = "[/color]";
	
	window.opener.insererTag(startTag, endTag, "message")
	window.close();
	
}