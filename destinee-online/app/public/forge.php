<? session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

include ("debut.php");
include ("menu.php");
entete("Forge");

include("connect.php");
$nom = $_SESSION['nom'];


$sortes = array(
	"'Accessoires'",
	"'Bottes'",
	"'Épée', 'Dague', 'Masse', 'Bâton', 'Hache', 'Arc'",
	"'Armure'",
	"'Bouclier'",
	"'Heaume'",
	"'Amulette'",
	"'Anneau'"
);



echo '<form method="get" action="forge.php">
<table class="localtable630" border=0><tbody>
<tr>	<td colspan="3"><h2>Forge</h2></td></tr>
';


// Prise en compte du formulaire
if ((isset($_GET['mode']))&&($_GET['mode']=='combinerobjets'))
{
	$sql = "SELECT * FROM joueurs_objets WHERE nom = '$nom'";
	$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
	$data = mysql_fetch_row($req);
	
	echo '<xmp>'; print_r($_GET); echo '</xmp>';
	
	$choisis = array();
	$objet1 = -1;
	foreach ($_GET AS $param => $objid)
	{
		if (substr($param,0,3)=='obj')
		{
			for ($i=2; $i<=17; $i++)				// vérification que l'objet est bien possédé
			{
				if (($data[$i] == $objid) && ($i != $objet1))	// afin d'éviter la faille de deux objets identiques alors qu'un seul exemplaire est possédé
				{
					$sq1 = "SELECT nom, type, image, niv FROM objets_stats WHERE id = '$objid'";
					$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.mysql_error());
					$dat1 = mysql_fetch_row($re1);
					$choisis[] = array($objid, $dat1[0], $dat1[1], $dat1[2], $dat1[3]);
					$objet1 = $i;
					break;
				}
			}
		}
	}
	
	// contrôles divers
	if (sizeof($choisis)!=2)
		echo 'Vous devez choisir deux objets à combiner!<br>';
	else	// Tout bon, on peut combiner les objets!!
	{
		echo 'Objets choisis : '.$choisis[0][1].', '.$choisis[1][1].'.<br>';
		
		$nivmin = floor(($choisis[0][4] + $choisis[1][4])/2);
		$nivmax = ceil ( $choisis[0][4] + $choisis[1][4]   );
		$type0 = '';
		$type1 = '';
		foreach ($sortes AS $typ)
		{
			if (!(strpos($typ, $choisis[0][2])===false))
				$type0 = $typ;
			if (!(strpos($typ, $choisis[1][2])===false))
				$type1 = $typ;
		}
		
		echo 'Objets possibles:<br>';
		$sql = "SELECT id, nom, niv FROM objets_stats WHERE `niv` >= '$nivmin' AND `niv` <= '$nivmax' AND (`type` IN ($type0) OR `type` IN ($type1)) ORDER BY niv ASC";
		echo '|'.$sql.'|<br>';
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
		while ($data = mysql_fetch_row($req))
		{
			echo '<div class="lralign" style="width:300px;"><div class="lralignl" style="width:250px;">'.$data[1].' - '.$data[0].' ('.$data[2].')</div><div class="lralignr">abc</div></div>';
		}
	}
}


// Affichage normal
echo '<tr><td colspan="3" class="tdlef">Choissez deux objets à combiner :</td></tr>';

$listeobj = array();
$sql = "SELECT * FROM joueurs_objets WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.mysql_error());
$data = mysql_fetch_row($req);
for ($i=2; $i<=17; $i++)
{
	$objid = $data[$i];
	if ($objid != '0')
	{
		$sq1 = "SELECT nom, type, image FROM objets_stats WHERE id = '$objid'";
		$re1 = mysql_query($sq1) or die('Erreur SQL !<br>'.mysql_error());
		$dat1 = mysql_fetch_row($re1);
		$listeobj[] = array($objid, $dat1[0], $dat1[1], $dat1[2]);
	}
}

$z = 0;
foreach ($listeobj AS $obj)
{
	$z++;
	if ( ($z%3) ==1)
		echo '<tr>';
	echo '<td class="creatbatiliste">'.$obj[1].'<br>('.$obj[2].') - '.$obj[0].'<br><img src="'.$obj[3].'" width=40 height=40>
		<input type="checkbox" name="obj'.$z.'" value="'.$obj[0].'"></td>';
	if ( ($z%3) == 0)
		echo '</tr>';
}
if ( ($z%3) !=0)
	for (; ($z%3) != 3; $z++)
		echo '<td>abc</td>';

echo '<tr><td colspan="3"><input type="hidden" name="mode" value="combinerobjets">
<input type="submit" value="Régler >>">
</td></tr>
</tbody></table>
</form>
';


mysql_close();
include("fin.php");
