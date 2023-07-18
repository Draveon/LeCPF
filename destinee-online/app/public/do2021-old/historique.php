<?php session_start();

$texte = (isset($_GET['texte'])) ? $_GET['texte'] : 1;
switch ($texte)
{
	case '1' : $head_title = 'Les chroniques de Kalamaï';	$head_keywords = 'chroniques, historique, age d\'or';	break;
	case '2' : $head_title = 'Témoignages de Nilmarel';	$head_keywords = 'cosmologie, dieux, ame';	break;
	case '3' : $head_title = 'Les héros de Kalamaï';	$head_keywords = 'heros, personnage, personnages';	break;
	case '4' : $head_title = 'Les provinces';		$head_keywords = 'province, heros, palatin, seigneur';	break;
	case '5' : $head_title = 'Lexique';			$head_keywords = 'lexique, destinee, kalamai';		break;
	case '6' : $head_title = 'La carte du monde';		$head_keywords = 'carte, plan, monde, univers';		break;
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

entete_index("Historique");

echo '<table class="localtable630"><tbody>
<tr>
	<td style="text-align: center;">
	~
	<a href="historique.php?texte=1">Historique</a> |
	<a href="historique.php?texte=2">Témoignages</a> |
	<a href="historique.php?texte=3">Personnages</a> |
	<a href="historique.php?texte=4">Provinces</a> |
	<a href="historique.php?texte=5">Lexique</a> |
	<a href="historique.php?texte=6">Cartes de Kalamaï</a> ~';

if ($texte == 1)
{
	echo '<br><br><h5>Les chroniques de Kalamaï (résumé)</h5><br>&nbsp;';
	echo changement("Chapitre premier : l'Eudermon");
	echo '	<div class="longtexte">On connaît peu de chose sur la civilisation qui précéda l\'arrivée de la nation naine. Il semblerait que <a href="encyclopedie_races.php">la race</a> connue aujourd\'hui sous le nom des Anciens ait été dominante durant plusieurs millénaires avant la première collision. Les vestiges de leur empire forme aujourd\'hui Halicarnasse, la capitale de Scitopole.</div>
		<div class="longtexte">Du peu qu\'on ait pu déchiffrer des hiéroglyphes présents sur les monuments historiques qui s\'y trouvent, les dieux Hassar, Kereb et Nucter étaient déjà des divinités très importantes. Des témoignages d\'anciens et les documents laissés par Zabulon portent à croire que déjà à cette époque, le panthéon était aussi développé que celui que l\'on connaît aujourd\'hui.</div>
		<div class="longtexte">D\'immenses tombeaux sacrificiels ont été retrouvés près des frontière de Scitopole et un peu au delà du fleuve Méthène. Il est possible de croire que ces sacrifices eurent lieu afin d\'apaiser les dieux et d\'empêcher de déstabiliser l\'équilibre cosmique. Bien que cela sembla fonctionner durant de longues années, l\'inévitable arriva et la première collision eut lieu. On l\'appela Élée.<br></div>';
	echo changement("Chapitre deuxième : l'Âge d'Ébène");
	echo '	<div class="longtexte">Après quelques millénaires de paix et de relative prospérité, l\'Eudermon se voit confronter à sa première véritable menace. Les deux premières collisions planaires eurent lieux : d\'abord Élée, qui fit débarquer les nains, les minotaures et les gnomes, puis Narsé, qui emmena les orques, les hommes et les elfes. Bien que les deux collisions arrivèrent environ à la même date, elles n\'eurent pas lieu à la même place. Les nains arrivèrent tout près de la civilisation des anciens, et après avoir mis en déroute leurs ennemis naturels qui les avaient suivi lors de l\'Élée, ils conquirent sans trop de difficultés les frontières eudermones. Ses occupants furent repoussés dans les bois, et durant de longues années furent oubliés.</div>
		<div class="longtexte">Les nains furent la première civilisation ayant une connaissance architecturale et guerrière avancées. Ce sont eux qui construisirent le gros de l\'Empire appelé aujourd\'hui Kalamai.</div>
		<div class="longtexte">Quant à Narsé, il fallut attendre mille ans avant d\'en voir les conséquences. Ce que l\'Histoire nous appris, c\'est que lorsque les Tribus de Béroée débarquèrent, les hommes étaient leurs esclaves et les elfes leurs proies. Divisés en clans nomades mais apparemment unis sous une même bannière, celle de Moab qui chevauche les boucs, le jour vint où les frontières de leur territoire touchèrent celle des nains.</div>
		<div class="longtexte">Durant quelques années, les deux empires échangèrent quelques morts, mais sans que le conflit ne dégénère vraiment. Mais hélas, ce qui devait arriver arriva et Moab lança ses troupes à l\'assaut des forteresses naines. Ce fut le début de la Guerre des Quatre.</div>
		<div class="longtexte">Durant les batailles, se sont surtout les esclaves humains qui vinrent s\'échoir sur les palissades de pierre ; d\'autres furent fait prisonniers. Mais le surnombre finit bientôt par venir à bout des villes et des murailles, et les nains se virentent dans l\'obligation de marcher sur leur orgueil et d\'aller demander conseil à ceux qu\'ils avaient jadis combattu. Les nains savaient en effet que les anciens avaient repoussé les géants des montagnes et des plaines durant les guerres territoriales primaires. Mais ceux qui depuis longtemps avaient été oubliés aux creux des forêts décidèrent de ne pas parler et de laisser à leur sort ceux qui allaient bientôt tomber.</div>
		<div class="longtexte">De longues années noires suivirent et bientôt, les nains n\'eurent plus que leur capitale pour se réfugier. Durant ces heures désespérées, l\'un des prisonniers humains attira leur attention, un dénommé Zabulon. Celui-ci se disait capable de convaincre les anciens à révéler leurs secrets. Désespérés, les généraux nains le laissèrent partir. Et Zabulon revint avec les anciens. Le prodige fut ensuite envoyé chez les elfes, afin qu\'il répète l\'exploit. Il les convint d\'ouvrir un deuxième front sur les troupes de Moab. Certains ne voulurent pas s\'y risquer et préférèrent s\'exiler en de sombres contrées - ils devinrent plus tard les elfes noirs -, mais la plupart alla se battre, et ce fut le début de la fin pour les tribus nomades.</div>
		<div class="longtexte">Après avoir rempli ses missions diplomatiques et avoir reçu les honneurs chez les nains, Zabulon revint chez les orques pour tenter d\'aider les prisonniers humains à se libérer. Il ne se rendit jamais à leur campement, les orques l\'ayant intercepté en chemin. Les légendes racontent que de son cadavre émergea le Colosse de pierre Kozane, qui anéantit les assassins et disparu ensuite. La mort de Zabulon provoqua la rébellion des Hommes, menée par un certain Manassé. C\'est ce front intérieur qui a finalement repoussé les orques et a mis fin à la Guerre des Quatre, aidé par les anciens, les nains et les elfes. Les Hommes prirent ensuite les commandes de l\'Empire, qu\'ils nommèrent Kalamai. Le Colosse était leur dieu, et Manassé leur Empereur.</div>
		<div class="longtexte">À cette époque, les anciens avertirent Kalamai de son erreur dans ses croyances, mais ils ne furent pas écoutés.<br></div>';
	echo changement("Chapitre troisième : l'Âge de Conversion");
	echo '	<div class="longtexte">Quelques siècles plus tard, alors que l\'Empire avait grandit fort et prospère par ses alliances et son ardeur, la découverte d\'écrits laissés par Zabulon, dans lesquels il fait la traduction des hiéroglyphes qui ornaient les murs de la prison dans laquelle il avait été enfermée, vint bouleverser la stabilité établie. Ceux-ci parlaient de dieux multiples se faisant la guerre pour une terre promise qui avaient été brisée : Destinée. Ces écriteaux dataient des cités eudermones et bien que les anciens avaient tenté de leur expliquer par le passé, ce fut Zabulon qui encore une fois amena le changement chez les hommes. Kozane fut abandonné et la religion polythéiste eudermone devint la seule permise.<br><br>
		<div class="longtexte">En réaction à la conversion de Kalamai, une coalition fut formée entre les elfes noirs, les minautores, les orques et les géants pour tenter de faire tomber l\'Empire. C\'est d\'ailleurs lors de la sortie des géants que pour la première fois, des fées furent aperçues par nains et les hommes, chassées par leur ennemi de toujours. Elles ne parvinrent jamais à atteindre les murs de Kalamai derrière lesquels elles venaient chercher refuge. Malgré tout, leur élimination quasi complète ne fut pas en vain, car elles poussèrent des êtres venus d\'ailleurs à venir intervenir dans ce conflit. Disant venir d\'un autre plan, les célestiaux firent leur apparition.<br><br>
		<div class="longtexte">Voyant l\'arrivée de cet adversaire inconnu et en apparence puissant, l\'Alliance de l\'Est cessa les hostilités et demanda à ce qu\'un traité de paix soit signé entre les belligérants. Des conditions furent établies et acceptées, et l\'Empire de Kalamai s\'agrandit en nombre et en force. Il abritait désormais toutes les races des terres connues.<br></div>';
	echo changement("Chapitre quatrième : l'Âge d'Or");
	echo '	<div class="longtexte">Cette époque fut longue et riche, l\'Empire profitant des avantages et des connaissances de chacun pour faire grandir sa puissance. Évidemment, certains accrochages eurent lieu entre quelques unes des provinces, sans que jamais cela ne s\'aggrave.<br><br>
		<div class="longtexte">Afin qu\'un calme relatif puisse s\'installer, l\'Empereur Soleil - c\'est le nom qu\'on donna à l\'Empereur Siméon, qui régna durant les années les plus marquantes de l\'Âge d\'or - divisa Kalamai en onze provinces, toutes dirigées par un Palatin et une hiérarchie bien établie. Bien que chaque province était fédérée, donc vaguement indépendante, des lois universelles furent imposées à toutes afin qu\'une union puisse exister.<br><br>
		<div class="longtexte">C\'est aussi à cette époque que les premières théories concernant Destinée furent écrites. Selon les prêtres qui s\'y intéressèrent, Destinée était la terre des dieux, que l\'instabilité cosmique avait divisée en plusieurs parcelles. Selon ces théories, les dieux étaient à la recherche de ces différents îlots afin de reformer Destinée et d\'y réinstaller leur royaume.<br></div>';
	echo changement("Chapitre cinquième : l'Âge de Bronze");
	echo '	<div class="longtexte">L\'Âge d\'or prit fin avec l\'avènement de Claée, la troisième Collision, la première qu\'a actuellement connu Kalamai. Claée fit débarquer sur l\'Empire les grandes familles vampires ainsi que les conglomérats infernaux. Ceux-ci ne furent découverts que plus tard, lors des explorations de Bethul le Boiteux.</div>
		<div class="longtexte">Les vampires durent rapidement se rendre à l\'évidence qu\'ils n\'arriveraient pas à démolir un empire millénaire à eux seuls et ils se laissèrent assimiler par l\'Empire. Ils allèrent donc, sous le couvert de l\'anonymat, habiter la province d\'Édhesse et cela ne leur prit qu\'une vingtaine d\'années avant que Beth-Aran devienne le premier Palatin vampire de Kalamai.</div>
		<div class="longtexte">Quant aux infernaux, ils s\'établirent vraisemblablement dans les montagnes au sud de l\'Empire. Ils profitèrent de l\'ignorance des hommes pour se renforcer et finalement ouvrir le conflit qui allait devenir la Guerre de Bronze.</div>
		<div class="longtexte">Lors de leur sortie, l\'Empereur Harosheth ne sut pas comment réagir et comme ses prédécesseurs l\'avaient fait pour les orques, il offrit à Réhoboth de se joindre à Kalamai et fonder la douzième province, l\'Argostole. Le démon accepta et alors que tous commençaient à respirer un peu mieux, il lança le Catégorien contre Scitopole et le gros de l\'armée impériale. Cette attaque réveilla les instincts endormis des anciens ennemis des nations supportant l\'Empire, causant un climat d\'instabilité politique qui a véritablement poussé le début de la guerre actuelle.</div>
		<div class="longtexte">Il y a aujourd\'hui cinq ans que les premiers assauts ont été lancés par l\'Argostole. Plusieurs alliances se sont créées, certaines plus solides que d\'autres. Malgré le temps qui passe et les morts qu\'on oublie, ni les ennemis de l\'Empire, ni les fidèles d\'Harosheth ne semblent prendre le dessus.<br></div>';
	echo '	<div style="text-align: right; padding-right: 30px; padding-top: 8px;">Je prie Folaniss pour que Kalamai survive.<br>
		<i>Bethul Horma, d\'Anaphe</i></div>';
	echo changement("Chapitre sixième: l'Âge Sombre");
	echo '	<div class="longtexte">Les hérauts parcoururent Kalamai lorsque la nouvelle fut officielle. Il ne fallut que peu de temps aux peuples des contrées les plus lointaines pour être au courant: l\'Empereur Harosheth était mort dans la nuit, succombant aux blessures reçues lors d\'un des innombrables assauts menés contre le Catégorien, marquant la fin de l\'âge de Bronze. A cette nouvelle, l\'Empire fut comme foudroyé. Nombre de gens étaient anéantis, comme tétanisés par une si terrible nouvelle et persuadés que l\'Argostole allait bientôt profiter de son avantage pour s\'emparer de Kalamaï. Les autres, pris de frénésie se mirent à chercher à accéder au pouvoir, déclanchant de nouveaux conflits. Mais contre toute attente le Catégorien ne fit rien et resta à l\'écart de cette guerre de succession, sans que personne ne sut ce qu\'ils tramaient jusqu\'à ce qu\'il soit trop tard.</div>
		<div class="longtexte">Les Palatins, fort du soutien de leurs Province intervinrent alors auprès de la famille Impériale pour imposer leur avis sur le successeur. Les palabres durèrent une éternité durant laquelle Kalamai se transforma à nouveau en champ de bataille. Finalement, une solution politique fut proposée et acceptée par tous : la nièce de l\'Empereur Harosheth, Evalia, fut nommée pour le remplacer. Cette solution semblait convenir à chacun.</div>
		<div class="longtexte">Le peuple fut soulagé de ce signe, et la fougue des Seigneurs guerriers se calma. Pourtant, l\'accalmie fut de courte durée. Des rumeurs couraient sur le fait qu\'Evalia serait une adepte du Catégorien. Ces rumeurs ne furent pas démenties par le fait que les seigneurs qui prônaient la lutte contre les démons furent décimés par un groupe d\'étranges hommes en noir.</div>
		<div class="longtexte">Les choses allèrent de mal en pis, jusqu\'au jour où Evalia épousa un Seigneur venu d\'Edhesse, marquant ainsi clairement son appartenance. Elle décida alors de prendre les rennes du cadeau laissé par son oncle.</div>
		<div class="longtexte">Mais l\'empire était fragilisé et, au cours de ce conflit, les palatins et leurs provinces gagnèrent en importance. Certaines s\'érigèrent clairement contre la nouvelle impératrice. On ne faisait dorènavant plus partie de l\'empire, mais d\'une province. Une nouvelle hiérarchie fut mise en place, guidant les âmes égarée. Les ténèbres avançaient un peu plus sur kalamai, tandis que les justes combattaient ces ténèbres grandissantes. L\'avenir des uns et des autres devint bien vite incertain.<br>&nbsp;</div>
		
		<div class="longtexte">Ainsi commença l\'époque que les hommes appelèrent l\'Âge Sombre.<br>&nbsp;</div>
		
		<div class="longtexte">Les premières années du règne d\'Évalia s\'étaient vues secouées par le soulèvement d\'une troupe de traîtres nommés les Rebelles Noirs. Ceux-ci s\'étaient dressés contre l\'Empire et avaient levé d\'importantes armées de créatures encore inconnues. On avait murmuré qu\'ils avaient été aidés par un empire situé par delà les mers, mais aucune preuve ne put être apportée.</div>
		<div class="longtexte">De nombreux Seigneurs répondirent à l\'appel impérial et livrèrent bataille aux Rebelles. Parmi eux, un humain se distingua, son nom était Dante. Ce héros fut dès lors reconnu par tous comme "Le Tueur de Rebelles". D\'autres héros furent aussi reconnus pour leur courage, ils s\'appelaient Axilias, Ellena, Samoth, Polokyor ou Trakyr... Mais les batailles ponctuelles ne suffisaient pas et l\'Impératrice demanda aux armadas de passer à l\'attaque. Sept chefs répondirent à son appel, et grâce à eux et leurs subordonnés les rebelles durent prendre la fuite. L\'Impératrice récompensa alors les meilleures Armadas en leur offrant des terres en abondances et une partie des richesses reprises aux Rebelles Noirs. L`Ordre de l`Ombre s\'étant montré l\'armada la plus combative reçut le titre d\'armada impériale et son chef reçut le droit de siéger à la cour. Les Chevaliers Divins et Les Sentinelles de Prévèze reçurent aussi de généreux cadeaux.</div>
		<div class="longtexte">Après la fin de cette guerre, on pensait que le calme était revenu, mais tout le monde se trompait. Les seigneurs d\'Outre-Mer, fâchés que la révolte de leurs alliés n\'ait pas porté ses fruits attaquèrent Kalamai avec fureur. Leurs armées plus nombreuses et plus entraînées que celles de l\'empire détruisirent en quelques semaines l\'intégralité des défenses. Ils pillèrent les richesses, détruisirent les bâtiments et tuèrent ceux qui s\'opposaient à eux. L\'Impératrice fut emprisonnée, une bonne partie de ses conseillers ainsi que les Palatins tués et ceux qui ne voulaient pas s\'incliner durent fuir.</div>
		<div class="longtexte">Bien que les meilleurs guerriers soient rapidement rentrés chez eux, la domination des seigneurs d\'Outre-Mer dura quatre ans durant lesquels les troupes restées en Kalamai saignèrent les terres et les paysans à blanc. Finalement, ce fut une révolte organisée en sous-main par un groupe se définissant comme les "Protecteurs Impériaux" qui y mit fin. Le groupe de combattants libéra l\'Impératrice par un coup d\'éclat et la remit sur son trône. Et dès ce moment-là, les terres furent rapidement nettoyées des anciens ennemis.</div>
		<div class="longtexte">L\'Empire, bien que libre, était ruiné. Il fallait tout reconstruire. L\'Impératrice distribua les terres vacantes aux Seigneurs qui avaient combattu pour elle. Elle nomma de nouveaux Palatins issus de sa Cour en attendant que les seigneurs des Provinces soient assez forts pour s\'organiser. Puis, elle réunit un grand conseil.</div>
		<div class="longtexte">De ce conseil, appelé le "Conseil des Cendres", on parla tout d\'abord des restructurations qui allaient être menées afin que les guildes de métiers puissent aider à faire prospérer l\'économie. On parla du futur des provinces, car la légitimité des Palatins faisait défaut, et l\'Impératrice promit d\'y remédier en temps voulu. On apprit aussi que les Rebelles Noirs, bien que ruinés eux aussi, n\'avaient pas disparus, car quelqu\'un les avait aidés et couverts. L\'Impératrice désirait qu\'on menât une action contre eux. Un général fut donc nommé pour créer un groupe de héros pour accomplir cette délicate tâche.</div>
		<br>
		<div class="longtexte">La province d\'Edhesse demanda son Indépendance par rapport à l\'Empire. L\'Impératrice Évalia refusa. Le Palatin Iraerakryn Orly`Urden déclara alors la guerre à l\'Armée Impériale et aux Protecteurs Impériaux. L\'Ordre de l\'Ombre et le Tribal Obscur furent aidés par d\'autres armadas comme la Cohorte Abyssale et l\'Ombre Chaotique. De son côté la Garde Céleste de Brasamical menait le même combat pour la libération de Scitopole. L\'avantage qui était au début pour le Protectorat Impérial commença à changer de côté. Le Protectorat Impérial commençait à prendre défaite sur défaite lorsque la Flotte Impérial découvrit des vaisseaux au pavillon de l\'Outre-Mer. L\'Impératrice demanda aux habitants de Kalamaï de cesser les guerres intestines et de se préparer à la défense de la nation. On découvrit neuf Pentacles de Destruction installé en secret par des collaborateurs Ennemis. D\'aprés des mages de la Guilde du Mana, ils avaient la capacité de détruire toute vie sur Kalamaï. Ils furent donc neutralisé et détruits. On apprit que pendant ce temps les Seigneurs d\'Outre-Mer avaient débarqué en Argostole. L\'armada la Confrérie des Saigneurs qui s\'y trouvait fut écrasée et son chef Adalemos, emprisonné. Le Protectorat Impérial mena une Croisade vers l\'Argostole pour reconquérir l\'île. Le Général Asturiel dévoila les plans réels de l\'Impératrice: détruire l\'Argostole, les civils y compris. Enguerrand IV d\'Exalon, Chef du Conseil du Protectorat Impérial tua le Général Asturiel en le faisant passer pour un accident. La bataille fut un carnage. Les Seigneurs du Protectorat Impérial durent s\'enfuir, laissant leurs troupes périrent. Les troupes d\'Outre-Mer débarquèrent ensuite en Amphise et en Igoumen. L\'Amphise prit de court se mit à s\'organiser et arrêta la progression de l\'Ennemi. Ce ne fut point le cas pour l\'Igoumen qui fut presque entièrement conquise avant qu\'un héro permit la reprise des terres perdues. Il se nommait Oraganza Feld. Amphise, menée par son Palatin, Oengus fut rétablit en intégralité et une deuxième Croisade partie pour l\'Argostole.</div>
		<div class="longtexte">Au même moment de sombre chose se passait dans le Palais du Protectorat Impérial. Cette organisation qui avait autrefois permit à Kalamaï d\'être délivrée, souhaitait désormais se débarrasser de l\'Impératrice Évalia. Un voleur de l\'outre-Mer avait tenté de voler un livre contenant un sort de destruction trés puissant au sein même de la Guilde du Mana. Enguerrand comprit que la cible serait surement la Capitale Impériale. Il fit donc évacuer, dans le plus grand des secrets, la famille Impériale. Par l\'intermédiraire au soutien de la Guilde de l\'Ombre et de la Confrérie des Saigneurs, Enguerrand d\'Exalon assassina l\'Impératrice, son mari et la Conseillère Zadora Zenty.</div>
		<div class="longtexte">Alors que l\'Argostole était presque reconquise par les troupes de la 2e Croisade, Enguerrand fut intrônisé et son mariage avec Auréa fut célébrer par le frère de Enguerrand: le Grand Prêtre Tanguy de Nothaume.</div>
		<br>
		<div class="longtexte">Les pertes étaient grandes mais cette fois, dans tout l\'Empire, des troupes se rejoignirent en Zakinthe pour remplir de nouveaux bateaux conçus pour l\'occasion. Toutes les flotilles impériales partirent en direction de l\'Empire d\'Outre-Mer. Des centaines de milliers d\'hommes naviguaient en attendant d\'en finir avec l\'Outre-Mer. L\'Empereur Enguerrand savait que si la défaite venait à se présenter, l\'Empire de Kalamaï ne parviendrait jamais à s\'en relever. Il fallait tenter le tout pour le tout. Si Kalamaï ne faisait rien, l\'Outre-Mer reviendrait. De nombreux voyaient le jour depuis le début du conflit. Certains seigneurs concentraient toutes leurs énergies sur la victoire.</div>
		<div class="longtexte">Pendant plus de cinq mois, l\'invasion de l\'Empire d\'Outre-Mer se réalisa avec quelques difficultés. Les Seigneurs d\'Outre-Mer, dont certains étaient morts ou capturés, ne purent apréhender la situation à leur avantage. Sur les terres impériales, les survivants de l\'Armée de l\'Outre-Mer s\'étaient regroupés et commençaient à attaquer les populations civiles. Il furent petit à petit éliminés mais ils avaient malheureusement causé d\'énormes dégâts. Le manque d\'homme, tous partis à la guerre, entraîna des famines dans certaines régions.</div>
		<div class="longtexte">L\'Outre-Mer fut vaincu et le Roi Taleonor mourut étranglé, agenouillé de force en face de l\'Empereur de Kalamaï. Les pertes étaient extrémement importantes mais l\'Outre-Mer faisait désormais partie intégrante de l\'Empire. Ceux qui se démarquèrent le plus dans cette guerre furent la Dame Lifnirgae, le Seigneur Oraganza Feld et la Dame Arianthe de Bise.</div>
		<div class="longtexte">L\'on peut aussi noter qu\'une communauté de Célestiaux ont pris pied en Zakinthe puisque c\'est de là que partaient les bateaux pour l\'Outre-Mer.</div>';
}
if ($texte == 2)
{
	echo '<br><br><h5>Témoignages de Nilmarel, Archimage Impérial et Elu de Nimburr</h5><br>&nbsp;';
	echo changement("Cosmologie");
	echo '	<div class="longtexte">Longtemps, les lois du cosmos ne furent connues que des dieux. Les humbles mortels s\'abimaient dans des théories toutes aussi abstraites qu\'invérifiables.</div>
		<div class="longtexte">Or ce jour, Nimburr prit pitié de notre insondable ignorance et me révéla, à moi qui toujours lui prête oreille, les quelques vérités fondamentales qui régissent, sans que nous y prenions garde, notre existence au quotidien. Me faisant là encore héraut de Nimburr, je vais tenter de transmettre ces révélations. J\'ose espérer, au vu de mon rang et de ma notoriété, qu\'aucun ne contestera la véracité de mes mots.</div>
		<div class="longtexte">L\'univers, vaste étendue sans frontières aucunes, est constitué de ce que les dieux appelèrent dans leur langue aux accords parfaits le "néant mystique". Autrement dit d\'un mana à l\'état brut et à la puissance infinie. Les dieux eux-mêmes naquirent de ce magma originel, consciences pures se mouvant dans un chaos impropre à toute existence. Et pour continuer à vivre, il leur fallait créer, sous peine de s\'abîmer dans le chaos dont ils avaient émergé.</div>
		<div class="longtexte">Ils créèrent donc, mais cela n\'alla pas sans maintes difficultés, sur lesquelles nous ne nous étendrons guère. Car tout ce qui est doit redevenir néant. Et, dans ces temps primordiaux, rien de ce qui était ne fut épargné par la force destructrice du néant mystique.</div>
		<div class="longtexte">La puissance des dieux croissait à l\'instar de leur soif d\'échapper au dictat néantique. Plus ils créaient et moins l\'emprise du néant se faisait sentir. Liant leur âme à leur dernière tentative, ils parvinrent ainsi à maintenir une bulle qui résistait aux assauts du néant mystique.<br>&nbsp;</div>
		
		<div class="longtexte">A l\'intérieur de cette bulle, les dieux innombrables alors purent enfin créer leur royaume. Au centre de la sphère se trouvait le soleil, apportant la lumière où il n\'y avait eu que ténèbres. Puis sur les parois de cette bulle protectrice furent déversées les mers sur lesquelles flottèrent bientôt les continents. Et parmi eux, Kalamaï qui abrita la race connue aujourd\'hui sous le nom des anciens mais que les dieux appelèrent Sderoth. Enfin les dieux se construisirent leur propre terre idyllique: Destinée. Et jamais l\'on ne vit royaume plus glorieux et prolifique en beautés et en arts. En ces temps, les démiurges se partagèrent les pouvoirs et les domaines d\'influences et la paix régna.</div>
		<div class="longtexte">Toutefois on le sait, l\'utopie finit inévitablement par cesser et des conflits éclatèrent entre les divinités qui menèrent à une guerre ouverte et massive. Comme peut l\'imaginer le lecteur attentif qui se souvient que c\'est du sage Nimburr en personne que je détiens mon savoir, ce dernier ne s\'est guère étendu sur les raisons précises et les péripéties de ce divin affrontement. La douleur de la perte n\'épargne pas même les dieux. L\'on sait toutefois que de nombreux dieux périrent.</div>
		<div class="longtexte">Toujours est-il que des suites des forces qui furent là déchaînées, la terre se craquela et le royaume de Destinée disparut dans une explosion apocalyptique. Plus grave encore, la bulle qui protégeait l\'œuvre divine fut percée et des trombes de néant mystique se répandirent sur ce qui fut la terre promise des dieux. Les divinités survivantes, leur querelle soudain oubliée, se précipitèrent pour colmater la faille et parvinrent non sans mal et souffrance à réparer la sphère de leur pouvoir vacillant.</div>
		<div class="longtexte">Malheureusement, affaiblis et désormais peu nombreux, les seize dieux restants ne purent rebâtir Destinée à l\'emplacement de laquelle il n\'y a plus aujourd\'hui qu\'un vide ou rôde une magie sauvage héritière du néant mystique qui pénétra jadis dans le domaine des dieux.<br>&nbsp;</div>
		
		<div class="longtexte">C\'est alors qu\'advinrent Elée et Narsée, les deux collisions planaires qui amenèrent de nombreuses races sur Kalamaï. Et ces collisions ne sont pas arrivées par hasard mais bien des suites de notre histoire. Car à présent qu\'une brèche s\'est formée là où jadis se tenait Destinée et que cette brèche n\'est qu\'imparfaitement maîtrisée, des éruptions de néant mystique se produisent et viennent altérer le cour de la réalité. Jusqu\'à présent ces collisions, au nombre de trois, n\'ont pas eu d\'effets par trop négatifs mais hors de contrôle des dieux, qui sait ce que nous réserve la prochaine éruption...</div>';
	echo '	<div style="text-align: right; padding-right: 30px; padding-top: 8px;"><i>Nilmarel, Archimage Impérial et Elu de Nimburr</i><br>
		<u>Extraits des Entretiens Cosmologiques de Nimburr</u></div>';
	echo changement("Séluée, quatrième collision planaire");		
	echo ' <div class="longtexte">Et pour la quatrième fois depuis que le monde est monde, la trame du temps fut déchirée et toute chose en fut bouleversée. On l\'appela Séluée, la seconde collision planaire que connut à ce jour le vaste et glorieux empire de Kalamaï.</div>
		<div class="longtexte">Une fois encore le Néant Mystique enveloppant la sphère terrestre toucha notre monde, et cette fois-ci altéra directement les créatures pensantes.</div>
		<div class="longtexte">D\'abord il n\'y eut rien. Rien d\'autre qu\'une brume pourpre partout présente. Puis ils sentirent leur nouvelle puissance, comme si elle avait toujours était en eux. Ces Héros Néantistes comme nous les nommèrent.</div>
		<div class="longtexte">Ils tirèrent leur force directement du mana originel qui avait envahi nos plaines et elle était considérable. Leurs capacités n\'étaient rien de moins que celles d\'altérer leur environnement ainsi que des pans entiers de la réalité proche. A l\'instar d\'ailleurs de la manière dont agissait le Néant Mystique lui-même.</div>
		<div class="longtexte">Immédiatement, des armées se levèrent autour de ces héros, et ces derniers les faisaient se déplacer d\'un point en un autre des terres sans limite de temps ou d\'espace. Rapidement l\'empire de Kalamaï fut ravagé par des guerres invraisemblables ou des royaumes naissaient et disparaissaient, ou des armées se formaient et sombraient, le tout en l\'espace de quelques battements de cils, abolissant tout espoir d\'une vie normale.<br>&nbsp;</div>
		
		<div class="longtexte">Finalement, alors que les races pensantes de Kalamaï étaient sur le point de s\'autodétruire sous les effets de leur propre puissance nouvellement acquise, les dieux eux-même intervinrent et unanimement rétablirent l\'ordre au sein de leur création.<br>&nbsp;</div>
		
		<div class="longtexte">Les héros néantistes les plus virulents furent abattus et les dieux rassemblèrent ceux qui pouvaient être raisonnés afin de fixer les règles qui devaient régir l\'utilisation de cette nouvelle magie.</div>
		<div class="longtexte">Dorénavant il serait interdit à quiconque d\'utiliser ce pouvoir comme arme directe pour supprimer un autre être vivant. De plus il fut établi que si la magie devait être utilisée pour attaquer un autre royaume, les deux royaumes en conflits devaient se trouver d\'égale puissance, et ce dans le but d\'éviter que des nations soient détruites aussi facilement que ce que l\'on pu observer les mois suivants la collision planaire.<br>&nbsp;</div>
		
		<div class="longtexte">Une fois ces quelques édits prononcés et la fragilité de l\'ordre rétablie, les dieux se retirèrent et renvoyèrent les héros néantistes chez eux.</div>
		<div class="longtexte">Malgré les restrictions divines, la magie du néant restait un outil formidable sur le plan de la stratégie militaire et les néantistes formèrent bientôt une caste dirigeante sur Kalamaï dont les pouvoirs se transmettaient de génération en génération.</div>';
	echo '	<div style="text-align: right; padding-right: 30px; padding-top: 8px;"><i>Nilmarel, Archimage Impérial et Elu de Nimburr</i><br>
		<u>De la venue de Séluée et de ses conséquences</u></div>';
	echo changement("L'Âme");	
	echo ' <div class="longtexte">Et sentant ma soif de tout connaître des infimes détails de notre création, tel un enfant à qui l\'on apprend à parler, Nimburr vint encore à mon secours afin de m\'enseigner.</div>
	<div class="longtexte">Nous étions fait de chair et d\'os et cela nous pouvions le constater, mais qu\'en était-il des mécanismes donnant vie à notre intellect, à notre conscience ?</div>
	<div class="longtexte">Lorsque les premiers anciens, les sderoths, furent mis au monde, les dieux réalisèrent avec déception qu\'ils étaient incapables de recréer les pures et immortels esprits qu\'ils étaient eux-mêmes. Les sderoths moururent et leur progéniture n\'avait pas d\'intelligence autre que primaire.</div>
	<div class="longtexte">Pour les dieux, il n\'était pas tolérable de devoir refaçonner toujours la vie qu\'ils désiraient partager. L\'abandon était proche lorsqu\'ils mirent au point un procédé permettant de capturer l\'étincelle divine insufflée à ces nouveaux êtres et que nous appellerons l\'âme.</div>
	<div class="longtexte">Ainsi, lorsque les plus vieux décèdent, leur corps terrassé par les blessures du temps ou des armes, leur âme est en quelque sorte mise de côté, puis ré-insufflée à un nouveau-né une fois nettoyée des péchés de son ancienne existence, nettoyée de sa mémoire superficielle.</div>
	<div class="longtexte">Et cet endroit où les âmes attendent est bien entendu le royaume de Nucter, seigneur des îles mortelles du lointain est.</div>';
	echo '	<div style="text-align: right; padding-right: 30px; padding-top: 8px;"><i>Nilmarel, Archimage Impérial et Elu de Nimburr</i><br>
		<u>Le cycle des vies</u></div>';
}
if ($texte == 3)
{
	function affiche_personnage($heros, $img, $txt)
	{
		echo changement($heros);
		echo '<table border="0" style="width: 100%;"><tbody><tr>
		<td style="width: 135px;text-align:left;"><img src="'.$img.'" align="middle" width="100" height="100" alt="'.$heros.'" title="'.$heros.'"></td>
		<td class="longtexte" style="vertical-align: top;">'.$txt.'</td></tr></tbody></table>';
	}

	echo '<br><br><h5>Les héros de Kalamaï</h5><br>&nbsp;';
	affiche_personnage('Issacar, le Ceint',			'/images/historique/Issacar.gif',	'Démonologiste célèbre qui aurait voyagé à travers les plans, Issacar s\'intéresse au combat contre Réhoboth pour les connaissances qu\'il peut en retirer. Il prétend qu\'Argostole est une menace encore plus grande qu\'elle n\'en a l\'air, et il exhorte les Armadas à tenter de la mettre à bas avant qu\'elle ne soit trop puissante. Il est demandé aux quatre coins de l\'Empire pour ses conseils et ses tactiques contre les démons.');
	affiche_personnage('Kiriath-Jéarim, Chef du Catégorien','/images/historique/Kiriath-Jearim.gif','Le général des Armadas d\'Argostole, la personne de confiance de Réhoboth. Il est en charge du recrutement des officiers. Un jour, un officier lui désobéit et pris la fuite : il le retrouva, l\'assassinat lui et sa famille, et mis le feu à sa maison, ses terres, et à tout son quartier, sans que personne ne puisse l\'en empêcher.');
	affiche_personnage('Molada, à la couronne de Mahanaïm','/images/historique/Molada.gif',		'Molada était la femme du vampire Mahanaïm, l\'un des seuls amis que Beth-Aran n\'ait pas tué. Par contre, il ne s\'empêcha pas de s\'en prendre à sa femme. Rendu fou par la peine et le désire de vengeance, Mahanaïm ramena Molada à la vie. Celle-ci revint sans son âme, et donc sans souvenirs : elle ne reconnue pas son bienfaiteur et le tua. Aujourd\'hui, elle a pris sa place à la tête du manoir de Mahanaïm et est la seule concurrente de Beth-Aran à la tête d\'Édhesse, étant donné qu\'elle est déjà morte et ne peut plus mourir.');
	affiche_personnage('Acco, le Sans-terres',		'/images/historique/Acco.gif',		'Le criminel qui a le plus de méfaits à son actif sans se faire prendre. Le plus grand exploit lui ayant été attribué fut le vol des enfants de Midon, pour lesquels il obtint une belle rançon. L\'Aiglon n\'aurait même pas pris la peine de lancer les Armadas d\'Halicarnasse à sa poursuite, sachant trop bien qu\'elles ne le retrouveraient pas. Il vivrait dans les clochers des cathédrales des grandes villes de Kalamai.');
	affiche_personnage('Gueshur, le champion de Dothan',	'/images/historique/Geshur.gif',	'Le palatin d\'Amphise a toujours choisi une personne plus jeune pour le représenter lors des conflits guerriers. Depuis quelques années, sa bénédiction est tombée sur un jeune archer plein de promesses, qui n\'a pourtant encore accompli aucun grand exploit. Mais le Spectre de Maon ne s\'est encore jamais trompé sur la destinée de ses choisis.');
	affiche_personnage('Jogbeha, l\'Oracle',		'/images/historique/Jogbeha.gif',	'La femme derrière Midon. Elle porte la parole de Kanderak auprès des gens de Scitopole. Bonne et juste, c\'est elle qui prend les décisions légales de l\'Empire. Elle tempère l\'Aiglon et apporte la bénédiction de son dieu aux Armadas lors de campagne.');
	affiche_personnage('Succoth de Galaad, le Cavalier ailé','/images/historique/Succoth.gif',	'Officier de la cavalerie du Catégorien. Son destrier est le plus rapide de Kalamai. Les bardes racontent que lors d\'une bataille, il aurait quitté son Armada pour poursuivre le général de l\'armée ennemie qui prenait la fuite à vol de dragon. Il aurait d\'abord abattu la monture pour ensuite couper la tête de celui qui le chevauchait.');
	affiche_personnage('Médeba, à la voix résonnante',	'/images/historique/Medeba.gif',	'Elle est aussi connue sous le nom de "Syrène de Vénopole". Lorsqu\'elle chante, les passants ne peuvent s\'empêcher de s\'arrêter. Lorsqu\'elle raconte une histoire, la rumeur se propage dans toutes les provinces de l\'Empire. Elle est le centre d\'inspiration des bardes et des poètes. Certains disent que la lune lui aurait donné sa voix.');
	affiche_personnage('Guibbethon, Officier du Cœur d\'Acier','/images/historique/Guibbethon.gif',	'Il est le chef de l\'Armada la plus puissante de Naxos. Depuis longtemps le champion incontesté d\'Ataroth, il ne s\'implique jamais lors d\'une bataille, sauf lorsque le vent tourne mal pour son maître. Alors, il charge et rien ne peut l\'arrêter. Il est le seul à avoir combattu Réhoboth en personne et à en être sorti vivant. Ils se sont battu durant un jour et deux nuits, jusqu\'à ce que la bataille qui faisait rage entre les Armadas de Naxos et le Catégorien s\'achèvent. Alors, il dut retraiter avec Ataroth, en jurant d\'avoir un jour la tête du démon.');
	affiche_personnage('Timmath-Sérakh, du fond des âges',	'/images/historique/TimmathSerakh.gif',	'Ancien dragon d\'or des montagnes de Zakinthe. Lors de sa mort, son âme resta dans son antre jusqu\'à ce qu\'un nécromant y vienne pour venir animer sa dépouille. Il ne put rien faire pour l\'en empêcher, mais tente toujours de le retrouver afin de regagner son corps et sa puissance. Son désir de vengeance l\'a poussé à capturer des villages entiers pour s\'en faire une Armada, bien que plusieurs héros au cœur plus sombre se joignent volontairement à lui.');
	affiche_personnage('Sichem, le Dévot',			'/images/historique/Sichem.gif',	'On dit de lui qu\'il serait l\'élève de Dinas. À tout le moins, il fait passer sa parole et ses valeurs à qui veut bien l\'entendre. Guerrier au cœur tendre, il aide les paysans et les enfants dans leurs travaux de tous les jours, et les défend contre ce qui menace leurs terres. Il est établi Prévèze, mais ne veut pas s\'occuper de politique, donc n\'est pas une menace à l\'autorité de Jahzer.');
	affiche_personnage('Dante Zorrender, Tueur de Shars',	'/images/historique/Dante.gif',		'Seigneur Dante Zorrender, ancien assassin de l’Armada des Chevaliers Divins, le guerrier de l’ombre qui voua sa vie au combat. Il se fit remarquer tout d’abord durant la Grande Guerre, notamment contre l’armada qu’il combattit tout au long de sa vie : l’Ordre de l’Ombre. Puis après de sombres aventures où il se fit plus discret, il réapparut et obtint le titre : Dante le Tueur de Shars, avec lequel il s’efforça de vivre sa destinée parsemée de sang. C\'est en effet contre les Rebelles Noirs qu\'il se distingua le plus et devint un Héros pour les peuples de l\'Empire de Kalamaï.');
}
if ($texte == 4)
{
	function affiche_province($province, $img, $palatin, $reputation, $politique, $capitale, $description)
	{
		echo changement($province.'<a name="'.strtolower($province).'"></a>');
		echo '<table class="discr100"><tbody>
		<tr>	<td rowspan="5" class="discr100img"><img src="'.$img.'" align="middle" width="100" height="100" alt="'.$province.'" title="'.$province.'"></td>'."\n";
		echo '	<td class="encHisRubr">Palatin : 	</td><td>'.$palatin."</td></tr>\n";
		if ($capitale != '')	echo '	<td class="encHisRubr">Capitale : 	</td><td>'.$capitale."</td></tr>\n";
		if ($politique != '')  {echo '	<td class="encHisRubr">Politique : 	</td><td><a href="encyclopedie_politiques.php#'; if (strpos($politique,'(')) { echo strtolower(trim(substr($politique, 0, strpos($politique,'(')))); } else { echo strtolower($politique); }	echo '">'.$politique."</a></td></tr>\n"; }
		if ($reputation != '')	echo '	<td class="encHisRubr">Reputation : 	</td><td>'.$reputation."</td></tr>\n";
		if ($description != '')	echo '	<td class="encHisRubr">Description :	</td><td>'.$description."</td></tr>\n";
		echo '</tbody></table>';
	}
	
	echo '<br><br><h5>Les provinces de Kalamaï</h5><br>&nbsp;';
	affiche_province('Scitopole',
		'/images/historique/Midon.gif',
		'Midon, l\'Aiglon',
		'Sévère et droit, Midon est le bras d\'Harosheth dans toutes les provinces de l\'Empire. Ses jugements sont sans pitié, et parfois partisans. Malgré tout, c\'est un homme de principes et incorruptible.',
		'Théocratie (Kanderak)',
		'Halicarnasse',
		'Les gens de Scitopole sont les représentants de la loi dans Kalamai. Surtout des combattants, ils forment le cœur de l\'armée impériale. Bien qu\'ils gardent toujours un œil sur les provinces de Naxos et d\'Igoumen, les armadas de Scitopole concentrent aujourd\'hui leurs efforts contre la nouvelle menace : Argostole, et le Catégorien de Réhoboth.');
	affiche_province('Zakinthe',
		'/images/historique/Megiddo.gif',
		'Megiddo, le Bras de Brak',
		'Meggido est le combattant le plus féroce de l\'Empire actuel, la seule pouvant peut-être le défier étant Jéshimoth elle-même. Jeune, il est depuis peu le chef des clans barbares de Zakinthe. Son ascension a été commanditée par Midon, afin que les lois impériales puissent finalement régner sur le territoire. Il aurait passé le test que Brak avait lancé sur Kalamai, en vainquant sa créature, le Colosse de pierre Kozane.',
		'Oligarchie',
		'Arthandre',
		'Zakinthe est une province de clans barbares mais, depuis l\'arrivée de Meggido à la tête des chefs de guerre, elle a débuté un mouvement de civilisation. Cette nouvelle tangente n\'est pas acceptée par tous, mais la prospérité qu\'elle apporte a réussi à convaincre la majorité. Les plus rébarbatifs sont arrêtés par la force de Meggido.');
	affiche_province('Mésolongion',
		'/images/historique/Thebets.gif',
		'Thébets, l\'Arcane',
		'Personnage mystérieux dont les objectifs sont encore flous, certains disent qu\'il serait celui qui a fait apparaître Argostole sur les terres de Kalamai. Cette rumeur est renforcée par le manque d\'enthousiasme que Thébets porte dans le combat contre le Catégorien. Son principale adversaire à la tête de Mésolongion est Issacar, le Ceint.',
		'Magocratie',
		'Orchomène',
		'Les gens de Mésolongion sont reconnus pour leur manque de morale. Ils passent leur vie à parfaire leurs connaissances mystiques sur les plans et les différentes créatures qui en émergent.');
	affiche_province('Prévèze',
		'/images/historique/Jazher.gif',
		'Jahzer, héros du peuple',
		'Sans être le véritable chef de Prévèze, il est le héros qui attire les faveurs de la plus grande partie de la population. Opportuniste intéressé, il aurait la bénédiction de Dios au-dessus de sa tête.',
		'Anarchie',
		'Méthone',
		'Terre jadis prospère, Prévèze a connu le déclin lorsque l\'Empereur Hammath, le Zélote, fut assassiné. Hammath avait été le palatin de Prévèze et avait ensuite été nommé à la tête de l\'Empire. Comme il avait hissé Prévèze au sommet avec sa gloire, sa mort amena aussi la chute de la province. Aujourd\'hui, c\'est une terre fantôme, de mercenaires et de bandits. Mais récemment, des héros venus de partout tentent de venir se forger réputation dans la région. Plusieurs héros, dont Jahzer, sont donc installés là-bas.');
	affiche_province('Amphise',
		'/images/historique/Dothan.gif',
		'Dothan, le Spectre de Maon',
		'Depuis des siècles, il est le palatin de la province. Mort depuis longtemps, on dit qu\'il ère encore dans les bois de Maon. Au début, les Empereurs ne voulaient pas le croire et demandaient à ce qu\'un autre palatin soit nommé, mais des apparitions de Dothan firent taire les sceptiques. C\'est un guide spirituel plutôt que politique.',
		'Gérontocratie',
		'Magnésie',
		'Province sauvage, sur laquelle s\'étend la partie ouest de la forêt de Maon. Les habitants y vivent en communauté avec la nature. Les responsabilités politiques sont entre les mains des plus anciens des villages. Les Amphisois sont reconnus pour leur férocité à défendre l\'équilibre naturel. C\'est pour cette raison que depuis plusieurs années, ils sont engagés dans un combat interminable contre Igoumen.');
	affiche_province('Naxos',
		'/images/historique/Ataroth.gif',
		'Ataroth, le Sanglant',
		'Général de la Forteresse, Belluaire de l\'Armada rouge, Ataroth est le dirigeant le plus sévère de tout Kalamai. Il ne tolère aucun désordre, déteste la faiblesse et tue ceux qu\'il n\'aime pas. Il est l\'ennemi de tous, particulièrement de Réhoboth, qui, selon lui, amènera la fin de l\'Empire, auquel il croit profondément.',
		'Despotisme',
		'Mende, dit la Forteresse',
		'Territoire devenu prospère sous Ataroth, Naxos était jadis ensevelie sous le chaos de la criminalité. Mais depuis que le Sanglant a pris la place de son père, succession qui lui a valu son titre, il a fait construire des fortifications autour de Mende (dont on dit qu\'elles servent autant à protéger de l\'extérieur qu\'à empêcher tout habitant interne de quitter) et a fait respecter les lois de l\'Empire dans toute la province. Les Armadas sont tenues droites et leur commandement n\'est pas laissé au premier venu.');
	affiche_province('Vénopole',
		'/images/historique/Edrehi.gif',
		'Édréhi, Celle-qui-ne-voit-jamais-la-lumière',
		'Sans contredit la plus grande de tous les forgerons de nos âges. Le jour, elle passe son temps aux creux des forges du Plateau d\'ambre et la nuit, elle en sort pour venir s\'inspirer des constellations et des récits des bardes dans les tavernes du soir.',
		'Monarchie',
		'Samothrace',
		'Paysage montagnard, c\'est la province des érudits et des voyageurs. C\'est aussi la province la plus lucrative, les nains étant principalement concentrés dans cette région. Le commerce y est prospère, et c\'est généralement de là que les Armadas tiennent leur équipement.');
	affiche_province('Etimnon',
		'/images/historique/Jesimoth.gif',
		'Jéshimoth, aux Six ailes',
		'Le célestial le plus puissant qui ait volé dans le ciel de Kalamai. Une légende veut que chez les gens de sa race, le nombre d\'ailes représente la puissance d\'une personne, tous naissant avec deux, bien sûr. Jéshimoth est la seule connue ayant eu quatre, puis six ailes. Elle n\'a jamais été vaincue, et dirige, depuis six générations, la Corne d\'Ivoire.',
		'Gérontocratie',
		'Samos ou la Corne d\'Ivoire',
		'Cette province n\'est en fait qu\'une ville indépendante érigée en hauteur, dans une sorte de tour gigantesque. Ce sont surtout les célestiaux et les anciens qui y vivent, mais d\'autres parviennent à s\'y installer sous-permission. Ce sont les gardiens de l\'équilibre de l\'Empire.');
	affiche_province('Argostole',
		'/images/historique/Rehoboth.gif',
		'Réhoboth, Venu d\'ailleurs',
		'Personne ne sait encore qui est vraiment ce démon. Tout ce qui est connu sur lui, c\'est qu\'il provient d\'un autre plan et que la seule concurrence de sa puissance est sa folie.',
		'Oligarchie',
		'Methymna',
		'Cette province est apparue dernièrement sur Kalamai. Elle proviendrait d\'un autre plan et serait dirigée par un conglomérat de créatures étranges. Leur apparition a suscité la controverse ; leur agressivité a répondu à beaucoup de questions. Les Armadas d\'Argostole sont rassemblées sous le nom de Catégorien, mais leurs objectifs demeurent encore inconnus.');
	affiche_province('Igoumen',
		'/images/historique/Askalith.gif',
		'Askalith, le Mauvais Oeil',
		'Puissante shaman qui est soupçonnée d\'être à l\'origine de plusieurs crimes, Askalith est à l\'image de sa province : sombre, sèche, mystérieuse. Elle vivrait avec son Armada dans une caverne sous le sol de Maon, d\'où personne n\'est jamais ressorti vivant. Elle est la petite-fille du légendaire Moab.',
		'Régime tribal',
		'Nothaume',
		'La province abrite l\'est de la forêt de Maon. Beaucoup moins vivante que la partie ouest, elle est la terre des exilés et des corrompus. Une guerre fait rage pour le contrôle de la forêt et l\'équilibre naturel entre Igoumen et Amphise, bien qu\'elle dure depuis si longtemps qu\'il s\'agit aujourd\'hui bien plus d\'une question d\'orgueil et de vengeance que politique.');
	affiche_province('Thassopole',
		'/images/historique/Bethul.gif',
		'Bethul, le Boiteux',
		'Il aurait parcouru l\'ensemble de l\'Empire et même les terres avoisinantes, au-delà des déserts et des mers. C\'est lui qui a découvert l\'emplacement d\'Argostole pour la première fois, à l\'extérieur des frontières impériales, où elle engrossait secrètement ses forces avant de se dévoiler au grand jour. Réhoboth lui aurait brisé la jambe avant qu\'il ne soit recueilli par ses hommes et ne quitte par navire la province maudite.',
		'République',
		'Anaphe',
		'Explorateurs, navigateurs et aventuriers de tous acabits se rassemblent sur les terres de Bethul pour venir lui demander conseils et directions. Thassopole est un amalgame de cultures de partout, ce qui explique sa supériorité technologique et sa prospérité : rassemblant les meilleures idées de Kalamai, Thassopole a pu s\'élever comme la province la plus riche de tout l\'Empire.');
	affiche_province('Édhesse',
		'/images/historique/Beth-Aran.gif',
		'Beth-Aran, le Seizième sang',
		'Vampire distingué et respecté, il choisit ses victimes selon leur importance dans la hiérarchie impériale. Son Armada est en charge de lui ramener ses proies. Recevoir une promotion de sa part est un compliment, mais est généralement un mauvais présage.',
		'Oligarchie',
		'Perganon',
		'Province cruelle mais civilisée, Édhesse est la terre de ceux qui vivent dans la nuit. Différentes sociétés hétérogènes s\'y sont installées, entre autres celles des elfes noirs de l\'Enclave du champ saronique. Plusieurs manoirs de vampires importants y ont aussi trouvé assise. En dehors des manoirs et des enclaves, la province est généralement décadente : le vin coule au moins autant que le sang.');
	affiche_province('Outre-Mer',
		'/images/historique/Taleonor.gif',
		'Le chaos règne en cette contrée',
		'',
		'Anarchie',
		'Roc le Chastel',
		'La terre d\'Outre-Mer, autrefois prospère est en partie détruite par la guerre menée par les armées des Seigneurs de Kalamaï.<br>Les Seigneurs qui étaient quelques peu écrasés sur leurs terres vinrent coloniser la nouvelle province. L\'Outre-Mer devint alors une terre libre à conquérir. Cette arrivée massive de colons provoqua quelques étincelles chez les survivants de l\'Empire vaincu.');
}
if ($texte == 5)
{
	echo '<br><br><h5>Lexique</h5><br>&nbsp;';
	echo changement("Lexique historique");
	
	function lexique($mot, $desc)
	{
		echo '<div class="creattypeliste"><strong>'.$mot.'</strong> : '.$desc."</div>\n";
	}
	
	lexique('Alliance de l\'Est',	'Coalition d\'ennemis de l\'Empire qui s\'y attaqua durant l\'Âge de Conversion. Elle fut mise en déroute par l\'arrivée des Célestiaux, puis incorporée à Kalamai.');
	lexique('Armada',		'Groupement guerrier affilié à une province, sous la gouverne d\'un officier.');
	lexique('Béroée (Tribus de)',	'Nom donné aux tribus nomades orques qui étaient apparues lors de la deuxième collision. Leur chef se nommait Moab.');
	lexique('Catégorien',		'Nom donné à l\'armada de l\'Argostole. Elle est dirigée par Kiriath-Jéarim, un démon ailé fidèle à Réhoboth.');
	lexique('Collision planaire ou cosmique',	'Théorie qui veut que les plans soient toujours en mouvement et que pour une raison inconnue, ils entrent parfois en contact. Ceci cause généralement un débarquement de nouveaux habitants sur l\'un des deux plans. Il y en eut trois jusqu\'à ce jour : Élée, Narsé et Claée.<br>
		<ul type="circle" style="margin-top: 2px; margin-bottom:0px;">
			<li><strong>Élée</strong> : Première collision. Elle emmena les nains, les minotaures et les gnomes.</li>
			<li><strong>Narsé</strong> : Deuxième collision. Elle emmena les orques, les hommes et les elfes.</li>
			<li><strong>Claée</strong> : Troisième collision. Elle emmena les infernaux et les vampires.</li>
		</ul>');
	lexique('Destinée',		'Nom donné à la terre promise que les dieux tenteraient de retrouver. C\'est une théorie, mais plusieurs semblent y croire. Les célestiaux prétende que la Corne d\'Ivoire en serait une partie.');
	lexique('L\'Eudermon',		'Nom donné à l\'Âge précédant la première collision. C\'est aussi l\'adjectif utilisé pour désigner la civilisation de la race des Anciens, qui était la plus dominante à cette époque.');
	lexique('Guerre de Bronze',	'Guerre qui commença au début de l\'Âge de Bronze et qui continue toujours et qui n\'a pas encore connu de dénouement. Elle fut déclenchée par l\'arrivée des infernaux sur le monde.');
	lexique('Guerre des Quatre',	'Première grande guerre que connue Kalamai. Son nom provient du fait qu\'elle fut remportée par quatre alliés : les anciens, les hommes, les nains et les elfes. Cette guerre vit la libération des Hommes et le début de leur règne en tant que dirigeant de l\'Empire.');
	lexique('Kalamai',		'Nom de l\'Empire des Hommes, qui ont unifié toutes les races à l\'intérieur de leurs frontières.');
	lexique('Kozane, le Colosse de pierre','Géant qui sortit du cadavre de Zabulon, afin de venger sa mort. Durant les premières années après la fondation de Kalamai, il fut adoré comme un dieu. Mais l\'Âge de conversion lui enleva ce titre. Il aurait été revu dernièrement, lors d\'un défi lancé par Brak au court duquel il a été vaincu par Meggido.');
	lexique('Manassé',		'Premier Empereur humain à la tête de Kalamai. C\'est lui qui donna son nom à l\'Empire. Il fut le chef de la rébellion des humains et c\'est lui qui dicta que Kozane serait le seul dieu vénéré.');
	lexique('Méthène',		'Fleuve qui sépare la province de Scitopole et de Prévèze. Il coule ensuite au centre de la forêt de Maon pour ensuite mourir dans la mer.');
	lexique('Moab, qui chevauche les boucs','Chef de clan orque qui était à la tête des Tribus de Béroée.');
	lexique('Officier',		'Le chef d\'une armada.');
	lexique('Siméon',		'On lui donna le tire d\'Empereur Soleil, car son règne fut prospère et fit grandir Kalamai plus que n\'importe quel Empereur avant et après lui.');
	lexique('Zabulon',		'Personnage important de l\'Histoire de Kalamai. En quelques sorte, il est vu comme un prophète. C\'est grâce à lui si la Guerre des Quatre a pris fin. Ses écrits ont mené à la conversion de l\'Empire à la religion polythéiste eudermone. Il est mort contre des orques.');
	lexique('Hérarchie impériale',	'<OL style="margin-top: 2px;">
			<LI>Empereur : Celui qui dirige l\'Empire de Kalamai. Ce poste est occupé par Harosheth, le Balafré.</LI>
			<LI>Palatins : Au nombre de douze, ce sont les dirigeants des provinces.</LI>
			<LI>Préfets : Membres du Sénat, représentants d\'une province et de son Palatin devant les fonctionnaires de l\'Empire.</LI>
			<LI>Légats : Poste diplomatique. Les Légats sont envoyés partout dans les provinces pour s\'assurer des bonnes relations, comme des mauvaises.</LI>
			<LI>Tribuns : Délégués auprès du Sénat pour représenter les intérêts de la population d\'une province.</LI>
			<LI>Préteurs : Chargés de faire respecter les lois dans une province.</LI>
			<LI>Édiles : Responsables de l\'organisation et de la gestion de lots terriens.</LI>
			<LI>Questeurs : Chargés de collecter les taxes des armadas ou d\'une province.</LI>
			<LI>Immunes : Membre d\'une armada.</LI>
		</OL>');
}
if ($texte == 6)
{
	echo '<br><br><h5>Cartes de Kalamaï</h5><br>&nbsp;';
	echo changement("Cartes de Kalamaï");
	echo '<div class="longtexte">Suivant les résultats fournis par les meilleurs cartographes de Scitopole et Thassopole, des cartes de Kalamaï ont pu être dressées. En voici deux versions, disponibles à la Bibliothèque Impériale et auprès de la Guilde des Cartographes.<br>&nbsp;</div>
		<a href="images/cartekalamai2_big.jpg"><img src="images/cartekalamai2_small.jpg" alt="" border="0" width="646" height="364"></a>
			<div style="font-size: 10pt; text-align: right; padding-right: 30px;">Merci beaucoup à Altessa Ehorline!</div><br><br>
		<a href="images/cartekalamai_big.jpg"><img src="images/cartekalamai_small.jpg" alt="" border="0" width="646" height="426"></a>
			<div style="font-size: 10pt; text-align: right; padding-right: 30px;">Un grand merci à Eisenor pour ce travail!</div>';
}


echo '</td></tr></tbody></table>';

include("fin.php");
