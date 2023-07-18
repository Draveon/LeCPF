CREATE TABLE `11apr_guildes_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL DEFAULT '',
  `province` varchar(40) NOT NULL DEFAULT '',
  `nb_membres` int(11) NOT NULL DEFAULT '0',
  `date_création` int(11) NOT NULL DEFAULT '0',
  `img` tinytext NOT NULL,
  `chef` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `regles` text NOT NULL,
  `puissance` int(11) NOT NULL DEFAULT '0',
  `siteweb` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

INSERT INTO `11apr_guildes_1` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Alliés de l`Ombre', 'Outre-Mer', 15, 21443802, 'http://img210.imageshack.us/img210/5494/cimetierel.jpg', 'Vils&auml;en', 'Depuis le départ de Cassandre, la barde schizophrène jadis cheffe des Saltimbanques de Kalamai, un grand bouleversement avait eu lieu au sein de sa communauté. La Nécromancienne Cendrine au passé tumultueux avait accepté de prendre en charge les combattants déchus au nom du lien familial qui unissait les deux femmes.

Dès lors, naquirent les Alliés de l’Ombre, plus soudés et plus puissants que jamais. Leur rage et leur haine refoulées avaient fait d’eux de redoutables guerriers. On peut citer ceux qui se sont le plus illustrés…

-Phyleas qui s’était voué aux arcanes de la magie, maîtrisant les sorts les plus destructeurs accompagné de ses fidèles Iltarns !
-Miroslaw, homme de loi, commandant d’une main aguerrie des armées colossales destinées à ravager n’importe quel royaume.
Et Vilsäen ayant remporté avec la Nécromancienne une guerre dont eux seuls peuvent se targuer !

De nombreux seigneurs s’étaient joints à la Reine des Morts. L’Orc, Urukwarhrr, nom craint et respecté, fidèle à sa double hache, tranchant à chacun de ses pas les pauvres têtes de ses nombreux ennemis. Paradoxalement il s’avéra également Ambassadeur d’exception maniant la langue des hommes à la perfection ! Une autre surprise de taille enchanta la souveraine des Alliés de l’Ombre avec l’arrivée de Baduit le rôdeur, machine de guerre que bon nombre de souverains souhaiteraient avoir comme ami…

Des guerres se succédèrent et avec elles de lourdes défaites mais aussi de fabuleuses victoires ! Retenons ces victoires qui ont fait dissoudre des armadas à force d’acharnement !

Cassandre avait fondé un groupe de marginaux sans buts précis, ni promesse de gloire, Cendrine leur avait inculqué une seule loi: celle du chaos et leurs noms resteraient gravés dans les archives de Kalamai !

La Nécromancienne savait que sa mission prendrait fin tôt ou tard, l’exil de Cassandre n’était pas définitif.

De tout achèvement naît un retour aux sources…

La jeune Cassandre savait que son retour serait difficile, qu’elle devrait faire ses preuves, regagner le respect de ses anciens compagnons et d’attirer celui des nouveaux venus… La tâche serait ardue…

Seule Cendrine avait connaissance de la réapparition prochaine de l’apostat et ce retour était prévu pour cette nuit. La nécromante avait jugé bon de n’avertir aucun de ses compagnons, espérant ainsi que, pris de court, ils n’aient le temps de fomenter quelconque plan destiné à évincer l’indésirable…

Elle avait cependant réuni tout son cortège au sein de la taverne prétextant une annonce importante. Tous connaissait le passé douloureux de la Nécromante et notamment sa quête de vengeance qui la rongeait.

Les Alliés de l’Ombre étaient attablés, harcelant les macchabées - que Cendrine mettait à disposition à chaque réunion - de leur apporter quelques chopines.

Il n’était pas rare de voir les cadavres traverser la taverne et s’écraser contre un mur… le service n’étant pas vraiment rapide. Dès lors que tout le monde fut servi et les macabres serveurs désarticulés, la nécromancienne esquissa un sourire, leva sa chopine et entama son discours.

- « Alliés de l’Ombre ! Vous pouvez être fiers de vos exploits ! Je n’ai jamais vu de communauté aussi unie et fraternelle que celle-ci ! Beaucoup d’entre vous font figure de légende sur le champ de bataille ! Je suis comblée d’avoir pu combattre et régner à vos côtés… »

Les visages s’étaient figés.

On frappa à la porte, laquelle s’ouvrit avec violence...

- « Tu es en avance chère cousine… »

Miroslaw et Phyleas se redressent, ils semblerent reconnaître un visage familier mais l’apparence générale de cette femme les laisserent dubitatifs.

Les cheveux mi-longs, une expression déterminée et mature dans le regard, un corps ferme, robuste et… couvert ! Cassandre semblait bien avoir changé. Cette jeune femme jadis frêle naïve et désinvolte paraissait n’avoir jamais existé.

Ceux qui n’avaient pas connu Cassandre étaient plutôt charmés de cette nouvelle présence féminine. Enfin une vraie femme… et vivante ! La différence des deux teints de peau était saisissante…

Vilsäen dont aucune émotion ne transparaissait sur son visage, prononça ces quelques mots :

- « Tiens-donc, revoir un visage tel que celui-là m’est fort agréable ! Mais est-ce celui qui sera annonciateur d’un nouvel âge pour les Alliés de l’Ombre, ou simplement celui d’une ambition personnelle ?!

N’attends cependant pas une confiance aveugle de ma part ni de celle de ces guerriers ! Et en attendant ce jour, ce sera mon bras qui commandera et le tiens qui secondera.

Prends place, mangeons et buvons, sinon…..tu sais où est la sortie. »

Cassandre s’assied à table sans un mot serrant une chopine entre ses mains. Elle lance à Cendrine un regard dont elles seules en connaissaient le sens, mais après tant d’années certains des guerriers devinaient qu’il ne pouvait y avoir qu’un seul sens à tout cela ; une page allait se tourner ce soir.

La fête reprit sous des flots de breuvages mystiques, on pouvait sentir une ambiance étrange mais aussi agréable qu’une veille de grande bataille, était-ce là le signe d’un âge de guerres acharnées soutenu par d’immémoriaux bains de sang dont rêvent tous guerriers la nuit ?....
', '- Initiatrice de la décadence des mondes, témoin supérieur de l`abrutissement des masses.
- Je bâtirai des empires de chair nés pour tuer.
- J`animerai des troupeaux asservis, condamnés à succomber.

Que la haine, le chaos et la confusion règnent désormais sur Kalamaï.', '- Inscription et présentation obligatoire sur le forum.
- Pas de langage SMS.
- Respect et bonne humeur.
- participation régulière souhaitée (forum et IG).
- motivation extrême en temps de guerre.
- partage des rapports de combat et d`espionnage.', 366694, 'http://saltimbanques.forumactif.com'),
(3, 'L`Ordre Célestial', 'Scitopole', 11, 21443864, 'http://i64.servimg.com/u/f64/13/74/94/60/celest10.jpg', 'Dalan', 'Un homme vêtu d’une longue cape ternie par les intempéries, bâton à la main, se tenait devant les majestueuses forteresses, maintenant en ruines, du peuple Célestial d’Etimnon. La figure avançait d’un pas lourd; autant ralenti par ce qui semblait être un fardeau psychologique, que par l’imposant bouclier qu’il tenait avec lassitude dans son autre main… Un bouclier que portaient fièrement les Paladins, à une certaine époque, semble-t-il...

Les immenses portes qui surplombaient les falaises avaient perdu leur lustre d’époque, ravagées par le temps et la guerre. Le sceau appliqué à celles-ci par Kimnou, maître Magicien, était en apparence toujours actif et n’avait pas été violé, preuve de l’inactivité de la province depuis le départ des Célestiaux. L’on pouvait également distinguer les lances majestueuses des Sentinelles du légendaire guerrier Hulricht, encastrées sur les palissades ici et là.

L’homme approcha des portes, y déposa son écu, puis apposa sa main, à plat, sur la surface froide, levant les yeux au ciel. Il semblait pensif : jadis, l’Ordre Célestial avait semé la terreur dans le cœur de ses ennemis; répandu la discorde dans les rangs malfaisants; et apportés le réconfort et l’espoir aux peuples Fées, Anciens et Célestiaux de tout Kalamai… Mais cette époque était désormais révolue.

Axilias, son Chef, avait été épuisé par les efforts de guerres constants et ravageurs… Ses deux plus grands conseillers avaient dû déserter la province, bien malgré eux :
Shalimare, son plus puissant Général, était désormais introuvable…
Zahel, son plus important Diplomate, avait déserté l’Ordre… La Légende veut qu’il ait même rejoint les rangs ennemis…

[…]

Il demeura ainsi de longues minutes…

[…]

Soudain, une main vint se poser sur l’épaule du vagabond, et une voix se fit entendre : « Me reconnais-tu, mon ami? Te rappelles-tu l’époque où nous dominions les Cieux? Où le peuple Célestial était reconnu et craint par tous les êtres foulant cette terre? »

L’homme au bâton retira sa cape d’un geste lent, puis se retourna : On pouvait reconnaître Axilias, qui semblait avoir vieilli (ou s\'être assagi, comme certains diraient) de dizaines d’années. « Mon pauvre, cela fait tellement longtemps que je n’ai parlé à personne… Je suis désolé, votre voix ne m’inspire rien… Vous devriez probablement poursuivre votre chemin. »

Son interlocuteur sembla déçu par cette réponse, mais loin de se laisser abattre : « Mon frère, je rentre finalement au bercail! Je cherche un endroit où m’établir, je cherche une cause à servir, et je cherche surtout à combattre ce pourquoi Etimnon s’est toujours battu! M’accepterais-tu à nouveau dans tes rangs, mon Chef? ». Il lui tendit la main, souriant.

Axilias murmura à voix basse : « Shalimare… »

Son teint s’illumina et son regard sembla reprendre confiance et assurance. Il empoigna la main que Shalimare lui offrait généreusement, et leurs regards se croisèrent longuement. Les souvenirs s’entassaient dans leur tête, et un sourire s’esquissa sur le visage d’Axilias. Il fit face à nouveau aux portes et y déposa fermement ses deux mains.

Une intense lumière pure et dorée surgit des runes apposées sur la porte, jusqu’à illuminer la cité entière! Les portes s’ouvrirent lentement, et un vent de fraîcheur souffla à nouveau sur les chemins sinueux qui contournaient les falaises.

« Sachez, peuples de Kalamai, qu’Axilias est de retour! La Renaissance de l’Ordre Célestial prend place en ce jour, en cette heure et en cet endroit, et nos ennemis trembleront devant notre suprématie nouvelle!! »

[…]

Les jours passèrent, puis les semaines, puis les mois… Etimnon avait perdu sa gloire d’antan; la province ayant été malmenée par les trop nombreuses guerres qui y avaient fait rage, jadis. Sa population, rayonnante à une certaine époque, était désormais remplacée par des Seigneurs et des Chefs de royaumes arrogants, traîtres et perfides… Les deux pionniers, attristés de ce malheureux constat, n’eurent guère le choix de déserter ces lieux lourds de souvenirs joyeux ou douloureux… Néanmoins, Axilias n’aurait jamais quitté le nid de l’Ordre sans s’y préparer : il savait qu’il existait également un ancien bastion de Célestiaux, non loin de la capitale Impériale, dans les plaines de Scitopole. Le Célestial entreprit donc, aux côtés de Shalimare, de rétablir la réputation de l’Ordre Célestial sur une terre nouvelle!

Il prit soin, avant le départ, d’envoyer des messagers dans toutes les régions de Kalamai afin d’y retrouver d’anciens et de nouveaux compagnons d’armes, le point de rendez-vous étant fixé au quarantième jour après l’envoi initial des missives, aux portes de Scitopole.

Le périple fut long pour les deux amis, mais comme promis, au quarantième jour, ils posèrent pied sur la toute nouvelle terre promise. Un épais brouillard empêchait ceux-ci de bien s’orienter sur les plaines verdoyantes de la région. Ils décidèrent de s’orienter naturellement vers les montagnes afin d’y établir un campement permanent et d’y rencontrer la population locale de Célestiaux, d’Anciens et de Nains. Prêt du but, une ombre vint se jeter sur l’espoir. 

Axilias arrêta net et stoppa brusquement Shalimare par la même occasion : « Attention… Regarde! »

Leurs yeux s\'orientèrent droit devant eux, tentant de discerner ce qui semblait être trois figures avançant vers eux, à travers le brouillard, arme à la main. Ils n’eurent que le temps de dégainer leurs propres armes lorsque la voix d’un des inconnus s’écria : « Axilias, est-ce toi ?! »

Les deux compagnons se regardèrent ensuite, complices; ils avaient reconnus la voix d’Hulricht. Kiminou et Tirandilis se tenaient à ses côtés. Les salutations furent joviales, mais teintées de nostalgie.

« Merci d’avoir répondu à mon invitation, je suis incroyablement heureux de voir que votre allégeance à l’Ordre reste intacte malgré les mois qui ont passés! Ce lieu sera donc notre nouvelle Forteresse Célestiale d\'où nous mènerons maintes batailles qui nous porterons, à terme, vers la victoire! »

Le brouillard sembla devenir moins dense, et un rayon de soleil perçât les nuages et illumina le flanc de la montagne, laissant présager un signe de bonne fortune pour les Cinq!', '- Après le succès incontesté en Etimnon, l’objectif est désormais d’hisser Scitopole aux plus hauts rangs de Kalamai en alliant la Force des Célestiaux et de leurs alliés! 
- L’armada est d`affiliation Neutre; peu importe votre Nature, vous serez acceptés.', '- Tous les Célestiaux, Anciens, Hommes et Nains sont acceptées
- Le Code d’Honneur est une notion extrêmement importante aux yeux de ses membres : Toute trahison ou insubordination excessive se verra sévèrement punie 
- Participer activement aux guerres, lorsque nécessaire, et respecter étroitement les alliances
- La participation au forum est OBLIGATOIRE, n’espérez pas rejoindre l’OC si vous ne planifiez pas accorder au moins une quinzaine de minutes par jour afin de passer sur le celui-ci!

Lieu de rassemblement : http://celestial.forumactif.com/', 400977, 'http://celestial.forumactif.com/forum.htm'),
(4, 'L`Orchidée', 'Thassopole', 6, 21443915, 'http://fr.academic.ru/pictures/frwiki/67/Claudius_II_coin_%28colourised%29.png', 'Orium', '« Jour de marché dans la cité impériale,
C`est dans une rue fortement encombrée que GrandGor héla Aerandir afin de lui soumettre une idée particulièrement farfelue... Idée que Diz-Les-Yeux-Vifs apprécia. Il les rejoint quelques semaines plus tard avec toute son expérience.

Ils allaient créer un vaste empire marchand, capable de survivre en autarcie, grâce à son réseau de commerçants et de mercenaires.

Lorsqu\'ils eurent convaincu Diz, ils s\'attelèrent à la tâche.

Le nom d\'orchidée vint tout simplement de l\'or, associé intimement à la puissance, et quoi de plus puissant qu\'une fleur ? »

« L\'orchidée est la fleur, l\'orchidée est notre raison d\'avancer. » ~Aerandir

Cette armada novatrice montrera au monde de Kalamaï non pas la force d\'un marchand contre un autre marchand, mais leur force lorsqu\'ils sont unis, et soudés ! 
L\'honnêteté ne signifiera pas faiblesse. L\'égalité des membres sera sous condition de période calme et sans troubles. Par trouble s\'entend trouble interne au sein de l\'orchidée.

L\'orchidée, fait allusion à l\'or.. Car un marchand aime l\'or et en a. Et un mercenaire en a besoin. L\'orchidée est là pour relier ces points communs, afin de montrer qu\'en gérant convenablement cette ressource majeure, la puissance suivra de façon exponentielle.', 'L\'Orchidée a pour but la cohésion entre les marchands les plus puissants de l\'empire, afin de ne pas se saborder, et pour profiter de nos atouts de façon maximale. 
Elle ne laissera cependant pas tomber les valeureux combattants Thassopoliens désirant intégrer un groupe solidaire et motivé.

N.B. : Mis à part la candidature, je souhaiterais un petit message sur ma boite privée pour connaitre vos aspirations ;)', 'La parole des grands marchands fait loi, Ils sont néanmoins capable de voir à moyen et long terme afin de faire prospérer comme il le faut l\'armada.

Les marchands recrutés auront un statut important, quasiment commun aux fondateurs.

Les combattants eux, Physique/Magique auront des grades particulier correspondant à leurs taches :

Protecteur, Eclaireur, Sabordeur,Destructeur..
Chaque grade sera proclamé à la suite d\'un fait d\'arme, ou de plusieurs suivant l\'acte.
Les combattants n\'ont rien à envier aux marchands qui sont là pour créer des réseaux sociaux, des pactes et des stratégies financières. La cohésion, et l\'égalité des membres et la chose la plus importante.

Vous devrez montrer le même respect à l\'égard d\'un éclaireur, d\'Aerandir ou encore d\'un prêtre néophyte.

Tout contrevenant sera expulsé de la façon la plus cruelle possible. On n`escroque pas un marchand.

                   Diz, Grandgor, Aerandir, Grands marchands de L\'Orchidée 

N.B. : Les rapports de combats et les rapports d\'espionnage sont importants à transmettre ;)', 784810, 'http://orchideemarchande.forumparfait.com/'),
(5, 'L`Ordre de So', 'Prévèze', 7, 21444005, 'http://www.halloweens.net/client/4256/prod/VS_4256_828_1160811630.jpg', 'Han Main-Tranchante', 'Une voix lugubre retentit. Elle déclame des mots. Et ces mots font des phrases. Et ces phrases ont un sens. Quoique.
« Le Prophète, So, VIème du nom, viendra à vous, qui préparez la viande.
Il est partout et nulle part à la fois.
Il attend l’heure où le sol de tous les mondes sera souillé par le sang et les tripes de ses habitants.
Il sait que cette heure viendra. Et il attend.
Tout comme ses fidèles, qui eux aussi attendront. 
Ses fidèles, oui, qui travailleront à la souillure des sols de tous les mondes par le sang et les tripes de ses habitants.
Ils attendront sa venue.
Son incarnation.
Vous qui préparez la viande ! Vous qui la vendez sans distinction et sans préjugés à ces peuples voraces !
Brisez vos chaînes ! Devenez des guerriers, et servez à la venue de So VI ! Il vous récompensera lorsqu’Il parviendra à vous !
Ainsi soit la Prophétie, annoncée par So V.
Biblu-Cheur-Yi, IV, 5. »
Un rot brise la lecture d’Olg le Gras. Un rot sonore, comme seuls les barbares savent en faire.
« C’est gagné, l’rot élégant ! » scanda machinalement Olg, avec un désespoir apparent. 
« Ferme la, Olggy. Cela dit, j’l’aime bien, ton bouquin. Il m’inspire. Lis m’en un autre bout. » lui répondit l’élégant émetteur du rot.
« La Biblu-Cheur-Yi contient TOUT, Han ! Tout ! Manifeste un peu plus d’respect, j’te prie. Bon, j’t’en lis un aut’ bout, et tu me diras si t’es d’accord pour c’que j’t’ai proposé. »
Le Gras se racla la gorge, puis reprit la lecture du passionnant livre saint, qui avait l’air d’avoir été trouvé dans un caniveau, écrit par un gnome farceur doué d’une imagination débordante.
« Ô Bouchers !
Entendez cet appel, car c’est celui de So !
Créez l’Ordre qui portera Son nom, et répandez en mille sols les tripes et le sang de ses habitants !
Il sera diri… »
« Attends un peu, Olg. Ce livre me prend pour un crétin ! Il arrête pas de répéter la même chose ! » intervint Han Main-Tranchante.
Olg le Gras poussa un gros soupir, et expliqua calmement à son camarade que c’était le propre des livres saints que de toujours rabâcher des phrases identiques. Puis il recommença à lire d’une voix assez désagréable, il fallait l’avouer.
« Il sera dirigé par le Boudin Malin… »
« Quoi ?! C’est une blague, ton Bibloutruc, Olggy. Laisse tomber. »
« Tais-toi, Han. Et écoute.
Il sera dirigé par le Boudin Malin, le maître des forces armées, un guerrier sans peur, sans merci, sans trop d’intelligence, mais si fort et si influent qu’il pourra faire plier les habitants de tous les mondes et répandre leurs tripes et leur sang sur le sol. »
A ces mots, Main-Tranchante eut un sourire. 
« Il sera secondé par le Grand Jambonneau, détenteur de cet ouvrage sacré, un homme d’une foi si inébranlable et fanatique qu’elle fera plier les habitants de tous les monde et répandra leurs tripes et leur sang sur le sol.
Ainsi sera l’Ordre de So, et ses adeptes suivront ce livre et ceux que ce livre a désignés.
Biblu-Cheur-Yi, VII, 1. »
Un long silence suivit la fin du verset. Pas mal du tout, comme idée, cet Ordre. Han, avec un tact incroyable, répondit au Gras, un sourire aux lèvres.
« Oua. J’marche, Olggy, j’marche. Même si mon honneur doit passer dans c’nom. Boudin Malin… Pas si terrible que ça, en fait. Mais bon, c’est tout d’même un sacrifice. Se faire connaître de tout Kalamaï par un nom pareil, ça mérite quand même une récompense. J’espère qu’il sera généreux, ton So VI, Olg. »
Han se permit un instant de réflexion supplémentaire.
« Euh… Pour l’coup du Grand Jambonneau, ça va être toi, nan ? »
« En effet. »
« Bon, bah ça me va, alors. Bougeons-nous l’train, il faut qu’on fasse le tour des boucheries de Méthone avant la semaine prochaine. Le sang et les tripes sur le sol de tous les mondes, ça attend pas, m’est avis. C’a pas l’air d’être un marrant, So. »
Avec un grognement, Han se leva de son tabouret crasseux. C’était un homme immense, musclé et assez corpulent, assez pour avoir une imposante bedaine, mais pas pour être classé dans les obèses. Il avait un tablier tâché de sang comme vêtement, en plus de son pantalon souillé de graisse, et un hachoir à main pendait à son côté. Il était un boucher, en somme. Et il deviendrait le maître de tous ses pairs, lui, le Boudin Malin, soutenu par le livre d’Olg le Grand Jambonneau.
Il poussa un tonneau puant, plein de bile, de devant la porte, et sortit dans la rue. 
Il connaissait un bon gars, Irkos, le boucher de Kalferas, qui serait peut-être content de les rejoindre. Il prit donc la direction de son échoppe, bien décidé à lui coller un coup de poing amical dans la mâchoire avant de le convertir.
Irkos était un orque pas bien fin, mais expert dans le maniement du hachoir, et de la hache en général. Il en avait eu assez de frapper du vivant, alors il avait décidé de frapper du cadavre. Maintenant, il s’ennuyait, et Han allait lui proposer l’occasion de sa vie : retourner frapper du vivant, et répandre ses tripes et son sang sur son propre sol.
Comme il s’y attendait de la part de l’Orque d’une stupidité à toute épreuve, celui-ci accepta de les rejoindre, et choisit même un surnom, alors que rien ne lui était imposé. So V précisait juste que les adeptes de l’Ordre étaient comme la chair de So VI. Si c’était véritablement un gnome qui avait écrit ça, il était vraiment doué pour le calembour viandeux. 
Bref, Irkos voulut être le Saucisson Pourfendeur. Et les trois compères repartirent en quête de nouveaux compagnons, vagabondant dans les rues de Méthone, pressés de « répandre sur le sol de chaque monde le sang et les tripes de ses habitants ».
', 'Être en guerre le plus souvent possible, voire constamment, de préférence contre les Armadas les plus intéressantes et les plus adaptées au niveau de l’Ordre, afin de répandre les tripes et le sang de nos ennemis sur leurs terres.

Éventuellement initier les nouveaux à la base du jeu, s’ils sont motivés.
', 'Une participation minimum au forum est demandée. Nous n’avons pas envie de nous retrouver avec une Armada morte sur les bras. Les rapports de combats doivent être postés régulièrement. Le mieux serait de tous les poster, mais il n’y aura pas de sanctions s’ils sont rares.
Le respect entre les Bouchers sera demandé. Le but est d’obtenir une bonne ambiance, pas de s’entretuer. Le coup des tripes et du sang ne vaut que pour les autres.
Les nouveaux venus seront « chair de So VI ». Il leur faudra s’inventer un grade sympathique en rapport avec le monde de la viande (les bons jeux de mots, s’il y en a, seront très appréciés).
', 132221, 'http://ordredesbouchers.forumparfait.com/'),
(6, 'L`Union des Citoyens', 'Vénopole', 18, 21445160, 'http://r27.imgfast.net/users/2712/57/63/34/album/uc11.png', 'Daneel', 'A nouveau, Kalamaï avait été bouleversée, ravagée en l`espace d`une nuit. Des anciens royaumes ne restaient que les mémoires et quelques écrits. 

Il existait pourtant un édifice qui semblait insensible aux désolations, aux assauts des éléments et des caprices du destin: Le château des citoyens.

C`était un endroit immense et mouvant aux multiples secrets et la rumeur voulait que même son maître ne sache pas tout ce que faisait sa demeure. 
Et, lors des ravages périodiques que subissaient le royaume, le château avait pris un habitude bizarre, celui de bouger.

En réalité, Daneel l`armurier se demandait si c`était le château qui bougeait ou si c`était le monde qui changeait autour d`une construction immobile depuis la nuit des temps.

Quoiqu`il en soit, Daneel, en se réveillant, alla prendre son petit déjeuner sur un balcon et mit un peu de temps à identifier la province où il se trouvait.

Puis, il finit par l`identifier, Vénopole. Longtemps, elle fut la province de l`ennemi, le seul obstacle à une domination sans partage, quelle ironie  quelle soit à présent son lieu de résidence! 

Néanmoins, de longues promenades en forêt seraient bien plus agréables que les zones désertes de Naxos.

Quelle influence aurait donc ce lieu paisible sur ses citoyens? Voilà un mystère qu`il serait intéressant de lever.

Son repas terminé, il se dirigea vers la salle des gardes afin de voir lesquels étaient restés et quels seraient leurs ambitions.
Y aurait-il de nouvelles têtes?

La vieille alliance de l`UC ne courait plus depuis bien longtemps après la gloire comme les jeunes chiens fous qui la défieraient, c`était plus une famille composée de vieux amis, encore trop jeunes pour le scrabble.

Il rit en imaginant la tête de Désangelion s`il lui proposait de devenir les maîtres du monde du scrabble et autres mots fléchés. Sa vie serait en péril à n`en pas douter.

Finalement, tout pouvait se résumer à la seule phrase qu`il prononça alors:

"C`est reparti pour un tour."', 'Former un groupe compétitif mais fair-play qui prend plaisir à se retrouver sur son forum interne.', 'Écrire en français correct
Passage sur le forum interne obligatoire
Partage des rapports de combats
Écrire au chef de l`alliance ou poster sur le forum pour postuler.', 476822, 'http://union-des-citoyens.positifforum.com/forum.htm://'),
(7, 'L`Ordre des Templiers de la Loi Empirique', 'Outre-Mer', 6, 21455504, 'http://i89.servimg.com/u/f89/12/69/42/73/tour310.jpg', 'T&ecirc;te-Plate', 'Les Templiers de la Loi Empirique, rassemble les Templiers de Kalamaï.

Dans l\'esprit de Tête-Plate, son chef, les idées jaillissaient. Depuis qu\'il avait aperçu le visage d\'un dieu, il ne pouvait tolérer qu\'on ne marcha pas pour celui-ci. Aussi construisit-il durant les 20 premières années de son existence un Temple avec les pierres qui jonchent le sol de son plat pays. Son idée, quoiqu\'un brin anguleuse, était lumineuse. Supprimer, bruler et purifier non pas tous les méchants, mais toutes les gens non ``mystiques`` de Kalamaï. 


L\'ordre fut donc créé en ce sens, et sa porte ouverte à tout Outre Mer.

Dès lors que le temple fut achevé, dans son esprit, Tête-plate tournait en rond. Et pour être honnête, tout cela ne tournait pas bien rond. L\'affluence des mystique tardant, il se mit bille en tête dans des réflexions basées sur des principes carrés.
En voici quelques extraits: 

Ayant postulé l\'existence des Dieux suite à sa rencontre mystique, Tête-plate en déduit après quelques semaines de déshydratation, l\'existence d\'une Loi Divine. Cette Loi, que Tête-Plate ignorait intégralement, n\'était donc connue qu\'uniquement des Dieux.
(Petite parenthèse : à ce moment précis du raisonnement, Tête-Plate déduit la réciproque, à savoir que s\'il découvrait la Loi Divine, il deviendrait inévitablement un Dieu)
L\'ère de la quête de la Loi Divine avait sonné. Mais comment la découvrir dans toute sa complexité dans son  intégralité ? 
Les Dieux, dit-on, sont joueurs, et ont parsemé le monde d\'indices. La loi du plus fort existait bien avant les premières formes de vies en Kalamaï. La loi de la richesse est elle aussi incontestable, et valable dans toutes les provinces, et quelque-soient les races présentes. Voici donc quelques fragments de loi, ancrés dans nos sociétés et dont nous ignorons presque l\'existence. Et pas n\'importe quels fragments ; des fragments de Loi Divine. 
Ainsi Tête-Plate pris le parti de reconstituer, d\'extrapoler les maigres valeurs mises à sa disposition pour en déduire une Loi unifiée, la Loi Divine.
Tête-Plate, ignare absolu, n\' était néanmoins pas tout à fait sot. Par instinct, il mis au point une méthode aujourd\'hui connue sous le nom de la méthode de "l\'approximation empirique de la loi" pour s\'approcher toujours plus de l\'essence divine.
Pour faire simple, il s\'agit de récolter par l\'observation, par l\'expérience, le maximum d\'informations tributaires de la Loi Divine. Tâtonner dans l\'obscurité, tenter d\'établir les rêgles par des méthodes empiriques. Ces informations sont finalement assez faciles à observer. En effet, chaque vie qui s\'éteint, chaque souffle qui cesse à jamais, chaque victoire sur l\'ennemi, obéissent à la Loi. 

L\'objectif de son ordre était alors on ne peut plus clair : se servir de la vie et l\'extraire. La vocation des Templiers de la Loi Empirique était née : exterminer toute vie sur terre pour approcher et découvrir, par l\'infinité des observations, la Loi Divine. 

Ayant entendu l\'appel, le maître Templier Birgenn, fondateur de l\'Ordre des Templiers de Kaï proposa une alliance. Cet Ordre avait été bâti à l``Age d``or, sous le règne de l\'Empereur Soleil.

Cet homme, rendu puissant grâce aux dieux en lesquels il avait une foi inébranlable, s\'appelait Camus le Brave, Champion de Kanderak, pieux Paladin et Maitre Templier de l`Ordre Kaï.

Il mourut dans une embuscade tendue par des êtres ténébreux jaloux de son pouvoir et terrifiés par sa foi.

D\'aucuns disent que l``on peut encore entendre son cri de guerre résonner entre les cimes des Hautes Roches d\'Outre-Mer, où il fut abattu par un nécromant.

Les hommes sont souillés et avilis... Ils pactisent parfois même avec les engeances du mal, des ténèbres et du chaos ! Nous devons purifier cette terre et honorer Camus le Brave !

Birgenn, légitime héritier de Camus, jura :

" Je quitte mes êtres chers, je me départis de toute chose hormis les outils de ma quête : purifier nos terres.

Aucun obstacle ne me retiendra.
Aucun appel à l``aide ne m``échappera.
La lune ne me surprendra jamais deux fois en un même lieu, car toujours je cours vers le mal, l\'épée à la main, et le mal est partout.

Je me donne cœur, corps et âme à la quête de la Loi Empirique "


-- Ou comment faire de l\'Empirisme une vérité, une religion --
', '- Ouvrir les yeux des infidèles sur l``existence des dieux. (à la hache s``il le faut) 

-Purifier, dératiser, carboniser, assainir Kalamaï de toute forme de vie qui ne partage pas notre foi.
', '-Les croyants de tous horizons sont acceptés.

-Les païens (les autres classes) sont invités à nous rejoindre pour nourrir les flammes du bucher. ', 215311, 'http://ordredespurs.forumgratuit.fr'),
(9, 'Les Augures Boréals', 'Etimnon', 7, 21526433, 'http://imalbum.aufeminin.com/album/D20080313/385532_S3SMFGL66ZM2RRVWIVLOWYX8K47FET_aurore-boreal_H232959_L.jpg', 'Malia', 'La guerre… L’escroquerie… La mesquinerie…

La violence en général au final. Les fières Terres de Kalamaï en étaient malheureusement victimes depuis des années, des décennies, des siècles voire des millénaires. Prenez tout simplement les batailles, les combats sanglants déchirants les cœurs. Depuis l’Eudermon, ceci commença sans parvenir à concevoir un simple petit siècle sans violence. Ayant été esclaves, les Humains semblèrent avoir retourné l’ascenseur concevant un Empire laissant les races moins puissantes derrière. 

Longtemps voyagea une jeune Fée appelée Malia. Timide, gentille, mais non sans force, cette enchanteresse avait un rêve. Oui, celui qui concevait la paix, le bonheur, le respect parmi tous les êtres – qu’ils soient végétaux ou animaux - parsemant les Terres de Kalamaï. Une Utopie; probablement. Certes, Malia était très naïve doublée d’un optimisme grandissant plus ses connaissances en magie se développaient. Le sourire souvent aux lèvres, allant jusqu’à ses oreilles, elle évitait toute forme de violence le plus possible durant ses voyages … Parfois, celles-ci la faisaient énormément frissonner, dégoûtée par la mort empestant les champs de bataille déserts. Elle se défendait évidemment … Mais à quel prix ? Pour la vie ? Oui, certainement. Cette vie joyeuse et naïve. Un jour, Malia arriva en la province d’Etimnon. C’était une étrange contrée fouettée par les vents et les vagues parvenant de l’océan en arrière plan. Une énorme tour dont on ne parvenait pas à apercevoir le sommet disparaissant en des nuages blancs, cotonneux et semblant véritablement amicaux. Curieuse d’apercevoir une province construite en hauteur et non en longueur, la jeune Fée y entra. 

Les habitants d’Etimnon n’étaient pas hostiles aux nouveaux venus, mais pas non plus très amicaux. En tout cas, pour ceux désirant du mal à leur belle province. Malia, gênée, sourit en toute humilité. En effet, elle avait droit à cette vie aussi. Assez rapidement, l’enchanteresse parcourut la province apprenant avec joie son système politique et économique. N’ayant jamais rien connu d’autre, notre optimiste de nature n’en fit, évidemment, rien. Un jour, elle rencontra Enephia, une jeune femme aux ailes aussi belles que l’éclat des yeux de la Fée qui s’éclairaient à un seul petit regard en celles-ci. Avec le temps, les deux jeunes femmes parlèrent de plus en plus – Malia devint, ainsi, plus bavarde et ouverte envers Enephia – et devinrent de bonnes amies. Ne provenant pas du même lieu d’origine, nos deux femmes ailées se rendirent tout de même compte qu’elles voulaient la même chose pour ce monde, soit la paix, tout simplement. 

Oui, Enephia semblait soutenir la véritable justice humaine (si le terme est bien exploité ici). La célestiale avait une plus vive passion, un cœur puissant sans compter une formidable intelligence et connaissance. Pour sa part, Malia préférait le respect de tous les êtres vivants, sans prise en compte leurs traits raciaux, leurs instincts et/ou leur intelligence. 

Ainsi, ce fut Enephia qui en eut l’idée la première. Tous ceux et celles qui désiraient la paix, le respect envers tous et la nature en ces terres que formaient Kalamaï, pouvaient rejoindre nos deux amies. L’armada «Les Augures Boréals» naquit. Évidemment, elles devraient se battre pour voir leur rêve se réaliser. Ainsi, il y avait certaines règles chérissant la vie à tous ceux et celles souhaitant poser leur candidature.
', ' L’étendard de notre armada luit de sa loyauté envers tous et chacun, son amour propre, envers autrui et envers ce que les dieux créèrent. Notre bouclier chante la paix, notre épée cite la justice, notre cerveau crie à la liberté et notre cœur envoie l’appel à l’égalité. L’étendard de notre armada symbolise l’harmonie. Ainsi, la bonne entente et ces sept valeurs sont de passage avant l’avarice, la violence, la vantardise, l’excellence et la reconnaissance.', '1. Respect de sa vie, de la vie d’autrui et de l’environnement qui nous entoure.

2. Lors d’une attaque offensive sur autrui, assurez-vous que celui-ci soit environ du même acabit (puissance) que vous.

3. L’égalité entre tous les membres de l’Armada est de mise. L’Arrogance, la vengeance et la violence sous toutes ses formes sera punie sur le champ par une expulsion. 

4. La hiérarchie établie ne sera de mise que pour désigner les membres les plus anciens et ceux sachant aider les plus récents. Ainsi, un membre se retrouvant plus haut placé qu’un autre n’aura pas plus d’impact qu’un nouveau membre sur les décisions diplomatiques de l’armada.

5. La barbarie sous toutes ses formes est, le plus possible, à proscrire. Ainsi, il  va de soi que d’attaquer un autre héros à deux reprises alors que sensiblement on vient de détruire ses troupes est désigné comme étant barbare.

6. Lors d’attaques incessantes de la part d’un héros, plutôt que de venger vous-mêmes ces récidives, en faire un communiquer au reste des membres de l’armada afin qu’ils vous appuient dans votre croisade. Ainsi, l’harmonie et l’entraide entre nos membres est demandée.

7. En cas de guerre, l’armada se bat toujours pour la liberté et non pour la gloire, ainsi peu importe ce qu’en sera le résultat, nous aurons néanmoins convaincu certains héros de suivre ce chemin étroit et difficile que représentent nos valeurs. 

8. Les victoires et les défaites importent peu, l’important sera notre appui mutuel afin que tous puissent prospérer sur les chemins de la justice et de la nature. Il ne sera donc pas pris comme objet de jugement ce critère variant chez les héros.

9. Un lieu de rencontre fut créé pour discuter de toute la diplomatie de l’armada, ainsi, votre présence est demandée lors de toutes décisions influentes. Nous pouvons, bien entendu, comprendre le manque de temps. Il vous sera également demander de participer à la vie de ce site en parlant des activités tant militaires qu’économiques de votre héros, sans exagération [Allusion au revenu qui change toutes les minutes].

10. Comme l’harmonie est une valeur, le partage en est partie flagrante. Ainsi un communiqué concernant vos objets inutiles serait demandé sur le lieu de rencontre afin d’aider vos compagnons. 

11. Lors de chacun de vos mouvements, la liberté, la justice et l’amour de ce qu’est le monde naturel est requis afin de vous donner confiance de la vie qui vous entoure et du monde que cherche l’armada. 

12. Obéir à ces onze commandements lorsque l’harmonie y est et quand notre conscience nous le permet, car la vaillance reste une partie importante en nous, car dès votre entrée parmi «Les Augures Boréals», vous devez une unité avec nous. Une seule et même chose qui doit être semblable, sans être exactement pareille, soudée par nos différences et notre amour pour les sept valeurs de l’armada; soit l’égalité, la justice, la liberté, la paix, l’harmonie, la loyauté et l’amour de la nature. 

Hiérarchie des Augures Boréals:

 Comme toutes les sociétés, l’armada «Les Augures Boréals» possède sa propre hiérarchie. Celle-ci n’est là que pour évaluer l’ancienneté des membres et leurs connaissances relatives du jeu. Ainsi, dès votre entrée parmi nous, un poste vous sera attribué, mais celui-ci n’identifie aucunement vos pouvoirs ou vos devoirs envers la guilde. Les «grades» suivants sont placés en ordre croissant. 

Devins(es) discret (ètes):
&#9675; Normalement discret dans son jeu, ce membre de l’armada constitue une sorte de visée par les chefs. Ceux-ci seront de nouveaux héros ou encore des braves n’ayant pas encore compris le monde hostile que représente Kalamaï. Ceux-ci seront donc appuyés par leurs compagnons plus savants à ce sujet.

Voyants(es) débutants(es):
&#9675; Ces membres auront une connaissance du monde de Kalamaï, ils auront les bases, ce qui les renforce, etc. Ils sauront aidés brièvement, ou énormément, les membres plus récents.

Visionnaires confirmés(es):
&#9675; Membres ayant acquis une certaine réputation au sein de l’armada, ils seront en position d’aider leur prochain afin de les guider dans le système de l’armada et la connaissance du monde. Ils auront également des connaissances plutôt élevées.

Prophètes vaillants(es):
&#9675; Ceux-ci seront des membres anciens de l’armada et auront des connaissances plus que raisonnable sur le monde de Kalamaï. Ils connaîtront l’hostilité et les bonnes stratégies pour défendre nos sept valeurs.

Oracles vétérans:
&#9675; Plus qu’anciens parmi l’armada, ils se sont cultivés et ont atteint cette place pour instruire tous les gens de l’armada. Ils sont ainsi reconnus pour leurs bons services auprès de nos valeurs et pour le cœur qu’ils ont voué à nos causes.

Augures uniques:
&#9675; Uniques en leur genre, ce titre est réservé aux deux fondatrices. Celles-ci possèdent toutefois un autre titre, soit «Révolutionnaire des justices» pour Enephia et «Émettrice de paix» pour Malia. Ainsi, ces titres ne seront accessibles qu’aux deux chefs de l’armada.

Serment de l’armada:
 Lors de sa création, l’armada a créé un serment, qui n’est pas obligatoire de réciter, mais qui néanmoins se voit accordé beaucoup d’importance. Celui-ci met les membres sous la promesse de respecter les commandements et de vouer cœur et âme à entretenir les sept valeurs. 

« Moi, (Nom du personnage), jure par le présent serment une fidélité continue à ce code de vie que l’on nomme «la table des visionnaires» et de dévouer ma cause à propager les sept valeurs, ou «valeurs des étoiles», tenant à cœur à cette armada, soit la loyauté, la paix, l’harmonie, la liberté, l’amour de la nature, l’égalité de tous et l’amour de toutes choses existantes. Je jure par le fait même, et ce solennellement, que ces valeurs me tiennent autant à cœur qu’aux fondatrices originales de l’armada «Les Augures Boréals». Le royaume de (Nom du royaume) prête ainsi allégeance à Etimnon et à Kalamaï. Me voilà maintenant un(e) augure boréal(e), un(e) pur(e) et un(e) vrai(e). »
', 296742, 'http://augures-boreals.forumgratuit.ca'),
(11, 'Les Ligues Unifiées', 'Zakinthe', 3, 21624073, 'http://www.noelshack.com/uploads/images/9442766748888_result.jpg', 'Criton', 'Les Ligues Unifiées des Négociants Libres de Zakinthe, parfois connues sous le nom des ligues de Zakinthe, les ligues unifiées, ou simplement des ligues, sont une organisation qui dirige Zakinthe depuis l’ascension de Megiddo. 
Les ligues surveillent tous les échanges économiques qui transitent par Zakinthe et commandent tous les échanges maritimes et aériens de la province. Avant leur unification par Megiddo, les diverses ligues se querellaient sans cesse, luttant entre elles pour la suprématie, et n’hésitant pas à engager des pirates et des mercenaires pour piller la cargaison d’une ligue rivale. Trahison et fourberie était omniprésentes. L’arrivée de Megiddo et de son armée bouleversa à jamais la province de ces seigneurs marchands comme en témoigne le récit que nos allons vous conter :

L’histoire des Ligues Unifiées… Une histoire étonnante pour une armada qui n’en finira jamais d’étonner Kalamai… Une histoire oubliée de tous dû au manque d’écrits et d’archives… Une histoire fabuleuse dans laquelle se sont alliés mythe et réalité, constituant ainsi le passé et le fondement de l’armada commerciale la plus redoutée de tout les temps.
Au commencement, dans un lointain continent sous l’emprise de puissantes alliances, il y avait un homme qui avait de très grands projets. Connu pour la cicatrice ornant son visage, son épée à deux mains gigantesque et son manque total de pitié, Megiddo était considéré comme un des seigneurs les plus puissants du monde connu. Son statut lui permis de travailler sans attirer l’attention des puissants de ce monde. Dans l’ombre, il constitua une organisation de plusieurs milliers d’hommes armés, de centaines de machines de guerre, s’entoura de puissants officiers et organisa l’ensemble sous la forme d’une organisation timocratique. C’est ainsi que la plus prospère nation de seigneurs marchands au monde fut crée, elle fut nommée la Ligue. Pendant plusieurs années, la Ligue développa son potentiel économique tel un champignon. Elle gagna ainsi inexorablement de nouveaux marchés. Le chemin parcouru par les ligueurs fut semé de cadavres et de banqueroutes. Jusqu’au jour ou Megiddo mis son plan à exécution : il tenta de s’emparer militairement de la province voisine de Zakinthe, Prévèze, avec l’aide de ses hommes. La bataille fut féroce, la presque totalité des ligueurs furent tués par les terribles bouchers de So et leurs alliés tandis ce que les autres battaient en retraite vers leur terres.
Alors que la bataille semblait se terminer, les membres de l`Ordre des Templiers de la Loi Empirique, la plus puissante armada de la région, entra en guerre contre les forces de Prévèze. Sans le vouloir, cette intervention sauva les derniers ligueurs d’une mort certaine. Tandis que les Templiers hissaient leur bannière en haut de la capitale de Prévèze, célébrant ainsi leur victoire sur les terribles bouchers, Megiddo médita sur sa défaite. Certes, il avait perdu cette bataille mais il avait apprit beaucoup de ses ennemis.
En l’espace de quelques mois, il réorganisa complètement les ligues, les faisant passées à un système corporatiste hiérarchisé et unifié. Les puissantes ligues sont désormais prêtes pour la guerre, déterminées à vaincre quiconque mettra en doute leur suprématie naissante.
', 'Qu’es ce que les Ligues Unifiées ? 
Nous sommes un regroupement de royaumes indépendants issus de l’ancienne ligue crée par l’empereur de notre province : Megiddo. Notre but est d’affirmer notre hégémonie militaire, politique et économique sur Kalamai.

Une bonne coordination est essentielle c`est pourquoi les ligues sont divisées en fonction de leur secteur d’activité au sein de l’industrie de Zakinthe. On trouve notamment parmi elles la célèbre ligue des Charpentiers et Maçons, la très compétente ligue des Forgerons et Fondeurs, la renommée ligue des Bateliers et Navigateurs ou bien encore la redoutable ligue des Golémanciens et Inventeurs.', 'En tant qu’organisation composée d’un nombre restreint de seigneurs, l’intérêt de grades interne est faible. La création d’un forum n’est pas prévue seulement une présence minimum hebdomadaire sur le chat de province est imposée.
Chaque ligueur se doit de maîtriser parfaitement au moins une langue (par exemple le français) de façon à ce que les autres seigneurs puisse comprendre intelligiblement ce qu’il a dire.

Les titres:

Signe de distinction honorifique, les titres sont décernés aux seigneurs non membres de l’armada ayant un rapport avec les Ligues. Il peut être affiché dans la description de personnage. Les 4 titres sont : 
 
Partisan des Ligues : Décerné à un seigneur qui a un lien quelconque avec notre armada.

Ami des Ligues : Décerné à un seigneur qui a montré son intérêt pour notre armada au travers d’actions militaires 
ou économiques.

Compagnon des Ligues : Décerné à un seigneur qui à combattu vaillamment à nos cotés. C’est le seul titre qui ne peux être obtenu automatiquement par la réputation d’armada.

Allié des Ligues : Décerné à un seigneur qui a gagné le respect et l’amitié de notre armada.

Notre diplomatie :

Nous classons les autres armadas de Kalamai dans les catégories suivantes :
Armada neutre : Pas d’intérêts communs ni d’animosité.
Armada Partenaire : Accords commerciaux, vente d’arme, mercenariat… Tous les membres gagnent le titre de partisans.
Armada Signataire : A signée un pacte de non-agression. Tous les membres gagnent le titre d’amis.
Armada Sœur : A gagnée notre respect et notre amitié. Tous les membres gagnent le titre d’alliés.

', 89223, 'http://'),
(13, 'Confrérie des Ombres', 'Édhesse', 0, 21666962, 'http://api.ning.com/files/D58P6DfhWBW6IT0mWlg15kugwGOAZctT4*jzHcV7jAqHlZqfJY5dHp0yjnc6uMQHlBFl2WBIS8oWmD2C7hZ0wXBLn9u77*fc/Vampires12.jpg', 'Skaad', 'Il faut savoir que le nosferatu, communément appelé vampire, ne meurt pas, comme l``abeille, une fois qu``il a fait une victime. Au contraire, il n``en devient que plus fort ; et, plus fort, il n``en est que plus dangereux . Il se sert de la nécromancie et de la démonologie, arts qui, comme l``indique l``étymologie des deux mots, consistent à évoquer les morts pour deviner l``avenir, à les ranimer et à contrôler les démons. Tous les morts dont il s\'approche sont donc à ses ordres. Il peut, avec pourtant des réserves, se transformer en une énorme chauve-souris, et se déplacer plus vite qu\'un étalon au galop; il a même le pouvoir, dans une certaine mesure, de se rendre maître des éléments : la tempête, le brouillard, le tonnerre, et de se faire obéir de créatures inférieures, telles que le rat, le hibou, la chauve-souris, la phalène, le renard et le loup ; il peut se faire grand et se rapetisser et, à certains moments, il disparaît exactement comme s``il n``existait plus. Nous, les vampires, venons des ténèbres, il est dans notre nature de répandre le mal et la peur. C``est ce que nous avons fait à de nombreuses reprises dans l``empire de Kalamai . Hélas, nous avons été vaincus et affaiblis et notre plan de domination sur toutes les terres connues a échoué. Mais aujourd``hui , après avoir patiemment reconstitué nos forces pendant des siècles, nous sommes enfin prêts à annihiler tous nos ennemis et à prendre la place qui nous reviens de droit. Aucune race ne pourra nous arrêter et même les pouvoirs des anciens sont dérisoires face aux forces que nous ont accordé nos dieux noirs. Nous nous répandons partout et la Corporation des Arcanes, la seule qui ait la puissance pour nous contrer, est rongée de l``intérieur par nos agents. Aucun Dante ne viendra vous sauver, servez les ténèbres ou vos âmes seront torturées pour l``éternité et votre sang abreuvera à jamais notre soif insatiable. Toutefois, nos dissensions internes ont causé jadis notre perte c``est pourquoi les vampires et leurs alliés ténébreux se sont réunis dans dans une confrérie : la Confrérie des Ombres . Même nos amis tremblent à l``idée de prononcer le nom funeste de notre armada... ', 'Notre but ultime est la domination éternelle des Ténèbres sur l``empire de Kalamai et toutes les terres connues, les impurs doivent adorer les dieux noirs .
', 'Les ténébreux n``ont pas de règles, la loi du Talion règne, et la seule chose qu``un ténébreux respecte, c``est son seigneur.
Tue ou soit tué c``est tout ce qui importe .', 0, 'http://do-shadow-lords.xooit.fr');



CREATE TABLE `11apr_guerres_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '0',
  `valide` varchar(10) NOT NULL DEFAULT '0',
  `initiateur` varchar(80) NOT NULL DEFAULT '',
  `guilde1` varchar(80) NOT NULL DEFAULT '',
  `guilde2` varchar(80) NOT NULL DEFAULT '',
  `indep1` text NOT NULL,
  `indep2` text NOT NULL,
  `declaration` text NOT NULL,
  `vainqueur` varchar(80) NOT NULL DEFAULT '',
  `dateDebut` int(11) NOT NULL DEFAULT '0',
  `puissDebut1` int(11) NOT NULL DEFAULT '0',
  `puissDebut2` int(11) NOT NULL DEFAULT '0',
  `dateFin` int(11) NOT NULL DEFAULT '0',
  `puissFin1` int(11) NOT NULL DEFAULT '0',
  `puissFin2` int(11) NOT NULL DEFAULT '0',
  `cond1` varchar(20) NOT NULL DEFAULT '',
  `val1` int(11) NOT NULL DEFAULT '0',
  `cond2` varchar(20) NOT NULL DEFAULT '',
  `val2` int(11) NOT NULL DEFAULT '0',
  `cond3` varchar(20) NOT NULL DEFAULT '',
  `val3` int(11) NOT NULL DEFAULT '0',
  `andor` char(3) NOT NULL DEFAULT '',
  `prop1` varchar(20) NOT NULL DEFAULT '',
  `valp1` int(11) NOT NULL DEFAULT '0',
  `prop2` varchar(20) NOT NULL DEFAULT '',
  `valp2` int(11) NOT NULL DEFAULT '0',
  `prop3` varchar(20) NOT NULL DEFAULT '',
  `valp3` int(11) NOT NULL DEFAULT '0',
  `andorp` char(3) NOT NULL DEFAULT '',
  `proposeur` varchar(80) NOT NULL DEFAULT '',
  `nbrAttaVict` double NOT NULL DEFAULT '0',
  `nbrAttaDefa` double NOT NULL DEFAULT '0',
  `nbrDefeVict` double NOT NULL DEFAULT '0',
  `nbrDefeDefa` double NOT NULL DEFAULT '0',
  `nbratta1` double NOT NULL DEFAULT '0',
  `nbratta2` double NOT NULL DEFAULT '0',
  `nbrvict1` double NOT NULL DEFAULT '0',
  `nbrvict2` double NOT NULL DEFAULT '0',
  `xp1` int(11) NOT NULL DEFAULT '0',
  `xp2` int(11) NOT NULL DEFAULT '0',
  `pertePuiss1` int(11) NOT NULL DEFAULT '0',
  `pertePuiss2` int(11) NOT NULL DEFAULT '0',
  `acres1` int(11) NOT NULL DEFAULT '0',
  `acres2` int(11) NOT NULL DEFAULT '0',
  `prison1` int(11) NOT NULL DEFAULT '0',
  `prison2` int(11) NOT NULL DEFAULT '0',
  `tues1` int(11) NOT NULL DEFAULT '0',
  `tues2` int(11) NOT NULL DEFAULT '0',
  `detruits1` double NOT NULL DEFAULT '0',
  `detruits2` double NOT NULL DEFAULT '0',
  `or1` int(11) NOT NULL DEFAULT '0',
  `or2` int(11) NOT NULL DEFAULT '0',
  `ressources1` int(11) NOT NULL DEFAULT '0',
  `ressources2` int(11) NOT NULL DEFAULT '0',
  `PGCj1` varchar(25) NOT NULL DEFAULT '',
  `PGCj2` varchar(25) NOT NULL DEFAULT '',
  `PGCxp1` int(11) NOT NULL DEFAULT '0',
  `PGCxp2` int(11) NOT NULL DEFAULT '0',
  `PGCatta` varchar(25) NOT NULL DEFAULT '',
  `PGCvainqueur` varchar(25) NOT NULL DEFAULT '',
  `cache` int(11) NOT NULL DEFAULT '0',
  `leaver1` text NOT NULL,
  `leaver2` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

INSERT INTO `11apr_guerres_1` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
(1, 'guerre', 'termine', '', 'L`Ordre de So', 'L`Orchidée', '', '', 'La Boucherie est un peu triste, en c`moment, vous trouvez pas ?

Rien de tel que quelques fleurs pour égayer l`ensemble. Malheureusement, le fleuriste, c`est un peu cher, et on a pas envie de se retrouver avec un meurtre sur l`dos. Ça demande un peu de paperasse, après, comprenez ? Donc, on va pas le tuer pour lui piquer ses trucs.

On a donc décider d`aller en cueillir nous-mêmes.

A la hache.

Sus à l`Orchidée, les amis !

Fitzebist !
', 'L`Orchidée', 21481768, 138276, 163306, 21507453, 141583, 137373, 'pertePuiss', 3000000, 'detruits', 12, '', 0, 'OR', 'Butin total', 690941, 'detruits', 5, '', 0, 'AND', 'L`Ordre de So', 128, 39, 33, 82, 158.710816038, 109.95313702, 149.489359326, 117.063759188, 84912, 107634, 3013773, 2490658, 613870, 429417, 205984, 144362, 142215, 90824, 5.50325067565, 4.925323349, 885319, 451145, 1064, 452, 'Olg le Gras', 'Fansel', 357, 3177, 'Olg le Gras', 'Fansel', 0, '|Vincze|', '|Grandgor|Ilgansil|Aerandir|'),
(2, 'guerre', 'termine', '', 'L`Ordre Célestial', 'L`Orchidée', '', '', 'Vos manigances contre L`Ordre Célestial sur la place publique sont innaceptables!

Faute de pouvoir s`en prendre à L`Ordre des Templiers de la Loi Empirique par la même occasion, nous nous contenterons donc de vos pauvres terres marchandes!

Les Célestiaux et leurs alliés sont en marche pour Thassopole!!!', 'L`Ordre Célestial', 21495791, 333616, 179262, 21507811, 325150, 179225, 'xp', 55000, 'pertePuiss', 1700000, '', 0, 'AND', 'Butin total', 1082116, '', 0, '', 0, '', '', 67, 13, 17, 43, 80.9227186891, 46.9224568448, 84.4267944058, 43.1360706906, 76053, 30876, 1150245, 1734066, 285846, 201573, 181824, 50251, 119535, 36759, 10.9104274684, 1.18065670899, 613779, 331724, 552, 203, 'Dalan', 'Millania', 8436, 893, 'Dalan', 'Dalan', 0, '', '|Grandgor|Ilgansil|Aerandir|'),
(3, 'guerre', 'termine', '', 'Les Alliés de l`Ombre', 'L`Union des Citoyens', '', '', 'Quel que part en Outre-Mer. A la .......... des Alliés de l`Ombre

« Chef !! Chef !! »

« Oui, Almanarre que ce passe t`il ? »

« Je reviens de Vénopole, où j`étais pour la traditionnelle fête du Phœnix. Je participe toujours au concours du lancé de lutin »

« Almanarre pardonnes moi de te couper, mais mon temps est plus précieux que de devoir écouter ta vie débordante, tu es bien brave tu sais, mais Outre-Mer ne se dirige pas en lançant un lutin à sept lieux !

« Ahhh bon, vous n`aimez pas le lancé de lutin ? »

« Ce n`est pas question d`aimer ou pas, juste que je me contre fout de ton histoire de lancé de lutin. »

« Oui, vous n`aimez pas. Je connais des gens qui n`aiment pas çà aussi. D`ailleurs y la league-pro de Naxos qui a porté réclamation, parce qu`il refuse le troisième ... »

« ALMMMAAANARRE ! En restant très calme. Foutez moi le Cammmmmpssss !!! »

Almanarre se dirigeant ver la porte :
« Bon, si vous n`aimez pas, c`est pas la peine de vous énerver pour çà. Tssssss »

En parlant plus bas :
« Il s`énerve même pas parce que l`UC s`est installé en Vénopole »

Vilsaen ayant entendu marmonner UC, demanda à Almanarre :
« ALLMMMAAANNNARRE !! revient là et reprend ce que tu dis ! Juste à l`instant, de quoi UC ???? »

Almanarre se retournant :
« Ben comme je viens de vous dire, mais vous ne voulez pas m`écouter, l`UC s`est installé en Vénopole »

«Non vous n`avez pas dis çà, vous avez parlé de vos lutins »

« Ahh non vous avez pas compris, je possède pas de lutin, je les lance, c`est un sport pour nous les Ogres........; »

« Encore une seule fois Lutin, et vous vous retrouvez aux monastères des Templiers à compter des petits poids toute votre vie. Donc l`UC en Vénopole ??? mais vous les avez vu ?»

« Oui, oui, il y a le même château, vous savez le tout vieux châteaux, celui où nous allions pisser derrière, avec Cendrine. C`est bizarre quand même en y pensant, c`est le château ou le monde qui bouge ? »

« C`est profond ce que vous dites là Almanarre, vraiment profond.... »

« Ah vous dite comme çà chez vous, nous on dit intéressant, c`est intéressant ce que vous dites, en tout cas c`était bien le Château de l`UC »

« Le Château de l`UC, mais bien sur, et vous allez me dire aussi que on y voit Daneel prendre son petit déjeuner au balcon et faire des ballades en forêt ? Si c`est çà .... rassurez moi, il met son peignoir au moins ! »

« Ben oui »

« QUOI oui ! »

« Il met son peignoir, mais comment vous savez qu`il fait des ballades en forêt ? Vous l`avez vu aussi ? »

« Non je ne l`ai pas vu, et trop long a vous expliquer pourquoi je sais......
Bon rassemblez les hommes nous irons voir de nous même si ils ont bien emménagé. Au cas ou ils seraient étonnés de nous voir, je répondrais que nous venons pour la crémaillère ! Mouhahahahhah que je suis fourbe ! Allez prévenir les autres !»

« Cinquième ! »

« QUOI cinquième ???? »

« Ben du concours, vous savez le lancé de lutin ........ »', 'L`Union des Citoyens', 21500372, 218414, 203996, 21510453, 199945, 277292, 'xp', 55000, '', 0, '', 0, 'AND', 'Butin total', 175520, '', 0, '', 0, '', '', 74, 13, 19, 110, 76.2412914999, 131.42346649, 81.820560566, 124.776959928, 59298, 96373, 2376079, 1880883, 284647, 458489, 159438, 247647, 106625, 167450, 2.59190196783, 1.87995030525, 1309242, 1076040, 908, 771, 'Anair&euml;', 'Turfel', 1508, 6339, 'Anair&euml;', 'Turfel', 0, '', ''),
(4, 'guerre', 'termine', '', 'L`Ordre de So', 'L`Orchidée', '', '', 'Vous croyiez nous avoir repoussés ?

Vous pensiez que nous renoncerions à notre bouquet ?

J`insiste, nous voulons nos fleurs, et nous les aurons !

Fitzebist !', 'L`Ordre de So', 21507457, 156065, 151926, 21556287, 212870, 184617, 'nbrvict', 200, '', 0, '', 0, 'AND', 'Butin total', 2274722, '', 0, '', 0, '', '', 193, 34, 20, 89, 215.923931985, 104.650915364, 200.185119575, 119.24382942, 114278, 188202, 4983005, 3379839, 882162, 388682, 606970, 233358, 436161, 140142, 16.235907286, 2.01758043576, 2406453, 1347076, 1914, 538, 'Seymour', 'Tulkas', 836, 6266, 'Tulkas', 'Tulkas', 0, '|Julis|Arganor|Olg le Gras|Tadzam CoupeVent|Nragax|', '|Vezk|Gokily|'),
(5, 'guerre', 'termine', '', 'L`Ordre Célestial', 'L`Ordre de So', '', '', 'Tiens, encore ces gue-guerres?

Cette fois-ci, afin d`égaliser les scores, nous nous attaquerons aux autres!

(Je ne suis pas un fin diplomate, vous direz... Et vous aurez probablement raison!)

Aux armes, combattants de So!!', 'L`Ordre Célestial', 21518035, 298629, 148627, 21535947, 230144, 158799, 'xp', 40000, '', 0, '', 0, 'AND', 'Butin total', 810380, '', 0, '', 0, '', '', 28, 12, 12, 34, 40.2429294261, 37.9561871997, 40.068676589, 38.0363559286, 41305, 16264, 515974, 835554, 116164, 158926, 73724, 65356, 52604, 50841, 1.08368806837, 1.74463643131, 314528, 242827, 160, 264, 'Tirandilis', 'Demetron', 8842, 966, 'Demetron', 'Tirandilis', 0, '|Shalimare|', '|Olg le Gras|Tadzam CoupeVent|'),
(6, 'guerre', 'termine', '', 'L`Ordre Célestial', 'L`Ordre des Templiers de la Loi Empirique', '', '', 'Nous n`en demandions pas plus!

Voyons voir comment vous vous défendrez lorsque l`enjeu est plus important que la simple victoire ou la défaite d`un unique guerrier!

Car, après tout, ce monde n`en est-il pas un de communauté et d`équipe?', 'L`Ordre Célestial', 21518041, 298629, 79678, 21551939, 264581, 73197, 'xp', 60000, 'pertePuiss', 1100000, '', 0, 'AND', 'Butin total', 236795, '', 0, '', 0, '', '', 37, 12, 15, 56, 50.2313565974, 55.8729231362, 52.708461271, 52.0132466502, 61731, 58786, 2000653, 1396605, 257451, 303021, 95220, 124011, 81872, 79918, 0, 0, 536651, 681953, 313, 404, 'Pyaray', 'T&ecirc;te-Plate', 1167, 11348, 'T&ecirc;te-Plate', 'T&ecirc;te-Plate', 0, '|Shalimare|', '|Galaway|Vezk|'),
(7, 'pna', 'termine', 'L`Ordre de So', 'L`Ordre des Templiers de la Loi Empirique', 'L`Ordre de So', '', '', 'Messieurs Dames les Bouchers ,

Nous autres, Templiers, préparons un Opulent banquet ! Nous sommes 6 pour le moment, il reste de la place autour de notre table.
Viendrez-vous vous repaitre parmi nous ? Nous avons d\'ores et déjà 12 gras chapons bien gavés à notre disposition. 

Avez vous une recette à me proposer ? Prenons le temps de discutailler de tout cela autour de cette bière de monastère de couleur noire bien tiêde dnt nous avons le secret ! 

Carrément,

Tête Plate', '', 21523273, 98247, 144875, 21570884, 80180, 266166, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 1, 0, 0, 1.01153564725, 0.922929582231, 0, 1982, 485, 17458, 56171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Birgenn', 'Seymour', 2147, 485, 'Seymour', 'Birgenn', 0, '', ''),
(8, 'guerre', 'termine', '', 'Les Alliés de l`Ombre', 'L`Union des Citoyens', '', '', 'Quel que part en Outre-Mer. A table des Alliés de l`Ombre

Vilsäen Chef des Alliés, Baduit, Cassandre, Anaïre et Malorus sont à la taverne des Alliés.

« Chef ! Chef ! »

« Oui mon petit Baduit ? »

Baduit montrant du doigt son visage « Regardez, là ! »

« Je ne vois rien Baduit ? Une cicatrice? c`est çà ? »

Baduit montrant plus précisément sur son menton : «  Mais non juste là ! »

Cassandre s`esclaffant ! «  Ohhhhh un poilllll !!! »

Baduit reprenant : « Un poiiiiilllll, ouiiiiiiii, enfinnnn, 1020 ans que j`attends cela !!!! »

Vilsäen s`approchant de Baduit, lui saisit le visage, et colla ses yeux sur le menton afin de pouvoir en distinguer le fameux poil. C`est à cet instant que Galmin franchit la porte de la taverne, et vu de dos son jeune frère dans les bras de Vilsäen, joue contre joue.....

D`un coup, Galmin pris à deux mains son marteau géant, en s`écriant :

« Esspppèce de vieux pervers lubrique, tu vas lâcher mon frère tout de suite, par la Rage de Kanderak, que les dieux me pardonne !!!! Raaahhhhhhhhh »

Et il donna un coup violent dans le torse de Vilsäen, l`envoyant valdinguer contre les tables ....

« Non, mais çà va pas Galmin ????? » s`écria Cassandre

« Frère ne t`inquiète pas, je montrais juste mon poil au Chef, je viens de le voir ce matin, il a du sortir dans la nuit !! »

« Comment çà Baduit, fais voir ! » Galmin s`approchant de Baduit. « Mais oui, c`est un grand jour, mon frère est grand ! Tu es devenu un elfe adulte !!»

Note du rédacteur : Les Elfes sont immortels ou alors possèdent une longévité exceptionnelle. Une fois à l`âge adulte, ils ne vieillissent pas, oui l`elfe est beau, raffiné, il parait toujours jeune, et naturellement imberbe. Le passage à l`age adulte se caractérise par la pousse d`un poil, un seul, régulièrement sur le visage. C`est pour cela que l`elfe n`aime pas le nain, les nains c`est petit, laid et plein de poil, tout le contraire....le rédacteur est partial, non pas du tout !! reprenons....

Cassandre se mit a sauter dans toute la Taverne en chantant : « On va faire une guerre ! On va faire une guerre ! On va faire une guerre ! »

Les autres, sauf Malorus, d`un ton agacé : « Cassandre !!! »

Cassandre: «  oh c`est bon ...quoi !! ....... de toute manière, c`est la tradition, Baduit devient un adulte, il faut organiser sa Nibelunkill »

Anaïre : «  Sa quoi ? »

Tous sauf Malorus : « Saaaaa NIBELUNKILL !!!!  Yaaaahhhouuuuu ! »

« Certes, mais c`est quoi çà ??? comprend pas là » s`étonna Anaïre !

Vilsäen s`étant repris du coups de Galmin : «  C`est la chasse traditionnelle des Elfes, grand rituel chez eux, du passage de l`enfant à l`adulte, pour cela il faut que le jeune Elfe ramène le scalp de la barbe de tous les nains d`une contrée ! »

Cassandre : «  On va chasser du nain, on va chasser du nain, on va chasser du nain !! »

Les autres, sauf Malorus, d`un ton lassé, désespéré... enfin vous comprenez quoi: « Cassandre !!! »

Vilsäen regarda dans ses parchemins, où il consignait toutes les informations stratégiques de Kalamai : «  Alors, où avons nous le plus le nains, hummm... un seul à l`Orchidée, hummm oui c`est çà, rien là,......... ouuhhhhh mais c`est un véritable nid par ici.... Ahhhhahahahah Vénnnoppolllee !! Quel bel hasard ! »

Vilsäen s`écriant à tous : « Camarade, je crois que nous avons du chemin à faire pour la Nibelunkill de Baduit, nous partons pour Vénopole on va refaire la fête aux Citoyens, la dernière fois nous nous sommes couché un peu tôt lors de la soirée, alors ce coups-ci, ON LES COUCHE TOUS !!  Baduit charge à toi de sclaper de la barbe de nain ! »

Tous sauf Malorus : « NIBELUNKILL , Baduit, NIBELUNKILL, Baduit !!!!  Yaaaahhhouuuuu ! »

Vilsäen : « Allez vous préparer ! »

Tous s`en allant vers la porte de la taverne, Galmin étant le dernier de la file...Vilsäen en profite pour lui demander : « Galmin attend, deux petites choses.... »

Tout en se retournant Galmin fut surpris par le coups violent d`une balayette qui lui fit perdre son équilibre, Vilsäen dans son geste saisi le marteau de Galmin, profitant que celui si se retrouvait sur le ventre, et lui mis......... ouhhhhhhhhhh mes enfants cela doit faire très très mal...........

« Première chose, c`est la dernière fois que tu portes un coups sur moi, je pense que tu ressent bien le sens de ma phrase ! » s`écria Vilsäen.

« Arrrgggghhhhhhh , oui je crois que je le sent bien.... en effet, c`est le sens du respect c`est çà ?....  »

« Tout à fait, et deuxièmement voici l`adresse pour te le faire enlever, rejoins nous vite en Vénopole... mouahahahhah »
', 'L`Union des Citoyens', 21537804, 361487, 363032, 21547885, 287081, 362603, 'xp', 100000, '', 0, '', 0, 'AND', 'Butin total', 499976, '', 0, '', 0, '', '', 48, 19, 32, 112, 65.1655034917, 150.151931228, 77.6676945707, 133.774159293, 89867, 137827, 3498342, 2709346, 209166, 603228, 132250, 237168, 79174, 144381, 0, 4.02533790854, 959790, 1591407, 598, 861, 'Galmin', 'Turfel', 10418, 5106, 'Galmin', 'Galmin', 0, '|Cen&eacute;ndil|Rahkam|Miroslaw|', ''),
(9, 'guerre', 'termine', '', 'L`Orchidée', 'L`Ordre de So', '', '', 'Les doigts d`Orium trottez machinalement sur les accoudoirs de son siège...

"Bon... alors on fait quoi maintenant?"

Tulkas regardais Lupo dont l`intense réflexion était un spectacle à part entière!
Il finit par s`exprimer aussi brillamment qu`un barbare le peu :

"SO-DO...I..."
Puis il éclate de rire!

"Très bien, cette bonne humeur annonce la guerre les amis! A vos armes So,rien ne nous arrêtera!!"', 'L`Orchidée', 21556427, 188956, 221221, 21566529, 278328, 284425, 'xp', 60000, 'pertePuiss', 1000000, '', 0, 'AND', 'Butin total', 909156, '', 0, '', 0, '', '', 19, 4, 5, 30, 23.3602332552, 33.6921176787, 23.7081461138, 32.3953972112, 74730, 36735, 1091746, 1958107, 114739, 144293, 58126, 112687, 38655, 74092, 2.18394425972, 0.878006801468, 557133, 466156, 156, 334, 'Fansel', 'Axeolu', 7832, 1096, 'Axeolu', 'Fansel', 0, '', ''),
(10, 'guerre', 'termine', '', 'L`Ordre de So', 'Les Augures Boréals', '', '', 'La guerre… L’escoquerie… La mesquinerie…

La violence en général, au final.

Ben, nous autres, Bouchers, on trouve qu’il y a qu’ça d’vrai !

Fitzebist !
', 'Les Augures Boréals', 21570920, 264771, 73367, 21582309, 241618, 115362, 'nbrvict', 150, 'xp', 60000, '', 0, 'OR', 'Butin total', 1492783, '', 0, '', 0, '', '', 17, 12, 6, 51, 27.4147643325, 40.2515467699, 21.7866027811, 44.0710461699, 49053, 60196, 2109786, 1002940, 114378, 292156, 52464, 98693, 34364, 58996, 0, 3.28313020042, 384464, 577107, 135, 315, 'Seymour', 'Alumdil', 608, 6748, 'Seymour', 'Alumdil', 0, '|Durshak le Borgne|Arthurik|', ''),
(11, 'guerre', 'termine', '', 'Les Alliés de l`Ombre', 'L`Ordre Célestial', '', '', 'Quelque part en Outre-Mer, à la taverne des Alliés de l`Ombre. 

« Chef, Chef !! »

« Oui Almanarre, je t`écoute ? »

« Ben rien en fait. Ça va sinon vous ? »

« Ben écoute ça va, ça va ! »

« La famille ? Les enfants ? Tout roule ? »

« Oh oui grâce à dieux ça va, ça va ! »

Cassandre arrive dans la salle.

« Ahh vous allez bien les amis ? » Demande Cassandre.

« Oui oui ça va, ça va, et toi ? La famille, les enfants ? »

« Oui oui grâce à moi ça va, ça va ! »

« Bon on s`ennuie un peu beaucoup en ce moment ..... cela vous dit un Scrabble Troll ? »

« Oh oui !! » répond Cassandre 

Cassandre installe le jeu, et distribue les lettres à tous.

« C`est Almanarre qui commence ! » ordonne Vilsäen

Oui dans la version du Scrabble troll, c`est le chef qui définit les règles du jeu, et donc qui commence et qui joue... d`ailleurs on sait qui gagne, c`est le chef.

« Ok, ok, alors 6 lettres : GUERRE , avec mot compte double troll »

« Cassandre ? »

« Alors moi je prends le G, et rajoute ROS et fais GROS »

Vilsäen qui peut choisir les lettres aussi, a évidement choisi les Z, Y, X qui rapportent le plus de points, et place souvent des petits mots avant de trouver la bonne place pour celui qui rapportera 1000 pts Troll.

[...]

« Excellente idée Almanarre !! » reprit Vilsäen.

« Allez hop ça va nous dérouiller un peu, on va allez faire la guerre à l`Ordre Célestial !! »', 'Les Alliés de l`Ombre', 21580523, 550534, 318028, 21608459, 668916, 284399, 'nbrvict', 220, 'pertePuiss', 2000000, 'xp', 70000, 'AND', 'Butin total', 712328, '', 0, '', 0, '', '', 206, 28, 17, 107, 232.269231715, 99.5279172618, 220.894697816, 107.156654665, 232168, 262613, 8316964, 5281872, 1586112, 766857, 457467, 382796, 278615, 224111, 35.4962526934, 0.796098458652, 3280414, 3164759, 3006, 1402, 'Baduit', 'Pyaray', 2099, 13992, 'Baduit', 'Pyaray', 0, '|Althyn&eacute;a|', '|Axilias|'),
(12, 'guerre', 'termine', '', 'L`Ordre de So', 'Les Alliés de l`Ombre', '', '', 'Salut à vous, bande de...

Euh...

Enfin voilà, par chez nous, barbares, on aime pas trop la grossièreté.

Un petit de cours de savoir-vivre, ça vous dit ?

Et ben, allons-y.', 'Les Alliés de l`Ombre', 21582316, 240064, 521941, 21599270, 179533, 441649, 'xp', 100000, 'nbrvict', 150, '', 0, 'OR', 'Butin total', 1560539, '', 0, '', 0, '', '', 19, 13, 15, 71, 22.6890985905, 91.2921482667, 24.0087545972, 88.2032143731, 46979, 100001, 2065753, 1740989, 79904, 367234, 39040, 104529, 25835, 81899, 0.816921285046, 18.6487294816, 488589, 1168725, 152, 517, 'Helmrod', 'Phyleas', 1495, 11447, 'Phyleas', 'Phyleas', 0, '|Snikch|Uthers|', ''),
(13, 'guerre', 'termine', '', 'L`Ordre des Templiers de la Loi Empirique', 'L`Ordre de So', '', '', 'Ordre de So ! 

En déclarant la guerre à ceux qui déclarent la guerre, vous vous exposez à ceux qui aiment attaquer ceux qui attaquent ceux qui attaquent. Autrement dit, les Templiers soutiendront ceux qui défendent tout en ayant attaqué contre ceux qui attaquent ceux qui attaquent !

A l`attaque pour la défense de l`attaque sans défense !', 'L`Ordre des Templiers de la Loi Empirique', 21582649, 88692, 252481, 21603939, 130307, 190865, 'xp', 60000, '', 0, '', 0, 'AND', 'Butin total', 1472769, '', 0, '', 0, '', '', 25, 3, 11, 12, 26.0099151959, 22.621228224, 32.7414531609, 14.370959839, 60030, 28135, 774036, 1958429, 107569, 49121, 70511, 37169, 41614, 33789, 1.78159393922, 0, 639675, 348756, 209, 95, 'Bamdinas', 'Olg le Gras', 4576, 1869, 'Bamdinas', 'Bamdinas', 0, '', '|Snikch|Uthers|'),
(14, 'guerre', 'termine', '', 'L`Union des Citoyens', 'L`Orchidée', '', '', 'La porte venait de se refermer et Daneel avait cesser de compter combien de fois on l`avait dérangé ces derniers jours.

A croire que tous les citoyens s`étaient donné le mot et réclamaient à grands cris une guerre.

Finalement, le meilleur moyen d`avoir la paix sera effectivement de tous leur trouver une occupation. Il pourrait ainsi se plonger dans ce recueil philosophique, terminer ce plan ou bien continuer le tableau de la forêt vu de son balcon.

C`était d`ailleurs la tâche la plus ardue car il ne pouvait perdre que lorsqu`il n`y avait pas Almanarre qui espionnait.
Parce que visiblement, Almanarre, le concept de ne pas bouger ou de se mettre toujours au même endroit le dépassait totalement.

On frappa.

Une seconde!!!!!! Hurla Daneel.

Il prit un ouvrage.

"Alors, les armadas... 
Pfff, six en guerres...
Ah, l`Orchidée est en paix et à la réputation d`en avoir plein en banques. Si je les fait courir après tes prisonniers, je pourrais peut être finir mon tableau. Avec un peu de chances, Almanarre se retrouvera dans un chariot en plus."

"A présent, un prétexte... Voyons... Ah oui."

Daneel griffouilla sur un papier à en-tête et alla ouvrir la porte. Un citoyen y stationnait. Sans lui laisser le temps d`en placer une,Daneel l`interpella:

"Porte ce mot aux représentants de l`Orchidée, le temps est à la guerre!"

Sur le document, le citoyen pu y lire ceci:

"Marchands de l`Orchidée, nous citoyens nous sentons volés par vos prix abusifs sur le marché central des terres de Kalamai. Il me semble juste de venir chercher la monnaie que vous avez oubliez de nous rendre."', 'L`Union des Citoyens', 21595006, 486546, 313551, 21606769, 684780, 242092, 'prison', 1000000, '', 0, '', 0, 'AND', 'Butin total', 1914103, '', 0, '', 0, '', '', 139, 13, 18, 52, 165.740686435, 49.1698326057, 169.472539546, 46.106614746, 175124, 87721, 3446271, 3128279, 1273676, 276250, 1001647, 186314, 797489, 115951, 12.4360669682, 0, 3509849, 1524977, 5250, 939, 'Turfel', 'Gelthasar Belt', 20354, 2180, 'Gelthasar Belt', 'Turfel', 0, '', '|Lupo|Thorgrim|'),
(15, 'guerre', 'termine', '', 'L`Ordre de So', 'Les Augures Boréals', '', '', '"Et le Bien vainquit le Mal, apportant une ère de paix et de sérénité à Kalamaï..."

Vous croyez vraiment qu`ça s`passe comme ça ?!

Ça tombe mal, pas nous. Surtout si on est l`Mal. En plus, la paix et la sérénité, c`est pas compatible avec le coup des tripes.

Ainsi donc : 

Fitzebist !', 'Les Augures Boréals', 21601090, 186659, 194208, 21648496, 213115, 278258, 'tues', 100000, 'nbrvict', 150, 'pertePuiss', 1000000, 'AND', 'Butin total', 3953090, '', 0, '', 0, '', '', 40, 14, 25, 145, 50.9583030358, 160.164520216, 62.0609581741, 150.732060072, 164151, 192600, 5448780, 4025414, 365388, 922413, 201808, 428139, 117596, 327628, 1.64609513401, 7.48620337348, 1728612, 3837545, 353, 1834, 'Olg le Gras', 'Arkatros', 1250, 8991, 'Olg le Gras', 'Arkatros', 0, '|Han Main-Tranchante|Damian|Erchael|', ''),
(16, 'pna', 'termine', 'L`Union des Citoyens', 'L`Union des Citoyens', 'L`Orchidée', '', '', 'Salutations.

Afin de nous remettre de la guerre, je vous propose un PNA d\'une durée équivalente, soit un peu plus d\'une semaine.', '', 21609671, 689057, 268285, 21641134, 613338, 243696, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 1, 0, 0, 0, 1.5, 0, 1.5, 0, 46523, 2774, 242006, 601573, 63002, 0, 35390, 0, 33985, 0, 0, 0, 100000, 0, 136, 0, 'Turfel', 'Meissner', 46523, 3424, 'Turfel', 'Turfel', 0, '', ''),
(17, 'pna', 'encours', '', 'L`Orchidée', 'Les Augures Boréals', '', '', 'L\'Orchidée essaye s\'est déplacé jusqu\'à vos frontières afin de discuter avec vous d\'un pacte de  non agression. Notre voix ne semble pas avoir été entendue...

D\'ou la présente missive.

Nous avons étudié les lois dictant vos armées, l\'histoire de votre groupe, et les contacts que nous avons eu par le passé nous amènent à vous proposer un pacte.

J\'espère que ce sera le début d\'un rapprochement...

Orium, au nom de chacun des membres de l\'Orchidée.', '', 21625500, 288483, 205122, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', ''),
(18, 'pna', 'termine', 'L`Ordre Célestial', 'L`Ordre Célestial', 'L`Union des Citoyens', '', '', 'Entrez un texte pouvant motiver votre cher confrère à accepter votre offre d\'alliance', '', 21620969, 304669, 557668, 21620969, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', ''),
(19, 'guerre', 'termine', '', 'L`Ordre Célestial', 'L`Ordre des Templiers de la Loi Empirique', '', '', 'Après une période de deuil dû au départ de leur grand chef Axilias, l`Ordre Célestial décida d`aller demander aux religieux ce qu`ils pouvait bien faire.
La réponse fut très clair : repentez-vous et aidez-nous à anéantir le mal.
L`Ordre a donc trouver un nouvel objectif : tuer les religieux fanatiques.', 'L`Ordre des Templiers de la Loi Empirique', 21638560, 366663, 172506, 21648643, 370183, 175058, 'xp', 65000, 'temps', 21660160, '', 0, 'OR', 'Butin total', 1813558, '', 0, '', 0, '', '', 8, 8, 1, 22, 15.8729011902, 17.4294668565, 8.8554733943, 22.0690667295, 56965, 71001, 2565486, 1284831, 150458, 182868, 41298, 67259, 24699, 47393, 0, 0.669151728696, 326889, 883279, 95, 328, 'Dalan', 'T&ecirc;te-Plate', 3071, 13192, 'Dalan', 'T&ecirc;te-Plate', 0, '', ''),
(20, 'guerre', 'termine', '', 'Les Alliés de l`Ombre', 'L`Ordre Célestial', '', '', '[...]', 'Les Alliés de l`Ombre', 21646832, 511692, 386404, 21658672, 458768, 290719, 'nbrvict', 75, 'xp', 75000, 'pertePuiss', 1800000, 'AND', 'Butin total', 1768274, '', 0, '', 0, '', '', 67, 18, 8, 57, 85.7113038368, 57.8543417871, 75.291714663, 67.6248682979, 176897, 203895, 5901201, 4118578, 644426, 433092, 237958, 273737, 143316, 190511, 19.3808812905, 0, 2892044, 3222396, 950, 1813, 'Malorus', 'Pyaray', 2279, 15128, 'Malorus', 'Pyaray', 0, '|Aorphen|', ''),
(21, 'pna', 'termine', 'L`Ordre des Templiers de la Loi Empirique', 'L`Ordre des Templiers de la Loi Empirique', 'Les Alliés de l`Ombre', '', '', 'Un geste anecdotique au regard de la main salvatrice que vous nous avez tendue.

Alliés de l\'Ombre ! Les Templiers mettrons tout en œuvre pour qu\'Outre-Mer s\'abreuve du sang et des richesses de nos ennemis communs !', '', 21653829, 145558, 430173, 21658674, 193893, 458768, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', ''),
(22, 'guerre', 'termine', '', 'L`Ordre des Templiers de la Loi Empirique', 'L`Union des Citoyens', '', '', 'De leur cachette, les Templiers observaient Daneel avec attention. Vraisemblablement en peignoir, ce dernier épiais du côté de la forêt. Ses traits étaient tirés, ses yeux cernés, avachit par dieu sait quelle forme de mélancolie. Par cette splendide matinée de printemps, les fesses rafraichies dans la rosée, les six Templiers se fondaient de leur mieux dans ce petit bosquet, à une centaine de pas de Daneel sur son balcon. Leur air était grave et concentré. 
Aujourd`hui, les uns accusent Bamdinas, les autres citent Léoraz, toujours est il qu`une sonorité suspecte suivit de rires étouffés éclata au beau milieu du fourré. Tête-Plate contraint de quitter les lieux sortit en maugréant et en brassant l`air. Il portait un pagne d`une blancheur éclatante. Son regard glacial se plongea dans celui de Daneel, médusé. Il le désigna du doigt et tonna :
« Ecoute moi bien attentivement vieux singe. Mes valeureux Templiers – il fusille du regard les intéressé qui sont au bord des larmes - ….ainsi que moi même, allons mettre un peu de piment dans votre vie morose, assaisonner vos entrailles avec du gros sel, vous faire bruler quelques calories.
M`entends tu pauvre dément ? »

Daneel avait les yeux hagards. Il n`était visiblement plus que l`ombre de lui même. Tête-Plate était consterné : Daneel s`affairait à sa toile avec comme un regain d`inspiration.

Tête-Plate claironna le début des hostilité. Les Templiers se séparèrent pour encercler le château.  Alors, ils levèrent la patte et urinèrent de concert sur les flancs des muraille, comme pour marquer leur territoire. Et c`est sans difficulté que Tête-Plate aspergeât le balcon et son occupant. . .', 'L`Union des Citoyens', 21667438, 195870, 800034, 21677520, 195306, 623331, 'xp', 80000, '', 0, '', 0, 'AND', 'Butin total', 835614, '', 0, '', 0, '', '', 37, 10, 6, 64, 31.6044653249, 71.8048594572, 28.4695362364, 75.9165099386, 76372, 112070, 2035673, 3001267, 329039, 484744, 67875, 112326, 50248, 92642, 0.641307168703, 10.7288510417, 1265251, 1955964, 673, 872, 'T&ecirc;te-Plate', 'Turfel', 3839, 18188, 'T&ecirc;te-Plate', 'Turfel', 0, '|Baduit|Galmin|Trano|', ''),
(23, 'guerre', 'encours', '', 'L`Ordre de So', 'L`Orchidée', '', '', 'Chez nous autres bouchers, on aime bien mettre d`la verdure avec not` tambouille, de temps en temps.

Des champignons, des carottes, des patates, du laurier...

Mais c`est trop (b)anal (hahahahaha...) alors nous innovons avec des... orchidées.

(Oui je sais, ma chute est à chier. Et, pour être poli, je ne dirai pas ce que j`aurais très bien pu dire :) )

Quoiqu`il en soit, les Bouchers repartent à la cueillette !

Fitzebist ! ', '', 21668722, 153139, 241545, 0, 0, 0, 'nbrvict', 150, '', 0, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 71, 5, 2, 31, 62.745024918871, 34.010918895935, 59.777284883322, 36.816731762171, 35379, 95242, 1954072, 1242093, 227607, 270267, 174784, 215297, 115257, 123295, 41.922943407993, 0, 1616411, 1637728, 1998, 689, 'Irkos', 'Tulkas', 645, 14515, 'Tulkas', 'Tulkas', 0, '', '|Dyospiros|'),
(24, 'guerre', 'encours', '', 'Les Alliés de l`Ombre', 'L`Union des Citoyens', '', '', '

Quelque part en Vénopole, au château de l`Union des Citoyens.

« Chef, Chef !! »

« Oui Oracle ? Je t`écoute du haut de mon balcon. »

« Tu n`as pas envie de déclarer une autre guerre? »

« Bah... » répondit Daneel

« Je suis certain que personne ne montera dans ma zone et je sens que je vais encore être un spectateur alors que mon compte tourne super bien....

Pour moi l`xp est la condition n°1 par contre! » insista Oracle

« Contre qui une guerre? » demanda Daneel.

Les deux camarades furent interrompus dans leurs discussions par la sirène d`alerte du château !

oooooOOOOOOOUUUUUUUUUUuuuuuuuu

oooooOOOOOOOUUUUUUUUUUuuuuuuuu

oooooOOOOOOOUUUUUUUUUUuuuuuuuu

« Trois fois ! C`est une déclaration de guerre !! Préviens les Citoyens !! » lança Daneel.

En effet de toutes les frontières de Vénopole, les messagers arrivaient sur leurs destriers à toute cavalcade. S`écriant : « Les Alllliéésss de l`OOOOmmmbrreee Atttaqquuueeent !!!! Rentrez les femmes et les cochons !!! »

« Tu vois Daneel, j`avais raison, je ne dirais pas "encore", je passerais pour un prétentieux, mais j`avais raison ! »', '', 21678899, 550414, 696190, 0, 0, 0, 'xp', 150000, 'nbrvict', 75, 'acres', 2000000, 'AND', '', 0, '', 0, '', 0, '', '', 198, 30, 35, 165, 206.11188371185, 206.25370490469, 213.07854044905, 200.18340741312, 308372, 400345, 9126903, 9340359, 1793371, 1914789, 287825, 326238, 191587, 212952, 39.124368305166, 24.540152099718, 5336041, 6420639, 4792, 4511, 'Malorus', 'Turfel', 5797, 22444, 'Malorus', 'Turfel', 0, '', '|Na&euml;lys|Tetrahyd|');



CREATE TABLE `11apr_joueurs_bonus_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL DEFAULT '',
  `att` smallint(6) NOT NULL DEFAULT '0',
  `def` smallint(6) NOT NULL DEFAULT '0',
  `ini` smallint(6) NOT NULL DEFAULT '0',
  `cha` smallint(6) NOT NULL DEFAULT '0',
  `end` smallint(6) NOT NULL DEFAULT '0',
  `pui` smallint(6) NOT NULL DEFAULT '0',
  `chance` smallint(6) NOT NULL DEFAULT '0',
  `offensive` tinyint(4) NOT NULL DEFAULT '100',
  `defensive` tinyint(4) NOT NULL DEFAULT '100',
  `rapport` tinyint(4) NOT NULL DEFAULT '0',
  `politique` varchar(40) NOT NULL DEFAULT 'Autarcie',
  `province` varchar(40) NOT NULL DEFAULT 'Aucune',
  `statut` varchar(40) NOT NULL DEFAULT '',
  `guilde` varchar(70) NOT NULL DEFAULT 'Aucune',
  `chg_province` int(11) NOT NULL DEFAULT '0',
  `quete` int(11) NOT NULL DEFAULT '0',
  `victoire` int(11) NOT NULL DEFAULT '0',
  `défaite` int(11) NOT NULL DEFAULT '0',
  `gain_jour` int(11) NOT NULL DEFAULT '0',
  `guildeRP` int(11) NOT NULL DEFAULT '0',
  `rangguildeRP` int(11) NOT NULL DEFAULT '0',
  `rapportOff` int(11) NOT NULL DEFAULT '0',
  `incantemin` smallint(6) NOT NULL DEFAULT '-1',
  `incantemax` smallint(6) NOT NULL DEFAULT '-1',
  `incantetjrsoff` tinyint(4) NOT NULL DEFAULT '1',
  `incanterExplo` tinyint(1) NOT NULL DEFAULT '1',
  `objets_casses` smallint(5) unsigned NOT NULL DEFAULT '0',
  `satt` smallint(3) NOT NULL DEFAULT '0',
  `sdef` smallint(3) NOT NULL DEFAULT '0',
  `sini` smallint(3) NOT NULL DEFAULT '0',
  `spui` smallint(3) NOT NULL DEFAULT '0',
  `send` smallint(3) NOT NULL DEFAULT '0',
  `scha` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2228 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2228 ;

INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(10, 'Maher', 35, 19, 50, 5, 30, 24, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 55, 254, 559299, 0, 0, 0, -1, -1, 1, 1, 60, 5, 0, 5, 1, 3, 1),
(11, 'Titlan', 98, 11, 1, 12, 17, 16, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21584315, 0, 153, 14, 86972, 0, 0, 0, -1, -1, 1, 1, 8, 4, 7, 5, 0, 2, 1),
(12, 'Vigrid', 53, 50, 83, 15, 28, 21, 3, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21451213, 0, 228, 160, 532975, 0, 0, 1, -1, -1, 1, 0, 23, 0, 0, 12, 0, 0, 9),
(29, 'Lissana', 3, 23, 26, 124, 38, 57, 5, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443597, 0, 134, 151, 220495, 0, 0, 1, 60, 60, 0, 0, 170, 0, 0, 0, 20, 0, 0),
(33, 'Demetron', 82, 17, 15, 0, 4, 0, 0, 80, 20, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21447014, 0, 159, 276, 228699, 0, 0, 0, -1, -1, 1, 1, 8, 9, 6, 0, 0, 2, 0),
(35, 'Meissner', 69, 33, 132, -14, 3, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21443640, 0, 100, 374, 914656, 0, 0, 1, -1, -1, 1, 0, 530, 23, 0, 0, 0, 0, 0),
(42, 'Ora&iuml;a', 118, 93, 52, 0, 20, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21559358, 0, 213, 66, 169746, 0, 0, 0, -1, -1, 1, 1, 2, 1, 3, 12, 0, 0, 0),
(44, 'Oracle', 232, 150, -6, 97, 125, 28, 2, 100, 30, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443842, 0, 182, 181, 270919, 0, 0, 0, 30, 30, 0, 0, 32, 10, 3, 0, 0, 17, 4),
(45, 'Zhia', 0, 0, 2, 0, 20, 8, 0, 100, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21444135, 0, 221, 126, 129145, 0, 0, 0, 80, 80, 1, 1, 0, 0, 0, 0, 0, 11, 0),
(58, 'Egleria', 34, 54, 5, 56, 42, 61, 0, 80, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21446846, 0, 193, 127, 187639, 0, 0, 0, 80, 120, 1, 1, 4, 1, 2, 4, 1, 13, 1),
(61, 'Magebar', 33, 0, 59, 19, 54, 64, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 111, 107, 643056, 0, 0, 1, -1, -1, 1, 1, 24, 8, 3, 10, 1, 1, 1),
(68, 'Kiminou', 152, 71, 148, 74, 23, 0, 0, 70, 50, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21444176, 0, 313, 250, 255897, 0, 0, 0, 20, 30, 1, 0, 173, 2, 0, 35, 0, 0, 0),
(71, 'T&ecirc;te-Plate', 91, 62, 120, 124, 198, 68, 0, 100, 50, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21455345, 0, 148, 293, 587606, 0, 0, 0, 30, 30, 1, 0, 23, 0, 20, 10, 0, 6, 6),
(86, 'Lothadith', 6, 9, 23, 12, 63, 165, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443629, 0, 201, 84, 77573, 0, 0, 0, -1, -1, 0, 0, 57, 0, 0, 0, 21, 0, 0),
(88, 'Shaugan', 7, 0, 17, -7, 27, 16, 1, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21657648, 0, 48, 111, 374563, 0, 0, 1, -1, -1, 1, 1, 14, 0, 3, 3, 1, 4, 2),
(89, 'Argazel', 29, 18, 25, 114, 133, 198, 2, 100, 20, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443807, 0, 94, 209, 267777, 0, 0, 0, 20, 30, 1, 1, 200, 0, 0, 7, 0, 0, 13),
(92, 'Turfel', 430, 277, 0, 77, 108, 25, 5, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21501775, 0, 183, 170, 604284, 0, 0, 0, 50, 50, 1, 0, 1397, 1, 0, 0, 0, 0, 46),
(93, 'Danahyl', 36, 2, 34, 27, 33, 83, 0, 90, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21447003, 0, 118, 114, 201763, 0, 0, 0, 20, 50, 0, 0, 14, 3, 5, 3, 1, 3, 5),
(95, 'Rabak', 43, 18, 79, 0, 9, 13, 2, 100, 10, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21487333, 0, 271, 233, 68767, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 10, 0, 0, 6),
(98, 'Nelvin', 46, 12, 79, 0, 0, 12, 0, 100, 80, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21450036, 0, 82, 113, 432863, 0, 0, 1, -1, -1, 0, 0, 1, 0, 0, 18, 0, 0, 0),
(116, 'Ge&iuml;nfrindel', 27, 23, 27, 12, 21, 40, 4, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445317, 0, 91, 239, 238821, 0, 0, 0, -1, -1, 1, 1, 70, 1, 4, 0, 5, 7, 1),
(119, 'Barbouza', 25, 10, 0, 12, 0, 33, 0, 50, 50, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447192, 0, 122, 331, 818559, 0, 0, 1, 80, 80, 0, 0, 21, 5, 0, 3, 5, 0, 2),
(120, 'Aub&eacute;rion', 21, 40, 80, 80, 78, 103, 2, 70, 60, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443561, 0, 139, 209, 544871, 0, 0, 0, 50, 50, 1, 1, 17, 0, 0, 8, 8, 0, 7),
(125, 'Lhito', 117, 87, 106, 50, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21443678, 0, 368, 374, 137796, 0, 0, 1, -1, -1, 0, 0, 40, 4, 20, 0, 0, 2, 6),
(131, 'Dalan', 140, 99, 34, 66, 23, 28, 2, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21453690, 0, 138, 179, 328783, 0, 0, 0, 20, 30, 1, 0, 33, 15, 17, 6, 0, 1, 0),
(132, 'Malorus', 49, 30, 47, 98, 66, 192, 2, 90, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21444290, 0, 240, 306, 145223, 0, 0, 1, 30, 30, 1, 0, 314, 3, 0, 12, 2, 3, 18),
(133, 'Erios', 17, 43, 72, 0, 15, 6, 0, 100, 80, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443902, 0, 176, 250, 338973, 0, 0, 1, -1, -1, 0, 0, 0, 2, 15, 0, 0, 0, 0),
(136, 'Lirth Evendil', 60, 9, 66, 8, 4, 0, 0, 90, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 165, 211, 163049, 0, 0, 0, -1, -1, 1, 0, 4, 2, 0, 18, 0, 0, 0),
(138, 'Vils&auml;en', 129, 112, 22, 0, 16, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21443723, 0, 105, 199, 13194, 0, 0, 0, -1, -1, 1, 1, 15, 0, 4, 11, 0, 0, 1),
(140, 'Ananta', 28, 33, 14, 18, 9, 25, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 199, 90, 189242, 0, 0, 1, -1, -1, 1, 1, 3, 2, 2, 3, 1, 0, 1),
(143, 'Rinoacamui', 30, 35, 0, 7, 4, 0, 2, 100, 10, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21443995, 0, 80, 135, 422650, 0, 0, 0, -1, -1, 1, 1, 25, 0, 0, 3, 7, 2, 0),
(144, 'Irkos', 112, 99, 61, 62, 31, 16, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443870, 0, 133, 290, 283338, 0, 0, 1, -1, -1, 1, 0, 28, 0, 2, 10, 0, 4, 6),
(145, 'Phyleas', 82, 52, 111, 6, 43, 0, 0, 80, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445026, 0, 302, 323, 280576, 0, 0, 0, 50, 50, 0, 0, 18, 30, 1, 4, 0, 0, 0),
(150, 'Kahzerya', 110, 162, 67, 50, 70, 0, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444302, 0, 237, 302, 251036, 0, 0, 0, -1, -1, 1, 1, 27, 0, 2, 9, 0, 9, 7),
(161, 'Marr', 100, 70, 0, 0, 22, 8, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21472054, 0, 142, 120, 365454, 0, 0, 1, 50, 50, 1, 1, 22, 0, 0, 15, 0, 0, 0),
(162, 'Xelios', 14, 14, 0, 11, 6, 25, 0, 80, 70, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21443821, 0, 62, 69, 248073, 0, 0, 1, -1, -1, 1, 1, 10, 0, 6, 0, 0, 3, 2),
(167, 'Klaasninas', 30, 30, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21446750, 0, 261, 168, 233799, 0, 0, 0, 40, 40, 0, 0, 11, 7, 16, 0, 0, 3, 0),
(168, 'Altharam', 137, 113, 0, 0, 19, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444026, 0, 199, 122, 110079, 0, 0, 0, -1, -1, 1, 0, 8, 4, 15, 0, 0, 0, 0),
(173, 'Hulricht', 66, 49, 114, 52, 28, 18, 0, 100, 70, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21443974, 0, 267, 315, 285924, 0, 0, 1, 40, 40, 1, 0, 24, 30, 0, 0, 0, 0, 0),
(181, 'Fourbinas', 33, 0, 13, 3, 103, 185, 0, 80, 80, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21443959, 0, 154, 149, 161907, 0, 0, 0, 40, 50, 0, 0, 264, 0, 0, 0, 1, 20, 0),
(183, 'Axeolu', 29, 0, 0, 0, 0, 0, 0, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443976, 0, 142, 210, 294082, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 6, 3, 4, 1),
(187, 'Boubi', 21, 18, 24, 0, 17, 23, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21444197, 0, 130, 101, 189146, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 9, 0, 12, 0),
(192, 'Orium', 184, 180, 11, 83, 13, 0, 18, 100, 90, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21444191, 0, 110, 374, 971999, 0, 0, 0, -1, -1, 1, 1, 3323, 0, 0, 28, 0, 0, 0),
(197, 'Leslie', 2, 10, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 108, 240, 444194, 0, 0, 1, -1, -1, 1, 1, 0, 7, 6, 0, 3, 0, 1),
(199, 'Benihime', 19, 4, -2, -5, 113, 138, 5, 100, 30, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444113, 0, 146, 296, 251579, 0, 0, 0, 30, 40, 0, 1, 141, 0, 0, 5, 9, 15, 1),
(204, 'Ovelia', 60, 69, 47, 6, 35, 0, 0, 80, 60, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444321, 0, 167, 59, 165085, 0, 0, 1, -1, -1, 0, 0, 7, 16, 1, 0, 1, 0, 0),
(217, 'Tylert', 49, 17, 63, 0, 7, 0, 1, 70, 20, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21446751, 0, 123, 111, 340173, 0, 0, 0, 50, 50, 0, 1, 6, 22, 0, 0, 0, 0, 0),
(218, 'Alumdil', 35, 4, 38, 15, 49, 50, 1, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21445012, 0, 188, 162, 269604, 0, 0, 0, 30, 50, 1, 0, 25, 0, 0, 20, 0, 2, 0),
(219, 'Anair&euml;', 184, 106, 181, 110, 10, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21446594, 0, 144, 340, 295514, 0, 0, 0, 10, 10, 1, 1, 295, 38, 0, 0, 0, 0, 0),
(225, 'Ther`glat', 56, 39, 1, 0, 21, 12, 2, 100, 40, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21624355, 0, 108, 75, 253255, 0, 0, 1, -1, -1, 1, 0, 61, 9, 3, 10, 0, 0, 0),
(231, 'Galigonidd', 46, 27, 47, 0, 6, 6, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21448597, 0, 95, 200, 624635, 0, 0, 1, -1, -1, 1, 1, 30, 10, 6, 1, 0, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(232, 'Matkias', 31, 42, 36, -10, 69, 21, 2, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21588637, 0, 76, 302, 415364, 0, 0, 1, -1, -1, 1, 1, 63, 2, 7, 1, 5, 3, 0),
(234, 'Poupou', 16, 0, 88, 19, 34, 58, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445036, 0, 102, 126, 333518, 0, 0, 0, -1, -1, 1, 0, 15, 6, 1, 0, 12, 0, 0),
(235, 'Dartoil', 4, 4, 0, 13, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445172, 0, 56, 57, 26132, 0, 0, 0, -1, -1, 1, 1, 7, 8, 0, 0, 0, 0, 0),
(236, 'Tefeiri', 3, 32, 50, 14, 0, 30, 2, 90, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21475898, 0, 255, 191, 248452, 0, 0, 1, -1, -1, 1, 1, 0, 6, 1, 5, 5, 0, 0),
(239, 'Luna', 64, 21, 0, 12, 48, 37, 0, 90, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 78, 209, 440053, 0, 0, 1, -1, -1, 1, 0, 26, 4, 11, 0, 0, 0, 0),
(240, 'Kullah', 7, 0, 3, 0, 20, 21, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21446677, 0, 214, 15, 66508, 0, 0, 0, 10, 10, 1, 0, 18, 0, 0, 7, 8, 0, 0),
(241, 'Nadras', 0, 15, 10, 3, 18, 130, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21447908, 0, 210, 52, 248711, 0, 0, 0, 50, 50, 0, 1, 12, 0, 0, 0, 18, 0, 0),
(242, 'Thelv', 3, 0, 5, -7, 97, 186, 0, 90, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445186, 0, 121, 89, 288062, 0, 0, 1, 20, 30, 0, 0, 93, 0, 0, 9, 4, 9, 0),
(256, 'Husam', 0, 0, 0, 0, 12, 15, 2, 60, 30, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21464117, 0, 172, 148, 319776, 0, 0, 0, 80, 80, 1, 1, 9, 0, 0, 4, 14, 1, 0),
(258, 'Febus', 38, 30, 84, -4, 94, 60, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445510, 0, 286, 201, 158686, 0, 0, 0, 50, 50, 0, 1, 10, 0, 0, 0, 1, 1, 21),
(267, 'Dacapo', -1, 6, 0, -9, 34, 8, 4, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448624, 0, 130, 78, 177546, 0, 0, 1, -1, -1, 1, 1, 29, 5, 1, 3, 1, 4, 0),
(270, 'Desmondis', 2, 2, 26, 19, 6, 17, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 168, 159, 378514, 0, 0, 0, -1, -1, 1, 0, 2, 5, 7, 1, 1, 3, 2),
(273, 'Zagior', 34, 13, 0, 0, 21, 16, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 173, 52, 110200, 0, 0, 1, -1, -1, 0, 0, 2, 5, 1, 12, 0, 0, 0),
(278, 'Zahel', 4, 4, 9, 43, 44, 81, 5, 80, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447081, 0, 293, 234, 243954, 0, 0, 0, -1, -1, 0, 0, 92, 0, 0, 22, 1, 0, 1),
(280, 'Rufbumpa', 20, 20, 13, 0, 0, 12, 0, 60, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21455553, 0, 166, 114, 281693, 0, 0, 0, 20, 100, 0, 1, 3, 19, 0, 0, 0, 0, 0),
(281, 'Estayr', 3, 8, 15, 0, 0, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 85, 67, 193549, 0, 0, 1, -1, -1, 1, 0, 6, 7, 0, 0, 8, 0, 0),
(282, 'Kalista', 95, 126, 35, 31, 4, 0, 5, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 188, 171, 142123, 0, 0, 0, -1, -1, 1, 0, 50, 3, 15, 1, 0, 0, 1),
(283, 'Gelthasar Belt', 51, 101, 75, 120, 65, 12, 2, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21446471, 0, 206, 454, 71004, 0, 0, 0, -1, -1, 1, 1, 27, 0, 0, 4, 0, 1, 26),
(284, 'Tulkas', 30, 25, 64, 80, 0, 0, 30, 80, 30, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21445912, 0, 168, 272, 483196, 0, 0, 0, 20, 20, 0, 0, 1553, 2, 0, 27, 0, 0, 2),
(297, 'Bartor', 14, 18, 5, 11, 4, 16, 2, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21468695, 0, 87, 70, 261565, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 17, 0, 0, 0),
(299, 'Almanarre', 45, 37, 55, 0, 24, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21446744, 0, 210, 191, 121051, 0, 0, 0, -1, -1, 1, 0, 36, 4, 0, 15, 0, 0, 2),
(300, 'Shadark', 78, 10, 89, 16, 0, 12, 0, 100, 50, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21599679, 0, 125, 207, 899292, 0, 0, 0, -1, -1, 1, 1, 30, 16, 0, 2, 0, 1, 0),
(302, 'L&eacute;otar', 23, 64, 0, 6, 19, 10, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 221, 123, 225770, 0, 0, 1, -1, -1, 1, 1, 2, 6, 5, 0, 4, 0, 2),
(303, 'Gauerd&ocirc;me', -7, 27, 35, 2, 27, 32, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21462576, 0, 233, 94, 306402, 0, 0, 0, 40, 40, 0, 0, 77, 1, 1, 0, 4, 21, 1),
(314, 'Eleanora', 7, 6, 2, 0, 0, 50, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21449107, 0, 144, 143, 141439, 0, 0, 1, -1, -1, 1, 1, 0, 8, 1, 1, 7, 0, 1),
(321, 'Vannams', 53, 23, 0, 121, 8, 0, 6, 100, 10, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447228, 0, 144, 167, 439235, 0, 0, 1, -1, -1, 0, 0, 16, 0, 2, 8, 0, 3, 8),
(333, 'Cassandre', 80, 80, 64, 62, 53, 13, 5, 100, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21449531, 0, 295, 260, 110664, 0, 0, 0, 30, 30, 0, 0, 19, 0, 15, 1, 0, 7, 3),
(345, 'Torme Morselame', 29, 34, 27, 0, 22, 6, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21469665, 0, 163, 116, 324887, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 0, 0, 18, 0),
(349, 'Elanor', 91, 93, 82, 86, 88, 0, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21448636, 0, 40, 219, 732073, 0, 0, 0, 20, 30, 0, 0, 67, 0, 2, 16, 2, 4, 0),
(385, 'Aratos', 0, 13, 8, 31, 56, 117, 3, 100, 10, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21452805, 0, 177, 147, 505612, 0, 0, 0, -1, -1, 1, 1, 31, 0, 0, 24, 0, 0, 0),
(386, 'Yelderick', 134, 109, -15, 45, 43, 0, 1, 80, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21449864, 0, 280, 327, 439288, 0, 0, 0, -1, -1, 1, 0, 88, 19, 3, 3, 0, 5, 2),
(408, 'Leorod', 30, 50, 22, 11, 15, 6, 5, 100, 50, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 118, 243, 295576, 0, 0, 1, 40, 60, 1, 1, 25, 0, 0, 0, 12, 4, 1),
(410, 'Birgenn', 92, 80, 61, 86, 51, 6, 1, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21475197, 0, 143, 199, 269319, 0, 0, 1, -1, -1, 1, 1, 9, 6, 8, 1, 0, 3, 3),
(413, 'Tetrahyd', 24, 44, 17, -10, 138, 133, 3, 100, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21452714, 0, 120, 99, 257984, 0, 0, 0, 30, 60, 1, 0, 49, 0, 0, 0, 13, 15, 0),
(418, 'Avister', -5, 2, 4, -9, 24, 0, 5, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21509021, 0, 55, 144, 448562, 0, 0, 0, -1, -1, 1, 1, 5, 3, 2, 0, 3, 3, 1),
(423, 'Abert', 23, 23, 0, 0, 45, 37, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 392, 87, 164927, 0, 0, 0, -1, -1, 1, 1, 10, 2, 1, 5, 7, 0, 0),
(427, 'Koali', 21, 2, 18, 1, 14, 21, 2, 100, 100, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21663359, 0, 83, 82, 410903, 0, 0, 1, -1, -1, 1, 1, 2, 5, 6, 0, 1, 0, 0),
(439, 'Willi', 6, 8, 0, 1, 6, 0, 2, 70, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 149, 705871, 0, 0, 0, -1, -1, 1, 1, 10, 5, 2, 0, 0, 0, 0),
(463, 'Arnaud', 4, 8, 2, 0, 0, 0, 0, 90, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21457055, 0, 116, 139, 234580, 0, 0, 0, -1, -1, 1, 1, 0, 2, 6, 4, 3, 0, 2),
(465, 'Dachinos', 61, 21, 30, 25, 40, 24, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21693158, 0, 66, 76, 200860, 0, 0, 0, -1, -1, 1, 0, 0, 3, 3, 3, 1, 2, 1),
(481, 'Arcelane', 3, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 243, 26, 82188, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 12, 0, 0, 0),
(484, 'Liluth', 143, 84, 86, 6, 51, 0, 0, 100, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21460018, 0, 188, 229, 456535, 0, 0, 1, 50, 80, 0, 0, 18, 0, 0, 19, 0, 0, 0),
(491, 'Ankharon', 30, 22, -10, 50, 86, 92, 3, 60, 20, 0, 'République', 'Thassopole', '', 'Aucune', 21469452, 0, 122, 183, 330608, 0, 0, 0, -1, -1, 1, 0, 45, 0, 0, 0, 28, 0, 1),
(555, 'Kaerrawen', 1, 0, 20, 0, 0, 2, 0, 90, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21466638, 0, 101, 113, 298903, 0, 0, 1, 80, 80, 1, 1, 0, 0, 5, 11, 0, 0, 0),
(566, 'Bamdinas', -7, 15, 10, 40, 110, 175, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21521820, 0, 207, 89, 259144, 0, 0, 0, 30, 40, 0, 0, 19, 0, 0, 0, 0, 0, 20),
(607, 'Konrad', 0, 25, 0, 25, 33, 8, 4, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21474581, 0, 85, 162, 97105, 0, 0, 0, 40, 40, 1, 1, 25, 2, 0, 7, 3, 0, 1),
(637, 'Mathaos', 79, 100, 32, 8, 28, 0, 4, 100, 100, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21637400, 0, 87, 161, 743199, 0, 0, 1, -1, -1, 1, 0, 94, 4, 4, 1, 0, 4, 5),
(640, 'Mattai', 54, 19, 41, 8, 3, 0, 0, 100, 50, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21556625, 0, 118, 83, 433150, 0, 0, 0, 30, 60, 1, 1, 3, 2, 4, 4, 4, 0, 2),
(672, 'Jeffrey', 39, 39, 43, 87, 8, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21485718, 0, 136, 31, 546021, 0, 0, 0, -1, -1, 1, 1, 94, 3, 1, 6, 0, 0, 12),
(787, 'Dranthen', 3, 4, 0, 1, 0, 0, 2, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21500445, 0, 49, 109, 533187, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 5, 1, 1),
(815, 'Mollestho', 57, 59, 0, 51, 18, 0, 4, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21508081, 0, 59, 140, 487360, 0, 0, 0, 50, 50, 1, 1, 21, 7, 0, 0, 4, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(820, 'Pirelias', 50, 12, 22, 0, 30, 6, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21504646, 0, 93, 145, 138747, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(835, 'Axel', 20, 9, -10, 12, 3, 6, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21510145, 0, 48, 95, 228522, 0, 0, 0, -1, -1, 1, 1, 7, 5, 1, 1, 0, 0, 3),
(848, 'Arkatros', 170, 176, 18, 0, 65, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21589680, 0, 113, 61, 659222, 0, 0, 0, -1, -1, 1, 1, 61, 10, 1, 18, 0, 0, 0),
(868, 'Arimane', 2, 13, 0, 1, 18, 76, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 57, 81, 365868, 0, 0, 0, -1, -1, 1, 1, 25, 0, 0, 0, 17, 0, 0),
(870, 'Xandre', 21, 9, 0, 0, 21, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21507557, 0, 98, 82, 270707, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 12, 0, 0, 0),
(879, 'Vezk', 111, 109, 56, 0, 28, 31, 0, 40, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21527614, 0, 127, 141, 292005, 0, 0, 0, -1, -1, 1, 0, 6, 16, 4, 0, 0, 0, 0),
(892, 'Rek', 20, 22, 0, 53, 134, 83, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21511704, 0, 136, 79, 178564, 0, 0, 0, -1, -1, 1, 0, 1, 0, 0, 0, 0, 21, 0),
(911, 'Enephia', 14, 0, 2, 0, 0, 46, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21526022, 0, 91, 56, 354961, 0, 0, 0, -1, -1, 1, 1, 4, 0, 14, 0, 0, 4, 0),
(917, 'Nem&egrave;s', 63, 21, 71, 129, 23, 28, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21523251, 0, 172, 61, 177178, 0, 0, 0, 20, 40, 0, 1, 7, 10, 6, 11, 0, 0, 0),
(922, 'Malia', 33, 11, 0, 21, 22, 60, 0, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21519223, 0, 69, 41, 421360, 0, 0, 0, 20, 20, 0, 0, 21, 0, 7, 0, 0, 8, 0),
(930, 'Zaseo', 142, 125, 36, 50, 31, 8, 2, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21530419, 0, 190, 56, 135953, 0, 0, 0, -1, -1, 1, 1, 48, 1, 0, 21, 0, 0, 0),
(933, 'Zedounet', 2, 39, 0, 12, 33, 6, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21520357, 0, 86, 105, 300274, 0, 0, 0, 50, 100, 1, 1, 8, 0, 0, 1, 0, 0, 1),
(946, 'Ceccua', 4, 11, 0, 0, 4, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21520382, 0, 29, 45, 316329, 0, 0, 1, -1, -1, 1, 1, 21, 5, 0, 1, 1, 0, 1),
(948, 'Mosoulo', 7, 8, 74, -10, 25, 0, 1, 100, 80, 1, 'Autarcie', 'Aucune', '', 'Aucune', 21554952, 0, 86, 117, 391983, 0, 0, 1, -1, -1, 1, 1, 10, 2, 1, 6, 0, 3, 0),
(989, 'Salfalar', 24, 59, 20, 0, 41, 40, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 143, 58, 381003, 0, 0, 0, 20, 20, 0, 1, 30, 0, 0, 19, 0, 0, 0),
(992, 'Aedric', 67, 2, 30, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21566570, 0, 57, 60, 147638, 0, 0, 0, -1, -1, 1, 1, 2, 5, 0, 7, 0, 0, 0),
(1010, 'Herel', 29, 8, 5, 12, 6, 0, 2, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21528014, 0, 91, 158, 487995, 0, 0, 0, -1, -1, 1, 1, 11, 8, 4, 0, 1, 0, 0),
(1016, 'Eleana', 19, 32, 22, 0, 0, 6, 0, 90, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21538406, 0, 104, 39, 210404, 0, 0, 1, -1, -1, 1, 1, 6, 0, 0, 14, 0, 0, 0),
(1057, 'X&eacute;nox', 36, 39, 42, 15, 46, 29, 0, 80, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 21665079, 0, 99, 147, 418073, 0, 0, 1, -1, -1, 1, 1, 41, 0, 7, 0, 2, 5, 1),
(1067, 'Daneel', 39, 42, 42, 72, 52, 0, 2, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21530452, 0, 127, 63, 359143, 0, 0, 0, 30, 30, 0, 0, 142, 23, 0, 0, 0, 0, 0),
(1115, 'Galaway', 30, 30, 30, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21657168, 0, 54, 73, 105828, 0, 0, 0, -1, -1, 1, 1, 2, 1, 0, 10, 1, 0, 0),
(1122, 'Del&eacute;nia', 18, 81, 3, 0, 56, 12, 2, 80, 80, 0, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21533389, 0, 178, 13, 166923, 0, 0, 0, 50, 100, 1, 0, 157, 0, 1, 0, 0, 20, 0),
(1141, 'Renard', 16, 0, 0, 0, 0, 14, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21606413, 0, 33, 63, 64805, 0, 0, 0, -1, -1, 1, 1, 1, 0, 1, 0, 7, 1, 0),
(1145, 'DagBar', 4, 20, 3, 3, 35, 88, 0, 70, 40, 0, 'République', 'Thassopole', '', 'Aucune', 21539453, 0, 99, 32, 280289, 0, 0, 1, 10, 10, 0, 0, 38, 0, 0, 0, 16, 0, 0),
(1156, 'Yzeute', 30, 26, 24, 1, 0, 8, 2, 80, 80, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21541002, 0, 76, 76, 550271, 0, 0, 1, -1, -1, 1, 1, 4, 4, 1, 3, 1, 3, 2),
(1287, 'Nragax', 147, 70, 140, 86, 0, 0, 6, 80, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21547463, 0, 180, 60, 273314, 0, 0, 0, -1, -1, 0, 1, 1034, 22, 0, 1, 0, 0, 0),
(1299, 'Shinna', 2, 1, 0, 0, 0, 0, 0, 50, 50, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21559590, 0, 15, 41, 22369, 0, 0, 0, -1, -1, 1, 1, 0, 0, 3, 0, 3, 0, 0),
(1301, 'Dexert', 17, 10, 10, 0, 0, 16, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 71, 79, 343541, 0, 0, 1, -1, -1, 0, 0, 7, 0, 0, 1, 0, 1, 0),
(1308, 'Reya', 3, 10, 35, 61, 48, 110, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21589248, 0, 159, 76, 236306, 0, 0, 0, 10, 30, 0, 1, 2, 0, 0, 23, 1, 0, 0),
(1311, 'Ambre', 36, 32, 2, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21592535, 0, 75, 42, 55468, 0, 0, 0, -1, -1, 1, 1, 0, 1, 2, 8, 0, 0, 0),
(1340, 'X&yuml;ixiant’h ', 19, 0, 41, 0, 4, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21555429, 0, 39, 105, 337741, 0, 0, 1, 50, 50, 1, 1, 5, 0, 3, 5, 0, 0, 1),
(1403, 'Soreclis', 28, 20, 14, 0, 9, 0, 4, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 118, 128, 471418, 0, 0, 1, -1, 70, 0, 0, 10, 2, 2, 5, 5, 0, 0),
(1409, 'Esteban', 87, 10, 49, 0, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21672998, 0, 72, 23, 206218, 0, 0, 1, 10, 10, 0, 1, 2, 11, 0, 0, 0, 0, 0),
(1411, 'Karyon', 4, 0, 64, 2, 64, 112, 2, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21560675, 0, 175, 41, 305001, 0, 0, 1, 20, 50, 0, 1, 144, 0, 1, 5, 3, 6, 2),
(1412, 'Fouchier', 68, 41, 14, 58, 18, 10, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21566357, 0, 170, 83, 405315, 0, 0, 0, 20, 20, 0, 0, 4, 0, 1, 7, 0, 8, 2),
(1414, 'Criton', 19, 51, 4, 18, 19, 6, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21560813, 0, 129, 131, 320899, 0, 0, 1, -1, -1, 1, 1, 5, 1, 4, 0, 0, 11, 0),
(1418, 'Basl', 0, 42, -1, 88, 29, 25, 14, 10, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21561913, 0, 14, 39, 8286256, 0, 0, 1, -1, -1, 1, 1, 769, 0, 0, 13, 0, 0, 0),
(1458, 'Yodine', 44, 14, 29, 0, 9, 13, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21608484, 0, 41, 41, 533636, 0, 0, 0, -1, -1, 1, 1, 7, 3, 7, 2, 2, 1, 4),
(1460, 'Alec', 16, 18, 13, 12, 13, 25, 0, 60, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21626887, 0, 71, 52, 295922, 0, 0, 1, -1, -1, 1, 1, 16, 0, 5, 0, 4, 0, 1),
(1463, 'Watmatus', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 32, 45, 32450, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 1, 0, 0, 0),
(1469, 'Elm', 73, 64, 151, 152, 12, 12, 0, 80, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21567987, 0, 167, 58, 500147, 0, 0, 0, -1, 60, 0, 0, 25, 1, 4, 26, 0, 0, 7),
(1470, 'Celithrand', 1, 0, 30, 0, 30, 32, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 53, 34, 267539, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 10, 0),
(1475, 'Batterusero', 11, 8, 26, 5, 21, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21658626, 0, 31, 76, 642023, 0, 0, 0, -1, -1, 1, 1, 0, 1, 3, 1, 3, 2, 0),
(1480, 'Alaesir', 18, 2, 14, 0, 0, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21570486, 0, 72, 72, 232273, 0, 0, 1, -1, -1, 1, 0, 0, 0, 0, 6, 0, 9, 0),
(1492, 'Osterate', 42, 57, 33, 23, 5, 0, 0, 80, 80, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21575245, 0, 110, 129, 472793, 0, 0, 1, 30, 70, 0, 0, 14, 8, 4, 2, 1, 0, 3),
(1499, 'Toroc', 23, 22, 15, 8, 30, 16, 4, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21580686, 0, 65, 82, 681827, 0, 0, 0, -1, -1, 1, 1, 11, 4, 3, 3, 2, 1, 0),
(1512, 'Keldaran', 19, 38, 30, 0, 10, 14, 3, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21573902, 0, 125, 48, 137698, 0, 0, 1, -1, -1, 1, 1, 8, 0, 0, 15, 0, 0, 0),
(1519, 'Tirandilis', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21580705, 0, 114, 42, 344173, 0, 0, 1, 40, 40, 1, 0, 10, 0, 6, 15, 0, 0, 0),
(1522, 'Durshak le Borgne', 76, 64, 69, 0, 9, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21575196, 0, 62, 45, 263283, 0, 0, 0, 50, 50, 0, 1, 6, 1, 0, 19, 0, 0, 0),
(1528, 'Saya', 0, 0, 30, 0, 0, 0, 0, 100, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21577608, 0, 68, 21, 103481, 0, 0, 1, -1, -1, 1, 0, 8, 2, 0, 8, 0, 0, 0),
(1539, 'Kaiiros', 36, 10, 29, 0, 52, 114, 0, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21579362, 0, 168, 38, 234043, 0, 0, 0, 10, 10, 0, 0, 14, 0, 0, 0, 21, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1549, 'Caym', 23, 31, 89, 15, 10, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21608540, 0, 130, 70, 621116, 0, 0, 0, -1, -1, 1, 0, 20, 1, 7, 0, 1, 7, 0),
(1550, 'N&auml;ta&euml;l', 69, 94, -2, 14, 21, 6, 0, 100, 20, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21623401, 0, 108, 56, 194649, 0, 0, 0, -1, -1, 1, 1, 8, 2, 2, 6, 3, 0, 0),
(1562, 'Lyraprime', 14, 33, 0, 33, 12, 22, 4, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21588961, 0, 49, 45, 739534, 0, 0, 0, -1, -1, 1, 1, 8, 10, 3, 0, 0, 2, 0),
(1583, 'Rhal', 14, 12, 30, 0, 13, 22, 0, 80, 80, 1, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21586785, 0, 57, 44, 475277, 0, 0, 1, -1, -1, 1, 0, 2, 2, 2, 8, 2, 0, 1),
(1611, 'Arthurik', 4, 13, 1, 12, 3, 0, 0, 100, 70, 0, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21658457, 0, 42, 43, 123026, 0, 0, 0, -1, -1, 1, 1, 3, 11, 0, 1, 0, 0, 0),
(1627, 'Silayerr', 46, 2, 0, 12, 0, 14, 0, 100, 90, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21589631, 0, 69, 55, 476425, 0, 0, 1, -1, -1, 1, 0, 2, 3, 6, 2, 0, 4, 0),
(1640, 'Maria', 81, 121, 81, 6, 66, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21611133, 0, 138, 74, 543096, 0, 0, 0, 20, 20, 0, 0, 4, 5, 6, 9, 0, 0, 0),
(1651, 'Ramiran', 0, 0, 0, 0, 0, 0, 0, 100, 50, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21606363, 0, 39, 45, 36968, 0, 0, 0, -1, -1, 1, 1, 0, 0, 4, 0, 0, 0, 2),
(1653, 'Damian', 43, 67, 46, 15, 14, 0, 0, 80, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21687059, 0, 74, 127, 834749, 0, 0, 0, -1, -1, 1, 1, 10, 0, 2, 4, 0, 2, 1),
(1667, 'Vylnius', 1, 0, 0, 3, 0, 2, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21612435, 0, 54, 101, 491872, 0, 0, 1, -1, -1, 1, 0, 1, 0, 12, 0, 0, 0, 0),
(1670, 'Bolackot', 14, 10, 3, 3, 16, 22, 2, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21682797, 0, 67, 46, 599601, 0, 0, 0, -1, -1, 1, 1, 1, 0, 3, 2, 3, 1, 0),
(1682, 'L&eacute;&ouml;raz', 3, 6, 0, 0, 6, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21602478, 0, 63, 36, 102385, 0, 0, 1, 80, 150, 0, 0, 0, 3, 2, 2, 2, 0, 0),
(1685, 'Beltha&iuml;s', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21602607, 0, 22, 34, 33166, 0, 0, 0, -1, -1, 1, 1, 0, 6, 0, 3, 0, 0, 0),
(1700, 'Gaeldrech', 74, 32, 14, 18, 34, 0, 3, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21652627, 0, 77, 116, 640435, 0, 0, 1, -1, -1, 0, 1, 7, 3, 2, 3, 0, 2, 1),
(1715, 'Blindor la Montagne', 3, 2, 0, 0, 0, 0, 0, 100, 70, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21618322, 0, 68, 34, 224518, 0, 0, 1, 30, 30, 0, 0, 2, 11, 0, 0, 0, 0, 0),
(1725, 'Galmin', 104, 9, 49, 19, 62, 34, 2, 80, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21609874, 0, 160, 21, 234850, 0, 0, 1, 20, 30, 0, 0, 6, 4, 0, 18, 2, 3, 0),
(1727, 'Thorgrim', 0, 10, 0, 0, 0, 78, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 40, 45, 193281, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 0, 7, 0, 0),
(1731, 'Infilz', 17, 19, 14, 0, 3, 0, 1, 100, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 90, 62, 349062, 0, 0, 0, -1, -1, 1, 1, 8, 7, 2, 1, 0, 0, 1),
(1740, 'Oolna', 23, 10, 28, 0, 13, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21623761, 0, 77, 14, 240032, 0, 0, 1, -1, -1, 1, 0, 8, 14, 0, 0, 0, 0, 0),
(1745, 'Pyrim', 2, 3, 0, 12, 0, 0, 0, 80, 70, 1, 'Despotisme', 'Naxos', '', 'Aucune', 21612328, 0, 52, 37, 147699, 0, 0, 1, -1, -1, 1, 1, 0, 5, 1, 0, 0, 0, 0),
(1747, 'Hordrin', 83, 150, 2, 12, 111, 12, 2, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21625500, 0, 137, 13, 214408, 0, 0, 1, 20, 40, 0, 0, 5, 1, 22, 0, 0, 0, 0),
(1748, 'Baduit', 82, 70, 122, 86, 56, 12, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21612532, 0, 133, 47, 168068, 0, 0, 0, 30, 60, 0, 0, 7, 4, 0, 11, 0, 5, 1),
(1755, 'Le Dougec', 45, 15, 40, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 78, 73, 568609, 0, 0, 0, -1, -1, 1, 1, 4, 5, 1, 1, 0, 1, 2),
(1770, 'Ameennos', 44, 4, 24, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21638065, 0, 39, 46, 687059, 0, 0, 1, -1, -1, 1, 1, 12, 2, 0, 5, 0, 0, 0),
(1773, 'Pyrazine', 19, 54, 14, 0, 36, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21619197, 0, 156, 52, 353512, 0, 0, 0, -1, -1, 1, 1, 6, 0, 0, 8, 0, 0, 0),
(1784, 'Lineus', 10, 12, 0, 53, 23, 15, 0, 90, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21651077, 0, 53, 35, 388794, 0, 0, 1, -1, -1, 1, 1, 8, 2, 3, 2, 1, 2, 0),
(1795, 'Bornami', 27, 52, 34, 70, 21, 0, 5, 100, 30, 0, 'République', 'Thassopole', '', 'Aucune', 21651064, 0, 58, 43, 550846, 0, 0, 1, 40, 70, 1, 0, 52, 0, 0, 0, 0, 0, 15),
(1804, 'Elorfindelle', 4, 10, 11, 0, 10, 0, 0, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21640220, 0, 51, 37, 243485, 0, 0, 1, -1, -1, 1, 1, 3, 9, 1, 0, 0, 0, 0),
(1805, 'Alerob', 3, 10, 0, 3, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21628943, 0, 38, 34, 604156, 0, 0, 0, -1, -1, 1, 1, 5, 4, 0, 0, 1, 1, 0),
(1809, 'Kal', 92, 24, 33, 3, 26, 6, 0, 100, 40, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21647303, 0, 117, 54, 716518, 0, 0, 0, -1, -1, 1, 1, 0, 14, 2, 0, 0, 0, 0),
(1816, 'Han Main-Tranchante', 94, 50, 52, 12, 15, 0, 0, 70, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21626909, 0, 44, 24, 332655, 0, 0, 0, -1, -1, 1, 0, 7, 0, 0, 11, 0, 0, 0),
(1824, 'Aedorn', 16, 2, 0, 3, 34, 44, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21628430, 0, 56, 16, 430238, 0, 0, 0, 10, 30, 1, 1, 16, 0, 4, 0, 7, 1, 0),
(1827, 'Khiran', 31, 11, 15, 0, 3, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21631177, 0, 48, 49, 601942, 0, 0, 0, -1, -1, 1, 1, 11, 8, 0, 0, 0, 0, 0),
(1835, 'Krystophoros', 21, 27, 14, 24, 10, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 28, 30, 127121, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 7, 0, 0, 0),
(1836, 'Tchinga', 66, 60, 41, 83, 64, 48, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21632194, 0, 135, 58, 230088, 0, 0, 0, 20, 20, 1, 1, 1, 0, 0, 0, 0, 0, 20),
(1838, 'Anwaman&euml;l', 20, 29, 0, 1, 0, 0, 2, 60, 50, 1, 'République', 'Thassopole', '', 'Aucune', 21633154, 0, 56, 53, 675969, 0, 0, 1, 50, 50, 1, 1, 6, 8, 1, 0, 0, 1, 0),
(1842, 'Cometa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 55, 35, 183520, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 7),
(1851, 'Reyns', 31, 39, 7, 8, 14, 14, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 57, 29, 460458, 0, 0, 1, -1, -1, 1, 1, 4, 0, 2, 2, 2, 3, 2),
(1852, 'Imbalayo', 31, 68, 111, 115, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21632779, 0, 111, 20, 311453, 0, 0, 0, -1, -1, 1, 1, 205, 0, 0, 0, 0, 0, 18),
(1853, 'Ar&eacute;gonde', 23, 13, 29, 6, 13, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21643875, 0, 56, 10, 211866, 0, 0, 1, 10, 10, 1, 0, 54, 0, 0, 10, 0, 0, 4),
(1865, 'D&eacute;ductance', 17, 0, 11, 18, 9, 80, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21636816, 0, 61, 16, 491882, 0, 0, 0, 30, 40, 0, 0, 46, 0, 0, 0, 3, 0, 12),
(1866, 'Agro', 81, 49, 56, 62, 35, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21636936, 0, 96, 35, 177295, 0, 0, 1, 40, 40, 1, 0, 64, 13, 0, 0, 0, 0, 0),
(1867, 'Maxliger', 6, 11, 5, 0, 35, 14, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 81, 28, 270839, 0, 0, 1, -1, -1, 0, 0, 7, 0, 0, 10, 0, 0, 0),
(1870, 'Chelii', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21652878, 0, 23, 23, 145965, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 1, 3, 1, 1),
(1874, 'Alardius', 3, 2, 0, 0, 0, 0, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21644479, 0, 12, 32, 63291, 0, 0, 0, -1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0),
(1883, 'Khane', 49, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21640311, 0, 32, 21, 171420, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 5, 0, 0, 0),
(1914, 'Metyorah', 18, 0, 14, 0, 0, 0, 0, 70, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21647194, 0, 41, 23, 545012, 0, 0, 0, -1, -1, 1, 1, 3, 2, 3, 2, 0, 2, 0),
(1922, 'Thaelion', 13, 10, 0, 13, 5, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21641207, 0, 43, 33, 416870, 0, 0, 0, -1, -1, 1, 1, 1, 9, 0, 0, 0, 0, 0),
(1927, 'Koulibab', 3, 0, 0, 0, 0, 0, 0, 100, 60, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 11, 15, 55657, 0, 0, 1, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(1933, 'Onche', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21645368, 0, 4, 30, 14349, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 0, 0, 0),
(1937, 'Ekelgeister', 28, 0, 14, 26, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 44, 7, 351339, 0, 0, 0, -1, -1, 1, 0, 2, 1, 3, 0, 6, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1945, 'Miroslaw', 67, 22, 0, 24, 0, 16, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21649335, 0, 82, 30, 207100, 0, 0, 0, 50, 50, 0, 0, 17, 8, 0, 0, 0, 0, 0),
(1953, 'Erchael', 37, 45, 76, 24, 12, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21647445, 0, 130, 36, 333894, 0, 0, 0, -1, -1, 1, 0, 105, 0, 0, 7, 0, 0, 0),
(1954, 'Olg le Gras', 120, 71, 52, 19, 41, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21648500, 0, 101, 19, 232769, 0, 0, 1, -1, -1, 0, 0, 146, 0, 0, 13, 0, 0, 0),
(1956, 'Loutch', 2, 0, 0, 0, 0, 4, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21648788, 0, 13, 18, 103583, 0, 0, 0, -1, -1, 1, 1, 1, 2, 1, 0, 1, 0, 0),
(1958, 'D&eacute;vass', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1959, 'Llumeolf', 0, 0, 0, 2, 0, 23, 4, 50, 30, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21687739, 0, 49, 11, 195136, 0, 0, 0, -1, -1, 0, 0, 9, 0, 0, 0, 6, 0, 0),
(1962, 'Noddin', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21675711, 0, 42, 20, 432968, 0, 0, 0, 30, 100, 1, 1, 0, 0, 4, 0, 0, 2, 0),
(1991, 'Aorphen', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 17, 18, 130131, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 2, 0, 0),
(1992, 'Udekus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1993, 'Egeon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 1, 0, 32932, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1994, 'Aridius', 20, 9, -10, 12, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21668421, 0, 39, 20, 200775, 0, 0, 1, -1, -1, 1, 1, 2, 3, 1, 0, 1, 0, 0),
(1995, 'Trano', 25, 0, 48, 0, 0, 0, 0, 100, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21655677, 0, 41, 16, 155853, 0, 0, 0, 50, 50, 1, 1, 1, 0, 0, 10, 0, 0, 0),
(1996, 'Anithralith', 50, 27, 14, 0, 7, 0, 1, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 34, 16, 425083, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 3, 1, 0, 0),
(1998, 'Milors', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1999, 'Xender', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21656376, 0, 26, 20, 167497, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 2, 1, 0, 1),
(2000, 'Noka&icirc;n', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21657034, 0, 5, 19, 29960, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 1, 0),
(2001, 'Murzolk ', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21661225, 0, 42, 16, 375699, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 8, 0, 0),
(2003, 'Caiolivier', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2004, 'Ryanori', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2005, 'Tewhitstar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2006, 'Physsiallis', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 16, 17, 70467, 0, 0, 0, -1, -1, 1, 1, 2, 2, 1, 0, 1, 1, 0),
(2007, 'Luinelinde', 2, 14, 5, 12, 9, 4, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21656071, 0, 63, 11, 270129, 0, 0, 1, -1, -1, 0, 1, 1, 3, 0, 3, 2, 1, 0),
(2008, 'Gaorh', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2009, 'Esprie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2010, 'Kawtar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2011, 'Schaddown', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2012, 'Amanor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2013, 'Omid', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2014, 'Drakemacarn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2015, 'Namijn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2016, 'Jasonbb', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2017, 'Nargorath', 5, 2, 1, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 39, 8, 106314, 0, 0, 1, -1, -1, 1, 1, 2, 3, 1, 0, 0, 0, 0),
(2018, 'Melilot ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2019, 'Manuellaz', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 22637, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2020, 'Inerick', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2021, 'Borfang', 4, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21655962, 0, 35, 19, 114159, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 1, 0),
(2022, 'Erefrerin ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2026, 'Drekal', 21, 14, 34, 0, 0, 0, 0, 100, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21658788, 0, 74, 22, 214726, 0, 0, 0, 30, 40, 0, 0, 1, 5, 0, 3, 0, 0, 0),
(2028, 'L&eacute;nnih', 1, 2, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21664563, 0, 24, 17, 124627, 0, 0, 1, -1, -1, 1, 0, 2, 0, 0, 0, 5, 0, 0),
(2030, 'Archanos', 16, 18, 30, 0, 0, 14, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21660170, 0, 38, 17, 220409, 0, 0, 0, 60, 80, 1, 0, 1, 0, 6, 0, 0, 0, 0),
(2032, 'Dom', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2034, 'Estella', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2035, 'Selynn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2036, 'Elfihris', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2037, 'Zholtron', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2038, 'Alpharius', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2039, 'Volcanos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2040, 'Magalachat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2041, 'Kiara', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2043, 'Latifa', 50, 2, 54, 0, 0, 0, 1, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21679072, 0, 30, 11, 210448, 0, 0, 0, -1, -1, 0, 0, 0, 3, 0, 4, 0, 0, 0),
(2045, 'Landregon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2046, 'Psycor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2047, 'Aldere', 36, 12, 0, 13, 0, 0, 2, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21665445, 0, 48, 18, 260060, 0, 0, 1, -1, -1, 1, 1, 0, 4, 2, 2, 0, 0, 0),
(2048, 'Haelyn', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 32, 6, 190391, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 0, 2, 0, 0),
(2049, 'Guigui', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2050, 'Luwfox', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2051, 'Maulifle', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2052, 'Redgardom', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2053, 'Barnoche', 16, 10, 2, 1, 0, 0, 2, 70, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21673193, 0, 46, 18, 330622, 0, 0, 1, -1, -1, 1, 1, 8, 1, 0, 6, 0, 0, 0),
(2054, 'Gigatora', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2055, 'Pagt', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2056, 'Kalesh', 4, 2, 0, 12, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 63, 16, 303263, 0, 0, 1, -1, -1, 1, 1, 0, 0, 2, 2, 0, 0, 1),
(2057, 'Noaxi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(2058, 'Kristan', 59, 46, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21662569, 0, 61, 16, 556911, 0, 0, 0, -1, -1, 1, 0, 6, 0, 0, 9, 0, 0, 0),
(2062, 'Anzmarial', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2063, 'Yakurma', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2065, 'Ilinia', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2067, 'Ashinseika', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21664806, 0, 5, 7, 48025, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2071, 'Teperek', 16, 0, 0, 50, 0, 0, 0, 60, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21666950, 0, 33, 19, 178870, 0, 0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 6),
(2072, 'Richard Oraph', 2, 0, 0, 0, 0, 4, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21667121, 0, 26, 8, 300471, 0, 0, 0, 70, 70, 0, 0, 1, 0, 0, 0, 5, 0, 0),
(2073, 'Artane', 19, 30, 0, 1, 0, 14, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21689430, 0, 11, 5, 148322, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 2, 0, 0, 0),
(2074, 'Tureloitu', 5, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21668525, 0, 35, 23, 248042, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 4, 0, 0, 0),
(2075, 'Jadilijlna', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2076, 'Entropyrius', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2078, 'Ricow', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2080, 'Ethophine', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23579, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2081, 'Jessonero ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2082, 'Lya ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2083, '&AElig;ternamn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2084, 'Toros', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2085, 'Woulrick', 3, 2, 0, 0, 0, 0, 0, 100, 80, 1, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21667357, 0, 5, 13, 103332, 0, 0, 1, -1, -1, 1, 1, 1, 0, 2, 0, 0, 0, 0),
(2101, 'Oremone', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2102, 'Tijcus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23580, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2103, 'Grog', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21671746, 0, 31, 6, 216115, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2104, 'Arl&eacute;mis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2106, 'Ferge', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2107, 'Bufty', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2108, 'Justirinien', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2109, 'Lila', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2112, 'Defraglaroche', 19, 21, 26, 51, 0, 0, 2, 70, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21692779, 0, 60, 21, 262792, 0, 0, 0, 20, 20, 1, 0, 13, 8, 0, 0, 0, 0, 0),
(2116, 'Caylafoduto', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2117, 'Leglasoth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2125, 'Lykok', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2126, 'Trolur', 15, 10, 0, 0, 6, 0, 0, 90, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21687174, 0, 52, 5, 163035, 0, 0, 1, 30, 50, 0, 0, 0, 1, 0, 6, 0, 0, 0),
(2127, 'Vanniialaa', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2128, 'Vittorio', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2129, 'Eregian', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21673964, 0, 0, 0, 23166, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(2131, 'Rikoulku', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2132, 'Vanipira', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2133, 'Altranach', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21676921, 0, 4, 7, 59854, 0, 0, 1, -1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0),
(2134, 'Iorfel', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 4, 78853, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 3),
(2137, 'Prolor', 18, 0, 16, 1, 0, 0, 3, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21684230, 0, 51, 2, 180967, 0, 0, 0, 10, 60, 0, 0, 3, 6, 0, 0, 0, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2139, 'Maxofsekg', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2140, 'Lilijan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2141, 'Chavel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2142, 'Damoan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2143, 'Krijeks', 20, 11, -10, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 19, 13, 80207, 0, 0, 0, -1, -1, 1, 1, 1, 0, 3, 0, 0, 0, 0),
(2145, 'Freidr', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2146, 'Fabikjing', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2147, 'Franckysaid', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2148, 'Daneboy', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2149, 'Crunkij', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2150, 'Awang', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21684476, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2151, 'Sandtim', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2152, 'Meroanen', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2153, 'Dokijll', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2154, 'Seloma', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2155, 'Zoneaciv', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2156, 'Netenmeth', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21684625, 0, 18, 5, 103822, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 1),
(2157, 'Gaegaetan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21678776, 0, 0, 0, 24594, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2158, 'Saya Sedai', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2159, 'Aroneth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2160, 'Tijrelan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(2161, 'Zimbra', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 7, 1, 97720, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2162, 'Sasorumi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2171, 'Shemmoran', 2, 0, 0, 0, 0, 4, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21679005, 0, 28, 6, 198493, 0, 0, 0, -1, -1, 1, 1, 0, 0, 4, 1, 0, 0, 0),
(2173, 'Midoub', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2175, 'Dyospiros', 2, 0, 0, 0, 0, 4, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21682710, 0, 15, 5, 121246, 0, 0, 0, -1, -1, 1, 1, 2, 0, 1, 0, 1, 1, 0),
(2176, 'Na&euml;lys', 33, 2, 2, 12, 0, 0, 0, 80, 80, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21686140, 0, 13, 1, 110641, 0, 0, 0, -1, -1, 1, 1, 1, 4, 0, 0, 0, 0, 0),
(2177, 'Melagius', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21685638, 0, 8, 2, 96354, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 3, 0, 0),
(2178, 'Gelos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2179, 'Aegnor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2180, 'Ducky', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2181, 'Bleedovengor', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23600, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2182, 'Rotgh&auml;r', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 8, 1, 44072, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2183, 'Ath&eacute;na&iuml;s ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2184, 'Fifi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2185, 'Karnori', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2186, 'Zenno', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2187, 'Matt', 0, 0, 0, 0, 0, 0, 0, 100, 70, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 3, 0, 46103, 0, 0, 1, -1, -1, 1, 0, 0, 0, 1, 0, 0, 0, 0),
(2188, 'Lycane', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21687494, 0, 10, 2, 70672, 0, 0, 0, 20, 20, 1, 0, 0, 0, 0, 2, 0, 0, 0),
(2189, 'Tya', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2190, 'Zaramoth', 3, 2, 0, 0, 0, 0, 0, 70, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21687523, 0, 10, 6, 77028, 0, 0, 1, 50, 100, 0, 1, 1, 1, 0, 0, 0, 0, 2),
(2191, 'Louve', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2192, 'Naloune', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21385, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2193, 'Laka', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2194, 'Laury', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2195, 'Kimi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2205, 'Kragone', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21690260, 0, 6, 1, 55380, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2206, 'Zeshumuk', 3, 2, 0, 0, 0, 0, 0, 70, 70, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21689858, 0, 6, 1, 47562, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(2207, 'Leledu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2208, 'Garosig', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2209, 'Adali', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11apr_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2210, 'Siverhak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2211, 'G&eacute;tro', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2212, 'Styliann', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21689166, 0, 12, 2, 58130, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2213, 'Cara', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2214, 'Porine Sigurd', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2215, 'Indis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2216, 'Theo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2217, 'Zedra', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2225, 'Mortzacus', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21693076, 0, 0, 0, 41944, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2226, 'Hicihogoin', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2227, 'Celka', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);



CREATE TABLE `11apr_joueurs_heros_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL DEFAULT '',
  `race` varchar(25) NOT NULL DEFAULT '',
  `classe` varchar(25) NOT NULL DEFAULT '',
  `dieu` varchar(25) NOT NULL DEFAULT '',
  `titre` varchar(25) NOT NULL DEFAULT '',
  `royaume` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL DEFAULT '0',
  `nb` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2228 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2228 ;

INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(10, 'Maher', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'd`Espeance', 153903, 0),
(11, 'Titlan', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Trimeandre', 192669, 0),
(12, 'Vigrid', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Dies Irae', 162815, 0),
(29, 'Lissana', 'Fée', 'Magicien', 'Magie', 'Intendante', 'd`Esperita', 99461, 0),
(33, 'Demetron', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de la Lande Sanglante', 94504, 0),
(35, 'Meissner', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'd`Ensisheim', 1838276, 0),
(42, 'Ora&iuml;a', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Minoria', 77421, 0),
(44, 'Oracle', 'Nain', 'Prêtre', 'Loi', 'Roi', 'de Korok', 340791, 0),
(45, 'Zhia', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Krucland', 110551, 0),
(58, 'Egleria', 'Célestial', 'Prêtre', 'Mensonge', 'Maîtresse', 'de Cr&eacute;puscule', 207353, 0),
(61, 'Magebar', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Vali&eacute;d&eacute;ria', 394717, 0),
(68, 'Kiminou', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'des Terres F&eacute;lines', 423294, 0),
(71, 'T&ecirc;te-Plate', 'Homme', 'Inquisiteur', 'Compassion', 'Seigneur', 'des Temples de Gr&egrave;s', 475752, 0),
(86, 'Lothadith', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Pardorwen', 79015, 0),
(88, 'Shaugan', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Maltebes', 254933, 0),
(89, 'Argazel', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de Lezagra', 172168, 0),
(92, 'Turfel', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Ligorun', 503409, 0),
(93, 'Danahyl', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Lithrandil', 96563, 0),
(95, 'Rabak', 'Ancien', 'Assassin', 'Mort', 'Vénérable', 'de Keitha', 61413, 0),
(98, 'Nelvin', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Fellindel', 339445, 0),
(116, 'Ge&iuml;nfrindel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Hadarac', 187801, 0),
(119, 'Barbouza', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Wyveand', 221383, 0),
(120, 'Aub&eacute;rion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Danu', 342192, 0),
(125, 'Lhito', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Tarbias', 123095, 0),
(131, 'Dalan', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Rabistiane', 412367, 0),
(132, 'Malorus', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de la Lune Etincellante', 179831, 0),
(133, 'Erios', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Findeli&euml;', 157905, 0),
(136, 'Lirth Evendil', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Planefide', 90718, 0),
(138, 'Vils&auml;en', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de la Confr&eacute;rie', 58136, 0),
(140, 'Ananta', 'Homme', 'Psioniste', 'Magie', 'Seigneur', 'de Mahou', 104386, 0),
(143, 'Rinoacamui', 'Homme', 'Chevalier', 'Guerre', 'Dame', 'de Zantetsuken', 141406, 0),
(144, 'Irkos', 'Orque', 'Barbare', 'Force', 'Chef', 'de Kalferas', 118835, 0),
(145, 'Phyleas', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Dalarian', 229393, 0),
(150, 'Kahzerya', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Draonster', 239466, 0),
(161, 'Marr', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Marzia', 155732, 0),
(162, 'Xelios', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'd`Alamovit', 92986, 0),
(167, 'Klaasninas', 'Homme', 'Inquisiteur', 'Loi', 'Dame', 'de L&eacute;pinar', 123485, 0),
(168, 'Altharam', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'd`Alycastre', 93817, 0),
(173, 'Hulricht', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Solesmes', 273726, 0),
(181, 'Fourbinas', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Baarbute', 123779, 0),
(183, 'Axeolu', 'Géant', 'Shaman', 'Guerre', 'Dame', 'des Terres de Fang', 122980, 0),
(187, 'Boubi', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Manoulie', 101262, 0),
(192, 'Orium', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'd`Argentium', 2930270, 0),
(197, 'Leslie', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Kabalastia', 219986, 0),
(199, 'Benihime', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'd`Urhandhile', 417614, 0),
(204, 'Ovelia', 'Nain', 'Guerrier', 'Guerre', 'Reine', 'de Myrrhyn', 205029, 0),
(217, 'Tylert', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Bazanne', 300749, 0),
(218, 'Alumdil', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Morte-Vie', 130537, 0),
(219, 'Anair&euml;', 'Elfe Noir', 'Assassin', 'Mensonge', 'Patriarche', 'de Tyrien', 295169, 0),
(225, 'Ther`glat', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Brogoth', 315072, 0),
(231, 'Galigonidd', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'd`Infernel', 201538, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(232, 'Matkias', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'du Pays du Malisse', 145598, 0),
(234, 'Poupou', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'du Volcan de Talc', 190061, 0),
(235, 'Dartoil', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Rotergan', 55184, 0),
(236, 'Tefeiri', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Schiv', 120134, 0),
(239, 'Luna', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Matriarche', 'de Lunita', 349257, 0),
(240, 'Kullah', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'd`Humlek', 56873, 0),
(241, 'Nadras', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Phoenixia', 137979, 0),
(242, 'Thelv', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'de Lendhyl', 199457, 0),
(256, 'Husam', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'd`Eleeore', 218316, 0),
(258, 'Febus', 'Orque', 'Shaman', 'Force', 'Chef', 'de Febusi', 120241, 0),
(267, 'Dacapo', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'de Stacato', 102183, 0),
(270, 'Desmondis', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Tatouinis', 278986, 0),
(273, 'Zagior', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Ealodor', 79072, 0),
(278, 'Zahel', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'des Hautes C&icirc;mes', 154180, 0),
(280, 'Rufbumpa', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Wamawala', 189043, 0),
(281, 'Estayr', 'Sahuagin', 'Sorcier', 'Pensée', 'Baron', 'de Corail Creux', 88025, 0),
(282, 'Kalista', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de l`Azur&eacute;e', 166622, 0),
(283, 'Gelthasar Belt', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'd`Elderae', 105482, 0),
(284, 'Tulkas', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'd`Illya-Verte', 363364, 0),
(297, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 225982, 0),
(299, 'Almanarre', 'Orque', 'Barbare', 'Guerre', 'Colporteur', 'de Ragots', 85989, 0),
(300, 'Shadark', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'de Doriane', 235805, 0),
(302, 'L&eacute;otar', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'd`Agnez', 148281, 0),
(303, 'Gauerd&ocirc;me', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'de Dam&ocirc;le', 168180, 0),
(314, 'Eleanora', 'Elfe Noir', 'Démonologiste', 'Mort', 'Matriarche', 'de Phenelis', 282686, 0),
(321, 'Vannams', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Belundra', 241804, 0),
(333, 'Cassandre', 'Homme', 'Assassin', 'Mensonge', 'Dame', 'de Sagamore', 109963, 0),
(345, 'Torme Morselame', 'Nain', 'Guerrier', 'Force', 'Roi', 'de Karank Azak', 165072, 0),
(349, 'Elanor', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'd`Elenyalis', 237613, 0),
(385, 'Aratos', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ast&eacute;rismes ', 171998, 0),
(386, 'Yelderick', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Fantaisianis', 258205, 0),
(408, 'Leorod', 'Elfe', 'Guerrier', 'Honneur', 'Conseiller', 'de Belorod', 144907, 0),
(410, 'Birgenn', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'du Steaksorc', 112003, 0),
(413, 'Tetrahyd', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Tijua', 249632, 0),
(418, 'Avister', 'Vampire', 'Assassin', 'Chaos', 'Comtesse', 'd`Isoth', 141796, 0),
(423, 'Abert', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Tristemine', 84342, 0),
(427, 'Koali', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Vallombre', 128025, 0),
(439, 'Willi', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Bellemont', 188900, 0),
(463, 'Arnaud', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Grivalion', 96861, 0),
(465, 'Dachinos', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Klobos', 137731, 0),
(481, 'Arcelane', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Csur', 105005, 0),
(484, 'Liluth', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Romine', 135003, 0),
(491, 'Ankharon', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Kouroum', 313533, 0),
(555, 'Kaerrawen', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'de Fern', 148673, 0),
(566, 'Bamdinas', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'd`Anstaing', 180957, 0),
(607, 'Konrad', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Kross', 57577, 0),
(637, 'Mathaos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Terres du Nores', 199265, 0),
(640, 'Mattai', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Dixion', 235494, 0),
(672, 'Jeffrey', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de G&eacute;olois', 171440, 0),
(787, 'Dranthen', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'd`Abission', 157814, 0),
(815, 'Mollestho', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Cardie', 115653, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(820, 'Pirelias', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'd`Angoules', 80946, 0),
(835, 'Axel', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'des Fout ', 85325, 0),
(848, 'Arkatros', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Melfir', 435895, 0),
(868, 'Arimane', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'd`Yami', 140281, 0),
(870, 'Xandre', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Mesmont', 152636, 0),
(879, 'Vezk', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'des Terres Maudites', 176362, 0),
(892, 'Rek', 'Sahuagin', 'Prêtre', 'Guerre', 'Baron', 'de Conraed', 96496, 0),
(911, 'Enephia', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'd`Isildira', 394072, 0),
(917, 'Nem&egrave;s', 'Fée', 'Druide', 'Nature', 'Intendante', 'de l`Antre Pourpre', 113750, 0),
(922, 'Malia', 'Fée', 'Enchanteur', 'Pensée', 'Intendante', 'de F&eacute;&eacute;rie', 273764, 0),
(930, 'Zaseo', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Alabasta', 168912, 0),
(933, 'Zedounet', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'de Toprawa', 109920, 0),
(946, 'Ceccua', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'de Borelandi', 94621, 0),
(948, 'Mosoulo', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Technivaule', 242595, 0),
(989, 'Salfalar', 'Célestial', 'Inquisiteur', 'Compassion', 'Maître', 'de Purios', 233115, 0),
(992, 'Aedric', 'Orque', 'Barbare', 'Force', 'Chef', 'de Nardogord', 64060, 0),
(1010, 'Herel', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Mella', 150399, 0),
(1016, 'Eleana', 'Vampire', 'Nécromancien', 'Mort', 'Comtesse', 'de Terrabannias', 82381, 0),
(1057, 'X&eacute;nox', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Kaid', 149895, 0),
(1067, 'Daneel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Ardon', 205163, 0),
(1115, 'Galaway', 'Homme', 'Archer', 'Chance', 'Seigneur', 'd`Igounem', 243265, 0),
(1122, 'Del&eacute;nia', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Tuatha', 170482, 0),
(1141, 'Renard', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de F&eacute;lonie', 42569, 0),
(1145, 'DagBar', 'Ancien', 'Enchanteur', 'Magie', 'Vénérable', 'de Mormarchant', 134961, 0),
(1156, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'd`Oriz-Garsie', 161560, 0),
(1287, 'Nragax', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Brul&eacute;', 414991, 0),
(1299, 'Shinna', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Karazia', 22841, 0),
(1301, 'Dexert', 'Célestial', 'Prêtre', 'Honneur', 'Maîtresse', 'de la For&ecirc;t Mill&eacute;naire', 166677, 0),
(1308, 'Reya', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'du Charnier Goulu', 112957, 0),
(1311, 'Ambre', 'Vampire', 'Assassin', 'Mort', 'Comte', 'd`Ambrosium', 46545, 0),
(1340, 'X&yuml;ixiant’h ', 'Elfe', 'Barde', 'Chemins', 'Conseillère', 'de Baentcher', 90199, 0),
(1403, 'Soreclis', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Lala', 155173, 0),
(1409, 'Esteban', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de la Falaise', 71912, 0),
(1411, 'Karyon', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'd`Amakiir', 213656, 0),
(1412, 'Fouchier', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'des Granches', 200378, 0),
(1414, 'Criton', 'Minotaure', 'Guerrier', 'Loi', 'Seigneur', 'de Bosphore', 224958, 0),
(1418, 'Basl', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'd`Oxymandre', 9637337, 0),
(1458, 'Yodine', 'Célestial', 'Enchanteur', 'Magie', 'Maîtresse', 'de Hovaoine', 159950, 0),
(1460, 'Alec', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de la Ville C&eacute;leste', 122058, 0),
(1463, 'Watmatus', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Watmar', 22571, 0),
(1469, 'Elm', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Argonton', 588552, 0),
(1470, 'Celithrand', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Krenaste', 209231, 0),
(1475, 'Batterusero', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Silenill', 178953, 0),
(1480, 'Alaesir', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'de Tor F&eacute;lia', 86465, 0),
(1492, 'Osterate', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de M&eacute;lios', 167081, 0),
(1499, 'Toroc', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Hammer', 170078, 0),
(1512, 'Keldaran', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'd`Emergence', 88407, 0),
(1519, 'Tirandilis', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Landes Sedus', 125878, 0),
(1522, 'Durshak le Borgne', 'Sahuagin', 'Barbare', 'Guerre', 'Baron', 'de la Tribu Zogdob', 103018, 0),
(1528, 'Saya', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Aglatien', 47495, 0),
(1539, 'Kaiiros', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Aradie', 148929, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1549, 'Caym', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Cala Taur', 156863, 0),
(1550, 'N&auml;ta&euml;l', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Abysse', 135754, 0),
(1562, 'Lyraprime', 'Célestial', 'Paladin', 'Loi', 'Maîtresse', 'D`Amreb', 260515, 0),
(1583, 'Rhal', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Dakra&iuml;', 235151, 0),
(1611, 'Arthurik', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Milar', 72725, 0),
(1627, 'Silayerr', 'Elfe', 'Barde', 'Chance', 'Conseillère', 'de Nihruth', 191950, 0),
(1640, 'Maria', 'Homme', 'Guerrier', 'Force', 'Dame', 'de Colombe', 164814, 0),
(1651, 'Ramiran', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Nimbrthil', 75009, 0),
(1653, 'Damian', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'D`Orobas', 168726, 0),
(1667, 'Vylnius', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Salazariusargonath', 131600, 0),
(1670, 'Bolackot', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Lesiam&eacute;s', 162588, 0),
(1682, 'L&eacute;&ouml;raz', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Raze-Campagne', 150924, 0),
(1685, 'Beltha&iuml;s', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Aninma', 32921, 0),
(1700, 'Gaeldrech', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Underbaran', 146030, 0),
(1715, 'Blindor la Montagne', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Goudrian', 83181, 0),
(1725, 'Galmin', 'Orque', 'Shaman', 'Guerre', 'Chef', 'de Pratoras', 184804, 0),
(1727, 'Thorgrim', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'd`Asurdor', 66581, 0),
(1731, 'Infilz', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Tareksis', 114733, 0),
(1740, 'Oolna', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Izilandi', 173174, 0),
(1745, 'Pyrim', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'D`Eonisis', 52267, 0),
(1747, 'Hordrin', 'Célestial', 'Prêtre', 'Loi', 'Maître', 'de Braeron', 242107, 0),
(1748, 'Baduit', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'd`Hitlum', 140224, 0),
(1755, 'Le Dougec', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Moussijllon ', 735243, 0),
(1770, 'Ameennos', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'D`Artack', 168246, 0),
(1773, 'Pyrazine', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Pyralie', 93824, 0),
(1784, 'Lineus', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Darkania', 241560, 0),
(1795, 'Bornami', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Nevjuice', 173296, 0),
(1804, 'Elorfindelle', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Kalastria', 274126, 0),
(1805, 'Alerob', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'D`Alzawa', 124131, 0),
(1809, 'Kal', 'Sahuagin', 'Prêtre', 'Pensée', 'Baron', 'de De la Cryptheilm', 300125, 0),
(1816, 'Han Main-Tranchante', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Buchenithar', 100108, 0),
(1824, 'Aedorn', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'D`Iorelrahc', 150211, 0),
(1827, 'Khiran', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Ze&iuml;danys', 143091, 0),
(1835, 'Krystophoros', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'd`Obedia', 50949, 0),
(1836, 'Tchinga', 'Gnome', 'Illusioniste', 'Chance', 'Gouverneur', 'de Tchigtchouk', 157849, 0),
(1838, 'Anwaman&euml;l', 'Elfe', 'Guerrier', 'Guerre', 'Conseillère', 'des Terres de Lumi&egrave;res', 185940, 0),
(1842, 'Cometa', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Krait', 83359, 0),
(1851, 'Reyns', 'Homme', 'Barde', 'Chance', 'Seigneur', 'de D&eacute;sert Des Pluies', 196780, 0),
(1852, 'Imbalayo', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de Tahuant', 167151, 0),
(1853, 'Ar&eacute;gonde', 'Homme', 'Psioniste', 'Pensée', 'Dame', 'de Sardhesse', 138512, 0),
(1865, 'D&eacute;ductance', 'Sahuagin', 'Sorcier', 'Pensée', 'Baronne', 'de l`Intuition', 130382, 0),
(1866, 'Agro', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Oresmaux', 114950, 0),
(1867, 'Maxliger', 'Fée', 'Enchanteur', 'Magie', 'Intendant', 'de Pics Celestes', 93367, 0),
(1870, 'Chelii', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Kanalta', 54683, 0),
(1874, 'Alardius', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Astaroth', 15403, 0),
(1883, 'Khane', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de l\'arbre sylvestre', 51549, 0),
(1914, 'Metyorah', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Soseai', 131620, 0),
(1922, 'Thaelion', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Shelazan', 107956, 0),
(1927, 'Koulibab', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Kreruus', 20811, 0),
(1933, 'Onche', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'D`HapLand', 11778, 0),
(1937, 'Ekelgeister', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Lio', 112546, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1945, 'Miroslaw', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Thimeona', 76834, 0),
(1953, 'Erchael', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Tarshen', 84972, 0),
(1954, 'Olg le Gras', 'Géant', 'Barbare', 'Force', 'Seigneur', 'des Monts Ob&egrave;ses', 82594, 0),
(1956, 'Loutch', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de C&eacute;leron', 32209, 0),
(1958, 'D&eacute;vass', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Gayart', 3134, 0),
(1959, 'Llumeolf', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Versanie', 98807, 0),
(1962, 'Noddin', 'Nain', 'Prêtre', 'Chance', 'Roi', 'de Squiercort', 104397, 0),
(1991, 'Aorphen', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hakkyra', 48616, 0),
(1992, 'Udekus', 'Elfe', 'Sorcier', 'Pensée', 'Conseiller', 'de Katacobe', 0, 0),
(1993, 'Egeon', 'Géant', 'Guerrier', 'Légendes', 'Seigneur', 'D`Egeonie', 4262, 0),
(1994, 'Aridius', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'D`Arid', 91598, 0),
(1995, 'Trano', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'd`Uthyar', 138467, 0),
(1996, 'Anithralith', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Nar Arog', 137728, 0),
(1998, 'Milors', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'de Srydion', 0, 0),
(1999, 'Xender', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'D`Hador', 44681, 0),
(2000, 'Noka&icirc;n', 'Vampire', 'Enchanteur', 'Pensée', 'Comte', 'de Kestra`k', 4989, 0),
(2001, 'Murzolk ', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Sebaste', 150507, 0),
(2003, 'Caiolivier', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de Phenisque', 0, 0),
(2004, 'Ryanori', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Lesradgon', 0, 0),
(2005, 'Tewhitstar', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'de Thewhit', 0, 0),
(2006, 'Physsiallis', 'Infernal', 'Assassin', 'Mort', 'Despote', 'de Loard&eacute;ronne', 30054, 0),
(2007, 'Luinelinde', 'Sahuagin', 'Prêtre', 'Chance', 'Baron', 'D`Atleas', 116800, 0),
(2008, 'Gaorh', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'D`Hackushu', 0, 0),
(2009, 'Esprie', 'Elfe', 'Voleur', 'Chance', 'Conseiller', 'de Limastilid', 0, 0),
(2010, 'Kawtar', 'Ancien', 'Assassin', 'Mort', 'Vénérable', 'de Marocan', 0, 0),
(2011, 'Schaddown', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Darkandl', 0, 0),
(2012, 'Amanor', 'Infernal', 'Assassin', 'Ténèbres', 'Despote', 'de Bolox', 0, 0),
(2013, 'Omid', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Moria', 0, 0),
(2014, 'Drakemacarn', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Ferelden', 0, 0),
(2015, 'Namijn', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Chlef', 0, 0),
(2016, 'Jasonbb', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Cj', 0, 0),
(2017, 'Nargorath', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Kalend&ouml;rth', 37400, 0),
(2018, 'Melilot ', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Domaltorth', 0, 0),
(2019, 'Manuellaz', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'D`Hasias', 4181, 0),
(2020, 'Inerick', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Goijld', 0, 0),
(2021, 'Borfang', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Royaume Sacr&eacute;e', 57554, 0),
(2022, 'Erefrerin ', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Mor&eacute;van', 0, 0),
(2026, 'Drekal', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Krugor', 131313, 0),
(2028, 'L&eacute;nnih', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Drizaste', 40241, 0),
(2030, 'Archanos', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'de Carialos', 157783, 0),
(2032, 'Dom', 'Ancien', 'Guerrier', 'Honneur', 'Vénérable', 'du Bethunoi', 0, 0),
(2034, 'Estella', 'Elfe', 'Archer', 'Chance', 'Conseillère', 'de Choupette', 0, 0),
(2035, 'Selynn', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'D`Elfya', 0, 0),
(2036, 'Elfihris', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de F&eacute;erie', 0, 0),
(2037, 'Zholtron', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Hm', 0, 0),
(2038, 'Alpharius', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'D`Helk', 0, 0),
(2039, 'Volcanos', 'Infernal', 'Assassin', 'Mort', '', 'des Volcans G&eacute;ants', 0, 0),
(2040, 'Magalachat', 'Elfe', 'Sorcier', 'Magie', 'Conseillère', 'du Royame', 0, 0),
(2041, 'Kiara', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Gonchila', 0, 0),
(2043, 'Latifa', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Wido', 81055, 0),
(2045, 'Landregon', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de L Impossible', 0, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2046, 'Psycor', 'Orque', 'Shaman', 'Guerre', 'Chef', 'de Fiore', 0, 0),
(2047, 'Aldere', 'Nain', 'Guerrier', 'Honneur', 'Roi', 'D`Hijsterian', 175588, 0),
(2048, 'Haelyn', 'Célestial', 'Prêtre', 'Honneur', 'Maître', 'D`Allansia', 78637, 0),
(2049, 'Guigui', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Guiguisland', 0, 0),
(2050, 'Luwfox', 'Vampire', 'Psioniste', 'Pensée', 'Comtesse', 'de Suzuran', 0, 0),
(2051, 'Maulifle', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Laygion', 0, 0),
(2052, 'Redgardom', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Redgardom City', 0, 0),
(2053, 'Barnoche', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de PauvreTerre', 118082, 0),
(2054, 'Gigatora', 'Vampire', 'Assassin', 'Mort', 'Comte', 'D`Akatsuki', 0, 0),
(2055, 'Pagt', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Costantinople', 3134, 0),
(2056, 'Kalesh', 'Ancien', 'Guerrier', 'Force', 'Vénérable', 'de Tortreth', 115488, 0),
(2057, 'Noaxi', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Mysticown', 3280, 0),
(2058, 'Kristan', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Morneval', 147948, 0),
(2062, 'Anzmarial', 'Vampire', 'Enchanteur', 'Magie', 'Comtesse', 'D`Yumioise', 0, 0),
(2063, 'Yakurma', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Barasoth', 0, 0),
(2065, 'Ilinia', 'Fée', 'Enchanteur', 'Chaos', 'Intendante', 'D`Alinka', 0, 0),
(2067, 'Ashinseika', 'Infernal', 'Assassin', 'Ténèbres', 'Despote', 'd`Adjuessi', 8843, 0),
(2071, 'Teperek', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'D`Avoine', 106052, 0),
(2072, 'Richard Oraph', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'de l`Empire D`Huurn', 97525, 0),
(2073, 'Artane', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'D`Ador&eacute;a', 75763, 0),
(2074, 'Tureloitu', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Leagenuds', 102238, 0),
(2075, 'Jadilijlna', 'Célestial', 'Magicien', 'Magie', 'Maîtresse', 'de Cristallia', 0, 0),
(2076, 'Entropyrius', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'D`Entrcity', 0, 0),
(2078, 'Ricow', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Ricowland', 0, 0),
(2080, 'Ethophine', 'Vampire', 'Assassin', 'Mort', 'Comtesse', 'D`Astroxa', 3157, 0),
(2081, 'Jessonero ', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Jessonity', 0, 0),
(2082, 'Lya ', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de De la Lumi&egrave;re', 3134, 0),
(2083, '&AElig;ternamn', 'Vampire', 'Démonologiste', 'Ténèbres', 'Comte', 'de &AElig;ternia', 0, 0),
(2084, 'Toros', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Barton', 0, 0),
(2085, 'Woulrick', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Laurierville', 25398, 0),
(2101, 'Oremone', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Victorie', 0, 0),
(2102, 'Tijcus', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'D`Astriolle', 3527, 0),
(2103, 'Grog', 'Orque', 'Guerrier', 'Force', 'Chef', 'D`H&eacute;vanaziss', 80179, 0),
(2104, 'Arl&eacute;mis', 'Elfe', 'Guerrier', 'Légendes', 'Conseillère', 'D`Inlypes', 0, 0),
(2106, 'Ferge', 'Elfe Noir', 'Guerrier', 'Honneur', 'Patriarche', 'D`Hitloodney', 0, 0),
(2107, 'Bufty', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Diamond', 0, 0),
(2108, 'Justirinien', 'Elfe', 'Rôdeur', 'Nature', 'Conseiller', 'D`Anchora', 0, 0),
(2109, 'Lila', 'Homme', 'Guerrier', 'Guerre', 'Dame', 'de Lilahorim', 0, 0),
(2112, 'Defraglaroche', 'Homme', 'Nécromancien', 'Mort', 'Seigneur', 'de Kronn', 164954, 0),
(2116, 'Caylafoduto', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'D`Aikmakato', 0, 0),
(2117, 'Leglasoth', 'Fée', 'Enchanteur', 'Pensée', 'Intendante', 'de Prinicepst', 0, 0),
(2125, 'Lykok', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de la Terre des Anciens', 0, 0),
(2126, 'Trolur', 'Orque', 'Barbare', 'Guerre', 'Chef', 'd`Oxonium', 114539, 0),
(2127, 'Vanniialaa', 'Vampire', 'Sorcier', 'Pensée', 'Comtesse', 'de le Royom&eacute;chkan', 0, 0),
(2128, 'Vittorio', 'Infernal', 'Nécromancien', 'Mort', '', 'D`Asgerth', 0, 0),
(2129, 'Eregian', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de Pondiara', 3134, 0),
(2131, 'Rikoulku', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de T&eacute;cila', 0, 0),
(2132, 'Vanipira', 'Vampire', 'Démonologiste', 'Mort', 'Comtesse', 'de La Vampirette', 0, 0),
(2133, 'Altranach', 'Célestial', 'Inquisiteur', 'Loi', 'Maître', 'D`Arcadia', 14431, 0),
(2134, 'Iorfel', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Lokeria', 22656, 0),
(2137, 'Prolor', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Demacia', 83975, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2139, 'Maxofsekg', 'Elfe Noir', 'Sorcier', 'Pensée', 'Patriarche', 'de Maxofseking', 0, 0),
(2140, 'Lilijan', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'de Faintomne', 0, 0),
(2141, 'Chavel', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de Maafa', 0, 0),
(2142, 'Damoan', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'de Dragonia', 0, 0),
(2143, 'Krijeks', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Terres Dures', 34784, 0),
(2145, 'Freidr', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'de Talis', 0, 0),
(2146, 'Fabikjing', 'Vampire', 'Démonologiste', 'Magie', 'Comte', 'de Fabkingdorm', 3244, 0),
(2147, 'Franckysaid', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Marvelos', 0, 0),
(2148, 'Daneboy', 'Nain', 'Prêtre', 'Pensée', 'Roi', 'de Lapdegnis', 0, 0),
(2149, 'Crunkij', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de Terdesimorth', 0, 0),
(2150, 'Awang', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Berliste', 3134, 0),
(2151, 'Sandtim', 'Vampire', 'Démonologiste', 'Ténèbres', 'Comtesse', 'de Xaf', 0, 0),
(2152, 'Meroanen', 'Homme', 'Chevalier', 'Loi', 'Seigneur', 'de Zegla', 0, 0),
(2153, 'Dokijll', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Cauchemar Land', 0, 0),
(2154, 'Seloma', 'Célestial', 'Prêtre', 'Force', 'Maîtresse', 'de Fenris', 0, 0),
(2155, 'Zoneaciv', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Saintdie', 0, 0),
(2156, 'Netenmeth', 'Sahuagin', 'Guerrier', 'Guerre', 'Baron', 'de Mouijlle', 79204, 0),
(2157, 'Gaegaetan', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Gaecity', 3128, 0),
(2158, 'Saya Sedai', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'D`Elviadriel', 0, 0),
(2159, 'Aroneth', 'Elfe Noir', 'Guerrier', 'Honneur', 'Patriarche', 'de Leserdypse', 0, 0),
(2160, 'Tijrelan', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Lesyssab', 3134, 0),
(2161, 'Zimbra', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Lakeryon', 56293, 0),
(2162, 'Sasorumi', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Kourohanath', 0, 0),
(2171, 'Shemmoran', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Moga', 69100, 0),
(2173, 'Midoub', 'Géant', 'Shaman', 'Force', 'Seigneur', 'de Vike', 0, 0),
(2175, 'Dyospiros', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'd`Hauts Cieux', 28116, 0),
(2176, 'Na&euml;lys', 'Sahuagin', 'Barbare', 'Force', 'Baronne', 'd`Asmodia', 50347, 0),
(2177, 'Melagius', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Midghard', 19921, 0),
(2178, 'Gelos', 'Orque', 'Guerrier', 'Légendes', 'Chef', 'de Ranes', 0, 0),
(2179, 'Aegnor', 'Ancien', 'Guerrier', 'Guerre', '', 'de Demonia', 0, 0),
(2180, 'Ducky', 'Gnome', 'Voleur', 'Ténèbres', 'Gouverneur', 'de Canrdland', 0, 0),
(2181, 'Bleedovengor', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de CityOfBlood', 3144, 0),
(2182, 'Rotgh&auml;r', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de les Terres de Glaces', 14364, 0),
(2183, 'Ath&eacute;na&iuml;s ', 'Elfe Noir', 'Sorcier', 'Magie', 'Matriarche', 'de T&eacute;rabitia', 0, 0),
(2184, 'Fifi', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Terrabitia', 0, 0),
(2185, 'Karnori', 'Elfe Noir', 'Guerrier', 'Force', 'Matriarche', 'de Zeltoproria', 0, 0),
(2186, 'Zenno', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Tornland', 0, 0),
(2187, 'Matt', 'Vampire', 'Démonologiste', 'Magie', 'Comte', 'de Wins', 16319, 0),
(2188, 'Lycane', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Luperque', 10534, 0),
(2189, 'Tya', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Reza', 0, 0),
(2190, 'Zaramoth', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Valdis', 40465, 0),
(2191, 'Louve', 'Elfe', 'Archer', 'Chance', 'Conseillère', 'de Swadia', 0, 0),
(2192, 'Naloune', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Nalounled', 3134, 0),
(2193, 'Laka', 'Elfe Noir', 'Sorcier', 'Magie', 'Matriarche', 'de Scorpia', 0, 0),
(2194, 'Laury', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Kerdos', 0, 0),
(2195, 'Kimi', 'Elfe', 'Guerrier', 'Guerre', 'Conseillère', 'du Royaume du Cheval', 0, 0),
(2205, 'Kragone', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Styx', 6168, 0),
(2206, 'Zeshumuk', 'Infernal', 'Guerrier', 'Guerre', 'Despote', 'de Mordiast&eacute;', 11849, 0),
(2207, 'Leledu', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Fantasia', 0, 0),
(2208, 'Garosig', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'de Feralas', 0, 0),
(2209, 'Adali', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Boenizu', 0, 0);INSERT INTO `11apr_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2210, 'Siverhak', 'Célestial', 'Inquisiteur', 'Loi', 'Maître', 'de Morius', 0, 0),
(2211, 'G&eacute;tro', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Eorne', 0, 0),
(2212, 'Styliann', 'Elfe', 'Prêtre', 'Honneur', 'Conseiller', 'de Xerxes', 15411, 0),
(2213, 'Cara', 'Sahuagin', 'Guerrier', 'Légendes', 'Baronne', 'D`Argent', 0, 0),
(2214, 'Porine Sigurd', 'Homme', 'Archer', 'Chance', 'Seigneur', 'de Siogurd', 0, 0),
(2215, 'Indis', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de La Vall&eacute;e D`Ostoria', 3134, 0),
(2216, 'Theo', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Lion', 0, 0),
(2217, 'Zedra', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'D`Ergtre', 0, 0),
(2225, 'Mortzacus', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de Mortfort', 4158, 0),
(2226, 'Hicihogoin', 'Ancien', 'Assassin', 'Mort', 'Vénérable', 'de Seareiteit', 0, 0),
(2227, 'Celka', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'D`Empire de Jade', 0, 0);



CREATE TABLE `11apr_joueurs_stats_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL DEFAULT '',
  `niveau` tinyint(4) NOT NULL DEFAULT '0',
  `puissance` int(11) NOT NULL DEFAULT '0',
  `xp` int(11) NOT NULL DEFAULT '0',
  `but` int(11) NOT NULL DEFAULT '0',
  `att` float(5,2) NOT NULL DEFAULT '0.00',
  `def` float(5,2) NOT NULL DEFAULT '0.00',
  `ini` float(5,2) NOT NULL DEFAULT '0.00',
  `cha` float(5,2) NOT NULL DEFAULT '0.00',
  `end` float(5,2) NOT NULL DEFAULT '0.00',
  `pui` float(5,2) NOT NULL DEFAULT '0.00',
  `mana` int(11) NOT NULL DEFAULT '0',
  `victoire` tinyint(4) NOT NULL DEFAULT '0',
  `defaite` tinyint(4) NOT NULL DEFAULT '0',
  `argent` int(11) NOT NULL DEFAULT '0',
  `soufre` mediumint(9) NOT NULL DEFAULT '0',
  `mercure` mediumint(9) NOT NULL DEFAULT '0',
  `cristal` mediumint(9) NOT NULL DEFAULT '0',
  `gemme` mediumint(9) NOT NULL DEFAULT '0',
  `heure` tinyint(4) NOT NULL DEFAULT '0',
  `indice_militaire` int(11) NOT NULL DEFAULT '19314424',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2228 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2228 ;

INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(10, 'Maher', 16, 153903, 121916, 136000, 76.00, 59.00, 88.00, 44.00, 84.00, 94.00, 40000, 0, 0, 5342213, 1711, 1008, 1999, 1377, 0, 21690675),
(11, 'Titlan', 19, 192669, 174962, 190000, 164.00, 46.00, 47.50, 27.50, 77.50, 114.50, 34267, 0, 0, 1631166, 1096, 249, 484, 225, 0, 21690285),
(12, 'Vigrid', 21, 162815, 224248, 231000, 123.50, 117.50, 113.50, 60.00, 101.00, 82.50, 23105, 0, 0, 1133299, 735, 419, 162, 203, 0, 21692705),
(29, 'Lissana', 20, 99461, 192464, 210000, 20.00, 51.00, 62.00, 167.00, 110.00, 196.00, 50000, 0, 0, 118126, 979, 880, 700, 857, 0, 21687472),
(33, 'Demetron', 17, 94504, 150626, 153000, 200.00, 80.50, 56.00, 15.50, 43.50, 18.50, 50000, 0, 0, 4436965, 301, 397, 407, 336, 0, 21673412),
(35, 'Meissner', 23, 1838276, 269612, 276000, 184.50, 87.00, 244.00, 24.00, 35.00, 22.50, 14340, 0, 0, 815056, 5249, 5260, 6453, 6097, 0, 21691113),
(42, 'Ora&iuml;a', 16, 77421, 134723, 136000, 215.00, 190.00, 110.00, 13.00, 67.00, 27.00, 20000, 0, 0, 4851162, 474, 347, 438, 289, 0, 21685550),
(44, 'Oracle', 34, 340791, 586727, 595000, 326.00, 239.00, 20.00, 193.33, 193.00, 172.00, 33999, 0, 0, 128993, 328, 996, 315, 324, 0, 21693062),
(45, 'Zhia', 11, 110551, 61556, 66000, 12.50, 41.00, 29.00, 35.00, 81.50, 32.50, 40000, 0, 0, 196000, 315, 226, 398, 372, 0, 21689112),
(58, 'Egleria', 22, 207353, 241627, 253000, 93.00, 114.00, 30.00, 130.00, 87.00, 159.00, 50000, 0, 0, 125645, 188, 136, 315, 346, 0, 21691618),
(61, 'Magebar', 24, 394717, 278542, 300000, 90.00, 25.00, 117.00, 65.00, 125.00, 194.00, 0, 0, 0, 67567, 132, 666, 749, 129, 0, 21687631),
(68, 'Kiminou', 37, 423294, 694610, 703000, 240.00, 157.00, 272.00, 162.00, 109.00, 86.00, 28811, 0, 0, 1390510, 1610, 1605, 591, 1548, 0, 21689956),
(71, 'T&ecirc;te-Plate', 42, 475752, 865448, 903000, 208.00, 199.00, 163.00, 187.00, 344.00, 185.00, 38232, 0, 0, 1069721, 886, 638, 865, 515, 0, 21690731),
(86, 'Lothadith', 21, 79015, 223041, 231000, 26.50, 54.50, 63.50, 82.00, 99.00, 300.50, 50000, 0, 0, 217728, 702, 468, 348, 816, 0, 21688976),
(88, 'Shaugan', 13, 254933, 78059, 91000, 55.00, 26.00, 53.50, 6.50, 74.50, 88.50, 32, 0, 0, 228627, 1808, 1376, 1153, 1733, 0, 21689309),
(89, 'Argazel', 28, 172168, 387649, 406000, 55.00, 58.00, 73.00, 182.00, 229.00, 353.00, 19232, 0, 0, 5115307, 1859, 886, 2074, 983, 0, 21693252),
(92, 'Turfel', 47, 503409, 1098350, 1128000, 513.50, 359.50, 60.00, 253.50, 237.50, 181.00, 50000, 0, 0, 4726770, 9667, 8377, 7941, 8272, 0, 21689782),
(93, 'Danahyl', 20, 96563, 203708, 210000, 61.00, 35.00, 74.00, 75.00, 106.00, 199.00, 50000, 0, 0, 151045, 535, 58, 94, 296, 0, 21691810),
(95, 'Rabak', 16, 61413, 133334, 136000, 86.00, 43.00, 177.00, 58.00, 39.00, 46.00, 40000, 0, 0, 1617644, 280, 129, 12, 75, 0, 21665334),
(98, 'Nelvin', 18, 339445, 163001, 171000, 121.00, 56.00, 189.00, 33.00, 27.00, 32.00, 3392, 0, 0, 5507173, 266, 7, 43, 239, 0, 21688740),
(116, 'Ge&iuml;nfrindel', 18, 187801, 156476, 171000, 78.00, 59.00, 129.00, 61.00, 58.00, 76.00, 48746, 0, 0, 528797, 1652, 1925, 2127, 1661, 0, 21692657),
(119, 'Barbouza', 16, 221383, 120696, 136000, 68.00, 29.00, 39.00, 47.00, 51.00, 128.00, 24643, 0, 0, 215843, 808, 625, 862, 1073, 0, 21693122),
(120, 'Aub&eacute;rion', 23, 342192, 261417, 276000, 39.50, 82.50, 139.50, 170.00, 112.00, 232.50, 22437, 0, 0, 1149123, 639, 1063, 328, 892, 0, 21686232),
(125, 'Lhito', 32, 123095, 513037, 528000, 247.00, 181.00, 252.00, 101.00, 47.00, 27.00, 50000, 0, 0, 115017, 1420, 881, 1751, 1254, 0, 21691942),
(131, 'Dalan', 39, 412367, 746151, 780000, 223.50, 202.00, 87.00, 145.50, 135.50, 182.50, 34501, 0, 0, 2869354, 1325, 1371, 1024, 618, 0, 21688868),
(132, 'Malorus', 38, 179831, 716178, 741000, 125.00, 57.00, 131.00, 181.33, 179.00, 378.00, 5480, 0, 0, 1658347, 3826, 4907, 4114, 2589, 0, 21687756),
(133, 'Erios', 17, 157905, 152192, 153000, 73.50, 100.00, 157.00, 48.00, 43.00, 27.50, 52, 0, 0, 2682853, 93, 92, 190, 144, 0, 21693201),
(136, 'Lirth Evendil', 20, 90718, 200840, 210000, 145.00, 58.00, 182.00, 41.00, 34.00, 22.00, 50000, 0, 0, 2705866, 67, 0, 54, 60, 0, 21667923),
(138, 'Vils&auml;en', 16, 58136, 126889, 136000, 211.00, 194.00, 80.00, 16.00, 44.00, 23.00, -214197, 0, 0, 60575, 686, 661, 653, 747, 0, 21690422),
(140, 'Ananta', 10, 104386, 49820, 55000, 57.00, 62.00, 39.00, 56.00, 47.00, 72.00, 22614, 0, 0, 5192352, 557, 536, 469, 535, 0, 21692685),
(143, 'Rinoacamui', 12, 141406, 71306, 78000, 92.00, 85.00, 34.00, 43.00, 30.00, 25.00, 40000, 0, 0, 3325613, 1607, 1085, 1349, 1230, 0, 21685504),
(144, 'Irkos', 22, 118835, 246998, 253000, 242.00, 169.00, 129.00, 86.00, 80.00, 36.00, 39090, 0, 0, 683330, 1158, 822, 1067, 1296, 0, 21691760),
(145, 'Phyleas', 35, 229393, 620077, 630000, 246.50, 131.00, 275.00, 56.00, 87.00, 28.50, 7356, 0, 0, 148204, 295, 299, 226, 246, 0, 21693279),
(150, 'Kahzerya', 27, 239466, 357681, 378000, 240.00, 282.00, 144.00, 75.50, 117.00, 26.50, 10382, 0, 0, 458148, 621, 506, 267, 440, 0, 21691802),
(161, 'Marr', 15, 155732, 108026, 120000, 199.00, 122.50, 52.00, 14.50, 56.50, 25.50, 12089, 0, 0, 436896, 494, 608, 789, 485, 0, 21689821),
(162, 'Xelios', 11, 92986, 56221, 66000, 58.00, 41.00, 30.50, 23.50, 47.50, 87.50, 40000, 0, 0, 5671639, 935, 687, 642, 592, 0, 21661719),
(167, 'Klaasninas', 26, 123485, 347961, 351000, 116.00, 125.00, 25.00, 38.00, 94.00, 77.00, 40000, 0, 0, 944965, 522, 269, 692, 343, 0, 21691646),
(168, 'Altharam', 19, 93817, 188067, 190000, 233.00, 222.00, 48.00, 16.50, 54.00, 17.50, 4444, 0, 0, 85264, 185, 111, 485, 224, 0, 21692678),
(173, 'Hulricht', 30, 273726, 448840, 465000, 170.00, 123.00, 156.00, 154.00, 101.00, 90.00, 36, 0, 0, 1351982, 907, 686, 540, 811, 0, 21690290),
(181, 'Fourbinas', 21, 123779, 217236, 231000, 55.50, 33.00, 46.00, 46.50, 199.00, 307.00, 13430, 0, 0, 1157335, 374, 472, 815, 792, 0, 21692826),
(183, 'Axeolu', 17, 122980, 137626, 153000, 87.00, 33.00, 39.50, 16.50, 58.50, 89.50, 19415, 0, 0, 2162667, 246, 155, 134, 235, 0, 21687008),
(187, 'Boubi', 21, 101262, 230222, 231000, 38.50, 57.50, 81.50, 77.00, 61.00, 135.50, 50000, 0, 0, 2297503, 223, 36, 334, 415, 0, 21681337),
(192, 'Orium', 28, 2930270, 386763, 406000, 225.00, 221.00, 136.00, 235.33, 68.00, 27.00, 348, 0, 0, 4544357, 8066, 6456, 6258, 5630, 0, 21683130),
(197, 'Leslie', 17, 219986, 141469, 153000, 59.00, 44.00, 96.00, 52.00, 25.00, 32.00, 35, 0, 0, 3731762, 246, 158, 265, 288, 0, 21693343),
(199, 'Benihime', 30, 417614, 464756, 465000, 46.00, 27.00, 50.00, 129.00, 198.00, 282.00, 4872, 0, 0, 1752925, 952, 1216, 569, 2293, 0, 21731607),
(204, 'Ovelia', 18, 205029, 161166, 171000, 164.00, 160.00, 93.00, 22.00, 69.00, 18.00, 30000, 0, 0, 2083323, 283, 187, 26, 351, 0, 21691725),
(217, 'Tylert', 22, 300749, 247867, 253000, 162.00, 71.00, 169.00, 35.00, 38.00, 22.00, 277, 0, 0, 322561, 180, 104, 228, 115, 0, 21693469),
(218, 'Alumdil', 22, 130537, 238198, 253000, 53.00, 34.00, 96.00, 61.00, 129.00, 179.00, 42820, 0, 0, 64302, 274, 97, 264, 172, 0, 21694387),
(219, 'Anair&euml;', 38, 295169, 717775, 741000, 313.00, 152.00, 386.00, 197.33, 62.00, 50.00, 35251, 0, 0, 1664814, 1222, 940, 867, 1738, 0, 21692124),
(225, 'Ther`glat', 22, 315072, 243062, 253000, 108.00, 94.00, 40.70, 54.00, 90.00, 107.00, 42580, 0, 0, 6520, 1007, 380, 713, 511, 0, 21690294),
(231, 'Galigonidd', 17, 201538, 137529, 153000, 105.00, 62.00, 145.00, 43.00, 32.00, 41.00, 6621, 0, 0, 366909, 1814, 1586, 2285, 1456, 0, 21693110);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(232, 'Matkias', 18, 145598, 161753, 171000, 86.00, 77.00, 140.00, 34.00, 104.00, 57.00, 36, 0, 0, 1793754, 815, 542, 967, 613, 0, 21693407),
(234, 'Poupou', 19, 190061, 178511, 190000, 82.00, 36.00, 124.50, 35.50, 93.50, 165.50, 7790, 0, 0, 7375324, 730, 622, 1223, 429, 0, 21693294),
(235, 'Dartoil', 8, 55184, 33825, 36000, 41.00, 25.00, 52.00, 41.00, 22.00, 21.00, 30000, 0, 0, 2939982, 328, 600, 412, 217, 0, 21692811),
(236, 'Tefeiri', 17, 120134, 143774, 153000, 96.00, 110.00, 102.00, 30.50, 31.00, 55.50, 899, 0, 0, 244496, 771, 692, 590, 656, 0, 21690447),
(239, 'Luna', 15, 349257, 110236, 120000, 129.00, 47.50, 37.50, 35.00, 85.50, 117.50, 379, 0, 0, 730235, 1613, 1398, 1176, 1219, 0, 21708735),
(240, 'Kullah', 15, 56873, 116095, 120000, 26.50, 27.00, 37.00, 34.50, 78.00, 120.00, 50000, 0, 0, 15858, 620, 237, 970, 0, 0, 21690271),
(241, 'Nadras', 18, 137979, 163784, 171000, 24.00, 32.00, 41.00, 83.00, 69.00, 236.00, 40000, 0, 0, 7404121, 1041, 1205, 414, 446, 0, 21686916),
(242, 'Thelv', 22, 199457, 240861, 253000, 34.00, 19.00, 49.00, 86.00, 162.00, 295.00, 17854, 0, 0, 2993988, 1067, 530, 820, 457, 0, 21693150),
(256, 'Husam', 19, 218316, 183376, 190000, 43.50, 17.50, 45.50, 36.50, 75.50, 130.50, 14015, 0, 0, 369298, 192, 293, 249, 104, 0, 21693368),
(258, 'Febus', 23, 120241, 258445, 276000, 104.00, 66.00, 132.50, 35.50, 164.50, 173.50, 759, 0, 0, 1120141, 96, 109, 93, 493, 0, 21691366),
(267, 'Dacapo', 14, 102183, 96746, 105000, 44.00, 44.00, 49.00, 35.00, 75.00, 48.00, 2, 0, 0, 47493, 1462, 1166, 573, 1626, 0, 21693334),
(270, 'Desmondis', 19, 278986, 175605, 190000, 45.50, 55.00, 54.00, 70.50, 70.50, 102.50, 1135, 0, 0, 138519, 485, 705, 359, 223, 0, 21689774),
(273, 'Zagior', 18, 79072, 158499, 171000, 78.00, 58.00, 47.00, 41.00, 77.00, 92.00, 40000, 0, 0, 3575529, 195, 221, 242, 184, 0, 21681024),
(278, 'Zahel', 24, 154180, 282786, 300000, 31.00, 91.00, 64.00, 107.00, 139.00, 104.00, 7950, 0, 0, 785617, 777, 948, 469, 859, 0, 21693155),
(280, 'Rufbumpa', 19, 189043, 177977, 190000, 117.50, 66.00, 109.00, 34.00, 28.00, 32.50, 21491, 0, 0, 4178423, 214, 317, 454, 377, 0, 21693136),
(281, 'Estayr', 15, 88025, 116693, 120000, 37.50, 23.50, 44.00, 66.00, 41.00, 84.00, 50000, 0, 0, 11331282, 21, 307, 53, 303, 0, 21634340),
(282, 'Kalista', 20, 166622, 204807, 210000, 153.00, 171.00, 147.00, 89.00, 34.00, 32.00, 29426, 0, 0, 578748, 1546, 703, 709, 763, 0, 21693438),
(283, 'Gelthasar Belt', 31, 105482, 494821, 496000, 191.00, 234.00, 158.00, 174.83, 106.00, 38.50, 50000, 0, 0, 127866, 497, 243, 291, 149, 0, 21658681),
(284, 'Tulkas', 31, 363364, 477582, 496000, 106.00, 99.00, 168.00, 158.00, 74.00, 74.00, 22809, 0, 0, 2022902, 6346, 5776, 5829, 5680, 0, 21693460),
(297, 'Bartor', 17, 225982, 152003, 153000, 51.50, 43.00, 127.00, 77.00, 21.50, 44.00, 50000, 0, 0, 3401820, 236, 16, 87, 12, 0, 21683319),
(299, 'Almanarre', 21, 85989, 220007, 231000, 172.00, 103.50, 127.00, 19.50, 67.50, 19.50, 30000, 0, 0, 19971, 619, 880, 417, 852, 0, 21693147),
(300, 'Shadark', 19, 235805, 189219, 190000, 142.00, 37.00, 196.00, 77.00, 32.00, 47.00, 11871, 0, 0, 958991, 1746, 1351, 1438, 1432, 0, 21691202),
(302, 'L&eacute;otar', 17, 148281, 142195, 153000, 110.00, 134.00, 37.50, 56.00, 48.00, 34.50, 40303, 0, 0, 2210736, 260, 213, 249, 280, 0, 21686806),
(303, 'Gauerd&ocirc;me', 28, 168180, 378735, 406000, 93.00, 51.00, 90.00, 48.00, 99.00, 174.00, 10368, 0, 0, 1686615, 1328, 1582, 1595, 1034, 0, 21693205),
(314, 'Eleanora', 18, 282686, 170996, 171000, 58.00, 25.00, 43.00, 36.00, 61.00, 151.00, 452, 0, 0, 627195, 181, 37, 150, 74, 0, 21693399),
(321, 'Vannams', 21, 241804, 216516, 231000, 123.50, 92.50, 51.50, 165.33, 87.00, 61.50, 48791, 0, 0, 49718, 149, 273, 211, 121, 0, 21690740),
(333, 'Cassandre', 26, 109963, 334609, 351000, 144.00, 133.00, 209.00, 132.00, 98.00, 51.00, 4064, 0, 0, 30944, 540, 513, 638, 385, 0, 21693277),
(345, 'Torme Morselame', 18, 165072, 163730, 171000, 119.00, 123.00, 72.00, 16.00, 74.00, 23.00, 40000, 0, 0, 655462, 421, 387, 481, 550, 0, 21692092),
(349, 'Elanor', 24, 237613, 285121, 300000, 154.00, 159.00, 130.00, 175.33, 150.00, 59.00, 22701, 0, 0, 3930458, 1667, 1971, 1683, 1893, 0, 21687712),
(385, 'Aratos', 24, 171998, 297729, 300000, 22.00, 33.00, 64.00, 147.00, 117.00, 233.00, 230, 0, 0, 48829, 754, 279, 329, 620, 0, 21691345),
(386, 'Yelderick', 32, 258205, 513945, 528000, 230.00, 190.00, 32.00, 157.00, 124.00, 76.00, 325, 0, 0, 185952, 1001, 767, 706, 641, 0, 21685902),
(408, 'Leorod', 17, 144907, 136607, 153000, 111.00, 128.00, 73.00, 35.50, 45.00, 37.50, 60, 0, 0, 428473, 1573, 1551, 1200, 1690, 0, 21693270),
(410, 'Birgenn', 21, 112003, 224229, 231000, 189.50, 171.50, 84.50, 122.00, 145.00, 70.50, 48460, 0, 0, 2017692, 608, 650, 955, 559, 0, 21692742),
(413, 'Tetrahyd', 28, 249632, 391977, 406000, 48.00, 100.00, 68.00, 81.00, 196.00, 292.00, 43097, 0, 0, 1758434, 613, 476, 797, 422, 0, 21691913),
(418, 'Avister', 12, 141796, 74748, 78000, 38.00, 27.00, 75.00, 33.00, 47.00, 27.00, 39177, 0, 0, 2265404, 1516, 1711, 2235, 1837, 0, 21680381),
(423, 'Abert', 15, 84342, 116427, 120000, 61.50, 41.50, 41.50, 31.50, 92.50, 129.50, 292, 0, 0, 403333, 991, 898, 370, 1147, 0, 21693330),
(427, 'Koali', 13, 128025, 78223, 91000, 44.50, 29.00, 48.00, 33.50, 63.00, 102.00, 40000, 0, 0, 11236451, 279, 191, 110, 88, 0, 21661841),
(439, 'Willi', 7, 188900, 26467, 28000, 61.00, 54.00, 22.00, 11.50, 25.00, 13.50, 25358, 0, 0, 7430700, 1494, 1614, 1816, 1348, 0, 21690503),
(463, 'Arnaud', 17, 96861, 144889, 153000, 78.50, 57.00, 92.00, 32.00, 27.00, 23.50, 45228, 0, 0, 716550, 9, 68, 108, 182, 0, 21686150),
(465, 'Dachinos', 13, 137731, 83293, 91000, 98.50, 40.50, 63.50, 62.50, 84.50, 95.50, 21087, 0, 0, 0, 320, 451, 641, 674, 0, 21691729),
(481, 'Arcelane', 12, 105005, 75535, 78000, 57.00, 32.00, 80.00, 27.00, 21.00, 17.00, 13865, 0, 0, 87801, 118, 75, 27, 261, 0, 21693334),
(484, 'Liluth', 19, 135003, 188819, 190000, 233.00, 174.00, 156.00, 27.50, 82.00, 21.50, 50000, 0, 0, 5694951, 838, 963, 770, 533, 0, 21677516),
(491, 'Ankharon', 29, 313533, 430395, 435000, 54.50, 44.50, 27.00, 187.00, 157.00, 256.00, 50000, 0, 0, 3501994, 1884, 2002, 1858, 1158, 0, 21684166),
(555, 'Kaerrawen', 16, 148673, 120010, 136000, 40.00, 37.00, 61.00, 49.00, 54.00, 65.00, 529, 0, 0, 462414, 194, 238, 18, 25, 0, 21690083),
(566, 'Bamdinas', 20, 180957, 208710, 210000, 69.00, 34.00, 53.00, 88.00, 156.00, 278.00, 16833, 0, 0, 2286481, 375, 163, 237, 331, 0, 21692768),
(607, 'Konrad', 13, 57577, 85383, 91000, 31.50, 59.00, 28.00, 66.50, 79.50, 74.50, 30000, 0, 0, 496641, 357, 540, 358, 421, 0, 21688604),
(637, 'Mathaos', 18, 199265, 160892, 171000, 158.00, 148.00, 125.00, 46.00, 59.00, 20.00, 22, 0, 0, 3793571, 1332, 1164, 1201, 1070, 0, 21693369),
(640, 'Mattai', 16, 235494, 129312, 136000, 119.00, 41.00, 80.00, 43.00, 37.00, 88.00, 50000, 0, 0, 559723, 105, 170, 197, 82, 0, 21691733),
(672, 'Jeffrey', 22, 171440, 244805, 253000, 131.00, 96.00, 152.00, 135.00, 42.00, 23.00, 38140, 0, 0, 3461287, 1343, 1580, 1399, 1648, 0, 21692902),
(787, 'Dranthen', 11, 157814, 61928, 66000, 56.50, 41.00, 57.00, 25.00, 24.00, 22.50, 30000, 0, 0, 6173988, 1041, 875, 730, 827, 0, 21677359),
(815, 'Mollestho', 11, 115653, 62946, 66000, 141.00, 102.50, 30.00, 64.50, 47.50, 17.50, 40000, 0, 0, 3009053, 428, 1, 159, 608, 0, 21632721);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(820, 'Pirelias', 16, 80946, 122528, 136000, 98.00, 36.00, 117.00, 40.00, 61.00, 35.00, 40000, 0, 0, 2258337, 403, 171, 8, 178, 0, 21633977),
(835, 'Axel', 10, 85325, 52027, 55000, 60.00, 29.00, 54.00, 52.00, 22.00, 28.00, 40000, 0, 0, 6322014, 1206, 954, 1001, 1155, 0, 21639979),
(848, 'Arkatros', 29, 435895, 419414, 435000, 253.00, 251.00, 73.00, 104.00, 133.00, 67.00, 24832, 0, 0, 585849, 160, 343, 157, 187, 0, 21686488),
(868, 'Arimane', 17, 140281, 137046, 153000, 23.50, 31.50, 29.00, 78.00, 62.00, 182.00, 41803, 0, 0, 3884748, 1469, 957, 913, 1124, 0, 21693343),
(870, 'Xandre', 13, 152636, 88826, 91000, 111.00, 56.50, 45.00, 13.50, 52.50, 32.50, 40000, 0, 0, 8267450, 46, 28, 44, 30, 0, 21693102),
(879, 'Vezk', 20, 176362, 202983, 210000, 220.00, 187.00, 98.00, 54.00, 60.00, 53.00, 5474, 0, 0, 713046, 259, 384, 404, 333, 0, 21687383),
(892, 'Rek', 22, 96496, 234509, 253000, 86.00, 76.00, 25.00, 113.00, 188.00, 184.00, 43734, 0, 0, 4997979, 120, 137, 0, 30, 0, 21681286),
(911, 'Enephia', 18, 394072, 164275, 171000, 37.00, 46.00, 29.00, 43.00, 68.00, 148.00, 4047, 0, 0, 1841921, 77, 156, 79, 104, 0, 21686574),
(917, 'Nem&egrave;s', 27, 113750, 352241, 378000, 120.50, 89.00, 125.00, 183.83, 103.50, 139.50, 50000, 0, 0, 1341264, 413, 457, 374, 246, 0, 21684386),
(922, 'Malia', 15, 273764, 106375, 120000, 47.50, 71.00, 32.00, 65.00, 93.50, 85.50, 50000, 0, 0, 4559929, 1129, 993, 1040, 851, 0, 21689308),
(930, 'Zaseo', 22, 168912, 246528, 253000, 202.00, 185.00, 87.00, 133.00, 85.00, 61.00, 26138, 0, 0, 271239, 63, 434, 393, 9, 0, 21690012),
(933, 'Zedounet', 14, 109920, 96871, 105000, 24.00, 96.00, 24.00, 56.00, 93.00, 23.00, 40000, 0, 0, 5066360, 914, 468, 707, 836, 0, 21667443),
(946, 'Ceccua', 8, 94621, 35031, 36000, 28.00, 50.00, 18.00, 32.00, 43.00, 15.00, 20000, 0, 0, 3494593, 414, 531, 886, 386, 0, 21677764),
(948, 'Mosoulo', 12, 242595, 76873, 78000, 65.00, 47.00, 141.00, 14.00, 52.00, 18.00, 33731, 0, 0, 133186, 925, 1056, 978, 960, 0, 21693349),
(989, 'Salfalar', 19, 233115, 186523, 190000, 85.50, 120.50, 56.50, 37.00, 110.00, 96.50, 158, 0, 0, 312314, 695, 745, 731, 533, 0, 21693123),
(992, 'Aedric', 12, 64060, 77468, 78000, 152.00, 45.00, 75.00, 13.00, 30.00, 15.00, 40000, 0, 0, 3723351, 184, 156, 198, 217, 0, 21687711),
(1010, 'Herel', 13, 150399, 88364, 91000, 103.00, 65.00, 37.50, 50.00, 31.00, 19.50, 26780, 0, 0, 836060, 592, 660, 1069, 740, 0, 21691935),
(1016, 'Eleana', 14, 82381, 103672, 105000, 76.00, 49.00, 68.00, 31.00, 31.00, 81.00, 40000, 0, 0, 4872573, 231, 66, 146, 48, 0, 21664038),
(1057, 'X&eacute;nox', 15, 149895, 118292, 120000, 81.00, 73.00, 129.00, 55.00, 75.00, 64.00, 11449, 0, 0, 398569, 522, 352, 672, 287, 0, 21693471),
(1067, 'Daneel', 23, 205163, 264032, 276000, 122.00, 79.00, 169.00, 130.00, 87.00, 36.00, 417, 0, 0, 1195161, 2279, 1669, 2234, 2060, 0, 21693173),
(1115, 'Galaway', 12, 243265, 76648, 78000, 86.00, 67.00, 101.00, 24.00, 25.00, 20.00, 40000, 0, 0, 1724738, 76, 69, 81, 50, 0, 21690467),
(1122, 'Del&eacute;nia', 21, 170482, 219110, 231000, 76.00, 140.00, 21.50, 67.50, 108.00, 105.00, 50000, 0, 0, 1119855, 2597, 1901, 1306, 2147, 0, 21687231),
(1141, 'Renard', 10, 42569, 45817, 55000, 43.00, 29.00, 27.00, 29.00, 37.00, 69.00, 30000, 0, 0, 1532948, 65, 103, 49, 1, 0, 21662609),
(1145, 'DagBar', 17, 134961, 136144, 153000, 22.50, 79.00, 28.00, 57.00, 107.50, 132.50, 29136, 0, 0, 3614875, 289, 263, 270, 572, 0, 21670360),
(1156, 'Yzeute', 14, 161560, 94849, 105000, 81.00, 63.00, 103.00, 46.00, 26.00, 27.00, 40000, 0, 0, 2332438, 543, 352, 536, 199, 0, 21680481),
(1287, 'Nragax', 23, 414991, 261502, 276000, 261.50, 124.00, 253.00, 124.00, 32.00, 22.50, 30000, 0, 0, 6453431, 4049, 4399, 4711, 2733, 0, 21691096),
(1299, 'Shinna', 6, 22841, 15979, 21000, 17.00, 18.00, 23.00, 22.00, 28.00, 48.00, 10000, 0, 0, 557543, 69, 65, 72, 21, 0, 21654497),
(1301, 'Dexert', 11, 166677, 60554, 66000, 54.00, 48.00, 24.50, 44.50, 22.00, 69.00, 401, 0, 0, 9630432, 768, 1057, 961, 626, 0, 21687612),
(1308, 'Reya', 24, 112957, 277645, 300000, 88.00, 35.00, 106.00, 97.00, 98.00, 232.00, 43523, 0, 0, 17129, 1584, 753, 1229, 891, 0, 21691317),
(1311, 'Ambre', 12, 46545, 66128, 78000, 76.00, 56.00, 81.00, 41.00, 22.00, 24.00, 40000, 0, 0, 3004860, 197, 99, 389, 519, 0, 21664538),
(1340, 'X&yuml;ixiant’h ', 9, 90199, 43413, 45000, 49.00, 29.00, 84.00, 34.00, 31.00, 29.00, 30000, 0, 0, 10849868, 634, 832, 647, 793, 0, 21624504),
(1403, 'Soreclis', 14, 155173, 104412, 105000, 98.00, 88.00, 56.00, 27.00, 35.00, 28.00, 208, 0, 0, 597446, 659, 466, 465, 542, 0, 21693107),
(1409, 'Esteban', 11, 71912, 61279, 66000, 144.00, 50.00, 117.00, 42.00, 43.00, 22.00, 30000, 0, 0, 6135694, 406, 99, 223, 347, 0, 21730706),
(1411, 'Karyon', 17, 213656, 143469, 153000, 22.50, 17.50, 95.00, 93.00, 116.00, 202.00, 27352, 0, 0, 1921213, 1175, 1182, 992, 711, 0, 21691791),
(1412, 'Fouchier', 18, 200378, 167221, 171000, 115.00, 106.00, 47.00, 108.00, 105.00, 91.00, 46078, 0, 0, 735938, 1273, 427, 1425, 562, 0, 21692897),
(1414, 'Criton', 16, 224958, 133463, 136000, 104.00, 136.00, 44.00, 34.00, 60.00, 22.00, 124, 0, 0, 1091922, 180, 536, 148, 258, 0, 21693397),
(1418, 'Basl', 18, 9637337, 168947, 171000, 30.00, 72.00, 80.00, 193.00, 68.00, 46.00, 4441, 0, 0, 12035842, 5358, 4936, 5278, 4433, 0, 21651567),
(1458, 'Yodine', 19, 159950, 174989, 190000, 70.50, 92.00, 58.00, 57.00, 87.50, 37.50, 740, 0, 0, 761395, 301, 105, 313, 437, 0, 21692611),
(1460, 'Alec', 10, 122058, 45698, 55000, 35.00, 47.00, 31.00, 43.00, 54.00, 92.00, 6090, 0, 0, 1202189, 1006, 1515, 895, 950, 0, 21692722),
(1463, 'Watmatus', 5, 22571, 13591, 15000, 31.00, 15.00, 39.00, 27.00, 14.00, 17.00, 20000, 0, 0, 3085655, 177, 235, 213, 112, 0, 21628430),
(1469, 'Elm', 39, 588552, 767514, 780000, 170.00, 121.00, 250.50, 185.50, 121.50, 196.50, 1480, 0, 0, 3845646, 1345, 801, 748, 881, 0, 21693173),
(1470, 'Celithrand', 10, 209231, 52422, 55000, 18.00, 18.00, 57.00, 28.00, 80.00, 97.00, 18319, 0, 0, 8796777, 353, 297, 477, 363, 0, 21691851),
(1475, 'Batterusero', 10, 178953, 47754, 55000, 60.00, 40.00, 85.00, 28.00, 43.00, 20.00, 7, 0, 0, 357153, 1278, 1058, 963, 716, 0, 21692168),
(1480, 'Alaesir', 15, 86465, 118796, 120000, 92.00, 79.00, 60.00, 17.50, 40.00, 15.50, 5405, 0, 0, 2077631, 251, 177, 161, 158, 0, 21691873),
(1492, 'Osterate', 18, 167081, 156404, 171000, 141.00, 150.00, 79.00, 45.00, 36.00, 18.00, 17174, 0, 0, 527310, 437, 489, 301, 664, 0, 21689191),
(1499, 'Toroc', 13, 170078, 80927, 91000, 80.00, 41.50, 51.50, 30.00, 60.50, 94.50, 30764, 0, 0, 262013, 914, 1057, 847, 1104, 0, 21691798),
(1512, 'Keldaran', 15, 88407, 119613, 120000, 63.00, 82.00, 72.00, 57.00, 53.00, 56.00, 401, 0, 0, 1176894, 308, 283, 321, 226, 0, 21693368),
(1519, 'Tirandilis', 21, 125878, 227664, 231000, 85.50, 56.00, 119.00, 36.00, 30.00, 21.50, 15295, 0, 0, 1221833, 577, 748, 356, 594, 0, 21692984),
(1522, 'Durshak le Borgne', 20, 103018, 192652, 210000, 199.00, 124.00, 142.00, 15.00, 50.00, 23.00, 40000, 0, 0, 204629, 245, 248, 36, 132, 0, 21691865),
(1528, 'Saya', 10, 47495, 51717, 55000, 56.00, 44.00, 66.00, 32.00, 22.00, 17.00, 30000, 0, 0, 2489922, 286, 0, 95, 100, 0, 21675839),
(1539, 'Kaiiros', 21, 148929, 217188, 231000, 56.50, 55.50, 69.50, 70.00, 88.00, 249.50, 50000, 0, 0, 246581, 878, 650, 1126, 258, 0, 21690257);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1549, 'Caym', 16, 156863, 124150, 136000, 94.00, 80.00, 171.00, 44.00, 42.00, 20.00, 40000, 0, 0, 3510207, 668, 338, 572, 752, 0, 21689063),
(1550, 'N&auml;ta&euml;l', 13, 135754, 83863, 91000, 137.00, 162.00, 43.00, 32.50, 46.00, 27.50, 30000, 0, 0, 2185806, 511, 177, 521, 401, 0, 21724198),
(1562, 'Lyraprime', 15, 260515, 118766, 120000, 70.00, 82.00, 23.00, 93.00, 55.00, 61.00, 5850, 0, 0, 249982, 532, 350, 379, 302, 0, 21690222),
(1583, 'Rhal', 15, 235151, 109143, 120000, 68.50, 67.50, 53.50, 33.00, 68.00, 70.50, 30000, 0, 0, 1789093, 235, 111, 5, 4, 0, 21690479),
(1611, 'Arthurik', 13, 72725, 82205, 91000, 104.00, 60.50, 35.00, 25.50, 34.50, 16.50, 32040, 0, 0, 239746, 116, 139, 188, 196, 0, 21689003),
(1627, 'Silayerr', 15, 191950, 113046, 120000, 92.00, 47.00, 50.00, 55.00, 44.00, 56.00, 129, 0, 0, 1494236, 500, 0, 215, 493, 0, 21689605),
(1640, 'Maria', 20, 164814, 195179, 210000, 182.00, 220.00, 142.00, 28.00, 98.00, 28.00, 1086, 0, 0, 6321, 512, 243, 200, 503, 0, 21688726),
(1651, 'Ramiran', 6, 75009, 19380, 21000, 32.00, 17.00, 23.00, 17.00, 19.00, 45.00, 479, 0, 0, 887128, 116, 42, 190, 70, 0, 21625296),
(1653, 'Damian', 9, 168726, 38390, 45000, 99.00, 122.00, 77.00, 28.50, 38.00, 12.50, 917, 0, 0, 1741305, 692, 469, 396, 496, 0, 21693264),
(1667, 'Vylnius', 12, 131600, 77029, 78000, 34.00, 26.00, 31.00, 29.00, 45.00, 72.00, 3, 0, 0, 2205592, 2, 148, 69, 61, 0, 21692799),
(1670, 'Bolackot', 9, 162588, 40642, 45000, 55.00, 27.50, 32.50, 21.00, 40.50, 83.50, 1209, 0, 0, 195041, 289, 362, 254, 311, 0, 21693126),
(1682, 'L&eacute;&ouml;raz', 9, 150924, 37105, 45000, 49.50, 38.00, 53.00, 23.00, 27.00, 18.50, 23480, 0, 0, 33037, 299, 151, 266, 344, 0, 21690577),
(1685, 'Beltha&iuml;s', 9, 32921, 37721, 45000, 54.50, 28.00, 57.00, 22.00, 18.00, 15.50, 10000, 0, 0, 1336617, 146, 42, 132, 61, 0, 21677009),
(1700, 'Gaeldrech', 11, 146030, 63527, 66000, 135.00, 92.00, 52.00, 36.50, 59.00, 17.50, 40000, 0, 0, 1546786, 557, 366, 571, 421, 0, 21692907),
(1715, 'Blindor la Montagne', 11, 83181, 61744, 66000, 93.00, 44.50, 29.00, 12.50, 28.50, 15.50, 40000, 0, 0, 3240288, 201, 268, 306, 170, 0, 21669604),
(1725, 'Galmin', 27, 184804, 373063, 378000, 180.00, 50.00, 122.50, 39.50, 144.50, 166.50, 11338, 0, 0, 998256, 791, 406, 270, 531, 0, 21693303),
(1727, 'Thorgrim', 7, 66581, 23763, 28000, 23.50, 23.50, 22.50, 19.50, 27.50, 137.50, 4815, 0, 0, 607950, 367, 251, 100, 315, 0, 21693343),
(1731, 'Infilz', 11, 114733, 58604, 66000, 56.50, 40.00, 85.00, 42.00, 23.50, 24.00, 30000, 0, 0, 4716501, 0, 197, 223, 54, 0, 21671295),
(1740, 'Oolna', 14, 173174, 97632, 105000, 100.00, 48.00, 102.00, 27.00, 36.00, 18.00, 28306, 0, 0, 2205218, 774, 869, 1096, 1038, 0, 21693050),
(1745, 'Pyrim', 6, 52267, 19329, 21000, 61.00, 28.00, 25.00, 20.00, 20.00, 16.00, 20000, 0, 0, 5686681, 429, 306, 288, 551, 0, 21664071),
(1747, 'Hordrin', 23, 242107, 273044, 276000, 146.00, 234.00, 21.50, 84.50, 145.00, 113.00, 11324, 0, 0, 1551810, 164, 210, 692, 193, 0, 21693415),
(1748, 'Baduit', 21, 140224, 225779, 231000, 140.00, 121.00, 193.00, 145.00, 112.00, 65.00, 37849, 0, 0, 402588, 659, 218, 596, 233, 0, 21693104),
(1755, 'Le Dougec', 10, 735243, 51141, 55000, 85.00, 36.00, 102.00, 39.00, 21.00, 22.00, 7306, 0, 0, 11607, 582, 490, 617, 618, 0, 21690229),
(1770, 'Ameennos', 8, 168246, 32211, 36000, 79.00, 22.00, 82.00, 24.00, 22.00, 21.00, 2380, 0, 0, 1055, 388, 133, 347, 267, 0, 21693161),
(1773, 'Pyrazine', 8, 93824, 35901, 36000, 57.00, 72.00, 48.00, 9.00, 67.00, 49.00, 826, 0, 0, 7017986, 761, 483, 498, 790, 0, 21693270),
(1784, 'Lineus', 10, 241560, 48905, 55000, 47.00, 35.00, 63.00, 90.00, 45.00, 38.00, 277, 0, 0, 1924453, 553, 750, 216, 829, 0, 21689585),
(1795, 'Bornami', 15, 173296, 114818, 120000, 54.00, 79.00, 93.00, 175.00, 55.50, 19.50, 15246, 0, 0, 126239, 454, 363, 388, 629, 0, 21688776),
(1804, 'Elorfindelle', 10, 274126, 48097, 55000, 40.00, 39.00, 38.00, 29.00, 46.00, 48.00, 25345, 0, 0, 861705, 533, 214, 444, 144, 0, 21686320),
(1805, 'Alerob', 6, 124131, 16896, 21000, 42.00, 32.00, 42.00, 22.00, 16.00, 15.00, 10000, 0, 0, 8926125, 690, 899, 674, 876, 0, 21673350),
(1809, 'Kal', 16, 300125, 120913, 136000, 158.00, 66.00, 55.00, 49.00, 53.00, 86.00, 8787, 0, 0, 476161, 898, 4573, 2905, 2037, 0, 21693403),
(1816, 'Han Main-Tranchante', 11, 100108, 56852, 66000, 129.00, 86.00, 86.00, 59.00, 49.00, 34.00, 19080, 0, 0, 1302053, 733, 375, 474, 375, 0, 21691716),
(1824, 'Aedorn', 12, 150211, 69826, 78000, 32.00, 38.00, 27.00, 46.00, 62.00, 125.00, 25102, 0, 0, 5080196, 699, 240, 294, 264, 0, 21690340),
(1827, 'Khiran', 8, 143091, 35089, 36000, 97.00, 45.00, 46.00, 11.00, 27.00, 13.00, 30000, 0, 0, 1736268, 359, 685, 804, 709, 0, 21691762),
(1835, 'Krystophoros', 7, 50949, 27761, 28000, 63.00, 72.00, 45.00, 37.50, 33.00, 11.50, 30000, 0, 0, 173148, 42, 2, 2, 94, 0, 21689242),
(1836, 'Tchinga', 20, 157849, 200981, 210000, 87.00, 105.00, 80.00, 169.33, 100.00, 156.00, 1299, 0, 0, 386835, 809, 476, 451, 392, 0, 21693364),
(1838, 'Anwaman&euml;l', 10, 185940, 46417, 55000, 82.00, 80.00, 38.00, 19.00, 20.00, 16.00, 122, 0, 0, 171346, 309, 380, 614, 343, 0, 21692723),
(1842, 'Cometa', 7, 83359, 21089, 28000, 49.00, 31.50, 27.00, 22.50, 22.50, 15.50, 19552, 0, 0, 2535709, 319, 233, 350, 237, 0, 21692937),
(1851, 'Reyns', 11, 196780, 55378, 66000, 66.00, 76.00, 44.00, 44.00, 52.00, 51.00, 360, 0, 0, 104849, 220, 100, 173, 252, 0, 21691845),
(1852, 'Imbalayo', 18, 167151, 160521, 171000, 137.00, 126.00, 159.00, 154.33, 43.00, 21.00, 28509, 0, 0, 15904, 2533, 2616, 2171, 2645, 0, 21693192),
(1853, 'Ar&eacute;gonde', 14, 138512, 101616, 105000, 56.00, 46.00, 66.00, 58.00, 60.00, 57.00, 4919, 0, 0, 674984, 1427, 1164, 1473, 970, 0, 21693238),
(1865, 'D&eacute;ductance', 15, 130382, 116427, 120000, 44.50, 15.50, 40.00, 96.00, 50.00, 159.00, 50000, 0, 0, 2320012, 427, 277, 243, 289, 0, 21674800),
(1866, 'Agro', 13, 114950, 88728, 91000, 160.00, 102.00, 88.50, 100.00, 60.00, 24.50, 6913, 0, 0, 222575, 1495, 1617, 1305, 1525, 0, 21693380),
(1867, 'Maxliger', 10, 93367, 52693, 55000, 18.00, 49.00, 41.00, 33.00, 82.00, 38.00, 6915, 0, 0, 215245, 1001, 984, 852, 1009, 0, 21691840),
(1870, 'Chelii', 9, 54683, 39648, 45000, 26.50, 27.00, 27.00, 28.50, 34.50, 47.50, 10000, 0, 0, 2476625, 127, 119, 110, 70, 0, 21656264),
(1874, 'Alardius', 1, 15403, 627, 1000, 21.00, 20.00, 9.00, 20.00, 12.00, 11.00, 10000, 0, 0, 1463215, 44, 183, 138, 137, 0, 21671678),
(1883, 'Khane', 7, 51549, 27175, 28000, 86.50, 27.00, 48.00, 21.00, 19.00, 15.50, 21740, 0, 0, 1424544, 178, 245, 246, 228, 0, 21687511),
(1914, 'Metyorah', 9, 131620, 40407, 45000, 65.50, 31.00, 70.00, 22.00, 20.00, 15.50, 30000, 0, 0, 1667197, 464, 376, 403, 353, 0, 21687227),
(1922, 'Thaelion', 9, 107956, 37950, 45000, 72.00, 51.00, 26.50, 43.00, 26.00, 16.50, 25500, 0, 0, 4658462, 300, 224, 159, 252, 0, 21688341),
(1927, 'Koulibab', 3, 20811, 3549, 6000, 31.00, 10.50, 17.50, 11.00, 20.50, 26.50, 10000, 0, 0, 936502, 110, 36, 81, 88, 0, 21673001),
(1933, 'Onche', 3, 11778, 5769, 6000, 41.00, 30.00, 13.00, 8.50, 15.00, 11.50, 10000, 0, 0, 914410, 57, 68, 46, 41, 0, 21649617),
(1937, 'Ekelgeister', 10, 112546, 51390, 55000, 65.00, 22.00, 77.00, 54.00, 26.00, 29.00, 8702, 0, 0, 1082996, 175, 170, 84, 111, 0, 21688477);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1945, 'Miroslaw', 8, 76834, 31817, 36000, 109.00, 56.00, 16.00, 44.00, 37.00, 48.00, 20000, 0, 0, 1218993, 586, 599, 642, 849, 0, 21692399),
(1953, 'Erchael', 7, 84972, 23205, 28000, 68.50, 76.50, 98.50, 43.00, 46.00, 29.50, 10000, 0, 0, 343939, 761, 305, 784, 774, 0, 21693213),
(1954, 'Olg le Gras', 13, 82594, 84448, 91000, 209.00, 118.50, 98.00, 32.50, 72.50, 16.50, 2491, 0, 0, 49895, 3184, 2336, 2069, 2604, 0, 21693155),
(1956, 'Loutch', 4, 32209, 6932, 10000, 16.00, 11.00, 12.00, 36.00, 21.00, 41.00, 10000, 0, 0, 1761100, 108, 54, 158, 60, 0, 21678916),
(1958, 'D&eacute;vass', 1, 3134, 0, 1000, 15.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 5171, 12, 12, 12, 12, 0, 21648707),
(1959, 'Llumeolf', 6, 98807, 19170, 21000, 13.00, 11.00, 14.00, 46.00, 25.00, 73.00, 12188, 0, 0, 237488, 114, 306, 143, 120, 0, 21693110),
(1962, 'Noddin', 6, 104397, 17161, 21000, 30.00, 35.00, 13.00, 22.00, 25.00, 33.00, 30000, 0, 0, 2623224, 50, 107, 47, 104, 0, 21681049),
(1991, 'Aorphen', 6, 48616, 20429, 21000, 36.00, 14.00, 21.00, 15.00, 20.00, 47.00, 8256, 0, 0, 907898, 265, 210, 73, 159, 0, 21693182),
(1992, 'Udekus', 1, 0, 0, 1000, 12.50, 8.50, 19.00, 18.00, 11.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21654391),
(1993, 'Egeon', 1, 4262, 0, 1000, 25.00, 19.00, 10.00, 10.50, 13.00, 10.50, 0, 0, 0, 122225, 1, 1, 1, 1, 0, 21654930),
(1994, 'Aridius', 5, 91598, 12928, 15000, 62.00, 39.00, 13.00, 22.50, 19.00, 15.50, 14025, 0, 0, 14287, 366, 282, 332, 294, 0, 21690111),
(1995, 'Trano', 10, 138467, 47671, 55000, 72.00, 28.00, 118.00, 25.00, 19.00, 16.00, 14038, 0, 0, 8400, 250, 173, 369, 439, 0, 21693157),
(1996, 'Anithralith', 8, 137728, 30626, 36000, 95.00, 58.00, 62.00, 20.00, 27.00, 17.00, 12901, 0, 0, 1091652, 172, 122, 131, 119, 0, 21693270),
(1998, 'Milors', 1, 0, 0, 1000, 20.00, 13.00, 19.00, 13.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655843),
(1999, 'Xender', 5, 44681, 11535, 15000, 27.00, 26.00, 19.00, 30.00, 22.00, 23.00, 10000, 0, 0, 1067434, 219, 307, 232, 166, 0, 21682213),
(2000, 'Noka&icirc;n', 1, 4989, 903, 1000, 15.50, 12.00, 13.00, 20.00, 12.50, 16.50, 10000, 0, 0, 626278, 0, 0, 8, 5, 0, 21658859),
(2001, 'Murzolk ', 9, 150507, 38506, 45000, 17.50, 21.00, 22.00, 25.50, 40.00, 71.00, 30000, 0, 0, 548715, 127, 189, 36, 33, 0, 21692957),
(2003, 'Caiolivier', 1, 0, 0, 1000, 22.00, 18.00, 17.00, 7.50, 13.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655855),
(2004, 'Ryanori', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655855),
(2005, 'Tewhitstar', 1, 0, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655855),
(2006, 'Physsiallis', 5, 30054, 14716, 15000, 29.00, 17.00, 37.00, 19.00, 17.00, 24.00, 20000, 0, 0, 303336, 78, 88, 156, 149, 0, 21681134),
(2007, 'Luinelinde', 9, 116800, 36107, 45000, 44.00, 41.00, 26.50, 39.50, 31.00, 56.00, 15019, 0, 0, 198915, 385, 257, 305, 293, 0, 21692649),
(2008, 'Gaorh', 1, 0, 0, 1000, 25.00, 19.50, 11.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655855),
(2009, 'Esprie', 1, 0, 0, 1000, 14.50, 10.00, 23.00, 16.00, 10.50, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655855),
(2010, 'Kawtar', 1, 0, 0, 1000, 13.00, 10.00, 13.00, 22.00, 15.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655855),
(2011, 'Schaddown', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655862),
(2012, 'Amanor', 1, 0, 0, 1000, 16.00, 11.00, 19.00, 11.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655862),
(2013, 'Omid', 1, 0, 0, 1000, 17.50, 8.50, 16.50, 9.50, 17.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655862),
(2014, 'Drakemacarn', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655862),
(2015, 'Namijn', 1, 0, 0, 1000, 15.50, 10.50, 15.50, 10.50, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655862),
(2016, 'Jasonbb', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655862),
(2017, 'Nargorath', 4, 37400, 9652, 10000, 38.00, 29.00, 20.00, 20.00, 16.00, 14.00, 20000, 0, 0, 713687, 187, 63, 205, 175, 0, 21693143),
(2018, 'Melilot ', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655864),
(2019, 'Manuellaz', 1, 4181, 0, 1000, 14.50, 10.00, 18.00, 15.50, 13.50, 16.50, 0, 0, 0, 150893, 4, 4, 4, 4, 0, 21655866),
(2020, 'Inerick', 1, 0, 0, 1000, 17.00, 13.00, 17.00, 11.00, 10.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655866),
(2021, 'Borfang', 4, 57554, 6018, 10000, 18.00, 10.00, 12.00, 36.00, 22.00, 38.00, 810, 0, 0, 617618, 83, 134, 80, 79, 0, 21693446),
(2022, 'Erefrerin ', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655867),
(2026, 'Drekal', 8, 131313, 33048, 36000, 72.00, 52.00, 62.00, 28.00, 20.00, 16.00, 2723, 0, 0, 361891, 833, 467, 868, 689, 0, 21693415),
(2028, 'L&eacute;nnih', 5, 40241, 10431, 15000, 10.50, 17.50, 24.50, 29.00, 16.00, 47.50, 20000, 0, 0, 718450, 328, 122, 211, 63, 0, 21684696),
(2030, 'Archanos', 6, 157783, 19265, 21000, 51.00, 39.00, 55.00, 13.00, 22.00, 51.00, 16533, 0, 0, 760598, 161, 103, 134, 239, 0, 21691105),
(2032, 'Dom', 1, 0, 0, 1000, 15.00, 14.00, 10.00, 22.50, 13.00, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2034, 'Estella', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2035, 'Selynn', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2036, 'Elfihris', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2037, 'Zholtron', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2038, 'Alpharius', 1, 0, 0, 1000, 21.00, 14.00, 16.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2039, 'Volcanos', 1, 0, 0, 1000, 16.00, 12.00, 17.00, 11.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660264),
(2040, 'Magalachat', 1, 0, 0, 1000, 12.50, 8.50, 18.00, 17.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660265),
(2041, 'Kiara', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21660265),
(2043, 'Latifa', 7, 81055, 21885, 28000, 80.50, 24.00, 97.00, 36.00, 19.00, 19.50, 30000, 0, 0, 246719, 316, 151, 228, 168, 0, 21692977),
(2045, 'Landregon', 1, 0, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2046, 'Psycor', 1, 0, 0, 1000, 20.00, 15.00, 16.50, 7.50, 14.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424),
(2047, 'Aldere', 8, 175588, 31023, 36000, 87.00, 64.00, 27.00, 26.00, 24.00, 12.00, 0, 0, 0, 56887, 301, 269, 130, 140, 0, 21686844),
(2048, 'Haelyn', 4, 78637, 6681, 10000, 26.00, 26.00, 10.00, 27.00, 14.00, 27.00, 5136, 0, 0, 123120, 213, 220, 519, 479, 0, 21693272),
(2049, 'Guigui', 1, 0, 0, 1000, 16.50, 8.50, 14.50, 9.50, 17.50, 20.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424),
(2050, 'Luwfox', 1, 0, 0, 1000, 15.50, 10.50, 13.00, 20.50, 10.50, 17.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424),
(2051, 'Maulifle', 1, 0, 0, 1000, 24.00, 21.00, 11.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424),
(2052, 'Redgardom', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424),
(2053, 'Barnoche', 7, 118082, 21104, 28000, 36.00, 29.00, 44.00, 50.00, 22.50, 15.50, 15430, 0, 0, 500397, 139, 352, 189, 277, 0, 21690917),
(2054, 'Gigatora', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662424),
(2055, 'Pagt', 1, 3134, 0, 1000, 16.00, 14.00, 11.00, 20.50, 13.00, 16.50, 0, 0, 0, 4736, 8, 8, 8, 8, 0, 21662424),
(2056, 'Kalesh', 5, 115488, 14116, 15000, 38.00, 33.00, 20.00, 35.50, 17.00, 18.50, 17291, 0, 0, 264173, 374, 367, 300, 291, 0, 21692815),
(2057, 'Noaxi', 1, 3280, 0, 1000, 14.50, 10.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 547, 0, 0, 0, 0, 0, 21662424),
(2058, 'Kristan', 9, 147948, 42134, 45000, 91.00, 78.00, 30.00, 39.00, 31.00, 30.00, 15805, 0, 0, 59596, 432, 553, 410, 325, 0, 21691659),
(2062, 'Anzmarial', 1, 0, 0, 1000, 14.50, 12.00, 12.00, 19.00, 12.50, 15.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21664055),
(2063, 'Yakurma', 1, 0, 0, 1000, 19.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21664055),
(2065, 'Ilinia', 1, 0, 0, 1000, 9.50, 13.00, 17.00, 15.00, 14.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21664055),
(2067, 'Ashinseika', 1, 8843, 874, 1000, 19.00, 11.00, 19.00, 11.00, 11.00, 19.00, 10000, 0, 0, 420372, 79, 57, 68, 68, 0, 21687532),
(2071, 'Teperek', 6, 106052, 15590, 21000, 37.00, 20.00, 23.00, 79.00, 26.00, 34.00, 615, 0, 0, 247437, 117, 377, 151, 296, 0, 21693406),
(2072, 'Richard Oraph', 5, 97525, 12598, 15000, 16.50, 10.50, 22.00, 33.00, 20.00, 44.00, 10487, 0, 0, 617018, 273, 155, 416, 156, 0, 21693115),
(2073, 'Artane', 4, 75763, 6936, 10000, 32.00, 41.00, 14.00, 37.00, 21.00, 50.00, 20000, 0, 0, 367064, 156, 161, 155, 156, 0, 21689426),
(2074, 'Tureloitu', 5, 102238, 11418, 15000, 30.50, 18.00, 44.00, 25.00, 14.00, 13.50, 20000, 0, 0, 409427, 166, 299, 344, 446, 0, 21690424),
(2075, 'Jadilijlna', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667071),
(2076, 'Entropyrius', 1, 0, 0, 1000, 15.50, 10.50, 13.00, 20.50, 10.50, 17.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667075),
(2078, 'Ricow', 1, 0, 0, 1000, 24.00, 21.00, 11.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667075),
(2080, 'Ethophine', 1, 3157, 0, 1000, 19.00, 11.00, 16.00, 19.00, 11.00, 14.00, 0, 0, 0, 3066, 0, 0, 0, 0, 0, 21667075),
(2081, 'Jessonero ', 1, 0, 0, 1000, 18.00, 17.00, 14.50, 14.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667075),
(2082, 'Lya ', 1, 3134, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5120, 0, 0, 0, 0, 0, 21667075),
(2083, '&AElig;ternamn', 1, 0, 0, 1000, 16.50, 9.50, 14.50, 18.50, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667075),
(2084, 'Toros', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667075),
(2085, 'Woulrick', 2, 25398, 2896, 3000, 22.00, 24.00, 10.00, 23.00, 14.00, 13.00, 10000, 0, 0, 836412, 150, 225, 251, 163, 0, 21671903),
(2101, 'Oremone', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21668792),
(2102, 'Tijcus', 1, 3527, 0, 1000, 21.50, 8.50, 14.00, 9.00, 14.00, 21.00, 0, 0, 0, 0, 4, 4, 4, 4, 0, 21668792),
(2103, 'Grog', 9, 80179, 44322, 45000, 61.00, 51.00, 32.00, 11.50, 21.00, 13.50, 3758, 0, 0, 121649, 131, 226, 82, 136, 0, 21685905),
(2104, 'Arl&eacute;mis', 1, 0, 0, 1000, 16.00, 13.00, 20.00, 16.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21668794),
(2106, 'Ferge', 1, 0, 0, 1000, 20.00, 14.00, 15.00, 10.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21668794),
(2107, 'Bufty', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21668794),
(2108, 'Justirinien', 1, 0, 0, 1000, 14.50, 10.00, 21.00, 16.00, 12.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21668794),
(2109, 'Lila', 1, 0, 0, 1000, 18.00, 18.00, 15.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21668794),
(2112, 'Defraglaroche', 8, 164954, 35845, 36000, 64.00, 38.00, 50.00, 71.00, 26.00, 49.00, 19969, 0, 0, 5, 256, 612, 446, 468, 0, 21692842),
(2116, 'Caylafoduto', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21670255),
(2117, 'Leglasoth', 1, 0, 0, 1000, 7.50, 11.00, 18.00, 16.00, 14.50, 18.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21670255),
(2125, 'Lykok', 1, 0, 0, 1000, 10.50, 8.50, 9.00, 24.00, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21672072),
(2126, 'Trolur', 7, 114539, 27477, 28000, 69.00, 41.50, 35.00, 10.50, 28.50, 12.50, 23435, 0, 0, 369836, 381, 504, 334, 309, 0, 21693196),
(2127, 'Vanniialaa', 1, 0, 0, 1000, 14.50, 9.50, 13.00, 22.00, 10.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21673017),
(2128, 'Vittorio', 1, 0, 0, 1000, 17.00, 11.50, 13.50, 10.00, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21673017),
(2129, 'Eregian', 1, 3134, 0, 1000, 23.00, 21.00, 10.00, 10.50, 15.00, 8.50, 0, 0, 0, 17613, 0, 0, 0, 0, 0, 21673017),
(2131, 'Rikoulku', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21673017),
(2132, 'Vanipira', 1, 0, 0, 1000, 16.50, 10.50, 12.50, 18.50, 12.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21673017),
(2133, 'Altranach', 3, 14431, 4887, 6000, 27.50, 23.50, 9.50, 18.00, 20.00, 16.50, 10000, 0, 0, 125983, 49, 38, 49, 48, 0, 21690071),
(2134, 'Iorfel', 3, 22656, 4621, 6000, 22.50, 11.00, 30.00, 20.00, 16.50, 16.00, 10000, 0, 0, 255905, 67, 136, 153, 153, 0, 21676074),
(2137, 'Prolor', 6, 83975, 20581, 21000, 57.00, 20.00, 60.00, 22.00, 15.00, 14.00, 27353, 0, 0, 331164, 213, 330, 222, 227, 0, 21691447);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2139, 'Maxofsekg', 1, 0, 0, 1000, 15.50, 8.50, 15.00, 13.00, 16.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678552),
(2140, 'Lilijan', 1, 0, 0, 1000, 21.00, 14.00, 16.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678552),
(2141, 'Chavel', 1, 0, 0, 1000, 21.00, 15.50, 14.00, 12.50, 13.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678552),
(2142, 'Damoan', 1, 0, 0, 1000, 14.50, 17.00, 9.00, 17.00, 14.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678552),
(2143, 'Krijeks', 3, 34784, 3834, 6000, 48.00, 44.00, 6.00, 8.50, 19.00, 9.50, 7369, 0, 0, 8555, 84, 90, 107, 187, 0, 21693326),
(2145, 'Freidr', 1, 0, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678552),
(2146, 'Fabikjing', 1, 3244, 0, 1000, 15.50, 9.50, 12.50, 18.50, 11.50, 19.50, 0, 0, 0, 136, 0, 0, 0, 0, 0, 21678552),
(2147, 'Franckysaid', 1, 0, 0, 1000, 16.00, 14.00, 11.00, 20.50, 13.00, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2148, 'Daneboy', 1, 0, 0, 1000, 16.00, 18.00, 10.50, 10.50, 17.00, 15.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2149, 'Crunkij', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2150, 'Awang', 1, 3134, 0, 1000, 15.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 7295, 16, 16, 16, 16, 0, 21678561),
(2151, 'Sandtim', 1, 0, 0, 1000, 16.50, 9.50, 14.50, 18.50, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2152, 'Meroanen', 1, 0, 0, 1000, 18.00, 17.00, 13.50, 14.00, 14.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2153, 'Dokijll', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2154, 'Seloma', 1, 0, 0, 1000, 20.00, 17.00, 8.50, 17.50, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2155, 'Zoneaciv', 1, 0, 0, 1000, 18.00, 18.00, 15.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2156, 'Netenmeth', 3, 79204, 4851, 6000, 39.00, 24.00, 20.00, 7.50, 14.00, 14.50, 6842, 0, 0, 15780, 132, 110, 107, 87, 0, 21691705),
(2157, 'Gaegaetan', 1, 3128, 0, 1000, 18.50, 9.00, 20.00, 11.00, 15.50, 14.00, 0, 0, 0, 5290, 0, 0, 0, 0, 0, 21678561),
(2158, 'Saya Sedai', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2159, 'Aroneth', 1, 0, 0, 1000, 20.00, 14.00, 15.00, 10.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678561),
(2160, 'Tijrelan', 1, 3134, 0, 1000, 15.50, 10.50, 16.50, 10.50, 12.50, 22.50, 0, 0, 0, 5065, 0, 0, 0, 0, 0, 21678561),
(2161, 'Zimbra', 1, 56293, 965, 1000, 13.50, 10.00, 18.00, 15.50, 13.50, 16.50, 10000, 0, 0, 66017, 68, 64, 105, 126, 0, 21730517),
(2162, 'Sasorumi', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678562),
(2171, 'Shemmoran', 5, 69100, 13740, 15000, 18.50, 15.50, 17.00, 37.00, 19.00, 39.00, 1213, 0, 0, 57312, 149, 123, 234, 270, 0, 21693270),
(2173, 'Midoub', 1, 0, 0, 1000, 26.00, 16.00, 8.50, 7.50, 14.50, 14.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21679663),
(2175, 'Dyospiros', 3, 28116, 3796, 6000, 15.50, 20.00, 11.00, 26.00, 23.50, 23.50, 20000, 0, 0, 109087, 112, 107, 94, 68, 0, 21692908),
(2176, 'Na&euml;lys', 4, 50347, 6895, 10000, 81.00, 21.00, 23.00, 19.00, 17.00, 15.00, 4675, 0, 0, 75263, 79, 57, 117, 106, 0, 21693346),
(2177, 'Melagius', 3, 19921, 3860, 6000, 27.50, 16.00, 30.00, 16.00, 12.00, 15.50, 8755, 0, 0, 135405, 39, 1, 24, 28, 0, 21691533),
(2178, 'Gelos', 1, 0, 0, 1000, 20.00, 17.00, 17.00, 10.50, 13.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2179, 'Aegnor', 1, 0, 0, 1000, 16.00, 14.00, 11.00, 20.50, 13.00, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2180, 'Ducky', 1, 0, 0, 1000, 12.50, 15.00, 15.00, 9.00, 16.50, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2181, 'Bleedovengor', 1, 3144, 0, 1000, 19.00, 11.00, 16.00, 19.00, 11.00, 14.00, 0, 0, 0, 4171, 0, 0, 0, 0, 0, 21684471),
(2182, 'Rotgh&auml;r', 2, 14364, 2018, 3000, 37.00, 23.00, 12.00, 8.00, 15.00, 11.00, 10000, 0, 0, 55167, 50, 27, 29, 24, 0, 21690921),
(2183, 'Ath&eacute;na&iuml;s ', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2184, 'Fifi', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2185, 'Karnori', 1, 0, 0, 1000, 23.00, 13.00, 15.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2186, 'Zenno', 1, 0, 0, 1000, 18.00, 10.50, 12.50, 18.00, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684471),
(2187, 'Matt', 1, 16319, 956, 1000, 15.50, 10.50, 12.50, 18.50, 11.50, 19.50, 4501, 0, 0, 51183, 76, 22, 26, 24, 0, 21693120),
(2188, 'Lycane', 2, 10534, 2435, 3000, 19.00, 12.00, 30.00, 19.00, 11.00, 12.00, 10000, 0, 0, 28445, 25, 19, 18, 16, 0, 21692708),
(2189, 'Tya', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21687414),
(2190, 'Zaramoth', 3, 40465, 3609, 6000, 23.00, 22.00, 15.00, 25.00, 18.00, 18.00, 9323, 0, 0, 113, 82, 51, 37, 58, 0, 21692911),
(2191, 'Louve', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21687414),
(2192, 'Naloune', 1, 3134, 0, 1000, 18.00, 17.00, 14.50, 14.00, 13.00, 13.50, 0, 0, 0, 68373, 8, 8, 8, 8, 0, 21687415),
(2193, 'Laka', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21687445),
(2194, 'Laury', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21687445),
(2195, 'Kimi', 1, 0, 0, 1000, 18.00, 14.00, 20.00, 13.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21687446),
(2205, 'Kragone', 1, 6168, 466, 1000, 10.50, 8.50, 9.00, 24.00, 15.00, 25.00, 10000, 0, 0, 8714, 39, 15, 21, 16, 0, 21692766),
(2206, 'Zeshumuk', 1, 11849, 137, 1000, 22.00, 18.00, 16.00, 9.50, 10.00, 17.50, 10000, 0, 0, 1256, 40, 15, 21, 25, 0, 21692806),
(2207, 'Leledu', 1, 0, 0, 1000, 7.50, 9.50, 18.50, 17.00, 12.00, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2208, 'Garosig', 1, 0, 0, 1000, 20.00, 13.50, 15.50, 8.00, 15.50, 14.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2209, 'Adali', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090);INSERT INTO `11apr_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2210, 'Siverhak', 1, 0, 0, 1000, 18.50, 18.50, 8.50, 16.00, 14.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2211, 'G&eacute;tro', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2212, 'Styliann', 2, 15411, 1733, 3000, 19.00, 14.00, 18.00, 20.00, 11.00, 19.00, 10000, 0, 0, 6202, 28, 29, 28, 29, 0, 21693461),
(2213, 'Cara', 1, 0, 0, 1000, 24.00, 13.00, 16.00, 8.50, 12.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2214, 'Porine Sigurd', 1, 0, 0, 1000, 16.50, 15.00, 17.00, 13.00, 14.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2215, 'Indis', 1, 3134, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 21.00, 0, 0, 0, 6456, 8, 8, 8, 8, 0, 21689090),
(2216, 'Theo', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2217, 'Zedra', 1, 0, 0, 1000, 15.50, 18.00, 10.00, 17.00, 14.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21689090),
(2225, 'Mortzacus', 1, 4158, 212, 1000, 30.00, 20.50, 10.00, 7.50, 13.50, 10.50, 0, 0, 0, 45739, 5, 10, 10, 5, 0, 21690308),
(2226, 'Hicihogoin', 1, 0, 0, 1000, 13.00, 10.00, 13.00, 22.00, 15.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21690371),
(2227, 'Celka', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21690371);



CREATE TABLE `11apr_guildes_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL DEFAULT '',
  `province` varchar(40) NOT NULL DEFAULT '',
  `nb_membres` int(11) NOT NULL DEFAULT '0',
  `date_création` int(11) NOT NULL DEFAULT '0',
  `img` tinytext NOT NULL,
  `chef` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `regles` text NOT NULL,
  `puissance` int(11) NOT NULL DEFAULT '0',
  `siteweb` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

INSERT INTO `11apr_guildes_2` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Disciples de l`Eternel', 'Thassopole', 6, 21447086, 'http://www.linkup-coaching.com/files/image/icones/const.jpg', 'Azhaag', 'L\'Eternel sur le trône à la place de l\'empereur fit appeler sa garde rapprochée. Les Disciples rentrèrent un à un dans la pièce et s\'agenouillèrent devant leur divinité. 

C\'est à la suite d\'une longue et parfois pénible reconquête qu\'ils forgèrent ensemble dans le sang leur nouveau royaume. 

L\'Eternel transmis à nouveau ses paroles à chaque Disciple:

"Vous êtes braves, vous vous distinguez par votre efficience, vous méritez donc ce que l\'on a conquis.
Ainsi je vous confie maintenant une région à gérer pour qu\'elle soit sous l\'autorité de l\'Eternel et non pas qu\'elle cède à la rébellion ou la violence.
Vous rencontrerez en face de vous sûrement quelques récalcitrants.
Il sera de votre devoir d\'y remédier." 


Les disciples prirent congés sur ordre de l\'Eternel. Chacun avait donc de nouvelles responsabilités qu\'ils se devaient d\'assumer...', 'Cette armada a pour but de défendre l\'Eternel jusqu\'à ce qu\'il soit défait. L\'Eternel possède dés à présent toutes les régions de Kalamaï et entend ainsi répondre des agissements de chaque groupuscule tel qu\'il soit en ses terres assouvies. ', 'Se conformer à l\'organisation interne et ludique de l\'armada.
Ne pas salir limage de l\'Eternel en public.
Respecter les stratégies internes.
Faire preuve de créativité pour embellir celles-ci.', 175577, 'http://'),
(2, 'Vae Victis', 'Amphise', 2, 21464134, 'http://hitskin.com/themes/14/18/75/i_logo.jpg', 'Razak', 'La fondation de cette nouvelle alliance survint quelques jours après la mise en fonction de Razak en tant que Palatin d’Amphise.  Depuis sa jeunesse, seule la défense de sa province l’intéressait. C’est ainsi que ses rêves devinrent réalités. 

Emporté par un élan de pouvoir, il décida de fonder une nouvelle organisation permettant la défense d’Amphise. Tel qu’il l’avait promis dans son discours, il fera son possible pour parvenir à repousser l’ennemi d’Amphise et ainsi rendre une notoriété nettement plus valorisante.
Son souhait, c’est de faire craindre Amphise au peuple de Kalamaï par le biais de sa nouvelle organisation.

Quelques jours après son élection en tant que palatin, Razak décida d’écrire plusieurs missives informant les habitants d’Amphise.

« Chers amphisiens,

Je vous écris en cette rare journée ensoleillée pour vous faire part d’une décision importante pour notre région.
A la suite de nombreuses réunions avec mes conseillers concernant la mise en place de la défense d’Amphise, nous avons décidé qu’une nouvelle organisation devait être créée.
 
Cette organisation sera constituée de seigneurs valeureux, qui vendront cher leur peau pour Amphise.  Qu’importe votre métier, que vous soyez démonologiste, guerrier, marchand, prêtre, vous serez tous les bienvenus.
Cependant, vous trouverez joint à ce parchemin quelques modalités qui devront être respectées (car intégrer une telle coalition nécessite des conditions non négligeables) ainsi qu’une explication des objectifs plus détaillées.

Le nom de cette guilde sera : « Vae Victis ». 
Le malheur s’abattra partout ou nous piétinerons sur un royaume hostile à Amphise.

Nous souillerons l’ennemis, nous les pillerons, nous les saignerons !!

Intégrer ma guilde vous donnera un nouveau statut, celui de défenseur amphisien.

Si vous êtes intéressé et motivé pour défendre notre province de l’ennemi, veuillez vous rendre directement dans mon royaume ou j’étudierai votre cas pour savoir si oui, ou non, vous pourrez nous rejoindre.

Je vous remercie de l’attention que vous aurez portée à cette missive.
Que la prospérité et la victoire soient 

Razak,
Conseiller de Keitha,
Palatin d’Amphise. »

Il remit ces lettres à quelques gnomes chargés de la diplomatie de son royaume pour les faire livrer à chaque royaume amphisien. 
', '-	permettre à Amphise de prendre de l’ampleur dans Kalamai, donner une bonne image de notre province. Une image d’une province puissante, active, dont on aura crainte.
-	Assurer une armée prête à défendre Amphise et ses habitants en cas d’envahissement étranger. 
-	Notre volonté est d’agrandir Amphise, de ce fait, conquérir des territoires ne nous fait pas peur… Soyez sur vos gardes…
', '-	Tout royaume amphisien sera considéré comme allié du moment qu’il n’aura à aucun moment agit en traitre contre nous. Si tel est le cas, alors nous annihilerons sa demeure.

-	Une offensive sur un royaume amphisien de la part d’un membre Vae Victis alors que celui-ci ne fait que se développer paisiblement dans notre province est passible d’une exclusion.
Toute traitrise devra être justifiée de manière argumentée ou pardonnée dans les plus brefs délais s’il ne veut pas être exclu.
Si l’action se perpétue, l’exclusion sera irrévocable.

-	Chaque membre devra être assidu à sa guilde :
Présence obligatoire à chaque réunion
Obligation de répondre à chaque fois que le chef vous demandera quelque chose
Toujours suivre les ordres du chef
Plus vous serez assidu, plus vous serez récompensé :
		Obtention d’un nouveau grade 
		Plus de reconnaissance de la part du chef

-	Pour adhérer à la guilde, vous devrez détenir un bon royaume, avec de bonnes armées prêtes à sacrifier leur vie pour défendre Amphise.
', 35181, 'http://vae-victis.forumgratuit.fr/forum.htm'),
(3, 'Les Voyageurs de Kalamaï', 'Thassopole', 9, 21465352, 'http://img195.imageshack.us/img195/9028/voyageurs.gif', 'Lumy', 'La complainte des Voyageurs


Par un après-midi d’automne,
Regardant la pluie tomber,
Une petite fille fredonne
Un air bien peu enjoué.

Pour le peuple des Anciens,
Une chanson triste d’adieu,
La petite troupe retient
Ses larmes au bord des yeux. 

Leur guide bien-aimée guérie,
Les Voyageurs s’en vont,
Sans un membre de la fratrie,
Sans Thuella le compagnon.

Investi d’une étrange mission,
Monsieur Cheval a choisi
De laisser ses compagnons
Partir vers une nouvelle vie.

Encore faible et convalescente,
Lumy-chan reprend les rênes
De la petite troupe impatiente
De retrouver la grande scène.

Pourtant ils n’iront pas loin
Car de leur guide adorée
Ils voulaient prendre soin
Et resteront donc à quai.

Ils prirent donc leurs quartiers
Dans la belle Thassopole,
Dans ce luxuriant vivier,
Non loin de la métropole.

Mieux vaudrait une comptine
Ou une bonne pinte
Pour consoler Clémentine
Et oublier cette complainte.

S’il vous plaît Voyageurs
Retrouvons notre envie
Parlons plutôt de bonheur
Que d’être à nouveau réunis.', 'L’objectif RP de notre armada est de faire naître la renommée de notre petite barde. Son voyage vers la célébrité s’étant arrêté prématurément pour des raisons que nous connaissons tous... Les Voyageurs, que nous sommes, l’entourons afin de la protéger et de profiter de son succès. Nous essaierons de la sortir de la mélancolie dans laquelle elle a glissé dernièrement.

Concrètement, nous tâcherons de créer un groupe soudé dans lequel chacun se sentira bien et où l’effort collectif sera tourné vers le bien-être de chacun de ses membres.
L’armada est comme vous l’aurez compris est tournée vers la solidarité entre coéquipiers et nous utiliserons souvent des débats RP pour résoudre nos problèmes.', 'La participation aux veillées est souhaitée, protocole permettant non seulement aux Voyageurs de définir leur ligne de conduite mais aussi de passer un peu de temps ensemble pour se connaître.

La participation au forum est obligatoire, seul moyen pour tisser des liens avec les autres Voyageurs.
 
Tout Voyageur peut se fixer un ou plusieurs objectifs. Tous alors feront leur possible pour l’aider à les réaliser.', 222044, 'http://manticore.forumactif.com/hall-d-entree-f58/la-complainte-des-voyageurs-t1312.htm'),
(4, 'Luminas', 'Etimnon', 7, 21465859, 'http://nsa19.casimages.com/img/2010/10/24/101024110430599849.jpg', 'Tiram', 'Une fois encore, ils étaient venus tout ravager. Partout des destructions, la nature souillée, la puanteur de la mort et les cris des agonisants...

Cela n’avait que trop duré, depuis trop longtemps les hordes maléfiques parcouraient Kalamaï en toute impunité et la désorganisation et la division des justes ne pouvait qu’aggraver la situation.

Enfin, une lueur d’espoir prit naissance. En Thassopole, Garius appela tous les défenseurs de la Lumière à le rejoindre pour lancer une croisade contre les Ténébres. Luminas, première du nom, était née. Malheureusement, d’autres pouvoirs étaient déjà bien établis dans la province et seuls deux compagnons vinrent le rejoindre : Anorglin et Tiram. Ils enregistrèrent quelques victoires individuelles mais leur faible nombre ne leur permit pas de faire plus que cela.

A l’occasion du nouveau bouleversement, ils décidèrent alors de migrer en Etimnon  une des rares terres encore épargnée par la souillure du Mal et d’y établir le point de départ de la libération de Kalamaï. Sualimo, héritier d’Anorglin, prit sa place et retrouva Tiram. Aucun des deux n’avait de nouvelles de Garius, et celui-ci ne se manifesta pas.

Après avoir pris le contrôle d’Etimnon, il décidèrent de refonder Luminas, appelant les justes de tout Kalamaï à les rejoindre s’ils en avaient la volonté et la capacité :

« Peuples de Kalamaï qui servez la Lumière, l’union est nécessaire pour résister et vaincre les puissances des Ténèbres.

N’avez-vous pas déjà trop souffert des méfaits des races dégénérées ?

Rejoignez Luminas si vous le pouvez, vous œuvrerez pour une cause juste.

Anciens, Célestiaux, Elfes, Fées, Gnomes, Nains et Hommes, vous serez des alliés naturels et pourrez bénéficier de notre protection sauf bien sûr si vous choisissiez d’attaquer l’un des nôtres ou de vous tourner vers les Ténèbres d’une quelconque manière que ce soit.

Elfes noirs, Géants, Infernaux, Minotaures, Orques, Sahuagins et Vampires, ainsi que tous ceux qui choisiraient de s’allier à un ou plusieurs représentants des ces races impies, craignez notre colère, nous n’aurons de cesse de vous traquer, ou que vous vous terriez.

Pour Luminas, pour la Lumière, pour Kalamaï.

Sualimo et Tiram. »', '- Devenir une guilde puissante pour servir au mieux notre cause.
- Pourchasser tous les serviteurs du mal et protéger leurs victimes.', 'Ligne de l’Armada à respecter sous peine d’exclusion :

- Attaquer les races mauvaises en priorité ainsi que les classes criminelles et adorateurs de dieux maléfiques
- Ne pas attaquer de membre de race bonne, sauf pour répondre à une agression, si le joueur est allié à des joueurs de race mauvaise ou désigné comme cible autorisée.

Autre :

- participer sur le forum  : http://luminas.forumpro.fr/forum.htm
- partager les rapports d’espionnage et de combat.
- respecter la stratégie et les instructions de l’armada.
- toujours garder un bon esprit dans le jeu.', 143765, 'http://luminas.forumpro.fr/forum.htm'),
(5, 'L`Union des Titans', 'Prévèze', 2, 21479735, 'http://img183.imageshack.us/img183/5403/orcs56pw4.jpg', 'Vezk', 'L’aube enfin se lève..
Des cris d’orks s’élèvent,
Dans le relief montagneux de la grande Méthone.
Un minotaure s’avance, marteau dans ses deux mains.
Regarde à droite, à gauche, croisant un homme.
Il scrute au loin et aperçoit, au-dessus des remparts.
Une énorme tête, d’un géant du coin.

L’armure toute tachée par dessus quelques tissus ici et là.
Les lourdes cuissardes frappant le sol à chacun de ses pas,
Le Minotaure avance sur la grande place de la Capitale.
Un petit gnome légèrement vêtu se faufile entre les passants,
Il croise le regard de l’homme-taureau et le salue fièrement.
Le Minotaure intrigué suit du regard le petit être.

Le gnome s’arrête à un mur, et grimpe sur quelques caisses en bois.
Personne ne remarque rien, jusqu’à ce que le Minotaure fasse son entrée.
Le lourdaud s’assoit à une table. 

Le gnome maintenant à hauteur d’homme, se présente.

"Oyé mes seigneurs ! Je suis Draskis le représentant de l’Union des Titans."

Un grand nombre de personnes s’approcha à l’écoute de ce dernier.

"Oui ! Je m’adresse à vous, à la grande Prévèze je dirais même !
Combien de temps notre province devra t-elle encore endurer la douleur du déclin?
Depuis quand n’avons nous pas eu Prévèze représentée dignement ?
Les Chevaliers du Lys ? Les Géants de Kalamai ? 
Ou bien la Confrérie des Guerriers Déchus ? La Lune de Sang ?

Rien de tout cela, remémorons-nous tout de même les noms de grandes armadas qui ont forgés la réputation de notre chère Province !"

Le public fut de plus en plus intrigué par le discours du courageux gnome, qui n’hésitait pas à salir des noms d’anciennes guildes.

"Souvenez-vous de ces noms :

L’Ordre des Gardiens du Chaos, Les Manipulateurs de la Matière, L’Ordre Malkavien, L’Autel de la Finance !

Toutes ces Armadas ont été la gloire et la fierté de Prévèze, fierté qui a été bafouée, anéantie par de sombres cavaliers. Vous savez de qui je parle ! Ces Tzarmendo, qui ont salit notre Blason.
Mais saluons néanmoins les membres de la Huitième Armée pour avoir tenté de rétablir ce qui avait été détruit.

Notre province ce trouve aujourd’hui en difficulté, et c’est en cette magnifique matinée que je viens annoncer la réunification de la plus puissante armada de notre temps.

L’Union des Titans mes amis ! Cette Union qui par le passé a tenu en déroute les terrifiants ennemis de Méthone parmi lesquels l’Ascension du Serpent !"

Draskis saisit un mégaphone en bois et hurla à l’intérieur droit vers les remparts de la cité.

"Ö Puissants Hommes ! Minotaures ! Orques ! Géants ! Gnomes ! Rappelez-vous ! L’Union des Titans est là !"

Des applaudissement jaillirent de la foule en délire, accompagnés de sifflements et de cris de joie
Le gnome accrocha fièrement au mur, le papier exposant les détails de l’armada puis se retourna vers son public.

"Et Garder cela en Mémoire...Empalé, c’est Pesé !"', '-Raviver les couleurs de la Grande Prévèze. 

-Unir ses citoyens sous une seule bannière. 

-Tenir au loin ses ennemis de ses plaines et ses montagnes. 

-Faire couler le Sang et l’Alcool, dans la joie et la bonne humeur.', '*Pour rejoindre l’Union des Titans, un message doit être transmis au Chef actuel, soyez soigneux, le texte vous représente autant que votre avatar. 

*Un traître parmi les Titans sera empalé sur sa clôture ! 

*Toutes les races de Prévèze sont acceptés en nos rangs ! 

*Prenez Garde ! Même un petit Gnome marchand, peut révéler un Barbare buveur de Sang !', 27713, 'http://union-titans.forum-gratuit.net/'),
(6, 'Les Scribes de Mésolongion', 'Mésolongion', 4, 21479922, 'http://a31.idata.over-blog.com/1/72/23/46/sister-nightfall/CN8-Eglise-Notre-Dame--Taverny.jpg', 'Irkos', 'Dans la forêt magique et impénétrable de Mésolongion, un homme vivait en ermite, au fin fond des bois. Il était nécromancien. Cet homme se nommait Irkos, c’était un marginal. 

Partout où il allait, il se faisait naguère conspuer, lyncher. Car il avait tué la femme du Palatin, étant désireux de la soigner. Car c’était là le défaut de cet homme : il échouait dans tout ce qu’il entreprenait. Dans son enfance, il avait voulu ressusciter son chien grâce à ses pouvoirs précoces, mais au lieu de cela il n\'était parvenu qu’à animer un cadavre porteur de toutes les maladies, qui contaminèrent ses parents, qui moururent dans une longue agonie.

Encore maintenant, lorsqu’il souhaitait réanimer les morts, les conséquences étaient souvent désastreuses. Sur un champ de bataille, alors qu\'un majestueux dragon d’or venait de tomber, Irkos entreprit de le faire revenir du royaume de Nucter, mais le résultat fut qu’il créa un monstrueux dragon-liche, qui tailla en pièce tous ses alliés. 

Las de tous ces échecs, il partit s’exiler dans la forêt, là il ne pourrait plus faire de mal à grand monde. Et puis, le Palatin l’avait banni des cités, il n’avait donc pas vraiment le choix.

La déception laissa peu à peu place à la rage. Il exerça tout son pouvoir sur les animaux, les humains qui se perdaient, afin d\'apprendre à le contrôler et à l\'utiliser contre ceux qui l\'avaient rejeté. Mais il lui manquait quelque chose. Lors de l\'une de ses chasses à l\'homme, il tomba sur un vieux temple. Un monastère, qui semblait avoir été souillé par les arts noirs. 

A peine s’approchait-t-il qu’une douleur lui vrilla le crâne, accompagné par une voix caverneuse et sombre, qui résonnait dans chaque partie de son corps, sans passer par ses tympans.

- Étranger ! Te voici sur mes terres, le Monastère de Nucter. Ici est gardé un savoir auquel aucun mortel n’a jamais eu accès. Laisse moi prendre ton âme, et en échange, je te laisserai l’accès à cette quantité infinie de pouvoir !

Les images des multiples échecs d’Irkos lui revenaient en mémoire. Le regard méprisant des gens. Leurs coups. Il se laissa aller, et l’entité s’enfonça sournoisement en lui. Il était maintenant un Infernal, un démon d\'une incommensurable puissance. Tout son talent allait enfin être reconnu. Pendant une année entière, il se consacra à l’apprentissage de toute les facettes de la nécromancie, puis il prépara son retour, avec la cruauté et la rage au coeur, prêt à détruire ceux qui l\'avaient exilé. 

Tous ceux qui pénétraient sa forêt étaient retrouvés sauvagement mutilés, avec de multiples inscriptions sur les parties de leur corps restées intacts. De simples mots, écrits avec une lame, comme "suffisance", "mépris" ou encore "peur". Rien de très original, mais cela n’empêcha pas Irkos d’être fier de lui. Il se considérait comme un artiste, un scribe. Ses victimes portaient les maux les plus terribles de la société, à jamais gravés sur leur corps. Mais Irkos n\'atteignait le summum de la jouissance et de la fierté que lorsque les familles récupéraient les cadavres, lorsque ces derniers se réveillaient, et tuaient de leurs mains froides et mortes leurs semblables. 

Un délicieux spectacle dont ne se lassait jamais l’Infernal. Sa vengeance prit fin lorsqu\'il eut sur les mains le sang du Palatin. Il prit ensuite la place de sa victime, et fit construire une route menant directement au Monastère de Nucter. Ainsi, tous Ses fidèles pouvaient consulter les ouvrages maléfiques qui leur assureraient le pouvoir, et Le servir comme Irkos L\'avait servi.

Chaque disciple, ainsi rendu puissant, décida de les corps de ses victimes de sa propre marque, l\'un des maux les plus vils et les plus pervers, à sa propre image. 

Les scribes de Mésolongion étaient nés.', '- Devenir une armada compétitive sur le Serveur 2
- Montrer que Mésonlongion est une province redoutable et une des plus puissantes
- Créer une véritable petite communauté en Mésolongion afin que chacun s’y sente à son aise.', '-Être actif sur le forum et dans la vie de l’armada. Il n’est pas demandé d’être présent tous les jours, mais une présence hebdomadaire est vivement souhaitée.
- Poster les rapports de combats, et redoubler d’intensité en période de guerre.
- Ne pas faire trop de fautes ( on est quand même scribe :P ) 
- Fair play, bonne entente, et cohésion sont requis afin d’être les plus performants possibles. ', 128626, 'http://scribes.forumgratuit.fr'),
(7, 'Les Marcheurs des Ombres', 'Igoumen', 8, 21516003, 'http://img10.imageshack.us/img10/7119/sacientsandwellersbysan.jpg', 'D&eacute;sacre', '	Bazaar, chef de la tribu des monts de Crissevent, était inquiet. Depuis des lunes, la shamane Vertride annonçait les pires présages pour son clan. Le climat de Crissevent n’était-il pas suffisamment hostile pour que l’Orque n’ait pas à se préoccuper de menaces extérieures ?

Crissevent : un désert de rocaille aux confins d’Igoumen. Trop chaud le jour, trop froid la nuit. Battu par le vent, toujours. Pourquoi défendre cette terre désolée ? Nombreux parmi les plus jeunes pensaient ainsi. Souvent, la tribu maudissait les mages de Mésolongion qui avaient provoqué des tempêtes de vents magiques, déréglé le climat et ruiné la terre. Mais Bazaar était né sur cette terre. Hors de question qu’il l’abandonne. Il avait vaincu le grand guerrier Farrukh pour prendre la tête du clan. Il n’était pas prêt de laisser ses terres, ses hommes et son honneur à la merci du premier venu.

	Ce soir, le conseil de la tribu se réunissait au grand complet : une quinzaine de chefs dont la plupart avaient passé la journée à cheval. La menace était palpable, l’urgence bien réelle. La nuit précédente, Vertride avait eu une nouvelle vision et les sages devaient débattre de la manière dont le groupe repousserait les ombres qui rôdaient autour de Crissevent. Le feu au centre de la tente ne chauffait guère – maudit vent ! – mais il permettait à l’orateur d’être visible de ses compagnons.

	Gronk des terres du nord-est s’exprimait à présent :
	« La respectée Vertride nous dit que Crissevent risque la destruction, que le clan a attisé la convoitise de pouvoirs qui nous dépassent, que les dieux nous ont mené sur une voie sans issue. Moi, Gronk, je surveille chaque jour la frontière qui sépare Crissevent de Mésolongion. Je peux vous dire ceci : les mages sont occupés dans leurs tours et leurs cités. Lorsqu’ils partent à la guerre, ce n’est pas vers nos terres arides et sans ressources. Ils sèment la destruction plus loin désormais, au centre de l’Empire. Qui donc voudrait envahir nos terres quand nous-mêmes peinons à y survivre ? »

	L’argument fit mouche. Bazaar et d’autres anciens acquiescèrent de la tête. Gronk avait bien parlé. Bazaar se leva à son tour et, comme pour ponctuer son mouvement, le tonnerre gronda. Dans la tente, autour du feu vacillant, les sages de la tribu des monts de Crissevent frémirent. Ce n’était pas le tonnerre qui précède la pluie mais celui qui amène le malheur, la guerre et la mort. Dans un cri, Vertride s’écroula, inanimée.

	Bazaar ouvrit la bouche pour rétablir la situation mais il ne parvint pas à parler. Soudain, il fut pris à la gorge ! Traîtrise : Kongar, son garde du corps, l’étranglait ! Comme il cherchait à se dégager, la porte de la tente s’entrouvrit et le vent et une ombre s’immiscèrent parmi eux. Un être. Une femelle. Pas une Orque. Une Ancienne, peut-être. Progressivement, l’attention générale se détourna de Bazaar et se porta sur... elle. Bazaar ne tentait plus de défaire la prise qui lui maintenait la gorge et la pression se fit plus douce.

	Les sages de la tribu des monts de Crissevent étaient médusés. N’étaient-ils pas au cœur d’un camp d’Orques des montagnes ? N’y avait-il point de gardes ? La femelle s’avança près du feu et se baissa pour chauffer ses mains. Tous purent voir son visage marqué de runes. L’orateur Gronk vit là une opportunité de se débarrasser de l’intruse. Mais alors qu’il passait une main dans sa manche à la recherche d’un coutelas, l’air siffla et une lame lui pulvérisa la clavicule. Il cria. Un deuxième étranger avait pénétré la tente. Il était derrière lui. Kongar durcit sa prise à la gorge de Bazaar. Les sages de Crissevent ne tenteraient plus rien.

	Désacre, l’ancienne sorcière, s’était réchauffé les mains. Elle décida que le moment était aussi bon qu’un autre de s’adresser aux Orques :
	« Bazaar faible. Bazaar Orque des villes. Crissevent fort. Trop fort pour Bazaar. Moi marcheuse des ombres. Forte comme Crissevent. Même plus forte que Crissevent. Marcheurs des ombres forts. Partout en Igoumen. Vous pas voir marcheurs de ombres. Mais nous toujours voir Orques. Maintenant Orques Crissevent obéir marcheurs des ombres ou Orques mourir comme Bazaar. »

	L’acolyte de la sorcière s’était déplacé. A nouveau, sans que personne ne le remarque. Et déjà le cœur de Bazaar était transpercé. Dans un dernier souffle, il murmura :
	« Ô Dinas, ayez pitié de nous. »', 'Marcher, frapper et parler dans l’ombre.
Vivre dans le désert et devenir plus forts que le désert.', 'S’inscrire sur le forum.
Participer à la vie de l’armada.
Encourager la coopération entre joueurs.
Accepter de modifier son compte pour coller à des objectifs de groupe.
Concevoir la victoire, la défaite et les interactions entre joueurs en général en termes ludiques.', 231848, 'http://marcheursdesombres.forumgratuit.fr/forum.htm'),
(8, 'Pour un Empire Neuf', 'Naxos', 5, 21538779, 'http://fc05.deviantart.net/fs41/f/2009/051/b/1/Undead_army_by_ani_r.jpg', 'Myos', '"Ecoutez, mortels, écoutez morts, et écoutez surtout maîtres de la Mort, amis nécromanciens,

Depuis des millénaires, la vie domine ce monde. Elle grouille partout, comme de la vermine, comme une folle furieuse effrénée. Mais on ne peut lui faire confiance, elle semble forte, mais elle peut-être facilement altérée ou détruite.  C’est pourquoi il est temps d’évoluer !

Abolissons ce prima du vivant, comme on abolit un système mauvais, comme on destitue un seigneur incompétent ! Nous ne voulons plus de l’instabilité purulente de la vie, nous ne voulons plus être sujet à la pourriture et à la déchéance de la vieillesse !

La Nécromancie nous donne la solution, en mourant et en nous entourant de morts, nous pouvons ériger un environnement stable pour nous, nos familles, nos amis. Quoi de plus attentif comme garde qu`un squelette qui ne bronche pas, éveillé vingt-quatre heures sur vingt-quatre, jamais en repos, jamais malade ou fatigué ? C’est cela que nous proposons, une transformation en profondeur de la société kalamaïenne. 
Notre but n’est pas seulement magique, mais également politique : nous pensons que seuls des gouvernants morts, donc détachés des contingences matérielles, comme la corruption ou le sentimentalisme dégoulinant, peuvent former une élite dirigeante de qualité. Qualité renforcée par la stabilité d’une telle gouvernance car les seigneurs seraient alors immortels : l’essor économique, culturel et politique des provinces ne sera plus entravé par des luttes de pouvoir et de succession, chaque dirigeant étant immortel.

Ainsi, nous œuvrons pour le bien de tous, sans exception. C’est pourquoi nous ne permettrons aucune opposition à notre lutte ! Toute opposition contre nous, est une opposition au bonheur de chacun, qu`il soit seigneur, marchand ou paysan !

Vive la Mort ! Vive les Nécrocrates ! Vive le mouvement Pour un Empire Neuf !"

[Discours de Myos, meneur éternel des Nécrocrates]', 'Les principaux objectifs de "Pour un Empire Neuf" sont simples: faire du neuf, neuf comme Nécrocratique, Eternel et Unifié par la Faucheuse.

Nous nous donnons pour but provisoire de promouvoir la non-vie et les nécromants, mais à plus long terme nous nous fixons pour objectif de permettre à la Mort une totale domination sur la Vie.', '1. Pourront diriger l’armada seuls les Nécromants.

2. Pourront encore servir l’armada et donc l’intégrer tout seigneur reconnaissant Nucter pour dieu ou étant assassin.

3. Pourront être engagés pour leurs talents des bardes en tant que propagandistes et des marchands en tant que conseillers économiques.

4. Toute attaque à l’encontre d’un nécromant ou d’un disciple de Nucter est exclue, à moins qu’il s’oppose explicitement à notre idéal.

5. Tout membre est tenu de s’impliquer un maximum pour notre cause.', 112391, 'http://pourunempireneuf.forumactif.net/forum'),
(9, 'La Main Pourpre', 'Outre-Mer', 6, 21649557, 'http://doudouandtoutou.vip-blog.com/medias/0206/434228wal.jpg', 'Ashinseika', 'Description

Je vais te conter une histoire, mon récit débute lors de l``age de Bronze...
Avec l``arrivée des Vampires et des Infernaux, les puissants de Kalamaï prirent peur, ils essayèrent de décimer ces deux races malsaines. Il faut bien avouer qu``elles n``ont rien de très attirant, entre les suceurs de sang et les `"démons`" comme on appelait alors ces viles créatures venues des enfers. 

Les puissants de Kalamaï décidèrent de former un ordre de combattants d``élite, commando qui avait pour but d``assassiner toute menace Vampire ou Infernale possible: C`était le but premier de la Main Pourpre.
Au fil de temps, les opinions changèrent vis-à-vis des derniers arrivants, surtout avec l``arrivée au pouvoir de Beth-Alan en Edhesse, premier Palatin Vampire de Kalamaï. La Main Pourpre fut lentement oubliée... elle décida donc d``offrir ses services aux plus offrants : Meurtres, vols, assassinats en tout genres, enlèvements... Elle se fit rapidement une renommée dans tout Kalamaï, et tout alla pour le mieux...
Mais voilà que la province d`Agrostole déclencha la guerre... 
Le But premier de la Main Pourpre était désormais oublié, puisque les Infernaux pouvaient être tués sur le champ de bataille... 
Les dirigeants décidèrent alors d``aider Kalamaï, ils partirent premièrement vers l``Amphise, où, selon des informateurs, allait débarquer une nouvelle puissance : L``Outre-Mer, alliée d``Agrostole. Durant plusieurs mois, la guerre fit rage contre les Rebelles Noirs, la Main Pourpre elle, s``organisa, recruta, attendit... Les premières manifestations de L``Outre-Mer... l``Empire fut rapidement conquis, la Main-Pourpre resta dans l``ombre attendant le moment propice, à part quelques assassinats de haut gradés rien ne se passa... 

Coup d``éclat ! 

les Protecteurs Impériaux après quatre années se réveillèrent, et mirent fin à la domination d``Outre-Mer. 
La Main-Pourpre commença à douter de ses informateurs, mais ceux-ci ne changèrent pas de discours : `"Amphise, ils vont attaquer l``Amphise, ils devaient le faire la dernière fois, il y a sûrement eu un problème, mais cette fois, j``en suis certain !`".
Deux mois après la reconquête de Kalamaï, les premiers bateau débarquèrent, la Main Pourpre, ainsi que la résistance furent prêtes, l``ennemi fut rapidement neutralisé en Amphise.
La Main-Pourpre décida de participer aux croisades en Outre-Mer pour y décimer les opposants. Ils rejoignirent donc Zakinthe. De là, ils partirent en Bateau, vers l``empire d``Outre-Mer, et au bout de quelques mois de combats, celui-ci fut conquis et intégré à l``empire. La Main-Pourpre resta sur place, et, après longue réflexion, décida de s``installer en Outre-Mer, lieu où il était le plus probable qu``une guerre éclate, lieu où était présent le plus d``infernaux avec l``Agrostole, et lieu où serait présent le plus de cibles potentielles. La Main-Pourpre replongea dans l``ombre, le temps de se réorganiser, et c``est aujourd``hui, qu``enfin elle refait ouvertement surface. 

Ainsi, fiston, les services de la Main Pourpre sont de nouveaux disponibles.', 'La Main Pourpre est une association de mercenaires, mais nous n``hésitons pas à prendre l``initiative d``une guerre, ainsi, nous aiderons les plus offrants, et détruirons nos cibles... 
Coûte que coûte.
', 'L``armada voit deux catégories de règles : Celles pour les membres, Celles pour les clients.

Pour les clients :
En vertu des lois de l``empire, le prix demandé pour l``annihilation d``une armée restera raisonnable,
le payement peut être effectué de plusieurs façons :
Tout d``abord le moyen le plus classique, la mise d``une prime sur la tête de l``homme à abattre,
La possibilité d``échanger la destruction de l``adversaire contre un autre service, par exemple la vente d``un objet sur 12 heures sur une plage horaire intéressante pour l``acheteur.
Il existe bien d``autres façons de nous mettre d``accord par message.
Tout auteur de contrat ne payant pas ses dettes se verra assaillit et réduit à néant. 
Nous nous engageons à remplir nos contrats jusqu``au bout, mais nous nous réservons le droit de refuser une demande.
Nous vous proposons également le service d``aide à la guerre, nous déclarerons une guerre, officielle ou pas, contre l``armada que vous voulez voir affaiblie. Toute demande s``adressera directement à Ashinseika par message sur notre forum.

Règles pour les membres :
- Respectez les autres membres.
- Ne pas accepter de contrat sans l``autorisation d``un supérieur.
- Être actif, et poster ses rapports de combats lors de guerres ou de contrat.

Toute demande d``adhésion devra se faire sur le forum ou par message à Ashinseika ou autre responsable.', 130863, 'http://do-lamainpourpre.xooit.fr'),
(10, 'Le cercle des Monarques', 'Vénopole', 7, 21652976, 'http://mythologica.fr/medieval/pic/arthur2.jpg', 'Lyonis', ' Aujourd’hui se tint une nouvelle réunion du cercle des monarques. Ce cercle fut créé par trois rois dans un unique but, vaincre l’Ennui. L’Ennui tenace et fourbe, qu’ils enduraient jour après jour, durait depuis qu’ils étaient montés sur le trône, remplaçant leurs défunts pères. En effet, ils n’avaient rien à faire en tant que roi : toutes les affaires de leurs royaumes étaient gérées par des fonctionnaires très compétents. Les finances étaient bonnes, les rentrées d’argent régulières. La police et la milice remplissaient à merveille leur rôle, tant et si bien que le peuple se tenait à carreau, pas de révolte à mater, pas de brigands à jeter au cachot, pas un meurtrier à écarteler en place publique ni même un voleur de poule à mettre au pilori. Pas plus que de défendre terre à défendre, car leur voisins étaient tous respectables et incroyablement loyaux. Bref, les monarques s’ennuyaient fermement, à la tête de leur royaume où tout allait si bien. Ils avaient donc décidé de créer ce club, le cercle des monarques, qui avait pour but de trouver une occupation durable à ces trois rois en manque de sensations fortes. Mais terrasser le royal Ennui n’est pas chose aisée. Ils s’étaient réunis maintes fois, et avaient essayé moult activités : le bridge, la pétanque molle, un jeu elfe connu sous le nom de Skrabeule, les échecs orques, qui consistes à faire avaler le plus grand nombre de pièce à l’adversaire, des sauts en parachutes du haut du donjon, des courses de gnomes en sac, saute-mouton, un cache-cache géant, et même un jeu étrange où le but est de toucher les autres puis de monter sur les meubles. Ils organisèrent des tournois de joute, de tir à l’arc, des combats de gladiateurs, mais rien ne put les distraire bien longtemps. Ils avaient même tenté d’organiser des révoltes paysannes, en soudoyant certains chefs de villages, mais ces derniers avaient tous refusé. Ils avaient tenté d’importer des brigands d’autres contrées, mais à peine étaient-ils arrivés sur leurs terres, qu\'ils furent interceptés par les miliciens et reconduits à la frontière. Malgré tous leurs efforts, ils ne parvinrent à terrasser l’Ennui. 
 Mais ce soir, ils trouvèrent LA solution. Ce serait la fin de l’Ennui. Voilà ce qu\'il fallait : partir en guerre contre d’autres contrées, à la tête de leurs armées belles et bien nourries. Et pour en faire profiter tout le monde, ils envoyèrent une missive à tous les Monarques Vénopoliens, afin de les appeler à vaincre le royal Ennui !
', 'Vaincre le Royal Ennui, en rassemblant tous les monarques de Vénopole dans de multiples et joyeuses croisades. Les vétérans comme les débutants seront accueillis à bras ouverts !

Terrasser sous toutes ses formes le Royal Ennui, dans la joie et la bonne humeur.

Noyer le Royal Ennui dans des tonneaux de vin et de bière.

', 'Participer un peu sur forum, poster ses rapports de combats.

Etre présents au réunion du cercle.

Rester poli et courtois.

', 171288, 'http://lecercledesmonarques.forumgratuit.fr/'),
(11, 'Confrérie des Ombres', 'Prévèze', 8, 21680287, 'http://api.ning.com/files/D58P6DfhWBW6IT0mWlg15kugwGOAZctT4*jzHcV7jAqHlZqfJY5dHp0yjnc6uMQHlBFl2WBIS8oWmD2C7hZ0wXBLn9u77*fc/Vampires12.jpg', 'Artaxxas', 'Il faut savoir que le nosferatu, communément appelé vampire, ne meurt pas, comme l``abeille, une fois qu``il a fait une victime. Au contraire, il n``en devient que plus fort ; et, plus fort, il n``en est que plus dangereux . Il se sert de la nécromancie et de la démonologie, arts qui, comme l``indique l``étymologie des deux mots, consistent à évoquer les morts pour deviner l``avenir, à les ranimer et à contrôler les démons. Tous les morts dont il s``approche sont donc à ses ordres. Il peut, avec pourtant des réserves, se transformer en une énorme chauve-souris, et se déplacer plus vite qu``un étalon au galop; il a même le pouvoir, dans une certaine mesure, de se rendre maître des éléments : la tempête, le brouillard, le tonnerre, et de se faire obéir de créatures inférieures, telles que le rat, le hibou, la chauve-souris, la phalène, le renard et le loup ; il peut se faire grand et se rapetisser et, à certains moments, il disparaît exactement comme s``il n``existait plus. Nous, les vampires, venons des ténèbres, il est dans notre nature de répandre le mal et la peur. C``est ce que nous avons fait à de nombreuses reprises dans l``empire de Kalamai . Hélas, nous avons été vaincus et affaiblis et notre plan de domination sur toutes les terres connues a échoué. Mais aujourd``hui , après avoir patiemment reconstitué nos forces pendant des siècles, nous sommes enfin prêts à annihiler tous nos ennemis et à prendre la place qui nous reviens de droit. Aucune race ne pourra nous arrêter et même les pouvoirs des anciens sont dérisoires face aux forces que nous ont accordé nos dieux noirs. Nous nous répandons partout et la Corporation des Arcanes, la seule qui ait la puissance pour nous contrer, est rongée de l``intérieur par nos agents. Aucun Dante ne viendra vous sauver, servez les ténèbres ou vos âmes seront torturées pour l``éternité et votre sang abreuvera à jamais notre soif insatiable. Toutefois, nos dissensions internes ont causé jadis notre perte c``est pourquoi les vampires et leurs alliés ténébreux se sont réunis dans dans une confrérie : la Confrérie des Ombres . Même nos amis tremblent à l``idée de prononcer le nom funeste de notre armada...', 'Notre but ultime est la domination éternelle des Ténèbres sur l``empire de Kalamai et toutes les terres connues, les impurs doivent adorer les dieux noirs .', 'Il n``y a pas de règle chez nous c``est tuer ou être tué !', 181377, 'http://do-shadow-lords.xooit.fr');



CREATE TABLE `11apr_guerres_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '0',
  `valide` varchar(10) NOT NULL DEFAULT '0',
  `initiateur` varchar(80) NOT NULL DEFAULT '',
  `guilde1` varchar(80) NOT NULL DEFAULT '',
  `guilde2` varchar(80) NOT NULL DEFAULT '',
  `indep1` text NOT NULL,
  `indep2` text NOT NULL,
  `declaration` text NOT NULL,
  `vainqueur` varchar(80) NOT NULL DEFAULT '',
  `dateDebut` int(11) NOT NULL DEFAULT '0',
  `puissDebut1` int(11) NOT NULL DEFAULT '0',
  `puissDebut2` int(11) NOT NULL DEFAULT '0',
  `dateFin` int(11) NOT NULL DEFAULT '0',
  `puissFin1` int(11) NOT NULL DEFAULT '0',
  `puissFin2` int(11) NOT NULL DEFAULT '0',
  `cond1` varchar(20) NOT NULL DEFAULT '',
  `val1` int(11) NOT NULL DEFAULT '0',
  `cond2` varchar(20) NOT NULL DEFAULT '',
  `val2` int(11) NOT NULL DEFAULT '0',
  `cond3` varchar(20) NOT NULL DEFAULT '',
  `val3` int(11) NOT NULL DEFAULT '0',
  `andor` char(3) NOT NULL DEFAULT '',
  `prop1` varchar(20) NOT NULL DEFAULT '',
  `valp1` int(11) NOT NULL DEFAULT '0',
  `prop2` varchar(20) NOT NULL DEFAULT '',
  `valp2` int(11) NOT NULL DEFAULT '0',
  `prop3` varchar(20) NOT NULL DEFAULT '',
  `valp3` int(11) NOT NULL DEFAULT '0',
  `andorp` char(3) NOT NULL DEFAULT '',
  `proposeur` varchar(80) NOT NULL DEFAULT '',
  `nbrAttaVict` double NOT NULL DEFAULT '0',
  `nbrAttaDefa` double NOT NULL DEFAULT '0',
  `nbrDefeVict` double NOT NULL DEFAULT '0',
  `nbrDefeDefa` double NOT NULL DEFAULT '0',
  `nbratta1` double NOT NULL DEFAULT '0',
  `nbratta2` double NOT NULL DEFAULT '0',
  `nbrvict1` double NOT NULL DEFAULT '0',
  `nbrvict2` double NOT NULL DEFAULT '0',
  `xp1` int(11) NOT NULL DEFAULT '0',
  `xp2` int(11) NOT NULL DEFAULT '0',
  `pertePuiss1` int(11) NOT NULL DEFAULT '0',
  `pertePuiss2` int(11) NOT NULL DEFAULT '0',
  `acres1` int(11) NOT NULL DEFAULT '0',
  `acres2` int(11) NOT NULL DEFAULT '0',
  `prison1` int(11) NOT NULL DEFAULT '0',
  `prison2` int(11) NOT NULL DEFAULT '0',
  `tues1` int(11) NOT NULL DEFAULT '0',
  `tues2` int(11) NOT NULL DEFAULT '0',
  `detruits1` double NOT NULL DEFAULT '0',
  `detruits2` double NOT NULL DEFAULT '0',
  `or1` int(11) NOT NULL DEFAULT '0',
  `or2` int(11) NOT NULL DEFAULT '0',
  `ressources1` int(11) NOT NULL DEFAULT '0',
  `ressources2` int(11) NOT NULL DEFAULT '0',
  `PGCj1` varchar(25) NOT NULL DEFAULT '',
  `PGCj2` varchar(25) NOT NULL DEFAULT '',
  `PGCxp1` int(11) NOT NULL DEFAULT '0',
  `PGCxp2` int(11) NOT NULL DEFAULT '0',
  `PGCatta` varchar(25) NOT NULL DEFAULT '',
  `PGCvainqueur` varchar(25) NOT NULL DEFAULT '',
  `cache` int(11) NOT NULL DEFAULT '0',
  `leaver1` text NOT NULL,
  `leaver2` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

INSERT INTO `11apr_guerres_2` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
(1, 'guerre', 'termine', '', 'Vae Victis', 'L`Union des Titans', '', '', '"Titans", 

Nombreux sont les casques et armures lâchées aux combats par de répugnants orques et autres monstres maléfiques sur nos terres.
 
Nous en avons assez de devoir défendre nos forêts et rester aux aguets pour contrer vos offensives. Ainsi, pour Amphise, nous avons décidé que la meilleure défense était l`attaque.

Nous petits elfes, allons vous montrer qui sont les titans.

Malheur aux vaincus.
', 'Vae Victis', 21500298, 62817, 79114, 21563062, 90228, 110625, 'nbrvict', 200, '', 0, '', 0, 'AND', 'Butin total', 1013538, '', 0, '', 0, '', '', 175, 23, 47, 165, 177.011316283, 209.530714547, 200.137987677, 184.142622657, 100644, 89150, 1714721, 2317920, 468090, 590507, 254455, 293669, 202943, 212256, 6.7427194956, 5.94194397675, 1931257, 1877751, 960, 901, 'Nicci', 'Agritha', 1213, 4968, 'Agritha', 'Agritha', 0, '|Han|Kergrist|', '|Drussean|Tirandilis|Burgrok Brise`Fer|Belerion|'),
(2, 'guerre', 'termine', '', 'Luminas', 'L`Union des Titans', '', '', 'Titans,
Par votre nature, par vos actes vous êtes un affront à tout ce qui est juste et bon.
Non contents de souiller le sol de Kalamaï par votre seule présence, vous avez l`affront de vous regrouper pour perpétrer vos crimes. Cela ne peut être toléré.
Pour votre nature, pour vos actes vous avez été jugés.
Pour votre nature, pour vos actes, vous avez été condamnés
Il est maintenant temps d`exécuter la sentence.
Les éléments vont se déchainer, Prévèze sera purgée du mal.', 'L`Union des Titans', 21504372, 99899, 97039, 21518705, 109341, 113087, 'xp', 40000, 'pertePuiss', 800000, '', 0, 'AND', 'Butin total', 241827, '', 0, '', 0, '', '', 34, 13, 3, 33, 42.6289814556, 34.4855570754, 33.6819158632, 43.5179565211, 30244, 42215, 862617, 751818, 104695, 105618, 64542, 67549, 42026, 39016, 1.04861828769, 3.17241742134, 249480, 312668, 186, 225, 'Katrickan', 'Vezk', 3994, 1657, 'Katrickan', 'Katrickan', 0, '', '|Drussean|'),
(3, 'pna', 'encours', '', 'Les Scribes de Mésolongion', 'L`Union des Titans', '', '', 'La plupart des guildes jouent le jeu de lumière, chassent les \'mauvaises\' races, font la guerre pour la paix. Il est écœurant de voir tant d\'hypocrisie régnant en maître sur Kalamai. Sans paradoxe aucun, nous affirmons faire la guerre pour la guerre, pour la destruction, pour la mort, pour la ruine, pour l\'anéantissement. Qui sont-ils donc pour désigner quelles sont les races bonnes ? Pour qui se prennent ces serviteurs de la lumière, avilis par leur aveuglement fanatique ? Nous leur montrerons la vraie voie, celle menant à la vérité. Celle de la Mort. Par la mort.

Titans, nous sommes les deux seuls armadas présentes victimes de leur fausse illumination divine. Montrons que leur détermination n\'est qu\'éphémère, que devant Nucter nous sommes tous les mêmes. Nous sommes Ses créatures, et qu\'importe la splendeur et l\'éclat qu\'ils accordent à leurs gestes, ils se rendront bien vite compte que l\'utopie d\'un monde éclairé n\'est qu\'un rêve. Et un songe n\'est pas fait pour être réalisé, mais seulement rêver.

Titans, nous vous soutenons dans votre quête de destruction, allions nos objectifs et ouvrons les yeux à tout ces êtres qui croient que la Mort ne touche que les autres. Nous serons là pour vous, notre heure est venue. ', '', 21514353, 105187, 111279, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', ''),
(4, 'guerre', 'termine', '', 'Les Scribes de Mésolongion', 'Luminas', '', '', 'Chers illuminés, le temps est venu pour vous de répondre de vos actes et propos. Vous vous adjugez le droit de définir quelles sont les races bonnes et mauvaises. Arrogance. Et vous vous permettez de nous traiter
de dégénérés et de nous traquer comme des bêtes, tout en prônant la paix. La guerre pour la paix. Assez ironique, n`est-ce pas ? Hypocrisie sera le second mot.

Ne tremblez pas, Ô races les plus purs parmi les races, nous arracherons vos paupières afin que vous puissiez profiter jusqu`au dernier moment de votre éminente lumière. Et avec les mots "arrogance" et "hypocrisie" gravés à la lame sur vos corps, nul doute que vous aurez de l`allure en rejoignant le royaume des Dieux. ', 'Luminas', 21514429, 83964, 104750, 21585681, 113171, 152992, '', 0, 'nbrvict', 150, 'or', 100000069, 'OR', 'Butin total', 1349747, '', 0, '', 0, '', '', 85, 38, 13, 122, 122.001532101, 126.282514854, 95.7183299531, 150.8139765, 77741, 168724, 3689906, 1566833, 327572, 563768, 172622, 368901, 119921, 230695, 9.22938122831, 13.9302058581, 927598, 1785391, 585, 646, 'Mahrynn', 'Nak`Amnar', 871, 6016, 'Mahrynn', 'Nak`Amnar', 0, '', '|Kotarn|'),
(5, 'guerre', 'termine', '', 'Les Disciples de l`Eternel', 'L`Union des Titans', '', '', 'Kalamaï a vibré, l`empire a résisté, puis il a cédé. Le règne de l`Eternel avait commencé.
Tout de même, les organisations administratives n`ont pas changées, le peuple continue sa labeur et les affaires économiques fluctuent.

Le manque de clarté règne, c`est évident.


L`Eternel n`était plus apparu depuis des mois, à tel point que même ses proches Disciples  se mettaient à douter.
Il faut aller au-delà des esprits, voir dans l`infinie absolue pour comprendre.
L`absence de guide, voir même de but, tout cela fait trembler les croyances. Même les plus inébranlables.

Azhaag décida donc de prendre le bouc d`argostole par les cornes et organisa une réunion des plus secrètes :

Il annonça:
"Chers Disciples, cette réunion extraordinaire est là pour discuter de l`avenir. Nous ne pouvons continuer les yeux aveugles, il faut faire quelque chose, bientôt le peuple ne nous considérera plus.
Il n`y a qu`a regarder certaines provinces, nombreux groupuscules se sont formés. Ils se permettent même de combattre sur les terres de l`Eternel."

A ces mots un son aiguë et un flash paralysèrent instantanément l`orateur. Ses yeux sont maintenant blanc, son corps dur comme de l`acier se mit littéralement en lévitation devant ses confrères.
Sa bouche s`ouvrit de façon mécanique et saccadé. Puis une lumière intense en sorti.

"Vous, mes chers Disciples, vous qui n`avez jamais douté, jamais flanché, comment pouvez vous douter ?"

Tout les Disciples se rendirent compte que c`était bien leur dieu qui parlait.

Il rajouta :

"Le chiffre 2 - L`Union des Titans "

Le corps d`Azhaag retomba inerte sur le sol, puis une transformation ignoble commença. Son corps se mit à trembler, à se contracter violament, au fur à mesure on vit ses bras et ses jambes rétrécirs.
Bientôt il ne mesurait plus qu`un mètre environ. Ses oreilles s`allongèrent, son visage se transforma. Il était devenu gnome.

Les Disciples se regardèrent entre eux sans un mot, puis il partirent chacun leur tour vers le champs de bataille, laissant leur compagnon gisant sur le sol, inerte.', 'Les Disciples de l`Eternel', 21521805, 70261, 107612, 21527821, 103378, 87124, 'nbrvict', 100, 'pertePuiss', 1000000, 'xp', 50000, 'AND', 'Butin total', 193795, '', 0, '', 0, '', '', 43, 3, 6, 6, 44.5910373184, 11.6828886005, 47.3990486199, 8.61511369716, 23656, 8948, 172452, 526680, 124714, 16978, 66935, 12611, 47829, 7539, 5.36182465394, 0, 408897, 113333, 284, 71, 'Aelindel', 'Burgrok Brise`Fer', 4517, 610, 'Aelindel', 'Aelindel', 0, '', '|Tirandilis|Burgrok Brise`Fer|Belerion|'),
(6, 'guerre', 'termine', '', 'Les Voyageurs de Kalamaï', 'Vae Victis', '', '', 'Lumy pensive, regardait par l`ouverture de son antre.

- Oyé! Oyé! hurla un homme de petite taille qui semblait fatigué par son périple jusqu`à elle.

Surprise, Lumy s`approcha du nouvel arrivant.

- Bonjour, un petit courrier pour Mlle Lumy en provenance d`Amphise!
- C`est moi, mais qui peut bien m`écrire de cette province?
- Un certain Thuella, regardez c`est marqué là.
Lumy regarda et pu voir éberluée que c`était bien en effet un paquet venant du voyageur en voyage.

L`Elfe prit le paquet et l`ouvrit.

Un gentil mot commençait ainsi.

"Bonjour les amis! Je traversais Amphise quand j`ai trouvé cette boite à musique, alors je me disais que ça vous ferait plaisir à Clémentine et à toi!"

- Lumy-chan, Lumy-chan, j`ai croisé un messager! Des nouvelles de quelqu`un?
- Thuella nous a envoyé une boite à musique.
- Ouvre, ouvre ouvre alors!

Lumy s`éxécuta et...

TSOIN TSOIN TSOIN!!!!!!!!!!!!!!!

Un diable jaillit de sa boite associé à un bruit de machin rouillé épouvantable qui envoya Lumy au plafond! Le coeur battant la chamade, elle prit la lettre pour lire la suite.

AHAHAHAHAH!!!!!
C`est trop drôle!!!!

- Il me connait trop bien se fustigea-t-elle, mais pourquoi j`ai pas lu la suite avant?

Puis, une douce mélodie jailli de la boite, c`était donc bien une boite à musique.

http://www.deezer.com/listen-610024

"Sinon, Sachez qu`il y a à Amphise un grand festival qui se tiendra dans suffisamment peu de temps pour que vous fassiez vos valises de suite. J`y assisterai peut être, ça dépend... ça dépend surtout de si mes affaires ne m`obligent pas à partir précipitamment en fait."

- Lumy-chan?
- Oui Clémentine?
- On va à Amphise?
- Hummm...
- Dis-oui-dis-oui-dis-oui!!!
- D`accord mais....
Clémentine était partie en courant.

- TOUSSSSSS AAAAA AMPHIIIIIIIIIISE!!!!!!!!!!!!!!!!!

Lumy sourit de voir sa petite protégée retrouver le sourire.

-Alors comme ça, tu veux que l`on te court après M. Licorne? Tous les prétextes sont bons pour propager la popularité de notre petite barde, hein?

Négligemment, elle regarda le bas du message.

"C`est un sacré bon plan non?"

Lumy grommela.
-Ce satané canasson me connait trop bien, si je le retrouve, je lui botte les fesses!', 'Les Voyageurs de Kalamaï', 21532591, 107165, 84681, 21568946, 227737, 109805, 'xp', 60000, 'pertePuiss', 700000, 'prison', 150000, 'AND', 'Butin total', 234741, '', 0, '', 0, '', '', 68, 20, 9, 99, 84.3883351534, 85.1763136285, 73.5778084789, 92.6820245999, 60211, 52939, 1412913, 940261, 290063, 362776, 226995, 193887, 129925, 154831, 1.92977586278, 4.30328151964, 673753, 1203509, 353, 986, 'Zulema', 'Razak', 4144, 2694, 'Zulema', 'Zulema', 0, '', '|Kergrist|'),
(7, 'guerre', 'termine', '', 'Les Disciples de l`Eternel', 'Les Marcheurs des Ombres', '', '', 'Les Disciples en pleine méditation journalière reçurent un message télépathique de l`Eternel.

"Le chiffre 7 - Les Marcheurs des ombres"

Ils se mirent tous en route vers Igoumen', 'Les Disciples de l`Eternel', 21561840, 118072, 99009, 21583854, 128825, 78881, 'xp', 65000, '', 0, '', 0, 'AND', 'Butin total', 293452, '', 0, '', 0, '', '', 76, 4, 9, 48, 81.6556167201, 46.7877080806, 86.7542415658, 43.0560094629, 65127, 58837, 1389946, 1013316, 536818, 179004, 208838, 119941, 112203, 72235, 1.22065159, 3.22080157376, 811212, 1025274, 1416, 622, 'Bolas', 'Meissner', 5389, 1409, 'Meissner', 'Bolas', 0, '', ''),
(8, 'guerre', 'termine', '', 'Pour un Empire Neuf', 'L`Union des Titans', '', '', '« Nous sommes les Nécrocrates, nous ne sommes pas ici par hasard ! Nous voyons la misère de Prévèze, nous voyons combien les habitants de cette province regrettent d’être livrés à la loi de la jungle, la loi du plus sauvage, la loi du moins civilisé, du plus traître, du plus fourbe ! Nous entendons les voix les plus faibles, pas les cris des barbares qui revendiquent l’anarchie, mais les murmures effrayés du petit peuple qui ne prie que pour un peu de stabilité, de sécurité et d’Ordre. Nous sentons la puanteur des cadavres qui jonchent les plaines guerrières, massacrés dans leur quête pathétique et égoïste de pouvoir.

Nous sommes ici pour remédier à cela, pour que chacun dans cette province maudite puisse goûter à une vie meilleure et toucher au bonheur.

Notre solutions est simple, un gouvernement Neuf ! Neuf comme Nécrocrate, Eternel et Unifié par la Faucheuse, notre réponse à tant de désordre et fatuité est le progrès, le progrès qui combat la quotidien moyenâgeux qui règne en Prévèze.

Pour cela, il nous faut commencer par détruire cette vaine armada qu’est l’Union des Titans, nostalgique d’un passé barbare. Réactionnaires, je les entends, du haut de leur taille si grande, nous conter comme ils regrettent le bon vieux temps où la violence et le chaos dominaient la vie de chacun et faisaient le malheur de tous.

Il nous faut les détruire.

Vive la Mort ! Nous nous battons pour un Empire Neuf !

Je profite aussi de ce discours pour rappeler à chacun que nous recrutons toujours ! »

[Discours de Myos, président éternel des Nécrocrates] 
', 'Aucun', 21576639, 94268, 104939, 21597034, 98876, 63684, 'nbrvict', 100, '', 0, '', 0, 'AND', 'Butin total', 0, '', 0, '', 0, '', '', 26, 12, 5, 16, 36.3631108403, 21.6370245998, 29.8969595116, 27.863280704, 30079, 51107, 919824, 674174, 168893, 103990, 68427, 44554, 49501, 27316, 0.811620467937, 8.4163398495, 440663, 520004, 175, 132, 'Arteas', 'Burgrok Brise`Fer', 238, 8136, 'Burgrok Brise`Fer', 'Burgrok Brise`Fer', 0, '', '|Galahay|Zacharias|'),
(9, 'guerre', 'termine', '', 'Luminas', 'Les Marcheurs des Ombres', '', '', 'C`est l`heure pour Igoumen d`être purifié, tremblez créatures de l`ombre! La justice céleste vous condamne pour vos actes et ce que vous êtes. Devenez des agents de la lumière ou périssez. Igoumen sera lavé dans le sang pour renaitre pure.  ', 'Les Marcheurs des Ombres', 21596198, 166770, 113158, 21607184, 122626, 141091, 'pertePuiss', 555555, 'xp', 44444, '', 0, 'AND', 'Butin total', 378767, '', 0, '', 0, '', '', 27, 11, 5, 47, 36.328257346, 52.1946878004, 30.7239330176, 57.7872812992, 27590, 44760, 872962, 552767, 163720, 171446, 88673, 132480, 64720, 92523, 0, 5.9426960743, 420629, 488824, 550, 342, 'Nak`Amnar', 'D&eacute;sacre', 395, 4277, 'D&eacute;sacre', 'D&eacute;sacre', 0, '|Achl&eacute;sis|', ''),
(10, 'guerre', 'termine', '', 'Les Disciples de l`Eternel', 'Vae Victis', '', '', 'Les Disciples en pleine méditation journalière reçurent un message télépathique de l`Eternel. 

"Le chiffre 4 - Vae Victis" 

Ils se mirent tous en route vers Amphise', 'Les Disciples de l`Eternel', 21625185, 209106, 151027, 21642272, 221139, 103117, 'nbrvict', 80, 'xp', 57000, '', 0, 'AND', 'Butin total', 240854, '', 0, '', 0, '', '', 55, 8, 2, 7, 60.83952482, 6.98835248937, 54.3119787297, 11.8012152007, 50093, 22270, 504375, 744517, 277611, 22328, 166046, 18962, 86586, 12397, 12.2437530122, 0, 1229313, 221318, 318, 1055, 'Aelindel', 'Magax', 1414, 4870, 'Aelindel', 'Magax', 0, '', '|Magax|'),
(11, 'guerre', 'termine', '', 'Les Voyageurs de Kalamaï', 'Les Marcheurs des Ombres', '', '', 'Journal de bord.

Amphise se rappellera encore longtemps de notre passage...
Nous n`avons pas réussi à mettre la main sur ce vieux canasson, mais nos chants - surtout ceux de notre petite barde - et facéties ont su mettre un sourire sur le visage des habitants de la province.

Les Voyageurs ont repris la route...
Vénopole nous a été indiqué comme étant un haut lieu de festivités. Nous nous devons de nous y rendre... Si les informations sont véridiques, il y aura peut être la famille impériale. Une occasion à ne pas rater de montrer aux Grands de ce monde, le talent de notre petite ainsi que notre savoir faire...

Seulement voilà, en guidant la troupe dans ma foret natale, celle qui sépare Amphise d`Igoumen, quelque chose d`inhabituel m`interpella... Nous fîmes un petit détour pour apercevoir qu`une partie de la forêt était malade. Les arbres autrefois grands, forts et verts ne ressemblaient maintenant qu`à des mains arthritiques dont les doigts tels des serres voulaient griffer le ciel.

Un maléfice? C`est ce que Clémentine aurait entendu lors de notre dernière escale. 
En voyant cet endroit, elle nous conta l`histoire d`une région aride non loin et elle nous demanda avec ferveur d`y aller afin d`amener la bonne humeur et quelques notes de musique...
', 'Les Marcheurs des Ombres', 21634332, 287906, 132376, 21646765, 293788, 132174, 'xp', 60000, '', 0, '', 0, 'AND', 'Butin total', 6101948, '', 0, '', 0, '', '', 24, 11, 5, 48, 33.37839735, 36.3949360049, 27.915320345, 40.4827796251, 47259, 65004, 1730584, 682842, 139616, 256765, 58108, 157275, 45395, 112818, 1.01168063534, 1.5955883691, 373311, 1221755, 486, 2565, 'Lyonis', 'Aldramech Sarabhan', 2736, 9503, 'Aldramech Sarabhan', 'Aldramech Sarabhan', 0, '|Ronino|', ''),
(12, 'guerre', 'termine', '', 'Luminas', 'Les Disciples de l`Eternel', '', '', '" Vils ignorants, adorateurs d`un faux dieu, vous les pantins de celui que vous nommez l`eternel avez répandu mort et désolation dans plusieurs provinces de Kalamaï.
Dans leur grande sagesse l`union des anciens et des celestriaux vous offre la rédemption, succombez humblement sous la lumière éclatante de nos armes purificatrices et retenez ceci : jamais vous ne souillerez par vos actes le sol d`Etimnon "', 'Les Disciples de l`Eternel', 21640990, 201539, 210446, 21660371, 105048, 206280, 'xp', 50000, 'ressources', 1500, '', 0, 'AND', 'Butin total', 868008, '', 0, '', 0, '', '', 26, 10, 7, 89, 27.4855432689, 98.2015498148, 24.9067460464, 100.695316867, 61168, 102503, 1653204, 1620233, 87411, 642157, 56027, 307460, 31368, 242165, 3.26086425521, 11.8972769679, 1041565, 2236664, 846, 1508, 'Phylas', 'Alcyban', 9107, 2922, 'Alcyban', 'Phylas', 0, '|Nak`Amnar|', ''),
(13, 'pna', 'termine', 'Les Marcheurs des Ombres', 'Les Voyageurs de Kalamaï', 'Les Marcheurs des Ombres', '', '', 'Nous avons compris, aucun rire et aucune note de musique ne doit être entendu en ce lieu... Nous nous retirons en vous laissant néanmoins ce petit document... 

"PNA"', '', 21650021, 263145, 157742, 21674233, 200348, 185499, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', ''),
(14, 'guerre', 'termine', '', 'Les Disciples de l`Eternel', 'Luminas', '', '', 'Nul ne peut bafouer de la sorte notre Dieu et prétendre ainsi nous mener à la dérision, notre foi est sans limite et nous défendrons la puissance de l`Eternel dans tout Kalamaï s`il le faut.

Que votre groupuscule serve d`exemple.

Pliez vous à l`Eternel.', 'Les Disciples de l`Eternel', 21660911, 223502, 103751, 21677092, 156886, 172079, 'xp', 50000, 'nbrvict', 50, 'or', 1000000, 'AND', 'Butin total', 1055671, '', 0, '', 0, '', '', 45, 3, 11, 32, 47.5339387974, 36.0092867318, 55.6230683117, 29.2875626308, 52739, 27106, 672809, 913384, 229418, 101807, 120984, 56134, 79008, 41892, 9.18570225878, 0, 1012758, 869057, 784, 1075, 'Sycomore', 'Tiram', 4819, 1220, 'Tiram', 'Sycomore', 0, '|Zar`Kull|Aelindel|', ''),
(15, 'guerre', 'termine', '', 'La Main Pourpre', 'Le cercle des Monarques', '', '', 'Le royal ennemie se taira le temps de cette bataille, l`ennuie nous a gagner, nous le chassons ainsi, et nous ne nous retiendrons pas de vous chasser vous aussi.', 'La Main Pourpre', 21663114, 91251, 116753, 21681012, 144641, 191078, 'pertePuiss', 1500000, 'nbrvict', 50, '', 0, 'AND', 'Butin total', 1749711, '', 0, '', 0, '', '', 56, 7, 9, 52, 54.7829990545, 60.2398562691, 56.9505808593, 58.7519359693, 85726, 57472, 1100705, 1691343, 258579, 429565, 162496, 160650, 109961, 108751, 4.86533161769, 13.3071345812, 1904305, 1498516, 861, 6545, 'Ashinseika', 'Alrik', 9442, 725, 'Alrik', 'Ashinseika', 0, '|Jaeregan|', ''),
(16, 'guerre', 'encours', '', 'La Main Pourpre', 'Pour un Empire Neuf', '', '', 'Dies iræ, dies illa,
Solvet sæclum in favílla

"Jour de colère, que ce jour là
Où le monde sera réduit en cendres,"

Les Ombres de la Main Pourpre vont venir vous cueillir.', '', 21690429, 125625, 100695, 0, 0, 0, 'nbrvict', 45, 'pertePuiss', 1500000, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 8, 0, 0, 2, 7.7127367411207, 1.8193704491905, 7.7127367411207, 1.8193704491905, 4727, 6814, 139506, 83669, 68409, 18672, 29683, 5607, 17096, 2885, 0.97918484640345, 1.8193704491905, 265786, 98506, 307, 28, 'Eragole', 'Myos', 916, 6783, 'Myos', 'Myos', 0, '', '|Essyr|'),
(17, 'guerre', 'encours', '', 'Le cercle des Monarques', 'Confrérie des Ombres', '', '', ' Après la guerre contre la Main pourpre, le royal Ennui rodait à nouveau en Vénopole et frappait les monarques de plein fouet. Ils passaient le plus clair de leur temps à boire copieusement ou à jouer à chat perché. Il était grand temps d`agir, de mettre fin aux agissements déprimants de l`Ennui. 
 Et pour ce faire, quoi de mieux qu`une bonne guerre ? ', '', 21693109, 141761, 217342, 0, 0, 0, 'xp', 75000, '', 0, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 2, 0, 2, 2, 1.9004625292286, 4.7969054054779, 3.7191511932267, 2.3600386853606, 12187, 3553, 68783, 283634, 12494, 7240, 8780, 4705, 3488, 4567, 0.78888896780306, 0, 125252, 36541, 26, 71, 'Klamhan', 'Harnas', 4885, 2841, 'Harnas', 'Klamhan', 0, '', '|Algar|'),
(18, 'pna', 'enattente', 'Confrérie des Ombres', 'Confrérie des Ombres', 'La Main Pourpre', '', '', 'Salut à vous nobles membres de la Main Pourpre ! Une guerre nous oppose actuellement au Cercle des Monarques auquel vous avez été opposé par le passé !
Un dicton des temps immémoriaux dit "Les ennemis de mes ennemis sont mes amis" .
Quoi de plus sage que de suivre ce dicton et de passer un pacte entre nos deux armadas ? Bien sûr la possibilité de voir ces petits nobles du Cercle des Monarques se faire dessus quand ils apprendront notre pacte est aussi séduisante ! Mais bon , le but de ce pacte serait essentiellement de mettre en difficulté le cercle des Monarques et de mettre un frein à leurs ardeurs ! Force et honneur aux armées de la Main Pourpre ! 


Artaxxas le Cruel vous salue bien messires !', '', 21693319, 188733, 129103, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', '');



CREATE TABLE `11apr_joueurs_bonus_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL DEFAULT '',
  `att` smallint(6) NOT NULL DEFAULT '0',
  `def` smallint(6) NOT NULL DEFAULT '0',
  `ini` smallint(6) NOT NULL DEFAULT '0',
  `cha` smallint(6) NOT NULL DEFAULT '0',
  `end` smallint(6) NOT NULL DEFAULT '0',
  `pui` smallint(6) NOT NULL DEFAULT '0',
  `chance` smallint(6) NOT NULL DEFAULT '0',
  `offensive` tinyint(4) NOT NULL DEFAULT '100',
  `defensive` tinyint(4) NOT NULL DEFAULT '100',
  `rapport` tinyint(4) NOT NULL DEFAULT '0',
  `politique` varchar(40) NOT NULL DEFAULT 'Autarcie',
  `province` varchar(40) NOT NULL DEFAULT 'Aucune',
  `statut` varchar(40) NOT NULL DEFAULT '',
  `guilde` varchar(70) NOT NULL DEFAULT 'Aucune',
  `chg_province` int(11) NOT NULL DEFAULT '0',
  `quete` int(11) NOT NULL DEFAULT '0',
  `victoire` int(11) NOT NULL DEFAULT '0',
  `défaite` int(11) NOT NULL DEFAULT '0',
  `gain_jour` int(11) NOT NULL DEFAULT '0',
  `guildeRP` int(11) NOT NULL DEFAULT '0',
  `rangguildeRP` int(11) NOT NULL DEFAULT '0',
  `rapportOff` int(11) NOT NULL DEFAULT '0',
  `incantemin` smallint(6) NOT NULL DEFAULT '-1',
  `incantemax` smallint(6) NOT NULL DEFAULT '-1',
  `incantetjrsoff` tinyint(4) NOT NULL DEFAULT '1',
  `incanterExplo` tinyint(1) NOT NULL DEFAULT '1',
  `objets_casses` smallint(5) unsigned NOT NULL DEFAULT '0',
  `satt` smallint(3) NOT NULL DEFAULT '0',
  `sdef` smallint(3) NOT NULL DEFAULT '0',
  `sini` smallint(3) NOT NULL DEFAULT '0',
  `spui` smallint(3) NOT NULL DEFAULT '0',
  `send` smallint(3) NOT NULL DEFAULT '0',
  `scha` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=985 DEFAULT CHARSET=latin1 AUTO_INCREMENT=985 ;

INSERT INTO `11apr_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2, 'Alumdil', 17, 2, 94, -20, 58, 86, 4, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21491787, 0, 87, 85, 262711, 0, 0, 1, 30, 30, 1, 1, 29, 0, 0, 19, 0, 0, 0),
(3, 'Vibralea', 0, 9, 45, 0, 71, 113, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 163, 22, 99041, 0, 0, 0, -1, -1, 1, 1, 12, 0, 0, 5, 7, 6, 2),
(4, 'L&eacute;nnih', 66, 70, 171, 12, 49, 0, 5, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21653149, 0, 131, 241, 761500, 0, 0, 1, 30, 30, 1, 0, 2501, 0, 0, 24, 0, 0, 0),
(5, 'Dijun', 8, 9, 79, 74, 24, 59, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21451213, 0, 177, 123, 459910, 0, 0, 1, -1, -1, 1, 0, 14, 1, 0, 8, 2, 0, 10),
(13, 'Aleksander', 127, 93, 60, 58, 42, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443972, 0, 179, 305, 217792, 0, 0, 0, 50, 50, 0, 0, 26, 18, 2, 4, 0, 1, 0),
(19, 'Gorak', 36, 36, 35, 160, 42, 42, 9, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21456808, 0, 156, 272, 549578, 0, 0, 0, 30, 30, 1, 1, 41, 0, 1, 25, 0, 0, 1),
(36, 'Cl&eacute;mentine', 51, 33, 91, 100, 33, 22, 1, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21444566, 0, 201, 322, 397159, 0, 0, 0, 50, 50, 1, 0, 29, 0, 0, 32, 0, 1, 0),
(43, 'Mund', 52, 109, 7, 61, 46, 0, 0, 50, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21445805, 0, 146, 162, 316254, 0, 0, 0, 60, 90, 1, 0, 25, 13, 1, 3, 0, 2, 0),
(45, 'Dro&iuml;n Pierre de Feu', 225, 130, 118, 58, 22, 0, 0, 80, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21447100, 0, 220, 329, 277691, 0, 0, 0, -1, -1, 1, 0, 2043, 0, 2, 23, 0, 0, 5),
(47, 'Agradok', 30, 22, 62, 125, 70, 356, 6, 100, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443814, 0, 99, 243, 320437, 0, 0, 0, 10, 20, 1, 1, 193, 0, 0, 8, 0, 0, 19),
(48, 'Harkazam', 18, 15, 0, 24, 43, 16, 0, 100, 100, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21446781, 0, 283, 415, 357381, 0, 0, 1, -1, -1, 1, 1, 4, 0, 0, 15, 0, 0, 0),
(53, 'Nak`Amnar', 20, 43, 78, 20, 7, 6, 1, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21477157, 0, 200, 199, 175369, 0, 0, 0, 20, 50, 0, 0, 9, 3, 4, 9, 0, 2, 4),
(54, 'Harlatsak', 67, 12, 64, 50, 10, 6, 3, 100, 20, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443984, 0, 146, 355, 392595, 0, 0, 0, 30, 40, 1, 0, 20, 19, 1, 10, 0, 0, 0),
(56, 'Razak', 0, 9, 2, -21, 4, 20, 2, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21443543, 0, 338, 333, 70639, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 19, 0, 0, 0),
(58, 'Tiram', 14, 23, 35, 3, 34, 137, 3, 10, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21443611, 0, 238, 344, 246975, 0, 0, 0, 40, 50, 1, 0, 35, 0, 0, 5, 18, 4, 0),
(60, 'Filsigur', 100, 122, 98, 7, 127, 41, 0, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21465204, 0, 330, 395, 509965, 0, 0, 0, -1, -1, 1, 1, 202, 0, 0, 1, 12, 0, 11),
(67, 'Cyrielle', 22, 24, 2, 12, 0, 14, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448252, 0, 46, 238, 193204, 0, 0, 0, 50, 50, 0, 1, 16, 0, 4, 0, 5, 0, 1),
(68, 'Caline', 38, 23, 1, 118, 151, 349, 5, 60, 20, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21548781, 0, 144, 241, 279227, 0, 0, 1, 30, 30, 1, 0, 51, 5, 0, 6, 2, 3, 15),
(69, 'Kylar des Ombres', 139, 112, 115, 91, 47, 6, 0, 90, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21449925, 0, 181, 305, 446852, 0, 0, 1, -1, -1, 1, 1, 111, 0, 0, 19, 0, 0, 0),
(70, 'Phylas', 173, 186, 22, 2, 103, 28, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21445208, 0, 259, 285, 332986, 0, 0, 0, 50, 50, 1, 0, 15, 10, 0, 24, 0, 0, 0),
(73, 'Philego Rah', 51, 26, 26, 28, 11, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21464125, 0, 178, 213, 139379, 0, 0, 0, -1, -1, 1, 1, 0, 9, 0, 8, 0, 0, 0),
(76, 'Katrickan', 113, 74, 10, 70, 66, 39, 2, 100, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21444256, 0, 182, 273, 270437, 0, 0, 0, 20, 30, 0, 0, 12, 9, 0, 7, 1, 3, 3),
(78, 'Athanase', 46, 99, 9, 74, 44, 18, 4, 70, 70, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21446662, 0, 190, 268, 298953, 0, 0, 0, -1, -1, 1, 1, 18, 0, 6, 1, 0, 0, 13),
(84, 'Sycomore', 30, 30, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21454147, 0, 308, 233, 192152, 0, 0, 0, 30, 30, 0, 0, 37, 13, 2, 8, 0, 3, 0),
(95, 'Irkos', -6, 9, 25, 3, 72, 21, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21454100, 0, 117, 134, 233409, 0, 0, 1, -1, -1, 1, 0, 17, 1, 3, 8, 0, 7, 1),
(96, 'Alcyban', 2, 2, 13, 28, 33, 212, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21465344, 0, 174, 83, 239664, 0, 0, 0, 30, 70, 0, 0, 10, 0, 0, 1, 20, 1, 0),
(98, 'Mayssi', 30, 0, 0, 50, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21454203, 0, 196, 146, 250005, 0, 0, 0, 40, 40, 0, 0, 3, 7, 10, 2, 0, 3, 0),
(101, 'Hulricht', 101, 11, 95, 50, 4, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21444031, 0, 205, 335, 293668, 0, 0, 1, 40, 40, 0, 0, 30, 26, 0, 0, 0, 0, 0),
(104, 'Lumy', 49, 32, 78, 50, 16, 0, 0, 100, 80, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21445298, 0, 127, 66, 159279, 0, 0, 0, 20, 20, 0, 0, 1, 8, 0, 2, 0, 0, 0),
(105, 'Agrias', 19, 34, 33, 4, 93, 84, 9, 80, 70, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21444319, 0, 244, 29, 141331, 0, 0, 1, -1, -1, 0, 0, 94, 0, 0, 0, 26, 0, 0),
(108, 'Ladanian', 41, 40, 26, 0, 0, 0, 1, 80, 30, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21447068, 0, 278, 335, 269395, 0, 0, 1, -1, -1, 0, 0, 0, 9, 3, 8, 0, 0, 0),
(111, 'Galahay', 33, 0, 50, 0, 30, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21519008, 0, 182, 245, 44349, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 12, 2, 0, 0),
(112, 'Vrock', 32, 26, 76, 0, 13, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21507658, 0, 417, 112, 94360, 0, 0, 0, -1, -1, 1, 1, 2, 4, 7, 4, 0, 0, 0),
(113, 'Schlemm', 145, 130, 80, 50, 20, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21444383, 0, 278, 292, 257178, 0, 0, 0, 10, 20, 1, 0, 12, 0, 0, 35, 0, 0, 0),
(115, 'Tylert', 28, 13, 0, 6, 0, 0, 0, 70, 20, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21446749, 0, 124, 177, 125048, 0, 0, 0, -1, -1, 1, 1, 5, 0, 0, 18, 0, 0, 0),
(118, 'Liamalika', 1, 0, 30, 0, 0, 2, 0, 100, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447206, 0, 132, 111, 149095, 0, 0, 1, -1, -1, 1, 1, 2, 2, 5, 0, 6, 1, 0),
(119, 'Fonua', 80, 70, 40, 0, 36, 14, 0, 80, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21460762, 0, 163, 245, 291662, 0, 0, 0, -1, -1, 0, 1, 16, 0, 7, 8, 0, 0, 0),
(120, 'Zanckten', 13, 43, 40, 77, 28, 27, 0, 100, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21479426, 0, 162, 126, 211141, 0, 0, 1, -1, -1, 1, 0, 2, 2, 6, 2, 2, 1, 6),
(121, 'Dartoil', 4, 4, 0, 1, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21445162, 0, 74, 40, 159146, 0, 0, 0, -1, -1, 1, 1, 4, 8, 0, 0, 0, 0, 0),
(124, 'Kayel', 25, 19, -8, 0, 19, 10, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21456454, 0, 181, 259, 288411, 0, 0, 0, -1, -1, 1, 1, 10, 19, 0, 0, 0, 0, 0),
(139, 'Nehkrid', 17, 0, 52, 0, 0, 36, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21510565, 0, 220, 215, 90242, 0, 0, 1, -1, -1, 1, 0, 0, 0, 1, 0, 14, 0, 0),
(140, 'Zronn', 11, 18, 97, 47, 119, 60, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 203, 146, 114779, 0, 0, 0, -1, -1, 1, 0, 29, 0, 0, 21, 1, 2, 0),
(145, 'Ordak', 206, 140, 55, 0, 90, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21454257, 0, 261, 329, 477319, 0, 0, 0, -1, -1, 1, 1, 45, 0, 0, 0, 0, 24, 0),
(146, 'Bartor', 2, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21475215, 0, 103, 75, 75905, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 12, 0, 0, 0),
(154, 'Ghassen', 14, 0, 0, 0, 0, 83, 0, 80, 60, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21460032, 0, 258, 87, 160149, 0, 0, 0, 30, 60, 0, 0, 5, 0, 0, 20, 0, 0, 0),
(180, 'Lydian', 30, 5, 3, -5, 0, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 141, 488, 290991, 0, 0, 0, -1, -1, 1, 1, 0, 1, 10, 0, 1, 0, 0),
(189, 'Braal', 104, 80, 15, 0, 22, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21471564, 0, 62, 115, 160077, 0, 0, 0, -1, -1, 1, 1, 4, 4, 1, 4, 0, 4, 0),
(191, 'Gwenlf', 14, 34, 43, 18, -5, 14, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21562350, 0, 91, 291, 506687, 0, 0, 0, -1, -1, 1, 1, 32, 1, 5, 9, 1, 0, 1),
(239, 'Demetron', 3, 0, 5, 0, 15, 21, 0, 80, 30, 1, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21460075, 0, 86, 137, 294079, 0, 0, 1, -1, -1, 1, 0, 20, 0, 0, 0, 16, 0, 0),
(240, 'Myos', 11, 26, 82, 63, 82, 46, 0, 100, 10, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21514917, 0, 100, 81, 249173, 0, 0, 1, -1, -1, 0, 0, 8, 0, 0, 0, 0, 0, 0),
(242, 'Agathocles', -4, 9, 33, 54, 62, 189, 2, 100, 30, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21461623, 0, 139, 73, 165912, 0, 0, 0, 20, 20, 0, 0, 28, 0, 0, 11, 1, 3, 3);INSERT INTO `11apr_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(250, 'Vezk', 96, 59, 30, 0, 3, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21464819, 0, 137, 249, 105640, 0, 0, 0, -1, -1, 1, 0, 0, 12, 7, 0, 0, 0, 0),
(253, 'Aldeas', -4, 8, 50, -7, 89, 166, 0, 80, 70, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21465596, 0, 194, 88, 118872, 0, 0, 0, 20, 50, 1, 0, 10, 0, 0, 4, 11, 4, 0),
(255, 'Kabidoui&iuml;e', 3, 19, 37, 0, 7, 0, 0, 100, 90, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21468190, 0, 83, 104, 317258, 0, 0, 0, -1, -1, 1, 1, 4, 2, 1, 8, 0, 1, 1),
(261, 'Azraeg', 25, 53, 0, 12, 38, 27, 0, 70, 20, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21606740, 0, 107, 83, 129959, 0, 0, 1, 30, 40, 0, 0, 9, 0, 0, 0, 1, 18, 0),
(271, 'Agranos', 121, 45, 82, 0, 26, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21468393, 0, 176, 153, 250124, 0, 0, 0, -1, -1, 1, 1, 0, 5, 6, 5, 0, 2, 1),
(275, 'Cyanea', 13, 74, 0, 0, 44, 0, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21490218, 0, 61, 22, 130910, 0, 0, 0, 10, 10, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(285, 'Nebkan', 89, 57, 104, 111, 69, 45, 0, 60, 30, 0, 'République', 'Thassopole', '', 'Aucune', 21472541, 0, 94, 227, 202799, 0, 0, 0, 60, 60, 1, 0, 264, 21, 1, 4, 0, 0, 4),
(288, 'Gorano', 7, 10, 0, 0, 5, 69, 2, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21501876, 0, 47, 83, 400626, 0, 0, 0, -1, -1, 1, 1, 18, 2, 0, 2, 5, 0, 0),
(291, 'Ashinseika', 31, 1, -4, -10, 43, 0, 0, 70, 40, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21471696, 0, 147, 101, 227632, 0, 0, 0, -1, -1, 1, 0, 3, 2, 0, 2, 19, 1, 0),
(322, 'Yodine', 36, 11, 3, 11, 24, 31, 3, 70, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21485879, 0, 63, 155, 316710, 0, 0, 0, 40, 40, 1, 1, 26, 2, 8, 1, 4, 0, 3),
(324, 'Enilia', 23, 2, 15, 0, 0, 0, 3, 80, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21481029, 0, 100, 90, 118948, 0, 0, 0, -1, -1, 0, 1, 0, 0, 0, 16, 0, 0, 0),
(341, 'Alrik', 31, 72, 43, 61, 12, 6, 6, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21485460, 0, 58, 159, 309307, 0, 0, 0, -1, -1, 1, 1, 39, 0, 15, 0, 0, 0, 0),
(343, 'Dinendal Alcarin', 50, 76, 0, 13, 8, 0, 2, 70, 20, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21612053, 0, 133, 201, 148142, 0, 0, 1, 20, 70, 0, 0, 30, 4, 2, 1, 2, 2, 2),
(357, 'Azhaag', 19, 1, 36, -30, 116, 119, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21491361, 0, 213, 10, 188475, 0, 0, 0, 40, 60, 1, 0, 137, 0, 0, 0, 5, 15, 0),
(363, 'Essyr', 3, 12, 30, 0, 0, 0, 0, 100, 50, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21691175, 0, 83, 117, 378345, 0, 0, 1, -1, -1, 1, 1, 18, 8, 1, 1, 1, 3, 0),
(382, 'Elm', 126, 75, 102, 143, 33, 6, 0, 90, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21501702, 0, 199, 118, 425132, 0, 0, 0, 10, 60, 1, 0, 49, 11, 3, 30, 0, 0, 0),
(386, 'Magax', 35, 5, -6, 50, 107, 147, 3, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21520047, 0, 318, 96, 184049, 0, 0, 0, 30, 50, 0, 0, 32, 0, 0, 0, 0, 25, 0),
(387, 'Lirielle', -4, 0, 18, 54, 94, 76, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21500457, 0, 123, 64, 180687, 0, 0, 1, 10, 10, 0, 0, 9, 0, 0, 0, 9, 8, 0),
(389, 'Fletiaz', 6, 2, 0, 3, 5, 48, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21508084, 0, 50, 95, 172283, 0, 0, 0, -1, -1, 1, 1, 18, 0, 0, 0, 5, 0, 3),
(415, 'Arkatris', 122, 37, 94, 0, 15, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21525072, 0, 106, 96, 364069, 0, 0, 0, -1, -1, 1, 1, 69, 1, 21, 0, 0, 1, 0),
(419, 'Boone', 74, 28, 59, 6, 16, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21620133, 0, 146, 149, 300094, 0, 0, 1, -1, -1, 1, 0, 2, 17, 0, 5, 0, 0, 0),
(431, 'Meissner', 16, 90, 10, 64, 37, 12, 31, 100, 40, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21510468, 0, 176, 283, 221501, 0, 0, 1, -1, -1, 1, 0, 233, 22, 0, 0, 0, 0, 0),
(445, 'Hyke', 14, 20, 0, 0, 7, 95, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21544753, 0, 77, 103, 96086, 0, 0, 0, -1, -1, 0, 0, 16, 0, 0, 0, 17, 0, 0),
(449, 'Laethil', 227, 108, 111, 101, 123, 12, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21515791, 0, 241, 199, 405491, 0, 0, 0, 10, 20, 1, 0, 14, 25, 0, 6, 0, 0, 0),
(458, 'Mahrynn', 24, 73, 55, 12, 42, 29, 0, 100, 80, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21517587, 0, 130, 150, 264308, 0, 0, 0, -1, -1, 1, 0, 5, 9, 7, 0, 0, 1, 0),
(463, 'B&eacute;liaros', 69, 41, 83, 0, 22, 13, 4, 100, 10, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21594901, 0, 91, 115, 447406, 0, 0, 1, -1, -1, 0, 0, 12, 8, 0, 7, 0, 0, 4),
(468, 'Bolas', 145, 152, -5, 50, 79, 0, 0, 100, 40, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21520550, 0, 180, 123, 201283, 0, 0, 1, 40, 40, 1, 0, 85, 24, 0, 0, 0, 0, 0),
(474, 'Mal`hac', 20, 24, 26, 12, 0, 0, 1, 80, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21537542, 0, 63, 101, 239031, 0, 0, 0, 50, 50, 1, 1, 12, 1, 0, 9, 0, 0, 0),
(478, 'Tirandilis', 13, 20, 97, -10, 98, 220, 0, 100, 10, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21523134, 0, 145, 69, 162674, 0, 0, 1, 30, 30, 1, 0, 5, 0, 0, 18, 0, 0, 0),
(485, 'Eleanora', 0, 28, -2, 54, 13, 50, 2, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21524785, 0, 84, 73, 259699, 0, 0, 1, -1, -1, 1, 1, 2, 3, 0, 1, 12, 0, 0),
(486, 'Zaseo', 91, 92, 66, 50, 12, 6, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21530422, 0, 164, 77, 283404, 0, 0, 0, -1, -1, 1, 1, 34, 21, 0, 0, 0, 0, 0),
(493, 'Belerion', 41, 18, 22, 18, 35, 60, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 77, 136, 122942, 0, 0, 0, -1, -1, 1, 1, 12, 22, 0, 4, 0, 0, 0),
(504, 'Aldramech Sarabhan', 19, 15, 55, 43, 105, 95, 3, 100, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21530521, 0, 286, 104, 249050, 0, 0, 0, 20, 20, 0, 0, 87, 0, 0, 31, 0, 0, 0),
(512, 'Damarya', 26, 21, 2, 3, 3, 16, 2, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21596601, 0, 71, 90, 556357, 0, 0, 1, -1, -1, 0, 0, 25, 1, 1, 7, 6, 0, 0),
(513, 'Arth&eacute;on', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21560267, 0, 29, 119, 9840, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 2, 0, 2, 0),
(516, 'Nicci', 2, 15, 1, 12, 33, 8, 0, 100, 90, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21678464, 0, 88, 70, 259907, 0, 0, 0, -1, 30, 1, 0, 6, 0, 1, 13, 0, 1, 0),
(526, 'Celithrand', 34, 0, 30, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 45, 69, 117375, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 0, 3, 0),
(527, 'Darcia', 14, 0, 43, 3, 66, 69, 7, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21555178, 0, 183, 83, 358900, 0, 0, 1, 20, 50, 1, 1, 109, 1, 1, 3, 2, 5, 6),
(561, 'Kadavre', 14, 2, 0, 3, 3, 22, 0, 100, 10, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21618041, 0, 66, 69, 160094, 0, 0, 1, -1, -1, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(564, 'Malikarn', 71, 82, 30, 0, 65, 53, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21578004, 0, 151, 72, 504740, 0, 0, 0, 30, 70, 0, 1, 4, 5, 5, 6, 0, 1, 0),
(565, 'Dalan', 139, 190, 122, 50, 40, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21550625, 0, 200, 126, 159549, 0, 0, 0, 20, 40, 1, 0, 2757, 9, 0, 15, 0, 0, 0),
(571, 'Bulrug', 63, 32, 16, 0, 28, 0, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 108, 87, 109466, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 16, 0, 0, 0),
(579, 'Castelluli', 12, 21, 10, 0, 3, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 76, 28, 66062, 0, 0, 1, -1, -1, 1, 1, 1, 0, 0, 11, 0, 0, 0),
(589, 'Han Bal', 89, 78, 13, 20, 28, 0, 0, 70, 60, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21560791, 0, 101, 55, 235495, 0, 0, 0, -1, -1, 1, 0, 48, 0, 0, 3, 0, 9, 0),
(594, 'Klamhan', 17, 0, 22, 0, 0, 6, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21677485, 0, 103, 47, 437195, 0, 0, 0, -1, -1, 1, 1, 4, 0, 5, 0, 3, 7, 0),
(596, 'Jacques Skellinou', 154, 117, 181, 58, 43, 0, 0, 90, 80, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21561737, 0, 263, 116, 222922, 0, 0, 1, 20, 30, 0, 0, 2132, 14, 0, 7, 0, 0, 8),
(601, 'Gael', 2, 4, 0, 12, 0, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21572149, 0, 50, 70, 194859, 0, 0, 1, -1, -1, 1, 1, 1, 8, 0, 0, 4, 0, 0),
(611, 'Marsys', 30, 14, 14, 0, 25, 0, 1, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21671807, 0, 39, 72, 434909, 0, 0, 1, -1, -1, 1, 1, 12, 3, 4, 4, 0, 0, 0),
(614, 'Bibble', 3, 0, 0, 12, 30, 0, 0, 80, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21646895, 0, 70, 79, 128910, 0, 0, 1, 30, 30, 0, 1, 0, 0, 1, 0, 9, 4, 0),
(623, 'Sartibule', 92, 69, 30, 0, 24, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21570665, 0, 85, 124, 164860, 0, 0, 0, -1, -1, 1, 1, 5, 0, 16, 4, 0, 0, 0),
(628, 'Oryanna', 62, 35, 33, 51, 26, 6, 7, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21575777, 0, 82, 18, 153771, 0, 0, 0, -1, -1, 1, 0, 4, 4, 0, 5, 0, 3, 0);INSERT INTO `11apr_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(637, 'Thistos', 17, 2, 14, 0, 0, 0, 1, 80, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21579371, 0, 39, 49, 124503, 0, 0, 0, -1, -1, 1, 1, 7, 6, 4, 0, 1, 0, 0),
(638, 'Harnas', 21, 10, 11, 26, 30, 81, 2, 100, 90, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21653202, 0, 75, 28, 244597, 0, 0, 0, 10, 60, 0, 0, 57, 4, 0, 7, 6, 1, 0),
(643, 'Ordinn', 24, 47, 0, 12, 0, 34, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21589582, 0, 83, 49, 311688, 0, 0, 0, 60, 120, 1, 0, 11, 4, 5, 1, 8, 0, 1),
(644, 'Khiran', 37, 21, 14, 0, 4, 0, 1, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21575352, 0, 76, 100, 457430, 0, 0, 1, -1, -1, 1, 1, 12, 9, 4, 0, 0, 0, 0),
(651, 'Hawkys', 2, 10, 0, 0, 0, 23, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21619715, 0, 60, 66, 316354, 0, 0, 0, -1, -1, 1, 1, 3, 1, 0, 1, 4, 2, 0),
(654, 'Chitcat', 0, 4, 0, 3, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21587182, 0, 19, 37, 279755, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 0, 1, 1, 0),
(655, 'Sansst', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21638383, 0, 0, 11, 9351, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(661, 'Gharnohk', 6, 18, 33, 3, 14, 76, 2, 70, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 92, 84, 251823, 0, 0, 1, 40, 40, 0, 0, 6, 3, 0, 1, 8, 0, 0),
(666, 'Yzeute', 21, 10, 0, 0, 17, 16, 0, 80, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21582721, 0, 69, 95, 442905, 0, 0, 0, -1, -1, 1, 1, 1, 3, 2, 1, 1, 3, 1),
(669, 'Ashut', 18, 2, 14, 0, 4, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21587899, 0, 46, 44, 116408, 0, 0, 0, -1, -1, 1, 1, 1, 0, 4, 0, 0, 5, 0),
(674, 'Onacona', 4, 13, 19, 6, 27, 4, 0, 60, 30, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21586310, 0, 206, 24, 142733, 0, 0, 0, 30, 30, 1, 0, 38, 7, 0, 0, 13, 0, 0),
(685, 'Zacharias', 75, 112, 0, 15, 81, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21589483, 0, 64, 46, 338157, 0, 0, 0, -1, -1, 1, 1, 13, 4, 6, 0, 0, 5, 0),
(700, 'Warenya Fahle', 6, 10, 3, 0, 16, 25, 2, 70, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21591208, 0, 25, 69, 558765, 0, 0, 0, -1, -1, 1, 1, 27, 2, 3, 0, 3, 4, 1),
(703, 'Azarath', 32, 3, 0, 50, 0, 0, 0, 70, 30, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21591206, 0, 39, 32, 150191, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 2, 0, 1, 5),
(704, 'Risnak', 1, 0, 0, 0, 0, 2, 0, 80, 80, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21605564, 0, 57, 39, 31632, 0, 0, 0, -1, -1, 1, 1, 0, 9, 0, 0, 0, 1, 0),
(706, 'Hakra', 50, 69, 0, 52, 0, 0, 4, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 48, 56, 243833, 0, 0, 0, -1, -1, 1, 1, 5, 11, 0, 0, 0, 0, 0),
(707, 'Kograh', 14, 32, 8, 151, 45, 60, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21595170, 0, 51, 23, 255274, 0, 0, 1, 40, 40, 0, 0, 235, 0, 0, 0, 12, 0, 0),
(715, 'Krugerr', 2, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 9, 44, 13450, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 1, 0),
(720, 'Burgrok Brise`Fer', 100, 109, 123, 59, 81, 0, 0, 80, 20, 0, 'République', 'Thassopole', '', 'Aucune', 21598050, 0, 77, 39, 393267, 0, 0, 0, -1, -1, 0, 0, 24, 4, 1, 15, 0, 2, 0),
(731, 'Zoltan', 30, 73, 0, 0, 0, 0, 2, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21657917, 0, 86, 64, 203056, 0, 0, 0, -1, -1, 1, 1, 5, 2, 2, 5, 2, 0, 1),
(732, 'Gruck', 14, 31, 2, 0, 4, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21600474, 0, 48, 36, 344752, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 11, 0, 0, 0),
(733, 'Hijen', 56, 54, 72, 0, 16, 0, 1, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 83, 68, 166553, 0, 0, 0, 30, 40, 0, 1, 50, 0, 2, 12, 0, 0, 1),
(734, 'Jaeregan', 143, 29, 143, 16, 3, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21673210, 0, 195, 45, 183920, 0, 0, 0, 10, 30, 0, 0, 5, 0, 0, 27, 0, 0, 0),
(760, 'Orga', 0, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21610996, 0, 34, 44, 211174, 0, 0, 0, -1, -1, 1, 1, 0, 7, 0, 1, 0, 0, 0),
(761, 'Yarl Baudig', 20, 16, 4, 62, 0, 25, 2, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21655186, 0, 56, 106, 599522, 0, 0, 1, 50, 90, 1, 1, 19, 1, 0, 4, 1, 3, 1),
(767, 'Kylordion', 118, 58, 92, 99, 10, 0, 3, 100, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21623926, 0, 131, 72, 520019, 0, 0, 0, 30, 40, 0, 1, 5, 4, 0, 13, 0, 0, 0),
(768, 'Tharoze', 2, 1, 0, 0, 0, 0, 0, 100, 100, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21613911, 0, 53, 35, 214259, 0, 0, 1, -1, -1, 1, 1, 2, 2, 2, 0, 2, 1, 0),
(771, 'Umassi', 41, 20, 65, 106, 46, 46, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21653003, 0, 125, 20, 187648, 0, 0, 0, 20, 20, 0, 0, 13, 0, 0, 0, 0, 17, 0),
(772, 'Infilz', 5, 8, 0, 12, 3, 10, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 67, 64, 233583, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 4, 0, 3),
(774, 'Treleg', 191, 225, -12, 0, 113, 0, 0, 80, 60, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21613491, 0, 156, 22, 217518, 0, 0, 1, 20, 40, 0, 0, 24, 10, 6, 4, 0, 4, 0),
(775, 'Il&eacute;anor', 19, 19, 29, 25, 7, 0, 2, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 92, 59, 284368, 0, 0, 1, -1, -1, 1, 0, 4, 0, 0, 11, 0, 0, 0),
(777, 'Invoj', -4, 10, 0, -7, 33, 58, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21645750, 0, 96, 27, 154300, 0, 0, 1, 40, 80, 0, 0, 10, 0, 0, 0, 10, 0, 0),
(782, 'D&eacute;sacre', 80, 35, 70, 0, 0, 0, 2, 90, 70, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616732, 0, 139, 26, 178305, 0, 0, 1, 10, 10, 0, 0, 53, 5, 0, 11, 0, 0, 0),
(784, 'Jade', -8, 0, 25, 29, 32, 34, 4, 80, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616851, 0, 95, 15, 145404, 0, 0, 0, 40, 40, 0, 0, 18, 0, 0, 0, 13, 0, 0),
(792, 'Dhorlyn', 56, 38, 32, 6, 0, 0, 0, 80, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21620049, 0, 61, 41, 171818, 0, 0, 1, -1, -1, 1, 0, 17, 0, 0, 8, 0, 0, 0),
(795, 'Halambare', 49, 51, 71, 1, 41, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21651549, 0, 96, 29, 256163, 0, 0, 0, 50, 50, 1, 1, 5, 0, 1, 0, 2, 0, 12),
(797, 'Qatrisk', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21665833, 0, 0, 0, 22433, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(801, 'Belenora', 20, 9, -10, 0, 0, 0, 0, 50, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21628004, 0, 60, 38, 448369, 0, 0, 0, 70, 70, 0, 1, 0, 9, 0, 0, 2, 0, 3),
(805, 'Prolor', 56, 54, 34, 0, 19, 0, 0, 90, 90, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21648907, 0, 139, 46, 143188, 0, 0, 0, -1, 70, 0, 0, 9, 8, 0, 1, 0, 1, 2),
(808, 'Mercolothion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21630144, 0, 10, 26, 395402, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 1, 0, 0),
(821, 'Solemyr', 29, 12, 14, 50, 0, 0, 1, 50, 40, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21688927, 0, 62, 25, 338166, 0, 0, 0, -1, -1, 1, 0, 7, 0, 0, 4, 0, 2, 2),
(822, 'Oedarn', 36, 45, 12, 0, 36, 0, 0, 60, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21629987, 0, 31, 20, 304888, 0, 0, 0, 30, 60, 1, 0, 5, 9, 1, 0, 0, 0, 0),
(829, 'Tiposa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 30, 22, 165532, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 6),
(846, 'Yeldierick', 82, 63, 0, 0, 35, 6, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21654374, 0, 109, 34, 377770, 0, 0, 0, -1, -1, 1, 0, 11, 7, 3, 0, 0, 2, 0),
(848, 'Eragole', 39, 95, 0, 3, 34, 14, 0, 80, 40, 1, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21652883, 0, 117, 59, 318871, 0, 0, 1, -1, -1, 1, 1, 28, 0, 1, 2, 2, 6, 0),
(859, 'Olinos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 22986, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(864, 'Storia', 43, 29, 69, 3, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21647469, 0, 25, 17, 446148, 0, 0, 0, -1, -1, 1, 1, 41, 0, 0, 7, 0, 0, 1),
(865, 'Xeitheus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23546, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(874, 'Tankarllia', 5, 4, 0, 50, 0, 0, 0, 90, 80, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21650217, 0, 10, 19, 192796, 0, 0, 0, -1, -1, 1, 1, 3, 0, 2, 0, 0, 3, 0),
(876, 'Enariael', 1, 0, 0, 0, 0, 2, 0, 70, 10, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21653433, 0, 12, 33, 95844, 0, 0, 0, 60, 60, 0, 1, 0, 0, 1, 1, 2, 0, 0),
(877, 'Lhito', 42, 50, 44, 0, 6, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21683486, 0, 94, 18, 279293, 0, 0, 1, -1, -1, 0, 1, 2, 0, 0, 7, 0, 0, 0);INSERT INTO `11apr_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(878, 'Eladriel', 3, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21682672, 0, 11, 35, 50804, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(879, 'Grumpf', 3, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21683395, 0, 1, 3, 223303, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4),
(880, 'Jijona', 108, 30, 61, 67, 13, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21655479, 0, 89, 30, 264897, 0, 0, 0, 20, 20, 0, 0, 91, 0, 0, 0, 0, 0, 16),
(881, 'Aurack', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(882, 'Hezaram', 4, 11, 2, 1, 6, 0, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21673717, 0, 32, 17, 330074, 0, 0, 0, -1, -1, 1, 1, 0, 5, 0, 0, 0, 1, 1),
(883, 'Kassrotul', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(884, 'Paaroxsizme', 3, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 38, 17, 182113, 0, 0, 0, -1, -1, 1, 1, 4, 3, 1, 0, 0, 0, 0),
(885, 'Tahalus', 16, 10, 0, 12, 0, 14, 0, 40, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21660001, 0, 51, 27, 384412, 0, 0, 1, -1, -1, 0, 0, 8, 2, 0, 4, 0, 1, 0),
(886, 'Gromlir', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21655904, 0, 0, 0, 23580, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(887, 'Ilarneek', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21656102, 0, 55, 19, 343493, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 2, 2, 1, 3),
(888, 'Kannarthychono', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(889, 'Hjlodhr', 4, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21668920, 0, 40, 19, 253148, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 2, 2, 1),
(890, 'Drakaniac', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(891, 'Mathor', 4, 2, 0, 0, 0, 0, 0, 100, 30, 1, 'République', 'Thassopole', '', 'Aucune', 21655916, 0, 47, 27, 283771, 0, 0, 1, -1, -1, 1, 1, 2, 3, 2, 0, 0, 0, 0),
(892, 'Fumnei', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(893, 'Thosemos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(894, 'Calenvagor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(895, 'Gradhar', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21675703, 0, 32, 22, 117274, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(896, 'Raqual', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(897, 'Brolleur', 0, 0, 11, 29, 29, 38, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 55, 25, 339799, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 3, 3, 3, 2),
(901, 'Z`arf D`Ibn B&auml;shici', 2, 1, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21661259, 0, 54, 25, 280976, 0, 0, 0, -1, -1, 1, 1, 0, 4, 1, 2, 0, 0, 0),
(903, 'Zar`Kull', 16, 29, 0, 0, 4, 0, 0, 80, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21661713, 0, 73, 7, 171173, 0, 0, 1, 30, 60, 0, 0, 0, 8, 0, 0, 0, 0, 0),
(904, 'Griffith', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21673228, 0, 23, 5, 61462, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 3, 0, 0),
(905, 'E&auml;nlys', 4, 0, 10, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21683271, 0, 42, 22, 276067, 0, 0, 1, -1, -1, 1, 1, 2, 1, 1, 0, 4, 2, 0),
(906, 'Jaruleek', 3, 30, 0, 50, 0, 0, 0, 50, 50, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21662994, 0, 37, 28, 195029, 0, 0, 1, -1, -1, 1, 1, 0, 1, 3, 1, 0, 1, 1),
(907, 'Mourideri', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(908, 'Pikel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(909, 'Zasoum', 1, 2, 2, 0, 0, 2, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21665238, 0, 55, 14, 206850, 0, 0, 0, 70, 90, 1, 1, 0, 0, 5, 0, 0, 0, 0),
(910, 'Asnashar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(911, 'Nathanaou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(913, 'Minalta', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(914, 'Masme', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 12, 17, 45336, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 2, 1, 0),
(915, 'Karann', 49, 52, 24, 4, 0, 0, 3, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21662582, 0, 72, 23, 514742, 0, 0, 0, -1, -1, 1, 0, 11, 0, 3, 0, 0, 5, 0),
(919, 'Morphox', 4, 2, 2, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21689040, 0, 61, 20, 490705, 0, 0, 0, -1, -1, 1, 1, 0, 0, 5, 1, 0, 0, 0),
(923, 'Artatiss', 5, 14, 1, 0, 0, 0, 0, 90, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21667887, 0, 25, 8, 290892, 0, 0, 1, -1, -1, 1, 1, 2, 2, 0, 2, 0, 0, 0),
(925, 'Abranxas', 1, 0, 0, 0, 0, 2, 0, 70, 70, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21674528, 0, 25, 28, 88894, 0, 0, 1, -1, -1, 1, 1, 0, 1, 2, 0, 0, 0, 0),
(926, 'Zozofiit', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 9, 2, 54790, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(927, 'Florfindel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(928, 'Kioude', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23580, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(929, 'Gwilhelm', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 25616, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(930, 'Turbopixel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(931, 'Michaeleagle', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(932, 'Willovs', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(933, 'Min', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21667163, 0, 0, 0, 29059, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(936, 'Pakito`s', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21674447, 0, 43, 10, 270454, 0, 0, 1, -1, -1, 1, 1, 1, 2, 2, 0, 2, 2, 0),
(938, 'Anadyomene', 3, 2, 0, 12, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21670398, 0, 12, 6, 244995, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 0, 0, 4, 0),
(944, 'Morgjin', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21677339, 0, 12, 2, 137905, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 2, 1, 0, 0),
(945, 'Katum', 3, 4, 0, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21673315, 0, 25, 13, 159951, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(947, 'Gaoule', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21674672, 0, 2, 13, 34652, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 1),
(950, 'Aelindel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21674898, 0, 6, 6, 59151, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 3, 0),
(951, 'Kaya', 31, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21675682, 0, 22, 11, 93453, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0);INSERT INTO `11apr_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(952, 'Yglora', 1, 0, 30, 0, 0, 2, 0, 100, 30, 0, 'République', 'Thassopole', '', 'Aucune', 21677491, 0, 20, 3, 131369, 0, 0, 0, 30, 40, 0, 0, 0, 3, 0, 1, 0, 0, 0),
(953, 'Vaith', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21678218, 0, 42, 3, 187589, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 5, 0, 0, 0),
(954, 'Elfredo', 1, 0, 0, 0, 0, 2, 0, 60, 100, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21679175, 0, 16, 7, 102249, 0, 0, 1, -1, -1, 1, 1, 0, 0, 2, 0, 2, 0, 0),
(955, 'Atalwatu', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 30, 10, 79034, 0, 0, 0, -1, -1, 1, 1, 1, 1, 0, 0, 2, 0, 0),
(956, 'Coris', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(957, 'Piotr Bailson', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(958, 'Gariel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(960, 'Awang', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(962, 'Deinoforo', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 5, 0, 37964, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(963, 'Zackr', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(964, 'Morvox', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 25, 21, 99665, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 0, 0, 0),
(965, 'Kmzero', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(966, 'Aysa', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 38, 16, 116509, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 3, 0, 0),
(967, 'Noatheo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(968, 'Staryke', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21679955, 0, 0, 0, 23960, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(969, 'Artaxxas', 3, 12, 0, 0, 0, 0, 0, 60, 60, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21679703, 0, 36, 7, 208186, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 2, 0, 0),
(970, 'D&uuml;mogen', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(971, 'Jeremy', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(972, 'Teperek', 2, 2, 1, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21682425, 0, 13, 12, 108498, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(973, 'Jinugra', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21680314, 0, 27, 10, 112211, 0, 0, 0, -1, -1, 1, 1, 0, 0, 3, 0, 0, 0, 0),
(974, 'Viannick', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(975, 'Medinter', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(976, 'Yhrdrauth', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21684639, 0, 5, 1, 40039, 0, 0, 0, 50, 50, 0, 0, 0, 1, 0, 0, 0, 0, 0),
(978, 'Lyonis', 3, 0, 30, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21686016, 0, 20, 1, 104079, 0, 0, 0, 40, 50, 0, 0, 0, 0, 0, 4, 0, 0, 0),
(980, 'Theobald', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21687007, 0, 2, 0, 72777, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 3, 0, 0, 0),
(981, 'Narmacilis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 5, 0, 61734, 0, 0, 1, 20, 40, 0, 0, 0, 0, 2, 0, 0, 0, 0),
(982, 'Belisama', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(983, 'Lyou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 24951, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(984, 'Aries', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 35445, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0);



CREATE TABLE `11apr_joueurs_heros_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL DEFAULT '',
  `race` varchar(25) NOT NULL DEFAULT '',
  `classe` varchar(25) NOT NULL DEFAULT '',
  `dieu` varchar(25) NOT NULL DEFAULT '',
  `titre` varchar(25) NOT NULL DEFAULT '',
  `royaume` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL DEFAULT '0',
  `nb` tinyint(4) NOT NULL DEFAULT '0',
  `mentor` mediumint(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=985 DEFAULT CHARSET=latin1 AUTO_INCREMENT=985 ;

INSERT INTO `11apr_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(2, 'Alumdil', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Morte-Vie', 226595, 0, 0),
(3, 'Vibralea', 'Vampire', 'Psioniste', 'Pensée', 'Comtesse', 'de Limitra', 148659, 0, 0),
(4, 'L&eacute;nnih', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'de Drizaste', 204764, 0, 0),
(5, 'Dijun', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Vigrid', 238210, 0, 0),
(13, 'Aleksander', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Dreize', 125299, 0, 0),
(19, 'Gorak', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de la Lumi&egrave;re', 169413, 0, 0),
(36, 'Cl&eacute;mentine', 'Homme', 'Barde', 'Chemins', 'Dame', 'de Nortika', 165128, 0, 0),
(43, 'Mund', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Lair&aelig;', 138532, 0, 0),
(45, 'Dro&iuml;n Pierre de Feu', 'Nain', 'Marchand', 'Chemins', 'Roi', 'des Mines de la Toura', 143040, 0, 0),
(47, 'Agradok', 'Infernal', 'Démonologiste', 'Maladie', 'Despote', 'de Kodarga', 160931, 0, 0),
(48, 'Harkazam', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'd`Aquinas', 144185, 0, 0),
(53, 'Nak`Amnar', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'd`Eliandir', 101616, 0, 0),
(54, 'Harlatsak', 'Infernal', 'Assassin', 'Mensonge', 'Despote', 'd`Adavodar', 199222, 0, 0),
(56, 'Razak', 'Elfe', 'Prêtre', 'Pensée', 'Conseiller', 'de Keitha', 73286, 0, 0),
(58, 'Tiram', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Horem', 252454, 0, 0),
(60, 'Filsigur', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'd`Hogarsilgar', 159891, 0, 0),
(67, 'Cyrielle', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Cyriella', 74613, 0, 0),
(68, 'Caline', 'Elfe', 'Magicien', 'Pensée', 'Conseillère', 'de la Paix de L`Ame', 337062, 0, 0),
(69, 'Kylar des Ombres', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Caenaria', 134465, 0, 0),
(70, 'Phylas', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Darian', 167771, 0, 0),
(73, 'Philego Rah', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Pihanit', 78460, 0, 0),
(76, 'Katrickan', 'Célestial', 'Inquisiteur', 'Loi', 'Maîtresse', 'des Sept Duch&eacute;s', 120879, 0, 0),
(78, 'Athanase', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'd`Edal&eacute;e', 136928, 0, 0),
(84, 'Sycomore', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'du Bosquet Mill&eacute;naire', 112105, 0, 0),
(95, 'Irkos', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Kalferas', 272491, 0, 0),
(96, 'Alcyban', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Branderuz', 186868, 0, 0),
(98, 'Mayssi', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de M&eacute;none', 110123, 0, 0),
(101, 'Hulricht', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Solesmes', 154099, 0, 0),
(104, 'Lumy', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'd`Anwaman&euml;', 58111, 0, 0),
(105, 'Agrias', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Lormyr', 131056, 0, 0),
(108, 'Ladanian', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Tomlison', 136107, 0, 0),
(111, 'Galahay', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'd`Igounem', 62878, 0, 0),
(112, 'Vrock', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Mynrhyn', 73653, 0, 0),
(113, 'Schlemm', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Lacrymie', 312820, 0, 0),
(115, 'Tylert', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Bazanne', 140639, 0, 0),
(118, 'Liamalika', 'Elfe Noir', 'Nécromancien', 'Mort', 'Matriarche', 'de Silmarols', 101417, 0, 0),
(119, 'Fonua', 'Nain', 'Prêtre', 'Chemins', 'Roi', 'des Grottes d`Armandie', 143165, 0, 0),
(120, 'Zanckten', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Espit', 105010, 0, 0),
(121, 'Dartoil', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Rotergan', 82982, 0, 0),
(124, 'Kayel', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Kartil&eacute;', 142938, 0, 0),
(139, 'Nehkrid', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Demacia', 71982, 0, 0),
(140, 'Zronn', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de l`Azur&eacute;e', 161238, 0, 0),
(145, 'Ordak', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de la Corne Dor&eacute;e', 170768, 0, 0),
(146, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 103957, 0, 0),
(154, 'Ghassen', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Zarzis', 146891, 0, 0),
(180, 'Lydian', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Reveria', 104497, 0, 0),
(189, 'Braal', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Sarial', 66913, 0, 0),
(191, 'Gwenlf', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Rolirin', 140230, 0, 0),
(239, 'Demetron', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Lande Pourpre', 104457, 0, 0),
(240, 'Myos', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'de Mugis', 234839, 0, 0),
(242, 'Agathocles', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Korok', 171709, 0, 0);INSERT INTO `11apr_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(250, 'Vezk', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'des Terres Ensanglant&eacute;', 77909, 0, 0),
(253, 'Aldeas', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Karabak', 141078, 0, 0),
(255, 'Kabidoui&iuml;e', 'Gnome', 'Voleur', 'Chemins', 'Gouverneur', 'de Schnafon', 138682, 0, 0),
(261, 'Azraeg', 'Célestial', 'Prêtre', 'Pensée', 'Maître', 'de Siomas', 83702, 0, 0),
(271, 'Agranos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Soledor', 104704, 0, 0),
(275, 'Cyanea', 'Célestial', 'Inquisiteur', 'Loi', 'Maîtresse', 'd`Ocral', 83828, 0, 0),
(285, 'Nebkan', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Khenat', 125415, 0, 0),
(288, 'Gorano', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hadesisn', 138719, 0, 0),
(291, 'Ashinseika', 'Elfe Noir', 'Psioniste', 'Pensée', 'Matriarche', 'de Land`savos', 195139, 0, 0),
(322, 'Yodine', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'd`Havoine', 128249, 0, 0),
(324, 'Enilia', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Grana', 72118, 0, 0),
(341, 'Alrik', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Lanvaldear', 95583, 0, 0),
(343, 'Dinendal Alcarin', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'de Breizhar', 111183, 0, 0),
(357, 'Azhaag', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Anirie', 145694, 0, 0),
(363, 'Essyr', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Asphina', 128836, 0, 0),
(382, 'Elm', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Tergolite', 206053, 0, 0),
(386, 'Magax', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Misn&eacute;il', 211956, 0, 0),
(387, 'Lirielle', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'de Golgotha', 214593, 0, 0),
(389, 'Fletiaz', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Loeses', 69807, 0, 0),
(415, 'Arkatris', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Minotaurya', 217158, 0, 0),
(419, 'Boone', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Novac', 124834, 0, 0),
(431, 'Meissner', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'd`Ensisheim', 113377, 0, 0),
(445, 'Hyke', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ost`Sitan', 69528, 0, 0),
(449, 'Laethil', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'd`Elhaylin', 216983, 0, 0),
(458, 'Mahrynn', 'Elfe Noir', 'Sorcier', 'Pensée', 'Matriarche', 'de Dam Goolkarh', 111489, 0, 0),
(463, 'B&eacute;liaros', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'd`Ensfarir', 175723, 0, 0),
(468, 'Bolas', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Voraeren', 145384, 0, 0),
(474, 'Mal`hac', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'd`Irianeth', 75069, 0, 0),
(478, 'Tirandilis', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Surrus', 226392, 0, 0),
(485, 'Eleanora', 'Fée', 'Druide', 'Nature', 'Intendante', 'd`Itoshi', 445749, 0, 0),
(486, 'Zaseo', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'd`Alabasta', 196943, 0, 0),
(493, 'Belerion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'd`Orliae', 267117, 0, 0),
(504, 'Aldramech Sarabhan', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Phl&eacute;g&eacute;thonen', 240932, 0, 0),
(512, 'Damarya', 'Vampire', 'Enchanteur', 'Chance', 'Comtesse', 'de Nuit', 218366, 0, 0),
(513, 'Arth&eacute;on', 'Nain', 'Marchand', 'Chance', 'Roi', 'd`Olydris', 16716, 0, 0),
(516, 'Nicci', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'du Palais des Proph&egrave;si', 106973, 0, 0),
(526, 'Celithrand', 'Elfe', 'Guerrier', 'Guerre', 'Conseiller', 'de Krenaste', 134159, 0, 0),
(527, 'Darcia', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Cosquer', 158383, 0, 0),
(561, 'Kadavre', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Chalys&eacute;es', 105189, 0, 0),
(564, 'Malikarn', 'Célestial', 'Prêtre', 'Chemins', 'Maîtresse', 'des Neiges Eternelles', 204423, 0, 0),
(565, 'Dalan', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Rabistiane', 220719, 0, 0),
(571, 'Bulrug', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'd`Elsweyr', 73688, 0, 0),
(579, 'Castelluli', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Bicocca', 48422, 0, 0),
(589, 'Han Bal', 'Nain', 'Guerrier', 'Force', 'Roi', 'des Mines Sans-Fond', 77753, 0, 0),
(594, 'Klamhan', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'de Palisetirces', 159628, 0, 0),
(596, 'Jacques Skellinou', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'd`Holluwee', 126990, 0, 0),
(601, 'Gael', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Corona', 77367, 0, 0),
(611, 'Marsys', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Libory', 117463, 0, 0),
(614, 'Bibble', 'Elfe', 'Guerrier', 'Légendes', 'Conseillère', 'de Dolfin', 151885, 0, 0),
(623, 'Sartibule', 'Géant', 'Barbare', 'Force', 'Dame', 'de Danlong', 92686, 0, 0),
(628, 'Oryanna', 'Elfe Noir', 'Assassin', 'Mensonge', 'Matriarche', 'de Quintefeuille  ', 151740, 0, 0);INSERT INTO `11apr_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(637, 'Thistos', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Aflan', 57221, 0, 0),
(638, 'Harnas', 'Vampire', 'Enchanteur', 'Chance', 'Comte', 'd`Okocim', 103524, 0, 0),
(643, 'Ordinn', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Coril', 162983, 0, 0),
(644, 'Khiran', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Zeidanys', 165597, 0, 0),
(651, 'Hawkys', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'D`Ithonys', 98871, 0, 0),
(654, 'Chitcat', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'D`Alma', 74392, 0, 0),
(655, 'Sansst', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Nresda', 4971, 0, 0),
(661, 'Gharnohk', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'des Grottes', 139304, 0, 0),
(666, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Pitiponk-les-fl&ocirc;ts', 135029, 0, 0),
(669, 'Ashut', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Surtsey', 50618, 0, 0),
(674, 'Onacona', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'des Prairies du Clair de Lune', 193232, 0, 0),
(685, 'Zacharias', 'Nain', 'Guerrier', 'Loi', 'Roi', 'de Sylvanie', 156190, 0, 0),
(700, 'Warenya Fahle', 'Elfe Noir', 'Sorcier', 'Magie', 'Matriarche', 'D`Alosera', 140953, 0, 0),
(703, 'Azarath', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Jalkaru', 142996, 0, 0),
(704, 'Risnak', 'Fée', 'Illusioniste', 'Chance', 'Intendant', 'de Bretilh', 85951, 0, 0),
(706, 'Hakra', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'd`Aorphen', 89470, 0, 0),
(707, 'Kograh', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'de Dystopia', 79474, 0, 0),
(715, 'Krugerr', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Villissyus ', 18180, 0, 0),
(720, 'Burgrok Brise`Fer', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Machkran', 135559, 0, 0),
(731, 'Zoltan', 'Orque', 'Barbare', 'Force', 'Chef', 'd`Irridinium', 91704, 0, 0),
(732, 'Gruck', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Langristal', 168861, 0, 0),
(733, 'Hijen', 'Nain', 'Marchand', 'Chemins', 'Roi', 'de Ch&eacute;reng', 103820, 0, 0),
(734, 'Jaeregan', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'de Pr&eacute;&eacute;minence', 179144, 0, 0),
(760, 'Orga', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Galern', 71118, 0, 0),
(761, 'Yarl Baudig', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Rosakarfa', 169463, 0, 0),
(767, 'Kylordion', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'D`Abasnath', 165182, 0, 0),
(768, 'Tharoze', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Terres Chaotiques', 75302, 0, 0),
(771, 'Umassi', 'Orque', 'Shaman', 'Guerre', 'Cheftaine', 'de Seangwen', 153437, 0, 0),
(772, 'Infilz', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Tareksis', 76088, 0, 0),
(774, 'Treleg', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Droriath', 140753, 0, 0),
(775, 'Il&eacute;anor', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Mirque Bois', 109608, 0, 0),
(777, 'Invoj', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'd`El&eacute;dion', 68769, 0, 0),
(782, 'D&eacute;sacre', 'Elfe Noir', 'Assassin', 'Chaos', 'Matriarche', 'de Sar Haffil', 130041, 0, 0),
(784, 'Jade', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'du Cercle d`Adrien', 96601, 0, 0),
(792, 'Dhorlyn', 'Homme', 'Barbare', 'Guerre', 'Dame', 'D`Andasgaard', 53759, 0, 0),
(795, 'Halambare', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Lambardie', 171737, 0, 0),
(797, 'Qatrisk', 'Ancien', 'Druide', 'Nature', '', 'D`Apeulsdasebp&eacute;unyimpire', 3319, 0, 0),
(801, 'Belenora', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Sal`thair', 153927, 0, 0),
(805, 'Prolor', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de Demancia', 141513, 0, 0),
(808, 'Mercolothion', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Les Grande Colines', 90378, 0, 0),
(821, 'Solemyr', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Hazanavicius', 164048, 0, 0),
(822, 'Oedarn', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Saa-Vha Shi Heez', 188596, 0, 0),
(829, 'Tiposa', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Luor', 121374, 0, 0),
(846, 'Yeldierick', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Fantaisis', 163209, 0, 0),
(848, 'Eragole', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'D`Hedrias', 138196, 0, 0),
(859, 'Olinos', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Terre Rouge', 3134, 0, 0),
(864, 'Storia', 'Homme', 'Barbare', 'Guerre', 'Dame', 'de Mineria', 100971, 0, 0),
(865, 'Xeitheus', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Ruffian', 3134, 0, 0),
(874, 'Tankarllia', 'Homme', 'Paladin', 'Honneur', 'Dame', 'de Ros&euml;ia', 49026, 0, 0),
(876, 'Enariael', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Vulcane', 49722, 0, 0),
(877, 'Lhito', 'Sahuagin', 'Guerrier', 'Guerre', 'Baron', 'de Partna', 69237, 0, 0);INSERT INTO `11apr_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(878, 'Eladriel', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'D`Ambre Bleue', 17429, 0, 0),
(879, 'Grumpf', 'Gnome', 'Voleur', 'Mensonge', 'Gouverneur', 'de Lokeria', 52714, 0, 0),
(880, 'Jijona', 'Homme', 'Paladin', 'Honneur', 'Dame', 'de Jijo', 300257, 0, 0),
(881, 'Aurack', 'Elfe', 'Guerrier', 'Guerre', 'Conseiller', 'de Roihanel', 0, 0, 0),
(882, 'Hezaram', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Nalvir', 82554, 0, 0),
(883, 'Kassrotul', 'Orque', 'Shaman', 'Force', 'Chef', 'D`Uzban', 0, 0, 0),
(884, 'Paaroxsizme', 'Infernal', 'Guerrier', 'Honneur', 'Despote', 'D`Old Coveshire', 82937, 0, 0),
(885, 'Tahalus', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de Selstriam', 127259, 0, 0),
(886, 'Gromlir', 'Nain', 'Guerrier', 'Force', 'Roi', 'de Les Haches Sanglantes', 3134, 0, 0),
(887, 'Ilarneek', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Pouette', 103407, 0, 0),
(888, 'Kannarthychono', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Coinycorn', 0, 0, 0),
(889, 'Hjlodhr', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Khalindra', 74969, 0, 0),
(890, 'Drakaniac', 'Elfe', 'Magicien', 'Pensée', 'Conseiller', 'D`Elfaudin', 0, 0, 0),
(891, 'Mathor', 'Nain', 'Guerrier', 'Loi', 'Reine', 'de V&eacute;r&eacute;fa', 98770, 0, 0),
(892, 'Fumnei', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Seretano', 3134, 0, 0),
(893, 'Thosemos', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Landfal', 0, 0, 0),
(894, 'Calenvagor', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Skaish&aacute;sh', 0, 0, 0),
(895, 'Gradhar', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'de La Vall&eacute;e D`Eniram', 36153, 0, 0),
(896, 'Raqual', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de &Eacute;meraudle', 0, 0, 0),
(897, 'Brolleur', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Domalto', 171938, 0, 0),
(901, 'Z`arf D`Ibn B&auml;shici', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Illyrion', 88800, 0, 0),
(903, 'Zar`Kull', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de Gor`Mall', 83212, 0, 0),
(904, 'Griffith', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Carwraping', 28324, 0, 0),
(905, 'E&auml;nlys', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'D`Afian', 119912, 0, 0),
(906, 'Jaruleek', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Mordanie', 77541, 0, 0),
(907, 'Mourideri', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Penn Ar Bed', 3134, 0, 0),
(908, 'Pikel', 'Gnome', 'Illusioniste', 'Chance', 'Gouverneur', 'de Pokrit', 0, 0, 0),
(909, 'Zasoum', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Zinapuim', 82817, 0, 0),
(910, 'Asnashar', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Noremos', 0, 0, 0),
(911, 'Nathanaou', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'D`Alagesan', 0, 0, 0),
(913, 'Minalta', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Castillet', 0, 0, 0),
(914, 'Masme', 'Orque', 'Barbare', 'Guerre', 'Chef', 'D`Hurlevent', 18992, 0, 0),
(915, 'Karann', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Kelistos', 134935, 0, 0),
(919, 'Morphox', 'Elfe Noir', 'Voleur', 'Mensonge', 'Patriarche', 'D`Ile de la Sentinelle', 144425, 0, 0),
(923, 'Artatiss', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'D`Aarklash', 79115, 0, 0),
(925, 'Abranxas', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Symeria', 27657, 0, 0),
(926, 'Zozofiit', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Hyrkul', 16358, 0, 0),
(927, 'Florfindel', 'Elfe', 'Sorcier', 'Magie', '', 'de L`empire de D`Hara', 0, 0, 0),
(928, 'Kioude', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Rio', 3134, 0, 0),
(929, 'Gwilhelm', 'Elfe', 'Prêtre', 'Compassion', 'Conseiller', 'de Beldragus', 3200, 0, 0),
(930, 'Turbopixel', 'Homme', 'Guerrier', 'Loi', 'Seigneur', 'de L`oubli', 0, 0, 0),
(931, 'Michaeleagle', 'Elfe', 'Rôdeur', 'Nature', 'Conseiller', 'de Contr&eacute;e Desaiglen', 0, 0, 0),
(932, 'Willovs', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Willarth', 0, 0, 0),
(933, 'Min', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de L`est', 3381, 0, 0),
(936, 'Pakito`s', 'Homme', 'Guerrier', 'Loi', 'Seigneur', 'de Wanders', 95070, 0, 0),
(938, 'Anadyomene', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Eme Est', 102251, 0, 0),
(944, 'Morgjin', 'Sahuagin', 'Shaman', 'Guerre', 'Baronne', 'de Kwenjkka', 44114, 0, 0),
(945, 'Katum', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Maliandre', 72720, 0, 0),
(947, 'Gaoule', 'Homme', 'Archer', 'Chance', 'Seigneur', 'de la Oule', 8025, 0, 0),
(950, 'Aelindel', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'd`Imankar', 13197, 0, 0),
(951, 'Kaya', 'Fée', 'Druide', 'Nature', 'Intendante', 'de Draphuster', 30840, 0, 0);INSERT INTO `11apr_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(952, 'Yglora', 'Homme', 'Nécromancien', 'Ténèbres', 'Dame', 'de Nuboro', 68787, 0, 0),
(953, 'Vaith', 'Homme', 'Guerrier', 'Légendes', 'Seigneur', 'de Pourpres-Ab&icirc;mes', 92085, 0, 0),
(954, 'Elfredo', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'D`Arcanis', 76636, 0, 0),
(955, 'Atalwatu', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Tkashi', 36011, 0, 0),
(956, 'Coris', 'Homme', 'Guerrier', 'Force', 'Seigneur', 'de Mirsaille', 0, 0, 0),
(957, 'Piotr Bailson', 'Géant', 'Barbare', 'Force', 'Seigneur', 'D`Upsgran', 0, 0, 0),
(958, 'Gariel', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Roan', 0, 0, 0),
(960, 'Awang', 'Elfe', 'Archer', 'Chemins', '', 'de Berliste', 0, 0, 0),
(962, 'Deinoforo', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Fosse du Festin Sanglant', 11882, 0, 0),
(963, 'Zackr', 'Homme', 'Guerrier', 'Force', 'Seigneur', 'de Terre D`inotia', 3144, 0, 0),
(964, 'Morvox', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Royaume de la Paix', 31455, 0, 0),
(965, 'Kmzero', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Baidroum', 0, 0, 0),
(966, 'Aysa', 'Fée', 'Magicien', 'Pensée', 'Intendante', 'D`Aldenia', 41949, 0, 0),
(967, 'Noatheo', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'D`Exen', 0, 0, 0),
(968, 'Staryke', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'de D&eacute;sespoir', 3260, 0, 0),
(969, 'Artaxxas', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'D`Aramoor', 98556, 0, 0),
(970, 'D&uuml;mogen', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Zagar&ouml;s', 0, 0, 0),
(971, 'Jeremy', 'Célestial', 'Prêtre', 'Chemins', 'Maître', 'D`Harry', 0, 0, 0),
(972, 'Teperek', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'D`Hydross', 29160, 0, 0),
(973, 'Jinugra', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Pokkeirn', 30144, 0, 0),
(974, 'Viannick', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Vick', 0, 0, 0),
(975, 'Medinter', 'Célestial', 'Magicien', 'Magie', 'Maîtresse', 'de Midwinter de Tenebriis', 3134, 0, 0),
(976, 'Yhrdrauth', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Drhyssgruth', 4440, 0, 0),
(978, 'Lyonis', 'Homme', 'Barde', 'Chance', 'Seigneur', 'du Palais d`Ivoire', 74878, 0, 0),
(980, 'Theobald', 'Homme', 'Chevalier', 'Force', 'Seigneur', 'de la Plaine Artificielle', 25197, 0, 0),
(981, 'Narmacilis', 'Vampire', 'Enchanteur', 'Chance', 'Comte', 'de Karlotur', 25288, 0, 0),
(982, 'Belisama', 'Célestial', 'Enchanteur', 'Pensée', 'Maîtresse', 'de Divicis', 0, 0, 0),
(983, 'Lyou', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'de Kouia', 3237, 0, 0),
(984, 'Aries', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Lotharingie', 6612, 0, 0);



CREATE TABLE `11apr_joueurs_stats_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL DEFAULT '',
  `niveau` tinyint(4) NOT NULL DEFAULT '0',
  `puissance` int(11) NOT NULL DEFAULT '0',
  `xp` int(11) NOT NULL DEFAULT '0',
  `but` int(11) NOT NULL DEFAULT '0',
  `att` float(5,2) NOT NULL DEFAULT '0.00',
  `def` float(5,2) NOT NULL DEFAULT '0.00',
  `ini` float(5,2) NOT NULL DEFAULT '0.00',
  `cha` float(5,2) NOT NULL DEFAULT '0.00',
  `end` float(5,2) NOT NULL DEFAULT '0.00',
  `pui` float(5,2) NOT NULL DEFAULT '0.00',
  `mana` int(11) NOT NULL DEFAULT '0',
  `victoire` tinyint(4) NOT NULL DEFAULT '0',
  `defaite` tinyint(4) NOT NULL DEFAULT '0',
  `argent` int(11) unsigned NOT NULL DEFAULT '0',
  `soufre` mediumint(9) NOT NULL DEFAULT '0',
  `mercure` mediumint(9) NOT NULL DEFAULT '0',
  `cristal` mediumint(9) NOT NULL DEFAULT '0',
  `gemme` mediumint(9) NOT NULL DEFAULT '0',
  `heure` tinyint(4) NOT NULL DEFAULT '0',
  `indice_militaire` int(11) NOT NULL DEFAULT '19314424',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=985 DEFAULT CHARSET=latin1 AUTO_INCREMENT=985 ;

INSERT INTO `11apr_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2, 'Alumdil', 19, 226595, 188085, 190000, 33.50, 29.00, 148.00, 21.50, 127.00, 200.00, 331, 0, 0, 24507, 182, 186, 638, 193, 0, 21694900),
(3, 'Vibralea', 20, 148659, 202385, 210000, 44.00, 48.00, 82.00, 70.00, 135.00, 194.00, 40859, 0, 0, 964884, 774, 264, 160, 329, 0, 21690288),
(4, 'L&eacute;nnih', 24, 204764, 297223, 300000, 103.00, 107.00, 280.00, 144.00, 98.00, 25.00, 50000, 0, 0, 4850271, 8690, 7538, 8686, 8450, 0, 21683256),
(5, 'Dijun', 21, 238210, 220856, 231000, 33.50, 44.00, 116.00, 130.50, 98.00, 179.00, 10, 0, 0, 1476611, 154, 498, 22, 657, 0, 21691181),
(13, 'Aleksander', 25, 125299, 324326, 325000, 210.00, 132.00, 201.00, 117.00, 77.00, 43.00, 25100, 0, 0, 161974, 28226, 56, 75, 715, 0, 21690424),
(19, 'Gorak', 27, 169413, 376875, 378000, 61.50, 76.00, 100.00, 214.83, 135.00, 192.00, 50000, 0, 0, 4424031, 1874, 1538, 928, 1356, 0, 21687322),
(36, 'Cl&eacute;mentine', 33, 165128, 543782, 561000, 129.00, 111.00, 204.00, 180.00, 112.00, 100.00, 40000, 0, 0, 1427517, 1599, 902, 1309, 749, 0, 21689805),
(43, 'Mund', 19, 138532, 172466, 190000, 123.00, 165.00, 37.00, 130.00, 100.00, 46.00, 22879, 0, 0, 810517, 380, 275, 209, 545, 0, 21691612),
(45, 'Dro&iuml;n Pierre de Feu', 30, 143040, 439059, 465000, 269.00, 178.00, 243.00, 222.00, 83.00, 23.00, 39672, 0, 0, 14860668, 7089, 7242, 12827, 6969, 0, 21687403),
(47, 'Agradok', 31, 160931, 479622, 496000, 89.50, 47.50, 128.50, 199.83, 159.50, 514.50, 31068, 0, 0, 2230054, 2052, 2960, 2880, 3302, 0, 21693193),
(48, 'Harkazam', 15, 144185, 105127, 120000, 50.50, 53.00, 38.00, 67.50, 94.50, 86.50, 37617, 0, 0, 118, 293, 235, 171, 463, 0, 21692844),
(53, 'Nak`Amnar', 22, 101616, 233822, 253000, 88.00, 99.00, 186.00, 90.00, 43.00, 33.00, 24042, 0, 0, 79605, 370, 204, 99, 239, 0, 21690266),
(54, 'Harlatsak', 30, 199222, 454169, 465000, 159.00, 53.00, 238.00, 122.00, 49.00, 53.00, 30000, 0, 0, 1518693, 543, 563, 481, 4848, 0, 21730844),
(56, 'Razak', 19, 73286, 182840, 190000, 50.00, 55.00, 48.50, 62.50, 32.00, 110.00, 50000, 0, 0, 2043180, 215, 68, 96, 37, 0, 21664320),
(58, 'Tiram', 27, 252454, 371506, 378000, 37.50, 44.50, 75.00, 131.00, 105.00, 283.00, 17118, 0, 0, 295299, 1261, 631, 547, 552, 0, 21693111),
(60, 'Filsigur', 24, 159891, 289130, 300000, 209.00, 231.00, 160.00, 42.00, 164.00, 78.00, 30000, 0, 0, 2102852, 1095, 685, 567, 1575, 0, 21691937),
(67, 'Cyrielle', 10, 74613, 50225, 55000, 34.00, 51.00, 34.00, 57.00, 21.00, 82.00, 30000, 0, 0, 10148596, 793, 1216, 1118, 1162, 0, 21680372),
(68, 'Caline', 31, 337062, 487771, 496000, 70.50, 62.00, 56.00, 193.83, 256.00, 520.00, 31138, 0, 0, 244993, 1148, 1480, 1441, 30787, 0, 21692878),
(69, 'Kylar des Ombres', 19, 134465, 183010, 190000, 190.00, 144.00, 241.00, 141.00, 80.00, 38.00, 50000, 0, 0, 2101118, 1321, 1460, 1064, 1100, 0, 21691152),
(70, 'Phylas', 34, 167771, 561806, 595000, 283.00, 287.00, 71.00, 53.00, 215.00, 122.00, 34812, 0, 0, 264329, 753, 530, 349, 1637, 0, 21731664),
(73, 'Philego Rah', 18, 78460, 154052, 171000, 174.00, 80.00, 83.00, 42.00, 49.00, 22.00, 40000, 0, 0, 1964492, 52, 71, 82, 97, 0, 21688129),
(76, 'Katrickan', 23, 120879, 272736, 276000, 195.50, 147.50, 36.50, 111.00, 149.00, 106.50, 50000, 0, 0, 515391, 915, 1060, 559, 793, 0, 21688881),
(78, 'Athanase', 20, 136928, 202955, 210000, 106.00, 162.00, 38.00, 155.00, 98.00, 66.00, 50000, 0, 0, 765588, 425, 291, 623, 648, 0, 21688311),
(84, 'Sycomore', 26, 112105, 349832, 351000, 120.00, 92.00, 132.00, 67.00, 38.00, 24.00, 40000, 0, 0, 964400, 520, 341, 702, 385, 0, 21690171),
(95, 'Irkos', 20, 272491, 203634, 210000, 69.00, 33.00, 75.00, 33.00, 120.00, 129.00, 39739, 0, 0, 215713, 1338, 836, 916, 1276, 0, 21690276),
(96, 'Alcyban', 22, 186868, 242670, 253000, 25.00, 32.00, 53.00, 74.00, 110.00, 357.00, 45048, 0, 0, 2264294, 817, 389, 893, 745, 0, 21689121),
(98, 'Mayssi', 22, 110123, 244449, 253000, 104.00, 62.00, 110.00, 109.00, 34.00, 22.00, 40000, 0, 0, 1509839, 1295, 494, 489, 515, 0, 21689904),
(101, 'Hulricht', 26, 154099, 325788, 351000, 232.00, 77.00, 212.00, 88.00, 42.00, 25.00, 302, 0, 0, 605159, 1624, 990, 780, 1002, 0, 21690293),
(104, 'Lumy', 10, 58111, 53099, 55000, 104.00, 60.00, 140.00, 75.00, 35.00, 16.00, 30000, 0, 0, 7066961, 448, 42539, 129, 150, 0, 21658835),
(105, 'Agrias', 26, 131056, 329789, 351000, 73.00, 55.00, 85.00, 51.00, 173.00, 243.00, 47842, 0, 0, 536867, 549, 425, 614, 252, 0, 21688867),
(108, 'Ladanian', 20, 136107, 199693, 210000, 112.00, 91.00, 134.00, 55.00, 29.00, 21.00, 43950, 0, 0, 574691, 365, 408, 583, 266, 0, 21693385),
(111, 'Galahay', 18, 62878, 159658, 171000, 109.00, 48.00, 149.00, 32.00, 60.00, 23.00, 40000, 0, 0, 1219556, 63, 1, 213, 6, 0, 21687576),
(112, 'Vrock', 15, 73653, 108632, 120000, 100.50, 75.00, 155.00, 29.00, 40.00, 19.50, 672, 0, 0, 368207, 216, 314, 315, 288, 0, 21693340),
(113, 'Schlemm', 35, 312820, 628943, 630000, 338.00, 231.50, 200.00, 74.50, 84.50, 26.50, 13903, 0, 0, 869517, 972, 1072, 835, 1003, 0, 21692061),
(115, 'Tylert', 18, 140639, 159300, 171000, 116.00, 103.00, 64.00, 22.00, 34.00, 17.00, 11879, 0, 0, 907659, 154, 96, 64, 122, 0, 21692903),
(118, 'Liamalika', 14, 101417, 103992, 105000, 61.00, 21.00, 64.00, 22.00, 38.00, 84.00, 29087, 0, 0, 2, 384, 198, 121, 15, 0, 21687374),
(119, 'Fonua', 15, 143165, 116455, 120000, 124.00, 123.00, 67.50, 46.50, 67.00, 82.00, 300, 0, 0, 162972, 479, 629, 1037, 1096, 0, 21692641),
(120, 'Zanckten', 19, 105010, 189665, 190000, 34.50, 66.50, 69.00, 179.00, 80.00, 125.00, 8831, 0, 0, 604100, 1019, 1663, 324, 351, 0, 21688883),
(121, 'Dartoil', 8, 82982, 35986, 36000, 45.00, 22.00, 53.00, 25.00, 22.00, 21.00, 26171, 0, 0, 74064, 525, 398, 276, 341, 0, 21692800),
(124, 'Kayel', 19, 142938, 182668, 190000, 153.00, 80.50, 43.00, 21.50, 59.50, 31.50, 50000, 0, 0, 629807, 109, 180, 274, 14, 0, 21691225),
(139, 'Nehkrid', 15, 71982, 116753, 120000, 55.50, 16.50, 89.50, 30.50, 52.50, 130.50, 40000, 0, 0, 362666, 2, 225, 1, 1, 0, 21685119),
(140, 'Zronn', 24, 161238, 297075, 300000, 30.00, 50.00, 158.00, 96.00, 205.00, 200.00, 529, 0, 0, 112965, 688, 115, 612, 243, 0, 21693440),
(145, 'Ordak', 24, 170768, 292834, 300000, 342.00, 213.00, 115.00, 24.00, 162.00, 24.00, 30000, 0, 0, 971634, 1385, 1538, 1730, 1065, 0, 21692888),
(146, 'Bartor', 13, 103957, 84963, 91000, 33.50, 21.00, 97.00, 54.00, 15.50, 24.00, 30000, 0, 0, 576878, 143, 143, 50, 0, 0, 21683320),
(154, 'Ghassen', 20, 146891, 192936, 210000, 38.00, 34.00, 48.00, 45.00, 71.00, 196.00, 9454, 0, 0, 286031, 837, 1254, 957, 1543, 0, 21692871),
(180, 'Lydian', 12, 104497, 76995, 78000, 92.00, 65.00, 33.00, 33.00, 24.00, 19.00, 40000, 0, 0, 569269, 651, 347, 260, 393, 0, 21687037),
(189, 'Braal', 13, 66913, 82515, 91000, 180.00, 150.00, 54.00, 14.50, 52.00, 14.50, 30000, 0, 0, 1409858, 27, 1, 72, 25, 0, 21691728),
(191, 'Gwenlf', 17, 140230, 152701, 153000, 122.00, 121.00, 90.50, 65.00, 39.00, 35.50, 42189, 0, 0, 24737, 2471, 2217, 1956, 2433, 0, 21690480),
(239, 'Demetron', 16, 104457, 135905, 136000, 21.00, 16.00, 29.00, 84.00, 60.00, 121.00, 50000, 0, 0, 8236130, 656, 685, 299, 540, 0, 21673416),
(240, 'Myos', 22, 234839, 248949, 253000, 90.00, 50.00, 127.00, 97.00, 129.00, 158.00, 7424, 0, 0, 231528, 7313, 6914, 116, 512, 0, 21693276),
(242, 'Agathocles', 18, 171709, 153873, 171000, 17.00, 35.00, 79.00, 97.00, 129.00, 295.00, 12634, 0, 0, 948873, 281, 126, 194, 107, 0, 21693142);INSERT INTO `11apr_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(250, 'Vezk', 19, 77909, 177071, 190000, 217.00, 127.50, 81.00, 21.50, 43.50, 21.50, 40000, 0, 0, 423417, 65, 123, 46, 174, 0, 21693165),
(253, 'Aldeas', 19, 141078, 188370, 190000, 39.50, 25.50, 95.50, 29.50, 155.50, 278.50, 44449, 0, 0, 4558, 535, 347, 311, 497, 0, 21692812),
(255, 'Kabidoui&iuml;e', 13, 138682, 84607, 91000, 34.50, 47.00, 121.00, 48.00, 29.50, 30.00, 40000, 0, 0, 1147086, 263, 174, 547, 353, 0, 21643170),
(261, 'Azraeg', 19, 83702, 185122, 190000, 77.00, 105.00, 18.50, 75.50, 85.00, 116.00, 50000, 0, 0, 1948520, 20, 177, 121, 126, 0, 21670146),
(271, 'Agranos', 19, 104704, 183975, 190000, 204.50, 97.00, 183.00, 35.00, 56.00, 20.50, 50000, 0, 0, 1934062, 405, 49, 190, 95, 0, 21688806),
(275, 'Cyanea', 11, 83828, 60920, 66000, 60.50, 117.50, 13.50, 26.00, 88.00, 36.50, 3453, 0, 0, 841970, 131, 272, 257, 80, 0, 21698314),
(285, 'Nebkan', 30, 125415, 458471, 465000, 167.00, 126.00, 155.00, 174.33, 155.00, 163.00, 50000, 0, 0, 949191, 1635, 1479, 2110, 1923, 0, 21684172),
(288, 'Gorano', 12, 138719, 72206, 78000, 59.00, 27.00, 32.00, 21.00, 34.00, 146.00, 40000, 0, 0, 2496686, 915, 556, 929, 969, 0, 21683299),
(291, 'Ashinseika', 24, 195139, 298367, 300000, 84.00, 45.00, 36.00, 59.00, 118.00, 106.00, 18844, 0, 0, 1697140, 743, 361, 41262, 318, 0, 21693046),
(322, 'Yodine', 18, 128249, 163973, 171000, 62.00, 88.00, 31.00, 65.00, 98.00, 54.00, 7934, 0, 0, 31579, 0, 352, 337, 60, 0, 21691114),
(324, 'Enilia', 17, 72118, 136285, 153000, 94.50, 44.00, 119.00, 32.00, 26.00, 19.50, 40000, 0, 0, 6084433, 56, 124, 69, 193, 0, 21661426),
(341, 'Alrik', 15, 95583, 111673, 120000, 107.00, 165.00, 83.00, 75.50, 43.00, 21.50, 50000, 0, 0, 1652274, 975, 945, 720, 1012, 0, 21674148),
(343, 'Dinendal Alcarin', 13, 111183, 88611, 91000, 122.00, 139.00, 44.00, 34.50, 32.00, 19.50, 19650, 0, 0, 641146, 1243, 1210, 1894, 531, 0, 21693475),
(357, 'Azhaag', 20, 145694, 197510, 210000, 39.00, 45.00, 75.00, 37.00, 166.00, 234.00, 48589, 0, 0, 281812, 1839, 1407, 1399, 1857, 0, 21690211),
(363, 'Essyr', 14, 128836, 92709, 105000, 67.00, 30.00, 66.00, 23.00, 34.00, 82.00, 240, 0, 0, 431185, 793, 675, 576, 1120, 0, 21693308),
(382, 'Elm', 44, 206053, 979000, 990000, 215.00, 174.00, 193.00, 223.33, 154.00, 173.00, 13386, 0, 0, 2732148, 4393, 3315, 3724, 4298, 0, 21693176),
(386, 'Magax', 25, 211956, 310344, 325000, 54.50, 38.00, 35.00, 100.50, 219.00, 291.00, 42750, 0, 0, 2094636, 1067, 544, 1259, 1166, 0, 21691490),
(387, 'Lirielle', 17, 214593, 145795, 153000, 18.50, 31.00, 44.00, 95.50, 163.00, 182.00, 38173, 0, 0, 8082, 366, 520, 305, 128, 0, 21690088),
(389, 'Fletiaz', 8, 69807, 32412, 36000, 44.00, 17.00, 24.00, 23.00, 28.00, 107.00, 30000, 0, 0, 1801618, 393, 497, 405, 242, 0, 21637418),
(415, 'Arkatris', 23, 217158, 272405, 276000, 217.50, 114.00, 204.00, 36.00, 48.00, 22.50, 13468, 0, 0, 889679, 267, 216, 748, 460, 0, 21690109),
(419, 'Boone', 22, 124834, 238935, 253000, 182.00, 82.00, 170.00, 41.00, 47.00, 22.00, 50000, 0, 0, 1418114, 169, 97, 61, 130, 0, 21690681),
(431, 'Meissner', 22, 113377, 241566, 253000, 172.00, 154.00, 67.00, 80.00, 81.00, 36.00, 50000, 0, 0, 59448, 2990, 2964, 3067, 3322, 0, 21692628),
(445, 'Hyke', 17, 69528, 141606, 153000, 32.50, 36.50, 25.00, 88.00, 54.00, 200.00, 50000, 0, 0, 1849686, 425, 459, 380, 504, 0, 21672550),
(449, 'Laethil', 31, 216983, 489420, 496000, 341.50, 178.00, 261.00, 178.00, 163.00, 38.50, 4325, 0, 0, 1033855, 283, 580, 688, 6916, 0, 21693354),
(458, 'Mahrynn', 17, 111489, 144179, 153000, 56.50, 96.50, 86.00, 89.00, 91.00, 112.00, 19030, 0, 0, 967280, 113, 477, 9, 277, 0, 21686767),
(463, 'B&eacute;liaros', 19, 175723, 183696, 190000, 129.00, 69.00, 198.00, 62.00, 49.00, 43.00, 82, 0, 0, 791463, 244, 207, 222, 427, 0, 21688761),
(468, 'Bolas', 24, 145384, 294259, 300000, 233.00, 218.00, 17.00, 117.00, 119.00, 104.00, 49621, 0, 0, 433647, 1454, 1493, 1119, 1059, 0, 21686101),
(474, 'Mal`hac', 10, 75069, 50548, 55000, 78.00, 74.00, 69.00, 25.00, 24.00, 17.00, 40000, 0, 0, 2038113, 766, 653, 570, 820, 0, 21665664),
(478, 'Tirandilis', 18, 226392, 165728, 171000, 83.00, 38.00, 155.00, 16.00, 141.00, 314.00, 30739, 0, 0, 1921773, 935, 1078, 530, 432, 0, 21692888),
(485, 'Eleanora', 16, 445749, 131807, 136000, 34.00, 68.00, 31.00, 92.00, 66.00, 135.00, 1561, 0, 0, 224974, 121, 281, 255, 69, 0, 21693401),
(486, 'Zaseo', 21, 196943, 212738, 231000, 164.00, 121.00, 181.00, 115.00, 45.00, 43.00, 40000, 0, 0, 2262805, 927, 336, 37, 134, 0, 21690505),
(493, 'Belerion', 27, 267117, 360630, 378000, 83.50, 66.50, 83.50, 135.00, 73.00, 199.50, 50000, 0, 0, 752281, 43, 281, 340, 572, 0, 21685992),
(504, 'Aldramech Sarabhan', 31, 240932, 484581, 496000, 81.50, 38.50, 147.50, 97.50, 197.50, 247.50, 26017, 0, 0, 594561, 1548, 1262, 486, 592, 0, 21693427),
(512, 'Damarya', 15, 218366, 113038, 120000, 49.50, 77.00, 36.00, 50.00, 64.50, 41.50, 13023, 0, 0, 778, 107, 214, 185, 213, 0, 21684504),
(513, 'Arth&eacute;on', 5, 16716, 13565, 15000, 24.00, 22.00, 27.00, 32.00, 26.50, 11.50, 4406, 0, 0, 232716, 118, 10, 0, 43, 0, 21677343),
(516, 'Nicci', 15, 106973, 115811, 120000, 34.50, 54.00, 37.00, 55.50, 85.50, 78.50, 942, 0, 0, 20495, 649, 256, 320, 100, 0, 21690391),
(526, 'Celithrand', 11, 134159, 57961, 66000, 100.00, 54.00, 70.00, 18.50, 23.00, 16.50, 24404, 0, 0, 1063608, 184, 257, 3, 546, 0, 21691835),
(527, 'Darcia', 18, 158383, 156820, 171000, 36.00, 27.00, 81.00, 49.00, 135.00, 176.00, 48247, 0, 0, 1770543, 1190, 931, 196, 2860, 0, 21691891),
(561, 'Kadavre', 8, 105189, 35152, 36000, 52.00, 16.00, 26.00, 20.00, 26.00, 76.00, 16242, 0, 0, 5519820, 532, 341, 498, 681, 0, 21689094),
(564, 'Malikarn', 17, 204423, 142246, 153000, 124.00, 135.00, 55.50, 59.50, 93.00, 130.00, 1, 0, 0, 82487, 928, 480, 248, 626, 0, 21688556),
(565, 'Dalan', 24, 220719, 298071, 300000, 261.00, 297.00, 197.00, 71.00, 73.00, 29.00, 10471, 0, 0, 14156987, 15799, 17750, 18508, 17267, 0, 21693217),
(571, 'Bulrug', 16, 73688, 131923, 136000, 165.00, 88.00, 72.00, 16.00, 65.00, 16.00, 50000, 0, 0, 1236446, 294, 242, 388, 321, 0, 21674554),
(579, 'Castelluli', 11, 48422, 63862, 66000, 40.50, 51.00, 49.00, 30.50, 41.50, 51.50, 40000, 0, 0, 3053849, 263, 401, 257, 408, 0, 21681026),
(589, 'Han Bal', 12, 77753, 67259, 78000, 155.00, 143.00, 49.00, 33.00, 65.00, 14.00, 40000, 0, 0, 2160041, 707, 1079, 574, 1322, 0, 21689003),
(594, 'Klamhan', 16, 159628, 122518, 136000, 87.00, 47.00, 104.00, 29.00, 32.00, 28.00, 31741, 0, 0, 83768, 517, 4, 275, 478, 0, 21690381),
(596, 'Jacques Skellinou', 29, 126990, 410869, 435000, 209.00, 158.00, 290.00, 225.00, 98.50, 26.50, 30000, 0, 0, 2520721, 5793, 6235, 4700, 5117, 0, 21692670),
(601, 'Gael', 12, 77367, 75614, 78000, 50.00, 24.00, 75.00, 44.00, 27.00, 29.00, 20977, 0, 0, 675022, 392, 530, 397, 510, 0, 21687002),
(611, 'Marsys', 11, 117463, 62955, 66000, 65.50, 37.00, 88.00, 41.00, 45.50, 24.00, 10693, 0, 0, 218540, 774, 962, 807, 831, 0, 21660856),
(614, 'Bibble', 14, 151885, 99136, 105000, 71.00, 66.00, 46.00, 35.00, 57.00, 27.00, 37106, 0, 0, 1232, 56, 26, 0, 65, 0, 21691863),
(623, 'Sartibule', 20, 92686, 194767, 210000, 216.00, 150.00, 81.00, 17.00, 66.00, 20.00, 20000, 0, 0, 113458, 391, 503, 253, 598, 0, 21692832),
(628, 'Oryanna', 12, 151740, 69304, 78000, 105.00, 55.00, 113.00, 86.00, 55.00, 30.00, 30000, 0, 0, 70216, 192, 806, 149, 273, 0, 21689449);INSERT INTO `11apr_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(637, 'Thistos', 11, 57221, 55948, 66000, 60.00, 44.00, 33.00, 50.00, 32.00, 32.00, 30000, 0, 0, 3637426, 317, 519, 557, 520, 0, 21678185),
(638, 'Harnas', 18, 103524, 167670, 171000, 49.00, 74.00, 48.00, 79.00, 103.00, 108.00, 2887, 0, 0, 37669, 1417, 1381, 692, 1089, 0, 21693472),
(643, 'Ordinn', 19, 162983, 176940, 190000, 80.00, 104.00, 18.50, 78.50, 31.00, 127.00, 30887, 0, 0, 493777, 237, 305, 31, 46, 0, 21692837),
(644, 'Khiran', 13, 165597, 79022, 91000, 87.00, 67.00, 35.00, 56.00, 40.00, 35.00, 27622, 0, 0, 1514016, 826, 737, 641, 856, 0, 21691799),
(651, 'Hawkys', 8, 98871, 32658, 36000, 43.00, 23.00, 26.00, 16.00, 30.00, 76.00, 20000, 0, 0, 573930, 835, 625, 631, 760, 0, 21689557),
(654, 'Chitcat', 7, 74392, 23581, 28000, 41.00, 20.50, 26.50, 17.00, 24.50, 42.50, 30000, 0, 0, 6339695, 543, 435, 512, 317, 0, 21600190),
(655, 'Sansst', 1, 4971, 0, 1000, 300.00, 18.00, 8.50, 17.50, 12.00, 13.00, 0, 0, 0, 588438375, 6507, 7035, 7226, 6251, 0, 21684009),
(661, 'Gharnohk', 12, 139304, 76825, 78000, 62.00, 37.00, 66.00, 22.00, 46.00, 148.00, 2490, 0, 0, 253659, 469, 119, 401, 727, 0, 21689134),
(666, 'Yzeute', 11, 135029, 56227, 66000, 63.50, 42.00, 65.00, 38.00, 40.00, 33.50, 40000, 0, 0, 1457403, 330, 537, 440, 462, 0, 21687369),
(669, 'Ashut', 9, 50618, 42770, 45000, 51.00, 27.00, 71.00, 27.00, 27.00, 27.00, 30000, 0, 0, 4054714, 303, 129, 427, 402, 0, 21653803),
(674, 'Onacona', 20, 193232, 199309, 210000, 56.00, 51.00, 53.00, 65.00, 91.00, 92.00, 38267, 0, 0, 386048, 1610, 480, 1191, 1537, 0, 21693478),
(685, 'Zacharias', 15, 156190, 112384, 120000, 155.00, 196.00, 39.00, 29.50, 118.00, 15.50, 18269, 0, 0, 216585, 164, 266, 428, 475, 0, 21693116),
(700, 'Warenya Fahle', 13, 140953, 89391, 91000, 29.50, 27.50, 29.00, 61.00, 61.00, 96.00, 40000, 0, 0, 5398808, 226, 113, 373, 402, 0, 21674755),
(703, 'Azarath', 12, 142996, 68615, 78000, 116.00, 50.00, 35.00, 69.00, 32.00, 14.00, 8542, 0, 0, 297550, 56, 308, 217, 36, 0, 21693300),
(704, 'Risnak', 10, 85951, 52107, 55000, 23.00, 24.00, 32.00, 43.00, 23.00, 63.00, 4158, 0, 0, 172253, 106, 38, 129, 11, 0, 21693282),
(706, 'Hakra', 11, 89470, 62261, 66000, 123.00, 127.00, 37.00, 64.50, 23.00, 14.50, 40000, 0, 0, 833493, 521, 624, 756, 859, 0, 21687306),
(707, 'Kograh', 12, 79474, 69365, 78000, 30.00, 46.00, 29.00, 220.00, 81.00, 139.00, 6746, 0, 0, 51172, 1438, 1066, 795, 1366, 0, 21693068),
(715, 'Krugerr', 5, 18180, 14459, 15000, 25.50, 14.50, 21.50, 16.50, 23.50, 40.50, 20000, 0, 0, 909195, 109, 29, 101, 43, 0, 21649140),
(720, 'Burgrok Brise`Fer', 22, 135559, 251577, 253000, 164.00, 172.00, 159.00, 121.00, 121.00, 96.00, 50000, 0, 0, 2676268, 793, 722, 487, 1195, 0, 21691868),
(731, 'Zoltan', 12, 91704, 71325, 78000, 112.00, 118.00, 43.00, 14.00, 30.00, 17.00, 30000, 0, 0, 1033442, 530, 433, 295, 535, 0, 21723783),
(732, 'Gruck', 11, 168861, 58474, 66000, 51.00, 69.00, 32.00, 50.00, 36.00, 47.00, 17888, 0, 0, 320850, 49, 47, 211, 314, 0, 21689892),
(733, 'Hijen', 15, 103820, 118919, 120000, 85.00, 87.00, 141.00, 85.00, 54.50, 15.50, 8488, 0, 0, 220746, 1209, 444, 287, 269, 0, 21689882),
(734, 'Jaeregan', 27, 179144, 355035, 378000, 211.00, 70.00, 317.00, 82.00, 42.00, 40.00, 17790, 0, 0, 1746710, 2503, 1038, 1293, 1762, 0, 21693124),
(760, 'Orga', 8, 71118, 32604, 36000, 71.00, 39.00, 24.00, 11.00, 24.00, 14.00, 30000, 0, 0, 1772558, 336, 378, 267, 315, 0, 21692819),
(761, 'Yarl Baudig', 10, 169463, 50542, 55000, 50.00, 40.00, 30.00, 106.00, 36.00, 70.00, 111, 0, 0, 133273, 1723, 1369, 967, 934, 0, 21690045),
(767, 'Kylordion', 23, 165182, 265526, 276000, 207.00, 78.50, 152.50, 130.00, 60.50, 116.50, 50000, 0, 0, 1249198, 561, 227, 286, 1570, 0, 21730686),
(768, 'Tharoze', 8, 75302, 33544, 36000, 42.00, 18.00, 24.00, 17.00, 24.00, 56.00, 30000, 0, 0, 4191837, 170, 132, 432, 229, 0, 21668873),
(771, 'Umassi', 17, 153437, 141349, 153000, 93.00, 51.00, 105.50, 121.83, 117.50, 131.50, 13952, 0, 0, 428113, 812, 1198, 1000, 1045, 0, 21732105),
(772, 'Infilz', 7, 76088, 24694, 28000, 28.50, 21.50, 22.50, 34.50, 30.50, 66.50, 30000, 0, 0, 4380714, 435, 414, 374, 318, 0, 21660284),
(774, 'Treleg', 24, 140753, 282152, 300000, 268.00, 296.00, 24.00, 82.00, 178.00, 56.00, 4309, 0, 0, 2181203, 1077, 650, 395, 1286, 0, 21693266),
(775, 'Il&eacute;anor', 11, 109608, 60482, 66000, 57.00, 38.00, 110.00, 55.00, 33.00, 24.00, 34000, 0, 0, 1066944, 1217, 759, 971, 1066, 0, 21691851),
(777, 'Invoj', 10, 68769, 50155, 55000, 41.00, 24.00, 28.00, 20.00, 57.00, 125.00, 23972, 0, 0, 337945, 938, 623, 855, 603, 0, 21692622),
(782, 'D&eacute;sacre', 16, 130041, 132924, 136000, 134.00, 61.00, 174.00, 40.00, 30.00, 29.00, 7514, 0, 0, 118536, 2599, 2646, 2104, 2045, 0, 21693248),
(784, 'Jade', 13, 96601, 78894, 91000, 5.50, 47.00, 54.00, 68.00, 89.50, 72.50, 238, 0, 0, 373565, 285, 709, 969, 665, 0, 21693356),
(792, 'Dhorlyn', 8, 53759, 33334, 36000, 110.00, 72.00, 69.00, 22.00, 24.00, 16.00, 9778, 0, 0, 404770, 888, 544, 604, 840, 0, 21690588),
(795, 'Halambare', 15, 171737, 110126, 120000, 115.50, 92.00, 149.00, 41.00, 65.00, 26.50, 6280, 0, 0, 3324293, 787, 465, 698, 562, 0, 21693445),
(797, 'Qatrisk', 1, 3319, 0, 1000, 11.50, 10.00, 9.00, 22.50, 16.50, 21.50, 0, 0, 0, 61156, 50, 50, 50, 50, 0, 21622835),
(801, 'Belenora', 14, 153927, 104314, 105000, 48.00, 31.00, 21.00, 37.00, 52.00, 87.00, 40000, 0, 0, 168389, 371, 367, 171, 268, 0, 21691613),
(805, 'Prolor', 12, 141513, 75225, 78000, 130.00, 116.00, 74.00, 15.00, 44.00, 15.00, 20013, 0, 0, 825343, 1105, 1081, 773, 1015, 0, 21692881),
(808, 'Mercolothion', 4, 90378, 9683, 10000, 25.00, 15.00, 31.00, 25.00, 14.00, 17.00, 20000, 0, 0, 3109762, 247, 248, 302, 312, 0, 21675749),
(821, 'Solemyr', 8, 164048, 32683, 36000, 60.00, 44.00, 34.00, 93.00, 28.00, 25.00, 8665, 0, 0, 273883, 372, 427, 405, 208, 0, 21693151),
(822, 'Oedarn', 10, 188596, 45397, 55000, 82.00, 66.00, 75.00, 28.00, 60.00, 23.00, 2279, 0, 0, 3029346, 234, 352, 536, 136, 0, 21689018),
(829, 'Tiposa', 6, 121374, 18161, 21000, 35.00, 22.00, 42.00, 25.00, 15.00, 14.00, 20000, 0, 0, 2022195, 239, 678, 192, 363, 0, 21692651),
(846, 'Yeldierick', 12, 163209, 73617, 78000, 127.00, 104.00, 14.00, 48.00, 61.00, 63.00, 65, 0, 0, 370018, 840, 678, 1307, 590, 0, 21690397),
(848, 'Eragole', 11, 138196, 58022, 66000, 62.00, 119.00, 49.00, 73.00, 68.50, 33.50, 35254, 0, 0, 90646, 1098, 772, 607, 731, 0, 21689948),
(859, 'Olinos', 1, 3134, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 9.50, 0, 0, 0, 23409, 16, 16, 16, 16, 0, 21644579),
(864, 'Storia', 8, 100971, 34012, 36000, 97.00, 63.00, 105.00, 20.00, 24.00, 16.00, 20000, 0, 0, 885076, 589, 247, 523, 210, 0, 21690444),
(865, 'Xeitheus', 1, 3134, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 11009, 32, 32, 32, 32, 0, 21648710),
(874, 'Tankarllia', 5, 49026, 14916, 15000, 28.00, 30.00, 17.00, 79.00, 25.00, 22.00, 20000, 0, 0, 1521320, 190, 173, 142, 110, 0, 21690532),
(876, 'Enariael', 4, 49722, 9440, 10000, 22.00, 11.00, 20.00, 14.00, 25.00, 38.00, 11389, 0, 0, 393752, 208, 154, 160, 124, 0, 21685984),
(877, 'Lhito', 7, 69237, 27771, 28000, 92.00, 88.00, 79.00, 8.50, 24.00, 16.50, 30000, 0, 0, 1310234, 390, 372, 405, 178, 0, 21690574);INSERT INTO `11apr_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(878, 'Eladriel', 3, 17429, 5801, 6000, 45.00, 20.50, 19.00, 6.50, 15.50, 14.50, 6739, 0, 0, 602740, 80, 133, 32, 32, 0, 21692776),
(879, 'Grumpf', 4, 52714, 8721, 10000, 19.00, 18.00, 30.00, 25.00, 17.00, 21.00, 10000, 0, 0, 403260, 203, 148, 233, 175, 0, 21654568),
(880, 'Jijona', 16, 300257, 123934, 136000, 153.00, 76.00, 89.00, 145.00, 57.00, 44.00, 8743, 0, 0, 428147, 1842, 1452, 961, 1311, 0, 21693264),
(881, 'Aurack', 1, 0, 0, 1000, 18.00, 14.00, 20.00, 13.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655821),
(882, 'Hezaram', 7, 82554, 22394, 28000, 47.00, 27.00, 25.50, 10.50, 35.50, 44.50, 30000, 0, 0, 1835333, 253, 609, 505, 391, 0, 21689074),
(883, 'Kassrotul', 1, 0, 0, 1000, 22.00, 14.00, 15.50, 7.50, 14.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655831),
(884, 'Paaroxsizme', 5, 82937, 12416, 15000, 40.00, 37.00, 22.00, 13.50, 14.00, 19.50, 387, 0, 0, 472736, 406, 882, 413, 519, 0, 21693378),
(885, 'Tahalus', 7, 127259, 25988, 28000, 46.00, 26.00, 52.00, 46.00, 16.00, 32.00, 3012, 0, 0, 205399, 376, 394, 419, 544, 0, 21693325),
(886, 'Gromlir', 1, 3134, 0, 1000, 22.00, 21.00, 11.00, 7.50, 17.00, 8.50, 0, 0, 0, 5067, 0, 0, 0, 0, 0, 21655831),
(887, 'Ilarneek', 8, 103407, 31344, 36000, 29.00, 15.00, 26.00, 24.00, 32.00, 56.00, 30000, 0, 0, 1483921, 212, 335, 363, 269, 0, 21687238),
(888, 'Kannarthychono', 1, 0, 0, 1000, 22.00, 19.00, 9.00, 11.00, 16.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655838),
(889, 'Hjlodhr', 6, 74969, 17304, 21000, 27.00, 19.00, 18.00, 34.00, 25.00, 36.00, 22583, 0, 0, 1109173, 255, 221, 68, 228, 0, 21681994),
(890, 'Drakaniac', 1, 0, 0, 1000, 12.50, 9.00, 19.00, 15.50, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655838),
(891, 'Mathor', 5, 98770, 14472, 15000, 43.00, 42.00, 19.00, 9.50, 22.00, 10.50, 440, 0, 0, 201890, 305, 385, 471, 203, 0, 21692965),
(892, 'Fumnei', 1, 3134, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 4152, 0, 0, 0, 0, 0, 21655838),
(893, 'Thosemos', 1, 0, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655839),
(894, 'Calenvagor', 1, 0, 0, 1000, 25.00, 19.50, 11.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655839),
(895, 'Gradhar', 4, 36153, 7915, 10000, 35.00, 20.00, 14.00, 9.00, 22.00, 30.00, 20000, 0, 0, 591241, 79, 119, 0, 47, 0, 21681054),
(896, 'Raqual', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21655840),
(897, 'Brolleur', 11, 171938, 58470, 66000, 15.50, 13.50, 33.00, 95.00, 67.00, 105.00, 10, 0, 0, 50079, 317, 606, 383, 516, 0, 21691905),
(901, 'Z`arf D`Ibn B&auml;shici', 7, 88800, 24602, 28000, 23.50, 14.50, 20.00, 45.00, 23.00, 43.00, 10000, 0, 0, 5506, 161, 166, 27, 205, 0, 21707685),
(903, 'Zar`Kull', 8, 83212, 28677, 36000, 40.00, 63.00, 16.00, 36.00, 44.00, 21.00, 16083, 0, 0, 1498468, 458, 474, 308, 466, 0, 21693444),
(904, 'Griffith', 3, 28324, 3634, 6000, 14.50, 15.00, 15.00, 16.50, 22.00, 36.00, 5781, 0, 0, 72755, 100, 316, 137, 33, 0, 21693127),
(905, 'E&auml;nlys', 8, 119912, 34865, 36000, 37.00, 25.00, 59.00, 30.00, 21.00, 21.00, 1788, 0, 0, 51563, 357, 377, 287, 341, 0, 21693349),
(906, 'Jaruleek', 7, 77541, 24394, 28000, 33.00, 50.00, 47.00, 82.00, 18.00, 19.00, 6260, 0, 0, 10248, 325, 258, 332, 6, 0, 21693436),
(907, 'Mourideri', 1, 3134, 0, 1000, 12.50, 10.00, 15.00, 24.00, 13.00, 16.50, 0, 0, 0, 5611, 4, 4, 4, 4, 0, 21662418),
(908, 'Pikel', 1, 0, 0, 1000, 11.50, 16.50, 10.50, 9.00, 17.00, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662418),
(909, 'Zasoum', 5, 82817, 11537, 15000, 10.50, 20.00, 23.00, 20.50, 27.00, 46.00, 20000, 0, 0, 121866, 196, 260, 443, 404, 0, 21690516),
(910, 'Asnashar', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662418),
(911, 'Nathanaou', 1, 0, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662418),
(913, 'Minalta', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21662418),
(914, 'Masme', 4, 18992, 9643, 10000, 42.00, 26.00, 23.00, 9.00, 19.00, 13.00, 20000, 0, 0, 437108, 73, 56, 49, 0, 0, 21683966),
(915, 'Karann', 8, 134935, 29121, 36000, 69.00, 75.00, 62.00, 59.00, 29.00, 16.00, 15733, 0, 0, 38794, 1069, 902, 593, 925, 0, 21693172),
(919, 'Morphox', 6, 144425, 17116, 21000, 28.00, 21.00, 48.00, 29.00, 17.00, 18.00, 12527, 0, 0, 485952, 244, 250, 252, 286, 0, 21693267),
(923, 'Artatiss', 4, 79115, 8514, 10000, 28.00, 36.00, 19.00, 26.00, 20.00, 20.00, 20000, 0, 0, 720352, 170, 312, 333, 601, 0, 21689407),
(925, 'Abranxas', 4, 27657, 6964, 10000, 22.00, 14.00, 20.00, 15.00, 20.00, 38.00, 17700, 0, 0, 154987, 4, 112, 37, 89, 0, 21690151),
(926, 'Zozofiit', 3, 16358, 3289, 6000, 16.50, 10.50, 14.00, 29.00, 15.00, 29.00, 0, 0, 0, 180282, 114, 72, 123, 85, 0, 21693283),
(927, 'Florfindel', 1, 0, 0, 1000, 12.50, 8.50, 18.00, 17.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667080),
(928, 'Kioude', 1, 3134, 0, 1000, 17.50, 12.00, 22.00, 14.00, 11.00, 11.50, 0, 0, 0, 4251, 0, 0, 0, 0, 0, 21667080),
(929, 'Gwilhelm', 1, 3200, 0, 1000, 17.00, 10.00, 17.50, 18.50, 12.00, 15.00, 0, 0, 0, 54624, 24, 24, 24, 24, 0, 21667080),
(930, 'Turbopixel', 1, 0, 0, 1000, 18.00, 18.00, 14.00, 12.50, 14.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667080),
(931, 'Michaeleagle', 1, 0, 0, 1000, 14.50, 10.00, 21.00, 16.00, 12.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667080),
(932, 'Willovs', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21667080),
(933, 'Min', 1, 3381, 0, 1000, 18.00, 10.00, 18.00, 23.00, 9.00, 12.00, 0, 0, 0, 2838, 0, 0, 0, 0, 0, 21667161),
(936, 'Pakito`s', 8, 95070, 31359, 36000, 51.00, 50.00, 28.00, 16.00, 23.00, 18.00, 26731, 0, 0, 56345, 139, 124, 193, 125, 0, 21692752),
(938, 'Anadyomene', 5, 102251, 10376, 15000, 17.50, 19.00, 17.00, 31.50, 32.00, 41.00, 20000, 0, 0, 355673, 64, 375, 280, 327, 0, 21693025),
(944, 'Morgjin', 4, 44114, 6573, 10000, 31.00, 14.00, 22.00, 7.00, 21.00, 34.00, 6129, 0, 0, 477956, 210, 954, 353, 247, 0, 21688968),
(945, 'Katum', 3, 72720, 3039, 6000, 35.00, 25.50, 19.00, 13.50, 16.50, 13.50, 4156, 0, 0, 8826, 317, 728, 171, 271, 0, 21688863),
(947, 'Gaoule', 2, 8025, 1418, 3000, 20.00, 17.00, 22.00, 15.00, 15.00, 14.00, 10000, 0, 0, 398421, 20, 47, 47, 47, 0, 21676828),
(950, 'Aelindel', 3, 13197, 3132, 6000, 28.00, 30.00, 16.00, 8.50, 22.00, 9.50, 10000, 0, 0, 347073, 82, 93, 188, 117, 0, 21687801),
(951, 'Kaya', 4, 30840, 9752, 10000, 48.00, 16.00, 20.00, 20.00, 23.00, 33.00, 16600, 0, 0, 8978, 332, 723, 12, 383, 0, 21693192);INSERT INTO `11apr_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(952, 'Yglora', 4, 68787, 9599, 10000, 29.00, 14.00, 51.00, 16.00, 19.00, 33.00, 18399, 0, 0, 109, 111, 103, 123, 126, 0, 21693260),
(953, 'Vaith', 5, 92085, 13485, 15000, 35.00, 35.00, 28.00, 17.50, 17.00, 14.50, 3076, 0, 0, 19307, 286, 875, 199, 257, 0, 21692900),
(954, 'Elfredo', 4, 76636, 6831, 10000, 29.00, 12.00, 21.00, 12.00, 21.00, 35.00, 599, 0, 0, 2524, 107, 269, 220, 98, 0, 21693455),
(955, 'Atalwatu', 4, 36011, 6035, 10000, 32.00, 14.00, 20.00, 7.00, 21.00, 35.00, 216, 0, 0, 267176, 61, 214, 41, 151, 0, 21693478),
(956, 'Coris', 1, 0, 0, 1000, 20.00, 17.00, 14.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678543),
(957, 'Piotr Bailson', 1, 0, 0, 1000, 29.00, 17.50, 9.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678543),
(958, 'Gariel', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678543),
(960, 'Awang', 1, 0, 0, 1000, 15.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678543),
(962, 'Deinoforo', 1, 11882, 0, 1000, 25.00, 17.00, 14.00, 9.50, 10.00, 17.50, 9776, 0, 0, 472, 72, 49, 50, 59, 0, 21692979),
(963, 'Zackr', 1, 3144, 0, 1000, 20.00, 17.00, 14.00, 12.50, 13.00, 12.50, 0, 0, 0, 4923, 0, 0, 0, 0, 0, 21678543),
(964, 'Morvox', 3, 31455, 5504, 6000, 26.00, 25.00, 11.00, 26.00, 16.00, 15.00, 10000, 0, 0, 30650, 204, 157, 207, 132, 0, 21693225),
(965, 'Kmzero', 1, 0, 0, 1000, 19.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21678543),
(966, 'Aysa', 4, 41949, 6488, 10000, 10.00, 12.00, 22.00, 20.00, 23.00, 43.00, 15522, 0, 0, 38155, 318, 1763, 304, 93, 0, 21693413),
(967, 'Noatheo', 1, 0, 0, 1000, 17.00, 17.00, 13.50, 16.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21679664),
(968, 'Staryke', 1, 3260, 0, 1000, 24.00, 16.00, 16.00, 9.50, 15.00, 12.50, 0, 0, 0, 608, 0, 0, 0, 0, 0, 21679664),
(969, 'Artaxxas', 4, 98556, 9409, 10000, 21.00, 30.00, 25.00, 32.00, 19.00, 17.00, 20000, 0, 0, 21596, 208, 293, 196, 296, 0, 21692671),
(970, 'D&uuml;mogen', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21679664),
(971, 'Jeremy', 1, 0, 0, 1000, 16.00, 16.00, 11.50, 19.50, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21679665),
(972, 'Teperek', 3, 29160, 4582, 6000, 25.00, 22.00, 16.00, 21.00, 19.00, 18.00, 13307, 0, 0, 228695, 189, 60, 445, 2, 0, 21693407),
(973, 'Jinugra', 3, 30144, 5139, 6000, 25.50, 26.50, 9.50, 20.00, 19.00, 16.50, 625, 0, 0, 87101, 170, 156, 94, 122, 0, 21693273),
(974, 'Viannick', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21684472),
(975, 'Medinter', 1, 3134, 0, 1000, 15.50, 15.00, 10.00, 16.50, 14.00, 20.00, 0, 0, 0, 5030, 0, 0, 0, 0, 0, 21684472),
(976, 'Yhrdrauth', 1, 4440, 203, 1000, 29.00, 21.50, 11.00, 8.50, 14.50, 8.50, 9137, 0, 0, 13541, 147, 113, 163, 101, 0, 21686949),
(978, 'Lyonis', 4, 74878, 9128, 10000, 24.00, 21.00, 55.00, 20.00, 21.00, 21.00, 7728, 0, 0, 88995, 33, 45, 69, 70, 0, 21693246),
(980, 'Theobald', 3, 25197, 3090, 6000, 31.00, 24.00, 19.50, 18.00, 15.00, 13.50, 6991, 0, 0, 108997, 25, 25, 25, 25, 0, 21693336),
(981, 'Narmacilis', 2, 25288, 1225, 3000, 16.00, 18.00, 14.00, 21.00, 16.00, 13.00, 10000, 0, 0, 51835, 27, 53, 35, 47, 0, 21692675),
(982, 'Belisama', 1, 0, 0, 1000, 14.50, 17.00, 10.00, 18.00, 13.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21687415),
(983, 'Lyou', 1, 3237, 0, 1000, 13.50, 8.50, 18.00, 17.00, 12.00, 19.00, 0, 0, 0, 6371, 8, 8, 8, 8, 0, 21687415),
(984, 'Aries', 1, 6612, 0, 1000, 19.50, 11.00, 22.00, 14.00, 11.00, 13.50, 0, 0, 0, 458, 12, 12, 12, 12, 0, 21687415);



CREATE TABLE `11apr_guildes_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(80) NOT NULL DEFAULT '',
  `province` varchar(40) NOT NULL DEFAULT '',
  `nb_membres` int(11) NOT NULL DEFAULT '0',
  `date_création` int(11) NOT NULL DEFAULT '0',
  `img` tinytext NOT NULL,
  `chef` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `regles` text NOT NULL,
  `puissance` int(11) NOT NULL DEFAULT '0',
  `siteweb` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `11apr_guerres_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL DEFAULT '0',
  `valide` varchar(10) NOT NULL DEFAULT '0',
  `initiateur` varchar(80) NOT NULL DEFAULT '',
  `guilde1` varchar(80) NOT NULL DEFAULT '',
  `guilde2` varchar(80) NOT NULL DEFAULT '',
  `indep1` text NOT NULL,
  `indep2` text NOT NULL,
  `declaration` text NOT NULL,
  `vainqueur` varchar(80) NOT NULL DEFAULT '',
  `dateDebut` int(11) NOT NULL DEFAULT '0',
  `puissDebut1` int(11) NOT NULL DEFAULT '0',
  `puissDebut2` int(11) NOT NULL DEFAULT '0',
  `dateFin` int(11) NOT NULL DEFAULT '0',
  `puissFin1` int(11) NOT NULL DEFAULT '0',
  `puissFin2` int(11) NOT NULL DEFAULT '0',
  `cond1` varchar(20) NOT NULL DEFAULT '',
  `val1` int(11) NOT NULL DEFAULT '0',
  `cond2` varchar(20) NOT NULL DEFAULT '',
  `val2` int(11) NOT NULL DEFAULT '0',
  `cond3` varchar(20) NOT NULL DEFAULT '',
  `val3` int(11) NOT NULL DEFAULT '0',
  `andor` char(3) NOT NULL DEFAULT '',
  `prop1` varchar(20) NOT NULL DEFAULT '',
  `valp1` int(11) NOT NULL DEFAULT '0',
  `prop2` varchar(20) NOT NULL DEFAULT '',
  `valp2` int(11) NOT NULL DEFAULT '0',
  `prop3` varchar(20) NOT NULL DEFAULT '',
  `valp3` int(11) NOT NULL DEFAULT '0',
  `andorp` char(3) NOT NULL DEFAULT '',
  `proposeur` varchar(80) NOT NULL DEFAULT '',
  `nbrAttaVict` double NOT NULL DEFAULT '0',
  `nbrAttaDefa` double NOT NULL DEFAULT '0',
  `nbrDefeVict` double NOT NULL DEFAULT '0',
  `nbrDefeDefa` double NOT NULL DEFAULT '0',
  `xp1` int(11) NOT NULL DEFAULT '0',
  `xp2` int(11) NOT NULL DEFAULT '0',
  `pertePuiss1` int(11) NOT NULL DEFAULT '0',
  `pertePuiss2` int(11) NOT NULL DEFAULT '0',
  `acres1` int(11) NOT NULL DEFAULT '0',
  `acres2` int(11) NOT NULL DEFAULT '0',
  `prison1` int(11) NOT NULL DEFAULT '0',
  `prison2` int(11) NOT NULL DEFAULT '0',
  `tues1` int(11) NOT NULL DEFAULT '0',
  `tues2` int(11) NOT NULL DEFAULT '0',
  `detruits1` double NOT NULL DEFAULT '0',
  `detruits2` double NOT NULL DEFAULT '0',
  `or1` int(11) NOT NULL DEFAULT '0',
  `or2` int(11) NOT NULL DEFAULT '0',
  `ressources1` int(11) NOT NULL DEFAULT '0',
  `ressources2` int(11) NOT NULL DEFAULT '0',
  `PGCj1` varchar(25) NOT NULL DEFAULT '',
  `PGCj2` varchar(25) NOT NULL DEFAULT '',
  `PGCxp1` int(11) NOT NULL DEFAULT '0',
  `PGCxp2` int(11) NOT NULL DEFAULT '0',
  `PGCatta` varchar(25) NOT NULL DEFAULT '',
  `PGCvainqueur` varchar(25) NOT NULL DEFAULT '',
  `cache` int(11) NOT NULL DEFAULT '0',
  `leaver1` text NOT NULL,
  `leaver2` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `11apr_joueurs_bonus_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL DEFAULT '',
  `att` smallint(6) NOT NULL DEFAULT '0',
  `def` smallint(6) NOT NULL DEFAULT '0',
  `ini` smallint(6) NOT NULL DEFAULT '0',
  `cha` smallint(6) NOT NULL DEFAULT '0',
  `end` smallint(6) NOT NULL DEFAULT '0',
  `pui` smallint(6) NOT NULL DEFAULT '0',
  `chance` smallint(6) NOT NULL DEFAULT '0',
  `offensive` tinyint(4) NOT NULL DEFAULT '100',
  `defensive` tinyint(4) NOT NULL DEFAULT '100',
  `rapport` tinyint(4) NOT NULL DEFAULT '0',
  `politique` varchar(40) NOT NULL DEFAULT 'Autarcie',
  `province` varchar(40) NOT NULL DEFAULT 'Aucune',
  `statut` varchar(40) NOT NULL DEFAULT '',
  `guilde` varchar(70) NOT NULL DEFAULT 'Aucune',
  `chg_province` int(11) NOT NULL DEFAULT '0',
  `quete` int(11) NOT NULL DEFAULT '0',
  `victoire` int(11) NOT NULL DEFAULT '0',
  `défaite` int(11) NOT NULL DEFAULT '0',
  `gain_jour` int(11) NOT NULL DEFAULT '0',
  `guildeRP` int(11) NOT NULL DEFAULT '0',
  `rangguildeRP` int(11) NOT NULL DEFAULT '0',
  `rapportOff` int(11) NOT NULL DEFAULT '0',
  `incantemin` smallint(6) NOT NULL DEFAULT '-1',
  `incantemax` smallint(6) NOT NULL DEFAULT '-1',
  `incantetjrsoff` tinyint(4) NOT NULL DEFAULT '1',
  `incanterExplo` tinyint(1) NOT NULL DEFAULT '1',
  `objets_casses` smallint(5) unsigned NOT NULL DEFAULT '0',
  `satt` smallint(3) NOT NULL DEFAULT '0',
  `sdef` smallint(3) NOT NULL DEFAULT '0',
  `sini` smallint(3) NOT NULL DEFAULT '0',
  `spui` smallint(3) NOT NULL DEFAULT '0',
  `send` smallint(3) NOT NULL DEFAULT '0',
  `scha` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

INSERT INTO `11apr_joueurs_bonus_3` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1, 'Babka', 29, 30, 32, 11, 0, 20, 3, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21443125, 0, 85, 47, 104867, 1, 2, 0, -1, -1, 1, 1, 5, 16, 0, 0, 0, 0, 0),
(3, 'Adola', 72, 47, 151, 14, 36, 0, 0, 30, 10, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21443483, 0, 39, 131, 253954, 1, 6, 1, -1, -1, 0, 0, 16, 9, 10, 1, 0, 1, 0),
(5, 'Irkos', 69, 108, 96, 13, 62, 9, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443994, 0, 69, 108, 373988, 4, 2, 1, -1, -1, 1, 0, 27, 3, 2, 7, 1, 7, 3),
(9, 'L`Ardonien', 33, 128, 84, 84, 117, 23, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21444359, 0, 74, 72, 284854, 4, 1, 0, 30, 30, 0, 0, 412, 7, 0, 0, 0, 17, 0),
(15, 'Aquilodon L`Aveugle', 3, 2, 10, 0, 0, 0, 0, 70, 60, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21466784, 0, 88, 90, 66143, 3, 1, 0, -1, -1, 1, 0, 6, 0, 0, 11, 5, 0, 0),
(20, 'Alexia', 27, 15, 0, 13, 10, 22, 2, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21529850, 0, 84, 85, 347784, 0, 0, 0, 30, 30, 0, 1, 18, 0, 6, 4, 4, 1, 0),
(25, 'Aedric', 55, 0, 0, 0, 30, 16, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21566645, 0, 26, 23, 175249, 3, 6, 0, -1, -1, 1, 1, 0, 5, 0, 0, 0, 4, 0),
(34, 'Tulkas', 3, 9, 32, 65, 24, 22, 0, 80, 10, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21602597, 0, 34, 32, 295000, 2, 1, 0, -1, -1, 1, 0, 18, 0, 0, 14, 0, 0, 1),
(42, 'Perstan', 2, 0, 31, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21641669, 0, 14, 5, 49727, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(43, 'Mornor', 3, 0, 30, 0, 0, 53, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21635756, 0, 15, 1, 100386, 0, 0, 1, 30, 50, 1, 0, 0, 0, 0, 7, 1, 0, 0),
(44, 'Malian', 4, 2, 0, 12, 0, 32, 0, 80, 70, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21662827, 0, 9, 1, 113162, 0, 0, 1, 20, 40, 0, 0, 4, 0, 0, 4, 3, 0, 0),
(45, 'Malbrum', 27, 13, 24, 80, 4, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21667045, 0, 11, 7, 281073, 5, 6, 1, -1, -1, 1, 0, 13, 4, 0, 2, 0, 0, 0),
(46, 'Atalwatu', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21677452, 0, 6, 3, 132350, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 0, 5, 0, 0);



CREATE TABLE `11apr_joueurs_heros_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL DEFAULT '',
  `race` varchar(25) NOT NULL DEFAULT '',
  `classe` varchar(25) NOT NULL DEFAULT '',
  `dieu` varchar(25) NOT NULL DEFAULT '',
  `titre` varchar(25) NOT NULL DEFAULT '',
  `royaume` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL DEFAULT '0',
  `nb` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

INSERT INTO `11apr_joueurs_heros_3` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1, 'Babka', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Helcar', 69130, 0),
(3, 'Adola', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'des Plaines Perdues', 164628, 0),
(5, 'Irkos', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'de Kalferas', 148020, 0),
(9, 'L`Ardonien', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Le Village Isol&eacute;', 230467, 0),
(15, 'Aquilodon L`Aveugle', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'de M&eacute;n&eacute;x&egrave;ne', 62480, 0),
(20, 'Alexia', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Dragoland', 125754, 0),
(25, 'Aedric', 'Homme', 'Inquisiteur', 'Force', 'Seigneur', 'de Nardogord', 61372, 0),
(34, 'Tulkas', 'Célestial', 'Magicien', 'Pensée', 'Maître', 'd`Illya-Verte', 268090, 0),
(42, 'Perstan', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Rothink', 38334, 0),
(43, 'Mornor', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'd`Armale', 105681, 0),
(44, 'Malian', 'Fée', 'Magicien', 'Pensée', 'Intendant', 'de Diriath', 103212, 0),
(45, 'Malbrum', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Mont-Chemin-des-Ildys', 77175, 0),
(46, 'Atalwatu', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Tkashi', 89890, 0);



CREATE TABLE `11apr_joueurs_stats_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(25) NOT NULL DEFAULT '',
  `niveau` tinyint(4) NOT NULL DEFAULT '0',
  `puissance` int(11) NOT NULL DEFAULT '0',
  `xp` int(11) NOT NULL DEFAULT '0',
  `but` int(11) NOT NULL DEFAULT '0',
  `att` float(5,2) NOT NULL DEFAULT '0.00',
  `def` float(5,2) NOT NULL DEFAULT '0.00',
  `ini` float(5,2) NOT NULL DEFAULT '0.00',
  `cha` float(5,2) NOT NULL DEFAULT '0.00',
  `end` float(5,2) NOT NULL DEFAULT '0.00',
  `pui` float(5,2) NOT NULL DEFAULT '0.00',
  `mana` int(11) NOT NULL DEFAULT '0',
  `victoire` tinyint(4) NOT NULL DEFAULT '0',
  `defaite` tinyint(4) NOT NULL DEFAULT '0',
  `argent` int(11) NOT NULL DEFAULT '0',
  `soufre` mediumint(9) NOT NULL DEFAULT '0',
  `mercure` mediumint(9) NOT NULL DEFAULT '0',
  `cristal` mediumint(9) NOT NULL DEFAULT '0',
  `gemme` mediumint(9) NOT NULL DEFAULT '0',
  `heure` tinyint(4) NOT NULL DEFAULT '0',
  `indice_militaire` int(11) NOT NULL DEFAULT '19314424',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

INSERT INTO `11apr_joueurs_stats_3` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1, 'Babka', 16, 69130, 134523, 136000, 81.00, 54.00, 132.00, 74.00, 17.00, 47.00, 23938, 0, 0, 1680091, 109, 341, 32, 552, 0, 21686785),
(3, 'Adola', 21, 164628, 228353, 231000, 139.00, 87.00, 270.00, 64.00, 74.00, 34.00, 26, 0, 0, 370921, 427, 656, 819, 497, 0, 21693079),
(5, 'Irkos', 23, 148020, 256490, 276000, 176.00, 211.00, 167.00, 43.50, 101.00, 32.50, 41218, 0, 0, 467368, 801, 746, 691, 791, 0, 21691758),
(9, 'L`Ardonien', 24, 230467, 297254, 300000, 101.00, 190.00, 120.00, 170.00, 194.00, 83.00, 22614, 0, 0, 3884606, 4750, 4502, 5089, 4414, 0, 21692842),
(15, 'Aquilodon L`Aveugle', 16, 62480, 135322, 136000, 57.00, 34.00, 53.00, 15.00, 52.00, 87.00, 40000, 0, 0, 936322, 480, 86, 198, 438, 0, 21663209),
(20, 'Alexia', 15, 125754, 105090, 120000, 41.50, 74.00, 35.00, 56.00, 75.50, 52.50, 465, 0, 0, 10001, 428, 415, 42, 325, 0, 21690006),
(25, 'Aedric', 9, 61372, 36044, 45000, 98.50, 35.50, 16.50, 21.00, 73.00, 50.50, 5644, 0, 0, 4661510, 93, 81, 179, 124, 0, 21688898),
(34, 'Tulkas', 15, 268090, 112445, 120000, 24.50, 38.00, 70.00, 104.50, 79.00, 109.00, 14417, 0, 0, 249497, 779, 723, 1017, 1223, 0, 21692966),
(42, 'Perstan', 4, 38334, 9465, 10000, 28.00, 16.00, 67.00, 23.00, 13.00, 13.00, 2133, 0, 0, 71479, 225, 232, 261, 273, 0, 21686092),
(43, 'Mornor', 8, 105681, 32486, 36000, 29.00, 14.00, 63.00, 21.00, 30.00, 108.00, 30000, 0, 0, 644051, 278, 93, 606, 229, 0, 21691522),
(44, 'Malian', 7, 103212, 21836, 28000, 14.50, 17.00, 28.00, 36.50, 32.00, 88.00, 12215, 0, 0, 232909, 242, 145, 175, 66, 0, 21690446),
(45, 'Malbrum', 6, 77175, 17749, 21000, 49.00, 31.00, 58.00, 125.00, 25.00, 15.00, 29784, 0, 0, 24608, 862, 685, 456, 491, 0, 21693111),
(46, 'Atalwatu', 5, 89890, 10010, 15000, 33.00, 15.00, 21.50, 7.50, 23.50, 42.50, 13144, 0, 0, 358517, 94, 178, 185, 144, 0, 21689013);



