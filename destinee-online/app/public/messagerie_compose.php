<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	if (!isset($_POST['nom'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$meta_supp = '<script type="text/javascript" src="fonctions/conseiller.js"></script>';
include ("debut.php");
include ("menu.php");
entete("Messagerie");

$nom = $_SESSION['nom'];
$temps = time()/60;
$limite = $temps - 1;
$liste = (isset($_GET['liste'])) ? $_GET['liste'] : '';

include ("connect.php");
include ("messagerie_include.php");


echo '<form method="post" name="composer" action="messagerie_compose.php">';
echo '<table class="localtable630 message"><tbody>';
//echo ligneliens(4);
echo '<tr>	<td><h2>Envoyer une missive</h2><img style="margin-top:-2em;margin-left:150px;" alt="Conseiller" onMouseOver="debutConseiller();" onMouseOut="finConseiller();" src="images/357-77.jpg" /><div id="conseiller" style="z-index:100;display:none;position:absolute;width:350px;background-color: antiquewhite;border: 1px solid black;" onMouseOver="maintenirConseiller();" onMouseOut="finConseiller();"></div></td>
	'.ligneliens(1).'</tr>';



if (!isset($_POST['message']) OR $_SESSION['message'] == 1)
{
	$destin = (isset($_GET['destinataire'])) ? htmlentities(html_entity_decode($_GET['destinataire'])) : '';
	$_SESSION['message'] = 0;
	
	echo "<tr><td style='text-align: left;'>Titre<br>";
	if(isset($_GET['titre']))
	{
		$titre3 = stripslashes($_GET['titre']);
	}
	else
	{
		$titre3 = "";
	}
	echo '<input type="text" name="titre" id="titre" size="59" value="'.$titre3.'">';
	echo "</td><td rowspan='2' style='vertical-align: bottom; text-align: center;'>";
	
	$sql = "SELECT province FROM joueurs_bonus WHERE nom='$nom'"; 
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$province = $data[0];
	
	$palatin = '';
	if ($province != 'Aucune')
	{
		$sql = "SELECT Palatin FROM provinces_politiques WHERE Province='$province'"; 
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$palatin = $data[0];
	}

	if ($province != "Aucune")
	{
		?>
		<center>~ 
		<a href="messagerie_compose.php?liste=Tous">Tous</a>
		<a name="ici">|</a>
		<a href="messagerie_compose.php?liste=Province">Province</a> ~
		<?php
	}
	
	
	// listes des personnes auxquelles ont peut envoyer
	$tousarmada = false;
	$tousprovince = false;
	if ($liste == "Province")
	{
		if ($nom == $palatin)				// un palatin peut envoyer un message à sa province
			$tousprovince = true;
		$sql = "SELECT `nom` FROM `candidat_palatinat` WHERE ACCEPT ='1'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))		// un candidat au palatinat peut envoyer un message à sa province
			if ($nom == $data[0])
				$tousprovince = true;
		
		if ($tousprovince)				// si accès spéciaux, on affche tout le monde
		{
			$sql = "SELECT nom FROM joueurs_bonus WHERE province = '$province' ORDER BY nom";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}
		else						// sinon juste le palatin. C'est pour éviter les spams de masse
		{
			$sql = "SELECT nom FROM joueurs_bonus WHERE nom = '$palatin' ORDER BY nom";
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		}			
	}
	else	// aucune sélection jusqu'à présent(ni armada, ni province)
	{
		$sql = "SELECT nom FROM joueurs_heros ORDER BY nom";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	}
	
	// écriture du select
	echo '<br><Select name="destinataire[]" multiple="multiple" size=10>';
	
	if ($tousarmada)	echo '<option selected value="Armada">Membres de l\'Armada</option>';
	if ($tousprovince)	echo '<option selected value="Province">Membres de la Province</option>';
	
	while ($data = mysql_fetch_row($req))
	{
		$nom_h = $data[0];
		$selected = '';
		if       ($nom_h == $destin)							$selected = ' selected';
		if ( ($liste == 'Province') && ($nom_h == $palatin) && (!$tousprovince))	$selected = ' selected';	// le palatin est la sélecion par défaut de ses subordonnés quand ils cliquent sur province
		echo '<option value="'.$nom_h.'"'.$selected.'>'.$nom_h.'</option>';
	}
	
	echo "</select></td></tr><tr><td style='text-align: left;'>Message<br>";
	echo '<textarea rows="7" name="message" id="message" cols="45"></textarea>';
	echo "</td></tr></tbody></table><br><br>";
	echo '<input type="button" value=" Prévisualiser >> " onClick="NewWindow(\'messagerie_relire.php\',\'name\',\'650\',\'400\',\'yes\');return false" />';
	echo '<input type="submit" value=" Envoyer >> ">';
}
else
{
	echo '<tr><td colspan="2">';

	// CACUL DE LA DATE POUR LE MESSAGE ENVOYÉ
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
	
	function getMois($month)
	{
		return $mois[$month];
	}
	
	$jour = Date('d');
	$month = Date('F');
	$mois = $mois[$month];
	$day = Date('l');

	$date = "$jour $mois";
	// FIN DU CALCUL DE LA DATE

	$accent = array("'", '<', '>');
	$echap = array("''", '&lt;', '&gt;');
	$_SESSION['message'] = 1;
	$erreur = "0";
	
	if (isset($_POST['destinataire']))
		$destinataire = $_POST['destinataire'];
	else	$erreur = "Vous devez sélectionner un destinataire !";
		
	$titre2 = (isset($_POST['titre'])) ? str_replace($accent, $echap, stripslashes($_POST['titre'])) : "Aucun titre";
	$message = str_replace($accent, $echap, stripslashes($_POST['message']));
	$nombre = count($destinataire);

	$x = $destinataire[0];
	if ($x == "")		$erreur = "Vous devez sélectionner un destinataire !";
	if ($nombre > 5)	$erreur = "Vous ne pouvez excéder 5 destinataires à la fois !";
	if ($message == "")	$erreur = "Vous ne pouvez envoyer un message vide !";

	if ($x == "Province")
	{
		$req = mysql_query("SELECT province FROM joueurs_bonus WHERE nom = '$nom'") or die('Erreur SQL !<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$province = $data[0];
		$req = mysql_query("SELECT nom FROM joueurs_bonus WHERE province = '$province' ORDER BY nom") or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
			$destinataire[] = $data[0];
	}

	if ($erreur != "0")
		echo "<br><br>$erreur";
	else
	{
		$flag = false;
		if ($destinataire)
		{
			foreach ($destinataire as $t)
			{
				if ($t != "" AND $t != "Armada" AND $t != "Province")
				{
					$sql = "INSERT INTO `messagerie` ( `id`, `auteur`, `destinataire`, `titre`, `message`, `date`, `temps`)
						VALUES 			 ('',	'$nom',		'".htmlentities(html_entity_decode($t))."',	'$titre2', '$message', '$date', '$temps');";
					$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
					$flag = true;
				}
			}
		}
		if ($flag)		echo "<br><br>Le message a été envoyé avec succès !";
		else			echo '<br><br>Le message n\'a pas pu être délivré.';
	}
	echo '<a href="principale.php"><font color="#035682"><u><br><br>Retourner à votre statut</u></font></a> |
		<a href="messagerie_reception.php"><font color="#035682"><u>Retourner à votre boîte de réception</u></font></a>';

	echo "</td></tr></tbody></table><br><br>";

}

mysql_close();
include ("fin.php");
