<?php session_start();

// --- Connexion : Sont misent en variables de session : Nom, Password, Race et Classe ---

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
      exit;
  }
}

$nom = $_SESSION['nom'];
$temps = floor(time()/60);

include ("debut.php");
include ("menu.php");
entete("Créatures");

include("connect.php");

echo '<table border="0" class="localtable630"><tbody>
<tr>	<td colspan="3">'.subtitle_papyrus('Vos créatures').'</td></tr>
<tr>';
$x = 0;
$y = 0;
$pvstotal = 0;

$sql = 'SELECT id, nom, pvs FROM creatures_stats ORDER BY niveau';
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());

$sq2 = 'SELECT * FROM joueurs_créatures WHERE nom = "'.$nom.'"';
$re2 = mysql_query($sq2) or die('Erreur SQL !'.$sq2.'<br>'.mysql_error());
$da2 = mysql_fetch_array($re2);

for ($i=0; $i<mysql_num_rows($req); $i++)
{
	$dat = mysql_fetch_row($req);
	
	if ($da2[$dat[0]] > 0)
	{
		if ($x == 3)
		{
			$x = 0;
			echo "</tr>\n<tr>";
		}
		$x++;
		$y++;

		$sq3 = 'SELECT type, image FROM creatures_liste WHERE id = "'.$dat[0].'"';
		$re3 = mysql_query($sq3) or die('Erreur SQL !<br>'.$sql3.'<br>'.mysql_error());
		$da3 = mysql_fetch_row($re3);
		$pvstotal = $pvstotal + ($dat[2] * $da2[$dat[0]]);

		echo '	<td class="creatbatiliste"><a href="info_creature.php?creature='.$dat[1].'" onclick="NewWindow(this.href,\'name\',\'470\',\'350\',\'yes\');return false">
		<h4>'.$dat[1].'</h4><br>
		('.$da3[0].')<br>
		<img src="'.$da3[1].'" width="100" height="100" alt="'.$dat[1].'" title="'.$dat[1].'" border=1><br>
		'.number_format($da2[$dat[0]], 0, ",", " ")."</a></td>\n";
	}
}
for (;(($x<3)&&($y>3)); $x++)
	echo "	<td>&nbsp;</td>\n";

echo '</tr></tbody></table>';

if ($y == 0)
	echo 'Vous ne possédez aucune créature...<br>';

mysql_query('UPDATE `joueurs_modificateurs` SET `pvstotal` = "'.$pvstotal.'" WHERE nom = "'.$nom.'"');

mysql_close();
include ("fin.php");
