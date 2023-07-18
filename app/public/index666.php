<? session_start();

if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;

include ('debut.php');

if ($_SESSION['connexion'] == 1) {
    include ('menu.php');
} else if ($_SESSION['connexion_compte'] == 1) {
	include ('menu_compte.php');
} else {
	include('menu_index.php');
}

entete_index('Destinée-Online');



// Ecriture des News !!
$nbrnews = ((isset($_GET['news']))&&($_GET['news']=='toutes')) ? '' : ' LIMIT 3';
$temps = ceil(time()/60);

echo '
<table class="localtable630" cellpadding=0 cellspacing=0><tbody>
	<tr>	<td colspan="2"><h2>Quoi de neuf ?</h2>
';
// CACUL DE LA DATE POUR LE CONTRAT
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
include ('administration/connect_0.php');
include ('fonctions/function_0.php');

$n=0;
$req = $bdd->query('SELECT titre, texte, auteur, date_affiche, id, forum_annonce, forum_discussion FROM news_index WHERE affiche = '0' ORDER BY date_affiche DESC $nbrnews');
while ($data = $req->fetch())
{
	$titre		= $data[0];
	$texte		= $data[1];
	$auteur 	= $data[2];
	$date_affiche	= $data[3];
	$id		= $data[4];
	$forum_annonce	= $data[5];
	$forum_discussion=$data[6];

	$delai = date("j",$date_affiche*60).' '.strtolower($mois[date("F",$date_affiche*60)]) .' '.date("y",$date_affiche*60);

	if ($titre!='')
		$titre.='<br>';

	$texte = str_replace('<br>',' ',$texte);
	$texte = substr(strip_tags($texte),0,170);
	$texte = substr($texte, 0, strrpos($texte,' '));

	$recent = ($temps-$date_affiche < 7*1440) ? ' class="newsRecent"' : '';

	$forum = '';
	if (($forum_annonce!='')||($forum_discussion!=''))
	{
		$forum = 'Ouvrir sur le forum: ';
		if ($forum_annonce!='')
		{
			if (substr($forum_annonce,0,7)=='http://')
				$forum .= '<a href="'.$forum_annonce.'">Annonce</a>';
			else
				$forum .= '<a href="forum/'.$forum_annonce.'">Annonce</a>';
		}
		if (($forum_annonce!='')&&($forum_discussion!=''))
			$forum .= ' - ';
		if ($forum_discussion!='')
		{
			if (substr($forum_discussion,0,7)=='http://')
				$forum .= '<a href="'.$forum_discussion.'">Discussion</a>';
			else
				$forum .= '<a href="forum/'.$forum_discussion.'">Discussion</a>';
		}
		$forum .= '';
	}

	$n++;
	echo '<div style="background-image: url(/images/arriereplan.gif); text-align:left; padding: 1px 4px 1px 4px; border: inset #DCBC6C 2px;">
		<div'.$recent.'>'.$delai.' : <h4><a href="info_news.php?news='.$id.'" onclick="NewWindow(this.href,\'name\',\'650\',\'350\',\'yes\');return false">'.$titre.'</a></h4></div>
		<div style="text-align:justify; padding: 5px 0px 5px 0px;">'.$texte.'... <a href="info_news.php?news='.$id.'" onclick="NewWindow(this.href,\'name\',\'650\',\'350\',\'yes\');return false"><i>(lire la suite)</i></a></div>
		<div class="rlalign">
			<div class="lralignl newsAuteur">Posté par '.$auteur.'</div>
			<div class="lralignr">'.$forum.'</div>&nbsp;
		</div>
	</div>
';
	if ($n > 0)
		echo '&nbsp;
';
}
echo '<div style="text-align: left;">';
if ($nbrnews == '')	echo '<a href="index.php">Affichage normal</a>';
else			echo '<a href="index.php?news=toutes">Afficher toutes les news</a>';
echo '</div>
<!--INSCRIPTION
FORUM
ENCYCLOPEDIE
-->
';




// Définition des variables...
$temps = ceil(time()/60);
$limit = $temps - 43200;
$qtee  = array();
//$serv  = array('p', 'b', 'a');
$serv  = array('p', 'b');
// ---------------------------

for ($i=0; $i<count($serv); $i++)
{
	// Connection à la BDD
	include ('administration/connect_'.$serv[$i].'.php');

	$req = mysql_query('SELECT COUNT(id) FROM joueurs_stats');
	$dat = mysql_fetch_row($req);
	$q[] = $dat[0];

	// Déconnection
	mysql_close();
}

