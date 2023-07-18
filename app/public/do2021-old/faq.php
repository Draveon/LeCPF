<? session_start();

$head_title = 'Aide de jeu';
$head_keywords = 'FAQ, foire aux questions, aide, debutant';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("FAQ");


?>
<table class="localtable630"><tbody>
<tr>	<td><h2>Foire aux Questions</h2></td>
	<td style="text-align: right; width: 50%;">
		<div><a href="javascript:sweeptoggle('contract')"><i>Tout cacher</a> | <a href="javascript:sweeptoggle('expand')">Tout voir</i></a></div>
		</td></tr>
<tr>	<td colspan="2" style="text-align:left;"><br>
	<UL class="faq">
		<li><h2 onClick="expandcontent(this, 'sc6')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			Destinée, c'est un jeu de rôle ou... ?</h2>
			<div id="sc6" class="switchcontent">
				Pour une raison de gestion, de serveur et de temps, à l'heure actuelle, Destinée reste un jeu libre ou
				le choix du RP est sujet à la volonté du joueur. En temps et lieux, nous ferons les efforts nécessaires
				en vue de l'ouverture d'un second serveur à tendance RP afin de satisfaire à toutes les demandes, mais
				pour le moment, nous vous invitons à tous cohabiter en un seul et même lieux, que vous soyiez RP ou non.
				Merci pour votre compréhension.
			</div>
		</LI>
		<LI><h2 onClick="expandcontent(this, 'sc1')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			Que dois-je faire pour recruter des dragons ?</h2>
			<div id="sc1" class="switchcontent">
				Avant d'en venir aux dragons, il est bon de savoir simplement comment recruter des <a href="encyclopedie_creatures.php">créatures</a>,
				qu'importe leur niveau. Pour ce faire, vous devez d'abord et avant tout posséder un nombre
				suffisant de terres, nombre qu'il vous est possible d'obtenir par le biais de l'exploration
				territoriale. Il est de plus important de noter que le type de terre possédé influencera le choix
				des <a href="encyclopedie_batiments.php">bâtiments</a> qu'il vous sera possible de construire. 
				Une fois un nombre d'acres suffisant obtenu, vous devez débuter la construction du bâtiment de 
				votre choix, après quoi les créatures reliées à ce bâtiment apparaîtront dans votre page de
				recrutement. Il vous est alors possible	de débuter la formation de votre armée !
			</div>
		</LI>
		<LI><h2 onClick="expandcontent(this, 'sc2')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			Que puis-je faire si jamais je suis le seul membre connecté à Destinée ?</h2>
			<div id="sc2" class="switchcontent">
				Tout ce que vous pouvez habituellement faire, sans contrainte. Qu'il soit question de combattre, de lancer
				un sort ou encore de grossir les rangs de vos troupes, aucun autre joueur n'a a être présent.
			</div>
		</LI>
		<LI><h2 onClick="expandcontent(this, 'sc3')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			J'ai beau investir énormément, je ne trouve pas d'acres de terres arctiques !</h2>
			<div id="sc3" class="switchcontent">
				Dépendemment de votre race, il se peut que vous soyez défavorisé face à un certain type de terrain, alors
				que face à d'autres, vous serez au contraire favorisé. Consultez la page de <a href="encyclopedie_terrains.php">
				l'encyclopédie relative aux terrains</a> afin d'en savoir davantage.
			</div>
		</LI>
		<LI><h2 onClick="expandcontent(this, 'sc4')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			Comment se calcule les dégâts de mes créatures lors d'un combat ?</h2>
			<div id="sc4" class="switchcontent">
				Le calcul des dégâts est le fruit d'une formule plutôt compliquée qui tient compte de l'attaque et de la défense
				des héros, de l'attaque, de la défense, de la fourchette des dégats, du nombre et du niveau des créatures. Qui
				plus est, plusieurs aptitudes, sorts et objets peuvent venir influer sur ce calcul, ce qui en fait une formule
				relativement compliquée, mais qui a le mérite de prendre tous les facteurs en compte.
			</div>
		</LI>
		<LI><h2 onClick="expandcontent(this, 'sc5')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			J'aimerais changer de dieu, je peux ? Tsé, ce serait RP...</h2>
			<div id="sc5" class="switchcontent">
				RP ou non, pour le moment, il ne vous est pas possible de changer ni de <a href="encyclopedie_dieux.php">dieu</a>,
				ni de <a href="encyclopedie_classes.php">classe</a>, ni de <a href="encyclopedie_races.php">race</a>, que
				ce soit par vous-même ou par une demande à l'équipe. Les choix faits à l'<a href="inscription.php">inscription</a> sont à l'heure actuelle
				définitifs. Il vous est de plus inutile de contacter un membre de l'Équipe d'Administration à cet effet. Votre personnage a toutefois la possiblité de "renaître", vous proposant ainsi de changer de race/classe/dieu, au prix de la moitié de votre expérience actuelle (vous perdrez également tous vos objets, sorts et créatures).
			</div>
		</LI>
		<LI><h2 onClick="expandcontent(this, 'sc7')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
			Comment faire pour acquérir des objets ?</h2>
			<div id="sc7" class="switchcontent">
				Deux moyens vous sont offert: La pacification et le marché central ! <br>
				Contrairement à l'exploration qui vous permet d'acquérir de nouvelles terres, la pacification vous sert à découvrir des trésors. 
				Contre une participation financière de votre part, vous envoyez vos armées en quête d'objets en tout genres. Plus vous avez une armée puissante et équilibrée, plus vous avez la possibilité de trouver des objets.
				Lorsque vous investissez dans la pacification, vous financez alors deux types de missions : mineures et majeures, les missions mineures demandent moins d'investissement et de temps de votre part, mais vous n'obtienez pas des objets d'une aussi grande qualité qu'en mission majeure. Vous pourrez également acquérir des bonus à la pacification par divers moyens, afin de faciliter vos recherches.
				
				Le second moyen consiste donc à visiter régulièrement la foire publique, le marché, et d'y trouver l'objet désiré. Il
				vous sera alors possible de l'acheter en échange de pièces d'or, selon la volonté du vendeur. Bien évidemment, ici,
				vous serez confronté à la compétition d'autres héros, eux-mêmes désireux d'obtenir l'objet en question.
			</div>
		</LI>
	</UL>
</td></tr>
</tbody></table>

<?
include("fin.php");
