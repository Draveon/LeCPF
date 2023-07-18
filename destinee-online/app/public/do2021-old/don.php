<? session_start();

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}

entete("Faire un achat !");

// On vérifie le dernier don !
$serveur = $_SESSION['serveur'];
$nom = $_SESSION['nom'];

include("connect.php");
$sql = 'SELECT connexion_bonus FROM joueurs_connexions WHERE nom = "'.$nom.'"';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$dat = mysql_fetch_row($req);
// ---------------------------

echo '<table border="0" style="width: 630px; text-align: left;"><tbody><tr><td>';

if ($dat[0] < ((time()/60) - 1440)){
	if (isset($_GET['bonus'])){
		include('don/'.$_GET['bonus'].'.php');
	}
	else {
		echo '<strong><span style="font-family: papyrus;">Je désire faire un achat !</span></strong><br>';
		
		echo '<DIV ALIGN=JUSTIFY><P STYLE="text-indent: 1cm">
			Vous aimeriez bien participer au maintient et à la survit de Destinée, mais l\'idée de le faire sans rien en retour ne vous attire pas ? Qu\'à cela ne tienne. Puisque
			Destinée a dû se munir d\'un serveur dédié et que les frais reliés à la gestion et au maintient du site web ne cessent de grandir, il vous
			est désormais possible d\'obtenir un quelconque dédommagement en échange des quelques sous investis. Je rappelle qu\'il s\'agit ici de geste
			purement volontaire, sécuritaire et discret.
			</p>
			
			<UL>
			<LI><b><a href="don.php?bonus=ressources">Envie d\'obtenir de nouvelles ressources ? Cliquez ici !</a></b></LI>
			</UL>
			
			<DIV ALIGN=JUSTIFY><P STYLE="text-indent: 1cm">
			<b>IMPORTANT - À lire avant tout achat !</b> Un seul achat ne sera cumulé par période de 24h ! Moi, Balthazar, ainsi que l\'ensemble de l\'Équipe d\'Administration sommes très honoré par le geste
			que vous vous apprêtez à faire. Nous vous remercions mille fois en notre nom, en mon nom personnel, ainsi qu\'au nom de tous les joueurs qui
			pourront continuer, au fil du temps, d\'apprécier les joies de Destinée-Online ! Encore merci, votre générosité nous est très chère.
			</p>';
	}
}
else {
	echo '<strong><span style="font-family: papyrus;">Vous devez patienter encore...</span></strong><br>';
		
	echo '<center><br><b>Un délais de 24h entre chaque bonus est obligatoire !</b>';
}

echo '</td></tr></tbody></table>';

include("fin.php");
