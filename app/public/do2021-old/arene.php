<?php session_start();
error_reporting(-1); // reports all errors
ini_set("display_errors", "1"); // shows all errors
ini_set("log_errors", 1);
ini_set("error_log", "/tmp/php-error.log");
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

entete_index('Arène');
?>

<div class="arene">
  <p></p>
<p>Une fois par jour, combattez dans l'arène des créatures capturées dans les terres hostiles de Kalamaï...</p>
<p>Préparez-vous, car vous ne pourrez pas savoir à quoi vous aurez à faire avant d'y être confronté !</p>
  <div class="">


    <?php
    include('connect.php');
    // initialisations
    $y = 0;          // nombre de créatures différentes possédées par le joueur
    $pvstotal = 0;   // points de vie totaux des créatures possédées (pas nécessairement envoyées)

    // $possede est un tableau contenant le nombre de chaque créature possédée par le joueur
    // le nom des colonnes correspond à la référence ($id) des créatures
    $req = mysql_query('SELECT * FROM `joueurs_créatures` WHERE nom = "'.$nom.'"') or die('Erreur SQL !<br>'.mysqli_error("impossible de récupérer les créatures du joueur"));
    $possede = mysql_fetch_assoc($req);

    // initialisation de l'entête de liste ; sera affiché s'il y a au moins une créature
    echo '<div align="center">
    	<form method="post" action="combat/affront_arene.php">
    	<table class="localtable630"><tbody>';

    	echo '<tr><td colspan="5" style="text-align: left;"><h2>Choix des troupes à envoyer</h2></td></tr>';
    // if ($erreur != '')
    // 	echo '	<tr>	<td colspan="5" style="color: #F60000"><b>'.$erreur.'</b></td></tr>';
    echo  '
    	<tr>	<td style="width:30px;"></td>
    		<td class="cl_entete">Créature</td>
    		<td class="cl_entete">Niveau</td>
    		<td class="cl_entete">Quantité</td>
    		<td class="cl_entete">%</td></tr>
    	<tr>	<td></td>
    		<td colspan="4" class="hline"></td></tr>';

    // on boucle sur l'ensemble des créatures du jeu
    // On compte le nombre total de créatures (existantes dans le jeu) : $nb_creat
    $req = mysql_query('SELECT id, nom, niveau, image, type, pvs FROM creatures ORDER BY niveau ASC') or die('Erreur SQL !<br>'.mysql_error());
    while ($creature = mysql_fetch_assoc($req))
    {
    	// le joueur possède $possede représentants de cette créature
    	$possedecreat = $possede[$creature['id']];

    	// si le joueur en possède effectivement...
    	if ($possedecreat > 0)
    	{
    		$y++;      // incrémentation du nombre de créatures différentes possédées par le joueur
    		$pvstotal += $creature['pvs'] * $possedecreat;
    		$possedecreat = number_format($possedecreat, 0, ",", " ");   // formatage du nombre de représentants de la créature traitée

    		// affichage pour la créature traitée maintenant
    		echo '<tr class="rollovercolor">
    		<td style="width: 1%; vertical-align: center;"><a href="info_creature.php?creature='.$creature['nom'].'" onclick="NewWindow(this.href,\'name\',\'360\',\'350\',\'yes\');return false">
    			<img src="'.$creature['image'].'" width="30" height="30" border=1></a></td>
    		<td class="tdlef" style="width: 40%"><strong>'.$creature['nom'].'</strong> ('.$creature['type'].')</td>
    		<td class="tdcen">'.$creature['niveau'].'</td>
    		<td class="tdcen">'.$possedecreat.'</td>
    		<td class="tdcen"><select name="'.$creature['id'].'" size="1">';
    		// affichage liste déroulante avec pourcentage ; par défaut, 0% pour toutes les créatures les autres
    		echo '<option selected value="0">0%</option>
    		<option value="10">10%</option><option value="20">20%</option><option value="30">30%</option><option value="40">40%</option><option value="50">50%</option><option value="60">60%</option><option value="70">70%</option><option value="80">80%</option><option value="90">90%</option><option value="100">100%</option>
    	                </select></td></tr>
    		<tr>
    		<td></td>
                    <td colspan="4" class="hline"></td></tr>';

    	} // fin du if($possede > 0)...
    } //   fin du while

    // affichage du pied de liste, avec les boutons du formulaire
    if ($y > 0)
    {
    	echo '<tr><td colspan="5" style="text-align: center;"></td></tr></tbody></table><br>
    	<input type="checkbox" name="tout" value="1" checked="true"> Tout envoyer
    	<br><br>
    	<input type="hidden" name="combattre" value="4">
    	<input type="submit" name="bouton" value="Combattre >>">';
    }
    // le joueur ne possède aucune créature, le combat est impossible
    else
    {
    	echo '<tr><td colspan="5" style="text-align: center;"></td></tr></tbody></table><br>
    	  <br>Vous devez possédez au minimum une créature<br>
    		avant de pouvoir espérer combattre...<br><br>';
    }


    ?>

  </div>
</div>

<?php
include('fin.php');
