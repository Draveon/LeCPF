<?php
// Page de module Mentor/Disciple

session_start();
if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}


$meta_supp = '<script type="text/javascript">				var ObjReq;
				if(navigator.appName.search("Microsoft") > -1) {
					//objReq = new ActiveXObject("Microsoft.XMLHTP");
					objReq = new ActiveXObject("MSXML2.XMLHTTP");
				}
				else {
					objReq = new XMLHttpRequest();
				}
				
				function demander_mentor(joueur_id) {
					var mentor_id = document.getElementsByName("instructeur").value;
					objReq.open("get", "info_apprentissage.php?m=5&mid="+mentor_id+"&jid="+joueur_id, true);
					objReq.onreadystatechange = traiteReponse;
					objReq.send(null);
				}</script>';
include ("debut.php");
include ("menu.php");
entete("Apprentissage");
include("connect.php");
include("apprentissage_include.php");

$nbrmaxapprentis = 3;
$gainxp = array(0, 0.10, 0.7, 0.6);
$dispose_mentor = false;

// Affichage du mentor du joueur et des options correspondantes (messagerie, notation, dénonciation)
// Si le joueur n'en a pas, on li propose de le devenir lui-même
echo '<table class="localtable630"><tbody>
	<tr><td><h2>Apprentissage - Votre mentor</h2></td></tr>';
