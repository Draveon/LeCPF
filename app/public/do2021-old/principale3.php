<?php session_start();

	if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] == 0){
		if (!isset($_POST['login'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

/* PAGE PRINCIPALE DEBUT */
$temps = floor(time()/60);
require_once ("inclus/dates.inc");
$date = $heure.'<br>'.$jour.' '.$mois;

$_SESSION['connexion'] = 0;

if ($_SESSION['connexion'] == 1)
{
	$nom       = $_SESSION['nom'];
	$serveur   = $_SESSION['serveur'];
	$race = $_SESSION['race'];
	$classe  = $_SESSION['classe'];
	$titre = $_SESSION['titre'];
	$royaume = $_SESSION['royaume'];
	$dieu = $_SESSION['dieu'];
	$id_compte = $_SESSION['id_compte'];

	include("connect.php");
	include("temps_ecoulement.php");
	include("ainkurn_auto_proccess.php");

	// on fait les mises jour de la population/prisonniers, or normal/esclave ainsi que mana dans le fichier maj_or_mana.php
	// doit imperativement commencer la partie if ($connexion == 1)
	include ("maj_or_mana.php");
	maj_or_mana($nom);

	//on accède au bâtiment des créatures raciales gratuitement en se connectant sur son compte
	include("construire_raciale.php");



	include ('classement_cache.php');
	if ((strlen($jmasques) > 0) && (substr($jmasques,0,4) != "AND "))
		$jmasques = "AND ".$jmasques;
	$req = mysql_query("SELECT COUNT(id) FROM joueurs_infos WHERE score > '$score'") or die('Erreur SQL 372 !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$rang = $dat[0]+1;

	$req = mysql_query("SELECT id FROM messagerie WHERE `destinataire` = '".$nom."' AND `lu` = '0'") or die('Erreur SQL 376 !<br>'.mysql_error());
	$nombre_message = mysql_num_rows($req);
	$req = mysql_query("SELECT id FROM messagerie WHERE `destinataire` = 'Tous'") or die('Erreur SQL 378 !<br>'.mysql_error());
	$nombre_message2 = mysql_num_rows($req);
	if ($nombre_message2 > 0)
	{
		$req = mysql_query("SELECT missive_publique FROM joueurs_modificateurs WHERE `nom` = '".$nom."'") or die('Erreur SQL 382 !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$nombre_message2 = $data[0];
		if ($nombre_message2 == 0)
			$nombre_message++;
	}

	mysql_close();
	// ON DOIT AVOIR TOUTES LES DONNEES







	// FIN DE LA FONCTION ENTETE("STATUT")



}
/* AFFICHAGE */

include ('debut2.php');
include('header.php');
include('statut2.php');
include('mines2.php');
include('footer.php');



$meta_supp .=
'<script type="text/javascript">
var cligne=0;
function clignote()
{
	tabColoris = new Array ("red", "#1F3976");
	if (cligne+1 == tabColoris.length) { cligne=0; }
	else { cligne++; }
	document.getElementById("NouveauMessage").style.color = tabColoris[cligne];
	window.setTimeout("clignote()",500);
}
</script>';
$onload = 'onload="clignote();"';
?>


</html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.10/js/all.js" integrity="sha384-slN8GvtUJGnv6ca26v8EzVaR9DC58QEwsIk9q1QXdCU8Yu8ck/tL/5szYlBbqmS+" crossorigin="anonymous"></script>
<script src="dist/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function() {
		$('.view_data').click(function() {
			var archive_id = $(this).attr("id");
			$.ajax({
                url:"selectArchive.php",
                method:"post",
                data:{archive_id:archive_id},
                success:function(data){
                     $('#archive_detail').html(data);
                     $('#modalArchive').modal("show");
                }
           });
		})
	})
</script>

<script type="text/javascript"><!--
google_ad_client = "pub-0040694376443235";
/* Destinee online */
google_ad_slot = "3473958144";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
