<?php
if ($_SESSION['connexion'] != 1)
{
	$_SESSION['connexion'] = 0;
}

?>
<style>
	UL LI.do2 A {
    color: white !important;
        background: rgb(34,43,56);
    background: -moz-linear-gradient(top, rgba(34,43,56,1) 0%, rgba(36,70,107,1) 67%, rgba(34,43,56,1) 97%);
    background: -webkit-linear-gradient(top, rgba(34,43,56,1) 0%,rgba(36,70,107,1) 67%,rgba(34,43,56,1) 97%);
    background: linear-gradient(to bottom, rgba(34,43,56,1) 0%,rgba(36,70,107,1) 67%,rgba(34,43,56,1) 97%);
	}UL LI.do2 A:hover {
		    cursor: hand;
    text-shadow: 1px 1px 7px cyan;
	}

</style>
<div class="menu">
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<ul class="nav navbar-nav">

			
			<li class="dropdown"><a class="btn btn-do col-md-3 inscription" href="inscription.php">Inscription</a></li>
			<li class="dropdown"><a class="btn btn-do col-md-3 dropdown-toggle" data-toggle="dropdown" href="#">Aide/Infos</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a href="http://www.destinee-online.com/encyclopedie_aide.php">Guide pour D&eacute;butants</a></li>
					<li><a href="http://www.destinee-online.com/forum"><i class="fas fa-question"></i> Forum</a></li>
					<li><a href="http://do-roleplay.bbfr.net/">Forum RP</a></li>
					<li><a href="administration.php">L'&eacute;quipe</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-3 dropdown-toggle" data-toggle="dropdown" href="#">Options</a>
				<ul class="dropdown-menu">
					<img src="/images/bouton/haut.gif" alt="">
					<li><a href="etatduserveur.php">Etat du Serveur</a></li>
					<li><a href="classement.php?">Classement G&eacute;n&eacute;ral</a></li>
					<li><a href="statistiques.php">Statistiques</a></li>
					<li><a href="joueurs_glorieux.php"><i class="fas fa-university"></i> Joueurs Glorieux</a></li>
					<li><a href="hof.php">Hall of Fame</a></li>
					<img src="/images/bouton/bas.gif" alt="">
				</ul>
			</li>
			<li class="dropdown"><a class="btn btn-do col-md-3 dropdown-toggle" data-toggle="dropdown" href="#">Encyclop&eacute;die</a>
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
			<li class="dropdown do2"><a class="btn btn-do col-md-3" style="" href="do2-infos.php">Blog Destinée 2</a></li>
		</ul>
	</div>
</nav>
</div>
