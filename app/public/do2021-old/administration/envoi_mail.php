<? 
include("connect_4.php");

$sql = "SELECT email FROM joueurs_infos";
$result = mysql_query($sql);

for($i = 0; $i<mysql_num_rows($result);$i++)
{

	$data = mysql_fetch_row($result);
	
	$email = $data[0];
	
	$message = "Bonjour,
Vous recevez ce mail car vous êtes inscrit au concours de l'été.
Afin de dissiper tout malentendu sur la date de lancement, celui ci sera lancer dans trois heures.
A savoir 0h00 en France et 18h00 au Québec.

Merci pour votre compréhension

L'Equipe d'Administration 
	
";
	
	$sujet="Concours de l'été";
    $headers="From: inscription@destinee-online.com\n";
    mail($email,$sujet,$message,$headers);
}
