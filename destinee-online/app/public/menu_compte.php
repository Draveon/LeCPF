<?php
if ($_SESSION['connexion'] != 1)
{
	$_SESSION['connexion'] = 0;
}
?>
<div class="menu">
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">

			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Personnage</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a href="principale.php">Statut</a></li>
					<li><a href="strategie.php">Strat&eacute;gies</a></li>
					<li><a href="Sort.php">Sorts</a></li>
					<li><a href="inventaire.php">Inventaire</a></li>
					<li><a href="aptitudes.php">Aptitudes</a></li>
					<li><a href="mines.php">Prospection</a></li>
					<li><a href="profil.php">Infos Personnage</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Royaume</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a href="archives.php">Archives</a></li>
					<li><a href="messagerie_reception.php">Messagerie</a></li>
					<li><a href="menu_palatin.php">Province</a></li>
					<li><a href="palatinat.php">Palatinat</a></li>
					<li><a href="armada.php">Diplomatie</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-2 dropdown-toggle" data-toggle="dropdown" href="#">Action</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a href="batiments.php">Cr&eacute;atures & B&acirc;timents</a></li>
					<li><a href="batiments.php?type=2">Magie & B&acirc;t. Sp&eacute;ciaux</a></li>
					<li><a href="recruter_equilibre.php">Recrutement</a></li>
					<li><a href="exploration.php">Explorer</a></li>
					<li><a href="pacification.php">Pacifier</a></li>
					<li><a href="abandonner.php">Abandonner</a></li>
					<li><a href="combat.php">Combattre</a></li>
					<li><a href="taverne.php?page=espionner">Sombre Taverne</a></li>
					<li><a href="mercenariat.php">Mercenariat</a></li>
					<li><a href="foire.php">March&eacute; Central</a></li>
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
					<li>
						<?php

						if ($serveur == 1) {
							echo'
							<a href="http://www.destinee-online.com/classement.php?debut=0&nb=200&ordre=Puissance&serveur='.$serveur.'">Classement G&eacute;n&eacute;ral</a>';
						} else {
							$serveur = 2;
								echo'
							<a href="http://www.destinee-online.com/classement.php?debut=0&nb=200&ordre=Puissance&serveur='.$serveur.'">Classement G&eacute;n&eacute;ral</a>';
						}

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
