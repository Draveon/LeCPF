<?php
//$_SESSION['serveur'] = "4";
include("connect.php");
include("ainkurn_calendrier.class.php");
include("ainkurn_marche_auto.class.php");


//marche_noir_normal
$cal = new Calendrier("marche_noir_normal");

if($cal->isItForNow())
{
	$id = new MarcheAuto();
	$id->envoyerAuMarcheNoirNormal();
}

//marche_noir_special
$cal = new Calendrier("marche_noir_special");
if($cal->isItForNow())
{
	$id = new MarcheAuto();
	$id->envoyerAuMarcheNoirSpecial();
}


//marche_noir_special
$cal = new Calendrier("marche_noir_crea");
if($cal->isItForNow())
{
	$id = new MarcheAuto();
	$id->envoyerAuMarcheNoirCrea();
}

// score
$cal = new Calendrier("score");
if($cal->isItForNow())
{
	include("maj_score.php");
}


//hof
$cal = new Calendrier("hof");
if($cal->isItForNow())
{
	include("ainkurn_hof_auto.php");
}

?>