$req = mysql_query('SELECT mentor.nom, COUNT(apprentis.id) AS nb_apprentis, mentors_liste.description, note,
					avatar, mentor.race, mentor.classe, mentor.royaume, mentor.dieu, mentor.titre,
					victoire, défaite
					FROM joueurs_heros
					INNER JOIN mentors_liste ON mentors_liste.mentor_id = joueurs_heros.mentor
					INNER JOIN joueurs_bonus ON joueurs_bonus.id = mentors_liste.mentor_id
					INNER JOIN joueurs_infos ON joueurs_infos.id = mentors_liste.mentor_id
					INNER JOIN joueurs_heros mentor ON mentor.id = mentors_liste.mentor_id
					INNER JOIN joueurs_heros apprentis ON apprentis.mentor = mentor.id
					WHERE joueurs_heros.id = '.$_SESSION['id'].'
					GROUP BY mentors_liste.mentor_id') or die(mysql_error());
if(mysql_num_rows($req))
{
	$dat = mysql_fetch_row($req);
	$dispose_mentor = true;

	echo '<tr>
			<td>Votre mentor est '.$dat[0].', '.$dat[9].' '.$dat[7].'.<br />
				Il totalise à ce jour '.$dat[10].' victoires pour '.$dat[11].' défaites.<br />';
				if($dat[1] > 1) echo 'Vous êtes un de ses '.$dat[1].' apprentis.<br /><br />';
				else echo 'Vous êtes son seul apprenti.<br /><br />';
		echo '~ <a href="http://www.destinee-online.com/messagerie_compose.php?destinataire='.$dat[0].'">Envoyer une missive à votre mentor</a> | <a href="info_apprentissage.php?m=1" onclick="NewWindow(this.href,\'name\',\'520\',\'350\',\'yes\');return false">Noter votre mentor</a> | <a href="info_apprentissage.php?m=2" onclick="NewWindow(this.href,\'name\',\'520\',\'350\',\'yes\');return false">Dénoncer un mentor inefficace</a> ~<br /><br />';
				
}
else
{
	echo '<tr><td>Vous n\'avez, pour l\'heure, aucun mentor attitré.<br />';
	echo '~ <a href="info_apprentissage.php?m=4" onclick="NewWindow(this.href,\'name\',\'520\',\'350\',\'yes\');return false">Demander une licence d\'instructeur</a> ~<br /><br /></td></tr>';
}
echo '</tbody></table>'.cadre_fin() . cadre_spacer() . cadre_debut();

// Affichage des différents mentors disponibles et proposition de les rejoindre si l'on n'en a pas.
echo '<table class="localtable630" id="mentors"><tbody><tr><td colspan="4">' . subtitle_papyrus('Apprentissage - Mentors disponibles') . '</td></tr>';
$req = mysql_query('SELECT mentor.nom, COUNT(apprentis.id) AS nb_apprentis, mentors_liste.description, note,
					avatar, mentor.race, mentor.classe, mentor.royaume, mentor.dieu, mentor.titre,
					victoire, défaite, mentor.id
					FROM mentors_liste
					INNER JOIN joueurs_bonus ON joueurs_bonus.id = mentors_liste.mentor_id
					INNER JOIN joueurs_infos ON joueurs_infos.id = mentors_liste.mentor_id
					INNER JOIN joueurs_heros mentor ON mentor.id = mentors_liste.mentor_id
					LEFT JOIN joueurs_heros apprentis ON apprentis.mentor = mentors_liste.mentor_id
					WHERE valide != 0
					GROUP BY mentors_liste.mentor_id
					ORDER BY note DESC') or die(mysql_error());
if(mysql_num_rows($req) > 0)
{
	echo '<tr>
			<td width="25"></td>';
	echo '<td width="25"></td>';
	echo '
			<td class="cl_entete">Mentor</td>
			<td class="cl_entete" width="85">Note</td>
			<td class="cl_entete" width="90">Disciples</td></tr>
		<tr>
			<td></td>
			<td colspan="3" class="hline"></td>
			<td></td>
		</tr>';	
	while($dat = mysql_fetch_row($req))
	{
		$couleur_note = 'color: rgb('.round(60+ 170*((10-$dat[3])/10)).','.round(max(0,200-250*((10-$dat[3])/10))).','.round(max(0,60-100*((10-$dat[3])/10))).')';
		$couleur_complet = ($dat[1] >= 3) ? 'color: rgb(105, 105, 105);' : '' ;
		$place_dispo = ($dat[1] < 3) ? '<input type="radio" name="instructeur" value="'.$dat[12].'" id="'.$dat[12].'" />' : '';
		
		echo '<tr style="'.$couleur_complet.'">
				<td><img src="'.$dat[4].'" width="20" height="20" alt="'.$dat[0].'" title="'.$dat[0].'" ALIGN=middle border=1></td>';
		echo '<td>'.$place_dispo.'</td>';
		echo '
				<td class="tdlef"><label for="'.$dat[12].'"><a nohref class="info" style="'.$style.$couleur_complet.'" onmouseover="afficheinfobulle(\''.$dat[0].'\');">'.$dat[0].', '.$dat[9].' '.$dat[7].'<span id="'.$dat[0].'" style="text-align:center;font-style:normal;"><b>'.$dat[0].'</b><br><img src="'.$dat[4].'" width="70px" height="70px" border=1><br>Titre : '.$dat[9].'<br>Combats: '.($dat[10]+$dat[11]).'</span></label></td>
				<td class="tdlef" style="padding-right:10px;'.$couleur_note.'"><b><center>'.$dat[3].'</center></b></td>
				<td class="tdlef"><center>'.$dat[1].'</center></td></tr>
			<tr>
				<td></td>';
		echo '<td></td>';
		echo '<td colspan="3" class="hline"></td>';
		echo '</tr>';
	}
	echo '<tr><td colspan="5"><br /><center><a href="info_apprentissage.php?m=5" onclick="demander_mentor('.$_SESSION['id'].');return false"><input style="width:120px;" type="submit" value="Demander" /></a></center></td></tr>';
	echo '<tr><td colspan="5"><div class="stratexplic"><br /><center>Les mentors sont des joueurs expérimentés qui posent une demande au pouvoir impérial afin de pouvoir former un apprenti. Ce dernier décide de lui délivrer, ou non, une licence en fonction de ses aptitudes.</center></div></td></tr>';
}
else
	echo '<tr><td>L\'Empire n\'a délivré aucune licence d\'apprentissage à l\'heure actuelle.<br /></td></tr>';
echo '</tbody></table>';
	
include "fin.php";

?>