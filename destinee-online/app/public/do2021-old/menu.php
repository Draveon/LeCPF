<?php
if ($_SESSION['connexion'] != 1){$_SESSION['connexion'] = 0;}

include("connect.php");
$nom = $_SESSION['nom'];
$sql = "SELECT puissance FROM joueurs_stats WHERE nom = '$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$data = mysql_fetch_row($req);
$puissance = $data[0];

$sql = "UPDATE `joueurs_stats` SET `puissance` = '$puissance' WHERE nom ='$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
$sql = "UPDATE `joueurs_heros` SET `puissance` = '$puissance' WHERE nom ='$nom'";
$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
mysql_close();

?>
<div class="menu">
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Personnage</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a class="infobulle" href="principale.php" aria-label="R&eacute;sum&eacute; du personnage.">Statut</a></li>
					<li><a class="infobulle" href="strategie.php" aria-label="Conditions de retraite et statistiques de compte.">Strat&eacute;gies</a></li>
					<li><a class="infobulle" href="Sort.php" aria-label="Sortil&egrave;ges appris.">Sorts</a></li>
					<li><a class="infobulle" href="inventaire.php" aria-label="Objets acquis.">Inventaire</a></li>
					<li><a class="infobulle" href="aptitudes.php" aria-label="Aptitudes connues.">Aptitudes</a></li>
					<li><a class="infobulle" href="mines.php" aria-label="Mines poss&eacute;d&eacute;es.">Prospection</a></li>
					<li><a class="infobulle" href="profil.php" aria-label="param&egrave;tres personnage">Infos Personnage</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Royaume</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a class="infobulle" href="archives.php" aria-label="Derniers &eacute;v&egrave;nements de son royaume.">Archives</a></li>
					<li><a class="infobulle" href="messagerie_reception.php" aria-label="Communiquer avec les autres seigneurs.">Messagerie</a></li>
					<li><a class="infobulle" href="menu_palatin.php" aria-label="Les d&eacute;tails de notre province">Province</a></li>
					<li><a class="infobulle" href="palatinat.php" aria-label="Pour ceux d&eacute;sireux de diriger l'&eacute;conomie de la province.">Palatinat</a></li>
					<!--<li><a class="infobulle" href="armada.php" aria-label="">Diplomatie</a></li>-->
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Action</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a class="infobulle" href="batiments.php" aria-label="Construire et recruter vos troupes.">Cr&eacute;atures & B&acirc;timents</a></li>
					<li><a class="infobulle" href="batiments.php?type=2" aria-label="B&acirc;tir vos Tours de magie et b&acirc;timents sp&eacute;ciaux.">Magie & B&acirc;t. Sp&eacute;ciaux</a></li>
					<li><a class="infobulle" href="recruter_equilibre.php" aria-label="Recrutement avanc&eacute; des cr&eacute;atures.">Recrutement</a></li>
					<li><a class="infobulle" href="exploration.php" aria-label="Pour &eacute;tendre les terres de son royaume.">Explorer</a></li>
					<li><a class="infobulle" href="pacification.php" aria-label="Pour d&eacute;couvrir de puissants art&eacute;facts.">Pacifier</a></li>
					<li><a class="infobulle" href="abandonner.php" aria-label="Abandon de terres.">Abandonner</a></li>
					<li><a class="infobulle" href="combat.php" aria-label="En cas de doute, frappe encore ! - Proverbe Orque.">Combattre</a></li>
					<li><a class="infobulle" href="taverne.php?page=espionner" aria-label="Parfait pour en conna&icirc;tre davantage sur ses voisins.">Sombre Taverne</a></li>
					<li><a class="infobulle" href="mercenariat.php" aria-label="Une t&ecirc;te &agrave; faire tomber ?">Mercenariat</a></li>
					<li><a class="infobulle" href="foire.php" aria-label="Pour d&eacute;penser sans compter...">March&eacute; Central</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Aide/Options</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><span class="separator">Aide</span></li>
					<li><a href="http://www.destinee-online.com/encyclopedie_aide.php"><i class="fas fa-question"></i> Guide pour d&eacute;butants</a></li>
					<li><a href="http://www.destinee-online.com/forum"><i class="fas fa-question"></i> Forum</a></li>
					<li><span class="separator">Gestion de Compte</span></li>
					<li><a href="deconnexion.php"><i class="fas fa-times"></i> D&eacute;connexion</a></li>
					<li><a href="admin_compte.php"><i class="fas fa-user"></i> Mon Compte</a></li>
					<li><a href="selection_perso.php"><i class="fas fa-exchange-alt"></i> Changer de<br /> personnage</a></li>
					<li><span class="separator">Serveur</span></li>
					<li><a href="etatduserveur.php">Etat du Serveur</a></li>
					<li><a href="http://www.destinee-online.com/classement.php?debut=0&nb=200&ordre=Puissance&serveur='.$serveur.'">Classement G&eacute;n&eacute;ral</a>
						<?php

						?>
					</li>
					<li><a href="statistiques.php">Statistiques</a></li>
					<li><a href="joueurs_glorieux.php"><i class="fas fa-university"></i> Joueurs Glorieux</a></li>
					<li><a href="hof.php"><i class="fas fa-university"></i> Hall of Fame</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Encyclop&eacute;die</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a href="historique.php">Historique</a></li>
					<li><a href="encyclopedie_races.php">Races</a></li>
					<li><a href="encyclopedie_classes.php">Classes</a></li>
					<li><a href="encyclopedie_dieux.php">Dieux</a></li>
					<li><a href="encyclopedie_terrains.php">Terrains</a></li>
					<li><a href="encyclopedie_creatures.php">Cr&eacute;atures</a></li>
					<li><a href="encyclopedie_batiments.php">B&acirc;timents</a></li>
					<li><a href="encyclopedie_batspe.php">B&acirc;timents sp&eacute;ciaux</a></li>
					<li><a href="encyclopedie_aptitudes.php">Aptitudes</a></li>
					<li><a href="encyclopedie_sorts.php">Sorts</a></li>
					<li><a href="encyclopedie_objets.php">Objets</a></li>
					<li><a href="encyclopedie_politiques.php">Politique</a></li>
					<li><a href="encyclopedie_palatinat.php">Palatinat</a></li>
					<!-- <li><a href="encyclopedie_armadas.php">Armadas</a></li> -->
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
		</ul>
	</div>
</nav>
</div>
