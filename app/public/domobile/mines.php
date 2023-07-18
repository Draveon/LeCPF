<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$nom = $_SESSION['nom'];
$race = $_SESSION['race'];
include ("debut.php");
include ("menu.php");
entete("Mines");
include("connect.php");

$aide =	"<h2>Les ressources</h2>
        <ul>
        <li> Soufre :
        <ul>
        <li>Vous gagnez 1 soufre par jour pour chaque 500 âcres libres en colline ou en caverne dont vous disposez et chaque 1500 âcres libres en arctique.</li>
        </ul>
        </li>

        <li> Mercure :
        <ul>
        <li>Vous gagnez 1 mercure par jour pour chaque 500 âcres libres en désert ou en marais dont vous disposez et chaque 1500 âcres libres en arctique.</li>
        </ul>
        </li>

        <li> Gemme :
        <ul>
        <li>Vous gagnez 1 gemme par jour pour chaque 500 âcres libres en riverain ou en plaine dont vous disposez et chaque 1500 âcres libres en arctique.</li>
        </ul>
        </li>

        <li> Cristal :
        <ul>
        <li>Vous gagnez 1 cristal par jour pour chaque 500 âcres libres en forêt ou en montagne dont vous disposez et chaque 1500 âcres libres en arctique.</li>
        </ul>
        </li>
        </ul>
        ";

echo '<div id="aide"  style="display:block;font-family: arial;"><a href="javascript:swapbonus(\'aide\', \'nonaide\');">Afficher l\'aide</a></div>';
echo '<div id="nonaide" style="display:none; font-family: arial;"><a href="javascript:swapbonus(\'nonaide\', \'aide\');" >Cacher l\'aide</a><br><br><div style="font-family:default;text-align: left;">'.$aide.'</div></div>';

echo '<br>';

$req  = mysql_query("SELECT HC_mines FROM joueurs_modificateurs WHERE nom = '".$nom."'") or die('Erreur SQL 137 !<br>'.mysql_error());
$data = mysql_fetch_row($req);
$gain_ress_joueur = $data[0];

// ressources actuelles
$req = mysql_query("SELECT soufre, mercure, gemme, cristal FROM joueurs_stats WHERE nom = '".$nom."'") or die('Erreur SQL !<br>'.mysql_error());
$ressources = mysql_fetch_assoc($req);
$res_soufre =	$ressources["soufre"];
$res_mercure = $ressources["mercure"];
$res_gemme =	$ressources["gemme"];
$res_cristal =	$ressources["cristal"];

$req  = mysql_query("SELECT * FROM joueurs_terre WHERE nom = '".$nom."'") or die('Erreur SQL 204 !<br>'.mysql_error());
$terres_totales = mysql_fetch_assoc($req);
$req  = mysql_query("SELECT * FROM joueurs_terre_utile WHERE nom = '".$nom."'") or die('Erreur SQL 206 !<br>'.mysql_error());
$terres_occupees = mysql_fetch_assoc($req);

$terrains_ressources = array(
	"riverain" => "gemme", 
	"colline" => "soufre", 
	"désert" => "mercure", 
	"forêt" => "cristal",
	"marais" => "mercure", 
	"montagne" => "cristal", 
	"plaine" => "gemme", 
	"caverne" => "soufre"
);

foreach ($terrains_ressources AS $terrain => $ressource) {
	$terres_libres = $terres_totales[$terrain] - $terres_occupees[$terrain];
	$nb_ress = floor($gain_ress_joueur * $terres_libres / 500);
	$ress_trans[$ressource] += $nb_ress;
}
// Cas spécifique de l'arctique: une de chaque ressource
$terres_libres = $terres_totales['arctique'] - $terres_occupees['arctique'];
$nb_ress = floor($gain_ress_joueur * $terres_libres / 1500);
$ress_trans['gemme'] += $nb_ress;
$ress_trans['cristal'] += $nb_ress;
$ress_trans['mercure'] += $nb_ress;
$ress_trans['soufre'] += $nb_ress;

// écoulement du temps
include("temps_ecoulement.php");
$parjour = 'par jour';
if ($temps_ecoulement != 1)
	$parjour = 'par '.round(1/$temps_ecoulement,2).' jours';


echo '<table class="localtable630"><tbody>
<tr>	<td colspan="5">'.subtitle_papyrus('Vos possessions minières').'&nbsp;</td></tr>
<tr>	<td><h4>Soufre</h4></td>
	<td><h4>Mercure</h4></td>
	<td><h4>Cristaux</h4></td>
	<td><h4>Gemmes</h4></td></tr>
<tr>	<td><img src="/images/terrain/mine_soufre.gif"   title="Mines de soufre"  ></td>
	<td><img src="/images/terrain/mine_mercure.gif"  title="Mines de mercure" ></td>
	<td><img src="/images/terrain/mine_cristaux.gif" title="Mines de cristaux"></td>
	<td><img src="/images/terrain/mine_gemmes.gif"   title="Mines de gemmes"  ></td></tr>
<tr>	<td>Gain '.$parjour.' : '.$ress_trans['soufre']. '</td>
	<td>Gain '.$parjour.' : '.$ress_trans['mercure'].'</td>
	<td>Gain '.$parjour.' : '.$ress_trans['cristal'].'</td>
	<td>Gain '.$parjour.' : '.$ress_trans['gemme'].  '</td></tr>
<tr>	<td>Réserve  : '.$res_soufre. '</td>
	<td>Réserve  : '.$res_mercure.'</td>
	<td>Réserve  : '.$res_cristal.'</td>
	<td>Réserve  : '.$res_gemme.  '</td></tr>
</tbody></table>';

mysql_close();
include("fin.php");
?>
