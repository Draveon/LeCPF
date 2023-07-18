<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0)
{
	if (!isset($_POST['nom']))
	{
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

$pleinsign = 'style="color:#666666;"';

include ("debut.php");
include ("menu.php");
entete("Recrutement");

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
$temps = floor(time()/60);
include("temps_ecoulement.php");

if (!isset($_POST['recrutement']))
{
	include ("connect.php");
	$sql = "UPDATE `joueurs_connexions` SET `connexion_dernière` = '$temps' WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

	// On affiche l'heure du prochain recrutement !
	$sq2 = 'SELECT connexion_créature FROM joueurs_connexions WHERE nom = "'.$nom.'"';
	$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());
	$da2 = mysql_fetch_row($re2);

	$restant = $duree_jour - ($temps - $da2[0]);
	$reste = '';
	$j = floor( $restant /60  /24);
	$h = floor(($restant /60) %24);
	$m = floor( $restant %60 );
	if ($j != 0)
		$reste = $j.' jour, ';
	if ($h != 0)
		$reste.= $h.' heures, ';
	$reste.= $m.' minutes';

	// Création de la table d'affichage des créatures
	echo '<table class="localtable630"><tbody>
	<tr>	<td colspan="3"><h2>Recrutement</h2>
		Prochain recrutement (approx.) : <b>'.$reste."</b><br>&nbsp;</td><tr>\n";

	// --------------------------------------------

	$sq2 = 'SELECT id, batiment, nom, nombre FROM creatures ORDER BY niveau';
	$re2 = mysql_query($sq2) or die('Erreur SQL !<br>'.$sq2.'<br>'.mysql_error());

	$sq1 = "SELECT * FROM joueurs_créatures_id WHERE nom = '$nom'";
	$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
	$da1 = mysql_fetch_array($re1);

	$sq3 = "SELECT * FROM joueurs_batiments_id WHERE nom = '$nom'";
	$re3 = mysql_query($sq3) or die('Erreur SQL !<br>'.$sql1.'<br>'.mysql_error());
	$da3 = mysql_fetch_array($re3);

	$sql  = "SELECT HC_recrut FROM joueurs_modificateurs WHERE nom = '$nom'";
	$req  = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$crea_obj = $data[0];
	$sql = "SELECT politique, province FROM joueurs_bonus WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$dat = mysql_fetch_row($req);
	$politique = $dat[0];
	$province = $dat[1];
	$sql = 'SELECT creatures FROM politiques_effets WHERE politique = "'.$politique.'"';
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$crea_polit = $data[0];
	$sql = "SELECT niveau, gain FROM batiment_province WHERE province = '$province' AND nom = 'Casernes fortifiées'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$niveau_prov = $data[0];
	$gain_prov = $data[1];
	$crea_palat = $niveau_prov * $gain_prov /100;
	$sql  = "SELECT cha FROM joueurs_stats WHERE nom = '$nom'";
	$req  = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	$cha = $data[0];
	$crea_cha  = 1 +  0.01 * $cha/40;	// 1 % de recrutement par 40 de charisme

	$x = 0;
	$y = 0;
	$plein1 = false;
	while ($da2 = mysql_fetch_row($re2))
	{
		$creatid = $da2[0];
		$nombrepJ = $da2[3];
		if ($da3[$creatid] != '0' && $creatid > 5)
		{
			// Ce if ne sert que pour la création d'une nouvelle <tr> dans la table...
			if ($x == 3)
			{
				$x = 0;
				echo "</tr>\n<tr>";
			}
			$x++;
			$y++;

			$sql = 'SELECT type, image FROM creatures WHERE id = "'.$creatid.'"';
			$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
			$dat = mysql_fetch_row($req);

			$nbrmax = round( 20 * ($nombrepJ * $crea_obj * ($crea_polit + $crea_palat) * $crea_cha));
			$plein = '';
			if ($da1[$creatid] >= $nbrmax)
			{
				$plein = $pleinsign;
				$plein1 = true;
			}

			echo '	<td class="creatbatiliste"><a '.$plein.' href="recruter.php?creature='.$creatid.'" onclick="NewWindow(this.href,\'name\',\'450\',\'420\',\'yes\');return false">
				<h4>'.$da2[1].'</h4><br>
				('.$dat[0].')<br>
				<img src="'.$dat[1].'" width="100" height="100" alt="'.$da2[1].'" border=1><br>
				'.$da1[$creatid].' '.$da2[2].'</a></td>';
		}
	}
	mysql_close();
	echo '</tr></tbody></table>';

	if ($plein1)
		echo '<div class="stratexplic">Un bâtiment ne peut contenir plus de 20 jours de recrutement.<br>Les bâtiments <span '.$pleinsign.'>signalés de cette couleur</span> sont pleins et ne peuvent contenir plus de créatures.</div>';

	if ($y == 0)
		echo '<div>Vous n\'avez actuellement aucune créature à recruter...</div>';
}
include ("fin.php");
?>
