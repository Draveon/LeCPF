<style>
	h2 {
		font-size: 15pt !important;
	}
</style>

<?php session_start();

$texte = (isset($_GET['texte'])) ? $_GET['texte'] : 1;
switch ($texte)
{
	case '1' : $head_title = 'Comment bien débuter sur Destinée';   $head_keywords = 'tuto, débuter, comment jouer, destinee online';   break;

}

include ("debut.php");
if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
	$connexion = 0;
	include ("menu_index.php");
}
else{
	$connexion = 1;
	include ("menu.php");
}

entete_index("Comment bien débuter");

?>


<table class="localtable630">

	<tbody>


		<tr class="help">
			<td style="text-align: center;">
<?php
if ($texte == 1)
{
	?>
	<section class="container-fluid">

		<aside class="col-md-2">

			<ul class="menu_help" style="
			list-style: none;
			font-size: large;
			font-weight: bolder;
			font-family: papyrus;
			line-height: 21px;">

				<li><a target="_blank" href="#personnage">Personnage</a></li>
				<li><a target="_blank" href="#provinces">Provinces</a></li>
				<li><a target="_blank" href="#debuter">Bien Débuter</a></li>
				<li><a target="_blank" href="#magie">Magie</a></li>
				<li><a target="_blank" href="#combats">Combats</a></li>
				<li><a target="_blank" href="#objets">Objets</a></li>
				<li><a target="_blank" href="#sorts">Sorts</a></li>
				<li><a target="_blank" href="#aptitudes">Aptitudes</a></li>
				<li><a target="_blank" href="#batspe">Bâtiments spéciaux</a></li>
				<li><a target="_blank" href="#mines">Mines et Ressources</a></li>

			</ul>

		</aside>


		<aside class="col-md-10 texteAide">

			<center class="longtexte" style="font-size: 14px;   font-style: italic;"><p>Si vous avez fait un mauvais choix et que vous souhaitez recommencer sans vous réinscrire, vous pouvez réinitialiser votre personnage en cliquant sur "Personnage"=>"Infos Personnage"=>"Renaître" (en bas de la page). Vous aurez une petite compensation en or si vous aviez gagné de l'expérience. Et vous récupérerez la moitié d'expérience que vous avez gagné durant votre "première vie".</p></center>


			<h2 id="personnage">Personnage et Inscription</h2>
			<a href="http://www.destinee-online.com/encyclopedie_races.php">Page des Races</a><br />
			<a href="http://www.destinee-online.com/encyclopedie_classes.php">Page des Classes</a><br />
			<a href="http://www.destinee-online.com/encyclopedie_dieux.php">Page des Dieux</a>
			<div class="longtexte">
				<p>
					Race ? Classe ? Dieu ?

					Dès le début du jeu, vous devrez créer votre héros et choisir sa <a target="_blank" href="http://www.destinee-online.com/encyclopedie_races.php">Race</a>, sa <a target="_blank" href="http://www.destinee-online.com/encyclopedie_classes.php">Classe</a> et son <a target="_blank" href="http://www.destinee-online.com/encyclopedie_dieux.php">Dieu</a>. Voici ce qu'il faut savoir avant de faire votre choix. <br /><br />
					Votre héros disposera de 6 statistiques bien distinctes :
					<ul>
						<li>l'Attaque: Augmente les dégâts de vos créatures physiques</li>
						<li>la Défense: Augmente la résistance de vos créatures face aux dégâts physiques</li>
						<li>l'Initiative: Augmente la vitesse à laquelle vos créatures attaquent</li>
						<li>l'Endurance: Augmente la résistance de vos créatures face aux dégâts magiques</li>
						<li>la Puissance: Augmente les dégâts de vos créatures magiques</li>
						<li>le Charisme: Détermine votre "beauté", elle est utile pour plusieurs raisons:
							<ul>
								<li>Influence les coûts de recrutement de créatures</li>
								<li>Influence le nombre de créatures que vos bâtiments peuvent accueillir chaque jour</li>
								<li>Permet de porter des objets dont vous ne pourriez vous équipez avec le charisme d'une huître (sans offense aux huîtres, on vous aime !)</li>
							</ul>
						</li>
					</ul><br />
					Ces statistiques seront améliorées à chaque niveau fonction de sa race, de sa classe et de son dieu. Ainsi ces choix sont primordiaux. Distribuées de manière équilibrée, vos statistiques de race, classe et dieu établissent ce que deviendra votre héros au fil du temps.
				</p>
			</div>
			<br><br><br><br>

			<h2 id="provinces">Au Commencement: Les Provinces</h2>
			<a target="_blank" href="http://www.destinee-online.com/encyclopedie_politiques.php">Page des Provinces de l'encyclopédie</a>
			<div class="longtexte">
					<p>Avant toute chose il vous faudra choisir une province dans laquelle vous débuterez votre aventure (Vous pourrez faire ceci en allant dans "Royaume"=>"Province") ! Il en existe 9, chaque province possède des qualités et des faiblesses réparties sur 6 statistiques que vous présente maintenant:
						<ul>
							<li>Le Gain de créature par jour: Influence le nombre de créature que vous obtenez toutes les 24h</li>
							<li>Le Coût Général des bâtiments: Influence le prix des bâtiments lorsque vous les construisez</li>
							<li>La Récupération Magique: Influence la vitesse de rechargement de votre mana</li>
							<li>L'Exploration et Découverte: Influence la difficulté à trouver de nouvelles terres et découvrir des objets</li>
							<li>Le Total des Revenus: Influence l'or que vous gagnez par minute</li>
							<li>Le Globe de protection: Influence le temps que vous pouvez rester inattaquable après un rude combat</li>
					</p>
					<p>
						 Pour vous qui débuter, je vous fais une petite sélection de trois provinces pour vous aider :
						<ul>
							<li>Si vous ne savez pas trop quoi jouer et que vous voulez prendre le temps de découvrir le jeu: préférez Edhesse => qui est la province la plus simple pour commencer.</li>
							<p>Mais si vous voulez jouer...</p>
							<li>un Barbare qui veut salir sa grosse hache : préférez Prévèze, qui est une Anarchie <br />=> Plus facile pour la Construction de bâtiments, le recrutement de troupes et la découverte d'objets!</li>
							<li>un Magicien qui veut lancer de puissants sorts : préférez Mésomnon, qui est une Magocratie <br />=> Un gain de mana décent, des bâtiments un peu moins chers, des revenus corrects et un globe de protection magique très utile</li>
						</ul>
					</p>
			</div>
			<br><br><br><br>

			<h2 id="debuter">Exploration => Construction => Recrutement</h2>
			<div class="longtexte">
				<p>
					Une fois dans votre province, vous pouvez dors et déjà utiliser une partie de votre or pour explorer et construire votre premier bâtiment de troupes. <br /><br />

					<h2>Explorer</h2>

					Pour ce faire, rendez-vous dans la <a target="_blank" href="http://www.destinee-online.com/exploration.php">page Explorer</a> dans "Action"=>"Explorer". Vous devrez choisir le type de terrain à explorer, il en existe 9, et tous ne sont pas fait pour vous.
					Vous pouvez vous en rendre compte en observant le petit chiffre à virgule à côté de chaque nom de terrain (1.0 est un terrain neutre, en dessous de 1.0 les bâtiments vous coûteront plus cher, et au dessus de 1.0 ils seront moins chers). <br /><br />
					Vous devriez avoir un terrain avec un coefficient d'au moins 1.3, sur lequel quelques parcelles de terres sont déjà présentes. Il s'agit de votre terrain principal, c'est ici que vous aller construire votre premier bâtiment. <br /><br />

					Cliquez sur votre terrain principal, vous devrez alors rentrer une somme d'argent pour explorer et découvrir un peu plus de terres: entrez donc 10000. Une page s'ouvrira pour vous montrer combien de terres vous avez découvert... <br/><br/>

					<h2>Construire</h2>

					Rendez-vous maintenant sur la <a target="_blank" href="http://www.destinee-online.com/batiments.php">page Créatures & Bâtiments</a>  dans "Action"=>"Créature & Bâtiments" et cliquez sur le lien à droite "Construire un ou des nouveaux bâtiments". <br/><br/>

					Vous avez devant vous une liste des bâtiments que vous pouvez construire pour commencer à vous constituer une armée. <br/>

					Vous pouvez dans un premier temps cliquer sur Physique si vous êtes plutôt orienté vers une classe non-magique comme Barbare/Chevalier/Archer/Samouraï/etc... ou bien Magique si vous êtes une classe plutôt orienté mage (Merci captain Obvious me dit-on dans l'oreillette magique). <br/><br/>

					La liste est plus courte, maintenant c'est à vous de voir, préférez-vous partir sur une créature à distance/au corps-à-corps ? au sol/volante ? je vous laisse explorer les différentes particularités des créatures en cliquant directement sur le bâtiment, vous verrez alors une série de statistiques concernant à la fois le bâtiment et la créature en elle-même :
						<ul>
							<li>Les coût en or et terres du bâtiment</li>
							<li>le nom du bâtiment</li>
							<li>Le nom de la créature</li>
							<li>Le niveau de la créature (il y a 6 niveaux)</li>
							<li>Le nombre de créatures que l'on obtient par jour</li>
							<li>Le/les terrains sur lesquels on peut construire le bâtiment</li>
							<li>le coût en or et en mana de la créature lors du recrutement</li>
							<li>Le type de créature</li>
							<li>Les statistiques:
								<ul>
									<li>Attaque</li>
									<li>Défense</li>
									<li>Initiative</li>
									<li>Endurance</li>
									----------------
									<li>Vitalité</li>
									<li>Dégâts min et max</li>
								</ul>
							</li>
							<li>Les Traits de la créature (Attaque à distance, Contact, Volante, Terrestre, Chasseur de gros gibier, etc...)</li>
							<p>Vous pouvez en apprendre davantage sur les créatures (les différents types, traits, niveaux...) sur la <a target="_blank" href="http://www.destinee-online.com/encyclopedie_creatures.php">page d'Encyclopédie des créatures</a></p>
						</ul>
						<br/><br/>

						<h2>Recrutement de créatures</h2>

						Une fois votre bâtiment construit, vous pourrez aller sur les pages "Recruter" et "Recrutement" dans l'onglet "Action". <br /><br/>
						Ces deux pages ont un rôle différent.
						<ul>
							<li>La première: <a target="_blank" href="http://www.destinee-online.com/batiments.php">"Recruter"</a>, permet d'avoir une vue en détails de vos troupes, comme lorsque vous construisez un bâtiment. Vous pourrez d'ailleurs voir que de nouvelles statistiques sont apparues sur votre créature. En effet, vous avez désormais les statistiques de base de la créature entre parenthèses et à gauche les nouvelles statistiques avec les bonus de votre personnage ! <br/>La page "Recruter" permet évidemment de recruter vos troupes, mais ce n'est pas celle que vous conseillerais en tant que débutant. <br/>Vous pouvez aussi renvoyer vos créatures, mais n'y prêtez pas attention, vous découvrirez son utilité plus tard.</li>
							<li>La deuximème page <a target="_blank" href="http://www.destinee-online.com/recruter_equilibre.php">"Recrutement d'une armée"</a> est en revanche beaucoup plus simple à comprendre, vous avez la liste de vos troupes triées par niveaux, avec la quantité disponible et la quantité recrutée, cette page vous permets de recruter en fonction de votre <u>"Puissance"</u> (comprenez votre position dans le classement général du jeu), celle-ci est principalement fixée en fonction de vos créatures recrutées. Grâce à cette puissance, vous pouvez choisir votre zone d'action dans laquelle vous attaquerez vos ennemis. <br/> <br/>
								<b>Par exemple:</b> vous êtes au début du jeu, à une puissance de 5000. Attaquer à cette position dans le classement n'est pas très intéressante en termes de gains. Ainsi vous souhaitez monter un peu pour piller les ressources de vos adversaires (à savoir que vous gagnerez plus en prenant des risques comme en combattant des joueurs d'un niveau supérieur au vôtre). <br/>Vous aller dans "Recrutement d'une armée", vous cochez vos troupes et inscrivez une puissance de 15000 dans la barre en bas, puis vous validez. <br/>
								Si vos troupes sont assez nombreuses, le jeu vous montre automatiquement à quelle puissance vous pourrez vous placer en équilibrant au maximum votre armée (pour en savoir plus sur l'équilibre de l'armée, reportez-vous dans l'aide de la <a target="_blank" href="http://www.destinee-online.com/batiments.php">page "Recruter"</a>). </li>
						</ul>

				</p>
			</div>
			<br><br><br><br>

			<h2 id="magie">Pas de Mana, pas de recrutement</h2>
			<a target="_blank" href="http://www.destinee-online.com/encyclopedie_batiments.php?niv=Magie&tri=0#batiment">Page des tours de magie l'encyclopédie</a>
			<div class="longtexte">
				<p>
					Le mana est essentiel pour recruter vos troupes et lancer des sorts, pour en obtenir il vous faut construire une <a target="_blank" href="http://www.destinee-online.com/construction.php?type=2">Tour de magie</a> via "Action" => "Magie & Bât. Spéciaux" => "Construire une tour de magie". La première peut se construire dès le niveau 1 et vous octroie un maximum de 10000 mana. Ce maximum augmentera en construisant les autres tours de magie disponibles aux niveaux : 3, 6, 10 et 15.
					Attention cependant, les classes ne disposant pas de sorts de niveaux 4 et 5, ne pourront béneficier des tours de magie de même niveau.
				</p>
			</div>
			<br><br><br><br>




			<h2 id="combats">Combats</h2>
			<div class="longtexte">
				<p>
					Les combats se déroulent automatiquement et sont divisés en "tours", à chaque tour, toutes les créatures des deux adversaires s'affrontent de façon aléatoire (sauf dans le cas de compétences particulières que vous découvrirez avec le temps). <u>Le tour 1</u> est particulier, dit "préliminaire", seules les créatures attaquant à distance peuvent agir durant ce tour (les créatures de type "Reptile" peuvent également attaquer durant le tour 1 grâce à leur trait de type "Approche Discrète"). <br />
					Un tour se termine lorsque toutes les créatures pouvant attaquer ont effectué leur attaque.
				</p>
			</div>
			<br><br><br><br>

			<h2 id="objets">Objets</h2>
			<a target="_blank" href="http://www.destinee-online.com/encyclopedie_objets.php">Page des objets de l'encyclopédie</a>
			<div class="longtexte">
				<p>
					Les objets sont un élément important du jeu, ils peuvent vous assurer la victoire en combat grâce aux différentes statistiques qu'ils vous apportent (gain de statistique basique, gain en pourcentage de dégâts/de résistance, etc...). Ils peuvent aussi être utile dans la gestion de votre royaume en augmentant notamment votre revenu d'or / de ressources / de créatures... <br />
					Vous pouvez en obtenir via la <a target="_blank" href="http://www.destinee-online.com/pacification.php">Pacification</a>, en déboursant de l'or pour mener des explorations en vue de découvrir des objets. Vous pouvez également en acheter via le <a target="_blank" href="http://www.destinee-online.com/foire.php">Le Marché Central</a> lors des ventes aux enchères.
				</p>
			</div>
			<br><br><br><br>


			<h2 id="sorts">Sorts</h2>
			<a target="_blank" href="http://www.destinee-online.com/encyclopedie_sorts.php">Page des sorts de l'encyclopédie</a>
			<div class="longtexte">
				<p>
					Les sorts, au même titre que les objets, sont un élément à ne pas négliger. Ils fournissent eux aussi des statistiques et des effets utiles en combat. Il en existe deux catégories : les sorts généraux et les sorts spéciaux. <br /><br />
					<ul>Les sorts généraux:
						<li>Divisés en 2 sous catégories: les sorts Offensifs et Défensifs<br />
							<ul>
								<li>Les sorts offensifs: comme leur nom l'indique, ils permettent d'attaquer les créatures adverses. Se déclenchant avant le tour 1, dans ce qu'on appelle simplement "le tour des sorts". Vous pouvez en apprendre davantage à leur sujet (leurs différents éléments, leur puissance, etc...) en vous référant à l'aide située sur la page des sorts de l'encyclopédie, dont le lien est indiqué plus haut.</li>
								<li>Les sorts défensifs: au contraire, vous apporte des bonus (parfois en contrepartie de malus) aux statistiques</li>
							</ul>
						</li>
						<li>Ils sont répartis sur 5 niveaux de puissance, déterminant avec quelle tour de magie vous pourrez les apprendre.</li>
						<li>Pour les apprendre vous devrez vous rendre sur une de vos tours de magie, et les choisir directement dans via une liste. Plus vous apprenez de sort, plus cela vous coutera cher</li>
						<li>Pour les incanter durant un combat, vous aurez besoin de <a target="_blank" href="#magie"></a> et de <a target="_blank" href="#mines">Ressources minières</a> et des les cocher dans votre <a target="_blank" href="http://www.destinee-online.com/Sort.php">Page d'incantation des sorts</a>.</li>
					</ul>
					<ul>Les sorts spéciaux:
						<li>Contrairement aux sorts généraux, ceux-ci sont exclusifs à chaque <a target="_blank" href="#classes">Classe</a></li>
						<li>Accessibles à différents niveaux selon la <a target="_blank" href="http://www.destinee-online.com/encyclopedie_classes.php">Classe que vous choisissez</a>. Vous n'aurez pas besoin de débourser la moindre pièce d'or pour l'apprendre, vous aurez juste besoin d'atteindre le niveau nécessaire.</li>
						<li>Pour être incantés, ils ne requièrent ni mana, ni ressources minières. Il vous suffit simplement des les cocher dans votre <a target="_blank" href="http://www.destinee-online.com/Sort.php">Page d'incantation des sorts</a></li>
						<li>Là encore, beaucoup d'effets sont au rendez-vous, certains vous donne un gain de statistiques, d'autres influencent la nature ou le comportement de vos créatures, ou encore permettent de mettre des bâtons dans les roues de votre adversaire</li>
					</ul>
				</p>
			</div>
			<br><br><br><br>

			<h2 id="aptitudes">Aptitudes</h2>
			<a target="_blank" href="http://www.destinee-online.com/encyclopedie_aptitudes.php">Page des aptitudes de l'encyclopédie</a>
			<div class="longtexte">
				<p>
					Enfin les aptitudes, avant dernier élément à connaître pour tout seigneur qui se respecte. Les aptitudes ont le même principe que les objets => vous apporter une force supplémentaire en combat et vous aider dans la gestion ou la protection de votre royaume !<br />
					Chaque race en possède une de base, de même pour chaque classe (excepté le barde qui peut choisir sa 2ème aptitude au début du jeu). Chaque joueur dispose de points d'aptitudes par niveau (déterminés par sa classe), qu'il peut dépenser comme bon lui semble dans ses aptitudes afin d'améliorer leur efficacité. <br/>
					Au niveau 8 (ou 5 s'il choisi une race et une classe ayant la même aptitude), il peut en choisir une nouvelle, et ainsi de suite aux niveaux 12, 16, 20 et 24... <br/><br/>
					Vous pouvez retrouver toutes leurs informations sur la page d'encyclopédie indiquée au dessus.
				</p>
			</div>
			<br><br><br><br>

			<h2 id="batspe">Bâtiments spéciaux</h2>
			<a target="_blank" href="http://www.destinee-online.com/encyclopedie_batspe.php">Page des bâtiments spéciaux de l'encyclopédie</a>
			<div class="longtexte">
				<p>
					Sans oublier les bâtiments spéciaux, dernier élément à connaître pour tout seigneur qui se respecte. Les bâtiments spéciaux sont...des bâtiments ! Exactement ! Cependant, ceux-ci se construisent depuis la même page que les tours de magie, <a href="http://www.destinee-online.com/batiments.php?type=2">la page "Magie & Bat. Spé"</a> sauf que vous devrez cliquer sur "Construire des bâtiments spéciaux" bien entendu. <br/>
					Les différences majeures avec les bâtiments traditionnels, les voicies:
					<ul>
						<li>Les bâtiments spéciaux ne coûtent rien</li>
						<li>Ils sont accessibles tous les 3 niveaux, depuis le niveau 1 soit : 1, 4, 7, 10, 13, 16 , etc...</li>
						<li>Ils sont constructibles sur tous les terrains</li>
						<li>Vous apporte des bonus divers et variés (et uniquement des bonus)</li>
						<li>parmis ces bonus :
							<ul>
								<li>Des stats basiques supplémentaires</li>
								<li>Des pourcentages de dégâts supplémentaires (généraux ou spécialisés)</li>
								<li>Des pourcentages de résistance supplémentaires (généraux ou spécialisés)</li>
								<li>Des pourcentages utiles à votre royaume</li>
								<li>Des points d'aptitudes supplémentaires (y compris dans des aptitudes que vous ne possédez pas !)</li>
							</ul>
						</li>
					</ul>
				</p>
			</div>
			<br><br><br><br>

			<h2 id="mines">Les mines et ressources minières</h2>
			<div class="longtexte">
				<p>
					Lorsque vous explorez, pensez à garder quelques terres libres. Elles vous rapporteront des Ressources minières, essentielles à l'incantation de sorts magiques ! Vous pouvez retrouver toutes les informations les concernant dans la <a target="_blank" href="http://www.destinee-online.com/mines.php">page "Prospection"</a> dans "Personnage"=>"Prospection".
					Sachez également que vous pouvez en acheter sur le marché central, sur l'onglet "Ressources".

				</p>
			</div>
			<br><br><br><br>

		</aside>


	</section>
	<?php
}



echo '</td></tr></tbody></table>';

include("fin.php");
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	//Smooth scrolling with links
$('a[href*=\\#]').on('click', function(event){
	event.preventDefault();
	$('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
});
</script>
