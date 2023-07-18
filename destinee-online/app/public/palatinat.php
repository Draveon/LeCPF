<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}
include ("debut.php");
include ("menu.php");
entete("Palatinat");
include("connect.php");

$royaume = $_SESSION['royaume'];
$nom = $_SESSION['nom'];
$classe = $_SESSION['classe'];


include ('palatinat_include.php');


// traitement de si le joueur veux rejoindre une province
$incProvJoin = false;
$mode = (isset($_REQUEST['mode'])) ? addslashes($_REQUEST['mode']) : '';
$province = (isset($_REQUEST['province'])) ? addslashes($_REQUEST['province']) : '';
// rejoindre une province
if ($mode == 'joindreprovince')
{
	if (!$incProvJoin)
	{
		include ('diplomatique_include.php');
		$incProvJoin = true;
	}
	echo join_province ($nom, $province);
}


// récupération des données pour l'affichage de la page
$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '".$nom."'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$province = $data[0];
$guilde = $data[1];
$title = ($province=='Aucune') ? 'Autarcie' : 'Province de '.$province;


// début de l'affichage
echo '<table class="localtable630">
<tr>	<td colspan="5"><h2>'.$title.'</h2></td></tr>
';

if ($province != "Aucune")
{
	include("temps_ecoulement.php");
	
	$result = mysql_query("SELECT COUNT(`id`) AS `nbr` FROM candidat_palatinat WHERE NOM='".$nom."'");
	$data = mysql_fetch_row($result);
	if($data[0] == 0)	$inscrit = 0;
	else			$inscrit = 1;
	
	// données liées à la province
	$sql = "SELECT sortie, date FROM provinces_politiques WHERE Province = '$province'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$prov_sortie = $data[0];
	$restant = $data[1]-$temps;
	$j = floor( $restant /60  /24);
	$h = floor(($restant /60) %24);	
	$m = floor( $restant %60 );
	$resteE = '';
	if ($j != 0) $resteE.= $j.' jours, ';
	if ($h != 0) $resteE.= $h.' heures, ';
	$resteE.= $m.' minutes';
	
	// soumission d'un nouveau discours
	$candidat = ((isset($_POST['candidat'])) &&(is_numeric($_POST['candidat']))) ? $_POST['candidat'] : '';
	$vote	  = ((isset($_POST['vote']))	 &&(is_numeric($_POST['vote'])))     ? $_POST['vote'] : '';
	$id_vote  = ((isset($_POST['vote_cand']))&&(is_numeric($_POST['vote_cand'])))? $_POST["vote_cand"] : '';
	if (($candidat != '') || ($vote != ''))
	{
		if($candidat == 1)
		{
			$discours = (isset($_POST['discours']))     ? mysql_real_escape_string($_POST['discours']) : '';
			if($inscrit == 0)
			{
				$sql = "INSERT INTO candidat_palatinat VALUES ('','".$nom."','".$discours."','".$province."','0')";
				mysql_query($sql) or die("Erreur INSERT");
				echo "Votre discours a bien été pris en compte, l'équipe d'administration l'examinera et le validera dans les plus brefs délais.";
			}
			if($inscrit == 1)
			{
				$sql = "UPDATE candidat_palatinat SET DISCOURS ='".$discours."', PROVINCE='".$province."', ACCEPT = '0' WHERE NOM='".$nom."'";
				mysql_query($sql) or die("Erreur UPDATE");
				echo "Votre discours a bien été pris en compte, l'équipe d'administration l'examinera et le validera dans les plus brefs délais.";
			}
		}
		
		if($candidat == 2)
		{
			mysql_query("DELETE FROM candidat_palatinat WHERE NOM = '$nom'") or die(mysql_error());;
		}
		
		if (($vote == 1)&&($id_vote!=''))
		{	
			$sql ="SELECT id FROM `joueurs_heros` WHERE nom ='".$nom."'";
			$result = mysql_query($sql);
			$data = mysql_fetch_assoc($result);
			$id = $data['id'];		
			
			$sql = "SELECT * FROM votant_palatinat WHERE VOTANT = '".$nom."'";
			$result = mysql_query($sql) or die("Erreur avec la base de donnée<br>Réessayer plus tard");
			$nbr = mysql_num_rows($result);
			if($nbr == 0)
			{
				$sql = "INSERT INTO votant_palatinat VALUES ('".$id."','".$nom."','".$id_vote."')";
				mysql_query($sql) or die(mysql_error());
			}
			else
			{
				$sql = "UPDATE votant_palatinat SET VOTE='".$id_vote."' WHERE VOTANT = '".$nom."'";
				mysql_query($sql) or die(mysql_error());
			}	
		}
	}
		

	if (!$incProvJoin)
	{
		include ('diplomatique_include.php');
		$incProvJoin = true;
	}
	echo '<tr><td colspan="5">';
	echo '</td></tr>';
	
	
	// Récapitulatif
	echo '
	<form action="palatinat.php" method="POST">
	<tr>	<td style="width: 1%;"></td>
		<td style="width: 40%;" class="cl_entete">Candidat</td>
		<td 			class="cl_entete">Discours</td>
		<td style="width: 9%;"	class="cl_entete">Voix</td>
		<td style="width: 14%;" class="cl_entete">Votre vote</td></tr>
	<tr>	<td></td>
		<td colspan="4" class="hline"></td></tr>';
	
	$serveur = $_SESSION['serveur'];
	
	$sql3 = "SELECT `VOTE` FROM votant_palatinat WHERE VOTANT = '".$nom."'";
	$result3 = mysql_query($sql3) or die("Erreur avec la base de donnée<br>Réessayer plus tard");
	$data3 = mysql_fetch_array($result3);
	$vote = $data3['VOTE'];
	
	$sql = "SELECT `ID`, `NOM`, `DISCOURS` FROM candidat_palatinat WHERE ACCEPT = '1' AND PROVINCE ='".$province."'";
	$result = mysql_query($sql,$db) or die("Erreur avec la base de donnée<br>Réessayer plus tard");	
	while ($data = mysql_fetch_array($result))
	{
		$id = $data['ID'];
		$candidat = $data['NOM'];
		$discours = $data['DISCOURS'];
		$taillecritique = 50;
		if (strlen($discours)>$taillecritique)
		{
			$discoursresum = substr($discours, 0, $taillecritique-3);
			$discoursresum = substr($discoursresum, 0, strrpos($discoursresum,' '));
			$discoursresum .= '...';
		}
		else
			$discoursresum = $discours;
		
		$sql2 = "SELECT COUNT(ID) AS nbr FROM votant_palatinat WHERE VOTE = '".$id."'";
		$result2 = mysql_query($sql2) or die("Erreur avec la base de donnée<br>Réessayer plus tard");
		$data2 = mysql_fetch_row($result2);
		$nbr= $data2[0];
		
		$re2 = mysql_query('SELECT avatar FROM joueurs_heros WHERE nom = "'.$candidat.'"');
		$da3 = mysql_fetch_row($re2);
		
		$re4 = mysql_query('SELECT royaume, titre FROM joueurs_heros WHERE nom = "'.$candidat.'"') or die('Erreur SQL !<br>'.mysql_error());
		$da4 = mysql_fetch_row($re4);
		
		$checked = ($vote==$id) ? ' checked' : '';
		
		echo '<tr class="rollovercolor">	<td><a href="information.php?cible='.$candidat.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false"><img src="'.$da3[0].'" width="20" height="20" alt="'.$candidat.'" ALIGN=middle border=1></td>
				<td class="tdlef">'.$candidat.', '.$da4[1].' '.$da4[0].'</td>
				<td class="tdlef"><a href="discours.php?cible='.$candidat.'&serveur='.$serveur.'" onclick="NewWindow(this.href,\'name\',\'580\',\'650\',\'yes\');return false">'.$discoursresum.' (<span style="text-decoration: underline;">lire...</span>)</a></td>
				<td>'.$nbr.'</td>
				<td><input type="radio" name="vote_cand" value="'.$id.'" '.$checked.'></td></tr>
			<tr>	<td></td>
				<td colspan="4" class="hline"></td></tr>';
	}
	$id = -1;
	$checked = ($vote==$id) ? ' checked' : '';
	echo '<tr class="rollovercolor">	<td></td>
			<td class="tdlef">Retirer votre vote</td>
			<td class="tdlef"></td>
			<td></td>
			<td><input type="radio" name="vote_cand" value="'.$id.'" '.$checked.'></td></tr>
		<tr>	<td></td>
			<td colspan="4" class="hline"></td></tr>';
	
	echo '<tr>	<td colspan="5" class="tdcen"><br><input type="submit" value="Voter"><input type="hidden" name="vote" value="1"><br>&nbsp;</td></tr>
	</form>';
	
	// affichage du nombre de candidats
	$sql = mysql_query("SELECT COUNT(id) FROM joueurs_bonus WHERE province ='".$province."'");
	$data = mysql_fetch_row($sql);
	$nbr = $data[0];
	if($nbr > 1)
		echo '<tr>	<td colspan="5" class="tdcen">Il y a actuellement '.$nbr.' habitants pouvant voter en '.$province.'.</td></tr>';
	else
		echo '<tr>	<td colspan="5" class="tdcen">Il y a actuellement '.$nbr.' habitant pouvant voter en '.$province.'.</td></tr>';
	
	echo '<tr><td colspan="5"><a href="classement.php?type=1&ordre=Puissance&affichage='.$serveur.'&province='.$province.'">Afficher la liste des habitants</a></td></tr>';
	
	// affichage du temps restant avant élection
	echo '<tr><td colspan="5">Prochaine élection du palatin dans '.$resteE.'.';
	
	// chatbox
	$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$province = $data[0];
	$guilde = $data[1];
	echo '<div style="width:100%; text-align:left;"><h2>Discussions en ligne - province de '.$province.'</h2>';
	include('chat/chat.php');
	$mode = getMode($province, $guilde, 'province');
	
	mysql_close();
	echo writeAllChatboxes($nom, $_SESSION['login'], $serveur, 'palatinat.php', $mode, $province, $guilde);
	include ('connect.php');
	
	echo '</div>';

	echo '</td></tr>';
	echo '<tr><td>';
	// fin du récapitulatif
	
	
	
	// Candidature du joueur
	echo changement ('Soumettre sa candidature');
			
	$sql = "SELECT discours, ACCEPT FROM candidat_palatinat WHERE NOM='".$nom."'";
	$result = mysql_query($sql);
	$nombre = mysql_num_rows($result);
	if ($nombre == 0)
	{
		$discours = "";	
		$accept = -1;
	}
	else
	{
		$data = mysql_fetch_row($result);
		$discours = stripslashes($data[0]);
		$accept = $data[1];
	}
	if ($accept==0)
		echo '<tr><td>Votre candidature est actuellement en attente de validation.</td></tr>';
	
	echo '<form action="palatinat.php" method="POST" style="border:0px;"><input type="hidden" name="candidat" value="1">
	<tr><td align="center">Votre discours :</td></tr>
	<tr><td align="center"><textarea cols="50" rows="12" name="discours">'.$discours.'</textarea></td></tr>
	<tr><td align="center">&nbsp;</td></tr>
	<tr><td align="center"><input type="submit" value="Soumettre sa candidature"></td></tr>
	</form>
	
	<form action="palatinat.php" method="POST">
	<tr><td class="tdcen"><br><input type="submit" value="Retirer sa candidature"><input type="hidden" name="candidat" value="2"><br>&nbsp;</td></tr>
	</form>
	
	<tr><td class="stratexplic">Après soumission, les textes de candidatures sont contrôlés par l\'équipe d\'administration. Un délai de quelques jours est souvent nécesaire avant que votre candidature n\'apparaisse dans la liste ci-dessous.<br>
	Nous vous rendons attentif que le fait de modifier votre discours rendra votre candidature invalide pour quelques temps.</td></tr>
			
	';
	// fin de la candidature du joueur
	echo '</table>';
	
}
else
{
	// affichage du formulaire pour rejoindre une province
	if ($province == 'Aucune')
	{
		if (!$incProvJoin)
		{
			include ('diplomatique_include.php');
			$incProvJoin = true;
		}
		echo '<tr><td colspan="5">';
		join_province_menu ($nom);
		echo '</td></tr></tbody></table>';
	}
}


mysql_close();
include("fin.php");
?>
