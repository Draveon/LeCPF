<?php session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$temps = floor(time()/60);
require_once ("inclus/dates.inc");
$date = $heure.'<br>'.$jour.' '.$mois;


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

	// faut recharger les stats puisque'elles ont changé
	$req  = mysql_query("SELECT cristal, gemme, soufre, mercure, niveau, xp, but, att, def, ini, cha, end, pui, mana, argent, score FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL 148 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$ress = array( 'cristal' => $data[0], 'gemme' => $data[1], 'soufre' => $data[2], 'mercure' => $data[3]);
	$niveau		= $data[4];
	$xp		= $data[5];
	$but		= $data[6];
	$att		= $data[7];
	$def		= $data[8];
	$ini		= $data[9];
	$cha		= $data[10];
	$end		= $data[11];
	$pui		= $data[12];
	$mana	  	= $data[13];	// après mise à jour
	$or       	= $data[14];	// après mise à jour
	$score		= $data[15];




	// Mise à jour des ventes terminées sur le marché central
	$transactionError = '';
	$req3 = mysql_query("SELECT COUNT(`id`) AS nbr FROM foire_vente WHERE (acheteur = '".$nom."' OR vendeur = '".$nom."' OR `privé` = '".$nom."') AND temps < '".$temps."'") or die('Erreur SQL !<br>'.mysql_error());
	$nombre = mysql_fetch_row($req3);
	if ($nombre[0] > 0)
	{
		require_once ('foire_include.php');
		$transactionError = realiseVentesMarche();
	}

	// données reliées au perso lui-même
	$req  = mysql_query("SELECT population, population2 FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL 137 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$pop	  = $data[0];	// après mise à jour
	$pop2     = $data[1];	// après mise à jour
	$population = $pop;
	// données reliées au perso terminées

	// Sauvegarde de la nouvelle adresse IP
	mysql_query("UPDATE `joueurs_infos` SET `ip_dernier` = '".$_SERVER['REMOTE_ADDR']."' WHERE id = '".$id_compte."'") or die('Erreur SQL 137 !<br>'.mysql_error());
	mysql_query("UPDATE `joueurs_stats` SET `f_equi` = '0.00' WHERE nom = '".$nom."'") or die('Erreur SQL 137 !<br>'.mysql_error());
	// mysql_query("UPDATE `joueurs_connexions` SET `connexion_dernière` = '".$temps."' WHERE nom = '".$nom."'") or die('Erreur SQL 137 !<br>'.mysql_error());
		// Maj de la dernière connexion déplacée dans "draveon_auto_xp"
	
	// FIN Les différents updates

	// PASSAGE DE NIVEAU
	include_once("puissance.php");
	passedeniveau($nom);
	$puissance = maj_puissance($nom);
	// faut recharger les stats puisque'elles ont changé
	$req  = mysql_query("SELECT cristal, gemme, soufre, mercure, niveau, xp, but, att, def, ini, cha, end, pui, mana, argent, score FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL 148 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$ress = array( 'cristal' => $data[0], 'gemme' => $data[1], 'soufre' => $data[2], 'mercure' => $data[3]);
	$niveau		= $data[4];
	$xp		= $data[5];
	$but		= $data[6];
	$att		= $data[7];
	$def		= $data[8];
	$ini		= $data[9];
	$cha		= $data[10];
	$end		= $data[11];
	$pui		= $data[12];
	$mana	  	= $data[13];	// après mise à jour
	$or       	= $data[14];	// après mise à jour
	$score		= $data[15];

	$req = mysql_query("SELECT `but`, `niveau`, `att`, `def`, `ini`, `end`, `pui`, `cha`, `puissance`, `score` FROM `joueurs_stats` WHERE nom ='$nom'") or die('Erreur SQL  300 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$but	= $data[0];
	$niveau	= $data[1];
	$att	= $data[2];
	$def	= $data[3];
	$ini	= $data[4];
	$end	= $data[5];
	$pui	= $data[6];
	$cha	= $data[7];
	$puissance = $data[8];
	$score = $data[9];
	// FIN PASSAGE DE NIVEAU

	// AMELIORATION D'OBJETS
	$req = mysql_query("SELECT * FROM `joueurs_objets` WHERE nom ='$nom'") or die('Erreur SQL  300 !<br>'.mysql_error());
	$data = mysql_fetch_assoc($req);
	for ($i=1;isset($data[$i]);$i++) {
		$objet_en_cours = $data[$i];
		$req2 = mysql_query("SELECT `fin_amelioration`, `bonus` FROM `objets_items` WHERE id = $objet_en_cours") or die('Erreur SQL  300 !<br>'.mysql_error());
		$data2 = mysql_fetch_row($req2);
		if ($data2[0] > 0 && $data2[0] < $temps) {
			mysql_query("UPDATE `objets_items` SET `fin_amelioration` = 0 WHERE id = $objet_en_cours") or die('Erreur SQL  300 !<br>'.mysql_error());
			mysql_query("INSERT INTO `combat_joueurs` (`attaquant`, `temps`, `victoire`, `date`, `texte1`) VALUES ('$nom', '$temps', 'artisanat', '$date', 'L\'amélioration de votre objet est terminée')") or die('Erreur SQL  300 !<br>'.mysql_error());
		}
	}

	// AFFICHAGE DE LA PAGE

	$pop1 = $pop + $pop2;

	$but	= number_format($but, 0, ",", " ");
	$xp	= number_format($xp, 0, ",", " ");
	$mana	= number_format($mana, 0, ",", " ");
	$or	= number_format($or, 0, ",", " ");
	$pop2	= number_format($pop2, 0, ",", " ");
	$pop1	= number_format($pop1, 0, ",", " ");

	// Les différentes images reliés au héros
	$req = mysql_query("SELECT avatar FROM joueurs_heros WHERE nom = '".$_SESSION['nom']."'") or die('Erreur SQL 358 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$avatar = $data[0];
	$req = mysql_query("SELECT image FROM classes WHERE classe = '".$classe."'") or die('Erreur SQL 358 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$im_classe = $data[0];
	$req = mysql_query("SELECT image FROM races WHERE race = '".$race."'") or die('Erreur SQL 361 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$im_race = $data[0];
	$req = mysql_query("SELECT nom, image FROM stats_dieux WHERE nom = '".$dieu."'") or die('Erreur SQL 364 !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$nom_dieu = $data[0];
	$im_dieu = $data[1];

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


	include ("debut.php");
		 
	include ("menu.php");
		
	// DÉBUT DE LA FONCTION ENTETE("STATUT")
	if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0)
		$connexion = 0;
	else
	{
		$connexion = 1;
		$nom = $_SESSION['nom'];
		$titre = $_SESSION['titre'];
		$royaume = $_SESSION['royaume'];

		include("connect.php");
		$sql = "SELECT * FROM joueurs_stats WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		mysql_close();

		$niveau = $data[2];
		$puissance = number_format($data[3], 0, ",", " ");
		$exp = number_format($data[4], 0, ",", " ");
		$but = number_format($data[5], 0, ",", " ");
		$mana = number_format($data[12], 0, ",", " ");
		$argent = number_format($data[15], 0, ",", " ");
	}

	echo '<div align="center">
<table class="entetetableindex"><tbody>
	<tr>	<td class=""></td>
		<td class="text-left">';
	if ($connexion == 1)	echo '	<span class="nomJoueur">'.$nom.'</span>,<br>
					<span class="nomRoyaume">'.$titre.' '.$royaume.'</span>';
	else			echo '	<span class="nomJoueur">Bienvenue !</span><br>
					<span class="nomRoyaume">Destinee-Online.com</span>';
	echo '		</td>
		<td class="nomPage">';
	echo '~ <h1>Statut</h1> ~';
	if ($nombre_message == 1)	echo '<br><h6><a id= "NouveauMessage" class="newMessage" href="messagerie_reception.php">Nouveau Message</a></h6>';
	else if ($nombre_message > 1)	echo '<br><h6><a id="NouveauMessage" class="newMessage" href="messagerie_reception.php">Nouveaux Messages</a></h6>';
	echo '</td>
		<td class="" rowspan="2"></td></tr>

	<tr>	<td class="cadrebottom"   colspan="4"></td></tr>
</tbody></table>'."\n\n";

	if ($connexion == 1)	echo '<p class="statsHero"><strong>Niveau :</strong> '.$niveau.' | <strong>Puissance :</strong> '.$puissance.' | <strong>Xp :</strong> '.$exp.' / '.$but.' | <strong>Pièces d\'or :</strong> '.$or.' | <strong>Mana :</strong> '.$mana.' | <strong>Rang :</strong> '.$rang.' </p>';
	else			echo "";

	echo cadre_debut();

	// FIN DE LA FONCTION ENTETE("STATUT")

	
	// XP AUTO 2E VERSION
		 include("draveon_auto_xp.php");

	include ("statut.php");


}
// --- Si la connexion a été refusée, ou si les champs sont restés vides... : ---
else
{
	echo '<!doctype html public "-//W3C//DTD HTML 4.0 //EN"><html><head>
		<title></title>
		<meta http-equiv="refresh" content="0; url=/index.php">
		'."\n";
	if ($bloque == md5('bloquer'))
		echo 'alert("Votre compte a été temporairement banni pour cause de multicomptes et/ou d\'abus sur le marché central. Si vous croyez avoir été bloqué à tort, prière de vous adresser aux responsables des multicomptes à l\'adresse suivante : mult"+"ico"+"mptes"+"@"+"destinee-"+"on"+"line.com.");'."\n";
	if ($vacances != '')
		echo 'alert("Votre compte est en mode Vacances pour encore '.$vacances.'.");'."\n";
	echo '		</head>
		<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);">
		</body></html>';
}


?>
<!-- Global Site Tag (gtag.js) - Google Analytics -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-138966644-1"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-138966644-1');
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">var scrolltotop={setting:{startline:100,scrollto:0,scrollduration:1e3,fadeduration:[500,100]},controlHTML:'<img src="https://i1155.photobucket.com/albums/p559/scrolltotop/arrow86.png" />',controlattrs:{offsetx:5,offsety:5},anchorkeyword:"#top",state:{isvisible:!1,shouldvisible:!1},scrollup:function(){this.cssfixedsupport||this.$control.css({opacity:0});var t=isNaN(this.setting.scrollto)?this.setting.scrollto:parseInt(this.setting.scrollto);t="string"==typeof t&&1==jQuery("#"+t).length?jQuery("#"+t).offset().top:0,this.$body.animate({scrollTop:t},this.setting.scrollduration)},keepfixed:function(){var t=jQuery(window),o=t.scrollLeft()+t.width()-this.$control.width()-this.controlattrs.offsetx,s=t.scrollTop()+t.height()-this.$control.height()-this.controlattrs.offsety;this.$control.css({left:o+"px",top:s+"px"})},togglecontrol:function(){var t=jQuery(window).scrollTop();this.cssfixedsupport||this.keepfixed(),this.state.shouldvisible=t>=this.setting.startline?!0:!1,this.state.shouldvisible&&!this.state.isvisible?(this.$control.stop().animate({opacity:1},this.setting.fadeduration[0]),this.state.isvisible=!0):0==this.state.shouldvisible&&this.state.isvisible&&(this.$control.stop().animate({opacity:0},this.setting.fadeduration[1]),this.state.isvisible=!1)},init:function(){jQuery(document).ready(function(t){var o=scrolltotop,s=document.all;o.cssfixedsupport=!s||s&&"CSS1Compat"==document.compatMode&&window.XMLHttpRequest,o.$body=t(window.opera?"CSS1Compat"==document.compatMode?"html":"body":"html,body"),o.$control=t('<div id="topcontrol">'+o.controlHTML+"</div>").css({position:o.cssfixedsupport?"fixed":"absolute",bottom:o.controlattrs.offsety,right:o.controlattrs.offsetx,opacity:0,cursor:"pointer"}).attr({title:"Scroll to Top"}).click(function(){return o.scrollup(),!1}).appendTo("body"),document.all&&!window.XMLHttpRequest&&""!=o.$control.text()&&o.$control.css({width:o.$control.width()}),o.togglecontrol(),t('a[href="'+o.anchorkeyword+'"]').click(function(){return o.scrollup(),!1}),t(window).bind("scroll resize",function(t){o.togglecontrol()})})}};scrolltotop.init();</script>
