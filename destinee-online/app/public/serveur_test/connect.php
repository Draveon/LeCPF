<?
$serveur = (!isset($_SESSION['serveur'])) ? 1 : $_SESSION['serveur'];


//echo "<color='red'>Un problème important est survenu durant l'exportation du jeu, DO est inaccessible pour un petit moment.</color>";

$db = mysql_connect("localhost", "destinee-online", "hNme2cGR6eqmSDY5") or die (mysql_error());
switch($serveur)
{
	case '1' :	mysql_select_db("Destinee05");	break;
	case '2' :	mysql_select_db("Destinee05");	break;
}



	/* SERVEUR 1&1
	case '1' :
	$db = mysql_connect("localhost", "dbo206001542", "xqDtBb39") or die (mysql_error());
	mysql_select_db("db206001542");	
	break;
	
	case '2' : 
	$db = mysql_connect("localhost", "dbo207632503", "NDpMUgHG") or die (mysql_error());
	mysql_select_db("db207632503"); 
	break;
	
	case '3' :
	$db = mysql_connect("localhost", "dbo207632530", "qEpMTMux") or die (mysql_error());
	mysql_select_db("db207632530"); 
	break;
	
	case '4' : 
	$db = mysql_connect("localhost", "dbo207632550", "maHx6JPG") or die (mysql_error());
	mysql_select_db("db207632550"); 
	break;
	*/
?>