echo changement ('Bienvenue!');
echo '
	<div class="longtexte">Destinée est un jeu multijoueur en php qui allie à merveille simplicité, complexité et pluralité. Que vous soyez amateur des <a href="info_race.php?race=Elfe%20Noir" onclick="NewWindow(this.href,\'name\',\'550\',\'550\',\'yes\');return false">elfes noirs</a> aux desseins les plus sombres ou encore des <a href="info_classe.php?classe=Chevalier" onclick="NewWindow(this.href,\'name\',\'550\',\'550\',\'yes\');return false">chevaliers</a> à l\'honneur le plus pur, Destinée saura vous offrir des choix qui vous feront saliver. Que nous parlions de notre choix de <a href="encyclopedie_races.php">races</a>, de <a href="encyclopedie_classes.php">classes</a>, de <a href="encyclopedie_dieux.php">dieux</a>, d\'<a href="encyclopedie_aptitudes.php">aptitudes</a>, de <a href="encyclopedie_sorts.php?niv=1">sorts</a>, de <a href="encyclopedie_creatures.php">créatures</a> ou de quoi que ce soit d\'autre, vous trouverez ici ce que vous recherchez chez tout bon jeu à saveur médiévale-fantastique.</div>

	<div class="longtexte">Le principe du jeu reste fort simple : Lors de l\'<a href="inscription.php">inscription</a>, votre héros reçoit une parcelle de <a href="encyclopedie_terrains.php">terrain</a> et est nommé à la tête de celle-ci. Bien qu\'utiles, ces quelques acres ne peuvent vous l\'être que pour construire de très petits bâtiments. Débute alors votre aventure lorsque vous devrez vous mettre à explorer les différentes terres, à rencontrer d\'autres héros et à vous battre contre les différentes créatures errantes de ce monde ! Construisez ensuite des antres aux mille richesses, des tours obscures ou encore des égouts putrides, organisez peu à peu votre armée, le tout selon vos souhaits !<br />
	Mais là ne s\'arrête pas l\'aventure, car Destinée-Online, c\'est aussi un <a href="encyclopedie_sorts.php?niv=1">système de sorts</a> complexe, un inventaire des plus complets et son artisanat vous permettant de personnaliser encore plus votre héros, ainsi que bien d\'autres systèmes à vous couper le souffle !</div>

	<div class="longtexte">Soulignons que l\'une de nos plus grandes forces, et vous le constaterez bien assez vite, est la vitesse à laquelle il nous est possible d\'améliorer le jeu en ajoutant un <a href="encyclopedie_objets.php">objet</a>, un <a href="encyclopedie_sorts.php">sort</a>, une <a href="encyclopedie_creatures.php">créature</a>, ce qui nous garantit un monde en constante évolution et répondant aux attentes des joueurs.<br />
	En effet, dès les premiers balbutiements de Destinée-Online.com, notre premier objectif fut de créer différents systèmes d\'ajout rapide et de baser l\'entièreté du jeu sur un système complexe de variables, rendant toute modification très aisée. Vos suggestions de nouveaux sorts, nouvelles créatures, nouveaux systèmes, etc, sont donc très importantes pour nous ! Un petit clic et voilà; tout le monde a accès à la nouveauté !</div>

	<div class="longtexte">Nous vous invitons à lire notre <a href="info_combat.php">encyclopédie</a> ainsi que notre <a href="forum/viewforum.php?f=24">section d\'information</a>, qui sauront vous en dire davantage sur les multiples facettes du jeu.<br />
	Laissez-vous tenter par l\'aventure et rejoignez les '.($q[0]+$q[1]+$q[2]).' autres héros qui parcourent déjà notre monde !</div>
';

include ('classement_cache.php');

for ($i=0; $i<count($serv); $i++)
{
	// CLASSEMENT - TOP 5
	echo changement('<a href="classement.php?serveur='.($i + 1).'">Actuellement en tête du classement, Serveur '.($i + 1).'</a>');

	// Connection à la BDD
	include ('administration/connect_'.$serv[$i].'.php');

	echo '
		<table border="0" cellspacing="2" cellpadding="0" style="width: 100%; vertical-align: center; text-align: center;">
			  <tr>	<td></td>
					<td class="cl_entete">Nom</td>
					<td class="cl_entete">Héros 1</td>
					<td class="cl_entete">Classe</td>
					<td class="cl_entete">Niveau</td>
					<td class="cl_entete">Héros 2</td>
					<td class="cl_entete">Classe</td>
					<td class="cl_entete">Niveau</td>
					<td class="cl_entete">Score</td>
					</tr>
				  <tr>	<td></td><td></td>
					<td class="cl_vspacer" colspan="'.($colspan-2).'"></td>	</tr>
				';

	$nbr = 0;
	$sql = "SELECT joueurs_infos.login, heros1.nom AS 'heros1', heros1.classe AS 'classe1', heros1stats.niveau AS 'niveau1', heros1.avatar AS 'avatar1', heros2.nom AS 'heros2', heros2.classe AS 'classe2', heros2.avatar AS 'avatar2', heros2stats.niveau AS 'niveau2', joueurs_infos.score, joueurs_infos.id, compte_couleurs.couleur FROM joueurs_infos 
		LEFT JOIN joueurs_heros AS heros1 ON joueurs_infos.id = heros1.id_compte INNER JOIN joueurs_stats AS heros1stats ON heros1.id = heros1stats.id 
		LEFT JOIN joueurs_heros AS heros2 ON joueurs_infos.id = heros2.id_compte AND heros1.nom != heros2.nom LEFT JOIN joueurs_stats AS heros2stats ON heros2.id = heros2stats.id 
		LEFT JOIN compte_couleurs ON compte_couleurs.id_compte = joueurs_infos.id AND compte_couleurs.activated = 1
		GROUP BY joueurs_infos.id ORDER BY joueurs_infos.score DESC LIMIT 5";
	$req = mysql_query($sql) or die (mysql_error());
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
			<td class="cl_aligneR">'.$data['score'].'</td>	</tr>
		  <tr>
			<td class="cl_vspacer" colspan="'.($colspan).'"></td>			</tr>
		';
	}
	if ($rng==0)
		echo '<tr><td colspan="7">Aucun joueur sur le serveur pour l\'instant...<br>&nbsp;</td></tr>
';


	// Déconnection
	mysql_close();

	echo '</table>';
}

include_once ('partenariats_include.php');
echo '					</td>
				</tr>
			</tbody></table>
			</div></td>
		</tr>
		<tr>
			<td colspan="4" class="cadrebottom">
			</td>
		</tr>
	</table>
	'.writeLinksBottom(1).'
</div>


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
</script>';

echo '<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=\'" + gaJsHost + "google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-4507169-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>

</div>
</div>
</body>
</html>
';
