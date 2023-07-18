<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

function debut_page()
{
	echo '
<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> <html>
<head>
	<title>Apprentissage</title>
	<link rel="stylesheet" type="text/css" href="style_divers.css">
</head>

<body class="bodypopup" marginheight=0 marginwidth=0>
<br />
<div align="center">
	<table class="cadretablepopup">
		<tbody>
			<tr>
				<td colspan="3" class="cadretopleft"></td>
				<td rowspan="2" class="cadretopright"></td>
			</tr>
			<tr>
				<td class="cadremiddleleft"></td>
				<td colspan="2" class="cadrecontenupopupc">';
}

function fin_page()
{
	echo '
				</td>
			</tr>
			<tr>
				<td class="cadremiddleleft"></td>
				<td colspan="2" class="cadrecontenupopupc">
				</td>
			</tr>
			<tr>
				<td colspan="4" class="cadrebottom"></td>
			</tr>
		</tbody>
	</table>
</div>
</body>
</html>';
}

// DEFINITION DE VARIABLES :
$nombre_max_attente = 5; // Un mentor ne peut avoir plus de 5 apprentis en attente.

include "apprentissage_include.php";
include "connect.php";
$mode = (isset($_GET['m'])) ? (int)$_GET['m'] : 0;

switch($mode)
{
	case 1 : // Notons le mentor
		
		if(!isset($_POST['notation']) || (int)$_POST['notation'] < 0 || (int)$_POST['notation'] > 20)
		{
			debut_page();
		  ?><form method="post"><table>
			<tr>
				<td><label for="notation">Notez votre mentor :</label></td>
				<td><select name="notation" id="notation" size="1"><option value="0">0/20</option>
																	<option value="1">1/20</option>
																	<option value="2">2/20</option>
																	<option value="3">3/20</option>
																	<option value="4">4/20</option>
																	<option value="5">5/20</option>
																	<option value="6">6/20</option>
																	<option value="7">7/20</option>
																	<option value="8">8/20</option>
																	<option value="9">9/20</option>
																	<option value="10">10/20</option>
																	<option value="11">11/20</option>
																	<option value="12">12/20</option>
																	<option value="13">13/20</option>
																	<option value="14">14/20</option>
																	<option value="15">15/20</option>
																	<option value="16">16/20</option>
																	<option value="17">17/20</option>
																	<option value="18">18/20</option>
																	<option value="19">19/20</option>
																	<option value="20">20/20</option></select></td>
			</tr>
			</tr>
			<tr>
				<td><center><input type="submit" value="Déposer le dossier" /></center></td>
			</tr>
			</table></form><?php
			fin_page();
		}
		else
		{
			if(mentor_noter($_SESSION['id'], $_POST['notation']))
				echo '<script type="text/javascript">alert("Vous avez noté votre mentor.");self.close();</script>';
			else
				echo '<script type="text/javascript">alert("Une erreur s\'est produite.");self.close();</script>';
		}

	break;
	case 2 : // Le mentor est inefficace
	
		if(!isset($_POST['commentaires']))
		{
			debut_page();
		  ?><form method="post"><table>
			<tr>
				<td><label for="commentaires">Veuillez détailler l'inaptitude de votre mentor :<br /><br /></label>
				<textarea rows="6" cols="25" name="commentaires" id="commentaires"></textarea><br /></td>
			</tr>
			<tr>
				<td><center><input type="submit" value="Déposer le dossier" /></center></td>
			</tr>
			</table></form><?php
			fin_page();
		}
		else
		{
			$req = mysql_query("SELECT mentor.nom
								FROM mentors_liste
								INNER JOIN joueurs_heros apprenti ON apprenti.mentor = mentors_liste.mentor_id
								INNER JOIN joueurs_heros mentor ON mentor.id = mentors_liste.mentor_id
								WHERE apprenti.id = ".$_SESSION['id']);
			$dat = mysql_fetch_row($req);
			if(mysql_num_rows($req) == 0)
				echo '<script type="text/javascript">alert("Une erreur s\'est produite.");self.close();</script>';
			
			// Date du message de dénonciation
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
			function getMois($month) { return $mois[$month]; }
			$jour = Date('d');
			$month = Date('F');
			$mois = $mois[$month];
			$day = Date('l');
			$date = "$jour $mois";
			// Diverses variables
			$titre = 'Dénonciation de mentor inefficace';
			$message = 'Ce joueur juge son mentor inapte à le former et souhaite le dénoncer au pouvoir impérial. Voici ses remarques :<br />'.nl2br(htmlentities($_POST['commentaires']));
			// On triche en insérant la dénonciation comme un message signalé
			mysql_query("INSERT INTO messagerie VALUES ('', '".($_SESSION['nom'])."', '".$dat[0]." [Mentor]', '".$titre."', 
						'".$message."', '".$date."', '".(time()/60)."', 1, 1");
			echo '<script type="text/javascript">alert("Vous avez dénoncé votre mentor.");self.close();</script>';
		}
		
	break;
	case 4 :  // Demande de licence de mentor
	
		if(!isset($_POST['commentaires']) || empty($_POST['commentaires']))
		{
			debut_page();
		  ?><form method="post"><table>
			<tr>
				<td><label for="commentaires"><br />Décrivez brièvement votre expérience de Destinée et vos points forts dans le jeu :<br /><br /></label>
				<textarea rows="6" cols="32" name="commentaires" id="commentaires"></textarea><br /></td>
			</tr>
			<tr>
				<td><center><input type="submit" value="Déposer le dossier" /></center></td>
			</tr>
			</table></form><?php
			fin_page();
		}
		else
		{
			mysql_query("INSERT INTO mentors_liste (mentor_id, description, valide) VALUES (".$_SESSION['id'].", '".nl2br(htmlentities($_POST['commentaires']))."', 0)") or die(mysql_error());
			echo '<script type="text/javascript">alert("Votre demande a été transmise aux autorités compétentes.");self.close();</script>';
		}
		
	break;
	case 5 : // On demande à un mentor de nous accepter
	
		$mentor_id = $_GET['mid'];
		$joueur_id = $_GET['jid'];
		
		if (mentor_demander($mentor_id, $joueur_id) == false)
			echo '<span style="color:darkred;">La demande ne peut être envoyée. Peut-être ce mentor a-t-il déjà trois apprentis en attente ?</span>';
		else
			echo '<span style="color:darkgreen;">Votre demande a été transmise au mentor voulu. Vous serez averti de sa réponse par message.</span>';
	
	break;
	default :
	
		exit ("<center>Qu'est ce qui est gros, blanc, et dans un arbre?</center><br /><div style=\"text-align:right;\"><em>Un frigo qui joue à cache-cache</em></div>");
}

?>