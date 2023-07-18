<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

include ("debut.php");
include ("menu.php");
entete("Taverne");

$nom = $_SESSION['nom'];
$page = $_GET['page'];

if ($page == "espionner"){include("espionner.php");}
else{

?>

<FONT SIZE=+2><b><span style='font-family: papyrus;'>Le Coin des Mécréants...</span><br><br></b></font></div>

</tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>

<br>

<?php if ($page == ""){?>

<table style="width: 720px; text-align: center;" border="0" cellspacing="0" cellpadding="0"><tbody><tr>

<td style="vertical-align: top; text-align: left;"><div align="left"><table style="width: 330px; height: 100%; text-align: center; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td>
<td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;"><div align="center">
<br><FONT SIZE=+1><b><span style='font-family: papyrus;'>Espionner</font></b></span><br><br>

<a href="taverne.php?page=espionner">
<img id="myimage" src="/images/espionner.gif" width="100px" height="100px" alt="Espionner" border=1>
<script language="JavaScript1.2">

//Image spotlight effect- By Erik F (die_schlampe@hotmail.com)
//Code enhancements by Dynamicdrive.com
//Visit http://www.dynamicdrive.com for this script

s = 50; // the size of the spotlight
vp = 10; // the visibility percent of the picture
startx = 0; // the top position of your sportlight into the image (on start)
starty = 0; // the left position of your spotlight into the image (on start)


//////////////////////////////////////////////////////////////////
//		No need to edit below this line			//
//////////////////////////////////////////////////////////////////

var IE = document.all?true:false

function moveL()
{
xv = tempX;
yv = tempY;
myimage.filters.light.MoveLight(1,xv,yv,s,true);
}

if (IE&&myimage.filters)
document.all.myimage.onmousemove = getMouseXY;
var tempX = 0
var tempY = 0


function getMouseXY(e) {
tempX = event.offsetX
tempY = event.offsetY

  if (tempX < 0){tempX = 0}
  if (tempY < 0){tempY = 0}
  if (t)
  {
   moveL();
  }

  return true
}

var xv = startx;
var yv = starty;
var t= true;
if (IE&&myimage.filters){
myimage.style.cursor="hand";
myimage.filters.light.addAmbient(255,255,255,vp)
myimage.filters.light.addPoint(startx,starty,s,255,255,255,255)
}

</script>
</a>

<br><br><br>

</td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table></td>

<td style="vertical-align: top; text-align: right;"><div align="right"><table style="width: 330px; height: 100%; text-align: center; background-image: URL(/images/fond.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);"></td>
<td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;"><div align="center">
<br><FONT SIZE=+1><b><span style='font-family: papyrus;'>Soudoyer</font></b></span><br><br>

<a href="taverne.php?page=soudoyer">
<img src="/images/soudoyer.gif" width="100px" height="100px" alt="Soudoyer" border=1></a><br><br><br>

</td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table></td>

</tr></tbody></table></div>

<?php
}
if ($page == "soudoyer"){include("soudoyer.php");}
include("fin.php");
}
