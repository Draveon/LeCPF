<?php
session_start();

$joueur['nom'] = (isset($_SESSION['nom']) && $_SESSION['nom'] != '') ? $_SESSION['nom'] : 'Non connecté' ;
$joueur['server'] = (isset($_SESSION['serveur']) && $_SESSION['serveur'] != '') ? $_SESSION['serveur'] : 'Non connecté' ;
$joueur['ip'] = $_SERVER['REMOTE_ADDR'];
?>
<html>
	<body>
		<p>Tu n'as rien à faire ici, aussi ne verras tu pas ce que contient ce charmant dossier.</p>
		<p>Toutefois, dans mon infinie bonté, et dans la volonté de "ne rien te cacher", sache que tu as été logué comme tentant une
		entrée dans ce répertoire avec l'adresse <?php echo $joueur['ip'].'. '; if($joueur['nom'] != 'Non connecté') echo 'Ton pseudo
		semble également être '.$joueur['nom'].' sur le serveur '.$joueur['serveur'].'...'; ?></p><br />
		<p>Sur ce, je te souhaite bonne journée parmi le dossier racine.</p>
	</body>
</html>
<?php

$handle = fopen("../temp/dir_denied.log", "a");
fwrite($handle, "\nTentative le ".time()." sur ".getenv("SCRIPT_NAME")." par ".$joueur['ip']." (joueur ".$joueur['nom']." serveur ".$joueur['server'].")");
fclose($handle);
?>