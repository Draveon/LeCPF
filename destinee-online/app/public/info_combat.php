<?php session_start();

$head_title = "Informations générales";
$head_keywords = "information, règles, univers";

if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;
include ("debut.php");
if ($_SESSION['connexion'] != 1)
	include ("menu_index.php");
else
	include ("menu.php");

entete_index("Général");


echo '<table class="localtable630"><tbody>
	<tr>	<td><h2>Informations générales</h2></td>
		<td style="text-align: right; vertical-align: top; width: 50%;"><i><a href="javascript:sweeptoggle(\'contract\')">Tout cacher</a> | <a href="javascript:sweeptoggle(\'expand\')">Tout voir</a></i></td></tr>
	<tr><td colspan="2" style="text-align: left;">';
?>

<UL class="faq">
	<LI><h2	onClick="expandcontent(this, 'sc3')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
		Les inscriptions</h2>
		<div id="sc3" class="switchcontent">
			<UL type="square">
				<LI><h6 onClick="expandcontent(this, 'sc31')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Prérequis</h6>
					<div id="sc31" class="switchcontent">
						<OL>
							<LI><i>Connection</i><br>
								Une connection Internet est nécessaire, le jeu se passant entièrement via votre navigateur web. Une connection de 56k est suffisante. Le jeu est compatible avec Internet Explorer, Mozilla, Netscape et Firefox.;</LI>
							<LI><i>Résolution</i><br>
								Une résolution minimale de 1024 par 768 est conseillée, bien qu'il soit possible de jouer en 800 par 600. Une résolution supérieure ne pose aucun problème.</LI>
							<LI><i>Âge</i><br>
								Les personnes de tous âges peuvent jouer sur Destinée. Seul un minimum de maturité est nécessaire.</LI>
							<LI><i>Connaissances</i><br>
								Bien qu'aucune question ne vous soit posée à votre inscription, il est de votre devoir d'avoir d'abord pris connaissance des différents règlements ainsi que des dernières nouvelles susceptibles d'affecter votre jeu. Toutefois, afin de favoriser un Role-Play de qualité, quelques questions vous seront posées lors d'une inscription sur le serveur 3.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc32')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Restrictions</h6>
					<div id="sc32" class="switchcontent">
					<OL>
						<LI><i>Le nom de votre héros</i><br>
							<UL type="circle" class="closeto">
								<li>L'ambiance médiévale-fantastique se doit d'être conservée</li>
								<li>Ne donnez que le nom de votre héros, sans aucun titre. Seront refusés, par exemple, les Seigneur X, Roi Y...</li>
								<li>Les noms connus sont refusés, tel que Aragorn, Gilmi, Xéna, Picolo...</li>
								<li>Les noms à consonance anglaise ou japonaise sont refusés, tel que Darkness, Spirit, Lord of Destruction, Sangoku...</li>
								<li>Un nom débute par une majuscule, suivent ensuite des minuscules</li>
								<li>Limite de 25 caractères</li>
							</UL></LI>
						<LI><i>Le nom de votre royaume</i><br>
							<UL type="circle" class="closeto">
								<li> L'ambiance médiévale-fantastique se doit d'être conservée</li>
								<li>Les noms connus sont refusés, tels que Terre du Milieu, Krynn...</li>
								<li>Les noms à consonance anglaise ou japonaise sont refusés, tels que Darkness, Spirit, Land of Destruction, Akira...</li>
								<li>Un nom débute par une majuscule, suivent ensuite des minuscules</li>
								<li>Limite de 25 caractères</li>
							</UL></LI>
						<LI><i>Race / Classe / Dieu</i><br>
							Ainsi que vous le constaterez lors de votre inscription, la race limite les possibilités de classes, comme ces dernières limitent les possibilités de dieux. Ces restrictions sont voulues et souhaitables, il n'en revient donc qu'à vous de choisir le trio qui vous plait. Cela dit, ces trois choix sont obligatoires. Du coup, seront refusées toutes les inscriptions dont les champs mentionnés ci-dessus auraient été laissés vides.<br>
							<i>Pour de plus amples détails relatifs aux inscriptions, <a href="http://www.destinee-online.com/forum/viewtopic.php?t=3588">cliquez ici</a></i></li>
						<LI><i>Le Forum</i><br>
							L'inscription au forum n'est pas obligatoire, bien qu'il vous soit tout de même demandé de vous tenir informé des dernières Nouvelles qui y sont écrites. Si vous désirez vous y inscrire, ce que nous encourageons, il vous sera alors demandé de vous y inscrire sous le même nom que votre Héros afin de faciliter les communications. Pour ce qui est des discussions entre joueurs, un service de missives en jeu vous est de plus offert.</LI>
					</OL>
					</div>
				</LI>
			</UL>
		</div>
	</LI>
	
	<LI><h2 onClick="expandcontent(this, 'sc1')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
		Les combats</h2>
		<div id="sc1" class="switchcontent">
			<UL type="square">
				<LI><h6 onClick="expandcontent(this, 'sc11')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Comment puis-je combattre ?</h6>
					<div id="sc11" class="switchcontent">
						<OL>
							<LI><i>Vous attaquez</i><br>
								En sélectionnant l'option <i>combat</i> dans le menu <i>action</i>, vous serez ammené à choisir une cible puis à lancer vos troupes contre cette dernière. Cette action, purement volontaire de votre part, peut vous mener à la victoire comme à la défaite, dépendemment des troupes envoyées ainsi que de la force de votre ennemi. Lorsque vous décider par vous-même de partir au combat, vous avez le choix des troupes à envoyer ainsi que de leur nombre, tout en ayant la possibilité de rendre actif les sorts de votre choix.</LI>
							<LI><i>Vous vous faites attaquer</i><br>
								De la même manière que vous pouvez choisir d'attaquer un autre joueur, ces mêmes joueurs ont la possibilité de choisir de vous attaquer, que vous soyiez connecté ou non. De ce fait, toutes vos troupes seront impliquées dans le combat, tantant tant bien que mal de défendre vos terres. Si elles y échouent, vous risquez alors de voir partir une parcelle de vos terres ainsi que les bâtiments qui s'y trouvaient... Vous êtes dans la possibilité, également, de choisir les sorts qui prendront effet lorsqu'un autre joueur décidera de vous attaquer.</LI>
							<LI><i>Vous partez en exploration</i><br>
								Lorsque vous partez en exploration, que ce soit pour découvrir des trésors oubliés ou des parcelles de terres fertiles, vous vous exposez au risque de rencontrer diverses créatures sauvages. Ces créatures, qui ne sont contrôlées par aucun joueur, vous laisserons la possibilité de fuir ou de combattre. En cas de défaite ou de fuite, vous perdez votre investissement tout en revenant bredouille. En cas de victoire, vous remportez expérience et tout ce que vous auriez pu trouver d'autre, qu'il soit question de terres ou d'objets.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc12')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Comment se passe un combat ?</font></h6>
					<div id="sc12" class="switchcontent">
						<OL>
							<LI><i>Tour préléminaire</i><br>
								Avant tout combat s'exécute un tour préléminaire, où chacune des deux armées est invité à faire attaquer ses créatures bénéficiant d'une attaque à distance. Dans le cas où aucune des deux troupes n'en aurait, ce tour est tout simplement oublié, passant immédiatement au tour suivant. Vous êtes invité à lire la section des attaques à distance dans la partie traitant des habilités spéciales. C'est de plus au début de ce tour préliminaire que s'exécutent les différentes magies lancées par les deux héros impliqués.</LI>
							<LI><i>Ordre d'attaque</i><br>
								L'ordre d'attaque des créatures, les deux armées étant confondues, est attribué en fonction de l'initiative de chacune d'elles. Vous pourrez en savoir plus dans la section ci-dessous traitant de la statistique en question.</LI>
							<LI><i>Choix d'une cible</i><br>
								Une fois une créature sélectionnée pour attaquer, le choix de sa cible se fait de manière totalement aléatoire.</LI>
							<LI><i>L'attaque en question</i><br>
								Vient ensuite l'attaque et le calcul des dégâts, que vous trouverez plus détaillés en consultant les sections ci-dessous.</LI>
							<LI><i>Le double-attaque</i><br>
								Afin d'éviter l'envoi de créature "bouclier" ne servant qu'à gober une attaque en provenance de l'ennemi, Destinée est doté d'un système de double-attaque dans le cas où la créature attaquée mourrait. Ainsi, chaque fois qu'une créature parvient à éliminer son adversaire, la fraction de dégâts non-utilisée est reportée contre une autre créature, choisie encore une fois de manière totalement aléatoire. Cette mesure n'a pas de limite, s'appliquant jusqu'à ce qu'une attaque ne se solve pas en la mort de l'adversaire.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc13')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Quelle est l'influence des statistiques lors des combats ?</h6>
					<div id="sc13" class="switchcontent">
						<OL>
							<LI><i>L'Attaque et la Défense</i><br>
								L'attaque d'une créature vient influencer les dégâts qu'elle inflige, mais seulement après avoir été comparée à la défense de l'ennemi. L'attaque et la défense des créatures sont additionnée à l'attaque et la défense de leur héros respectif divisé par quatre. Finalement, les dégâts infligés sont multipliés par le nombre de créatures présentes.<br>
								Ainsi, après ces modifications, supposons une créature ayant 20 d'attaque faisant 10 de dégât à une autre créature ayant, elle, 5 de défense. La formule irait comme suit : ((10 de dégât)*(20 d'attaque)/(5 de défense)). Il est cependant à noter qu'un dégât ne peut être multiplié par plus que 3 suite à cette formule, tout comme il ne peut l'être par moins que 0.5. De grandes différences de niveaux entre les deux créatures peuvent cependant influer sur ces limites. </LI>
							<LI><i>L'Initiative</i><br>
								C'est afin de décider quelle est la créature qui attaque la première que l'initiative entre en jeu. L'initiative de chaque créature est alors additionnée à l'initiative du héros divisé par quatre, puis ajouté à un jet de dé allant de 1 à 20 (actualisé à chaque tour de combat). La créature bénéficiant de la plus haute initiative est donc la première à attaquer. La formule va comme suit : ((Initiative de la créature)+(Initiative du héros/4) + (Jet de dé (1 à 20)).</LI>
							<LI><i>La Puissance</i><br>
								La puissance est en fait l'une des deux seules caractéristiques que l'on retrouve exclusivement chez le héros. Outre le fait d'augmenter l'attaque des créatures de type "magique", elle sert également à augmenter le potentiel destructeur d'un sort. Ces dégâts se calculent de la même manière que les attaques entre créatures, à une exception: la puissance de la créature attaquante n'existe pas à proprement parler, elle est donc remplacée par une constante égale à 30. En d'autres mots, une rapace contrôlé par un héros n'ayant que peu d'endurance prendra plus d'une fois le dégât de base du sort (mais au maximum de 1.5 fois), tandis qu'un dragon risque fort probablement de ne prendre qu'un petit pourcentage des dégâts (mais au minimum de 10%).</LI>
							<LI><i>L'Endurance</i><br>
								L'endurance d'une créature représente sa capacité à résister aux effets d'un sort. Ainsi, lorsque les dégâts subis sont d'origine magique (sorts), l'endurance est substituée à la défense, et la puissance à l'attaque, dans la formule vue plus haut. Pour le reste, l'endurance subit les mêmes modifications que la défense.</LI>
							<LI><i>Le Charisme</i><br>
								Bien qu'ayant d'autres utilités hors combat (Modification des prix lors d'achats, des taxes, etc...). Dans le cas des constructions et du recrutement, un bas score de charisme signifie des coûts plus élevés, le contraire étant pour un charisme élevé. L'équation utilisée pour ce calcul est le suivant: ((coût de base du bâtiment ou de la créature) * 2) / ((score de charisme+20) ^ (1/5)).<br>
								De plus, un calcul similaire s'applique également aux taxes du marchés, ainsi qu'aux coûts des bâtiments et créatures en ressources.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc14')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Les différentes habilités</h6>
					<div id="sc14" class="switchcontent">
						<OL>
							<LI><i>Créature volante</i><br>
								Les créatures volantes ont la capacité d'éviter une partie des dégâts infligés par les créatures au sol; devant prendre des risques pour porter leurs propres attaques elles encaissent une certain proportion de ce qu'elles auraient dû subir. Ainsi, lorsqu'une créature de contact au sol s'attaque à une créature volante, les dégâts infligés sont divisés par une résistance de 1.25.<br>
								Il est à noter que les autres créatures volantes ainsi que les créatures attaquant à distance infligent plein dégâts sur vos créatures volantes.
							<LI><i>Attaque à distance</i><br>
								Les créatures bénéficiant d'une attaque à distance, que ce soit par leur nature magique ou encore par le biais d'arcs et de flèches, ont la particularité de faire plein dégâts aux créatures volantes, tout en ayant la chance de participer à un tour  préliminaire au début du combat, profitant ainsi d'un tour bonus sur toutes les autres créatures. Ce tour bonus s'explique par le fait que les créatures attaquant à distance ont la chance d'attaquer leur ennemi bien avant que ces derniers se rendent à eux. Il est à noter que quelques aptitudes pourront venir influer sur cette caractéristique.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc15')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Conquête / Pillage / Siège</h6>
					<div id="sc15" class="switchcontent">
						<OL>
							<LI><i>Le choix du type d'attaque</i><br>
								Lors d'un combat effectué contre un autre héros, nous vous offrons la possibilité de choisir entre trois différents types de combats. Influençant principalement sur vos gains finaux, ces diverses stratégies vous permettent de mettre le focus là où vous le désirez vraiment. Veuillez noter que, par défaut, c'est le siège qui s'active si vous ne spécifiez pas d'autre choix.</LI>
							<LI><i>Siège</i><br>
								Le siège s'applique dans l'éventualité où l'envahisseur désire mettre à feu et à sang l'intégralité du royaume ennemi. Ce faisant, non seulement il voudra lui conquérir un maximum de terre, mais aussi s'en prendre à ses bâtiments, ses richesses et ses trésors. L'envahisseur, ne pouvant tout prendre, tentera donc de trouver un juste équilibre entre les terres conquises et les richesses rapportées.</LI>
							<LI><i>Conquête</i><br>
								Le type de combat conquête représente le cas où, comme tout bon envahisseur, le héros attaquant voudra principalement s'en prendre aux terres et aux bâtiments ennemis, soit pour le couper de ses vivres essentiels, soit simplement pour affirmer sa supériorité. Dans la cas d'une victoire, le vainqueur voudra donc prendre possession d'un maximum de terres, négligeant au passage trésors et diverses richesses.</LI>
							<LI><i>Pillage</i><br>
								Le pillage se distingue par le fait que le vainqueur se concentrera sur les richesses et les trésors de l'ennemi, évitant au passage de s'embêter avec toute histoire de possession territoriale.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc16')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Quelques données techniques</h6>
					<div id="sc16" class="switchcontent">
						<OL>
							<LI><i>Maximum d'attaques</i><br>
								Le maximum de combats par période de 24h pour un héros est fixé à 5. Quelques aptitudes pourront cependant venir influer sur ce nombre.</LI>
							<LI><i>Le choix des cibles</i><br>
								Vous ne pouvez, au cours d'un même 24h, attaquer plus de deux fois un même héros. Quelques aptitudes pourront cependant venir influer sur ce nombre.</LI>
							<LI><i>Possibilités d'attaques</i><br>
								Les héros apparaissant dans votre liste des possibilités d'attaque sont fixé en fonction de votre puissance. En effet, les 20 héros vous suivant dans ce classement dont la puissance est supérieure à la vôtre, ainsi que les 10 héros vous suivant dont la puissance est inférieure, apparaîssent dans cette liste. Un héros ne peut attaquer quelqu'un dont la puissance est de plus de 85% inférieur à la sienne.</LI>
						</OL>
					</div>
				</LI>
			</UL>
		</div>
	</LI>
	<LI><h2 onClick="expandcontent(this, 'sc2')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
		La magie</h2>
		<div id="sc2" class="switchcontent">
			<UL type="square">
				<LI><h6 onClick="expandcontent(this, 'sc21')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Tours de magie</h6>
					<div id="sc21" class="switchcontent">
						<OL>
							<LI><i>Comment la construire ?</i><br>
								À l'image de tout autre bâtiment, les différentes tours de magie se contruisent en accumulant assez d'or et de terres du type de votre choix. Une fois le montant suffisant accumulé, la possibilité de construire la tour s'ajoutera dans l'onglet Magie et Technologies de votre page Constuire.<br>
								Il est à noter que votre race définit les sorts qui vous sont accessibles, et votre classe définit leur nombre. Ainsi, un magicien et un guerrier Elfes pourront choisir des sorts du même groupe mais le magicien pourra en choisir bien plus. Chaque classe dispose d'ailleurs d'un sort spécial, de niveau 3, 4 ou 5, en fonction de son nombre total de sorts.<br>
								Il faut avoir être d'un certain niveau pour construire les tours de magie:
								<UL type="circle" class="closeto">
									<li>Niveau 1 pour la première tour de magie</li>
									<li>Niveau 3 pour la seconde tour de magie</li>
									<li>Niveau 6 pour la troisième tour de magie</li>
									<li>Niveau 10 pour la quatrième tour de magie</li>
									<li>Niveau 15 pour la cinquième tour de magie</li>
								</UL>
								Il est possible de construire une tour de magie de niveau 4 même si votre classe n’a pas de sorts à ce niveau. Cela aura simplement pour effet d’augmenter votre réserve de mana.</LI>
							<LI><i>Attribution des sorts</i><br>
								Lorsque vous construisez votre tour de magie, celle-ci vous octroie automatiquement un certain nombre de sorts pigés aléatoirement dans la liste. Le nombre de sorts octroyés est fonction de votre classe ainsi que du niveau de la tour construite.<br>
								Ainsi, une tour de niveau 1 donnera davantage de sorts qu'une tour de niveau 5. Moyennant finances, vous pouvez à tout moment choisir de reconstruire votre tour de magie pour accéder à de nouveaux sorts ou même de sélectionner vous-mêmes les sorts que vous désirez. Cette dernière démarche est évidemment la plus coûteuse.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc22')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Créatures magiques</h6>
					<div id="sc22" class="switchcontent">
						<OL>
							<LI><i>Qui sont-elles ?</i><br>
								Les créatures magiques sont les créatures dont le type est identifié comme tel, leur faisant du coup profiter de la puissance et de l'endurance de leur héros plutôt que de la force et de la défense de ce dernier. Ce type de créatures, dont font partie les méphites et les chimères par exemple, sont donc très profitables pour les classes davantage axées sur la magie. En ce qui concerne les classes guerrières, ces créatures leurs sont tout autant accessibles, mais aux mêmes conditions qu'aux classes magiques. C’est à dire que les créatures bénéficieront tant bien que mal de la puissance et de l’endurance du héros. L'(endurance/4) et la (puissance/4) du héros sont donc ajoutés à la défense et l'attaque des créatures magiques.<br>
								De plus, lorsqu'une créature magique attaque une créature, son attaque (augmentée par la puissance du héros) s'oppose à l'endurance de la créature adverse, et non à sa défense. La défense d'une créature magique, augmentée par l'endurance du héros, est toutefois utilisée lorsqu'une créature non-magique l'attaque.</LI>
							<LI><i>Pourquoi de telles créatures ?</i><br>
								Les créatures magiques viennent donner un petit coup de pouce aux héros axés sur la magie, leur permettant ainsi de bénéficier de quelques rares créatures puissantes. Ces créatures sont cependant peu nombreuses et souvent coûteuses, gardant ainsi un bon équilibre entre les classes.</LI>
						</OL>
					</div>
				</LI>
				<LI><h6 onClick="expandcontent(this, 'sc23')" style="cursor:hand; cursor:pointer"><span class="showstate"></span>
					Les éléments</h6>
					<div id="sc23" class="switchcontent">
						<OL>
							<LI><i>Les quoi... ?</i><br>
								Les éléments servent à regrouper certains sorts en une même catégorie, nous permettant ainsi de parler des sorts dit de feu, des sorts d'eau, d'électricité, d'air ou de terre. Ce faisant, cela nous offre la possibilité de venir imposer quelques variables sur les différents groupes de sorts, augmentant tantôt la puissance des sorts de feu, diminuant en d'autre temps, par exemple, celle des sorts de terre.</LI>
							<LI><i>Feu, Eau, Terre, Air, Électricité</i><br>
								Les cinqs éléments ci-dessus permettent de regrouper l'entièreté des sorts existant. Qui plus est, chaque race possède ses propres avantages et faiblesses face à tel ou tel élément, rendant plus profitables certains groupes de sorts face à d'autres qui, au contraire, deviennent pratiquement impensables à incanter. Au départ, chaque héros possède un taux de puissance de 100% pour chaque élément, ce qui ne modifie en rien les effets des sorts, multipliant par 1.0 toutes les variables. Cela dit, plusieurs objets ou bâtiments peuvent influer sur ces taux de puissance, en faisant monter certains au-delà du 150% tout en en faisant descendre d'autres...</LI>
						</OL>
					</div>
				</LI>
			</UL>
		</div>
	</LI>
</UL>

</tr></td></tbody></table>
<?php
include("fin.php");
?>