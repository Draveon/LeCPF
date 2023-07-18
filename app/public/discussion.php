<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$nom = $_SESSION['nom'];

include ("debut.php");
include ("menu.php");
entete("Place publique");

include ('connect.php');
include('chat/chat.php');


$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$guilde = $data[1];

// détermination de quelle chatbox doit être active
$mode = getMode($province, $guilde);

$Caracs = array("¥" => "Y", "µ" => "u", "À" => "A", "Á" => "A",
                "Â" => "A", "Ã" => "A", "Ä" => "A", "Å" => "A",
                "Æ" => "A", "Ç" => "C", "È" => "E", "É" => "E",
                "Ê" => "E", "Ë" => "E", "Ì" => "I", "Í" => "I",
                "Î" => "I", "Ï" => "I", "Ð" => "D", "Ñ" => "N",
                "Ò" => "O", "Ó" => "O", "Ô" => "O", "Õ" => "O",
                "Ö" => "O", "Ø" => "O", "Ù" => "U", "Ú" => "U",
                "Û" => "U", "Ü" => "U", "Ý" => "Y", "ß" => "s",
                "à" => "a", "á" => "a", "â" => "a", "ã" => "a",
                "ä" => "a", "å" => "a", "æ" => "a", "ç" => "c",
                "è" => "e", "é" => "e", "ê" => "e", "ë" => "e",
                "ì" => "i", "í" => "i", "î" => "i", "ï" => "i",
                "ð" => "o", "ñ" => "n", "ò" => "o", "ó" => "o",
                "ô" => "o", "õ" => "o", "ö" => "o", "ø" => "o",
                "ù" => "u", "ú" => "u", "û" => "u", "ü" => "u",
                "ý" => "y", "ÿ" => "y");
$tmp = get_html_translation_table(HTML_ENTITIES);
$tmp = array_flip ($tmp);
$nom = strtr ($nom, $tmp);
$string  = strtr("$nom", $Caracs);

echo '<table class="localtable630"><tbody>
<tr>	<td><h2><a name="chat"></a>Discussions en ligne !</h2>
	Avant de poser votre question, avez-vous vérifié que la réponse ne se trouve pas déjà dans la faq?	
';

// CHAT
mysql_close();
echo writeAllChatboxes($nom, $serveur, 'discussion.php', $mode, $province, $guilde);
include ('connect.php');

// FIN DES CHATS

echo '<br>

</td></tr></tbody></table>';

include("fin.php");
