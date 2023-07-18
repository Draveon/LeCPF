<?php session_start();

$temps = floor(time()/60);


// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$classe = $_SESSION['classe'];

$temps = floor(time()/60);

include("connect.php");
$req = mysql_query("SELECT province, guilde FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$guilde = $data[1];
$req = mysql_query("SELECT * FROM guildes WHERE nom = '$guilde'") or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$nombre = $data[3];
$image = $data[5];
$chef = $data[6];

if($chef == $nom)
{
	
	$modif = $_GET['modif'];
	?>
	
	<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
	<html>
	<head>
	       <title>Gestion de votre alliances</title>
	</head>
	<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000"
	style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);"><br>
	<div align="center"><table style="width: 92%; text-align: center; background-image: URL(/images/arriereplan.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
	</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
	</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
	</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
	<br><FONT SIZE=+2><b><span style='font-family: papyrus;'><? echo $guilde ?></b></font></span><br><br>
	<?
	echo "<img src='/images/gauche.gif' alt='' border='0'>
	     <img src='$image' width='100px' height='100px' alt='$guilde' border='1'>
	     <img src='/images/droite.gif'alt='' border='0'><br><br>";
	
	echo "<b>Cette Armada est sous votre contrôle.</b>";
	?>
	
	<br><br></td></tr><tr><td colspan="4" rowspan="1" style="height: 10px; vertical-align: top;
	background-image: URL(/images/splitbar.gif);"></td></tr></tbody></table>
	
	<br>
	
	<table style="width: 92%; text-align: center; background-image: URL(/images/arriereplan.gif);" border="0" cellspacing="0" cellpadding="0"><tbody><tr>
	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
	</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
	</tr><tr><td style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote.gif);">
	</td><td colspan="2" rowspan="1" style="vertical-align: top; text-align: center;">
	
	<?
	if ($modif == 1)
	{
		
		$nouveau = ((isset($_GET['joueid']))&&(is_numeric($_GET['joueid']))) ? round($_GET['joueid']) : '';
		if ($nouveau != '')
		{
			function getMois($month){
				$mois = array();
				$mois["January"] = "Janvier";
				$mois["February"] = "Février";
				$mois["March"] = "Mars";
				$mois["April"] = "Avril";
				$mois["May"] = "Mai";
				$mois["June"] = "Juin";
				$mois["July"] = "Juillet";
				$mois["August"] = "Août";
				$mois["September"] = "Septembre";
				$mois["October"] = "Octobre";
				$mois["November"] = "Novembre";
				$mois["December"] = "Décembre";
				return $mois[$month];
			}
			
			$sql = "SELECT nom FROM `joueurs_bonus` WHERE `guilde` = 'Aucune' AND id = '".$nouveau."'";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			if (mysql_num_rows($req) == 1)
			{
				$joueur = mysql_fetch_row($req);
				
				$accept = $_GET['accept'];
				if ($accept == 1)
				{
					$nombre++;
					$sql = "UPDATE `guildes` SET `nb_membres` = '$nombre' WHERE nom = '$guilde'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					
					$sql = "UPDATE `joueurs_bonus` SET `guilde` = '$guilde' WHERE id = '".$nouveau."'";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					
					$delete = mysql_query("DELETE FROM `guildes_inscription` WHERE `joueur` = '".$joueur[0]."'");
					
					$sql = "INSERT INTO messagerie
								(`auteur`, `destinataire`, `titre`, `message`, `date`, `temps`)
							VALUES ('Office des Affaires Etrangères', '".$joueur[0]."'	, 'Votre candidature a été acceptée'	, 'Votre candidature à l''armada ".$guilde." a été acceptée par son chef.\n\nBienvenue!' , '".Date('d')." ".getMois(Date('F'))."'	, '".$temps."');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					
					// ajout d'un évènement
					if (mt_rand(1,1) == 1)
					{
						$sql = "INSERT INTO `evenement` ( `id` , `titre` , `texte` , `tempsdelete`, `tempspost` )
							VALUES ('', 'Armadas', '<b>".$joueur[0]."</b> vient d''intégrer l''armada <b>$guilde</b>!', '".($temps+720)."', '$temps')";
						$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
					}
				}
				if ($accept == 0)
				{
					$delete = mysql_query("DELETE FROM `guildes_inscription` WHERE `joueur` = '".$joueur[0]."'");
					
					$sql = "INSERT INTO messagerie
								(`auteur`, `destinataire`, `titre`, `message`, `date`, `temps`)
							VALUES ('Office des Affaires Etrangères', '".$joueur[0]."'	, 'Votre candidature a été rejetée'	, 'Votre candidature à l''armada ".$guilde." a été refusée par son chef.' , '".Date('d')." ".getMois(Date('F'))."'	, '".$temps."');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				}
			}
		}
		
		echo '<br><b>Gestion des demandes d\'adhésion</b><br><br>		
		<center><table style="width: 550px;" border="0" cellpadding="0" cellspacing="0"><tbody>';
		$sql = "SELECT joueur FROM guildes_inscription WHERE guilde = '$guilde' ORDER BY joueur";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
		{
			echo '<tr onMouseover="this.bgColor=\'#D2A945\'" onMouseout="this.bgColor=\'\'">';
			$joueur = $data[0];
			$sql2 = "SELECT race, classe, titre, royaume, puissance, id FROM joueurs_heros WHERE nom = '$joueur'";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
			$data2 = mysql_fetch_row($req2);
			$race2 = $data2[0];
			$classe2 = $data2[1];
			$titre2 = $data2[2];
			$royaume2 = $data2[3];
			$puissance2 = number_format($data2[4], 0, ",", ",");
			$joueid = $data2[5];
			
			echo '<td class="tdlef">'.$joueur.', '.$titre2.' '.$royaume2.'</a></td>
				<td class="tdlef">'.$race2.'</td>
				<td class="tdlef">'.$classe2.'</td>
				<td class="tdlef">'.$puissance2.'</td>
				<td class="tdcen" style="width: 20px;"></td>
				<td class="tdcen"><a href="gestionguilde.php?modif=1&amp;joueid='.$joueid.'&amp;accept=1">Oui</a></td>
				<td class="tdcen"><a href="gestionguilde.php?modif=1&amp;joueid='.$joueid.'&amp;accept=0">Non</a></td></tr>
			<tr>	<td colspan="4" class="cl_spacer"></td>
				<td colspan="3"></td></tr>'."\n";
		}
		echo "</tbody></table></center>";
		
	}
	
	if ($modif == 2)
	{
		
		$joueid = ((isset($_GET['joueid']))&&(is_numeric($_GET['joueid']))) ? round($_GET['joueid']) : '';
		if (($joueid != "")&&($_GET['bannir'] == 0))
		{
			$req = mysql_query("SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde' AND id = '$joueid' LIMIT 1") or die('Erreur SQL !<br>'.mysql_error());
			if ($data = mysql_fetch_row($req))
			{
				$nouveau = $data[0];
				
				$nombre--;
				$sql = "UPDATE `guildes` SET `nb_membres` = '$nombre' WHERE nom = '$guilde'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				
				$sql = "UPDATE `joueurs_bonus` SET `guilde` = 'Aucune' WHERE nom = '$nouveau'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		
		echo '<br><b>Gestion des membres</b><br><br>';

		echo '<center><table style="width: 550px"; border="0" cellpadding="0" cellspacing="0"><tbody>';
		
		$req = mysql_query("SELECT nom, id FROM joueurs_bonus WHERE guilde = '$guilde' AND nom != '$chef' ORDER BY nom") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
		{
			echo '<tr onMouseover="this.bgColor=\'#D2A945\'" onMouseout="this.bgColor=\'\'">';
			$joueur = $data[0];
			$joueid = $data[1];
			
			$req2 = mysql_query("SELECT race, classe, titre, royaume, puissance FROM joueurs_heros WHERE id = '$joueid'") or die('Erreur SQL !<br>'.mysql_error());
			$jheros = mysql_fetch_assoc($req2);
			$req3 = mysql_query("SELECT connexion_dernière FROM joueurs_connexions WHERE id = '$joueid'") or die('Erreur SQL !<br>'.mysql_error());
			$data3 = mysql_fetch_row($req3);
			$vacances = ($data3[0]>$temps) ? '*' :  '';
			
			echo '	<td class="tdlef">'.$joueur.', '.$jheros['titre'].' '.$jheros['royaume'].$vacances.'</a></td>
				<td class="tdlef">'.$jheros['race'].'</td>
				<td class="tdlef">'.$jheros['classe'].'</td>
				<td class="tdrig">'.number_format($jheros['puissance'], 0, ",", ",").'</td>
				<td class="tdcen" style="width: 20px;"></td>
				<td class="tdcen"><a href="gestionguilde.php?modif=2&amp;joueid='.$joueid.'&bannir=0">Bannir</a></td></tr>
			<tr>	<td colspan="4" style="text-align: center; height:1px; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td>
				<td colspan="2"></td></tr>'."\n";
		}
		echo '<tr><td colspan="4" style="text-align: left;"><br>* : comptes en mode Vacances</td></tr>';
		echo "</tbody></table></center>";
	
	}
	
	if ($modif == 3)
	{
		$nouveau = (isset($_GET['joueur'])) ? htmlentities($_GET['joueur']) : '';
		if ($nouveau != "")
		{
			$nommer = $_GET['nommer'];
			if ($nommer == 1)
			{
				$sql = "UPDATE `guildes` SET `chef` = '$nouveau' WHERE nom = '$guilde'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				
				echo 'window.close();';
				
			}
		}
		
		echo '<br><b>Gestion de la chefferie</b><br><br>
		<center><table style="width: 550px" border="0" cellpadding="0" cellspacing="0"><tbody>';
		
		$sql = "SELECT nom FROM joueurs_bonus WHERE guilde = '$guilde' AND nom != '$chef' ORDER BY nom";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$nombre = mysql_num_rows($req);
		
		for($i=0; $i<$nombre; $i++)
		{
			echo '<tr onMouseover="this.bgColor=\'#D2A945\'" onMouseout="this.bgColor=\'\'">';
			$data = mysql_fetch_row($req);
			$joueur = $data[0];
			
			$sql2 = "SELECT race, classe, titre, royaume, puissance FROM joueurs_heros WHERE nom = '$joueur'";
			$req2 = mysql_query($sql2) or die('Erreur SQL !<br>'.$sql2.'<br>'.mysql_error());
			$data2 = mysql_fetch_row($req2);
			$race2 = $data2[0];
			$classe2 = $data2[1];
			$titre2 = $data2[2];
			$royaume2 = $data2[3];
			$puissance2 = number_format($data2[4], 0, ",", ",");
			
			echo "<td style='text-align: left;'>$joueur, $titre2 $royaume2</a></td><td style='text-align: left;'>$race2</td><td style='text-align: left;'>$classe2</td><td style='text-align: right;'>$puissance2</td><td style='text-align: center; width: 15px;'></td>";
			echo "<td style='text-align: center;'><a href='gestionguilde.php?modif=3&joueur=$joueur&nommer=1'>Nommer</a></td>";
			echo '</tr><tr><td colspan="4" style="text-align: center; height: 1px; vertical-align: center; background-image: URL(/images/splitbar.gif);"></td></tr>';
		}
		echo "</tbody></table></center>";
	} // FIN DE MODIF == 3
	
	if ($modif == 5)	// gestion des détails de la guilde
	{
		$a = (isset($_POST['des'])) ? $_POST['des'] : '';
		$b = (isset($_POST['obj'])) ? $_POST['obj'] : '';
		$c = (isset($_POST['reg'])) ? $_POST['reg'] : '';
		$sitew = (isset($_POST['sitew'])) ? $_POST['sitew'] : '';
		$img = (isset($_POST['img'])) ? $_POST['img'] : '';
		if ($a != "")
		{
		    $sql = "UPDATE `guildes` SET `description` = '$a' WHERE nom = '$guilde'";
		    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		if ($b != "")
		{
		    $sql = "UPDATE `guildes` SET `objectifs` = '$b' WHERE nom = '$guilde'";
		    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		if ($c != "")
		{
		    $sql = "UPDATE `guildes` SET `regles` = '$c' WHERE nom = '$guilde'";
		    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		if (($sitew != "")&&(filter_var(str_replace(array('"',"'",'<'),array('','',''),$sitew), FILTER_VALIDATE_URL)))
		{
		    $sql = "UPDATE `guildes` SET `siteweb` = '$sitew' WHERE nom = '$guilde'";
		    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		if (($img != "")&&(filter_var(str_replace(array('"',"'",'<'),array('','',''),$img), FILTER_VALIDATE_URL)))
		{
		    $sql = "UPDATE `guildes` SET `img` = '$img' WHERE nom = '$guilde'";
		    $req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		echo '<br><b>Gestion des détails de l\'Armada</b><br><br>
		<form method="post" action="gestionguilde.php?modif=5">
		<center><table style="width: 100%;" border="0" cellspacing="2" cellpadding="5"><tbody><tr><td><div align="left">';
		
		$sql = "SELECT * FROM guildes WHERE nom = '$guilde'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		
		$img = $data[5];
		$sitew = $data[11];
		$des = $data[7];
		$obj = $data[8];
		$reg = $data[9];
		
		echo '<b>Image :</b> <img src="'.$img.'" width="100" height="100" border=1><br><br><center><input type="text" size="40" name="img" value="'.$img.'"></center><br><br>';
		echo '<b>Forum :</b><br><br><center><input type="text" size="40" name="sitew" value="'.$sitew.'"></center><br><br>';
		echo '<b>Description :</b><br><br><center><textarea rows="10" name="des" cols="60">'.$des.'</textarea></center><br><br>';
		echo '<b>Objectifs :</b><br><br><center><textarea rows="10" name="obj" cols="60">'.$obj.'</textarea></center><br><br>';
		echo '<b>Règles :</b><br><br><center><textarea rows="10" name="reg" cols="60">'.$reg.'</textarea></center>';
		
		echo "</td></tr></tbody></table></center>";
		echo '<input type="submit" value="Suivant >>"><br>';
	}  // FIN DE MODIF == 5
	
	
	
	
	// DEBUT MODIF == 6  <->  gestion diplomatique
	if ($modif == 6)
	{
	
		$nbrcols = 4;
		$valtextsize = 5;
		$spacer = '	<tr>	<td colspan="'.$nbrcols.'">&nbsp;</td></tr>';
		$declaration_defaut = 'Entrez les motifs d`entrée en guerre ici';
	
		$traiteredd = array("Accepter la reddition",	"La mort leur sied si bien");
		$traiteegalite=array("Accepter le traité",	"La mort leur sied si bien");
		$traitedpna = array("Accepter l'alliance", 	"Nous ne sommes pas rempart!");
		$traitedmodcond = array("Accepter ces conditions", "Refuser cette proposition");
		
		echo '<br><b>Gestion des relations diplomatiques</b><br><br>
		<center><table style="width: 100%;" border="0" cellspacing="2" cellpadding="5"><tbody><tr><td><div align="left">
		';
		
		// *** *** *** TRAITEMENT DES DONNEES
		
		// *** *** *** AFFICHAGE 
		echo '<table width="98%" border="0">';
		
		// *** *** *** traitement des données
		
		if ((isset($_POST['action']))&(isset($_POST['autre'])))
		{
			$action = $_POST['action'];
			$autre = $_POST['autre'];
			
			// *** *** *** DECLARATION DE GUERRE
			// déclaration de guerre
			if ($action == "declarationguerre")
			{

			}
	
			// *** *** *** REDDITIONS
			// demandes de reddition à envoyer
			if ($action == "reddition")
			{

			}
			// annulation d'une demande de reddition
			if ($action == "annuldemredd")
			{

			}
			// réponses à une offre de reddition
			if ($action == "reddrecues")
			{

			}
			// *** *** *** DEMANDE D'EGALITE
			// demandes d'égalité à envoyer
			if ($action == "demegalite")
			{

			}
			// annulation d'une demande d'égalité
			if ($action == "annuldemegalite")
			{

			}
			// réponses à une offre d'égalité
			if ($action == "egaliterecues")
			{

			}
			
	
		}
		
		// *** *** *** petits préparatifs
		
		// on commence par chercher la liste des guildes auxquelles ont peut proposer guerre
		$guildesliste = array();
		$guildesinter = array();
		$i=0;
		$guildeselect = "";
		$req7 = mysql_query("SELECT guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND ( valide = '$VALIDE_EN_COURS' OR valide = '$VALIDE_EN_ATTENTE' OR valide = '$VALIDE_EN_NEGOCIA' OR valide = '$VALIDE_BLOQUE')") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req7))
		{
			if ($data[0] == $guilde)	$guildesinter[$i] = $data[1];
			else				$guildesinter[$i] = $data[0];
			$i++;
		}
		$req7 = mysql_query("SELECT nom FROM guildes WHERE nom != '$guilde' AND nb_membres >= '$nbrmindeclar' ORDER BY puissance DESC") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req7))
		{
			if (array_search($data[0], $guildesinter) === false)
			{
				$guildeselect .= '<option value="'.$data[0].'">';
				if (strlen($data[0])>25)	$guildeselect .= substr($data[0],0,23).'...';
				else				$guildeselect .= $data[0];
				$guildeselect .= "</option>\n";
			}
		}
		
		// *** *** *** affichage
		
		// guerres en cours
		$req7 = mysql_query("SELECT guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' OR guilde2 = '$guilde' ) AND statut = '$VALIDE_EN_COURS'") or die('Erreur SQL !<br>'.mysql_error());
		echo '	<tr>	<td colspan="'.$nbrcols.'"><b>Guerres en cours</b></td></tr>'."\n";
		if (mysql_num_rows($req7)>0)
			while ($data = mysql_fetch_row($req7))
			{
				if ($data[0] == $guilde) 	$autre = $data[1];
				else				$autre = $data[0];
				echo '	<tr>	<td style="width: 30px;"></td>	<td style="vertical-align: top;">'.$data[0].'</td>	<td style="vertical-align: top; text-align: right;">'.$data[1].'</td>	<td style="text-align: right;">
							<form method="post" action="gestionguilde.php?modif=6"><input type="hidden" name="action" value="reddition">  <input type="hidden" name="autre" value="'.$autre.'"><input type="submit" value="Abdiquer"></form>
							<form method="post" action="gestionguilde.php?modif=6"><input type="hidden" name="action" value="demegalite"> <input type="hidden" name="autre" value="'.$autre.'"><input type="submit" value="Proposer un cessez-le-feu"></form>
					</td>	</tr>'."\n";
			}
		else		echo '	<tr>	<td style="width: 30px;"></td>	<td colspan="'.($nbrcols-1).'">Aucune guerre n\'est officiellement en cours</td></tr>'."\n";
		
		// *** *** *** EGALITES
		// propositions d'égalités à traiter
		$req9 = mysql_query("SELECT guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' AND statut = '$CESS2' ) OR ( guilde2 = '$guilde' AND statut = '$CESS1' )") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '	<tr>	<td colspan="'.$nbrcols.'"><b>Propositions de cessez-le-feu reçues</b></td></tr>'."\n";
			while ($data = mysql_fetch_row($req9))
			{
				if ($data[0] == $guilde) 	$autre = $data[1];
				else				$autre = $data[0];
				echo '	<form method="post" action="gestionguilde.php?modif=6"><input type="hidden" name="action" value="egaliterecues"><input type="hidden" name="autre" value="'.$autre.'">
					<tr>	<td style="width: 30px;"></td>	<td>'.$data[0].'</td>	<td style="text-align: right;">'.$data[1].'</td>	<td style="text-align: right;">
						<input type="submit" name="type" value="'.$traiteegalite[0].'">
						<input type="submit" name="type" value="'.$traiteegalite[1].'"></td></tr></form>'."\n";
			}
		}
		
		// propositions d'égalités envoyées
		$req9 = mysql_query("SELECT guilde1, guilde2 FROM guerres WHERE ( guilde1 = '$guilde' AND statut = '$CESS1' ) OR ( guilde2 = '$guilde' AND statut = '$CESS2' )") or die('Erreur SQL !<br>'.mysql_error());
		if (mysql_num_rows($req9)>0)
		{
			echo '	<tr>	<td colspan="'.$nbrcols.'"><b>Demandes de cessez-le-feu envoyées</b></td></tr>'."\n";
			while ($data = mysql_fetch_row($req9))
			{
				if ($data[0] == $guilde) 	$autre = $data[1];
				else				$autre = $data[1];
				echo '	<form method="post" action="gestionguilde.php?modif=6"><input type="hidden" name="action" value="annuldemegalite"><input type="hidden" name="autre" value="'.$autre.'">
					<tr>	<td style="width: 30px;"></td>	<td>'.$data[1].'</td>	<td style="text-align: right;">'.$data[2].'</td>	<td style="text-align: right;"><input type="submit" value="Nous ne sommes pas lâches!"></td></tr></form>'."\n";
			}
		}
		
		// *** *** *** déclarations de guerre
		if ($nombre >= $nbrmindeclar)
		{
			echo '	<form method="post" action="gestionguilde.php?modif=6"><input type="hidden" name="action" value="declarationguerre">
					<tr>	<td colspan="'.$nbrcols.'"><b>Déclaration de guerre</b></td></tr>'."\n";
			echo 		'<tr><td colspan="4" style="text-align: center;">Cible: <select name="autre">'.$guildeselect.'</select><br></td></tr>
					<tr>	
					<td colspan="4" style="text-align: center;"><textarea cols="70" rows="10" name="declaration">'.$declaration_defaut.'</textarea><br>
						<input type="submit" value="Déclarer la guerre">	</td></tr></form>'."\n";
			
			echo $spacer;
		}
		else
			echo '<tr>	<td colspan="'.$nbrcols.'">Votre armada ne peut déclarer de guerre, car votre nombre par trop réduit n\'incite qu\'à la raillerie! Recrutez pour votre armada, de telle sorte qu\'elle regroupe au moins '.$nbrmindeclar.' membres!</td>	</tr>'."\n";
		
		
		echo '</td></tr></tbody></table></center>';
	}
	
	?>
	<br></td></tr></table><tr>
	<td colspan="3" rowspan="1" style="height: 10px; vertical-align: top; background-image: URL(/images/splitbar.gif);">
	</td><td colspan="1" rowspan="2" style="vertical-align: top; width: 10px; background-image: URL(/images/fond_cote_02.gif);"></td>
	</tr></tbody></table>
	
	<?
}
mysql_close();
?>
