<?php session_start();

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

entete_index('Joueurs Glorieux');
include('connect.php');


$sql = "SELECT compte_medailles.id_compte, login, COUNT(libelle) as medailles FROM `compte_medailles` INNER JOIN joueurs_infos ON compte_medailles.id_compte = joueurs_infos.id GROUP BY id_compte ORDER BY medailles DESC";
$req = mysql_query($sql) or die(mysql_error());
?>
<p></p>
<p>Voici les joueurs ayant obtenus le plus de récompenses jusqu'ici, qu'il s'agisse d'une médaille de fin de Round, ou bien d'une médaille suite à une quête.</p>
<table class="jgTable">
  <tbody>
    <tr>
      <th>Joueur</th><th>Médailles obtenues</th>
    </tr>
<?php
while ($data = mysql_fetch_array($req)) {
  ?>
    <tr>
      <td class="jgNoms"><?php echo $data[1]; ?></td><td class="jgNbMedailles"><?php echo $data[2]; ?></td>
    </tr>
  <?php
}
mysql_free_result ($req);
mysql_close ();
?>
</tbody>
</table>

<?php
include('fin.php');
 ?>
