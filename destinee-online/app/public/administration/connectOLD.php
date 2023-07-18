
<?
$serveur = $_SESSION['serveur'];

if (!isset($_SESSION['serveur'])){
    $serveur = 1;
}


$db = mysql_connect("localhost", "phpmyadmin", "n5k8Ha6W") or die (mysql_error());
switch($serveur)
{
	case '1' :	mysql_select_db("Destinee01");	break;
	case '2' :	mysql_select_db("Destinee02");	break;
	case '3' :	mysql_select_db("Destinee03");	break;
	case '4' :	mysql_select_db("Destinee04");	break;
}


/* SERVEUR 1&1
switch($serveur){
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
}
*/
?>
