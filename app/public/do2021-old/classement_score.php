<?php session_start();

$colspan = 12;

// écriture de la requète sql
$sql = "SELECT joueurs_infos.login,
heros1.nom AS 'heros1', heros1.classe AS 'classe1', heros1stats.niveau AS 'niveau1', heros1.avatar AS 'avatar1',
heros2.nom AS 'heros2', heros2.classe AS 'classe2', heros2.avatar AS 'avatar2', heros2stats.niveau AS 'niveau2',
heros3.nom AS 'heros3', heros3.classe AS 'classe3', heros3.avatar AS 'avatar3', heros3stats.niveau AS 'niveau3',
joueurs_infos.score, joueurs_infos.id, compte_couleurs.couleur FROM joueurs_infos
		LEFT JOIN joueurs_heros AS heros1 ON joueurs_infos.id = heros1.id_compte INNER JOIN joueurs_stats AS heros1stats ON heros1.id = heros1stats.id
		LEFT JOIN joueurs_heros AS heros2 ON joueurs_infos.id = heros2.id_compte AND heros1.nom != heros2.nom LEFT JOIN joueurs_stats AS heros2stats ON heros2.id = heros2stats.id
		LEFT JOIN joueurs_heros AS heros3 ON joueurs_infos.id = heros3.id_compte AND heros1.nom != heros3.nom AND heros2.nom != heros3.nom LEFT JOIN joueurs_stats AS heros3stats ON heros3.id = heros3stats.id
		LEFT JOIN compte_couleurs ON compte_couleurs.id_compte = joueurs_infos.id AND compte_couleurs.activated = 1
		GROUP BY joueurs_infos.id ORDER BY joueurs_infos.score DESC";
$req = mysql_query($sql) or die (mysql_error());

// preparation des menus serveurs 1/2
$page = 'classement.php?ordre=Score';
$bold = array( array('', ''), array('<b>', '</b>'));
$menuserv = '<tr><td style="text-align: center;" colspan="'.$colspan.'">  ';
$b = ($serv == 1) ? $bold[1] : $bold[0];
$menuserv .= $b[0].'<a href="'.$page.'&serveur=1">Serveur 1</a>'.$b[1].' | ';
$b = ($serv == 2) ? $bold[1] : $bold[0];
$menuserv .= $b[0].'<a href="'.$page.'&serveur=2">Serveur 2</a>'.$b[1].'</td></tr>'."\n";

// ECRITURE DE LA PAGE
echo '<table class="localtable963">'."\n";
// écriture du menu des serveurs
echo $menuserv;

echo '	<tr>	<td colspan="'.$colspan.'" style="text-align: center;"><br>
			<a href="classement.php?debut='.$deb.'&nb='.$nbr.'&serveur='.$serv.'">Retour au classement des héros</a>
		<br>&nbsp;</td></tr>';

echo '
  <tr>	<td></td>
	<td class="cl_entete">Nom</td>
	<td class="cl_entete">Héros 1</td>
	<td class="cl_entete">Classe</td>
	<td class="cl_entete">Niveau</td>
	<td class="cl_entete">Héros 2</td>
	<td class="cl_entete">Classe</td>
	<td class="cl_entete">Niveau</td>
	<td class="cl_entete">Héros 3</td>
	<td class="cl_entete">Classe</td>
	<td class="cl_entete">Niveau</td>
	<td class="cl_entete"></td>
	<td class="cl_entete">Score</td>
	</tr>
  <tr>	<td></td><td></td>
	<td class="cl_vspacer" colspan="'.($colspan-2).'"></td>	</tr>
';

$rng = 0;

while ($data = mysql_fetch_array($req))
{
	$rng++;
	$strsup = '';
	$couleur_nom = $data['couleur'];
	if ($couleur_nom) {
		$strsup = ' style="color:'.$couleur_nom.';"';
	}

	$img2 = '';
	if ($data['heros2'])
		$img2 = '<img src="'.$data['avatar2'].'" width="40px" height="40px" alt="'.$data['heros2'].'" ALIGN=middle border=1>&nbsp;&nbsp;';
	$img3 = '';
	if ($data['heros3'])
		$img3 = '<img src="'.$data['avatar3'].'" width="40px" height="40px" alt="'.$data['heros3'].'" ALIGN=middle border=1>&nbsp;&nbsp;';

	echo '
	  <tr class="cl_player"'.$strsup.'>
		<td class="cl_position">'.$rng.' -</td>
		<td class="tdlef">
			<a href="/profil_compte.php?show_compte='.$data['id'].'&serv='.$serv.'"'.$strsup.'>'.$data['login'].'</a></td>
		<td class="tdlef"><img src="'.$data['avatar1'].'" width="40px" height="40px" alt="'.$data['heros1'].'" ALIGN=middle border=1>&nbsp;&nbsp;'.$data['heros1'].'</td>
		<td class="tdlef">'.$data['classe1'].'</td>
		<td class="tdlef">'.$data['niveau1'].'</td>
		<td class="tdlef">'.$img2.$data['heros2'].'</td>
		<td class="tdlef">'.$data['classe2'].'</td>
		<td class="tdlef">'.$data['niveau2'].'</td>
		<td class="tdlef">'.$img3.$data['heros3'].'</td>
		<td class="tdlef">'.$data['classe3'].'</td>
		<td class="tdlef">'.$data['niveau3'].'</td>
		<td class="cl_aligneR"></td>
		<td class="cl_aligneR">'.$data['score'].'</td>	</tr>
	  <tr>
		<td class="cl_vspacer" colspan="'.($colspan).'"></td>			</tr>
	';
}
mysql_close();
echo '</tbody></table>';
include ("fin.php");

?>
