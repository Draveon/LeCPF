<?php
session_start();

$joueur['nom'] = (isset($_SESSION['nom']) && $_SESSION['nom'] != '') ? $_SESSION['nom'] : 'Non connect�' ;
$joueur['server'] = (isset($_SESSION['serveur']) && $_SESSION['serveur'] != '') ? $_SESSION['serveur'] : 'Non connect�' ;
$joueur['ip'] = $_SERVER['REMOTE_ADDR'];
?>
<html>
	<body>
		<p>Tu n'as rien � faire ici, aussi ne verras tu pas ce que contient ce charmant dossier.</p>
		<p>Toutefois, dans mon infinie bont�, et dans la volont� de "ne rien te cacher", sache que tu as �t� logu� comme tentant une
		entr�e dans ce r�pertoire avec l'adresse <?php echo $joueur['ip'].'. '; if($joueur['nom'] != 'Non connect�') echo 'Ton pseudo
		semble �galement �tre '.$joueur['nom'].' sur le serveur '.$joueur['serveur'].'...'; ?></p><br />
		<p>Sur ce, je te souhaite bonne journ�e parmi le dossier racine.</p>
	</body>
</html>
<?php

$handle = fopen("../temp/dir_denied.log", "a");
fwrite($handle, "\nTentative le ".time()." sur ".getenv("SCRIPT_NAME")." par ".$joueur['ip']." (joueur ".$joueur['nom']." serveur ".$joueur['server'].")");
fclose($handle);
?>