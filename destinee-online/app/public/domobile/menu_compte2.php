<nav class="navbar navbar-inverse">
	<ul class="nav navbar-nav">
		<li class="dropdown"><a class="btn btn-do dropdown-toggle" data-toggle="dropdown" href="#"><span mobile><i class="fas fa-user-circle"></i></span><span desktop> Personnage</span></a>
			<ul id="menu_personnage" class="dropdown-menu">
				<li><a class="infobulle" href="principale2.php" aria-label="R&eacute;sum&eacute; du personnage.">Statut</a></li>
				<li><a class="infobulle" href="strategie2.php" aria-label="Conditions de retraite et statistiques de compte.">Strat&eacute;gies</a></li>
				<li><a class="infobulle" href="Sort.php" aria-label="Sortil&egrave;ges appris.">Sorts</a></li>
				<li><a class="infobulle" href="inventaire.php" aria-label="Objets acquis.">Inventaire</a></li>
				<li><a class="infobulle" href="aptitudes.php" aria-label="Aptitudes connues.">Aptitudes</a></li>
				<li><a class="infobulle" href="mines.php" aria-label="Mines poss&eacute;d&eacute;es.">Prospection</a></li>
				<li><a class="infobulle" href="profil.php" aria-label="param&egrave;tres personnage">Infos Personnage</a></li>
			</ul>
		</li>
		<li class="dropdown"><a class="btn btn-do dropdown-toggle" data-toggle="dropdown" href="#"><span mobile><i class="fab fa-fort-awesome-alt"></i></span><span desktop> Royaume</span></a>
			<ul id="menu_royaume" class="dropdown-menu">
				<li><a class="infobulle" href="archives.php" aria-label="Derniers &eacute;v&egrave;nements de son royaume.">Archives</a></li>
				<li><a class="infobulle" href="messagerie_reception.php" aria-label="Communiquer avec les autres seigneurs.">Messagerie</a></li>
				<li><a class="infobulle" href="menu_palatin.php" aria-label="Les d&eacute;tails de notre province">Province</a></li>
				<li><a class="infobulle" href="faction.php" aria-label="Détail de votre faction">Faction</a></li>
				<li><a class="infobulle" href="palatinat.php" aria-label="Pour ceux d&eacute;sireux de diriger l'&eacute;conomie de la province.">Palatinat</a></li>
				<!--<li><a class="infobulle" href="armada.php" aria-label="">Diplomatie</a></li>-->
			</ul>
		</li>
		<li class="d-none dropdown dropdown-mobile"><a class="btn btn-do_connect" data-toggle="modal" data-target="#modalAction"><span mobile><i class="fas fa-sign-in-alt"></i></span><span desktop> Connexion</span></a>
		<li class="dropdown"><a class="btn btn-do dropdown-toggle" data-toggle="dropdown" href="#"><span mobile><i class="fas fa-hand-rock"></i></span><span desktop> Action</span></a>
			<ul id="menu_action" class="dropdown-menu">
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
			</ul>
		</li>
		<li class="dropdown"><a class="btn btn-do dropdown-toggle" data-toggle="dropdown" href="#"><span mobile><i class="fas fa-question-circle"></i></span><span desktop> Aide/Options</span></a>
			<ul id="menu_options" class="dropdown-menu">
				<li><span class="separator">Aide</span></li>
				<li><a href="http://www.destinee-online.com/encyclopedie_aide.php"><i class="fas fa-question"></i> Guide pour d&eacute;butants</a></li>
				<li><span class="separator">Gestion de Compte</span></li>
				<li><a href="deconnexion.php"><i class="fas fa-times"></i> D&eacute;connexion</a></li>
				<li><a href="admin_compte.php"><i class="fas fa-user"></i> Mon Compte</a></li>
				<li><a href="selection_perso2.php"><i class="fas fa-exchange-alt"></i> Changer de<br /> personnage</a></li>
				<li><span class="separator">Serveur</span></li>
				<li><a href="etatduserveur.php">Etat du Serveur</a></li>
				<li><a href="http://www.destinee-online.com/classement.php?debut=0&nb=200&ordre=Puissance&serveur='.$serveur.'">Classement G&eacute;n&eacute;ral</a></li>
				<li><a href="classement_factions.php">Classement des Factions</a></li>

				<li><a href="statistiques.php">Statistiques</a></li>
				<li><a href="hof.php"><i class="fas fa-university"></i> Hall of Fame</a></li>
			</ul>
		</li>
		<li class="dropdown"><a class="btn btn-do dropdown-toggle" data-toggle="dropdown" href="#"><span mobile><i class="fas fa-book"></i></span><span desktop> Encyclop&eacute;die</span></a>
			<ul id="menu_ency" class="dropdown-menu">
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
				<li><a href="encyclopedie_armadas.php">Armadas</a></li>
			</ul>
		</li>
	</ul>

</nav>

<!--

<div class="modal" id="modalAction" tabindex="-1" role="dialog" aria-labelledby="modalMenu" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
				<ul class="dropdown-menu-mobile">
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
				</ul>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div> -->
