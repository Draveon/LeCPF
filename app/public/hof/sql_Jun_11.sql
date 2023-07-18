CREATE TABLE `11jun_guildes_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

INSERT INTO `11jun_guildes_1` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Alliés de l`Ombre', 'Outre-Mer', 7, 21443802, 'http://img210.imageshack.us/img210/5494/cimetierel.jpg', 'Phyleas', 'Depuis le départ de Cassandre, la barde schizophrène jadis cheffe des Saltimbanques de Kalamai, un grand bouleversement avait eu lieu au sein de sa communauté. La Nécromancienne Cendrine au passé tumultueux avait accepté de prendre en charge les combattants déchus au nom du lien familial qui unissait les deux femmes.

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
- partage des rapports de combat et d`espionnage.', 335766, 'http://saltimbanques.forumactif.com'),
(3, 'L`Ordre Célestial', 'Scitopole', 7, 21443864, 'http://i64.servimg.com/u/f64/13/74/94/60/celest10.jpg', 'Dalan', 'Un homme vêtu d’une longue cape ternie par les intempéries, bâton à la main, se tenait devant les majestueuses forteresses, maintenant en ruines, du peuple Célestial d’Etimnon. La figure avançait d’un pas lourd; autant ralenti par ce qui semblait être un fardeau psychologique, que par l’imposant bouclier qu’il tenait avec lassitude dans son autre main… Un bouclier que portaient fièrement les Paladins, à une certaine époque, semble-t-il...

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

Lieu de rassemblement : http://celestial.forumactif.com/', 430946, 'http://celestial.forumactif.com/forum.htm'),
(4, 'L`Orchidée', 'Thassopole', 8, 21443915, 'http://fr.academic.ru/pictures/frwiki/67/Claudius_II_coin_%28colourised%29.png', 'Ela&iuml;os', '« Jour de marché dans la cité impériale,
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

N.B. : Les rapports de combats et les rapports d\'espionnage sont importants à transmettre ;)', 157504, 'http://orchideemarchande.forumparfait.com/'),
(5, 'L`Ordre de So', 'Prévèze', 5, 21444005, 'http://www.halloweens.net/client/4256/prod/VS_4256_828_1160811630.jpg', 'Irkos', 'Une voix lugubre retentit. Elle déclame des mots. Et ces mots font des phrases. Et ces phrases ont un sens. Quoique.
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
', 156362, 'http://ordredesbouchers.forumparfait.com/'),
(6, 'L`Union des Citoyens', 'Vénopole', 13, 21445160, 'http://r27.imgfast.net/users/2712/57/63/34/album/uc11.png', 'Daneel', 'A nouveau, Kalamaï avait été bouleversée, ravagée en l`espace d`une nuit. Des anciens royaumes ne restaient que les mémoires et quelques écrits. 

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
Écrire au chef de l`alliance ou poster sur le forum pour postuler.', 937991, 'http://union-des-citoyens.positifforum.com/forum.htm://'),
(7, 'L`Ordre des Templiers de la Loi Empirique', 'Outre-Mer', 10, 21455504, 'http://i89.servimg.com/u/f89/12/69/42/73/tour310.jpg', 'T&ecirc;te-Plate', 'Les Templiers de la Loi Empirique, rassemble les Templiers de Kalamaï.

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

-Les païens (les autres classes) sont invités à nous rejoindre pour nourrir les flammes du bucher. ', 324949, 'http://ordredespurs.forumgratuit.fr'),
(9, 'Les Augures Boréals', 'Etimnon', 8, 21526433, 'http://i137.photobucket.com/albums/q239/Ariane_Maella/images.jpg', 'Enephia', 'La guerre… L’escroquerie… La mesquinerie…

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
', 279429, 'http://augures-boreals.forumgratuit.ca'),
(11, 'Les Ligues Unifiées', 'Zakinthe', 4, 21624073, 'http://www.noelshack.com/uploads/images/9442766748888_result.jpg', 'Criton', 'Les Ligues Unifiées des Négociants Libres de Zakinthe, parfois connues sous le nom des ligues de Zakinthe, les ligues unifiées, ou simplement des ligues, sont une organisation qui dirige Zakinthe depuis l’ascension de Megiddo. 
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

', 89377, 'http://'),
(14, 'L ` Essence du Mal', 'Etimnon', 6, 21753571, 'http://drakonis.org/uploads/7/v/0/7v0ng7m0e3/2010/09/21/20100921160152-7b546e48.jpg', 'Tchinga', 'Dans les fins fonds d` Etimnon,
Se terraient viles et mesquines créatures.
Ces dernières gouvernées, logées, nourries et blanchies,
Par d’obscures et fourbes ducs et duchesses.


Chaque acte et pensée négative avaient leur effet papillon…
Trahison, avarie, infamie constituaient leur nature.
Nul n’était à l’abri de subir le pire de leurs agissements réfléchis,
Fort allait se répandre ce fléau et presque inhumaine semblait telle faiblesse !

Un jour, les Chefs décidèrent de préparer moult bataillons,
Et d’entamer de grandes aventures vers les riches pâtures,
Pillages, sièges et conquêtes se feraient dans un élan de folie!
Toutes provinces connaitraient alors douleurs et chaos derrière ses forteresses !

Telle une peste se déplaçant à l`allure d`un typhon,
Ce qu’on appelait le Mal d` Etimnon terrasserait par l`usure...
D’apparence charmeuse, de l’intérieur ce fruit en demeurerait pourtant bel et bien pourri,
Complexe et ambigüe, ainsi il progresserait à coups de fouets et par douces caresses.

Le bien et le mal n’ont-ils pas chacun leurs raisons ?
Une île sans guerres est elle pure ou impure ?
Zizanie, cris, ignominie peuvent ils être gratuits envers autrui ?
Ainsi naquit l’Essence du Mal en Kalamaï à l’aide et contre ses Dieux et Déesses.', 'L’ Essence du Mal est une guilde aux aspirations maléfiques  qui ne demande qu’à s’épanouir dans cette voie à travers tout Kalamaï. 
Auto alimentée dans son cercle vicieux, cette armada peut s’avérer inhospitalière envers de nombreux peuples, le mal engendre souvent le mal…
Cependant cette guilde n’est pas à l’abri d’une terrible mutation, en bien, qui sait…

Le destin le dira.', '- Se conformer à l`organisation interne et  mesquine de l`armada.
- La communication se fera bien souvent par messagerie IG, le Mal opère en toute discrétion !
- Respecter les stratégies convenues entre membres. La coopération et la compassion sont de mise pour nourrir l’efficacité du Mal. 
- Apporter un avatar et une signature "evil" IG, pour rester fidèle au background.
', 182589, 'http://essm.forumgratuit.fr/');



CREATE TABLE `11jun_guerres_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

INSERT INTO `11jun_guerres_1` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
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

Car, après tout, ce monde n`en est-il pas un de communauté et d`équipe?', 'L`Ordre Célestial', 21518041, 298629, 79678, 21551939, 264581, 73197, 'xp', 60000, 'pertePuiss', 1100000, '', 0, 'AND', 'Butin total', 236795, '', 0, '', 0, '', '', 37, 12, 15, 56, 50.2313565974, 55.8729231362, 52.708461271, 52.0132466502, 61731, 58786, 2000653, 1396605, 257451, 303021, 95220, 124011, 81872, 79918, 0, 0, 536651, 681953, 313, 404, 'Pyaray', 'T&ecirc;te-Plate', 1167, 11348, 'T&ecirc;te-Plate', 'T&ecirc;te-Plate', 0, '|Shalimare|', '|Vezk|'),
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

Fitzebist !', 'Les Augures Boréals', 21601090, 186659, 194208, 21648496, 213115, 278258, 'tues', 100000, 'nbrvict', 150, 'pertePuiss', 1000000, 'AND', 'Butin total', 3953090, '', 0, '', 0, '', '', 40, 14, 25, 145, 50.9583030358, 160.164520216, 62.0609581741, 150.732060072, 164151, 192600, 5448780, 4025414, 365388, 922413, 201808, 428139, 117596, 327628, 1.64609513401, 7.48620337348, 1728612, 3837545, 353, 1834, 'Olg le Gras', 'Arkatros', 1250, 8991, 'Olg le Gras', 'Arkatros', 0, '|Han Main-Tranchante|Erchael|', ''),
(16, 'pna', 'termine', 'L`Union des Citoyens', 'L`Union des Citoyens', 'L`Orchidée', '', '', 'Salutations.

Afin de nous remettre de la guerre, je vous propose un PNA d\'une durée équivalente, soit un peu plus d\'une semaine.', '', 21609671, 689057, 268285, 21641134, 613338, 243696, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 1, 0, 0, 0, 1.5, 0, 1.5, 0, 46523, 2774, 242006, 601573, 63002, 0, 35390, 0, 33985, 0, 0, 0, 100000, 0, 136, 0, 'Turfel', 'Meissner', 46523, 3424, 'Turfel', 'Turfel', 0, '', ''),
(17, 'pna', 'encours', '', 'L`Orchidée', 'Les Augures Boréals', '', '', 'L\'Orchidée essaye s\'est déplacé jusqu\'à vos frontières afin de discuter avec vous d\'un pacte de  non agression. Notre voix ne semble pas avoir été entendue...

D\'ou la présente missive.

Nous avons étudié les lois dictant vos armées, l\'histoire de votre groupe, et les contacts que nous avons eu par le passé nous amènent à vous proposer un pacte.

J\'espère que ce sera le début d\'un rapprochement...

Orium, au nom de chacun des membres de l\'Orchidée.', '', 21625500, 288483, 205122, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 9, 0, 0, 0, 6.4705615122623, 0, 6.4705615122623, 0, 0, 0, 0, 623, 0, 0, 2196, 0, 2313, 0, 6.4705615122623, 0, 119640, 0, 34, 0, '', '', 0, 0, '', '', 0, '', ''),
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
(23, 'guerre', 'termine', '', 'L`Ordre de So', 'L`Orchidée', '', '', 'Chez nous autres bouchers, on aime bien mettre d`la verdure avec not` tambouille, de temps en temps.

Des champignons, des carottes, des patates, du laurier...

Mais c`est trop (b)anal (hahahahaha...) alors nous innovons avec des... orchidées.

(Oui je sais, ma chute est à chier. Et, pour être poli, je ne dirai pas ce que j`aurais très bien pu dire :) )

Quoiqu`il en soit, les Bouchers repartent à la cueillette !

Fitzebist ! ', 'L`Ordre de So', 21668722, 153139, 241545, 21738105, 163803, 359253, 'nbrvict', 150, '', 0, '', 0, 'AND', 'Butin total', 5561942, '', 0, '', 0, '', '', 176, 15, 5, 78, 159.05934821919, 86.49071935561, 150.29887737496, 95.963219564787, 75448, 178236, 3743605, 2709966, 843432, 569686, 413922, 423723, 320343, 272505, 99.606005423837, 7.470729589013, 4481414, 3443214, 7117, 2170, 'Irkos', 'Tulkas', 645, 14515, 'Tulkas', 'Tulkas', 0, '|Olg le Gras|', '|Dyospiros|'),
(24, 'guerre', 'termine', '', 'Les Alliés de l`Ombre', 'L`Union des Citoyens', '', '', '

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

« Tu vois Daneel, j`avais raison, je ne dirais pas "encore", je passerais pour un prétentieux, mais j`avais raison ! »', 'L`Union des Citoyens', 21678899, 550414, 696190, 21694282, 350255, 455531, 'xp', 150000, 'nbrvict', 75, 'acres', 2000000, 'AND', 'Butin total', 3750715, '', 0, '', 0, '', '', 204, 32, 36, 176, 213.28926785569, 217.97037882033, 219.36763332536, 213.09706849367, 321105, 417549, 9532025, 9718164, 1841614, 2002445, 296179, 342011, 196357, 221658, 39.124368305166, 25.416321526475, 5529302, 6682399, 4935, 4682, 'Malorus', 'Turfel', 5797, 22444, 'Malorus', 'Turfel', 0, '', '|Na&euml;lys|Tetrahyd|'),
(25, 'guerre', 'termine', '', 'L`Ordre Célestial', 'Les Alliés de l`Ombre', '', '', 'Scitopole se réveille,
Scitopole émerveille,
Toujours là et toujours forte,
Comme une poignée de porte,

Aller petits verrous de l`ombre tremblez de trouille !
Sortez votre huile portails de jardins !
Nos mecanismes ne sont pas éteints !
Les portes de l`Ordre ne souffrent d`aucune rouille !

Les lumières célestes éclairent notre fier paillasson,
Vous autres du cimetière, vous grouillez de poussière,
Une massue ne nous atteint sans sonner l`unisson !
Entrée à pestiférés, tu n`as même plus de charnières !

Grincez petits verrous de l`ombre tremblez de trouille !
Sortez votre huile portails de jardins !
Nos mecanismes ne sont pas éteints !
Les portes de l`Ordre ne souffrent d`aucune rouille !

Les portes de l`Ordre ne souffrent d`aucune trouille !
', 'L`Ordre Célestial', 21717487, 432532, 541701, 21729974, 441725, 696685, 'xp', 140000, 'pertePuiss', 4000000, '', 0, 'AND', 'Butin total', 5638892, '', 0, '', 0, '', '', 30, 8, 9, 71, 31.081318742515, 81.324662030143, 31.667457078965, 80.301371478034, 141457, 180468, 3765027, 4561259, 182925, 901354, 143533, 237552, 76021, 177080, 0, 19.853536008545, 2035078, 3165562, 615, 1674, 'Dalan', 'Malorus', 5761, 15856, 'Dalan', 'Malorus', 0, '', '|Cassandre|'),
(26, 'guerre', 'termine', '', 'L`Ordre de So', 'L`Ordre des Templiers de la Loi Empirique', '', '', 'Beuh... Nous on a rien compris à votre blabla d`empirisme... Mais si y`a bien une chose de sûr, c`est que le Boudin Malin est parti, et que maintenant c`moi le chef !

Et j`annonce que l`heure de la guerre a SOnné ! Vos discours SOmnolent ne vous sauveront pas ! Maintenant, c`est parti pour la SOd... !

Les Bouchers repartent en chasse !

Fitzebist ! ', 'L`Ordre des Templiers de la Loi Empirique', 21747245, 132174, 257969, 21751770, 131369, 234092, 'temps', 21790445, 'nbratta', 500, '', 0, 'OR', 'Butin total', 4420868, '', 0, '', 0, '', '', 10, 2, 3, 6, 9.5908770560563, 9.3846812673848, 10.162995198344, 7.9953697284165, 15718, 22336, 431123, 504573, 89101, 61122, 29075, 40623, 16322, 23731, 0.86230531814531, 3.5783058345364, 382746, 238223, 166, 88, 'Irkos', 'L&eacute;&ouml;raz', 7018, 2699, 'L&eacute;&ouml;raz', 'Irkos', 0, '', '');



CREATE TABLE `11jun_joueurs_bonus_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2628 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2628 ;

INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(10, 'Maher', 16, 53, 10, 28, 44, 39, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 95, 339, 639306, 0, 0, 0, -1, -1, 1, 1, 67, 7, 0, 5, 1, 5, 2),
(11, 'Titlan', 88, 51, 1, 0, 26, 16, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21584315, 0, 189, 21, 82429, 0, 0, 0, -1, -1, 1, 1, 9, 4, 9, 6, 0, 2, 1),
(12, 'Vigrid', 93, 50, 78, 20, 47, 34, 1, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21451213, 0, 275, 208, 411198, 0, 0, 1, -1, -1, 1, 0, 40, 2, 0, 17, 0, 0, 9),
(29, 'Lissana', 0, 30, -3, 150, 111, 201, 4, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443597, 0, 182, 181, 207204, 0, 0, 1, 50, 50, 0, 0, 485, 0, 0, 0, 22, 3, 0),
(35, 'Meissner', 83, 40, 143, 0, 3, 0, 0, 100, 30, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21443640, 0, 140, 460, 207596, 0, 0, 1, -1, -1, 1, 0, 903, 28, 0, 0, 0, 0, 0),
(42, 'Ora&iuml;a', 118, 91, 92, 0, 20, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21559358, 0, 242, 104, 85658, 0, 0, 0, -1, -1, 1, 1, 2, 1, 3, 14, 0, 0, 0),
(45, 'Zhia', 1, 8, 5, 0, 12, 2, 0, 100, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21444135, 0, 276, 179, 84624, 0, 0, 0, 80, 80, 1, 1, 1, 0, 0, 0, 0, 12, 0),
(58, 'Egleria', 55, 66, 7, 65, 106, 51, 0, 80, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21446846, 0, 234, 151, 376072, 0, 0, 0, 80, 120, 1, 0, 33, 1, 3, 4, 3, 17, 1),
(68, 'Kiminou', 152, 71, 159, 74, 53, 0, 0, 80, 50, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21444176, 0, 359, 287, 220996, 0, 0, 0, 20, 30, 1, 0, 225, 2, 0, 44, 0, 0, 0),
(71, 'T&ecirc;te-Plate', 94, 51, 100, 147, 86, 68, 1, 60, 30, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21455345, 0, 157, 335, 379190, 0, 0, 0, 30, 30, 1, 0, 23, 0, 20, 11, 0, 7, 6),
(86, 'Lothadith', 0, 9, 53, 28, 58, 176, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443629, 0, 251, 92, 205606, 0, 0, 0, -1, -1, 0, 0, 93, 0, 0, 0, 23, 0, 0),
(88, 'Shaugan', 0, 0, 3, 0, 12, 16, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21657648, 0, 63, 131, 278494, 0, 0, 1, -1, -1, 1, 1, 15, 0, 5, 3, 1, 4, 2),
(89, 'Argazel', 66, 30, 15, 100, 155, 316, 5, 90, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443807, 0, 102, 247, 351138, 0, 0, 0, 20, 30, 1, 1, 270, 0, 0, 8, 0, 0, 22),
(92, 'Turfel', 59, 30, 0, 50, 30, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21501775, 0, 193, 170, 1853036, 0, 0, 0, 50, 50, 1, 0, 1403, 1, 15, 0, 0, 0, 50),
(93, 'Danahyl', 3, 21, 44, 36, 35, 104, 0, 90, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21447003, 0, 134, 151, 402405, 0, 0, 0, 20, 50, 0, 0, 28, 5, 5, 3, 1, 5, 6),
(98, 'Nelvin', 36, 12, 117, -2, 15, 12, 0, 100, 80, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21450036, 0, 101, 150, 426692, 0, 0, 1, -1, -1, 0, 0, 8, 0, 0, 21, 0, 0, 0),
(116, 'Ge&iuml;nfrindel', 6, 21, 27, 14, 36, 30, 6, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445317, 0, 101, 280, 1172057, 0, 0, 0, -1, -1, 1, 1, 112, 2, 6, 0, 5, 7, 1),
(119, 'Barbouza', 55, 29, 45, 0, 27, 91, 0, 50, 50, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447192, 0, 145, 446, 1291049, 0, 0, 1, 80, 80, 0, 0, 39, 5, 0, 4, 9, 1, 3),
(120, 'Aub&eacute;rion', 22, 44, 101, 69, 66, 87, 0, 70, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443561, 0, 155, 266, 699695, 0, 0, 0, 50, 50, 1, 1, 39, 0, 0, 11, 9, 0, 7),
(125, 'Lhito', 165, 95, 106, 50, 4, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21443678, 0, 454, 421, 293573, 0, 0, 1, -1, -1, 0, 0, 47, 4, 28, 0, 0, 2, 6),
(131, 'Dalan', 140, 91, 39, 66, 23, 28, 2, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21453690, 0, 169, 199, 298510, 0, 0, 0, 20, 30, 1, 0, 67, 23, 17, 6, 0, 1, 0),
(132, 'Malorus', 12, 90, 136, 139, 128, 163, 0, 50, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21444290, 0, 262, 342, 269857, 0, 0, 1, 30, 30, 1, 0, 354, 3, 0, 12, 2, 4, 23),
(133, 'Erios', 17, 34, 89, 8, 42, 6, 0, 100, 80, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443902, 0, 225, 322, 324745, 0, 0, 1, -1, -1, 0, 0, 0, 3, 16, 0, 0, 3, 0),
(136, 'Lirth Evendil', 50, 19, 80, 8, 0, 0, 0, 90, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 208, 269, 219902, 0, 0, 0, -1, -1, 1, 0, 5, 3, 0, 24, 0, 0, 0),
(140, 'Ananta', 28, 33, 14, 18, 9, 25, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 213, 101, 175094, 0, 0, 1, -1, -1, 1, 1, 3, 2, 2, 3, 1, 0, 1),
(144, 'Irkos', 116, 97, 61, 50, 35, 16, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443870, 0, 160, 375, 222081, 0, 0, 1, -1, -1, 1, 0, 37, 0, 2, 14, 0, 4, 6),
(145, 'Phyleas', 130, 89, 111, 24, 23, 0, 0, 70, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445026, 0, 356, 388, 372464, 0, 0, 0, 50, 50, 1, 0, 44, 40, 1, 5, 0, 0, 0),
(150, 'Kahzerya', 32, 107, -12, 74, 78, 0, 6, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444302, 0, 266, 404, 213842, 0, 0, 0, -1, -1, 1, 1, 118, 0, 2, 10, 0, 10, 8),
(161, 'Marr', 84, 74, 30, 0, 9, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21472054, 0, 174, 142, 260613, 0, 0, 1, 50, 50, 0, 1, 23, 0, 0, 17, 0, 0, 0),
(162, 'Xelios', 24, 6, 0, 0, 26, 35, 0, 80, 70, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21443821, 0, 67, 100, 407742, 0, 0, 1, -1, -1, 1, 1, 21, 0, 7, 0, 0, 3, 2),
(167, 'Klaasninas', 30, 50, 0, 0, 30, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21446750, 0, 322, 236, 335404, 0, 0, 0, 40, 40, 0, 0, 12, 12, 18, 0, 0, 3, 0),
(168, 'Altharam', 116, 110, 5, 13, 27, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444026, 0, 242, 141, 189011, 0, 0, 0, -1, -1, 1, 0, 8, 6, 17, 0, 0, 0, 0),
(173, 'Hulricht', 112, 65, 98, 52, 25, 0, 0, 100, 70, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21443974, 0, 303, 372, 327714, 0, 0, 1, 40, 40, 1, 0, 31, 37, 0, 0, 0, 0, 0),
(181, 'Fourbinas', 0, 12, 13, 140, 107, 107, 12, 80, 80, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21443959, 0, 176, 176, 170593, 0, 0, 0, 40, 50, 0, 0, 417, 0, 0, 0, 1, 22, 0),
(183, 'Axeolu', 37, 0, 0, 12, 0, 8, 0, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443976, 0, 167, 268, 301637, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 6, 3, 6, 2),
(187, 'Boubi', 21, 18, 24, 0, 17, 23, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21444197, 0, 133, 122, 81418, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 10, 0, 12, 0),
(197, 'Leslie', 2, 10, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 124, 314, 356203, 0, 0, 1, -1, -1, 1, 1, 0, 8, 6, 0, 4, 0, 1),
(199, 'Benihime', 19, 4, -2, -5, 128, 113, 5, 100, 20, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444113, 0, 200, 350, 222614, 0, 0, 0, 30, 40, 0, 1, 151, 0, 0, 5, 9, 21, 1),
(204, 'Ovelia', 72, 102, 33, 6, 53, 0, 0, 80, 60, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444321, 0, 212, 76, 185690, 0, 0, 1, -1, -1, 0, 0, 7, 20, 1, 0, 1, 0, 0),
(217, 'Tylert', 40, 35, 51, 2, 33, 0, 0, 70, 20, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21446751, 0, 148, 166, 411976, 0, 0, 0, 50, 50, 0, 1, 11, 29, 0, 0, 0, 0, 0),
(225, 'Ther`glat', 3, 10, 0, 12, 6, 0, 0, 100, 40, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21624355, 0, 147, 111, 251362, 0, 0, 1, -1, -1, 1, 0, 91, 14, 3, 11, 0, 0, 0),
(231, 'Galigonidd', 127, 47, 60, 35, 35, 35, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21448597, 0, 99, 242, 516077, 0, 0, 1, -1, -1, 1, 1, 47, 11, 6, 1, 0, 0, 0),
(234, 'Poupou', 36, 0, 62, 3, 22, 43, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445036, 0, 128, 155, 147106, 0, 0, 0, -1, -1, 1, 0, 16, 6, 1, 0, 16, 0, 0),
(235, 'Dartoil', 4, 12, 0, 1, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445172, 0, 67, 86, 189350, 0, 0, 0, -1, -1, 1, 0, 9, 10, 0, 0, 0, 0, 0),
(236, 'Tefeiri', 3, 32, 50, 0, 0, 30, 0, 90, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21747759, 0, 336, 249, 285242, 0, 0, 1, -1, -1, 1, 1, 1, 8, 1, 6, 5, 0, 0),
(239, 'Luna', 64, 21, 0, 12, 48, 37, 0, 90, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 82, 215, 509481, 0, 0, 1, -1, -1, 1, 0, 26, 4, 11, 0, 0, 0, 0),
(241, 'Nadras', 0, 15, 10, 3, 18, 130, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21447908, 0, 236, 66, 222094, 0, 0, 0, 50, 50, 0, 1, 38, 0, 0, 0, 20, 0, 0),
(242, 'Thelv', 3, 0, 5, -7, 126, 194, 0, 90, 80, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445186, 0, 129, 117, 290545, 0, 0, 1, 20, 30, 0, 0, 99, 0, 0, 9, 4, 10, 0),
(256, 'Husam', 10, 0, 0, 0, 12, 15, 2, 60, 30, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21464117, 0, 186, 202, 175895, 0, 0, 0, 80, 80, 1, 1, 14, 0, 0, 6, 14, 1, 0),
(258, 'Febus', 20, 30, 45, -16, 75, 30, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445510, 0, 296, 276, 78523, 0, 0, 0, 50, 50, 0, 1, 18, 0, 0, 0, 1, 1, 21),
(267, 'Dacapo', 18, 25, 2, 3, 19, 14, 2, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448624, 0, 155, 113, 280981, 0, 0, 1, -1, -1, 1, 1, 42, 6, 1, 4, 1, 5, 0);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(270, 'Desmondis', 2, 14, 10, 28, 10, 71, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 199, 207, 414459, 0, 0, 0, -1, -1, 1, 0, 4, 6, 9, 1, 1, 3, 2),
(278, 'Zahel', 4, 4, 9, 43, 44, 100, 3, 80, 50, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447081, 0, 408, 270, 224299, 0, 0, 0, -1, -1, 0, 0, 111, 0, 0, 26, 3, 1, 1),
(280, 'Rufbumpa', 20, 20, 13, 0, 0, 12, 0, 60, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21455553, 0, 201, 182, 163455, 0, 0, 0, 20, 100, 0, 1, 9, 22, 0, 0, 0, 0, 0),
(282, 'Kalista', 95, 113, 45, 31, 4, 0, 5, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 215, 229, 122448, 0, 0, 0, -1, -1, 1, 0, 62, 4, 15, 4, 0, 0, 1),
(283, 'Gelthasar Belt', 51, 101, 75, 120, 65, 12, 2, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21446471, 0, 206, 578, 72313, 0, 0, 0, -1, -1, 1, 1, 28, 0, 0, 4, 0, 1, 26),
(297, 'Bartor', 0, 0, 0, 0, 0, 0, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 21468695, 0, 99, 107, 154806, 0, 0, 1, -1, -1, 1, 1, 2, 0, 0, 21, 0, 0, 0),
(300, 'Shadark', 78, 30, 89, 16, 0, 12, 2, 100, 50, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21599679, 0, 128, 274, 423073, 0, 0, 0, -1, -1, 1, 1, 44, 18, 0, 2, 0, 1, 0),
(302, 'L&eacute;otar', 34, 78, -6, 12, 55, 30, 2, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 351, 161, 233418, 0, 0, 1, -1, -1, 1, 1, 6, 6, 5, 0, 5, 0, 4),
(303, 'Gauerd&ocirc;me', -7, 27, 35, 1, 28, 32, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21462576, 0, 292, 161, 250447, 0, 0, 0, 40, 40, 0, 0, 99, 1, 1, 0, 4, 26, 1),
(314, 'Eleanora', 21, 4, 24, 50, 0, 50, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21449107, 0, 158, 192, 33278, 0, 0, 1, -1, -1, 1, 1, 0, 8, 1, 1, 8, 0, 2),
(345, 'Torme Morselame', 27, 16, 10, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21469665, 0, 180, 198, 27232, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 0, 0, 20, 0),
(349, 'Elanor', 89, 113, 115, 88, 69, 0, 0, 100, 20, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21448636, 0, 58, 323, 881281, 0, 0, 0, 20, 30, 0, 0, 190, 2, 2, 18, 2, 4, 0),
(385, 'Aratos', 39, 4, 20, 19, 46, 130, 5, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21452805, 0, 207, 180, 530284, 0, 0, 0, -1, -1, 1, 1, 80, 0, 0, 30, 0, 0, 0),
(386, 'Yelderick', 145, 123, 1, 28, 48, 0, 1, 100, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21449864, 0, 319, 400, 372769, 0, 0, 0, -1, -1, 1, 0, 113, 23, 6, 3, 0, 5, 2),
(408, 'Leorod', 57, 80, 0, 73, 33, 8, 2, 100, 50, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 132, 314, 418525, 0, 0, 1, 40, 60, 1, 1, 39, 0, 0, 0, 14, 4, 2),
(410, 'Birgenn', 37, 78, 83, 62, 15, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21475197, 0, 153, 261, 257701, 0, 0, 1, -1, -1, 1, 1, 23, 6, 9, 1, 0, 4, 3),
(423, 'Abert', 23, 41, 48, 16, 36, 64, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 500, 107, 253096, 0, 0, 0, -1, -1, 1, 1, 14, 3, 5, 5, 7, 0, 0),
(427, 'Koali', 33, 2, 4, 3, 24, 33, 0, 100, 100, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21663359, 0, 96, 102, 432000, 0, 0, 1, -1, -1, 1, 1, 23, 6, 8, 0, 1, 0, 0),
(439, 'Willi', 6, 10, 0, 1, 6, 0, 2, 70, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 198, 503342, 0, 0, 0, -1, -1, 1, 1, 12, 6, 2, 0, 0, 0, 0),
(465, 'Dachinos', 71, 21, 33, 28, 41, 41, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21753657, 0, 85, 122, 343082, 0, 0, 0, -1, -1, 1, 0, 0, 3, 7, 3, 1, 2, 1),
(481, 'Arcelane', 3, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 298, 27, 75843, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 15, 0, 0, 0),
(555, 'Kaerrawen', 21, 0, 20, 0, 0, 2, 2, 90, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21466638, 0, 130, 145, 375695, 0, 0, 1, 80, 80, 1, 1, 0, 2, 5, 11, 0, 0, 1),
(566, 'Bamdinas', -7, 19, 0, 40, 121, 273, 3, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21521820, 0, 258, 121, 307119, 0, 0, 0, 30, 40, 0, 0, 25, 0, 0, 0, 0, 0, 26),
(637, 'Mathaos', 119, 69, 24, 17, 13, 0, 6, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 21637400, 0, 108, 231, 406420, 0, 0, 1, -1, -1, 1, 0, 194, 4, 5, 1, 0, 7, 6),
(640, 'Mattai', 19, 10, 41, 8, 15, 8, 2, 100, 50, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21556625, 0, 139, 122, 333205, 0, 0, 0, 30, 60, 1, 1, 7, 2, 5, 4, 7, 0, 2),
(672, 'Jeffrey', 42, 49, 31, 87, 23, 0, 4, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21485718, 0, 175, 50, 402547, 0, 0, 0, -1, -1, 1, 1, 200, 4, 1, 6, 0, 0, 14),
(787, 'Dranthen', 19, 14, 24, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21500445, 0, 49, 162, 742258, 0, 0, 0, -1, -1, 1, 1, 11, 3, 2, 0, 5, 1, 1),
(815, 'Mollestho', 72, 67, 15, 0, 33, 0, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21508081, 0, 60, 210, 399849, 0, 0, 0, 50, 50, 1, 1, 29, 9, 0, 0, 4, 1, 0),
(848, 'Arkatros', 188, 184, 18, 0, 70, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21589680, 0, 126, 92, 434205, 0, 0, 0, -1, -1, 1, 1, 90, 10, 1, 21, 0, 0, 1),
(868, 'Arimane', 13, 11, 3, 1, 47, 84, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 70, 113, 356102, 0, 0, 0, -1, -1, 1, 1, 35, 0, 0, 0, 19, 1, 0),
(870, 'Xandre', 35, 23, 2, 0, 31, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21507557, 0, 127, 141, 267101, 0, 0, 0, -1, -1, 1, 1, 5, 1, 0, 16, 0, 0, 0),
(879, 'Vezk', 91, 73, 56, 0, 18, 31, 0, 40, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21527614, 0, 135, 221, 67512, 0, 0, 0, -1, -1, 1, 0, 6, 16, 4, 1, 0, 0, 0),
(911, 'Enephia', 0, 0, 2, 28, 0, 54, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21526022, 0, 102, 73, 288966, 0, 0, 0, -1, -1, 1, 1, 5, 0, 14, 0, 0, 9, 0),
(922, 'Malia', 13, 33, 22, 47, 78, 59, 0, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21519223, 0, 80, 66, 417594, 0, 0, 0, 20, 20, 0, 0, 22, 0, 8, 0, 0, 10, 0),
(930, 'Zaseo', 69, 76, 64, 50, 24, 0, 3, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21530419, 0, 239, 95, 175579, 0, 0, 0, -1, -1, 1, 1, 61, 1, 0, 26, 0, 0, 0),
(989, 'Salfalar', 45, 38, 66, 18, 61, 39, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 162, 111, 256831, 0, 0, 0, 20, 20, 0, 1, 69, 0, 0, 25, 0, 0, 0),
(1010, 'Herel', 27, 6, 5, 5, 6, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21528014, 0, 101, 212, 414220, 0, 0, 0, -1, -1, 1, 1, 16, 9, 4, 0, 2, 0, 0),
(1057, 'X&eacute;nox', 29, 39, 3, 3, 37, 16, 0, 100, 10, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21703668, 0, 122, 226, 242674, 0, 0, 1, -1, -1, 1, 1, 54, 0, 7, 0, 4, 7, 1),
(1067, 'Daneel', 106, 70, 41, 55, 64, 0, 1, 60, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21530452, 0, 166, 76, 338230, 0, 0, 0, 30, 30, 0, 0, 532, 30, 0, 0, 0, 0, 0),
(1122, 'Del&eacute;nia', 20, 99, 3, 0, 53, 12, 2, 80, 80, 0, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21533389, 0, 234, 20, 148082, 0, 0, 0, 50, 50, 0, 0, 222, 0, 1, 0, 0, 27, 0),
(1156, 'Yzeute', 21, 28, 24, 13, 4, 0, 2, 80, 70, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21541002, 0, 83, 144, 802830, 0, 0, 1, -1, -1, 1, 1, 18, 4, 2, 3, 1, 4, 2),
(1287, 'Nragax', 134, 37, 137, 64, 0, 0, 0, 80, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21547463, 0, 221, 113, 398723, 0, 0, 0, 20, 20, 0, 1, 1275, 31, 0, 1, 0, 0, 0),
(1403, 'Soreclis', 40, 47, 15, 15, 13, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21773885, 0, 172, 228, 601965, 0, 0, 1, 80, 80, 0, 0, 13, 3, 2, 6, 7, 1, 0),
(1409, 'Esteban', 88, 10, 74, 8, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21672998, 0, 99, 37, 182436, 0, 0, 0, 10, 10, 0, 1, 2, 11, 3, 1, 0, 0, 0),
(1411, 'Karyon', 4, 0, 35, -13, 94, 97, 2, 100, 10, 1, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21777740, 0, 227, 59, 310398, 0, 0, 1, 20, 50, 1, 1, 165, 0, 1, 12, 3, 8, 3),
(1412, 'Fouchier', 107, 135, 0, 50, 64, 73, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21566357, 0, 206, 109, 321140, 0, 0, 0, 20, 20, 0, 0, 4, 0, 1, 7, 0, 15, 2),
(1414, 'Criton', 30, 84, 4, 23, 6, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21560813, 0, 174, 194, 446986, 0, 0, 1, -1, -1, 1, 1, 12, 2, 4, 1, 0, 11, 2),
(1418, 'Basl', 21, 23, 15, 75, 4, 34, 14, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21750844, 0, 14, 41, 16583777, 0, 0, 0, -1, -1, 1, 1, 1146, 0, 0, 13, 0, 0, 0),
(1458, 'Yodine', 31, 14, 10, 5, 49, 33, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21608484, 0, 55, 76, 674018, 0, 0, 0, -1, -1, 1, 1, 15, 3, 7, 2, 3, 3, 5),
(1460, 'Alec', 29, 29, 25, 17, 34, 31, 0, 60, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21727927, 0, 218, 74, 284882, 0, 0, 0, 50, 50, 1, 1, 75, 0, 7, 5, 5, 1, 3),
(1469, 'Elm', 153, 93, 155, 136, 12, 12, 0, 60, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21567987, 0, 237, 65, 537317, 0, 0, 0, -1, 60, 0, 0, 104, 5, 14, 26, 0, 0, 12);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1470, 'Celithrand', 0, 0, 33, 0, 62, 43, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 72, 55, 278842, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 15, 0),
(1492, 'Osterate', 37, 66, 27, 15, 26, 8, 4, 80, 80, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21575245, 0, 117, 180, 499798, 0, 0, 1, 30, 70, 0, 0, 24, 8, 5, 2, 2, 0, 3),
(1512, 'Keldaran', 20, 12, 30, 0, 0, 0, 3, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21573902, 0, 155, 61, 111553, 0, 0, 1, -1, -1, 1, 1, 8, 0, 0, 18, 0, 0, 0),
(1519, 'Tirandilis', 72, 27, 128, 0, 3, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21580705, 0, 163, 105, 199024, 0, 0, 1, 40, 40, 1, 0, 13, 0, 8, 17, 0, 0, 0),
(1528, 'Saya', 95, 74, 40, 0, 10, 0, 0, 100, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21577608, 0, 71, 65, 21109, 0, 0, 1, -1, -1, 1, 0, 8, 2, 0, 8, 0, 0, 0),
(1549, 'Caym', 23, 39, 79, 15, 10, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21608540, 0, 130, 76, 644995, 0, 0, 0, -1, -1, 1, 0, 21, 1, 7, 0, 1, 7, 0),
(1550, 'N&auml;ta&euml;l', 132, 119, 30, 3, 30, 9, 2, 100, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21623401, 0, 240, 123, 436452, 0, 0, 0, -1, -1, 1, 1, 60, 2, 2, 13, 3, 0, 0),
(1583, 'Rhal', 16, 12, 32, 0, 13, 20, 0, 80, 80, 1, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21586785, 0, 62, 88, 70195, 0, 0, 1, -1, -1, 1, 0, 2, 3, 2, 8, 2, 0, 1),
(1611, 'Arthurik', 47, 21, 0, 0, 3, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21698899, 0, 62, 81, 222101, 0, 0, 0, -1, -1, 1, 1, 6, 17, 0, 2, 0, 0, 0),
(1627, 'Silayerr', 46, 2, 0, 12, 0, 14, 0, 100, 90, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21589631, 0, 83, 88, 480370, 0, 0, 1, -1, -1, 1, 0, 2, 3, 7, 4, 0, 4, 0),
(1667, 'Vylnius', 4, 0, 0, 3, 6, 21, 0, 30, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21612435, 0, 64, 180, 551257, 0, 0, 1, -1, -1, 1, 0, 4, 0, 14, 0, 0, 0, 0),
(1682, 'L&eacute;&ouml;raz', 3, 0, 0, 12, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21602478, 0, 99, 80, 393937, 0, 0, 1, 80, 150, 0, 0, 6, 6, 3, 7, 3, 0, 0),
(1685, 'Beltha&iuml;s', 3, 11, 15, 6, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21602607, 0, 37, 71, 118153, 0, 0, 0, -1, -1, 1, 1, 0, 9, 0, 3, 0, 0, 0),
(1700, 'Gaeldrech', 74, 58, 14, 18, 53, 0, 3, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21652627, 0, 89, 172, 338734, 0, 0, 1, -1, -1, 0, 1, 8, 3, 2, 5, 0, 4, 1),
(1747, 'Hordrin', 30, 30, 0, 0, 30, 0, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21625500, 0, 230, 36, 221755, 0, 0, 1, 20, 40, 0, 0, 8, 1, 27, 0, 0, 10, 0),
(1748, 'Baduit', 151, 84, 155, 86, 46, 12, 0, 70, 40, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21612532, 0, 205, 107, 433320, 0, 0, 0, 30, 60, 0, 0, 596, 9, 1, 14, 0, 7, 1),
(1755, 'Le Dougec', 61, 45, 44, 0, 4, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 88, 140, 529643, 0, 0, 0, -1, -1, 1, 1, 21, 7, 2, 1, 1, 1, 3),
(1773, 'Pyrazine', 43, 58, 120, -10, 126, 133, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21619197, 0, 279, 85, 652916, 0, 0, 0, -1, -1, 1, 1, 16, 6, 3, 10, 0, 0, 0),
(1784, 'Lineus', 29, 36, 0, 53, 21, 22, 0, 90, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21651077, 0, 79, 72, 450177, 0, 0, 1, -1, -1, 1, 1, 14, 6, 5, 2, 1, 2, 1),
(1795, 'Bornami', 59, 82, 90, 75, 58, 23, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21752033, 0, 83, 122, 594490, 0, 0, 1, 40, 70, 1, 0, 106, 0, 0, 0, 0, 0, 22),
(1809, 'Kal', 76, 91, 50, 0, 27, 29, 0, 70, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21647303, 0, 174, 121, 393182, 0, 0, 0, -1, -1, 1, 1, 1, 27, 2, 0, 0, 0, 0),
(1816, 'Han Main-Tranchante', 78, 95, 80, 65, 15, 0, 7, 70, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21626909, 0, 96, 63, 477265, 0, 0, 0, -1, -1, 1, 0, 30, 0, 0, 22, 0, 0, 0),
(1824, 'Aedorn', 31, 57, 70, 3, 79, 94, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21628430, 0, 97, 53, 406463, 0, 0, 0, 10, 30, 1, 0, 59, 0, 7, 0, 17, 1, 0),
(1827, 'Khiran', 41, 18, 2, 6, 11, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21631177, 0, 58, 117, 459615, 0, 0, 0, -1, -1, 1, 1, 25, 14, 0, 0, 0, 0, 0),
(1835, 'Krystophoros', 0, 83, -6, 12, 4, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21699308, 0, 44, 69, 467268, 0, 0, 1, -1, -1, 1, 1, 6, 0, 0, 7, 0, 7, 0),
(1838, 'Anwaman&euml;l', 28, 49, -12, 1, 12, 14, 2, 70, 50, 1, 'République', 'Thassopole', '', 'Aucune', 21633154, 0, 66, 109, 373398, 0, 0, 1, 40, 50, 1, 1, 9, 8, 3, 0, 0, 2, 0),
(1842, 'Cometa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 67, 70, 135282, 0, 0, 0, -1, -1, 1, 1, 4, 0, 0, 0, 0, 0, 7),
(1866, 'Agro', 157, 137, 128, 52, 61, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21636936, 0, 219, 60, 203010, 0, 0, 1, 40, 40, 1, 0, 340, 25, 0, 0, 0, 0, 0),
(1867, 'Maxliger', 35, 17, 3, 0, 34, 26, 4, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 121, 65, 462262, 0, 0, 1, -1, -1, 0, 0, 37, 0, 0, 15, 0, 0, 0),
(1883, 'Khane', 66, 15, 16, 18, 4, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21640311, 0, 46, 51, 90894, 0, 0, 0, -1, -1, 1, 1, 12, 1, 1, 8, 0, 0, 0),
(1922, 'Thaelion', 41, 4, 17, 12, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21641207, 0, 72, 79, 504578, 0, 0, 1, -1, -1, 1, 0, 3, 13, 0, 5, 0, 0, 0),
(1927, 'Koulibab', 3, 0, 0, 0, 0, 0, 0, 100, 60, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 29, 54, 630042, 0, 0, 1, -1, -1, 1, 1, 4, 3, 1, 0, 1, 0, 0),
(1945, 'Miroslaw', 163, 166, -7, 2, 128, 18, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21649335, 0, 152, 66, 212970, 0, 0, 0, 50, 50, 0, 0, 40, 9, 1, 1, 0, 11, 0),
(1953, 'Erchael', 100, 103, 98, 101, 28, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21647445, 0, 314, 86, 192831, 0, 0, 0, -1, -1, 1, 0, 336, 0, 0, 14, 0, 0, 0),
(1991, 'Aorphen', 36, 0, 0, 0, 5, 46, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 61, 47, 356373, 0, 0, 0, -1, -1, 1, 1, 0, 12, 0, 0, 2, 0, 0),
(1994, 'Aridius', 52, 8, 10, 24, 10, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21741099, 0, 55, 55, 265335, 0, 0, 1, -1, -1, 1, 1, 4, 3, 1, 3, 1, 1, 0),
(2007, 'Luinelinde', 23, 41, 11, 11, 39, 40, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21656071, 0, 126, 29, 401967, 0, 0, 1, 40, 60, 0, 1, 30, 8, 1, 4, 6, 1, 0),
(2017, 'Nargorath', 43, 64, -10, 17, 33, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21702921, 0, 167, 45, 266974, 0, 0, 1, -1, -1, 1, 1, 5, 15, 2, 1, 0, 0, 0),
(2021, 'Borfang', 17, 10, 0, 0, 0, 25, 0, 90, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21655962, 0, 75, 50, 380468, 0, 0, 0, 50, 60, 0, 1, 4, 7, 1, 1, 0, 1, 1),
(2028, 'L&eacute;nnih', 33, 9, 13, 0, 34, 50, 0, 100, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21664563, 0, 113, 42, 379788, 0, 0, 1, -1, -1, 1, 0, 8, 0, 0, 0, 21, 0, 0),
(2030, 'Archanos', 107, 102, 127, 8, 19, 6, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21660170, 0, 103, 59, 554832, 0, 0, 0, -1, -1, 1, 0, 1, 0, 11, 2, 0, 9, 0),
(2047, 'Aldere', 44, 21, 0, 0, 4, 0, 0, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21665445, 0, 68, 80, 184527, 0, 0, 1, -1, -1, 1, 1, 0, 7, 3, 2, 0, 0, 0),
(2048, 'Haelyn', 34, 28, 0, 3, 9, 46, 6, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 75, 95, 575706, 0, 0, 0, -1, -1, 1, 1, 13, 2, 4, 0, 6, 1, 0),
(2053, 'Barnoche', 88, 51, 40, 36, 23, 0, 6, 70, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21673193, 0, 90, 98, 392451, 0, 0, 1, -1, -1, 1, 1, 83, 4, 0, 10, 0, 0, 1),
(2056, 'Kalesh', 25, 33, 27, 32, 0, 0, 2, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 108, 68, 307762, 0, 0, 1, -1, -1, 1, 0, 20, 0, 4, 4, 0, 0, 7),
(2058, 'Kristan', 98, 95, 28, 62, 39, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21662569, 0, 99, 114, 421939, 0, 0, 0, -1, -1, 1, 0, 39, 0, 0, 20, 0, 0, 0),
(2067, 'Ashinseika', 32, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21664806, 0, 86, 22, 240922, 0, 0, 0, -1, -1, 1, 0, 0, 9, 0, 3, 0, 0, 0),
(2072, 'Richard Oraph', 0, 0, 10, 3, 0, 0, 0, 40, 50, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21667121, 0, 53, 72, 373568, 0, 0, 0, 70, 70, 0, 0, 1, 0, 0, 0, 13, 0, 0),
(2073, 'Artane', 33, 32, 33, 1, 13, 0, 2, 100, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21689430, 0, 20, 53, 666316, 0, 0, 0, -1, -1, 1, 1, 62, 1, 1, 5, 0, 1, 0),
(2074, 'Tureloitu', 2, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21668525, 0, 54, 71, 115018, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 10, 0, 0, 0),
(2112, 'Defraglaroche', 141, 71, 167, 99, 0, 0, 0, 100, 90, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21692779, 0, 197, 87, 682807, 0, 0, 0, 20, 20, 0, 0, 55, 37, 0, 0, 0, 0, 0);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2126, 'Trolur', 172, 67, 41, 0, 53, 0, 0, 90, 90, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21703312, 0, 226, 41, 239705, 0, 0, 1, 20, 30, 0, 0, 13, 1, 0, 32, 0, 0, 0),
(2134, 'Iorfel', 4, 2, 0, 0, 4, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21696056, 0, 11, 21, 223633, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 7),
(2143, 'Krijeks', 44, 100, -4, 12, 43, 0, 0, 100, 80, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 87, 89, 468295, 0, 0, 1, -1, -1, 1, 1, 6, 0, 18, 0, 0, 0, 0),
(2154, 'Seloma', 14, 8, 3, 4, 9, 16, 2, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21712911, 0, 41, 37, 658386, 0, 0, 0, 100, 100, 1, 1, 3, 1, 0, 5, 2, 1, 1),
(2175, 'Dyospiros', 43, 10, 13, 5, 80, 144, 3, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21682710, 0, 109, 32, 314901, 0, 0, 0, -1, -1, 1, 1, 9, 0, 1, 0, 10, 7, 0),
(2176, 'Na&euml;lys', 150, 48, 30, 0, 30, 0, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21686140, 0, 93, 34, 119373, 0, 0, 0, -1, -1, 1, 1, 2, 16, 0, 0, 0, 0, 0),
(2177, 'Melagius', 20, 2, 24, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21685638, 0, 28, 22, 261729, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 6, 0, 0),
(2182, 'Rotgh&auml;r', 27, 2, 0, -6, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 60, 48, 312561, 0, 0, 1, -1, -1, 1, 1, 8, 10, 0, 0, 1, 0, 0),
(2188, 'Lycane', 86, 23, 36, 0, 23, 0, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21687494, 0, 118, 39, 285941, 0, 0, 0, 20, 20, 0, 0, 11, 0, 0, 11, 0, 10, 0),
(2212, 'Styliann', 11, 46, 0, 24, 38, 21, 4, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21703316, 0, 103, 56, 787055, 0, 0, 1, -1, -1, 1, 0, 9, 14, 2, 0, 2, 0, 0),
(2229, 'Bidou', 17, 14, 16, 1, 30, 0, 3, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21737696, 0, 60, 35, 273521, 0, 0, 0, -1, -1, 1, 1, 3, 0, 10, 0, 0, 0, 0),
(2230, 'Aysa', 11, 8, 0, 0, 6, 0, 0, 100, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 95, 43, 112416, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 8, 0, 0, 0),
(2237, 'Wisclicenus', 10, 19, 22, -10, 18, 6, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21706292, 0, 89, 102, 499594, 0, 0, 0, -1, -1, 1, 0, 1, 4, 3, 2, 1, 0, 0),
(2254, 'Sildhur', 46, 27, 67, 58, 14, 6, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21698942, 0, 42, 16, 207720, 0, 0, 0, 20, 20, 0, 0, 5, 15, 0, 0, 0, 0, 0),
(2258, 'Tonimiguel', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21713863, 0, 1, 57, 1340, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 1, 0, 0),
(2259, 'Lobless', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21701799, 0, 13, 41, 53328, 0, 0, 0, -1, -1, 1, 1, 0, 4, 2, 0, 2, 2, 0),
(2264, 'Arum', 16, 10, 0, 12, 30, 14, 0, 10, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 23, 3, 116370, 0, 0, 0, 10, 10, 1, 1, 1, 0, 0, 1, 1, 2, 0),
(2267, 'Skaad', 62, 32, 29, 12, 42, 6, 0, 70, 50, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21701294, 0, 79, 32, 424281, 0, 0, 0, -1, -1, 1, 1, 13, 2, 2, 1, 2, 2, 2),
(2268, 'Bahumuth', 32, 45, 65, 0, 13, 10, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21762136, 0, 75, 32, 672408, 0, 0, 0, -1, -1, 1, 0, 7, 0, 0, 12, 0, 0, 0),
(2269, 'Fosth', 2, 0, 2, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21722633, 0, 63, 34, 343576, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 4, 0, 0, 0),
(2280, 'Arongrim', 22, 6, 21, 1, 10, 0, 5, 100, 50, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21709892, 0, 80, 23, 342526, 0, 0, 0, 40, 40, 1, 1, 3, 4, 0, 10, 0, 0, 0),
(2288, 'Elrendir', 1, 0, 0, 0, 0, 2, 0, 70, 70, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21712803, 0, 44, 31, 357718, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 2, 5, 0, 1),
(2294, 'Pelli', 32, 16, 0, 3, 15, 0, 0, 80, 80, 1, 'République', 'Thassopole', '', 'Aucune', 21717767, 0, 33, 41, 443123, 0, 0, 1, -1, -1, 1, 1, 6, 1, 1, 1, 4, 2, 1),
(2309, 'Baalack ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 4, 11, 8022, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2314, 'Saylith', 16, 14, 5, 0, 24, 32, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21734064, 0, 25, 11, 491700, 0, 0, 0, -1, -1, 1, 1, 3, 5, 1, 1, 2, 2, 3),
(2315, 'Sillegue', 18, 9, 14, 0, 4, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21712079, 0, 49, 8, 284056, 0, 0, 1, -1, -1, 1, 1, 5, 5, 2, 1, 0, 2, 0),
(2331, 'Kzerk', 23, 4, 26, 0, 0, 0, 0, 50, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21780548, 0, 64, 50, 1028525, 0, 0, 1, 30, 30, 1, 1, 5, 0, 1, 0, 3, 5, 1),
(2333, 'Jessym', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21721742, 0, 15, 49, 35955, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(2335, 'Kailern', 2, 0, 30, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21715872, 0, 20, 50, 74301, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 6, 0, 0, 0),
(2337, 'Maria', 9, 32, 10, 62, 12, 76, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 74, 13, 259102, 0, 0, 0, -1, -1, 1, 1, 3, 0, 2, 3, 2, 1, 0),
(2343, 'Taurn', 67, 83, 150, 86, 54, 23, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21717880, 0, 150, 40, 188084, 0, 0, 0, -1, -1, 1, 0, 338, 0, 0, 22, 0, 0, 3),
(2345, 'Mifour', 1, 10, 2, 0, 0, 2, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21730439, 0, 31, 21, 348215, 0, 0, 0, -1, -1, 1, 1, 0, 2, 2, 0, 3, 0, 0),
(2350, 'Bobth', 22, 15, -10, 0, 6, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 17, 23, 214616, 0, 0, 0, -1, -1, 1, 1, 6, 2, 0, 0, 3, 1, 0),
(2356, 'Thorgrim', 31, 2, 30, 0, 4, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21720385, 0, 21, 26, 161493, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 8, 0, 0, 0),
(2362, 'Safer', 16, 0, 0, 3, 7, 26, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21771726, 0, 35, 18, 119954, 0, 0, 0, -1, -1, 1, 1, 18, 0, 0, 7, 0, 0, 0),
(2366, 'Laao', 19, 26, 16, -10, 25, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21726599, 0, 131, 24, 286634, 0, 0, 0, 20, 30, 0, 0, 15, 0, 0, 0, 0, 0, 11),
(2371, 'Siez', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21738859, 0, 5, 34, 7989, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2378, 'Physsiallis', 0, 30, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 22, 5, 100909, 0, 0, 1, -1, -1, 1, 1, 0, 5, 0, 0, 0, 0, 0),
(2381, 'Netenmeth', 19, 10, 24, 0, 0, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21740962, 0, 71, 25, 476898, 0, 0, 0, -1, -1, 1, 1, 2, 0, 7, 0, 0, 0, 2),
(2384, 'Enylak', 1, 0, 0, 0, 0, 32, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 15, 14, 95559, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 1, 0, 0, 0),
(2385, 'Viviano', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 35, 25, 109413, 0, 0, 0, 150, 150, 1, 1, 0, 1, 2, 0, 0, 0, 0),
(2391, 'Elarinya', 1, 0, 0, 0, 0, 2, 0, 50, 50, 0, 'République', 'Thassopole', '', 'Aucune', 21734962, 0, 19, 22, 8192, 0, 0, 0, 40, 90, 1, 1, 0, 0, 1, 0, 1, 0, 0),
(2395, 'Karedoca', 30, 32, 2, 13, 11, 14, 2, 90, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21742201, 0, 52, 55, 483838, 0, 0, 0, -1, -1, 1, 0, 7, 0, 3, 6, 0, 0, 1),
(2400, 'D&eacute;ductance', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 5702, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2404, 'Breen Leboeuf ', 74, 14, 24, 0, 6, 0, 0, 80, 80, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21738386, 0, 75, 27, 110695, 0, 0, 1, -1, -1, 1, 1, 0, 6, 0, 2, 0, 0, 0),
(2407, 'Yut', 1, 2, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 15, 20, 90286, 0, 0, 0, -1, -1, 1, 1, 0, 0, 4, 0, 1, 0, 0),
(2408, 'Derendar', 19, 14, 0, 13, 0, 0, 2, 60, 10, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21738798, 0, 62, 36, 497392, 0, 0, 0, -1, -1, 1, 1, 24, 2, 0, 0, 0, 0, 2),
(2410, 'Harsiesis', 4, 0, 0, 0, 0, 0, 0, 100, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 22, 11, 88353, 0, 0, 1, -1, -1, 0, 1, 2, 0, 0, 1, 2, 1, 1),
(2414, 'Grimlot', 6, 11, 0, 0, 3, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21738883, 0, 33, 27, 431916, 0, 0, 1, -1, -1, 0, 0, 6, 3, 0, 4, 0, 0, 0),
(2415, 'Belgutei', 3, 0, 0, 0, 0, 0, 0, 80, 90, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21749252, 0, 24, 2, 66883, 0, 0, 0, -1, -1, 1, 1, 2, 2, 2, 1, 0, 1, 0),
(2423, 'Lak', 49, 10, 60, 0, 0, 32, 0, 80, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21738286, 0, 64, 15, 474566, 0, 0, 0, -1, -1, 0, 0, 1, 11, 0, 0, 0, 0, 0);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2424, 'Vannams', 20, 72, 20, 50, 13, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21738114, 0, 46, 25, 162647, 0, 0, 0, -1, -1, 1, 0, 7, 0, 11, 0, 0, 0, 0),
(2425, 'Nathrae', 3, 0, 0, 0, 0, 0, 0, 100, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 29, 42, 188305, 0, 0, 0, 50, 50, 0, 0, 0, 0, 4, 3, 0, 0, 0),
(2426, 'Azarath', 3, 2, 30, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21743441, 0, 31, 8, 110616, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 6, 0, 0, 0),
(2427, 'Miliana', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21740566, 0, 6, 19, 82997, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 1, 0, 0, 0),
(2429, 'Tulkas', 51, 65, -2, 71, 35, 16, 0, 90, 80, 0, 'Gérontocratie', 'Etimnon', '', 'L ` Essence du Mal', 21764856, 0, 80, 3, 263321, 0, 0, 0, 30, 30, 1, 0, 6, 0, 0, 18, 0, 0, 0),
(2430, 'Prolor', 66, 36, 0, 0, 11, 16, 0, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21742403, 0, 78, 20, 276416, 0, 0, 0, 10, 50, 0, 0, 3, 2, 0, 0, 0, 8, 0),
(2431, 'Axase', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2432, 'Victoria', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 26876, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2433, 'Gola', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21743294, 0, 12, 13, 47323, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(2434, 'Yros', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2435, 'Stygmat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2436, 'Marvin', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2437, 'Elfredo', 1, 0, 0, 0, 0, 2, 0, 60, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21747255, 0, 11, 20, 143368, 0, 0, 1, -1, -1, 1, 1, 0, 2, 1, 0, 1, 0, 0),
(2438, 'Elkarr', 7, 8, 0, 1, 6, 0, 2, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21743876, 0, 35, 11, 532536, 0, 0, 1, -1, -1, 1, 1, 2, 4, 1, 0, 1, 0, 0),
(2439, 'Dylannator', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2440, 'Nokossem', 4, 0, 0, 0, 0, 0, 0, 90, 80, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 56, 21, 512895, 0, 0, 1, -1, -1, 1, 1, 1, 4, 1, 0, 3, 0, 0),
(2441, 'Moustik', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2442, 'Zabraxass', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2443, 'Fansel', 19, 36, 14, 1, 6, 0, 3, 100, 80, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21743296, 0, 56, 10, 251353, 0, 0, 1, -1, -1, 1, 0, 11, 0, 0, 0, 0, 9, 0),
(2444, 'Firamar', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 17123, 0, 0, 0, 150, 150, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2445, 'Draco', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2446, 'Dragoir', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2447, 'Hytchigo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2451, 'Sion', 2, 10, 0, 0, 0, 4, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 6, 10, 109870, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 0, 4, 0, 1),
(2454, 'Nys&eacute;rine', 26, 18, 0, 9, 13, 12, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'L ` Essence du Mal', 21757629, 0, 84, 2, 192793, 0, 0, 0, 30, 40, 0, 0, 6, 0, 9, 0, 0, 2, 2),
(2456, 'Zarck', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2458, 'Drazith', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2459, 'Cocorocoricoruico', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 12487, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2460, 'Dydoune', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2461, 'Benares', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2462, 'Elfira', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23579, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2463, 'Kastor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2464, 'Infernom', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2465, 'Ela&iuml;os', 6, 28, 14, 66, 8, 46, 2, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21747905, 0, 43, 8, 206146, 0, 0, 0, -1, -1, 1, 1, 29, 0, 0, 8, 0, 0, 0),
(2466, 'Lijon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2468, 'Muychachos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2470, 'Livyst', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2471, 'Vanniess ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2472, 'Manolosse', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2473, 'Juyliel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2474, 'Gaijath', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2475, 'Luydio', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2476, 'Fialtt', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2477, 'Toroc', 18, 2, 0, 0, 0, 14, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21767874, 0, 24, 10, 164601, 0, 0, 0, -1, -1, 1, 1, 0, 5, 1, 0, 1, 0, 0),
(2488, 'Yukoua', 30, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 7, 25, 33738, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 5, 0, 0, 0),
(2489, 'Malays', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2490, 'Ronaldd', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2491, 'Siik', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2493, 'Tchinga', -6, 11, 3, 49, 67, 64, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'L ` Essence du Mal', 21751770, 0, 77, 8, 170406, 0, 0, 0, 30, 30, 1, 0, 0, 0, 0, 0, 0, 0, 13),
(2495, 'Purpurim La Fouine', 0, 0, 0, 0, 0, 23, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'L ` Essence du Mal', 21752152, 0, 80, 6, 151721, 0, 0, 0, 10, 30, 0, 1, 0, 0, 0, 0, 9, 0, 0),
(2497, 'Trano', 53, 11, 38, 50, 20, 16, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'L ` Essence du Mal', 21753714, 0, 33, 13, 265661, 0, 0, 0, 30, 70, 1, 1, 3, 6, 2, 2, 2, 1, 2);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2498, 'Drekal', 1, 30, 0, 0, 0, 2, 0, 100, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21766501, 0, 30, 14, 183436, 0, 0, 0, 30, 30, 0, 0, 0, 0, 5, 0, 0, 1, 0),
(2499, 'Poulpi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2500, 'Malwene', 1, 0, 2, 0, 0, 2, 0, 70, 100, 1, 'Despotisme', 'Naxos', '', 'Aucune', 21770985, 0, 57, 9, 160739, 0, 0, 1, -1, -1, 1, 1, 3, 1, 0, 0, 2, 0, 2),
(2501, 'Rayan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2502, 'Mamono', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 26847, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2503, 'Darnekox', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2505, 'Julien', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23620, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(2507, 'Naustra', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2509, 'Hafed', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2510, 'Bely-Coeur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2511, 'Pasidon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2512, 'Braxu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2513, 'Mannak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2514, 'Mayc', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21760820, 0, 0, 0, 23281, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2515, 'Kal-el', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2516, 'Raw', 0, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 27, 9, 108592, 0, 0, 0, -1, -1, 0, 1, 0, 2, 0, 0, 1, 0, 0),
(2517, 'Infis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2518, 'Witempe', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23589, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2519, 'Watiflo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2520, 'Quentin', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2521, 'Kaedon', 23, 14, 24, 1, 4, 0, 2, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21756717, 0, 44, 17, 288221, 0, 0, 0, -1, -1, 1, 1, 8, 4, 0, 2, 0, 1, 0),
(2522, 'Sheana', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23579, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2523, 'Cirya', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2524, 'Faelivrin', 2, 0, 0, 0, 0, 0, 0, 70, 80, 1, 'République', 'Thassopole', '', 'Aucune', 21779992, 0, 9, 5, 138735, 0, 0, 1, 40, 100, 1, 1, 0, 0, 2, 0, 1, 1, 0),
(2525, 'Bastienasis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2526, 'Maclo&iuml;l', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2527, 'Mata&iuml;', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 6, 9, 30556, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(2528, 'Lolita', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2529, 'Lortigan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 17, 12, 106496, 0, 0, 0, -1, -1, 1, 1, 0, 0, 3, 0, 0, 0, 0),
(2530, 'Lo&iuml;der Skadurel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21757191, 0, 0, 0, 24832, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2533, 'Kiharo', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 6, 14, 61758, 0, 0, 0, -1, -1, 1, 1, 1, 0, 1, 0, 0, 0, 0),
(2534, 'Magebar', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 21, 5, 163914, 0, 0, 1, -1, -1, 1, 1, 1, 1, 0, 3, 0, 0, 0),
(2535, 'Kaiiros', 16, 2, 0, 0, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21779766, 0, 18, 2, 94784, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(2536, 'N&eacute;romantic', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2537, 'Fufuti', 2, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21766657, 0, 33, 16, 198213, 0, 0, 1, -1, -1, 1, 1, 2, 2, 0, 2, 0, 0, 0),
(2538, 'Jade', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2539, 'Ceb', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2540, 'Adathalion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 4, 4, 68368, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2541, 'Shi Nayne', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2542, 'Elinster', 2, 10, 0, 3, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21767870, 0, 43, 9, 175807, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 4, 0, 1, 0),
(2543, 'Maryn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2544, 'Orbath', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2545, 'Mihawk', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2546, 'Marco', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2547, 'Ulrik', 1, 0, 0, 0, 0, 2, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21768047, 0, 39, 9, 155628, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 2, 2, 0, 0),
(2548, 'Slash', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2549, 'Milboo', 2, 0, 1, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21766324, 0, 37, 8, 128353, 0, 0, 1, -1, -1, 1, 0, 0, 0, 4, 1, 0, 0, 0),
(2552, 'Kazelily', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2553, 'Moine', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2554, 'Zora', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'L ` Essence du Mal', 21766679, 0, 3, 1, 89290, 0, 0, 0, -1, -1, 1, 0, 1, 0, 0, 0, 3, 0, 0),
(2555, 'Tikoune', 1, 0, 0, 0, 0, 2, 0, 50, 30, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21766343, 0, 4, 7, 96237, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 2, 0, 0);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2556, 'Lienhardt', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2557, 'Aquarius', 0, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 1, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2558, 'Hakoc', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2559, 'Kroka L`Alambik', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21768027, 0, 1, 7, 57055, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 3, 0, 0, 0),
(2560, 'Mallamarche', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2561, 'Gosat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2562, 'Morathrarim', 1, 0, 0, 0, 0, 2, 0, 70, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 35, 7, 127545, 0, 0, 1, -1, -1, 0, 0, 0, 0, 0, 5, 0, 0, 0),
(2563, 'Aapall', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2564, 'Bodcaven', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2565, 'Mimain', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2566, 'Mixie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2568, 'Fantastia', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2569, 'Lele', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2570, 'Katel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2571, 'Soldamixou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2572, 'Bobo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2573, 'Kimita', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2574, 'Ebume', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2575, 'Darack', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2576, 'Xwill', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2577, 'Lithanae', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2578, 'Calhazard', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21766549, 0, 27, 9, 119834, 0, 0, 1, -1, -1, 0, 1, 0, 1, 1, 1, 0, 0, 0),
(2579, 'Rafal', 2, 10, 0, 0, 0, 4, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21772320, 0, 9, 9, 99315, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 4, 0, 0),
(2580, 'Double', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2581, 'Sasuedleu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2582, 'Zoxy', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2583, 'Potis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2585, 'Rom', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2586, 'Zox le Conquerant', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2587, 'Ag', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2588, 'Keltasse', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2589, 'Acromade', 2, 2, 1, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 15, 1, 63788, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 1, 0, 0, 0),
(2590, 'Degaraula ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2591, 'Lindir', 26, 2, 0, 48, 0, 0, 2, 60, 10, 1, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21773983, 0, 26, 10, 168873, 0, 0, 1, -1, -1, 1, 1, 5, 0, 0, 6, 0, 0, 0),
(2593, 'Hawkys', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2594, 'Galmin', 1, 0, 0, 0, 0, 2, 0, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21772032, 0, 28, 1, 112041, 0, 0, 1, 20, 50, 0, 0, 1, 0, 0, 0, 3, 0, 0),
(2595, 'D&eacute;ric', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21769498, 0, 0, 0, 31593, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2596, 'Nathoum', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2597, 'Segovois', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2598, 'Arkranian', 1, 0, 0, 0, 0, 2, 0, 70, 70, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21772189, 0, 27, 5, 117329, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 0, 0, 1, 0),
(2599, 'Mat-le-destructeur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2600, 'Looxenfer', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2601, 'Karima', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2602, 'Monia', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2603, 'Rekte', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2604, 'Blekirs', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2605, 'Bisboy', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2606, 'Natasha', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2607, 'Romagie', 3, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21771871, 0, 31, 3, 140939, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 1, 1),
(2608, 'Acoarinn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2609, 'Galmaad', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11jun_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2610, 'Mortzacus', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21772433, 0, 4, 0, 99878, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2611, 'Tetrahyd', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21777215, 0, 8, 0, 57823, 0, 0, 0, -1, -1, 1, 1, 1, 1, 0, 1, 0, 0, 0),
(2612, 'Dojaxif', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 9, 2, 38232, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2613, 'Capusinne', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2614, 'Nem&egrave;s', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23589, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(2615, 'Keperoarness', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2616, 'Leffi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2617, 'Dift', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2618, 'Maliciadu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2619, 'Majestika', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2620, 'Buresting', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2621, 'Motarast', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2622, 'Nathw', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2623, 'Alkehl', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 24096, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2624, 'Sensuelle', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2625, 'Aiize', 1, 0, 0, 0, 0, 2, 0, 50, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21778009, 0, 16, 1, 49797, 0, 0, 1, 50, 100, 0, 0, 0, 1, 2, 0, 0, 0, 0),
(2626, 'Lucie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2627, 'Evangelyne', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);



CREATE TABLE `11jun_joueurs_heros_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2628 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2628 ;

INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(10, 'Maher', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'd`Espeance', 179510, 0),
(11, 'Titlan', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Trimeandre', 210977, 0),
(12, 'Vigrid', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Dies Irae', 175416, 0),
(29, 'Lissana', 'Fée', 'Magicien', 'Magie', 'Intendante', 'd`Esperita', 111409, 0),
(35, 'Meissner', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'd`Ensisheim', 310945, 0),
(42, 'Ora&iuml;a', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Minoria', 68366, 0),
(45, 'Zhia', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Krucland', 58495, 0),
(58, 'Egleria', 'Célestial', 'Prêtre', 'Mensonge', 'Maîtresse', 'de Cr&eacute;puscule', 296179, 0),
(68, 'Kiminou', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'des Terres F&eacute;lines', 391708, 0),
(71, 'T&ecirc;te-Plate', 'Homme', 'Inquisiteur', 'Compassion', 'Seigneur', 'des Temples de Gr&egrave;s', 200940, 0),
(86, 'Lothadith', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Pardorwen', 242641, 0),
(88, 'Shaugan', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Maltebes', 111831, 0),
(89, 'Argazel', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de Lezagra', 148518, 0),
(92, 'Turfel', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Ligorun', 9285689, 0),
(93, 'Danahyl', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Lithrandil', 360113, 0),
(98, 'Nelvin', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Fellindel', 221939, 0),
(116, 'Ge&iuml;nfrindel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Hadarac', 332442, 0),
(119, 'Barbouza', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Wyveand', 356856, 0),
(120, 'Aub&eacute;rion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Danu', 437240, 0),
(125, 'Lhito', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Tarbias', 245100, 0),
(131, 'Dalan', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Rabistiane', 535243, 0),
(132, 'Malorus', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de la Lune Etincellante', 252169, 0),
(133, 'Erios', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Findeli&euml;', 270083, 0),
(136, 'Lirth Evendil', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Planefide', 122935, 0),
(140, 'Ananta', 'Homme', 'Psioniste', 'Magie', 'Seigneur', 'de Mahou', 101694, 0),
(144, 'Irkos', 'Orque', 'Barbare', 'Force', 'Chef', 'de Kalferas', 122217, 0),
(145, 'Phyleas', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Dalarian', 526121, 0),
(150, 'Kahzerya', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Draonster', 126141, 0),
(161, 'Marr', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Marzia', 123573, 0),
(162, 'Xelios', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'd`Alamovit', 170884, 0),
(167, 'Klaasninas', 'Homme', 'Inquisiteur', 'Loi', 'Dame', 'de L&eacute;pinar', 161468, 0),
(168, 'Altharam', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'd`Alycastre', 167614, 0),
(173, 'Hulricht', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Solesmes', 408161, 0),
(181, 'Fourbinas', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Baarbute', 105004, 0),
(183, 'Axeolu', 'Géant', 'Shaman', 'Guerre', 'Dame', 'des Terres de Fang', 117260, 0),
(187, 'Boubi', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Manoulie', 81589, 0),
(197, 'Leslie', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Kabalastia', 146145, 0),
(199, 'Benihime', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'd`Urhandhile', 203630, 0),
(204, 'Ovelia', 'Nain', 'Guerrier', 'Guerre', 'Reine', 'de Myrrhyn', 185034, 0),
(217, 'Tylert', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Bazanne', 393245, 0),
(225, 'Ther`glat', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Brogoth', 141159, 0),
(231, 'Galigonidd', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'd`Infernel', 199676, 0),
(234, 'Poupou', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'du Volcan de Talc', 98232, 0),
(235, 'Dartoil', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Rotergan', 70927, 0),
(236, 'Tefeiri', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Schiv', 198440, 0),
(239, 'Luna', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Matriarche', 'de Lunita', 296552, 0),
(241, 'Nadras', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Phoenixia', 204800, 0),
(242, 'Thelv', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'de Lendhyl', 118755, 0),
(256, 'Husam', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'd`Eleeore', 95219, 0),
(258, 'Febus', 'Orque', 'Shaman', 'Force', 'Chef', 'de Febusi', 83738, 0),
(267, 'Dacapo', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'de Stacato', 106689, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(270, 'Desmondis', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Tatouinis', 193560, 0),
(278, 'Zahel', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'des Hautes C&icirc;mes', 258529, 0),
(280, 'Rufbumpa', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Wamawala', 152715, 0),
(282, 'Kalista', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de l`Azur&eacute;e', 113388, 0),
(283, 'Gelthasar Belt', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'd`Elderae', 105461, 0),
(297, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 265701, 0),
(300, 'Shadark', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'de Doriane', 154357, 0),
(302, 'L&eacute;otar', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'd`Agnez', 114044, 0),
(303, 'Gauerd&ocirc;me', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'de Dam&ocirc;le', 171029, 0),
(314, 'Eleanora', 'Elfe Noir', 'Démonologiste', 'Mort', 'Matriarche', 'de Phenelis', 66232, 0),
(345, 'Torme Morselame', 'Nain', 'Guerrier', 'Force', 'Roi', 'de Karank Azak', 64768, 0),
(349, 'Elanor', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'd`Elenyalis', 388946, 0),
(385, 'Aratos', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ast&eacute;rismes ', 297540, 0),
(386, 'Yelderick', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Fantaisianis', 190403, 0),
(408, 'Leorod', 'Elfe', 'Guerrier', 'Honneur', 'Conseiller', 'de Belorod', 194277, 0),
(410, 'Birgenn', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'du Steaksorc', 117753, 0),
(423, 'Abert', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Tristemine', 197168, 0),
(427, 'Koali', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Vallombre', 132567, 0),
(439, 'Willi', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Bellemont', 142911, 0),
(465, 'Dachinos', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Klobos', 135948, 0),
(481, 'Arcelane', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Csur', 139896, 0),
(555, 'Kaerrawen', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'de Fern', 165106, 0),
(566, 'Bamdinas', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'd`Anstaing', 201291, 0),
(637, 'Mathaos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Terres du Nores', 162222, 0),
(640, 'Mattai', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Dixion', 152882, 0),
(672, 'Jeffrey', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de G&eacute;olois', 173139, 0),
(787, 'Dranthen', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'd`Abission', 208852, 0),
(815, 'Mollestho', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Cardie', 109861, 0),
(848, 'Arkatros', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Melfir', 179555, 0),
(868, 'Arimane', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'd`Yami', 191487, 0),
(870, 'Xandre', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Mesmont', 146431, 0),
(879, 'Vezk', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'des Terres Maudites', 75772, 0),
(911, 'Enephia', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'd`Isildira', 325874, 0),
(922, 'Malia', 'Fée', 'Enchanteur', 'Pensée', 'Intendante', 'de F&eacute;&eacute;rie', 313125, 0),
(930, 'Zaseo', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Alabasta', 118232, 0),
(989, 'Salfalar', 'Célestial', 'Inquisiteur', 'Compassion', 'Maître', 'de Purios', 183562, 0),
(1010, 'Herel', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Mella', 142200, 0),
(1057, 'X&eacute;nox', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Kaid', 211538, 0),
(1067, 'Daneel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Ardon', 261780, 0),
(1122, 'Del&eacute;nia', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Tuatha', 117064, 0),
(1156, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'd`Oriz-Garsie', 202987, 0),
(1287, 'Nragax', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Brul&eacute;', 332390, 0),
(1403, 'Soreclis', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Lala', 161902, 0),
(1409, 'Esteban', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de la Falaise', 80273, 0),
(1411, 'Karyon', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'd`Amakiir', 357901, 0),
(1412, 'Fouchier', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'des Granches', 179171, 0),
(1414, 'Criton', 'Minotaure', 'Guerrier', 'Loi', 'Seigneur', 'de Bosphore', 163419, 0),
(1418, 'Basl', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'd`Oxymandre', 10888124, 0),
(1458, 'Yodine', 'Célestial', 'Enchanteur', 'Magie', 'Maîtresse', 'de Hovaoine', 360376, 0),
(1460, 'Alec', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de la Ville C&eacute;leste', 123061, 0),
(1469, 'Elm', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Argonton', 650254, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1470, 'Celithrand', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Krenaste', 215712, 0),
(1492, 'Osterate', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de M&eacute;lios', 164301, 0),
(1512, 'Keldaran', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'd`Emergence', 131624, 0),
(1519, 'Tirandilis', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Landes Sedus', 110053, 0),
(1528, 'Saya', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Aglatien', 33487, 0),
(1549, 'Caym', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Cala Taur', 158620, 0),
(1550, 'N&auml;ta&euml;l', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Abysse', 165562, 0),
(1583, 'Rhal', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Dakra&iuml;', 61366, 0),
(1611, 'Arthurik', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Milar', 160537, 0),
(1627, 'Silayerr', 'Elfe', 'Barde', 'Chance', 'Conseillère', 'de Nihruth', 145623, 0),
(1667, 'Vylnius', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Salazariusargonath', 154232, 0),
(1682, 'L&eacute;&ouml;raz', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Raze-Campagne', 233462, 0),
(1685, 'Beltha&iuml;s', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Aninma', 110490, 0),
(1700, 'Gaeldrech', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Underbaran', 103828, 0),
(1747, 'Hordrin', 'Célestial', 'Prêtre', 'Loi', 'Maître', 'de Braeron', 157666, 0),
(1748, 'Baduit', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'd`Hitlum', 280016, 0),
(1755, 'Le Dougec', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Moussijllon ', 203947, 0),
(1773, 'Pyrazine', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Pyralie', 242673, 0),
(1784, 'Lineus', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Darkania', 178644, 0),
(1795, 'Bornami', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Nevjuice', 417675, 0),
(1809, 'Kal', 'Sahuagin', 'Prêtre', 'Pensée', 'Baron', 'de De la Cryptheilm', 153323, 0),
(1816, 'Han Main-Tranchante', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Buchenithar', 262055, 0),
(1824, 'Aedorn', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'D`Iorelrahc', 380047, 0),
(1827, 'Khiran', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Ze&iuml;danys', 129387, 0),
(1835, 'Krystophoros', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'd`Obedia', 123842, 0),
(1838, 'Anwaman&euml;l', 'Elfe', 'Guerrier', 'Guerre', 'Conseillère', 'des Terres de Lumi&egrave;res', 106787, 0),
(1842, 'Cometa', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Krait', 66578, 0),
(1866, 'Agro', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Oresmaux', 242582, 0),
(1867, 'Maxliger', 'Fée', 'Enchanteur', 'Magie', 'Intendant', 'de Pics Celestes', 144949, 0),
(1883, 'Khane', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de l\'arbre sylvestre', 45948, 0),
(1922, 'Thaelion', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Shelazan', 150167, 0),
(1927, 'Koulibab', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Kreruus', 160914, 0),
(1945, 'Miroslaw', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Thimeona', 168072, 0),
(1953, 'Erchael', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Tarshen', 152818, 0),
(1991, 'Aorphen', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hakkyra', 153192, 0),
(1994, 'Aridius', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'D`Arid', 85823, 0),
(2007, 'Luinelinde', 'Sahuagin', 'Prêtre', 'Chance', 'Baron', 'D`Atleas', 200600, 0),
(2017, 'Nargorath', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Kalend&ouml;rth', 100799, 0),
(2021, 'Borfang', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Royaume Sacr&eacute;e', 237410, 0),
(2028, 'L&eacute;nnih', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Drizaste', 276089, 0),
(2030, 'Archanos', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'de Carialos', 309112, 0),
(2047, 'Aldere', 'Nain', 'Guerrier', 'Honneur', 'Roi', 'D`Hijsterian', 70736, 0),
(2048, 'Haelyn', 'Célestial', 'Prêtre', 'Honneur', 'Maître', 'D`Allansia', 167627, 0),
(2053, 'Barnoche', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de PauvreTerre', 213264, 0),
(2056, 'Kalesh', 'Ancien', 'Guerrier', 'Force', 'Vénérable', 'de Tortreth', 152939, 0),
(2058, 'Kristan', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Morneval', 150098, 0),
(2067, 'Ashinseika', 'Infernal', 'Assassin', 'Ténèbres', 'Despote', 'd`Adjuessi', 83768, 0),
(2072, 'Richard Oraph', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'de l`Empire D`Huurn', 109247, 0),
(2073, 'Artane', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'D`Ador&eacute;a', 138434, 0),
(2074, 'Tureloitu', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Leagenuds', 230209, 0),
(2112, 'Defraglaroche', 'Homme', 'Nécromancien', 'Mort', 'Seigneur', 'de Kronn', 468068, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2126, 'Trolur', 'Orque', 'Barbare', 'Guerre', 'Chef', 'd`Oxonium', 143203, 0),
(2134, 'Iorfel', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Lokeria', 63379, 0),
(2143, 'Krijeks', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Terres Dures', 216470, 0),
(2154, 'Seloma', 'Célestial', 'Prêtre', 'Force', 'Maîtresse', 'de Fenris', 255635, 0),
(2175, 'Dyospiros', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'd`Hauts Cieux', 105094, 0),
(2176, 'Na&euml;lys', 'Sahuagin', 'Barbare', 'Force', 'Baronne', 'd`Asmodia', 68146, 0),
(2177, 'Melagius', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Midghard', 78033, 0),
(2182, 'Rotgh&auml;r', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de les Terres de Glaces', 108944, 0),
(2188, 'Lycane', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Luperque', 111895, 0),
(2212, 'Styliann', 'Elfe', 'Prêtre', 'Honneur', 'Conseiller', 'de Xerxes', 247966, 0),
(2229, 'Bidou', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Langevin', 88586, 0),
(2230, 'Aysa', 'Géant', 'Barbare', 'Guerre', 'Dame', 'D`Aldenia', 72298, 0),
(2237, 'Wisclicenus', 'Géant', 'Shaman', 'Force', 'Dame', 'de Blondin', 174765, 0),
(2254, 'Sildhur', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'de Landourn', 230472, 0),
(2258, 'Tonimiguel', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Sarisp', 9251, 0),
(2259, 'Lobless', 'Homme', 'Assassin', 'Ténèbres', 'Seigneur', 'de Telomarsuss', 41128, 0),
(2264, 'Arum', 'Fée', 'Druide', 'Nature', 'Intendante', 'de Clos Sauvage', 124730, 0),
(2267, 'Skaad', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Dalijran', 128329, 0),
(2268, 'Bahumuth', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Cebastes', 209102, 0),
(2269, 'Fosth', 'Elfe Noir', 'Assassin', 'Mort', 'Matriarche', 'de Zitomira', 94405, 0),
(2280, 'Arongrim', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'D`Asagard', 133132, 0),
(2288, 'Elrendir', 'Vampire', 'Enchanteur', 'Chaos', 'Comte', 'D`Aferan', 134917, 0),
(2294, 'Pelli', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Talmondais', 106956, 0),
(2309, 'Baalack ', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Passat', 4914, 0),
(2314, 'Saylith', 'Sahuagin', 'Prêtre', 'Compassion', 'Baronne', 'de Ghostamthil', 131308, 0),
(2315, 'Sillegue', 'Homme', 'Guerrier', 'Force', 'Seigneur', 'D`Artidis', 130268, 0),
(2331, 'Kzerk', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Sombrebois', 214822, 0),
(2333, 'Jessym', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Goldork', 19345, 0),
(2335, 'Kailern', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Nideuk', 43254, 0),
(2337, 'Maria', 'Vampire', 'Sorcier', 'Pensée', 'Comtesse', 'de Tour de Gorde', 171641, 0),
(2343, 'Taurn', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Tamargue', 226706, 0),
(2345, 'Mifour', 'Orque', 'Shaman', 'Guerre', 'Chef', 'D`O`rtac', 93834, 0),
(2350, 'Bobth', 'Gnome', 'Marchand', 'Chemins', 'Gouverneur', 'de Mouchern', 66925, 0),
(2356, 'Thorgrim', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Asurdor', 128117, 0),
(2362, 'Safer', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de Les Terroirs Maudits', 45304, 0),
(2366, 'Laao', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'D`Ih`syb`aa', 133503, 0),
(2371, 'Siez', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'D`Astarion', 7313, 0),
(2378, 'Physsiallis', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Loard&eacute;ronne', 41117, 0),
(2381, 'Netenmeth', 'Homme', 'Nécromancien', 'Mort', 'Seigneur', 'de Mouijlle', 110685, 0),
(2384, 'Enylak', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'D`Ythaque', 33615, 0),
(2385, 'Viviano', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'de Vivianies', 37938, 0),
(2391, 'Elarinya', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Berethiel', 8493, 0),
(2395, 'Karedoca', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Vannesis', 179756, 0),
(2400, 'D&eacute;ductance', 'Sahuagin', 'Sorcier', 'Pensée', 'Baronne', 'de l`Intuition', 3134, 0),
(2404, 'Breen Leboeuf ', 'Elfe Noir', 'Voleur', 'Mensonge', 'Patriarche', 'de Sept-iles', 58869, 0),
(2407, 'Yut', 'Célestial', 'Magicien', 'Magie', '', 'D`Erchret', 70570, 0),
(2408, 'Derendar', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de Sandrasie', 116455, 0),
(2410, 'Harsiesis', 'Célestial', 'Prêtre', 'Force', 'Maître', 'D`Oudjat', 38463, 0),
(2414, 'Grimlot', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Destructeur', 141000, 0),
(2415, 'Belgutei', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Ticoderonga', 92637, 0),
(2423, 'Lak', 'Orque', 'Shaman', 'Guerre', 'Chef', 'de Flavius', 191747, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2424, 'Vannams', 'Elfe Noir', 'Voleur', 'Chemins', 'Patriarche', 'de Belundra', 63775, 0),
(2425, 'Nathrae', 'Elfe Noir', 'Prêtre', 'Mensonge', 'Matriarche', 'D`Obscurnia', 161747, 0),
(2426, 'Azarath', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Jal`karu', 87685, 0),
(2427, 'Miliana', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'D`Akaitera', 23072, 0),
(2429, 'Tulkas', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'd`Illya-Verte', 218201, 0),
(2430, 'Prolor', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Demacia', 120830, 0),
(2431, 'Axase', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Xase', 0, 0),
(2432, 'Victoria', 'Vampire', 'Assassin', 'Chaos', 'Comtesse', 'de la Vallee des Vampires', 3250, 0),
(2433, 'Gola', 'Nain', 'Guerrier', 'Guerre', '', 'de Brise-fer', 15766, 0),
(2434, 'Yros', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Vortex', 0, 0),
(2435, 'Stygmat', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Galderia', 0, 0),
(2436, 'Marvin', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Porte', 0, 0),
(2437, 'Elfredo', 'Vampire', 'Enchanteur', 'Chaos', 'Comte', 'D`Arconis', 42638, 0),
(2438, 'Elkarr', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Zwerkal', 165824, 0),
(2439, 'Dylannator', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Teajinique', 0, 0),
(2440, 'Nokossem', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'du Royaume des Sables', 172355, 0),
(2441, 'Moustik', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Fronce', 0, 0),
(2442, 'Zabraxass', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Namexia', 3134, 0),
(2443, 'Fansel', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'D`Azorres', 73374, 0),
(2444, 'Firamar', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Minhirith', 3350, 0),
(2445, 'Draco', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'D`Otlintas', 0, 0),
(2446, 'Dragoir', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Magicosnap', 0, 0),
(2447, 'Hytchigo', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de Teddy', 0, 0),
(2451, 'Sion', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Noxus', 40382, 0),
(2454, 'Nys&eacute;rine', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'de Tysth L`Envol&eacute;e ', 204899, 0),
(2456, 'Zarck', 'Minotaure', 'Guerrier', 'Chance', 'Seigneur', 'des Trois Rois', 0, 0),
(2458, 'Drazith', 'Gnome', 'Illusioniste', 'Chance', 'Gouverneur', 'de Baldinguant', 3134, 0),
(2459, 'Cocorocoricoruico', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Cocoroyaume', 3134, 0),
(2460, 'Dydoune', 'Homme', 'Assassin', 'Ténèbres', 'Seigneur', 'de Draculaxes', 0, 0),
(2461, 'Benares', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Sazan', 0, 0),
(2462, 'Elfira', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'D`Elfirium', 3134, 0),
(2463, 'Kastor', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'D`Angela Island', 0, 0),
(2464, 'Infernom', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Magica', 3134, 0),
(2465, 'Ela&iuml;os', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Rostra', 114795, 0),
(2466, 'Lijon', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de Titorial', 0, 0),
(2468, 'Muychachos', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Muchacihosland', 0, 0),
(2470, 'Livyst', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'de Sigma', 0, 0),
(2471, 'Vanniess ', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Vanessen', 0, 0),
(2472, 'Manolosse', 'Elfe', 'Archer', 'Chance', 'Conseillère', 'D`Hamois', 3224, 0),
(2473, 'Juyliel', 'Fée', 'Magicien', 'Magie', 'Intendante', 'D`Almourne', 0, 0),
(2474, 'Gaijath', 'Elfe', 'Archer', 'Chance', 'Conseillère', 'de Worwonderfulrd', 0, 0),
(2475, 'Luydio', 'Homme', 'Guerrier', 'Force', 'Seigneur', 'de Nantesth', 0, 0),
(2476, 'Fialtt', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Silamon', 0, 0),
(2477, 'Toroc', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'd`Hammer', 79702, 0),
(2488, 'Yukoua', 'Homme', 'Chevalier', 'Force', 'Seigneur', 'D`Eldoran', 19436, 0),
(2489, 'Malays', 'Célestial', 'Magicien', 'Magie', 'Maîtresse', 'de Malays de Lens', 0, 0),
(2490, 'Ronaldd', 'Nain', 'Guerrier', 'Honneur', 'Roi', 'de Glassic', 0, 0),
(2491, 'Siik', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Dun Garak', 3134, 0),
(2493, 'Tchinga', 'Célestial', 'Enchanteur', 'Pensée', 'Maître', 'de Tchingtchouk', 185943, 0),
(2495, 'Purpurim La Fouine', 'Ancien', 'Enchanteur', 'Pensée', 'Vénérable', 'de les Mers Avides', 82745, 0),
(2497, 'Trano', 'Fée', 'Enchanteur', 'Chaos', 'Intendante', 'd`Uthyar', 247885, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2498, 'Drekal', 'Fée', 'Druide', 'Nature', 'Intendant', 'de Krugor', 147023, 0),
(2499, 'Poulpi', 'Elfe', 'Guerrier', 'Force', 'Conseillère', 'de Jade', 0, 0),
(2500, 'Malwene', 'Vampire', 'Enchanteur', 'Chance', 'Comte', 'de Nad Exaral', 67034, 0),
(2501, 'Rayan', 'Minotaure', 'Guerrier', 'Force', '', 'de Minotor', 0, 0),
(2502, 'Mamono', 'Célestial', 'Prêtre', 'Chance', '', 'D`Helias', 3256, 0),
(2503, 'Darnekox', 'Infernal', 'Assassin', 'Ténèbres', 'Despote', 'de Skipiea', 0, 0),
(2505, 'Julien', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Jujuvillage', 3427, 0),
(2507, 'Naustra', 'Homme', 'Prêtre', 'Pensée', 'Seigneur', 'de Cald&eacute;e', 0, 0),
(2509, 'Hafed', 'Célestial', 'Magicien', 'Magie', 'Maître', 'D`Idali', 0, 0),
(2510, 'Bely-Coeur', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Drenoutes', 0, 0),
(2511, 'Pasidon', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Mereau', 0, 0),
(2512, 'Braxu', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Forince', 0, 0),
(2513, 'Mannak', 'Vampire', 'Démonologiste', 'Ténèbres', 'Comte', 'D`Inorte Diabolo', 0, 0),
(2514, 'Mayc', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Marompire', 3625, 0),
(2515, 'Kal-el', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Ermalader', 0, 0),
(2516, 'Raw', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'D`Ardeure', 64359, 0),
(2517, 'Infis', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Malmotaur', 0, 0),
(2518, 'Witempe', 'Géant', 'Shaman', 'Force', 'Seigneur', 'de Lorheming', 3387, 0),
(2519, 'Watiflo', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Demacia', 0, 0),
(2520, 'Quentin', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Liter', 0, 0),
(2521, 'Kaedon', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'D`Ishal', 152362, 0),
(2522, 'Sheana', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'D`Arravys', 3134, 0),
(2523, 'Cirya', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Ciravilage', 3134, 0),
(2524, 'Faelivrin', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Mennia', 44525, 0),
(2525, 'Bastienasis', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Sartap', 0, 0),
(2526, 'Maclo&iuml;l', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Mortd`homme', 3134, 0),
(2527, 'Mata&iuml;', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de Jiar', 4980, 0),
(2528, 'Lolita', 'Fée', 'Enchanteur', 'Pensée', 'Intendante', 'D`Eraclionne', 0, 0),
(2529, 'Lortigan', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Lorlion', 109309, 0),
(2530, 'Lo&iuml;der Skadurel', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Elwa&iuml;nne', 3128, 0),
(2533, 'Kiharo', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'de Kihara', 10951, 0),
(2534, 'Magebar', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Vali&eacute;d&eacute;ria', 62456, 0),
(2535, 'Kaiiros', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'd`Aradie', 42284, 0),
(2536, 'N&eacute;romantic', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Juliavanpir', 0, 0),
(2537, 'Fufuti', 'Elfe', 'Voleur', 'Ténèbres', 'Conseiller', 'de La Chute de Sindragosa', 87396, 0),
(2538, 'Jade', 'Vampire', 'Assassin', 'Mort', 'Comtesse', 'D`Equidow', 0, 0),
(2539, 'Ceb', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'de Siva&iuml;', 0, 0),
(2540, 'Adathalion', 'Elfe Noir', 'Assassin', 'Mensonge', 'Patriarche', 'de Valmiry', 15240, 0),
(2541, 'Shi Nayne', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Matriarche', 'de Valinga&iuml;', 0, 0),
(2542, 'Elinster', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'D`Aldaran', 62038, 0),
(2543, 'Maryn', 'Elfe', 'Sorcier', 'Magie', 'Conseillère', 'de Mauzel', 0, 0),
(2544, 'Orbath', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Tyrasiane', 0, 0),
(2545, 'Mihawk', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Tel-Quessir', 0, 0),
(2546, 'Marco', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Dajmarco', 0, 0),
(2547, 'Ulrik', 'Homme', 'Nécromancien', 'Ténèbres', 'Seigneur', 'de Rawen', 53094, 0),
(2548, 'Slash', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Pinaloyd', 0, 0),
(2549, 'Milboo', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Loumevonde', 85644, 0),
(2552, 'Kazelily', 'Vampire', 'Démonologiste', 'Mort', 'Comtesse', 'de Nimada', 0, 0),
(2553, 'Moine', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Moinoulande', 0, 0),
(2554, 'Zora', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Wido', 20309, 0),
(2555, 'Tikoune', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'D`Ombria', 59446, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2556, 'Lienhardt', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'de Kumal', 3144, 0),
(2557, 'Aquarius', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'D`Alanvis', 3134, 0),
(2558, 'Hakoc', 'Elfe Noir', 'Assassin', 'Mort', '', 'D`Hak', 0, 0),
(2559, 'Kroka L`Alambik', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'de Marais des Putrides', 13135, 0),
(2560, 'Mallamarche', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Dragonfeux', 0, 0),
(2561, 'Gosat', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Lorad', 0, 0),
(2562, 'Morathrarim', 'Célestial', 'Enchanteur', 'Pensée', 'Maître', 'de Razeltnov', 99522, 0),
(2563, 'Aapall', 'Elfe Noir', 'Guerrier', 'Légendes', 'Patriarche', 'D`Apcolon', 3134, 0),
(2564, 'Bodcaven', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Noireplaine', 0, 0),
(2565, 'Mimain', 'Elfe Noir', 'Guerrier', 'Chance', 'Patriarche', 'de Vome', 0, 0),
(2566, 'Mixie', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Solanard', 0, 0),
(2568, 'Fantastia', 'Vampire', 'Assassin', 'Ténèbres', 'Comtesse', 'de Fant', 0, 0),
(2569, 'Lele', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Jugulusse', 0, 0),
(2570, 'Katel', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Vybz', 0, 0),
(2571, 'Soldamixou', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Ragonvire', 0, 0),
(2572, 'Bobo', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Voboland', 0, 0),
(2573, 'Kimita', 'Elfe Noir', 'Assassin', 'Mort', 'Matriarche', 'de Cead', 0, 0),
(2574, 'Ebume', 'Infernal', 'Guerrier', 'Guerre', 'Despote', 'de Tristouna', 0, 0),
(2575, 'Darack', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Condrieu', 0, 0),
(2576, 'Xwill', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Xillix', 0, 0),
(2577, 'Lithanae', 'Vampire', 'Enchanteur', 'Pensée', 'Comtesse', 'de Serlingsun', 3134, 0),
(2578, 'Calhazard', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Misvrahull', 43028, 0),
(2579, 'Rafal', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'D`Analorbis', 30946, 0),
(2580, 'Double', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Darigoht', 0, 0),
(2581, 'Sasuedleu', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Veka', 0, 0),
(2582, 'Zoxy', 'Ancien', 'Assassin', 'Chaos', 'Vénérable', 'de &eacute;lia-nina', 0, 0),
(2583, 'Potis', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Mitorana', 0, 0),
(2585, 'Rom', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Leoyaumom', 3134, 0),
(2586, 'Zox le Conquerant', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de Nina-marvelia', 0, 0),
(2587, 'Ag', 'Homme', 'Guerrier', 'Légendes', 'Seigneur', 'D`Agdamliv', 0, 0),
(2588, 'Keltasse', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Sacavomi', 0, 0),
(2589, 'Acromade', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de la Caverne Enflamm&eacute;e', 68892, 0),
(2590, 'Degaraula ', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'de Lucan', 0, 0),
(2591, 'Lindir', 'Célestial', 'Paladin', 'Loi', 'Maître', 'D`Aerlindel', 68155, 0),
(2593, 'Hawkys', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'D`Ithonys', 3134, 0),
(2594, 'Galmin', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Pratoras', 84344, 0),
(2595, 'D&eacute;ric', 'Sahuagin', 'Guerrier', 'Honneur', 'Baron', 'de B&eacute;ric', 3573, 0),
(2596, 'Nathoum', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'D`Apilo', 0, 0),
(2597, 'Segovois', 'Homme', 'Voleur', 'Chance', 'Seigneur', 'de Levia', 0, 0),
(2598, 'Arkranian', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Merkrandour', 62918, 0),
(2599, 'Mat-le-destructeur', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Celestia', 0, 0),
(2600, 'Looxenfer', 'Elfe Noir', 'Guerrier', 'Guerre', 'Matriarche', 'de Looxenferland', 0, 0),
(2601, 'Karima', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Saint Benoit', 0, 0),
(2602, 'Monia', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Rodi', 0, 0),
(2603, 'Rekte', 'Minotaure', 'Guerrier', 'Légendes', 'Seigneur', 'de Ryaumesag', 0, 0),
(2604, 'Blekirs', 'Ancien', 'Assassin', 'Chaos', 'Vénérable', 'D`Oryon', 0, 0),
(2605, 'Bisboy', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Paurisu', 0, 0),
(2606, 'Natasha', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'de Querreck', 0, 0),
(2607, 'Romagie', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de La Mine Du RandBurkG', 47691, 0),
(2608, 'Acoarinn', 'Vampire', 'Assassin', 'Mort', 'Comtesse', 'D`Aricc', 0, 0),
(2609, 'Galmaad', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'D`Orcanie', 0, 0);INSERT INTO `11jun_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2610, 'Mortzacus', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Mortfort', 25860, 0),
(2611, 'Tetrahyd', 'Homme', 'Nécromancien', 'Ténèbres', 'Seigneur', 'de Tijua', 18514, 0),
(2612, 'Dojaxif', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'du Royaume de L`Ogre', 13277, 0),
(2613, 'Capusinne', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Lamagie', 0, 0),
(2614, 'Nem&egrave;s', 'Vampire', 'Enchanteur', 'Chaos', 'Comtesse', 'de Pourpres-Ab&icirc;mes', 3464, 0),
(2615, 'Keperoarness', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Darnese', 0, 0),
(2616, 'Leffi', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'D`Oneice', 0, 0),
(2617, 'Dift', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Diftfigth', 0, 0),
(2618, 'Maliciadu', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Towilig', 0, 0),
(2619, 'Majestika', 'Gnome', 'Voleur', 'Mensonge', 'Gouvernante', 'de Boisbriand', 0, 0),
(2620, 'Buresting', 'Infernal', 'Assassin', 'Mort', 'Despote', 'de Teesrucion', 0, 0),
(2621, 'Motarast', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Lasotard', 0, 0),
(2622, 'Nathw', 'Gnome', 'Marchand', 'Chance', 'Gouverneur', 'de Taramoa', 0, 0),
(2623, 'Alkehl', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'D`Erenthel', 4363, 0),
(2624, 'Sensuelle', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'D`Herovicha', 0, 0),
(2625, 'Aiize', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de Pretoria', 36145, 0),
(2626, 'Lucie', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Matriarche', 'D`Anogeyerre', 0, 0),
(2627, 'Evangelyne', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Midogur', 0, 0);



CREATE TABLE `11jun_joueurs_stats_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2628 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2628 ;

INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(10, 'Maher', 20, 179510, 208264, 210000, 65.00, 101.00, 52.00, 74.00, 110.00, 123.00, 50000, 0, 0, 12369537, 1783, 1611, 2163, 1847, 0, 21774379),
(11, 'Titlan', 23, 210977, 254958, 276000, 172.00, 112.00, 54.50, 17.50, 116.50, 132.50, 25, 0, 0, 1719528, 1139, 377, 275, 180, 0, 21780635),
(12, 'Vigrid', 28, 175416, 379489, 406000, 183.00, 135.00, 117.00, 72.00, 141.00, 113.00, 33601, 0, 0, 353589, 1252, 515, 206, 149, 0, 21779163),
(29, 'Lissana', 25, 111409, 306234, 325000, 19.50, 63.00, 38.00, 200.50, 201.00, 367.00, 50000, 0, 0, 5123511, 1138, 1198, 1419, 983, 0, 21767555),
(35, 'Meissner', 28, 310945, 398059, 406000, 221.00, 104.00, 275.00, 43.00, 40.00, 25.00, 29115, 0, 0, 937335, 6247, 5398, 6016, 5791, 0, 21780681),
(42, 'Ora&iuml;a', 18, 68366, 167682, 171000, 223.00, 196.00, 156.00, 14.00, 69.00, 28.00, 30000, 0, 0, 7736219, 373, 285, 362, 242, 0, 21749039),
(45, 'Zhia', 12, 58495, 74137, 78000, 14.00, 52.00, 33.00, 37.00, 78.00, 27.00, 34464, 0, 0, 1336950, 276, 292, 457, 14, 0, 21767651),
(58, 'Egleria', 29, 296179, 425603, 435000, 128.00, 141.00, 35.50, 156.50, 162.00, 179.00, 23052, 0, 0, 1117173, 592, 125, 310, 568, 0, 21778418),
(68, 'Kiminou', 46, 391708, 1066881, 1081000, 258.00, 175.00, 310.00, 180.00, 157.00, 104.00, 40000, 0, 0, 2240657, 1195, 890, 452, 1192, 0, 21776650),
(71, 'T&ecirc;te-Plate', 44, 200940, 950415, 990000, 216.00, 193.00, 145.00, 212.00, 239.00, 190.00, 50000, 0, 0, 9540523, 526, 192, 485, 52, 0, 21753765),
(86, 'Lothadith', 23, 242641, 269191, 276000, 21.50, 57.50, 96.50, 104.00, 96.00, 322.50, 50000, 0, 0, 1759284, 816, 961, 695, 871, 0, 21779010),
(88, 'Shaugan', 15, 111831, 115521, 120000, 52.00, 30.00, 42.50, 14.50, 64.50, 97.50, 40000, 0, 0, 3607385, 1568, 1309, 1289, 1480, 0, 21747941),
(89, 'Argazel', 30, 148518, 454470, 465000, 93.00, 72.00, 66.00, 180.00, 257.00, 481.00, 41756, 0, 0, 13778915, 1727, 1196, 2159, 683, 0, 21756408),
(92, 'Turfel', 66, 9285689, 2160363, 2211000, 171.00, 156.00, 79.00, 278.00, 207.00, 213.00, 50000, 0, 0, 59068117, 10631, 9204, 8876, 9016, 0, 21736191),
(93, 'Danahyl', 25, 360113, 302263, 325000, 32.50, 59.00, 89.00, 92.50, 125.00, 245.00, 9, 0, 0, 376, 788, 362, 374, 455, 0, 21779311),
(98, 'Nelvin', 21, 221939, 225525, 231000, 121.50, 62.00, 242.00, 34.00, 45.00, 33.50, 29452, 0, 0, 7187843, 378, 221, 269, 344, 0, 21780583),
(116, 'Ge&iuml;nfrindel', 21, 332442, 227537, 231000, 64.00, 62.00, 144.00, 69.00, 76.00, 69.00, 706, 0, 0, 5147583, 2706, 2636, 2665, 2725, 0, 21775704),
(119, 'Barbouza', 22, 356856, 242744, 253000, 107.00, 51.00, 94.00, 45.00, 94.00, 217.00, 120, 0, 0, 1281828, 281, 628, 999, 575, 0, 21777928),
(120, 'Aub&eacute;rion', 27, 437240, 351838, 378000, 42.50, 92.50, 169.50, 171.00, 104.00, 235.50, 23001, 0, 0, 2609418, 1046, 1374, 733, 861, 0, 21779255),
(125, 'Lhito', 40, 245100, 785694, 820000, 323.00, 213.00, 284.00, 109.00, 55.00, 31.00, 33303, 0, 0, 3311460, 1482, 944, 1424, 1169, 0, 21779673),
(131, 'Dalan', 47, 535243, 1105096, 1128000, 243.50, 210.00, 100.00, 157.50, 155.50, 210.50, 50000, 0, 0, 6625217, 4300, 887, 650, 306, 0, 21778138),
(132, 'Malorus', 44, 252169, 981312, 990000, 97.00, 120.00, 229.00, 236.33, 257.00, 376.00, 27141, 0, 0, 4265299, 3088, 3943, 4135, 2273, 0, 21780382),
(133, 'Erios', 22, 270083, 246458, 253000, 87.00, 102.00, 194.00, 66.00, 78.00, 30.00, 13252, 0, 0, 5659356, 372, 60, 166, 610, 0, 21780549),
(136, 'Lirth Evendil', 27, 122935, 360964, 378000, 161.50, 82.00, 246.00, 48.00, 37.00, 25.50, 50000, 0, 0, 1935039, 399, 363, 471, 594, 0, 21775198),
(140, 'Ananta', 10, 101694, 52340, 55000, 57.00, 62.00, 39.00, 56.00, 47.00, 72.00, 21842, 0, 0, 10083267, 512, 507, 447, 561, 0, 21824182),
(144, 'Irkos', 26, 122217, 331003, 351000, 266.00, 177.00, 141.00, 76.00, 90.00, 38.00, 50000, 0, 0, 2315939, 1645, 1112, 1285, 1504, 0, 21774563),
(145, 'Phyleas', 46, 526121, 1075117, 1081000, 343.00, 190.00, 320.00, 85.00, 78.00, 34.00, 36132, 0, 0, 2885206, 1092, 918, 975, 826, 0, 21776972),
(150, 'Kahzerya', 30, 126141, 452481, 465000, 174.00, 239.00, 72.00, 102.00, 129.00, 28.00, 50000, 0, 0, 927109, 1983, 1488, 1631, 2132, 0, 21773566),
(161, 'Marr', 17, 123573, 149522, 153000, 193.00, 131.50, 88.00, 15.50, 46.50, 18.50, 9682, 0, 0, 506717, 353, 720, 550, 519, 0, 21776910),
(162, 'Xelios', 12, 170884, 68310, 78000, 70.00, 35.00, 32.00, 13.00, 70.00, 102.00, 40000, 0, 0, 1083454, 1654, 2422, 1991, 1894, 0, 21776910),
(167, 'Klaasninas', 33, 161468, 541392, 561000, 138.50, 164.50, 28.50, 45.00, 145.00, 94.50, 40000, 0, 0, 240910, 999, 611, 887, 128, 0, 21778373),
(168, 'Altharam', 23, 167614, 267119, 276000, 230.00, 237.00, 61.00, 31.50, 66.00, 19.50, 17077, 0, 0, 946308, 115, 169, 308, 170, 0, 21777005),
(173, 'Hulricht', 37, 408161, 670660, 703000, 237.00, 153.00, 147.00, 175.00, 112.00, 86.00, 50000, 0, 0, 1119250, 890, 668, 443, 961, 0, 21775526),
(181, 'Fourbinas', 23, 105004, 262471, 276000, 23.50, 47.00, 48.00, 186.50, 211.00, 239.00, 199, 0, 0, 3070482, 1165, 1084, 1517, 1000, 0, 21780701),
(183, 'Axeolu', 19, 117260, 189734, 190000, 99.00, 35.00, 42.50, 30.50, 65.50, 106.50, 40000, 0, 0, 3448351, 439, 344, 289, 459, 0, 21775218),
(187, 'Boubi', 22, 81589, 238479, 253000, 39.00, 59.00, 84.00, 80.00, 62.00, 140.00, 50000, 0, 0, 2783653, 290, 0, 383, 354, 0, 21778059),
(197, 'Leslie', 19, 146145, 184065, 190000, 64.00, 46.00, 106.00, 56.00, 27.00, 35.00, 7499, 0, 0, 13937757, 388, 169, 293, 369, 0, 21778946),
(199, 'Benihime', 36, 203630, 643885, 666000, 49.00, 30.00, 56.00, 153.00, 231.00, 281.00, 14001, 0, 0, 3011501, 953, 932, 464, 1597, 0, 21780951),
(204, 'Ovelia', 22, 185034, 248468, 253000, 196.00, 209.00, 87.00, 24.00, 91.00, 20.00, 6541, 0, 0, 3622611, 368, 264, 87, 482, 0, 21780325),
(217, 'Tylert', 29, 393245, 411715, 435000, 184.50, 103.00, 185.00, 44.00, 71.00, 25.50, 696, 0, 0, 542331, 164, 385, 366, 215, 0, 21776825),
(225, 'Ther`glat', 28, 141159, 396459, 406000, 69.00, 77.00, 47.00, 75.00, 90.00, 116.00, 50000, 0, 0, 1983364, 1015, 702, 543, 240, 0, 21761676),
(231, 'Galigonidd', 18, 199676, 154616, 171000, 189.00, 83.00, 163.00, 80.00, 62.00, 71.00, 7501, 0, 0, 55808, 2644, 1984, 2671, 2255, 0, 21781186),
(234, 'Poupou', 23, 98232, 275911, 276000, 110.00, 40.00, 104.50, 21.50, 91.50, 172.50, 50000, 0, 0, 12684188, 371, 367, 849, 105, 0, 21765086),
(235, 'Dartoil', 11, 70927, 55209, 66000, 49.00, 36.00, 67.00, 35.00, 25.00, 24.00, 22810, 0, 0, 10481747, 506, 691, 732, 423, 0, 21775122),
(236, 'Tefeiri', 20, 198440, 194817, 210000, 110.00, 122.00, 109.00, 18.00, 34.00, 57.00, 0, 0, 0, 70069, 1404, 1223, 1169, 1020, 0, 21781018),
(239, 'Luna', 15, 296552, 119216, 120000, 129.00, 47.50, 37.50, 35.00, 85.50, 117.50, 76, 0, 0, 2717406, 1706, 1576, 1274, 1271, 0, 21795147),
(241, 'Nadras', 20, 204800, 203762, 210000, 25.00, 33.00, 43.00, 91.00, 73.00, 246.00, 40000, 0, 0, 2045376, 1785, 1959, 1526, 972, 0, 21776299),
(242, 'Thelv', 23, 118755, 256922, 276000, 34.50, 19.50, 50.00, 90.00, 194.00, 307.00, 50000, 0, 0, 6256810, 1354, 730, 1048, 919, 0, 21790641),
(256, 'Husam', 21, 95219, 227896, 231000, 56.50, 18.50, 50.50, 39.50, 80.50, 139.50, 50000, 0, 0, 4760088, 129, 268, 393, 98, 0, 21730413),
(258, 'Febus', 23, 83738, 275050, 276000, 86.00, 66.00, 93.50, 23.50, 145.50, 143.50, 50000, 0, 0, 3672783, 130, 221, 92, 413, 0, 21730499),
(267, 'Dacapo', 17, 106689, 137707, 153000, 70.00, 69.00, 58.00, 53.00, 67.00, 60.00, 31590, 0, 0, 1656071, 1614, 1053, 544, 1411, 0, 21781283);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(270, 'Desmondis', 22, 193560, 252864, 253000, 51.00, 75.00, 41.00, 84.00, 82.00, 167.00, 116, 0, 0, 584304, 383, 1021, 308, 358, 0, 21772357),
(278, 'Zahel', 31, 258529, 489254, 496000, 34.50, 112.00, 75.00, 121.00, 164.50, 128.50, 16832, 0, 0, 885736, 1113, 1493, 713, 680, 0, 21781164),
(280, 'Rufbumpa', 22, 152715, 245806, 253000, 131.00, 72.00, 121.00, 37.00, 31.00, 34.00, 40000, 0, 0, 6866973, 347, 496, 428, 566, 0, 21776687),
(282, 'Kalista', 24, 113388, 279537, 300000, 162.00, 162.00, 180.00, 97.00, 38.00, 36.00, 27800, 0, 0, 62361, 1393, 729, 535, 722, 0, 21780154),
(283, 'Gelthasar Belt', 31, 105461, 494821, 496000, 191.00, 234.00, 158.00, 174.83, 106.00, 38.50, 50000, 0, 0, 212647, 152, 85, 112, 122, 0, 21658681),
(297, 'Bartor', 21, 265701, 228772, 231000, 43.50, 29.00, 146.00, 78.00, 19.50, 32.00, 28422, 0, 0, 3802999, 203, 234, 68, 3, 0, 21772474),
(300, 'Shadark', 21, 154357, 216230, 231000, 148.00, 59.00, 206.00, 81.00, 34.00, 49.00, 50000, 0, 0, 7314098, 1747, 2598, 2121, 2460, 0, 21770537),
(302, 'L&eacute;otar', 20, 114044, 205376, 210000, 133.00, 157.00, 36.00, 70.00, 87.00, 57.00, 43076, 0, 0, 3767259, 327, 392, 417, 170, 0, 21780343),
(303, 'Gauerd&ocirc;me', 33, 171029, 554174, 561000, 108.00, 53.50, 97.50, 52.00, 112.50, 196.50, 273, 0, 0, 2695914, 1203, 1181, 1363, 908, 0, 21775545),
(314, 'Eleanora', 20, 66232, 190927, 210000, 75.00, 24.00, 68.00, 90.00, 66.00, 161.00, 40000, 0, 0, 1166281, 124, 10, 94, 50, 0, 21749427),
(345, 'Torme Morselame', 20, 64768, 190706, 210000, 125.00, 113.00, 59.00, 17.00, 56.00, 18.00, 40000, 0, 0, 1851037, 274, 311, 313, 370, 0, 21717785),
(349, 'Elanor', 28, 388946, 390238, 406000, 162.00, 187.00, 169.00, 189.33, 139.00, 67.00, 7915, 0, 0, 7458293, 2221, 2162, 1744, 1910, 0, 21779050),
(385, 'Aratos', 30, 297540, 435743, 465000, 64.00, 27.00, 88.00, 159.00, 119.00, 270.00, 745, 0, 0, 121436, 673, 469, 1002, 1304, 0, 21781111),
(386, 'Yelderick', 39, 190403, 747873, 780000, 259.00, 221.00, 55.00, 161.00, 143.00, 90.00, 33880, 0, 0, 437361, 1018, 572, 1378, 1003, 0, 21776752),
(408, 'Leorod', 20, 194277, 204812, 210000, 150.00, 170.00, 57.00, 100.00, 66.00, 43.00, 0, 0, 0, 240841, 2389, 1884, 1892, 2003, 0, 21777875),
(410, 'Birgenn', 23, 117753, 268418, 276000, 139.50, 175.50, 107.50, 100.00, 116.00, 69.50, 50000, 0, 0, 437647, 513, 552, 803, 568, 0, 21777839),
(423, 'Abert', 20, 197168, 207908, 210000, 70.00, 66.00, 97.00, 55.00, 96.00, 179.00, 5844, 0, 0, 3297676, 980, 523, 307, 983, 0, 21780744),
(427, 'Koali', 15, 132567, 115659, 120000, 58.50, 33.00, 36.00, 38.50, 79.00, 124.00, 1514, 0, 0, 20159530, 813, 515, 271, 405, 0, 21778572),
(439, 'Willi', 8, 142911, 28894, 36000, 66.00, 60.00, 24.00, 12.00, 26.00, 14.00, 30000, 0, 0, 22626348, 1471, 1297, 1452, 1265, 0, 21749861),
(465, 'Dachinos', 17, 135948, 151657, 153000, 114.50, 46.50, 72.50, 71.50, 95.50, 130.50, 25483, 0, 0, 1430851, 39, 338, 556, 544, 0, 21775267),
(481, 'Arcelane', 16, 139896, 120758, 136000, 72.00, 40.00, 99.00, 31.00, 25.00, 19.00, 2128, 0, 0, 19402, 131, 98, 20, 376, 0, 21780695),
(555, 'Kaerrawen', 19, 165106, 186951, 190000, 66.50, 41.50, 64.00, 57.50, 61.50, 74.00, 135, 0, 0, 3180570, 323, 536, 8, 134, 0, 21781289),
(566, 'Bamdinas', 26, 201291, 345508, 351000, 87.00, 41.00, 52.00, 100.00, 176.00, 403.00, 32980, 0, 0, 5677819, 257, 331, 140, 200, 0, 21779301),
(637, 'Mathaos', 23, 162222, 255689, 276000, 215.50, 128.00, 137.00, 61.00, 52.00, 22.50, 48500, 0, 0, 2687202, 1695, 1893, 1923, 1574, 0, 21779251),
(640, 'Mattai', 20, 152882, 201293, 210000, 96.00, 35.00, 86.00, 47.00, 55.00, 117.00, 29468, 0, 0, 1710795, 331, 272, 245, 465, 0, 21773817),
(672, 'Jeffrey', 25, 173139, 308782, 325000, 145.50, 112.00, 152.00, 140.00, 60.00, 24.50, 50000, 0, 0, 19966938, 2353, 3533, 3404, 3042, 0, 21778628),
(787, 'Dranthen', 12, 208852, 66901, 78000, 78.00, 54.00, 85.00, 25.00, 25.00, 23.00, 40000, 0, 0, 9251404, 1747, 2580, 1987, 1712, 0, 21729219),
(815, 'Mollestho', 14, 109861, 95306, 105000, 173.00, 118.00, 51.00, 15.00, 68.00, 19.00, 40000, 0, 0, 9382222, 306, 368, 694, 192, 0, 21735488),
(848, 'Arkatros', 33, 179555, 551565, 561000, 279.00, 267.00, 80.00, 117.00, 146.00, 75.00, 50000, 0, 0, 10530123, 0, 345, 106, 0, 0, 21738504),
(868, 'Arimane', 20, 191487, 205484, 210000, 36.00, 31.00, 35.00, 90.00, 98.00, 204.00, 25, 0, 0, 8241475, 1923, 1538, 1340, 1635, 0, 21779714),
(870, 'Xandre', 17, 146431, 143924, 153000, 145.00, 80.50, 59.00, 15.50, 68.50, 34.50, 5210, 0, 0, 9812997, 20, 80, 70, 163, 0, 21780773),
(879, 'Vezk', 21, 75772, 214839, 231000, 204.00, 154.00, 100.50, 56.00, 51.00, 53.50, 50000, 0, 0, 3812466, 120, 192, 200, 174, 0, 21725664),
(911, 'Enephia', 23, 325874, 266731, 276000, 25.50, 51.00, 34.00, 78.50, 88.00, 181.00, 25919, 0, 0, 1039247, 42, 158, 203, 37, 0, 21775393),
(922, 'Malia', 18, 313125, 170413, 171000, 29.00, 103.00, 57.00, 97.00, 162.00, 86.00, 50000, 0, 0, 6458933, 924, 922, 883, 911, 0, 21806144),
(930, 'Zaseo', 27, 118232, 354336, 378000, 139.00, 146.00, 125.00, 148.00, 88.00, 63.00, 43222, 0, 0, 1284807, 199, 398, 391, 197, 0, 21774885),
(989, 'Salfalar', 25, 183562, 314828, 325000, 121.50, 114.50, 111.50, 61.00, 148.00, 110.50, 1494, 0, 0, 2603, 588, 757, 586, 388, 0, 21780084),
(1010, 'Herel', 15, 142200, 113392, 120000, 110.00, 69.00, 40.50, 47.00, 33.00, 21.50, 40000, 0, 0, 1498696, 927, 822, 1276, 1185, 0, 21775149),
(1057, 'X&eacute;nox', 19, 211538, 184046, 190000, 82.00, 77.00, 110.00, 51.00, 72.00, 57.00, 358, 0, 0, 576146, 503, 592, 650, 507, 0, 21777975),
(1067, 'Daneel', 30, 261780, 462619, 465000, 210.00, 114.00, 203.00, 127.00, 106.00, 43.00, 23947, 0, 0, 4222376, 5966, 5790, 6228, 6374, 0, 21784035),
(1122, 'Del&eacute;nia', 28, 117064, 402401, 406000, 92.00, 172.00, 25.00, 85.00, 119.00, 133.00, 30516, 0, 0, 2889444, 3376, 2787, 2474, 3020, 0, 21774105),
(1156, 'Yzeute', 16, 202987, 121435, 136000, 77.00, 70.00, 111.00, 62.00, 33.00, 20.00, 50000, 0, 0, 3163379, 1728, 1483, 1639, 1524, 0, 21774766),
(1287, 'Nragax', 32, 332390, 500928, 528000, 289.00, 109.00, 286.00, 111.00, 41.00, 27.00, 30000, 0, 0, 6810027, 4660, 4272, 4343, 3167, 0, 21780372),
(1403, 'Soreclis', 19, 161902, 177368, 190000, 131.00, 135.00, 68.00, 44.50, 45.00, 32.50, 31260, 0, 0, 841821, 681, 924, 716, 542, 0, 21778184),
(1409, 'Esteban', 15, 80273, 115541, 120000, 153.00, 57.00, 163.00, 58.00, 47.00, 26.00, 30000, 0, 0, 10087944, 647, 185, 2159, 371, 0, 21765094),
(1411, 'Karyon', 27, 357901, 367092, 378000, 27.50, 22.50, 83.00, 119.00, 168.00, 227.00, 7679, 0, 0, 2969833, 1519, 1235, 705, 676, 0, 21781292),
(1412, 'Fouchier', 25, 179171, 313941, 325000, 154.50, 194.00, 40.00, 110.50, 155.50, 178.50, 13138, 0, 0, 1449052, 824, 377, 757, 180, 0, 21778737),
(1414, 'Criton', 20, 163419, 193670, 210000, 132.00, 185.00, 53.00, 43.00, 51.00, 18.00, 38901, 0, 0, 2307261, 738, 1097, 709, 712, 0, 21780634),
(1418, 'Basl', 25, 10888124, 305240, 325000, 58.00, 60.00, 117.00, 215.00, 53.50, 58.50, 7456, 0, 0, 234396147, 14245, 13554, 14129, 14100, 0, 21746492),
(1458, 'Yodine', 23, 360376, 257833, 276000, 59.50, 104.00, 43.00, 71.00, 143.50, 60.50, 80, 0, 0, 200973, 562, 843, 828, 948, 0, 21767949),
(1460, 'Alec', 22, 123061, 231668, 253000, 54.00, 72.00, 60.00, 68.00, 112.00, 159.00, 12323, 0, 0, 2041214, 1451, 2259, 1707, 2254, 0, 21780563),
(1469, 'Elm', 57, 650254, 1618786, 1653000, 290.00, 178.00, 281.50, 183.50, 166.50, 277.50, 19014, 0, 0, 4832967, 3027, 2361, 2331, 1952, 0, 21780996);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1470, 'Celithrand', 15, 215712, 116724, 120000, 19.50, 23.00, 65.00, 35.50, 132.00, 133.00, 33120, 0, 0, 18121574, 299, 215, 381, 232, 0, 21778346),
(1492, 'Osterate', 20, 164301, 193475, 210000, 144.00, 168.00, 77.00, 38.00, 59.00, 28.00, 50000, 0, 0, 2748831, 1002, 426, 907, 483, 0, 21772406),
(1512, 'Keldaran', 18, 131624, 162030, 171000, 70.00, 62.00, 78.00, 66.00, 49.00, 48.00, 31353, 0, 0, 4209722, 231, 299, 368, 125, 0, 21779423),
(1519, 'Tirandilis', 25, 110053, 307207, 325000, 171.50, 93.00, 265.00, 40.00, 37.00, 23.50, 50000, 0, 0, 3373875, 975, 964, 715, 686, 0, 21764655),
(1528, 'Saya', 10, 33487, 54008, 55000, 151.00, 118.00, 76.00, 32.00, 32.00, 17.00, 30000, 0, 0, 1634762, 427, 90, 201, 401, 0, 21737759),
(1549, 'Caym', 16, 158620, 124509, 136000, 94.00, 88.00, 161.00, 44.00, 42.00, 20.00, 212, 0, 0, 7094931, 651, 329, 556, 732, 0, 21779372),
(1550, 'N&auml;ta&euml;l', 20, 165562, 197707, 210000, 228.00, 215.00, 96.00, 25.00, 62.00, 34.00, 17376, 0, 0, 3978349, 1088, 943, 1041, 815, 0, 21780150),
(1583, 'Rhal', 16, 61366, 127787, 136000, 74.00, 70.00, 56.00, 34.00, 71.00, 71.00, 30000, 0, 0, 7590052, 161, 152, 0, 0, 0, 21716442),
(1611, 'Arthurik', 19, 160537, 181883, 190000, 183.00, 83.50, 47.00, 16.50, 43.50, 19.50, 1604, 0, 0, 81262, 183, 182, 286, 219, 0, 21781151),
(1627, 'Silayerr', 19, 145623, 171457, 190000, 100.00, 56.00, 60.00, 63.00, 52.00, 64.00, 50000, 0, 0, 8765158, 786, 305, 594, 540, 0, 21762299),
(1667, 'Vylnius', 15, 154232, 105214, 120000, 41.50, 29.50, 35.50, 33.50, 58.50, 104.50, 40000, 0, 0, 12390242, 0, 0, 1, 63, 0, 21774737),
(1682, 'L&eacute;&ouml;raz', 19, 233462, 184719, 190000, 87.50, 53.00, 98.00, 45.00, 31.00, 24.50, 35676, 0, 0, 104435, 571, 502, 603, 749, 0, 21777910),
(1685, 'Beltha&iuml;s', 12, 110490, 72336, 78000, 68.00, 45.00, 84.00, 31.00, 21.00, 17.00, 10000, 0, 0, 1718556, 140, 60, 146, 75, 0, 21777612),
(1700, 'Gaeldrech', 15, 103828, 109736, 120000, 151.00, 134.00, 62.00, 38.50, 84.00, 19.50, 40000, 0, 0, 11360896, 740, 528, 812, 577, 0, 21737504),
(1747, 'Hordrin', 38, 157666, 723226, 741000, 123.00, 149.00, 27.00, 110.00, 89.00, 161.00, 50000, 0, 0, 1317190, 498, 232, 949, 66, 0, 21776840),
(1748, 'Baduit', 32, 280016, 506739, 528000, 236.00, 158.00, 251.00, 167.00, 126.00, 87.00, 24041, 0, 0, 4671905, 5239, 4222, 5882, 4157, 0, 21781010),
(1755, 'Le Dougec', 15, 203947, 110428, 120000, 113.00, 72.00, 131.00, 50.00, 30.00, 28.00, 24, 0, 0, 321939, 987, 952, 884, 858, 0, 21780947),
(1773, 'Pyrazine', 19, 242673, 183227, 190000, 109.00, 90.00, 172.50, 4.50, 184.50, 231.50, 5447, 0, 0, 16753162, 1010, 678, 661, 820, 0, 21780793),
(1784, 'Lineus', 17, 178644, 137484, 153000, 84.00, 68.00, 98.00, 105.00, 50.00, 52.00, 50000, 0, 0, 700004, 783, 845, 282, 808, 0, 21774899),
(1795, 'Bornami', 22, 417675, 233753, 253000, 93.00, 116.00, 170.00, 222.00, 103.00, 46.00, 183, 0, 0, 471682, 1286, 611, 633, 1088, 0, 21779827),
(1809, 'Kal', 29, 153323, 415774, 435000, 181.00, 159.00, 78.50, 78.50, 67.00, 161.00, 35906, 0, 0, 20946681, 0, 3879, 1785, 3587, 0, 21778411),
(1816, 'Han Main-Tranchante', 22, 262055, 237446, 253000, 135.00, 153.00, 136.00, 145.00, 71.00, 56.00, 44794, 0, 0, 8144595, 1107, 506, 42, 364, 0, 21780983),
(1824, 'Aedorn', 25, 380047, 317205, 325000, 53.50, 115.50, 116.50, 85.00, 120.00, 243.50, 7612, 0, 0, 5924571, 1079, 755, 657, 161, 0, 21775339),
(1827, 'Khiran', 14, 129387, 91621, 105000, 143.00, 67.00, 45.00, 20.00, 44.00, 16.00, 40000, 0, 0, 11208030, 499, 897, 936, 792, 0, 21778248),
(1835, 'Krystophoros', 14, 123842, 97061, 105000, 70.00, 156.00, 39.00, 29.00, 41.00, 15.00, 40000, 0, 0, 9465310, 475, 357, 393, 271, 0, 21757770),
(1838, 'Anwaman&euml;l', 14, 106787, 94864, 105000, 106.00, 118.00, 34.00, 21.00, 37.00, 32.00, 30000, 0, 0, 4439172, 634, 371, 607, 760, 0, 21756229),
(1842, 'Cometa', 7, 66578, 26353, 28000, 49.00, 31.50, 27.00, 22.50, 22.50, 15.50, 30000, 0, 0, 8627597, 274, 207, 507, 206, 0, 21774857),
(1866, 'Agro', 25, 242582, 317044, 325000, 296.00, 226.00, 178.50, 114.00, 98.00, 24.50, 14394, 0, 0, 1147518, 4001, 4166, 5466, 4211, 0, 21780855),
(1867, 'Maxliger', 15, 144949, 116718, 120000, 49.50, 70.00, 49.00, 43.00, 98.50, 52.50, 4026, 0, 0, 3160847, 1435, 1299, 823, 1388, 0, 21761206),
(1883, 'Khane', 10, 45948, 47022, 55000, 114.00, 48.00, 79.00, 42.00, 26.00, 17.00, 30000, 0, 0, 3594209, 283, 649, 433, 494, 0, 21762017),
(1922, 'Thaelion', 18, 150167, 153635, 171000, 140.00, 72.00, 62.00, 60.00, 30.00, 21.00, 312, 0, 0, 4475042, 707, 588, 696, 882, 0, 21779384),
(1927, 'Koulibab', 5, 160914, 11980, 15000, 37.00, 12.50, 20.50, 13.00, 23.50, 36.50, 20000, 0, 0, 5292130, 890, 1221, 1398, 1040, 0, 21769386),
(1945, 'Miroslaw', 22, 168072, 231967, 253000, 241.00, 236.00, 17.00, 36.00, 218.00, 85.00, 22714, 0, 0, 2624223, 883, 979, 629, 1363, 0, 21778840),
(1953, 'Erchael', 14, 152818, 94017, 105000, 149.00, 152.00, 131.00, 127.33, 83.00, 47.00, 7790, 0, 0, 998754, 1300, 868, 1378, 1217, 0, 21780731),
(1991, 'Aorphen', 14, 153192, 94348, 105000, 104.00, 18.00, 33.00, 23.00, 37.00, 129.00, 28410, 0, 0, 6010671, 370, 290, 79, 51, 0, 21775490),
(1994, 'Aridius', 9, 85823, 40655, 45000, 110.00, 54.00, 44.00, 36.50, 34.00, 17.50, 30000, 0, 0, 9157952, 614, 644, 592, 421, 0, 21746327),
(2007, 'Luinelinde', 20, 200600, 203403, 210000, 92.00, 91.00, 39.00, 66.00, 72.00, 140.00, 26170, 0, 0, 6693327, 576, 571, 217, 671, 0, 21779854),
(2017, 'Nargorath', 18, 100799, 157005, 171000, 144.00, 134.00, 31.00, 65.00, 63.00, 21.00, 29225, 0, 0, 4301753, 391, 268, 40, 26, 0, 21780541),
(2021, 'Borfang', 11, 237410, 63437, 66000, 39.50, 24.50, 20.00, 65.00, 36.00, 89.00, 288, 0, 0, 1542670, 439, 597, 542, 322, 0, 21779854),
(2028, 'L&eacute;nnih', 21, 276089, 211801, 231000, 50.50, 48.50, 61.50, 77.00, 66.00, 183.50, 6756, 0, 0, 2801171, 798, 549, 836, 435, 0, 21780893),
(2030, 'Archanos', 22, 309112, 248896, 253000, 190.00, 136.00, 178.00, 37.00, 74.00, 115.00, 13253, 0, 0, 4766338, 1037, 921, 404, 715, 0, 21780552),
(2047, 'Aldere', 13, 70736, 81914, 91000, 118.00, 94.00, 37.00, 15.50, 33.00, 14.50, 40000, 0, 0, 2373706, 457, 557, 98, 359, 0, 21758142),
(2048, 'Haelyn', 13, 167627, 89088, 91000, 77.00, 74.00, 14.50, 52.50, 33.00, 113.00, 39736, 0, 0, 848330, 1727, 1241, 985, 1105, 0, 21778413),
(2053, 'Barnoche', 15, 213264, 114538, 120000, 119.00, 78.00, 110.00, 126.00, 57.50, 19.50, 518, 0, 0, 247542, 557, 339, 563, 264, 0, 21783831),
(2056, 'Kalesh', 15, 152939, 116685, 120000, 99.00, 106.00, 69.00, 66.50, 27.00, 23.50, 191, 0, 0, 4246841, 482, 584, 512, 397, 0, 21780802),
(2058, 'Kristan', 20, 150098, 206711, 210000, 152.00, 149.00, 80.00, 134.00, 92.00, 52.00, 28802, 0, 0, 248086, 2068, 2032, 2247, 1908, 0, 21779188),
(2067, 'Ashinseika', 12, 83768, 76671, 78000, 79.00, 22.00, 77.00, 33.00, 22.00, 30.00, 20224, 0, 0, 5778266, 158, 95, 142, 133, 0, 21780888),
(2072, 'Richard Oraph', 13, 109247, 84793, 91000, 18.50, 14.50, 40.00, 68.00, 36.00, 80.00, 40000, 0, 0, 5822952, 355, 99, 133, 73, 0, 21757699),
(2073, 'Artane', 8, 138434, 31225, 36000, 48.00, 45.00, 54.00, 53.00, 43.00, 52.00, 30000, 0, 0, 17014064, 1758, 1767, 1572, 1160, 0, 21754502),
(2074, 'Tureloitu', 11, 230209, 65918, 66000, 42.50, 30.00, 74.00, 37.00, 20.00, 16.50, 23341, 0, 0, 18247, 103, 390, 117, 474, 0, 21774007),
(2112, 'Defraglaroche', 37, 468068, 701680, 703000, 302.00, 102.50, 234.50, 148.33, 69.50, 179.50, 29741, 0, 0, 4156731, 939, 1151, 959, 948, 0, 21779506);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2126, 'Trolur', 33, 143203, 550590, 561000, 356.00, 163.50, 154.00, 23.50, 114.50, 25.50, 27152, 0, 0, 91735, 1145, 966, 917, 556, 0, 21776662),
(2134, 'Iorfel', 7, 63379, 24479, 28000, 30.50, 17.00, 50.00, 36.00, 22.50, 20.00, 30000, 0, 0, 6425778, 233, 576, 527, 444, 0, 21705868),
(2143, 'Krijeks', 18, 216470, 162923, 171000, 132.00, 208.00, 42.00, 28.00, 77.00, 17.00, 0, 0, 0, 218270, 438, 1195, 575, 609, 0, 21781227),
(2154, 'Seloma', 10, 255635, 46901, 55000, 53.00, 43.00, 21.00, 45.00, 30.00, 67.00, 6, 0, 0, 2773398, 336, 438, 332, 435, 0, 21777963),
(2175, 'Dyospiros', 18, 105094, 159372, 171000, 64.00, 75.00, 39.00, 61.00, 162.00, 180.00, 1207, 0, 0, 3211299, 454, 95, 239, 251, 0, 21781009),
(2176, 'Na&euml;lys', 16, 68146, 128351, 136000, 270.00, 97.00, 75.00, 13.00, 65.00, 21.00, 40000, 0, 0, 3205995, 223, 255, 171, 242, 0, 21750995),
(2177, 'Melagius', 9, 78033, 43139, 45000, 67.50, 31.00, 78.00, 22.00, 18.00, 21.50, 12672, 0, 0, 4169240, 228, 380, 246, 306, 0, 21779135),
(2182, 'Rotgh&auml;r', 11, 108944, 65056, 66000, 114.00, 45.50, 30.00, 6.50, 28.50, 16.50, 40000, 0, 0, 7000459, 549, 772, 447, 555, 0, 21780170),
(2188, 'Lycane', 21, 111895, 228665, 231000, 150.50, 73.00, 151.00, 57.00, 63.00, 21.50, 40000, 0, 0, 1071927, 212, 304, 112, 166, 0, 21779726),
(2212, 'Styliann', 18, 247966, 154522, 171000, 74.00, 94.00, 26.00, 84.00, 65.00, 106.00, 50000, 0, 0, 588229, 968, 882, 733, 634, 0, 21779460),
(2229, 'Bidou', 10, 88586, 53621, 55000, 52.00, 60.00, 34.00, 48.00, 60.00, 29.00, 40000, 0, 0, 6436936, 538, 388, 280, 343, 0, 21746235),
(2230, 'Aysa', 12, 72298, 68926, 78000, 96.00, 54.00, 40.00, 13.00, 36.00, 16.00, 652, 0, 0, 1563579, 202, 346, 179, 321, 0, 21772749),
(2237, 'Wisclicenus', 10, 174765, 54093, 55000, 58.00, 47.00, 46.00, 2.00, 55.00, 62.00, 26206, 0, 0, 1811, 278, 429, 328, 583, 0, 21773485),
(2254, 'Sildhur', 15, 230472, 107598, 120000, 123.00, 46.50, 105.50, 80.00, 49.50, 83.50, 17492, 0, 0, 1870377, 643, 729, 348, 545, 0, 21781088),
(2258, 'Tonimiguel', 3, 9251, 4807, 6000, 25.00, 13.00, 29.00, 14.00, 17.00, 17.00, 10000, 0, 0, 126557, 0, 39, 0, 0, 0, 21699194),
(2259, 'Lobless', 10, 41128, 47230, 55000, 39.00, 24.00, 64.00, 32.00, 25.00, 25.00, 20000, 0, 0, 1942726, 146, 94, 217, 72, 0, 21735042),
(2264, 'Arum', 7, 124730, 21814, 28000, 33.50, 32.00, 24.00, 36.50, 62.50, 56.50, 5544, 0, 0, 575557, 117, 159, 195, 120, 0, 21779004),
(2267, 'Skaad', 11, 128329, 58252, 66000, 103.00, 55.00, 98.00, 44.00, 69.00, 32.00, 30000, 0, 0, 4109226, 445, 432, 539, 609, 0, 21765198),
(2268, 'Bahumuth', 12, 209102, 69676, 78000, 72.00, 65.00, 152.00, 32.00, 40.00, 35.00, 14602, 0, 0, 1303417, 676, 619, 523, 549, 0, 21779951),
(2269, 'Fosth', 6, 94405, 20864, 21000, 30.00, 17.00, 49.00, 20.00, 22.00, 19.00, 20000, 0, 0, 9757906, 367, 521, 638, 510, 0, 21755072),
(2280, 'Arongrim', 14, 133132, 99162, 105000, 71.00, 30.00, 114.00, 37.00, 38.00, 27.00, 3372, 0, 0, 135814, 254, 237, 365, 241, 0, 21777679),
(2288, 'Elrendir', 9, 134917, 40672, 45000, 21.50, 39.00, 22.00, 36.00, 39.50, 23.50, 2157, 0, 0, 1370702, 263, 261, 586, 513, 0, 21780792),
(2294, 'Pelli', 10, 106956, 48958, 55000, 86.00, 61.00, 28.00, 38.00, 39.00, 21.00, 30000, 0, 0, 10991344, 134, 48, 17, 92, 0, 21744266),
(2309, 'Baalack ', 1, 4914, 809, 1000, 13.50, 13.50, 14.00, 15.50, 14.50, 19.00, 10000, 0, 0, 806353, 31, 31, 35, 29, 0, 21722020),
(2314, 'Saylith', 14, 131308, 98587, 105000, 69.00, 51.00, 26.00, 46.00, 53.00, 103.00, 12418, 0, 0, 2989256, 88, 45, 178, 111, 0, 21779846),
(2315, 'Sillegue', 10, 130268, 48073, 55000, 79.00, 64.00, 47.00, 17.00, 28.00, 17.00, 14416, 0, 0, 545570, 513, 227, 427, 692, 0, 21775566),
(2331, 'Kzerk', 10, 214822, 48115, 55000, 72.00, 39.00, 79.00, 23.00, 27.00, 20.00, 38987, 0, 0, 126133, 1038, 1400, 784, 1275, 0, 21780491),
(2333, 'Jessym', 4, 19345, 9697, 10000, 45.00, 34.00, 16.00, 10.00, 17.00, 10.00, 10000, 0, 0, 1659655, 55, 58, 83, 90, 0, 21745630),
(2335, 'Kailern', 6, 43254, 18101, 21000, 29.00, 16.00, 77.00, 29.00, 16.00, 18.00, 422, 0, 0, 129632, 36, 223, 77, 186, 0, 21775498),
(2337, 'Maria', 8, 171641, 35324, 36000, 27.00, 47.00, 33.00, 112.00, 37.00, 124.00, 30000, 0, 0, 635319, 320, 401, 375, 459, 0, 21780348),
(2343, 'Taurn', 25, 226706, 307331, 325000, 137.00, 150.00, 205.00, 172.00, 118.00, 81.00, 24103, 0, 0, 165417, 3994, 3840, 3904, 4147, 0, 21781223),
(2345, 'Mifour', 8, 93834, 28468, 36000, 37.00, 34.00, 29.00, 11.00, 32.00, 50.00, 30000, 0, 0, 5940848, 250, 325, 462, 231, 0, 21744574),
(2350, 'Bobth', 6, 66925, 19189, 21000, 40.00, 35.00, 19.00, 38.00, 31.00, 23.00, 20855, 0, 0, 720754, 325, 320, 460, 239, 0, 21776614),
(2356, 'Thorgrim', 8, 128117, 32275, 36000, 65.00, 24.00, 65.00, 11.00, 36.00, 47.00, 13367, 0, 0, 201590, 278, 389, 231, 400, 0, 21779617),
(2362, 'Safer', 7, 45304, 24042, 28000, 35.00, 19.00, 43.00, 52.00, 29.50, 41.50, 30000, 0, 0, 1525441, 1109, 833, 1050, 768, 0, 21771732),
(2366, 'Laao', 11, 133503, 60611, 66000, 47.50, 45.00, 91.00, 49.00, 39.50, 22.00, 6936, 0, 0, 1887572, 946, 542, 733, 464, 0, 21781261),
(2371, 'Siez', 2, 7313, 1322, 3000, 37.00, 23.00, 12.00, 9.00, 16.00, 9.00, 0, 0, 0, 606308, 13, 14, 14, 18, 0, 21740452),
(2378, 'Physsiallis', 6, 41117, 17780, 21000, 30.00, 56.00, 18.00, 32.00, 24.00, 24.00, 20000, 0, 0, 1507931, 0, 30, 34, 44, 0, 21761764),
(2381, 'Netenmeth', 9, 110685, 36002, 45000, 59.00, 34.50, 49.50, 23.00, 27.50, 53.50, 98, 0, 0, 2912321, 272, 500, 674, 233, 0, 21781172),
(2384, 'Enylak', 4, 33615, 8287, 10000, 22.00, 16.00, 22.00, 20.00, 21.00, 59.00, 20000, 0, 0, 959296, 101, 137, 85, 92, 0, 21772485),
(2385, 'Viviano', 4, 37938, 9441, 10000, 33.00, 33.00, 21.00, 14.00, 17.00, 15.00, 20000, 0, 0, 2956794, 162, 80, 192, 123, 0, 21744456),
(2391, 'Elarinya', 2, 8493, 1542, 3000, 14.00, 11.00, 19.00, 16.00, 16.00, 28.00, 0, 0, 0, 587817, 49, 50, 73, 49, 0, 21775254),
(2395, 'Karedoca', 10, 179756, 52327, 55000, 83.00, 79.00, 35.00, 48.00, 33.00, 31.00, 100, 0, 0, 623326, 97, 203, 126, 86, 0, 21779665),
(2400, 'D&eacute;ductance', 1, 3134, 0, 1000, 20.50, 8.50, 15.00, 10.00, 13.00, 20.00, 0, 0, 0, 272882, 50, 50, 50, 50, 0, 21733351),
(2404, 'Breen Leboeuf ', 8, 58869, 30965, 36000, 107.00, 30.00, 81.00, 35.00, 24.00, 20.00, 19647, 0, 0, 343920, 490, 174, 479, 511, 0, 21781318),
(2407, 'Yut', 6, 70570, 15023, 21000, 18.00, 26.00, 14.00, 24.00, 29.00, 46.00, 9986, 0, 0, 77294, 153, 84, 199, 224, 0, 21776458),
(2408, 'Derendar', 4, 116455, 8900, 10000, 43.00, 27.00, 33.00, 43.00, 12.00, 15.00, 10000, 0, 0, 1461307, 811, 651, 824, 928, 0, 21775328),
(2410, 'Harsiesis', 6, 38463, 15188, 21000, 34.00, 27.00, 12.00, 31.00, 17.00, 35.00, 18712, 0, 0, 1249978, 76, 91, 122, 130, 0, 21749514),
(2414, 'Grimlot', 8, 141000, 29355, 36000, 50.00, 36.00, 54.00, 21.00, 21.00, 16.00, 18172, 0, 0, 23, 699, 239, 382, 662, 0, 21779195),
(2415, 'Belgutei', 7, 92637, 23380, 28000, 43.50, 30.00, 42.00, 19.00, 20.00, 15.50, 14419, 0, 0, 155216, 97, 36, 105, 26, 0, 21773414),
(2423, 'Lak', 11, 191747, 58591, 66000, 100.00, 35.00, 91.50, 12.50, 39.50, 90.50, 426, 0, 0, 4663691, 1235, 1167, 366, 756, 0, 21781285);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2424, 'Vannams', 11, 63775, 57203, 66000, 51.50, 102.00, 91.00, 93.00, 32.50, 23.00, 30000, 0, 0, 72063, 237, 10, 295, 32, 0, 21780227),
(2425, 'Nathrae', 7, 161747, 27791, 28000, 32.00, 26.00, 21.50, 28.50, 21.00, 40.00, 382, 0, 0, 5921, 216, 229, 159, 175, 0, 21780830),
(2426, 'Azarath', 7, 87685, 23423, 28000, 49.00, 41.00, 62.00, 12.50, 16.00, 20.50, 20000, 0, 0, 112263, 205, 138, 335, 111, 0, 21774792),
(2427, 'Miliana', 3, 23072, 5603, 6000, 14.50, 13.00, 21.00, 17.50, 19.00, 32.00, 10000, 0, 0, 1556193, 27, 18, 17, 26, 0, 21772384),
(2429, 'Tulkas', 18, 218201, 159420, 171000, 72.00, 129.00, 42.00, 127.00, 110.00, 42.00, 16716, 0, 0, 269688, 96, 524, 137, 203, 0, 21781169),
(2430, 'Prolor', 10, 120830, 52202, 55000, 104.00, 74.00, 15.00, 32.00, 45.00, 64.00, 17058, 0, 0, 842629, 538, 257, 352, 481, 0, 21779917),
(2431, 'Axase', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743180),
(2432, 'Victoria', 1, 3250, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 44287, 12, 12, 12, 12, 0, 21743181),
(2433, 'Gola', 3, 15766, 4184, 6000, 31.00, 33.00, 16.00, 8.50, 19.00, 9.50, 10000, 0, 0, 1231464, 105, 109, 63, 57, 0, 21756503),
(2434, 'Yros', 1, 0, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743181),
(2435, 'Stygmat', 1, 0, 0, 1000, 16.00, 14.00, 11.00, 20.50, 13.00, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743181),
(2436, 'Marvin', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743181),
(2437, 'Elfredo', 4, 42638, 9749, 10000, 21.00, 24.00, 15.00, 25.00, 22.00, 17.00, 20000, 0, 0, 40726, 34, 143, 56, 37, 0, 21776730),
(2438, 'Elkarr', 7, 165824, 21081, 28000, 42.00, 26.00, 48.00, 23.00, 27.00, 21.00, 1018, 0, 0, 502856, 495, 661, 1053, 550, 0, 21778381),
(2439, 'Dylannator', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743181),
(2440, 'Nokossem', 8, 172355, 33659, 36000, 48.00, 14.00, 25.00, 16.00, 28.00, 52.00, 7639, 0, 0, 234, 416, 323, 207, 178, 0, 21780750),
(2441, 'Moustik', 1, 0, 0, 1000, 29.00, 17.50, 9.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743181),
(2442, 'Zabraxass', 1, 3134, 0, 1000, 15.50, 11.50, 13.50, 10.50, 13.50, 23.50, 0, 0, 0, 5244, 0, 0, 0, 0, 0, 21743181),
(2443, 'Fansel', 9, 73374, 44391, 45000, 67.00, 81.00, 50.00, 21.50, 33.00, 15.50, 30000, 0, 0, 1362339, 478, 522, 442, 360, 0, 21772278),
(2444, 'Firamar', 1, 3350, 0, 1000, 22.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 293232, 4, 4, 4, 4, 0, 21743182),
(2445, 'Draco', 1, 0, 0, 1000, 16.00, 14.00, 11.00, 20.50, 13.00, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743182),
(2446, 'Dragoir', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743182),
(2447, 'Hytchigo', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743182),
(2451, 'Sion', 5, 40382, 11707, 15000, 14.50, 20.50, 13.00, 41.00, 23.00, 48.00, 20000, 0, 0, 166212, 266, 223, 328, 148, 0, 21774996),
(2454, 'Nys&eacute;rine', 13, 204899, 82393, 91000, 47.50, 81.00, 22.00, 52.00, 71.50, 28.50, 35741, 0, 0, 18963, 414, 1080, 572, 1321, 0, 21781214),
(2456, 'Zarck', 1, 0, 0, 1000, 23.00, 20.00, 11.00, 8.50, 15.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747551),
(2458, 'Drazith', 1, 3134, 0, 1000, 11.50, 16.50, 10.50, 9.00, 17.00, 22.50, 0, 0, 0, 6121, 8, 8, 8, 8, 0, 21747560),
(2459, 'Cocorocoricoruico', 1, 3134, 0, 1000, 15.00, 14.00, 17.00, 14.00, 15.00, 14.00, 0, 0, 0, 223572, 0, 0, 0, 0, 0, 21747807),
(2460, 'Dydoune', 1, 0, 0, 1000, 15.00, 13.00, 19.00, 14.00, 14.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747810),
(2461, 'Benares', 1, 0, 0, 1000, 18.00, 10.50, 12.50, 18.00, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747810),
(2462, 'Elfira', 1, 3134, 0, 1000, 13.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5506, 0, 0, 0, 0, 0, 21747810),
(2463, 'Kastor', 1, 0, 0, 1000, 15.50, 11.50, 13.50, 10.50, 13.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747810),
(2464, 'Infernom', 1, 3134, 0, 1000, 15.00, 16.00, 13.00, 17.00, 14.00, 14.00, 0, 0, 0, 5086, 0, 0, 0, 0, 0, 21747810),
(2465, 'Ela&iuml;os', 8, 114795, 29366, 36000, 35.00, 58.00, 42.00, 104.00, 36.00, 74.00, 91, 0, 0, 105859, 706, 619, 488, 444, 0, 21778126),
(2466, 'Lijon', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747813),
(2468, 'Muychachos', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747813),
(2470, 'Livyst', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747816),
(2471, 'Vanniess ', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747816),
(2472, 'Manolosse', 1, 3224, 0, 1000, 17.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 100, 0, 0, 0, 0, 0, 21747816),
(2473, 'Juyliel', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747816),
(2474, 'Gaijath', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747816),
(2475, 'Luydio', 1, 0, 0, 1000, 20.00, 17.00, 14.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747816),
(2476, 'Fialtt', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21747816),
(2477, 'Toroc', 7, 79702, 22593, 28000, 45.50, 25.00, 24.00, 24.50, 28.50, 52.50, 2478, 0, 0, 53395, 73, 239, 129, 193, 0, 21779720),
(2488, 'Yukoua', 5, 19436, 10352, 15000, 66.00, 28.00, 24.50, 22.00, 17.00, 14.50, 10000, 0, 0, 430617, 136, 25, 85, 87, 0, 21770032),
(2489, 'Malays', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21750475),
(2490, 'Ronaldd', 1, 0, 0, 1000, 19.00, 22.00, 11.00, 9.50, 17.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21750475),
(2491, 'Siik', 1, 3134, 0, 1000, 18.00, 20.00, 10.50, 9.50, 17.00, 12.00, 0, 0, 0, 5016, 0, 0, 0, 0, 0, 21750475),
(2493, 'Tchinga', 13, 185943, 88054, 91000, 14.50, 64.00, 25.00, 104.00, 122.50, 82.50, 28778, 0, 0, 301411, 140, 111, 332, 242, 0, 21778346),
(2495, 'Purpurim La Fouine', 9, 82745, 44883, 45000, 14.50, 35.00, 18.00, 39.00, 43.50, 55.50, 29954, 0, 0, 1061233, 331, 50, 87, 180, 0, 21781157),
(2497, 'Trano', 15, 247885, 113108, 120000, 75.50, 68.00, 71.00, 95.00, 84.50, 41.50, 866, 0, 0, 112685, 140, 331, 208, 105, 0, 21779623);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2498, 'Drekal', 6, 147023, 17990, 21000, 17.00, 55.00, 22.00, 23.00, 29.00, 40.00, 30000, 0, 0, 27689, 184, 168, 303, 168, 0, 21780664),
(2499, 'Poulpi', 1, 0, 0, 1000, 20.00, 13.00, 19.00, 13.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2500, 'Malwene', 5, 67034, 14396, 15000, 19.50, 25.00, 19.00, 29.00, 26.50, 18.50, 14520, 0, 0, 1040, 166, 255, 170, 116, 0, 21780759),
(2501, 'Rayan', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2502, 'Mamono', 1, 3256, 0, 1000, 20.00, 17.00, 9.50, 17.50, 12.00, 14.00, 0, 0, 0, 47574, 4, 8, 4, 4, 0, 21756436),
(2503, 'Darnekox', 1, 0, 0, 1000, 16.00, 11.00, 19.00, 11.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2505, 'Julien', 1, 3427, 0, 1000, 20.00, 9.50, 14.50, 10.00, 17.50, 19.50, 46, 0, 0, 1, 0, 0, 0, 0, 0, 21756436),
(2507, 'Naustra', 1, 0, 0, 1000, 14.00, 14.00, 13.50, 15.50, 13.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2509, 'Hafed', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2510, 'Bely-Coeur', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2511, 'Pasidon', 1, 0, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2512, 'Braxu', 1, 0, 0, 1000, 18.00, 17.00, 14.50, 14.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2513, 'Mannak', 1, 0, 0, 1000, 16.50, 9.50, 14.50, 18.50, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2514, 'Mayc', 1, 3625, 0, 1000, 16.50, 15.00, 9.00, 16.50, 14.00, 20.00, 0, 0, 0, 111973, 12, 12, 12, 12, 0, 21756436),
(2515, 'Kal-el', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756436),
(2516, 'Raw', 3, 64359, 5637, 6000, 20.50, 12.50, 16.50, 13.50, 18.50, 32.50, 8826, 0, 0, 40, 254, 142, 189, 153, 0, 21779624),
(2517, 'Infis', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756437),
(2518, 'Witempe', 1, 3387, 0, 1000, 26.00, 16.00, 8.50, 7.50, 14.50, 14.50, 0, 0, 0, 642, 4, 4, 4, 4, 0, 21756437),
(2519, 'Watiflo', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756437),
(2520, 'Quentin', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756437),
(2521, 'Kaedon', 7, 152362, 27963, 28000, 65.50, 38.00, 72.00, 21.00, 21.00, 14.50, 18904, 0, 0, 500924, 501, 205, 495, 514, 0, 21779608),
(2522, 'Sheana', 1, 3134, 0, 1000, 13.50, 10.00, 18.00, 15.50, 13.50, 16.50, 0, 0, 0, 5669, 4, 4, 4, 4, 0, 21756437),
(2523, 'Cirya', 1, 3134, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 20.00, 0, 0, 0, 5054, 0, 0, 0, 0, 0, 21756437),
(2524, 'Faelivrin', 4, 44525, 6425, 10000, 24.00, 18.00, 33.00, 22.00, 16.00, 16.00, 10413, 0, 0, 171232, 135, 92, 242, 106, 0, 21779990),
(2525, 'Bastienasis', 1, 0, 0, 1000, 24.00, 21.00, 11.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756437),
(2526, 'Maclo&iuml;l', 1, 3134, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 6659, 8, 8, 8, 8, 0, 21756437),
(2527, 'Mata&iuml;', 1, 4980, 532, 1000, 16.00, 13.00, 18.00, 20.00, 13.50, 12.50, 10000, 0, 0, 530167, 8, 8, 3, 8, 0, 21759004),
(2528, 'Lolita', 1, 0, 0, 1000, 7.50, 11.00, 18.00, 16.00, 14.50, 18.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756437),
(2529, 'Lortigan', 4, 109309, 7891, 10000, 19.00, 15.00, 18.00, 15.00, 20.00, 39.00, 17039, 0, 0, 356574, 118, 71, 221, 248, 0, 21775165),
(2530, 'Lo&iuml;der Skadurel', 1, 3128, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 12.00, 0, 0, 0, 5424, 0, 0, 0, 0, 0, 21756438),
(2533, 'Kiharo', 1, 10951, 235, 1000, 31.00, 22.00, 9.00, 7.50, 13.00, 10.50, 10000, 0, 0, 97708, 85, 135, 134, 36, 0, 21765091),
(2534, 'Magebar', 4, 62456, 8846, 10000, 31.00, 14.00, 20.00, 21.00, 16.00, 30.00, 20000, 0, 0, 43674, 338, 333, 311, 323, 0, 21780647),
(2535, 'Kaiiros', 3, 42284, 4585, 6000, 48.00, 23.50, 19.00, 13.50, 16.50, 13.50, 10000, 0, 0, 49635, 97, 146, 62, 96, 0, 21778930),
(2536, 'N&eacute;romantic', 1, 0, 0, 1000, 18.00, 10.50, 12.50, 18.00, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2537, 'Fufuti', 4, 87396, 8623, 10000, 23.00, 12.00, 41.00, 25.00, 12.00, 16.00, 11305, 0, 0, 77112, 208, 257, 213, 274, 0, 21792662),
(2538, 'Jade', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2539, 'Ceb', 1, 0, 0, 1000, 21.00, 14.00, 16.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2540, 'Adathalion', 2, 15240, 1424, 3000, 19.00, 10.00, 25.00, 15.00, 16.00, 14.00, 0, 0, 0, 338112, 42, 27, 45, 30, 0, 21772029),
(2541, 'Shi Nayne', 1, 0, 0, 1000, 17.50, 9.00, 20.00, 11.00, 15.50, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2542, 'Elinster', 6, 62038, 15589, 21000, 30.00, 26.00, 47.00, 23.00, 23.00, 19.00, 0, 0, 0, 259344, 289, 256, 350, 325, 0, 21781232),
(2543, 'Maryn', 1, 0, 0, 1000, 12.50, 8.50, 18.00, 17.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2544, 'Orbath', 1, 0, 0, 1000, 16.50, 8.50, 14.50, 9.50, 17.50, 20.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2545, 'Mihawk', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2546, 'Marco', 1, 0, 0, 1000, 17.50, 16.00, 17.00, 13.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2547, 'Ulrik', 4, 53094, 6000, 10000, 26.00, 14.00, 22.00, 16.00, 19.00, 35.00, 8, 0, 0, 11519, 178, 370, 312, 171, 0, 21781161),
(2548, 'Slash', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2549, 'Milboo', 5, 85644, 10364, 15000, 23.50, 20.50, 19.00, 30.50, 20.50, 29.00, 19464, 0, 0, 19319, 174, 141, 193, 146, 0, 21780885),
(2552, 'Kazelily', 1, 0, 0, 1000, 16.50, 10.50, 12.50, 18.50, 12.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2553, 'Moine', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2554, 'Zora', 3, 20309, 3719, 6000, 9.50, 17.00, 19.00, 19.00, 22.50, 25.50, 10000, 0, 0, 21553, 44, 41, 53, 72, 0, 21788919),
(2555, 'Tikoune', 2, 59446, 2612, 3000, 18.00, 12.00, 15.00, 12.00, 16.00, 31.00, 784, 0, 0, 544, 144, 152, 194, 144, 0, 21776328);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2556, 'Lienhardt', 1, 3144, 0, 1000, 21.50, 8.50, 14.00, 9.00, 14.00, 23.00, 0, 0, 0, 3088, 0, 0, 0, 0, 0, 21766237),
(2557, 'Aquarius', 1, 3134, 0, 1000, 13.50, 13.00, 9.00, 22.00, 15.50, 17.50, 0, 0, 0, 5119, 0, 0, 0, 0, 0, 21766237),
(2558, 'Hakoc', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2559, 'Kroka L`Alambik', 3, 13135, 4084, 6000, 27.00, 14.50, 21.50, 10.00, 18.50, 25.50, 10000, 0, 0, 212686, 47, 33, 96, 32, 0, 21776198),
(2560, 'Mallamarche', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2561, 'Gosat', 1, 0, 0, 1000, 17.00, 13.00, 17.00, 11.00, 10.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766237),
(2562, 'Morathrarim', 5, 99522, 11415, 15000, 17.50, 29.00, 19.00, 26.00, 27.50, 16.50, 17354, 0, 0, 88072, 154, 93, 154, 149, 0, 21780725),
(2563, 'Aapall', 1, 3134, 0, 1000, 19.00, 13.00, 16.00, 11.50, 15.00, 12.50, 0, 0, 0, 5562, 4, 4, 4, 4, 0, 21766237),
(2564, 'Bodcaven', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2565, 'Mimain', 1, 0, 0, 1000, 20.00, 13.00, 16.00, 8.50, 16.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2566, 'Mixie', 1, 0, 0, 1000, 14.50, 10.00, 24.00, 17.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2568, 'Fantastia', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2569, 'Lele', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2570, 'Katel', 1, 0, 0, 1000, 18.00, 18.00, 15.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2571, 'Soldamixou', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2572, 'Bobo', 1, 0, 0, 1000, 17.00, 11.50, 13.50, 10.00, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2573, 'Kimita', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2574, 'Ebume', 1, 0, 0, 1000, 19.00, 16.00, 15.00, 9.50, 10.00, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2575, 'Darack', 1, 0, 0, 1000, 29.00, 17.50, 9.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2576, 'Xwill', 1, 0, 0, 1000, 17.50, 16.00, 17.00, 13.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2577, 'Lithanae', 1, 3134, 0, 1000, 14.50, 12.00, 13.00, 20.00, 11.50, 14.50, 0, 0, 0, 6113, 4, 4, 4, 4, 0, 21766240),
(2578, 'Calhazard', 3, 43028, 4854, 6000, 20.50, 12.50, 19.50, 13.50, 17.50, 33.50, 10000, 0, 0, 53718, 43, 135, 109, 154, 0, 21779917),
(2579, 'Rafal', 5, 30946, 12673, 15000, 24.50, 22.50, 21.50, 16.50, 22.50, 48.50, 1343, 0, 0, 4, 167, 146, 51, 146, 0, 21781140),
(2580, 'Double', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2581, 'Sasuedleu', 1, 0, 0, 1000, 17.00, 11.50, 13.50, 10.00, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766240),
(2582, 'Zoxy', 1, 0, 0, 1000, 14.00, 11.00, 13.00, 22.00, 13.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766241),
(2583, 'Potis', 1, 0, 0, 1000, 15.00, 16.00, 13.00, 17.00, 14.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766241),
(2585, 'Rom', 1, 3134, 0, 1000, 21.00, 19.00, 14.50, 14.00, 13.00, 12.50, 0, 0, 0, 5571, 0, 0, 0, 0, 0, 21767879),
(2586, 'Zox le Conquerant', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767879),
(2587, 'Ag', 1, 0, 0, 1000, 16.00, 17.00, 15.00, 15.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767879),
(2588, 'Keltasse', 1, 0, 0, 1000, 24.00, 21.00, 11.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767879),
(2589, 'Acromade', 2, 68892, 1719, 3000, 30.00, 27.00, 15.00, 9.00, 15.00, 9.00, 579, 0, 0, 62440, 113, 115, 157, 115, 0, 21781242),
(2590, 'Degaraula ', 1, 0, 0, 1000, 18.00, 9.50, 14.50, 18.00, 10.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767879),
(2591, 'Lindir', 6, 68155, 15343, 21000, 54.00, 30.00, 20.00, 81.00, 23.00, 21.00, 4109, 0, 0, 7672, 214, 209, 135, 57, 0, 21781253),
(2593, 'Hawkys', 1, 3134, 7, 1000, 19.00, 9.50, 14.50, 9.00, 17.50, 17.50, 0, 0, 0, 748, 0, 0, 0, 0, 0, 21768200),
(2594, 'Galmin', 3, 84344, 3597, 6000, 9.50, 12.50, 21.50, 23.00, 14.00, 36.50, 20000, 0, 0, 299661, 172, 74, 128, 234, 0, 21779745),
(2595, 'D&eacute;ric', 1, 3573, 22, 1000, 29.00, 16.00, 15.00, 7.50, 12.00, 13.50, 0, 0, 0, 391, 0, 0, 0, 0, 0, 21769487),
(2596, 'Nathoum', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2597, 'Segovois', 1, 0, 0, 1000, 14.50, 14.00, 18.00, 15.00, 13.50, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2598, 'Arkranian', 3, 62918, 3552, 6000, 18.50, 13.50, 16.50, 13.50, 18.50, 36.50, 10000, 0, 0, 26951, 110, 44, 52, 71, 0, 21781048),
(2599, 'Mat-le-destructeur', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2600, 'Looxenfer', 1, 0, 0, 1000, 21.00, 14.00, 16.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2601, 'Karima', 1, 0, 0, 1000, 19.00, 16.50, 15.00, 12.50, 13.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2602, 'Monia', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2603, 'Rekte', 1, 0, 0, 1000, 22.00, 20.00, 11.00, 11.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2604, 'Blekirs', 1, 0, 0, 1000, 14.00, 11.00, 13.00, 22.00, 13.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2605, 'Bisboy', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2606, 'Natasha', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2607, 'Romagie', 3, 47691, 4012, 6000, 31.00, 34.00, 17.00, 9.50, 20.00, 9.50, 20000, 0, 0, 47178, 138, 112, 100, 220, 0, 21780742),
(2608, 'Acoarinn', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155),
(2609, 'Galmaad', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771155);INSERT INTO `11jun_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2610, 'Mortzacus', 2, 25860, 1575, 3000, 35.00, 24.00, 13.00, 9.00, 16.00, 9.00, 7881, 0, 0, 9040, 136, 77, 33, 56, 0, 21781055),
(2611, 'Tetrahyd', 2, 18514, 2249, 3000, 23.00, 15.00, 18.00, 14.00, 16.00, 22.00, 6619, 0, 0, 7476, 36, 23, 33, 20, 0, 21779673),
(2612, 'Dojaxif', 2, 13277, 1445, 3000, 16.00, 11.00, 14.00, 17.00, 14.00, 29.00, 0, 0, 0, 864, 14, 14, 12, 14, 0, 21781169),
(2613, 'Capusinne', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2614, 'Nem&egrave;s', 1, 3464, 0, 1000, 16.50, 14.00, 13.00, 19.00, 11.50, 12.50, 0, 0, 0, 290, 0, 0, 0, 0, 0, 21776993),
(2615, 'Keperoarness', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2616, 'Leffi', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2617, 'Dift', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2618, 'Maliciadu', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2619, 'Majestika', 1, 0, 0, 1000, 11.50, 15.00, 15.00, 12.00, 15.50, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2620, 'Buresting', 1, 0, 0, 1000, 16.00, 12.00, 17.00, 11.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2621, 'Motarast', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2622, 'Nathw', 1, 0, 0, 1000, 12.00, 16.00, 12.00, 11.00, 17.50, 18.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2623, 'Alkehl', 1, 4363, 0, 1000, 20.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 8848, 0, 0, 0, 0, 0, 21776993),
(2624, 'Sensuelle', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2625, 'Aiize', 3, 36145, 3963, 6000, 16.50, 13.50, 15.00, 21.00, 16.00, 35.00, 10000, 0, 0, 11963, 33, 37, 22, 22, 0, 21780805),
(2626, 'Lucie', 1, 0, 0, 1000, 17.50, 9.00, 20.00, 11.00, 15.50, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993),
(2627, 'Evangelyne', 1, 0, 0, 1000, 15.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776993);



CREATE TABLE `11jun_guildes_2` (
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

INSERT INTO `11jun_guildes_2` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Disciples de l`Eternel', 'Thassopole', 7, 21447086, 'http://www.linkup-coaching.com/files/image/icones/const.jpg', 'Azhaag', 'L\'Eternel sur le trône à la place de l\'empereur fit appeler sa garde rapprochée. Les Disciples rentrèrent un à un dans la pièce et s\'agenouillèrent devant leur divinité. 

C\'est à la suite d\'une longue et parfois pénible reconquête qu\'ils forgèrent ensemble dans le sang leur nouveau royaume. 

L\'Eternel transmis à nouveau ses paroles à chaque Disciple:

"Vous êtes braves, vous vous distinguez par votre efficience, vous méritez donc ce que l\'on a conquis.
Ainsi je vous confie maintenant une région à gérer pour qu\'elle soit sous l\'autorité de l\'Eternel et non pas qu\'elle cède à la rébellion ou la violence.
Vous rencontrerez en face de vous sûrement quelques récalcitrants.
Il sera de votre devoir d\'y remédier." 


Les disciples prirent congés sur ordre de l\'Eternel. Chacun avait donc de nouvelles responsabilités qu\'ils se devaient d\'assumer...', 'Cette armada a pour but de défendre l\'Eternel jusqu\'à ce qu\'il soit défait. L\'Eternel possède dés à présent toutes les régions de Kalamaï et entend ainsi répondre des agissements de chaque groupuscule tel qu\'il soit en ses terres assouvies. ', 'Se conformer à l\'organisation interne et ludique de l\'armada.
Ne pas salir limage de l\'Eternel en public.
Respecter les stratégies internes.
Faire preuve de créativité pour embellir celles-ci.', 230992, 'http://'),
(2, 'Vae Victis', 'Amphise', 1, 21464134, 'http://hitskin.com/themes/14/18/75/i_logo.jpg', 'Razak', 'La fondation de cette nouvelle alliance survint quelques jours après la mise en fonction de Razak en tant que Palatin d’Amphise.  Depuis sa jeunesse, seule la défense de sa province l’intéressait. C’est ainsi que ses rêves devinrent réalités. 

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
', 8627, 'http://vae-victis.forumgratuit.fr/forum.htm'),
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
 
Tout Voyageur peut se fixer un ou plusieurs objectifs. Tous alors feront leur possible pour l’aider à les réaliser.', 280685, 'http://manticore.forumactif.com/hall-d-entree-f58/la-complainte-des-voyageurs-t1312.htm'),
(4, 'Luminas', 'Etimnon', 6, 21465859, 'http://nsa19.casimages.com/img/2010/10/24/101024110430599849.jpg', 'Tiram', 'Une fois encore, ils étaient venus tout ravager. Partout des destructions, la nature souillée, la puanteur de la mort et les cris des agonisants...

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
- toujours garder un bon esprit dans le jeu.', 233098, 'http://luminas.forumpro.fr/forum.htm'),
(6, 'Les Scribes de Mésolongion', 'Mésolongion', 6, 21479922, 'http://a31.idata.over-blog.com/1/72/23/46/sister-nightfall/CN8-Eglise-Notre-Dame--Taverny.jpg', 'Irkos', 'Dans la forêt magique et impénétrable de Mésolongion, un homme vivait en ermite, au fin fond des bois. Il était nécromancien. Cet homme se nommait Irkos, c’était un marginal. 

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
- Fair play, bonne entente, et cohésion sont requis afin d’être les plus performants possibles. ', 158706, 'http://scribes.forumgratuit.fr'),
(7, 'Les Marcheurs des Ombres', 'Igoumen', 7, 21516003, 'http://img10.imageshack.us/img10/7119/sacientsandwellersbysan.jpg', 'D&eacute;sacre', '	Bazaar, chef de la tribu des monts de Crissevent, était inquiet. Depuis des lunes, la shamane Vertride annonçait les pires présages pour son clan. Le climat de Crissevent n’était-il pas suffisamment hostile pour que l’Orque n’ait pas à se préoccuper de menaces extérieures ?

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
Concevoir la victoire, la défaite et les interactions entre joueurs en général en termes ludiques.', 171310, 'http://marcheursdesombres.forumgratuit.fr/forum.htm'),
(8, 'Pour un Empire Neuf', 'Naxos', 3, 21538779, 'http://fc05.deviantart.net/fs41/f/2009/051/b/1/Undead_army_by_ani_r.jpg', 'Myos', '"Ecoutez, mortels, écoutez morts, et écoutez surtout maîtres de la Mort, amis nécromanciens,

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

5. Tout membre est tenu de s’impliquer un maximum pour notre cause.', 84209, 'http://pourunempireneuf.forumactif.net/forum'),
(9, 'La Main Pourpre', 'Outre-Mer', 5, 21649557, 'http://doudouandtoutou.vip-blog.com/medias/0206/434228wal.jpg', 'Ashinseika', 'Description

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

Toute demande d``adhésion devra se faire sur le forum ou par message à Ashinseika ou autre responsable.', 168611, 'http://do-lamainpourpre.xooit.fr'),
(10, 'Le cercle des Monarques', 'Vénopole', 10, 21652976, 'http://mythologica.fr/medieval/pic/arthur2.jpg', 'Lyonis', ' Aujourd’hui se tint une nouvelle réunion du cercle des monarques. Ce cercle fut créé par trois rois dans un unique but, vaincre l’Ennui. L’Ennui tenace et fourbe, qu’ils enduraient jour après jour, durait depuis qu’ils étaient montés sur le trône, remplaçant leurs défunts pères. En effet, ils n’avaient rien à faire en tant que roi : toutes les affaires de leurs royaumes étaient gérées par des fonctionnaires très compétents. Les finances étaient bonnes, les rentrées d’argent régulières. La police et la milice remplissaient à merveille leur rôle, tant et si bien que le peuple se tenait à carreau, pas de révolte à mater, pas de brigands à jeter au cachot, pas un meurtrier à écarteler en place publique ni même un voleur de poule à mettre au pilori. Pas plus que de défendre terre à défendre, car leur voisins étaient tous respectables et incroyablement loyaux. Bref, les monarques s’ennuyaient fermement, à la tête de leur royaume où tout allait si bien. Ils avaient donc décidé de créer ce club, le cercle des monarques, qui avait pour but de trouver une occupation durable à ces trois rois en manque de sensations fortes. Mais terrasser le royal Ennui n’est pas chose aisée. Ils s’étaient réunis maintes fois, et avaient essayé moult activités : le bridge, la pétanque molle, un jeu elfe connu sous le nom de Skrabeule, les échecs orques, qui consistes à faire avaler le plus grand nombre de pièce à l’adversaire, des sauts en parachutes du haut du donjon, des courses de gnomes en sac, saute-mouton, un cache-cache géant, et même un jeu étrange où le but est de toucher les autres puis de monter sur les meubles. Ils organisèrent des tournois de joute, de tir à l’arc, des combats de gladiateurs, mais rien ne put les distraire bien longtemps. Ils avaient même tenté d’organiser des révoltes paysannes, en soudoyant certains chefs de villages, mais ces derniers avaient tous refusé. Ils avaient tenté d’importer des brigands d’autres contrées, mais à peine étaient-ils arrivés sur leurs terres, qu\'ils furent interceptés par les miliciens et reconduits à la frontière. Malgré tous leurs efforts, ils ne parvinrent à terrasser l’Ennui. 
 Mais ce soir, ils trouvèrent LA solution. Ce serait la fin de l’Ennui. Voilà ce qu\'il fallait : partir en guerre contre d’autres contrées, à la tête de leurs armées belles et bien nourries. Et pour en faire profiter tout le monde, ils envoyèrent une missive à tous les Monarques Vénopoliens, afin de les appeler à vaincre le royal Ennui !
', 'Vaincre le Royal Ennui, en rassemblant tous les monarques de Vénopole dans de multiples et joyeuses croisades. Les vétérans comme les débutants seront accueillis à bras ouverts !

Terrasser sous toutes ses formes le Royal Ennui, dans la joie et la bonne humeur.

Noyer le Royal Ennui dans des tonneaux de vin et de bière.

', 'Participer un peu sur forum, poster ses rapports de combats.

Etre présents au réunion du cercle.

Rester poli et courtois.

', 331335, 'http://lecercledesmonarques.forumgratuit.fr/'),
(11, 'Confrérie des Ombres', 'Prévèze', 11, 21680287, 'http://api.ning.com/files/D58P6DfhWBW6IT0mWlg15kugwGOAZctT4*jzHcV7jAqHlZqfJY5dHp0yjnc6uMQHlBFl2WBIS8oWmD2C7hZ0wXBLn9u77*fc/Vampires12.jpg', 'Artaxxas', 'Il faut savoir que le nosferatu, communément appelé vampire, ne meurt pas, comme l``abeille, une fois qu``il a fait une victime. Au contraire, il n``en devient que plus fort ; et, plus fort, il n``en est que plus dangereux . Il se sert de la nécromancie et de la démonologie, arts qui, comme l``indique l``étymologie des deux mots, consistent à évoquer les morts pour deviner l``avenir, à les ranimer et à contrôler les démons. Tous les morts dont il s``approche sont donc à ses ordres. Il peut, avec pourtant des réserves, se transformer en une énorme chauve-souris, et se déplacer plus vite qu``un étalon au galop; il a même le pouvoir, dans une certaine mesure, de se rendre maître des éléments : la tempête, le brouillard, le tonnerre, et de se faire obéir de créatures inférieures, telles que le rat, le hibou, la chauve-souris, la phalène, le renard et le loup ; il peut se faire grand et se rapetisser et, à certains moments, il disparaît exactement comme s``il n``existait plus. Nous, les vampires, venons des ténèbres, il est dans notre nature de répandre le mal et la peur. C``est ce que nous avons fait à de nombreuses reprises dans l``empire de Kalamai . Hélas, nous avons été vaincus et affaiblis et notre plan de domination sur toutes les terres connues a échoué. Mais aujourd``hui , après avoir patiemment reconstitué nos forces pendant des siècles, nous sommes enfin prêts à annihiler tous nos ennemis et à prendre la place qui nous reviens de droit. Aucune race ne pourra nous arrêter et même les pouvoirs des anciens sont dérisoires face aux forces que nous ont accordé nos dieux noirs. Nous nous répandons partout et la Corporation des Arcanes, la seule qui ait la puissance pour nous contrer, est rongée de l``intérieur par nos agents. Aucun Dante ne viendra vous sauver, servez les ténèbres ou vos âmes seront torturées pour l``éternité et votre sang abreuvera à jamais notre soif insatiable. Toutefois, nos dissensions internes ont causé jadis notre perte c``est pourquoi les vampires et leurs alliés ténébreux se sont réunis dans dans une confrérie : la Confrérie des Ombres . Même nos amis tremblent à l``idée de prononcer le nom funeste de notre armada...', 'Notre but ultime est la domination éternelle des Ténèbres sur l``empire de Kalamai et toutes les terres connues, les impurs doivent adorer les dieux noirs .', '-Premier commandement : 
A ton chef tu obéiras et les officiers tu suivras sans broncher 


-Deuxième commandement :
Tes frères tu respecteras et aideras 


Troisième commandement :
A la vie commune tu participeras de façon régulière en consultant et en participant aux discussions 


Quatrième commandement :
Tes ennemis tu égorgeras et pilleras sans te poser de question


La règle ultime est tuer ou être tué !
', 355511, 'http://do-shadow-lords.xooit.fr');



CREATE TABLE `11jun_guerres_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

INSERT INTO `11jun_guerres_2` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
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
(3, 'pna', 'termine', 'L`Union des Titans', 'Les Scribes de Mésolongion', 'L`Union des Titans', '', '', 'La plupart des guildes jouent le jeu de lumière, chassent les \'mauvaises\' races, font la guerre pour la paix. Il est écœurant de voir tant d\'hypocrisie régnant en maître sur Kalamai. Sans paradoxe aucun, nous affirmons faire la guerre pour la guerre, pour la destruction, pour la mort, pour la ruine, pour l\'anéantissement. Qui sont-ils donc pour désigner quelles sont les races bonnes ? Pour qui se prennent ces serviteurs de la lumière, avilis par leur aveuglement fanatique ? Nous leur montrerons la vraie voie, celle menant à la vérité. Celle de la Mort. Par la mort.

Titans, nous sommes les deux seuls armadas présentes victimes de leur fausse illumination divine. Montrons que leur détermination n\'est qu\'éphémère, que devant Nucter nous sommes tous les mêmes. Nous sommes Ses créatures, et qu\'importe la splendeur et l\'éclat qu\'ils accordent à leurs gestes, ils se rendront bien vite compte que l\'utopie d\'un monde éclairé n\'est qu\'un rêve. Et un songe n\'est pas fait pour être réalisé, mais seulement rêver.

Titans, nous vous soutenons dans votre quête de destruction, allions nos objectifs et ouvrons les yeux à tout ces êtres qui croient que la Mort ne touche que les autres. Nous serons là pour vous, notre heure est venue. ', '', 21514353, 105187, 111279, 21755717, 150540, 20759, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 1, 0, 0, 0, 1.2910461513788, 0, 1.2910461513788, 0, 0, 0, -178, 159, 2658, 0, 406, 0, 719, 0, 0, 0, 15915, 0, 6, 0, '', '', 0, 0, '', '', 0, '', ''),
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
', 'Aucun', 21576639, 94268, 104939, 21597034, 98876, 63684, 'nbrvict', 100, '', 0, '', 0, 'AND', 'Butin total', 0, '', 0, '', 0, '', '', 26, 12, 5, 16, 36.3631108403, 21.6370245998, 29.8969595116, 27.863280704, 30079, 51107, 919824, 674174, 168893, 103990, 68427, 44554, 49501, 27316, 0.811620467937, 8.4163398495, 440663, 520004, 175, 132, 'Arteas', 'Burgrok Brise`Fer', 238, 8136, 'Burgrok Brise`Fer', 'Burgrok Brise`Fer', 0, '', '|Zacharias|'),
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

Pliez vous à l`Eternel.', 'Les Disciples de l`Eternel', 21660911, 223502, 103751, 21677092, 156886, 172079, 'xp', 50000, 'nbrvict', 50, 'or', 1000000, 'AND', 'Butin total', 1055671, '', 0, '', 0, '', '', 45, 3, 11, 32, 47.5339387974, 36.0092867318, 55.6230683117, 29.2875626308, 52739, 27106, 672809, 913384, 229418, 101807, 120984, 56134, 79008, 41892, 9.18570225878, 0, 1012758, 869057, 784, 1075, 'Sycomore', 'Tiram', 4819, 1220, 'Tiram', 'Sycomore', 0, '|Zar`Kull|', ''),
(15, 'guerre', 'termine', '', 'La Main Pourpre', 'Le cercle des Monarques', '', '', 'Le royal ennemie se taira le temps de cette bataille, l`ennuie nous a gagner, nous le chassons ainsi, et nous ne nous retiendrons pas de vous chasser vous aussi.', 'La Main Pourpre', 21663114, 91251, 116753, 21681012, 144641, 191078, 'pertePuiss', 1500000, 'nbrvict', 50, '', 0, 'AND', 'Butin total', 1749711, '', 0, '', 0, '', '', 56, 7, 9, 52, 54.7829990545, 60.2398562691, 56.9505808593, 58.7519359693, 85726, 57472, 1100705, 1691343, 258579, 429565, 162496, 160650, 109961, 108751, 4.86533161769, 13.3071345812, 1904305, 1498516, 861, 6545, 'Ashinseika', 'Alrik', 9442, 725, 'Alrik', 'Ashinseika', 0, '|Jaeregan|', ''),
(16, 'guerre', 'termine', '', 'La Main Pourpre', 'Pour un Empire Neuf', '', '', 'Dies iræ, dies illa,
Solvet sæclum in favílla

"Jour de colère, que ce jour là
Où le monde sera réduit en cendres,"

Les Ombres de la Main Pourpre vont venir vous cueillir.', 'La Main Pourpre', 21690429, 125625, 100695, 21745178, 122547, 88437, 'nbrvict', 45, 'pertePuiss', 1500000, '', 0, 'AND', 'Butin total', 4369704, '', 0, '', 0, '', '', 55, 20, 2, 18, 69.989510518548, 16.308937698936, 52.834970144911, 32.277567274068, 89049, 87665, 1749661, 1428245, 456632, 110569, 201538, 96340, 125116, 58009, 8.4506670169757, 6.1231298778999, 1404486, 1044193, 1940, 1543, 'Eragole', 'Myos', 786, 9111, 'Eragole', 'Myos', 0, '|L&eacute;nnih|Eragole|', '|Essyr|'),
(17, 'guerre', 'termine', '', 'Le cercle des Monarques', 'Confrérie des Ombres', '', '', ' Après la guerre contre la Main pourpre, le royal Ennui rodait à nouveau en Vénopole et frappait les monarques de plein fouet. Ils passaient le plus clair de leur temps à boire copieusement ou à jouer à chat perché. Il était grand temps d`agir, de mettre fin aux agissements déprimants de l`Ennui. 
 Et pour ce faire, quoi de mieux qu`une bonne guerre ? ', 'Le cercle des Monarques', 21693109, 141761, 217342, 21707034, 176915, 158759, 'xp', 75000, '', 0, '', 0, 'AND', 'Butin total', 1277261, '', 0, '', 0, '', '', 36, 8, 14, 40, 45.256596965097, 57.085644223442, 51.343205072692, 50.28302620257, 75138, 70758, 1323539, 1530243, 235467, 294779, 134877, 154838, 75715, 94886, 12.867357400879, 6.600105689432, 924131, 1343364, 688, 1380, 'Jaeregan', 'Harnas', 11558, 2213, 'Harnas', 'Jaeregan', 0, '|Klamhan|', '|Algar|'),
(18, 'pna', 'encours', '', 'Confrérie des Ombres', 'La Main Pourpre', '', '', 'Salut à vous nobles membres de la Main Pourpre ! Une guerre nous oppose actuellement au Cercle des Monarques auquel vous avez été opposé par le passé !
Un dicton des temps immémoriaux dit "Les ennemis de mes ennemis sont mes amis" .
Quoi de plus sage que de suivre ce dicton et de passer un pacte entre nos deux armadas ? Bien sûr la possibilité de voir ces petits nobles du Cercle des Monarques se faire dessus quand ils apprendront notre pacte est aussi séduisante ! Mais bon , le but de ce pacte serait essentiellement de mettre en difficulté le cercle des Monarques et de mettre un frein à leurs ardeurs ! Force et honneur aux armées de la Main Pourpre ! 


Artaxxas le Cruel vous salue bien messires !', '', 21694097, 160553, 137370, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 1, 0, 0, 0, 0.72685741833775, 0, 0.72685741833775, 0, 1424, 2018, 37262, 20261, 6764, 0, 7740, 0, 4085, 0, 0, 0, 39321, 0, 8, 0, 'Chitcat', 'Belenora', 1424, 2559, 'Chitcat', 'Chitcat', 0, '', ''),
(19, 'pna', 'termine', 'Les Marcheurs des Ombres', 'Confrérie des Ombres', 'Les Marcheurs des Ombres', '', '', 'Salutations frères Marcheurs des Ombres !

Tous ceux qui servent les Ombres sont nos amis !
Répandons les ténèbres ensembles sur Kalamai et établissons notre puissance pour un millénaire ! La Confrérie des Ombres sera indéfectible en amitié et impitoyable avec vos ennemis !
Il est temps d\'établir un pacte avec tous les serviteurs des Ombres ! Ténèbres levez vous et donnez nous la force d\'écraser la lumière !', '', 21694247, 158977, 228772, 21694247, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', ''),
(20, 'guerre', 'termine', '', 'La Main Pourpre', 'Le cercle des Monarques', '', '', 'La Confrérie des Ombres demande notre aide, un contrat à été signé, nous allons donc le remplir !
Gloire au sang !', 'Le cercle des Monarques', 21694793, 233649, 184519, 21709230, 135590, 133861, 'nbrvict', 45, 'pertePuiss', 1000000, '', 0, 'AND', 'Butin total', 1561875, '', 0, '', 0, '', '', 13, 6, 2, 40, 18.424951452181, 42.2664968768, 14.447197963069, 46.672357569013, 49351, 54166, 1008461, 943952, 105721, 327611, 49535, 151920, 29053, 114973, 1.1850792649197, 12.066258956999, 524606, 1304169, 421, 3580, 'Ashinseika', 'Jijona', 6522, 0, 'Ashinseika', 'Ashinseika', 0, '', '|Klamhan|'),
(21, 'pna', 'encours', '', 'Le cercle des Monarques', 'Pour un Empire Neuf', '', '', 'Comme le disait le courageux Artaxxas, dit le Cruel, aux nobles tueurs psychopathes de la main pourpre, les ennemis de mes ennemis sont mes amis. 
Reconnaissant à unanimité tout le bon sens de ce dicton, nous vous proposons une alliance militaire contre la Main Pourpre. 
Ce pacte sera, pour nous comme pour vous, des plus bénéfiques, et nous permettra ainsi de lutter à armes égales contre nos lâches adversaires. 

Au nom de tous les monarques, Lyonis
', '', 21696250, 148546, 107636, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 2, 0, 0, 1.1982156328647, 1.9357956417529, 0, 11897, 466, 16308, 164877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jaeregan', 'Tharoze', 12342, 466, 'Tharoze', 'Jaeregan', 0, '', ''),
(22, 'guerre', 'termine', '', 'Confrérie des Ombres', 'Pour un Empire Neuf', '', '', 'La Main Pourpre est notre allié , votre sang doit donc couler !
De plus vous avez pactisé avec le Cercle des Monarques nos pires ennemis , c`est une provocation intolérable ! Que les ombres vous engloutissent !', 'Confrérie des Ombres', 21717836, 240807, 83725, 21745178, 364587, 88437, 'nbrvict', 75, 'xp', 75000, 'or', 300000, 'AND', 'Butin total', 3057968, '', 0, '', 0, '', '', 28, 17, 3, 24, 45.766170495671, 15.681138224347, 31.49511474402, 25.157201990652, 41591, 56112, 1515961, 563660, 187058, 120749, 73353, 46157, 55070, 31026, 8.4645218280259, 3.6901232558224, 584043, 736563, 833, 349, 'Harnas', 'Myos', 2423, 12064, 'Myos', 'Myos', 0, '', ''),
(23, 'guerre', 'termine', '', 'Les Marcheurs des Ombres', 'Le cercle des Monarques', '', '', 'Artisans de Vénopole, vous avez excédé les limites de notre bienveillance : nous exigeons tribut !

Grimoire d`air amélioré amélioré x4
Grimoire de foudre amélioré amélioré x2
La Joyeuse mort d`endurance d`endurance x3
Cape du roublard offensif offensif x6
Cape de légèreté d`initiative d`initiative x3

Soleil du chasseur offensif offensif x2
Honneur offensif offensif x3

Mortelune d`endurance d`endurance x4
Jonc de Jogbeha de charisme de charisme x4
Anneau de Brak majeur d`attaque d`attaque x4
Anneau de rapidité majeur d`initiative d`initiative x2

Cape d`Algue d`endurance d`endurance x2
Armure d`Acco de résistance de résistance x2
Cotte d`Hassar de résistance de résistance x1

Catalyseuse améliorée améliorée x2
L`Ultime de puissance de puissance x2
Phoenix offensif offensif x1
L`Ardante d`attaque d`attaque x1

Brise-glace d`endurance d`endurance x4
Bottes de Jésimoth de résistance de résistance x3

Fût de bière naine joyeuse joyeuse x14
Potion magique d`intelligence d`intelligence x6
Charme de propreté de propreté x1

Nous vous accordons une semaine pour répondre aux demandes de Crissevent. Lyonis du Palais d`Ivoire devra déposer ces babioles au quatrième arbre à gauche, après le canyon aux serpentaires. Qu`il vienne seul. Et ne tentez pas d`entourloupes !
Si vous ne nous contentez pas, nous vous couperons la tête.', 'Le cercle des Monarques', 21718978, 219848, 188232, 21729063, 215808, 139529, 'pertePuiss', 1000000, '', 0, '', 0, 'AND', 'Butin total', 429595, '', 0, '', 0, '', '', 17, 7, 5, 21, 23.445475483604, 21.486777043012, 20.772895816298, 23.995615132024, 55921, 54624, 1132026, 967208, 120169, 201370, 62312, 50774, 52933, 25395, 2.0062192902301, 1.6397442687971, 553088, 457548, 988, 814, 'Aldramech Sarabhan', 'Jaeregan', 2755, 7356, 'Jaeregan', 'Jaeregan', 0, '', '|Pakito`s|'),
(24, 'guerre', 'termine', '', 'Les Voyageurs de Kalamaï', 'Luminas', '', '', 'Les émotions furent fortes.
Tous firent de leur mieux et donnèrent tout ce qu`ils avaient mais rien ne dérida les habitants de cette Igoumen dévastée...
La province ne connaitrait plus jamais la joie... Quelle tristesse...

Les Voyageurs, fatigués d`avoir tant offert sans voir leur travail récompensé, prirent la décision de se diriger vers l`océan.
Franchissant Naxos sans encombre, ils se rendirent en Etimnon où ils firent quelques représentations.', 'Les Voyageurs de Kalamaï', 21725089, 302614, 192703, 21736486, 300076, 261937, 'nbrvict', 60, 'pertePuiss', 750000, 'prison', 150000, 'AND', 'Butin total', 1262448, '', 0, '', 0, '', '', 55, 9, 5, 30, 64.446884577702, 28.984007437635, 60.982850220582, 32.545066548171, 103576, 98808, 2174088, 1790333, 506305, 259214, 257572, 127882, 201409, 83271, 6.4910229946894, 0, 1532047, 1325779, 1173, 1617, 'Laethil', 'Tiram', 13934, 6321, 'Tiram', 'Laethil', 0, '', '|Solemyr|'),
(25, 'guerre', 'termine', '', 'Les Disciples de l`Eternel', 'La Main Pourpre', '', '', 'Les Disciples en pleine méditation journalière reçurent un message télépathique de l`Eternel. 

"Le chiffre 6 - La Main Pourpre" 

Ils se mirent tous en route vers l`Outre-Mer', 'Les Disciples de l`Eternel', 21736146, 319350, 175264, 21747792, 262353, 119549, 'xp', 75000, '', 0, '', 0, 'AND', 'Butin total', 1399386, '', 0, '', 0, '', '', 39, 4, 5, 14, 43.861986349413, 15.19955879665, 45.422076290875, 14.120230406138, 75214, 20217, 580177, 1013019, 307271, 70922, 174021, 34754, 98319, 27612, 8.3439852327575, 3.5262004163907, 1862275, 386363, 2997, 1341, 'Burgrok Brise`Fer', 'Eragole', 11737, 1540, 'Burgrok Brise`Fer', 'Burgrok Brise`Fer', 0, '', '|Eragole|'),
(26, 'guerre', 'termine', '', 'Le cercle des Monarques', 'Luminas', '', '', ' La croisade contre le royal Ennui se poursuit !', 'Le cercle des Monarques', 21742275, 205902, 293797, 21756307, 182433, 267013, 'xp', 75000, '', 0, '', 0, 'AND', 'Butin total', 2730982, '', 0, '', 0, '', '', 28, 4, 2, 19, 27.368197525421, 20.614823799501, 25.305551683954, 22.596949414897, 75444, 63206, 1152023, 1662286, 289006, 196496, 136522, 119439, 71104, 74724, 1.6746408113414, 0, 980406, 986437, 513, 1110, 'Jaeregan', 'Phylas', 4474, 7534, 'Phylas', 'Phylas', 0, '', ''),
(27, 'guerre', 'termine', '', 'Luminas', 'Les Voyageurs de Kalamaï', '', '', 'L`inquisition céleste vous condamne au désespoir pour avoir attaqué et profané la patrie de la lumière. Par les pouvoirs qui nous sont conférés nous allons mettre à feux et à sang vos terres. Nous allons exterminer tout ce qui ressemble au mal et purifier une partie de Thassopole de votre néfaste influence. 

Résister sera vain, nos bras et nos épées ainsi que nos sorts sont commandés par les dieux eux même.', 'Luminas', 21762053, 286089, 396194, 21775367, 258878, 212992, 'xp', 150000, 'pertePuiss', 300000, 'ressources', 1000, 'AND', 'Butin total', 13392694, '', 0, '', 0, '', '', 48, 5, 8, 44, 47.725468830972, 52.839993274121, 50.609537655109, 49.407691469619, 150320, 149418, 2876099, 3153955, 461818, 598963, 194942, 157395, 130455, 90329, 0.86520660454268, 7.637371210262, 3110089, 1599660, 3048, 721, 'Tiram', 'Dro&iuml;n Pierre de Feu', 3057, 10894, 'Tiram', 'Dro&iuml;n Pierre de Feu', 0, '|Solemyr|', '|Laethil|'),
(28, 'guerre', 'encours', '', 'Les Disciples de l`Eternel', 'Les Voyageurs de Kalamaï', '', '', 'Les Disciples en pleine méditation journalière reçurent un message télépathique de l`Eternel. 

"Le chiffre 5 - Les Voyageurs de Kalamaï"

Ainsi soit notre destinée', '', 21769423, 316983, 255698, 0, 0, 0, 'xp', 65000, 'nbrvict', 65, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 44, 5, 4, 11, 49.283764255799, 15.609230254784, 47.801036219552, 16.42247042796, 58001, 39761, 772574, 1055127, 434085, 120923, 114795, 40654, 93794, 26188, 5.0136764200332, 3.9287179013212, 2050715, 470237, 3010, 419, 'Yglora', 'Storia', 1687, 10722, 'Yglora', 'Storia', 0, '', ''),
(29, 'guerre', 'encours', '', 'Le cercle des Monarques', 'Confrérie des Ombres', '', '', ' Notre cargaison de vin de Prévèze n`est toujours pas arrivée. Nous allons donc venir la chercher nous même, car nous autres monarques buvons beaucoup pour tromper l`Ennui. 
Et en passant, ça vous tente une petite guerre ?', '', 21773560, 348106, 490075, 0, 0, 0, 'xp', 80000, '', 0, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 11, 3, 2, 9, 14.072132473471, 11.149024227408, 13.102190062771, 11.977067357131, 60957, 73922, 1338901, 1168104, 144091, 115484, 54286, 50988, 40914, 33035, 4.5268669998636, 0, 699976, 680317, 345, 513, 'Mabelrode', 'Schlemm', 1462, 11494, 'Mabelrode', 'Schlemm', 0, '', '|Morgan|'),
(30, 'guerre', 'encours', '', 'Luminas', 'Les Disciples de l`Eternel', '', '', 'Nous devons finir ce que nous avons commencé, Thassopole doit être purifié. La guerre provinciale qui agite en ce moment même votre province montre le mal qui y habite. 

Résister sera vain, nos bras et nos épées ainsi que nos sorts sont commandés par les dieux eux même.', '', 21776290, 312755, 278447, 0, 0, 0, 'pertePuiss', 1250000, '', 0, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 8, 9, 1, 19, 16.522608302245, 19.321889041262, 9.1545041334131, 26.977718988324, 21107, 40283, 649805, 493887, 55164, 188432, 48147, 55593, 21427, 36175, 0, 7.6417723381692, 347819, 881326, 318, 315, 'Magax', 'Azhaag', 2707, 10673, 'Magax', 'Azhaag', 0, '|Nak`Amnar|', '');



CREATE TABLE `11jun_joueurs_bonus_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1200 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1200 ;

INSERT INTO `11jun_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(3, 'Vibralea', 0, 20, 35, 6, 65, 84, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 186, 32, 80871, 0, 0, 0, -1, -1, 1, 1, 12, 0, 0, 7, 7, 6, 2),
(5, 'Dijun', 39, 52, 122, 62, 56, 81, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21451213, 0, 208, 150, 533546, 0, 0, 1, -1, -1, 1, 0, 19, 1, 0, 13, 3, 0, 10),
(19, 'Gorak', 36, 44, 88, 120, 103, 245, 5, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21456808, 0, 201, 366, 470220, 0, 0, 0, 20, 20, 1, 0, 54, 0, 1, 34, 0, 0, 1),
(36, 'Cl&eacute;mentine', 95, 30, 118, 96, 33, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21444566, 0, 292, 459, 222082, 0, 0, 0, 50, 50, 1, 0, 53, 0, 0, 39, 0, 1, 0),
(43, 'Mund', 56, 104, 13, 67, 88, 0, 0, 30, 30, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21445805, 0, 175, 200, 293613, 0, 0, 0, 60, 90, 1, 0, 41, 17, 1, 3, 0, 2, 0),
(45, 'Dro&iuml;n Pierre de Feu', 219, 130, 118, 58, 36, 28, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21447100, 0, 309, 441, 354089, 0, 0, 0, -1, -1, 1, 0, 2559, 3, 3, 24, 0, 0, 6),
(47, 'Agradok', 59, 22, 92, 113, 58, 199, 6, 80, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443814, 0, 122, 297, 291006, 0, 0, 0, 10, 20, 1, 1, 200, 0, 0, 14, 0, 0, 19),
(48, 'Harkazam', 21, 33, 30, 21, 45, 65, 0, 100, 100, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21446781, 0, 350, 548, 554623, 0, 0, 1, -1, -1, 1, 1, 14, 0, 0, 17, 0, 0, 0),
(53, 'Nak`Amnar', 35, 84, 88, 34, 36, 0, 5, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21477157, 0, 253, 279, 230321, 0, 0, 0, 20, 50, 0, 0, 33, 5, 5, 10, 0, 2, 4),
(58, 'Tiram', 29, 23, 30, 3, 30, 93, 3, 10, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21443611, 0, 318, 443, 294539, 0, 0, 0, 40, 50, 1, 0, 54, 0, 0, 11, 21, 4, 0),
(60, 'Filsigur', 165, 112, 58, 52, 116, 41, 0, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21465204, 0, 472, 522, 589451, 0, 0, 0, -1, -1, 1, 1, 393, 0, 0, 1, 16, 0, 12),
(67, 'Cyrielle', 20, 14, 0, 0, 0, 14, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448252, 0, 51, 290, 18392, 0, 0, 0, 50, 50, 0, 1, 16, 0, 5, 0, 5, 0, 1),
(68, 'Caline', 29, 20, 10, 118, 152, 229, 3, 30, 20, 0, 'République', 'Thassopole', '', 'Aucune', 21713634, 0, 166, 285, 367906, 0, 0, 1, 30, 30, 1, 0, 100, 5, 0, 6, 3, 12, 15),
(69, 'Kylar des Ombres', 143, 176, 101, 101, 51, 6, 1, 90, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21449925, 0, 227, 388, 373489, 0, 0, 1, -1, -1, 1, 1, 134, 0, 0, 22, 0, 1, 0),
(70, 'Phylas', 163, 131, 20, -8, 86, 28, 0, 80, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21445208, 0, 356, 399, 318562, 0, 0, 0, 50, 50, 1, 0, 23, 15, 0, 24, 0, 0, 0),
(73, 'Philego Rah', 106, 82, 41, 28, 46, 28, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21464125, 0, 230, 266, 289158, 0, 0, 0, -1, -1, 1, 1, 2, 10, 0, 12, 0, 0, 0),
(76, 'Katrickan', 117, 81, 37, 52, 105, 34, 0, 100, 20, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21444256, 0, 223, 351, 259651, 0, 0, 0, 40, 40, 0, 0, 16, 13, 0, 10, 1, 3, 3),
(78, 'Athanase', 89, 85, 67, 74, 27, 0, 4, 90, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21446662, 0, 208, 323, 723813, 0, 0, 0, -1, -1, 1, 1, 35, 0, 6, 5, 0, 0, 13),
(84, 'Sycomore', 137, 101, 94, 16, 36, 6, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21454147, 0, 373, 357, 194118, 0, 0, 0, 30, 50, 0, 0, 48, 19, 3, 8, 0, 3, 0),
(95, 'Irkos', 4, 4, 10, 37, 70, 47, 3, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21454100, 0, 138, 173, 208346, 0, 0, 1, -1, -1, 1, 0, 20, 1, 4, 11, 0, 8, 1),
(96, 'Alcyban', 0, 13, 3, 31, 47, 258, 3, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21465344, 0, 224, 94, 227941, 0, 0, 0, 30, 70, 0, 0, 21, 0, 0, 1, 24, 1, 0),
(98, 'Mayssi', 30, 30, 0, 83, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21454203, 0, 253, 215, 206535, 0, 0, 0, 40, 40, 0, 0, 4, 9, 13, 2, 0, 3, 1),
(101, 'Hulricht', 110, 52, 93, 50, 21, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21444031, 0, 255, 423, 348280, 0, 0, 1, 40, 40, 0, 0, 39, 30, 0, 0, 0, 0, 0),
(104, 'Lumy', 51, 34, 80, 50, 16, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21445298, 0, 201, 100, 138809, 0, 0, 0, 20, 20, 0, 0, 3, 10, 0, 4, 0, 0, 0),
(105, 'Agrias', 26, 34, 25, -6, 114, 205, 11, 80, 70, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21444319, 0, 329, 34, 138929, 0, 0, 1, -1, -1, 0, 0, 173, 0, 0, 0, 31, 0, 0),
(108, 'Ladanian', 41, 34, 28, 0, 22, 0, 1, 80, 30, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21447068, 0, 316, 384, 282997, 0, 0, 1, -1, -1, 0, 0, 0, 12, 3, 8, 0, 0, 0),
(112, 'Vrock', 30, 60, 112, 22, 12, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21507658, 0, 522, 142, 210793, 0, 0, 0, -1, -1, 1, 1, 3, 7, 8, 4, 0, 1, 0),
(113, 'Schlemm', 152, 137, 80, 50, 50, 0, 0, 90, 40, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21444383, 0, 377, 408, 251268, 0, 0, 0, 10, 30, 1, 0, 23, 0, 0, 42, 0, 0, 0),
(115, 'Tylert', 63, 27, 0, 0, 38, 0, 0, 70, 20, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21446749, 0, 154, 218, 166032, 0, 0, 0, -1, -1, 1, 1, 5, 0, 0, 22, 0, 0, 0),
(118, 'Liamalika', 1, 0, 30, 0, 0, 2, 0, 100, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447206, 0, 156, 135, 199954, 0, 0, 1, -1, -1, 1, 1, 5, 4, 5, 0, 6, 2, 0),
(119, 'Fonua', 80, 72, 52, 62, 51, 8, 0, 80, 90, 1, 'République', 'Thassopole', '', 'Aucune', 21736411, 0, 216, 326, 594668, 0, 0, 1, -1, -1, 0, 0, 31, 0, 7, 12, 0, 0, 0),
(120, 'Zanckten', 13, 42, 30, 85, 33, 27, 0, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21479426, 0, 191, 150, 258901, 0, 0, 1, -1, -1, 1, 0, 2, 2, 6, 3, 5, 1, 6),
(121, 'Dartoil', 4, 4, 0, 1, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21445162, 0, 103, 67, 350631, 0, 0, 0, -1, -1, 1, 1, 6, 10, 0, 2, 0, 0, 0),
(124, 'Kayel', 40, 10, 0, 0, 6, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21456454, 0, 205, 328, 307221, 0, 0, 0, -1, -1, 1, 1, 10, 20, 0, 2, 0, 0, 0),
(140, 'Zronn', 11, 18, 109, 57, 119, 60, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 250, 176, 129152, 0, 0, 0, -1, -1, 1, 0, 39, 0, 0, 28, 1, 2, 0),
(145, 'Ordak', 245, 120, 20, 5, 125, 28, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21454257, 0, 450, 472, 489757, 0, 0, 0, -1, -1, 1, 1, 72, 0, 0, 3, 0, 31, 0),
(146, 'Bartor', 2, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21475215, 0, 107, 109, 17542, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 12, 0, 0, 0),
(154, 'Ghassen', 14, 4, 0, 0, 29, 124, 3, 80, 60, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21460032, 0, 319, 96, 179662, 0, 0, 0, 30, 60, 0, 0, 15, 0, 0, 24, 0, 0, 0),
(180, 'Lydian', 5, 4, 0, 1, 0, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 193, 636, 456101, 0, 0, 0, -1, -1, 1, 1, 9, 1, 12, 0, 1, 0, 0),
(189, 'Braal', 152, 92, 25, 0, 22, 0, 0, 100, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21471564, 0, 96, 164, 440020, 0, 0, 1, -1, -1, 1, 1, 14, 6, 1, 7, 0, 4, 0),
(191, 'Gwenlf', 69, 105, 47, 20, 58, 31, 4, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21562350, 0, 108, 442, 655272, 0, 0, 0, -1, -1, 1, 1, 58, 2, 5, 10, 1, 0, 2),
(240, 'Myos', 66, 12, 55, 51, 104, 77, 3, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21514917, 0, 166, 150, 84802, 0, 0, 0, -1, -1, 0, 0, 9, 0, 0, 14, 0, 14, 0),
(250, 'Vezk', 92, 83, 32, 0, 8, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21464819, 0, 156, 293, 266478, 0, 0, 0, -1, -1, 1, 0, 1, 14, 7, 3, 0, 0, 0),
(253, 'Aldeas', -2, 2, 43, -10, 118, 222, 0, 100, 80, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21465596, 0, 265, 112, 151866, 0, 0, 0, 20, 50, 1, 0, 17, 0, 0, 4, 16, 6, 0),
(255, 'Kabidoui&iuml;e', 50, 18, 32, 53, 5, 0, 0, 100, 90, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21468190, 0, 99, 155, 253650, 0, 0, 0, -1, -1, 1, 1, 6, 3, 1, 8, 2, 2, 1),
(271, 'Agranos', 138, 37, 114, 17, 23, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21468393, 0, 225, 212, 168583, 0, 0, 0, -1, -1, 1, 1, 0, 5, 7, 10, 0, 2, 1),
(288, 'Gorano', 17, 18, 25, 3, 29, 62, 2, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21501876, 0, 52, 128, 607810, 0, 0, 0, -1, -1, 1, 1, 50, 2, 1, 6, 6, 0, 0),
(291, 'Ashinseika', 31, 20, -4, -10, 47, 30, 2, 70, 40, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21471696, 0, 201, 161, 429440, 0, 0, 0, -1, -1, 1, 0, 18, 2, 0, 2, 24, 1, 0),
(322, 'Yodine', 40, 32, 5, 6, 17, 31, 2, 70, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21485879, 0, 81, 198, 500900, 0, 0, 0, 40, 40, 1, 1, 32, 2, 9, 2, 5, 2, 3),
(343, 'Dinendal Alcarin', 50, 55, -2, 13, 4, 0, 2, 70, 20, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21612053, 0, 154, 259, 27652, 0, 0, 1, 20, 70, 0, 0, 30, 4, 3, 1, 2, 3, 2),
(357, 'Azhaag', 15, 9, 42, -7, 138, 155, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21491361, 0, 258, 17, 314320, 0, 0, 0, 40, 60, 1, 0, 251, 0, 0, 0, 5, 20, 0);INSERT INTO `11jun_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(363, 'Essyr', 13, 20, 30, 0, 13, 0, 2, 100, 10, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21691175, 0, 88, 174, 654626, 0, 0, 1, -1, -1, 1, 1, 44, 8, 1, 1, 1, 3, 0),
(382, 'Elm', 117, 124, 163, 132, 50, 0, 0, 90, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21501702, 0, 264, 152, 409036, 0, 0, 0, 10, 60, 1, 0, 155, 22, 6, 32, 0, 0, 0),
(386, 'Magax', 16, 5, -6, 50, 86, 273, 3, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21725867, 0, 389, 109, 252918, 0, 0, 0, 40, 40, 0, 0, 32, 0, 0, 0, 0, 34, 0),
(387, 'Lirielle', 23, 9, 8, 76, 107, 73, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21500457, 0, 157, 88, 151649, 0, 0, 1, 10, 10, 0, 0, 13, 0, 0, 0, 12, 10, 0),
(389, 'Fletiaz', 6, 2, 0, 0, 5, 48, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21508084, 0, 51, 131, 70563, 0, 0, 0, -1, -1, 1, 1, 18, 0, 0, 0, 5, 0, 3),
(415, 'Arkatris', 117, 44, 126, 0, 15, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21525072, 0, 113, 143, 225287, 0, 0, 0, -1, -1, 1, 1, 126, 1, 24, 0, 0, 1, 0),
(419, 'Boone', 74, 29, 78, 14, 15, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21620133, 0, 170, 220, 259725, 0, 0, 1, -1, -1, 1, 0, 3, 22, 0, 5, 0, 0, 0),
(431, 'Meissner', 17, 101, 155, 36, 25, 0, 11, 100, 30, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21510468, 0, 292, 358, 78578, 0, 0, 1, -1, -1, 1, 0, 514, 26, 1, 0, 0, 0, 0),
(458, 'Mahrynn', 31, 76, 60, 25, 39, 23, 4, 100, 90, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21517587, 0, 137, 218, 485784, 0, 0, 0, -1, -1, 1, 0, 70, 9, 8, 0, 0, 1, 0),
(463, 'B&eacute;liaros', 81, 41, 79, 0, 14, 0, 5, 100, 40, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21594901, 0, 122, 175, 608847, 0, 0, 1, -1, -1, 0, 0, 33, 9, 0, 11, 0, 0, 4),
(478, 'Tirandilis', 13, 32, 97, -10, 121, 248, 3, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21748908, 0, 188, 103, 173777, 0, 0, 1, 30, 30, 1, 0, 5, 0, 0, 25, 0, 0, 0),
(485, 'Eleanora', 27, 28, -2, 51, 13, 50, 2, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21524785, 0, 91, 94, 406581, 0, 0, 1, -1, -1, 1, 1, 7, 3, 0, 1, 13, 1, 0),
(486, 'Zaseo', 74, 50, 66, 50, 17, 6, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21530422, 0, 206, 109, 232590, 0, 0, 0, -1, -1, 1, 1, 54, 25, 0, 0, 0, 0, 0),
(493, 'Belerion', 41, 36, 25, 18, 39, 60, 7, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 77, 230, 33938, 0, 0, 0, -1, -1, 1, 1, 19, 22, 0, 5, 0, 0, 0),
(504, 'Aldramech Sarabhan', 26, 15, 40, 43, 155, 213, 5, 100, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21530521, 0, 335, 130, 266493, 0, 0, 0, 20, 20, 0, 0, 119, 0, 0, 42, 0, 0, 0),
(513, 'Eranoth', 26, 21, 67, 0, 17, 14, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21701829, 0, 77, 167, 501327, 0, 0, 0, -1, -1, 1, 1, 2, 1, 0, 3, 2, 3, 3),
(527, 'Darcia', 14, 0, 43, 3, 65, 59, 7, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21555178, 0, 224, 107, 381036, 0, 0, 1, 20, 50, 1, 1, 117, 1, 1, 7, 2, 6, 7),
(564, 'Malikarn', 59, 77, 30, 40, 98, 30, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21578004, 0, 165, 115, 416515, 0, 0, 0, 30, 70, 0, 1, 12, 5, 5, 9, 1, 1, 0),
(565, 'Dalan', 171, 114, 190, 50, 22, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21550625, 0, 242, 196, 553358, 0, 0, 0, 20, 40, 1, 0, 5968, 11, 0, 20, 0, 5, 0),
(571, 'Bulrug', 49, 29, 15, 0, 11, 0, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 134, 139, 136540, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 19, 0, 0, 0),
(589, 'Han Bal', 100, 45, 47, 20, 42, 0, 4, 70, 60, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21560791, 0, 145, 113, 357177, 0, 0, 0, -1, -1, 1, 0, 91, 0, 0, 5, 0, 13, 0),
(601, 'Gael', 2, 4, 0, 0, 0, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21572149, 0, 50, 108, 152382, 0, 0, 1, -1, -1, 1, 1, 2, 8, 0, 0, 5, 0, 0),
(611, 'Marsys', 16, 14, 28, 0, 4, 12, 7, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21671807, 0, 54, 137, 624108, 0, 0, 1, -1, -1, 1, 1, 36, 5, 4, 4, 1, 0, 1),
(614, 'Bibble', 11, 0, -8, 12, 34, 0, 0, 80, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21646895, 0, 107, 117, 157860, 0, 0, 1, 30, 30, 0, 1, 1, 0, 1, 0, 13, 4, 0),
(623, 'Sartibule', 82, 38, 40, 0, 20, 18, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21570665, 0, 114, 211, 67591, 0, 0, 0, -1, -1, 1, 1, 5, 0, 18, 6, 0, 0, 0),
(628, 'Oryanna', 67, 12, 67, 50, 40, 21, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21575777, 0, 106, 20, 171745, 0, 0, 0, -1, -1, 1, 0, 4, 10, 0, 5, 0, 3, 0),
(643, 'Ordinn', 31, 36, 8, 39, 0, 69, 2, 50, 80, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21739494, 0, 111, 88, 355063, 0, 0, 0, -1, 70, 1, 0, 14, 4, 7, 1, 13, 0, 1),
(644, 'Khiran', 27, 9, 14, 0, 8, 0, 1, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21575352, 0, 99, 162, 133643, 0, 0, 1, -1, -1, 1, 1, 14, 10, 5, 0, 0, 0, 0),
(654, 'Chitcat', 0, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21713087, 0, 33, 79, 129712, 0, 0, 0, -1, -1, 1, 1, 3, 7, 1, 0, 2, 1, 0),
(661, 'Gharnohk', 32, 57, 55, 23, 47, 53, 0, 80, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 114, 140, 257024, 0, 0, 1, 40, 40, 0, 0, 9, 7, 0, 2, 8, 0, 2),
(666, 'Yzeute', 21, 8, 3, 3, 26, 16, 0, 80, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21582721, 0, 70, 151, 616204, 0, 0, 0, -1, -1, 1, 1, 17, 3, 2, 1, 1, 3, 1),
(674, 'Onacona', 40, 29, 35, 0, 63, 91, 0, 60, 30, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21586310, 0, 292, 52, 158046, 0, 0, 0, 30, 30, 0, 0, 77, 13, 0, 0, 13, 0, 0),
(685, 'Zacharias', 173, 186, 11, 3, 77, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21589483, 0, 112, 119, 235093, 0, 0, 0, -1, -1, 1, 1, 61, 8, 7, 0, 0, 7, 0),
(700, 'Warenya Fahle', 3, 8, 3, 0, 21, 27, 2, 70, 70, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21775474, 0, 26, 213, 879333, 0, 0, 0, -1, -1, 1, 1, 89, 2, 4, 0, 3, 5, 2),
(703, 'Azarath', 33, 2, 50, 50, 4, 0, 0, 100, 30, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21591206, 0, 75, 85, 341865, 0, 0, 0, 30, 30, 1, 1, 2, 5, 1, 8, 0, 1, 5),
(706, 'Hakra', 47, 62, 20, 52, 0, 6, 4, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 60, 99, 242727, 0, 0, 0, -1, -1, 1, 1, 7, 13, 0, 0, 0, 0, 0),
(707, 'Kograh', 14, 11, 60, 183, 18, 25, 5, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21595170, 0, 108, 50, 287530, 0, 0, 1, 40, 40, 0, 0, 492, 0, 0, 0, 13, 6, 0),
(720, 'Burgrok Brise`Fer', 132, 118, 153, 56, 98, 0, 0, 70, 70, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21598050, 0, 107, 115, 345169, 0, 0, 0, -1, -1, 0, 0, 30, 4, 1, 25, 0, 2, 0),
(731, 'Zoltan', 168, 94, 30, 19, 37, 31, 2, 100, 20, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21657917, 0, 233, 144, 409241, 0, 0, 0, -1, -1, 1, 1, 60, 2, 2, 11, 2, 0, 2),
(732, 'Gruck', 29, 12, 23, 3, 12, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21600474, 0, 69, 79, 434409, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 13, 2, 1, 0),
(733, 'Hijen', 56, 58, 48, 1, 13, 0, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 112, 125, 150418, 0, 0, 0, 30, 40, 0, 1, 88, 0, 2, 16, 0, 0, 1),
(734, 'Jaeregan', 160, 29, 202, 24, 3, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21673210, 0, 300, 124, 236303, 0, 0, 0, 10, 30, 0, 0, 6, 0, 0, 45, 0, 0, 0),
(771, 'Umassi', 14, 80, 65, 106, 63, 114, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21653003, 0, 210, 48, 159276, 0, 0, 0, 20, 20, 0, 0, 15, 0, 0, 0, 0, 25, 0),
(777, 'Invoj', -7, 10, 18, 1, 57, 40, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21645750, 0, 158, 45, 243930, 0, 0, 1, 40, 80, 0, 0, 25, 0, 0, 0, 17, 0, 0),
(782, 'D&eacute;sacre', 99, 19, 87, 27, 3, 0, 0, 100, 60, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616732, 0, 300, 84, 182312, 0, 0, 1, 10, 10, 1, 0, 356, 14, 0, 16, 0, 0, 0),
(784, 'Jade', -8, 0, 25, -7, 44, 76, 2, 80, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616851, 0, 133, 52, 56448, 0, 0, 0, 40, 40, 0, 0, 32, 0, 0, 0, 17, 0, 0),
(795, 'Halambare', 51, 49, 70, -2, 41, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21651549, 0, 133, 60, 342710, 0, 0, 0, 50, 50, 1, 1, 5, 0, 1, 0, 8, 0, 13),
(801, 'Belenora', 13, 8, 0, 22, 11, 63, 2, 50, 10, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21709248, 0, 91, 102, 360178, 0, 0, 0, 70, 70, 1, 1, 7, 9, 0, 0, 7, 0, 4),
(805, 'Prolor', 52, 89, 61, -14, 54, 0, 0, 60, 60, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21648907, 0, 291, 93, 193400, 0, 0, 0, 10, 50, 0, 0, 58, 11, 0, 10, 0, 1, 2),
(821, 'Solemyr', 67, 68, 14, 76, 0, 8, 1, 100, 20, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21699117, 0, 101, 84, 267823, 0, 0, 0, -1, -1, 1, 0, 9, 4, 0, 6, 0, 3, 2),
(822, 'Oedarn', 59, 49, 54, 2, 45, 0, 0, 60, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21629987, 0, 80, 57, 331097, 0, 0, 0, 10, 30, 1, 0, 20, 22, 1, 0, 0, 0, 0);INSERT INTO `11jun_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(829, 'Tiposa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 47, 62, 138158, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 0, 0, 0, 7),
(846, 'Yeldierick', 168, 201, 2, 3, 100, 12, 2, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21654374, 0, 242, 60, 476461, 0, 0, 0, -1, -1, 1, 0, 201, 11, 14, 0, 0, 3, 0),
(848, 'Eragole', 19, 97, 17, 22, 34, 44, 0, 100, 70, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21652883, 0, 140, 120, 354715, 0, 0, 1, -1, -1, 1, 1, 48, 1, 1, 2, 6, 6, 0),
(864, 'Storia', 80, 47, 169, 0, 15, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21647469, 0, 92, 67, 260903, 0, 0, 0, 40, 60, 0, 0, 553, 0, 0, 24, 0, 0, 1),
(874, 'Tankarllia', 51, 72, 32, 68, 53, 16, 0, 10, 90, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21650217, 0, 43, 47, 343522, 0, 0, 0, 20, 20, 0, 0, 16, 0, 4, 0, 0, 11, 0),
(879, 'Grumpf', 5, 10, 5, 0, 4, 0, 0, 100, 100, 1, 'République', 'Thassopole', '', 'Aucune', 21683395, 0, 10, 28, 356270, 0, 0, 1, -1, -1, 1, 1, 11, 0, 0, 0, 0, 0, 9),
(880, 'Jijona', 94, 109, 134, 74, 13, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21655479, 0, 199, 168, 394657, 0, 0, 0, 20, 20, 0, 0, 897, 0, 0, 0, 0, 0, 37),
(882, 'Hezaram', 5, 3, 0, 1, 3, 6, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21673717, 0, 39, 51, 322034, 0, 0, 0, -1, -1, 1, 1, 3, 5, 0, 0, 0, 1, 1),
(884, 'Paaroxsizme', 3, 4, 0, 3, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 46, 63, 200715, 0, 0, 0, -1, -1, 1, 1, 31, 3, 3, 0, 0, 0, 0),
(891, 'Mathor', 35, 46, -8, 18, 10, 0, 2, 90, 30, 1, 'République', 'Thassopole', '', 'Aucune', 21655916, 0, 94, 106, 734786, 0, 0, 1, -1, -1, 1, 1, 12, 3, 10, 0, 0, 0, 0),
(897, 'Brolleur', 21, 41, 42, 32, 88, 70, 4, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 92, 67, 486710, 0, 0, 0, -1, -1, 1, 0, 7, 0, 0, 4, 7, 3, 5),
(901, 'Z`arf D`Ibn B&auml;shici', 14, 38, 2, 3, 24, 57, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Le Concile d`Antion', 21661259, 0, 101, 84, 530292, 0, 0, 0, -1, -1, 1, 1, 2, 8, 1, 4, 0, 0, 0),
(903, 'Zar`Kull', 148, 74, 45, 3, 61, 13, 0, 80, 70, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21661713, 0, 199, 11, 196755, 0, 0, 1, 20, 50, 0, 0, 9, 21, 0, 0, 0, 0, 0),
(904, 'Griffith', 0, 0, 0, 1, 0, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21673228, 0, 51, 67, 6750, 0, 0, 0, -1, -1, 1, 0, 4, 0, 0, 0, 5, 0, 0),
(905, 'E&auml;nlys', 56, 11, 31, 0, 30, 12, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21683271, 0, 74, 111, 574197, 0, 0, 1, -1, -1, 1, 1, 8, 1, 4, 0, 5, 6, 0),
(906, 'Jaruleek', 51, 63, 24, 50, 40, 40, 0, 50, 50, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21662994, 0, 111, 114, 303623, 0, 0, 1, -1, -1, 1, 1, 2, 3, 3, 1, 6, 2, 1),
(909, 'Zasoum', 2, 4, 0, 11, 24, 8, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21665238, 0, 140, 46, 370078, 0, 0, 0, 70, 70, 1, 1, 1, 0, 11, 0, 0, 0, 0),
(914, 'Masme', 19, 22, 50, 11, 4, 10, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21713277, 0, 31, 64, 522428, 0, 0, 0, -1, -1, 1, 1, 13, 5, 2, 1, 2, 1, 0),
(923, 'Artatiss', 19, 31, 3, 57, 16, 16, 2, 90, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21713500, 0, 42, 90, 624042, 0, 0, 1, -1, -1, 1, 1, 102, 2, 0, 5, 0, 1, 0),
(925, 'Abranxas', 18, 44, 2, 30, 0, 14, 0, 70, 70, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21674528, 0, 71, 63, 438463, 0, 0, 1, -1, -1, 1, 1, 0, 1, 5, 3, 0, 0, 1),
(926, 'Zozofiit', 11, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 46, 22, 314753, 0, 0, 0, -1, -1, 1, 1, 0, 2, 5, 1, 1, 0, 0),
(938, 'Anadyomene', 0, 2, 0, 24, 20, 8, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21670398, 0, 63, 36, 291012, 0, 0, 0, -1, -1, 1, 1, 13, 0, 0, 0, 0, 13, 0),
(944, 'Morgjin', 8, 23, 65, 58, 53, 229, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21677339, 0, 95, 29, 245607, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 18, 2, 0, 0),
(951, 'Kaya', 97, 38, 31, 98, 24, 16, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21675682, 0, 78, 66, 269809, 0, 0, 0, -1, -1, 1, 1, 17, 20, 0, 0, 0, 0, 0),
(952, 'Yglora', 108, 48, 152, 66, 8, 6, 0, 100, 70, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21677491, 0, 153, 34, 255654, 0, 0, 0, 20, 30, 0, 0, 2, 4, 0, 16, 0, 0, 0),
(954, 'Elfredo', 4, 18, 0, -7, 22, 22, 0, 70, 100, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21679175, 0, 63, 77, 485782, 0, 0, 1, -1, -1, 1, 1, 6, 0, 5, 0, 3, 0, 1),
(962, 'Deinoforo', 67, 58, 0, 0, 11, 0, 0, 100, 100, 1, 'Despotisme', 'Naxos', '', 'Aucune', 21697461, 0, 48, 45, 198623, 0, 0, 1, -1, -1, 1, 1, 1, 5, 5, 1, 0, 0, 0),
(964, 'Morvox', 19, 19, 16, 3, 10, 0, 1, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21707381, 0, 80, 64, 285850, 0, 0, 0, -1, -1, 1, 1, 3, 3, 5, 0, 0, 1, 0),
(966, 'Aysa', 16, 2, 3, 12, 9, 14, 0, 90, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 160, 46, 300539, 0, 0, 0, -1, -1, 1, 1, 6, 0, 0, 5, 6, 0, 0),
(969, 'Artaxxas', 49, 28, 30, 11, 44, 0, 0, 50, 40, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21679703, 0, 94, 90, 408678, 0, 0, 0, -1, -1, 1, 1, 10, 5, 1, 0, 6, 1, 0),
(978, 'Lyonis', 98, 47, 138, 14, 19, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21686016, 0, 160, 68, 283881, 0, 0, 0, 30, 50, 0, 0, 15, 0, 0, 28, 0, 0, 0),
(980, 'Theobald', 46, 52, 40, 0, 35, 10, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21687007, 0, 63, 19, 160522, 0, 0, 0, 40, 60, 0, 0, 4, 0, 0, 17, 0, 0, 0),
(985, 'Vordamass', 43, 52, 0, 87, 42, 6, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21697893, 0, 102, 39, 191826, 0, 0, 1, -1, -1, 1, 0, 12, 0, 0, 19, 0, 0, 0),
(987, 'Karkanos', 16, 2, 0, 3, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 63, 33, 350576, 0, 0, 0, -1, -1, 1, 1, 18, 3, 2, 0, 1, 0, 0),
(988, 'Dorunn', 19, 34, 54, 27, 25, 6, 6, 80, 10, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21746009, 0, 37, 82, 671081, 0, 0, 1, -1, -1, 1, 1, 8, 4, 1, 1, 3, 0, 1),
(990, 'Drizzit', 17, 8, 34, 3, 6, 6, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21749950, 0, 44, 34, 258340, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 4, 1, 0, 2),
(991, 'Grunwuck', 21, 0, 3, 0, 30, 16, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 84, 47, 400333, 0, 0, 0, -1, -1, 0, 0, 12, 9, 0, 1, 1, 0, 0),
(996, 'Flatron', 23, 2, 18, 0, 17, 16, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21757519, 0, 43, 31, 357931, 0, 0, 0, -1, -1, 1, 1, 0, 4, 9, 0, 0, 0, 0),
(999, 'Parangloss', 6, 2, 0, 1, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21729137, 0, 7, 12, 427616, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 3, 1, 0, 0),
(1000, 'Hogun', 2, 0, 0, 0, 0, 4, 0, 100, 100, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21707319, 0, 38, 32, 115388, 0, 0, 1, -1, -1, 1, 1, 2, 1, 7, 0, 1, 1, 0),
(1001, 'Bolas', 125, 77, 16, 66, 75, 0, 0, 100, 50, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21701567, 0, 112, 12, 203962, 0, 0, 0, 30, 30, 0, 0, 41, 7, 0, 3, 0, 0, 8),
(1002, 'Alrik', 23, 38, 50, 12, 23, 16, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21716315, 0, 81, 13, 244822, 0, 0, 0, -1, -1, 1, 1, 14, 0, 0, 13, 0, 0, 0),
(1005, 'Il&eacute;anor', 49, 12, 24, 0, 0, 0, 1, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 50, 26, 327857, 0, 0, 1, -1, -1, 1, 0, 3, 0, 0, 8, 0, 0, 0),
(1036, 'Van Brok', 20, 36, -10, 16, 3, 0, 2, 90, 40, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21752764, 0, 47, 26, 539821, 0, 0, 1, -1, -1, 1, 1, 10, 3, 2, 0, 3, 3, 0),
(1042, 'Kihara', 6, 14, 2, 0, 0, 0, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21733425, 0, 52, 15, 247456, 0, 0, 0, -1, -1, 1, 1, 0, 4, 3, 0, 1, 0, 2),
(1048, 'Mabelrode', 116, 141, 89, 66, 68, 0, 0, 90, 70, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21717529, 0, 89, 48, 458327, 0, 0, 0, 20, 20, 1, 0, 20, 24, 0, 0, 0, 0, 1),
(1052, 'Haschatansyx', 54, 0, 3, 1, 26, 46, 2, 80, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21717383, 0, 59, 45, 505514, 0, 0, 0, -1, -1, 1, 1, 9, 6, 3, 1, 1, 0, 0),
(1056, 'Starsa', 4, 2, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21719104, 0, 24, 14, 561306, 0, 0, 0, -1, -1, 1, 1, 2, 0, 1, 0, 2, 3, 0),
(1060, 'Ouhgloub', 5, 10, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 20, 28, 208941, 0, 0, 0, -1, -1, 1, 0, 3, 0, 0, 0, 6, 0, 0),
(1062, 'Kiste', 50, 11, 44, 50, 4, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21736162, 0, 99, 46, 707183, 0, 0, 1, 40, 40, 1, 0, 7, 1, 2, 3, 0, 4, 0),
(1063, 'Naeril', 52, 31, 23, 12, 10, 0, 2, 100, 60, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21771275, 0, 100, 33, 665564, 0, 0, 1, -1, -1, 0, 0, 15, 2, 1, 1, 3, 3, 1);INSERT INTO `11jun_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1064, 'Kyrr Norfilith', 5, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 11, 41, 48212, 0, 0, 0, -1, -1, 1, 1, 1, 2, 0, 3, 0, 0, 0),
(1066, 'Hanarion', 40, 48, 0, 50, 15, 0, 0, 100, 20, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21724612, 0, 46, 28, 577229, 0, 0, 0, 20, 20, 0, 0, 2, 4, 8, 0, 0, 0, 0),
(1072, 'Aeldrina', 26, 8, 0, 46, 0, 14, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21725128, 0, 117, 9, 220237, 0, 0, 0, 20, 30, 0, 0, 2, 0, 0, 0, 0, 0, 0),
(1074, 'Johnas', 16, 10, 0, 0, 0, 0, 0, 80, 80, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 45, 19, 462367, 0, 0, 1, -1, -1, 1, 1, 2, 0, 9, 0, 0, 0, 0),
(1075, 'Antedmor', 15, 19, 0, 0, 5, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21737564, 0, 98, 28, 578612, 0, 0, 0, -1, -1, 1, 1, 0, 5, 5, 1, 1, 0, 0),
(1077, 'Cerbeque', 1, 0, 0, 12, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 44, 4, 184213, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 2, 1, 0, 0),
(1080, 'Nicorth', 22, 23, -8, 0, 10, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 20, 20, 496551, 0, 0, 1, -1, -1, 1, 1, 0, 5, 0, 0, 1, 1, 0),
(1081, 'Kravel', 3, 12, 0, 0, 0, 0, 0, 60, 10, 1, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21733269, 0, 84, 40, 561064, 0, 0, 1, 60, 120, 1, 1, 8, 2, 0, 0, 2, 0, 2),
(1085, 'Youvan', 3, 0, 0, 1, 0, 0, 2, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21740145, 0, 37, 17, 89455, 0, 0, 0, -1, -1, 1, 1, 0, 5, 0, 0, 0, 0, 0),
(1086, 'El Graid', 50, 14, 14, 0, 0, 0, 1, 10, 50, 0, 'République', 'Thassopole', '', 'Aucune', 21737803, 0, 44, 21, 291672, 0, 0, 0, 40, 80, 0, 1, 0, 1, 3, 3, 0, 0, 0),
(1088, 'Killmen', 6, 2, 0, 0, 0, 0, 0, 80, 90, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21757290, 0, 56, 29, 593403, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 3, 1, 1, 0),
(1089, 'Sacaramsar', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 5, 31, 7843, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 1, 0),
(1091, 'Zac', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 19, 4, 124202, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 1, 0, 0),
(1093, 'Narmacilis', 50, 59, 88, 12, 52, 6, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21749581, 0, 84, 2, 210334, 0, 0, 1, 20, 40, 0, 0, 1, 0, 0, 15, 0, 0, 0),
(1094, 'Survitana', 18, 8, 14, 0, 6, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21742315, 0, 31, 16, 405956, 0, 0, 0, -1, -1, 1, 1, 0, 7, 0, 1, 0, 0, 0),
(1095, 'Zhurion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 6465, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1096, 'Sinklos', 3, 2, 0, 0, 0, 0, 0, 40, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21746344, 0, 3, 20, 41288, 0, 0, 0, 10, 50, 1, 1, 0, 1, 1, 0, 1, 0, 1),
(1097, 'Oragon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1098, 'Alos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1099, 'Xahryl', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1100, 'Trixe', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1101, 'Fafnir', 1, 0, 0, 0, 0, 2, 0, 80, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 9, 6, 117296, 0, 0, 0, -1, -1, 1, 1, 0, 0, 5, 0, 0, 1, 0),
(1102, 'Dika', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 22135, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1103, 'Svengoran', 14, 8, 16, 12, 13, 28, 0, 60, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21743325, 0, 45, 27, 727648, 0, 0, 0, 30, 30, 0, 1, 7, 0, 5, 5, 1, 0, 0),
(1105, 'Biromor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1106, 'Axys', 26, 19, 0, 44, 4, 0, 0, 70, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21747877, 0, 39, 9, 599725, 0, 0, 1, -1, -1, 1, 1, 7, 0, 0, 0, 0, 0, 6),
(1107, 'Mataldor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1108, 'Arcontos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1109, 'Aloxandre', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23601, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1110, 'Zorback', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 8, 18, 46457, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1111, 'Zarck', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1112, 'Aerclite', 0, 40, 0, 3, 0, 0, 0, 70, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21757900, 0, 46, 33, 632053, 0, 0, 0, 80, 150, 1, 0, 8, 2, 3, 1, 0, 0, 0),
(1113, 'Shymi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21172, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1116, 'Karann', 35, 42, 10, 15, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21752152, 0, 67, 9, 389016, 0, 0, 0, -1, -1, 1, 0, 12, 0, 0, 0, 3, 4, 0),
(1118, 'Jacques Skellinou', 65, 0, 23, 50, 4, 14, 0, 90, 90, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21754911, 0, 49, 8, 167062, 0, 0, 1, 30, 30, 0, 0, 0, 4, 0, 3, 1, 0, 0),
(1119, 'Treleg', 16, 2, 5, 54, 39, 84, 0, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21752267, 0, 73, 0, 145369, 0, 0, 1, 20, 40, 0, 0, 1, 0, 0, 2, 6, 2, 0),
(1120, 'Gorone', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1121, 'Rusalka', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23576, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1122, 'Rayan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 24160, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1123, 'Eladriel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 2, 1, 20427, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1126, 'Dragonos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 2, 2, 23791, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(1128, 'Demolade', 16, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 19, 17, 139503, 0, 0, 0, -1, -1, 1, 1, 2, 3, 0, 0, 0, 0, 0),
(1130, 'Lia-Pandoriaque', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1131, 'Soveliss', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1132, 'Norde', 20, 9, -10, 50, 0, 0, 0, 40, 60, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21757933, 0, 51, 12, 275910, 0, 0, 1, -1, -1, 0, 1, 3, 2, 0, 0, 0, 0, 3),
(1133, 'Valhomus', 2, 0, 0, 0, 0, 0, 0, 100, 30, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 46, 23, 153695, 0, 0, 1, -1, -1, 1, 1, 0, 1, 0, 3, 0, 0, 0),
(1134, 'Zardarak', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21758012, 0, 9, 2, 118658, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 1),
(1135, 'Sarkhan Vol', 2, 0, 1, 0, 0, 0, 0, 80, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 13, 212123, 0, 0, 1, -1, -1, 1, 1, 0, 3, 3, 0, 0, 0, 0),
(1136, 'El', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1138, 'R&eacute;mi', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 1, 13, 61989, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1139, 'Kakumei', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 17, 1, 105410, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 1, 0, 1, 0);INSERT INTO `11jun_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1142, 'Gaoule', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1143, 'Nicolag', 3, 12, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21762121, 0, 32, 7, 177251, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 7, 0, 0, 0),
(1145, 'Amos', 3, 0, 0, 0, 30, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21762545, 0, 37, 8, 196754, 0, 0, 0, -1, -1, 1, 1, 1, 0, 1, 0, 0, 3, 1),
(1149, 'Baltor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1150, 'Noar', 1, 0, 0, 0, 0, 2, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 21, 1, 85241, 0, 0, 1, -1, -1, 1, 1, 0, 2, 1, 0, 0, 0, 0),
(1151, 'Oceanider', 48, 2, 0, 12, 0, 14, 0, 70, 90, 1, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21766892, 0, 35, 9, 188677, 0, 0, 1, -1, -1, 1, 1, 0, 2, 2, 0, 0, 0, 1),
(1152, 'Lantaure', 16, 2, 0, 0, 0, 0, 0, 80, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 15, 7, 65890, 0, 0, 1, -1, -1, 1, 0, 3, 0, 0, 3, 0, 0, 0),
(1153, 'Ociesa', 0, 0, 0, 0, 0, 0, 0, 50, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1154, 'Oginsor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1155, 'Wallen', 3, 4, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21768051, 0, 41, 4, 201635, 0, 0, 1, -1, -1, 1, 1, 0, 3, 0, 1, 0, 0, 0),
(1156, 'Spamnco', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 18369, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1157, 'Toupin le Craint', 3, 0, 0, 0, 0, 0, 0, 80, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21773618, 0, 12, 2, 134737, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 1, 0, 0, 0),
(1158, 'Davange', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1159, 'Ephisia', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21768007, 0, 0, 0, 31877, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1160, 'Altir', 7, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21768027, 0, 35, 12, 205689, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 2, 0, 0),
(1161, 'Boo', 8, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'République', 'Thassopole', '', 'Aucune', 21766659, 0, 38, 3, 228792, 0, 0, 1, -1, -1, 1, 0, 0, 0, 4, 0, 0, 0, 0),
(1162, 'Manod', 3, 2, 0, 12, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 26, 4, 123023, 0, 0, 0, -1, -1, 1, 1, 0, 5, 0, 0, 0, 0, 0),
(1163, 'Turin', 3, 10, 0, 12, 0, 0, 0, 80, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21768231, 0, 13, 3, 166002, 0, 0, 0, -1, -1, 1, 1, 1, 1, 0, 2, 0, 1, 0),
(1165, 'Maestroelfe', 2, 0, 2, 0, 0, 0, 0, 100, 50, 0, 'République', 'Thassopole', '', 'Aucune', 21768231, 0, 27, 24, 158637, 0, 0, 0, 30, 30, 1, 1, 0, 1, 2, 2, 0, 0, 0),
(1166, 'Bidou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1167, 'Tiinussveii', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1168, 'X&eacute;lior', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1169, 'Hp&eacute;riar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23467, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1170, 'Perork', 3, 2, 0, 0, 0, 0, 0, 100, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 7, 3, 71179, 0, 0, 0, -1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0),
(1171, 'Rafal', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1173, 'Ireptus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1174, 'Risuron', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1175, 'Jeremie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1176, 'Miragex', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1177, 'Kienama', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21776349, 0, 8, 5, 64999, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1178, 'Clogelia', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1179, 'Birgale', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1180, 'Girnok', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21773522, 0, 0, 0, 31338, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1182, 'Laethil', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21771794, 0, 10, 4, 109060, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 2, 0, 0, 0),
(1185, 'Nem&egrave;s', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23589, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1186, 'Ledemonteur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1187, 'Milyana', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23603, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1188, 'Kazuya Le D&eacute;chu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21779131, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1189, 'Nyx ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1190, 'Tarnak', 1, 0, 0, 0, 0, 2, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 8, 1, 40068, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1191, 'Solane', 2, 0, 0, 0, 0, 0, 0, 70, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21777917, 0, 2, 0, 43737, 0, 0, 1, 30, 30, 1, 1, 1, 0, 0, 2, 0, 0, 0),
(1192, 'Angara', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1193, 'Soulire', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21777209, 0, 0, 0, 35381, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1194, 'Orga', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 2, 0, 32576, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1199, 'Lhito', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21781177, 0, 0, 0, 29860, 0, 0, 1, -1, -1, 0, 0, 2, 1, 0, 0, 0, 0, 0);



CREATE TABLE `11jun_joueurs_heros_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1200 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1200 ;

INSERT INTO `11jun_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(3, 'Vibralea', 'Vampire', 'Psioniste', 'Pensée', 'Comtesse', 'de Limitra', 113556, 0, 0),
(5, 'Dijun', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Vigrid', 297297, 0, 0),
(19, 'Gorak', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de la Lumi&egrave;re', 507691, 0, 0),
(36, 'Cl&eacute;mentine', 'Homme', 'Barde', 'Chemins', 'Dame', 'de Nortika', 188458, 0, 0),
(43, 'Mund', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Lair&aelig;', 139540, 0, 0),
(45, 'Dro&iuml;n Pierre de Feu', 'Nain', 'Marchand', 'Chemins', 'Roi', 'des Mines de la Toura', 388531, 0, 0),
(47, 'Agradok', 'Infernal', 'Démonologiste', 'Maladie', 'Despote', 'de Kodarga', 282359, 0, 0),
(48, 'Harkazam', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'd`Aquinas', 182826, 0, 0),
(53, 'Nak`Amnar', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'd`Eliandir', 150182, 0, 0),
(58, 'Tiram', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Horem', 243828, 0, 0),
(60, 'Filsigur', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'd`Hogarsilgar', 251873, 0, 0),
(67, 'Cyrielle', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Cyriella', 37265, 0, 0),
(68, 'Caline', 'Elfe', 'Magicien', 'Pensée', 'Conseillère', 'de la Paix de L`Ame', 541115, 0, 0),
(69, 'Kylar des Ombres', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Caenaria', 151121, 0, 0),
(70, 'Phylas', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Darian', 191418, 0, 0),
(73, 'Philego Rah', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Pihanit', 117769, 0, 0),
(76, 'Katrickan', 'Célestial', 'Inquisiteur', 'Loi', 'Maîtresse', 'des Sept Duch&eacute;s', 404374, 0, 0),
(78, 'Athanase', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'd`Edal&eacute;e', 252043, 0, 0),
(84, 'Sycomore', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'du Bosquet Mill&eacute;naire', 249167, 0, 0),
(95, 'Irkos', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Kalferas', 125030, 0, 0),
(96, 'Alcyban', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Branderuz', 121551, 0, 0),
(98, 'Mayssi', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de M&eacute;none', 123030, 0, 0),
(101, 'Hulricht', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Solesmes', 275494, 0, 0),
(104, 'Lumy', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'd`Anwaman&euml;', 72318, 0, 0),
(105, 'Agrias', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Lormyr', 134920, 0, 0),
(108, 'Ladanian', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Tomlison', 192770, 0, 0),
(112, 'Vrock', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Mynrhyn', 148777, 0, 0),
(113, 'Schlemm', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Lacrymie', 247290, 0, 0),
(115, 'Tylert', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Bazanne', 224623, 0, 0),
(118, 'Liamalika', 'Elfe Noir', 'Nécromancien', 'Mort', 'Matriarche', 'de Silmarols', 116910, 0, 0),
(119, 'Fonua', 'Nain', 'Prêtre', 'Chemins', 'Roi', 'des Grottes d`Armandie', 217442, 0, 0),
(120, 'Zanckten', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Espit', 136885, 0, 0),
(121, 'Dartoil', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Rotergan', 128720, 0, 0),
(124, 'Kayel', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Kartil&eacute;', 129123, 0, 0),
(140, 'Zronn', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de l`Azur&eacute;e', 225826, 0, 0),
(145, 'Ordak', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de la Corne Dor&eacute;e', 206543, 0, 0),
(146, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 43134, 0, 0),
(154, 'Ghassen', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Zarzis', 215865, 0, 0),
(180, 'Lydian', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Reveria', 226603, 0, 0),
(189, 'Braal', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Sarial', 672965, 0, 0),
(191, 'Gwenlf', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Rolirin', 177133, 0, 0),
(240, 'Myos', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'de Mugis', 109139, 0, 0),
(250, 'Vezk', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'des Terres Ensanglant&eacute;', 123786, 0, 0),
(253, 'Aldeas', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Karabak', 170148, 0, 0),
(255, 'Kabidoui&iuml;e', 'Gnome', 'Voleur', 'Chemins', 'Gouverneur', 'de Schnafon', 108465, 0, 0),
(271, 'Agranos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Soledor', 105676, 0, 0),
(288, 'Gorano', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hadesisn', 173235, 0, 0),
(291, 'Ashinseika', 'Elfe Noir', 'Psioniste', 'Pensée', 'Matriarche', 'de Land`savos', 165294, 0, 0),
(322, 'Yodine', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'd`Havoine', 368081, 0, 0),
(343, 'Dinendal Alcarin', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'de Breizhar', 51244, 0, 0),
(357, 'Azhaag', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Anirie', 163842, 0, 0);INSERT INTO `11jun_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(363, 'Essyr', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Asphina', 188812, 0, 0),
(382, 'Elm', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Tergolite', 575083, 0, 0),
(386, 'Magax', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Misn&eacute;il', 215834, 0, 0),
(387, 'Lirielle', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'de Golgotha', 94555, 0, 0),
(389, 'Fletiaz', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Loeses', 45244, 0, 0),
(415, 'Arkatris', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Minotaurya', 114439, 0, 0),
(419, 'Boone', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Novac', 128606, 0, 0),
(431, 'Meissner', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'd`Ensisheim', 124454, 0, 0),
(458, 'Mahrynn', 'Elfe Noir', 'Sorcier', 'Pensée', 'Matriarche', 'de Dam Goolkarh', 161078, 0, 0),
(463, 'B&eacute;liaros', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'd`Ensfarir', 185820, 0, 0),
(478, 'Tirandilis', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Surrus', 106779, 0, 0),
(485, 'Eleanora', 'Fée', 'Druide', 'Nature', 'Intendante', 'd`Itoshi', 145627, 0, 0),
(486, 'Zaseo', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'd`Alabasta', 116554, 0, 0),
(493, 'Belerion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'd`Orliae', 88692, 0, 0),
(504, 'Aldramech Sarabhan', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Phl&eacute;g&eacute;thonen', 492061, 0, 0),
(513, 'Eranoth', 'Nain', 'Marchand', 'Chance', 'Roi', 'd`Ydrolis', 128990, 0, 0),
(527, 'Darcia', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Cosquer', 226778, 0, 0),
(564, 'Malikarn', 'Célestial', 'Prêtre', 'Chemins', 'Maîtresse', 'des Neiges Eternelles', 146095, 0, 0),
(565, 'Dalan', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Rabistiane', 575257, 0, 0),
(571, 'Bulrug', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'd`Elsweyr', 114295, 0, 0),
(589, 'Han Bal', 'Nain', 'Guerrier', 'Force', 'Roi', 'des Mines Sans-Fond', 110902, 0, 0),
(601, 'Gael', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Corona', 70269, 0, 0),
(611, 'Marsys', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Libory', 327306, 0, 0),
(614, 'Bibble', 'Elfe', 'Guerrier', 'Légendes', 'Conseillère', 'de Dolfin', 140258, 0, 0),
(623, 'Sartibule', 'Géant', 'Barbare', 'Force', 'Dame', 'de Danlong', 141057, 0, 0),
(628, 'Oryanna', 'Elfe Noir', 'Assassin', 'Mensonge', 'Matriarche', 'de Quintefeuille  ', 158580, 0, 0),
(643, 'Ordinn', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Coril', 241862, 0, 0),
(644, 'Khiran', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Zeidanys', 90880, 0, 0),
(654, 'Chitcat', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'D`Alma', 59310, 0, 0),
(661, 'Gharnohk', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'des Grottes', 246537, 0, 0),
(666, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Pitiponk-les-fl&ocirc;ts', 175262, 0, 0),
(674, 'Onacona', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'des Prairies du Clair de Lune', 220776, 0, 0),
(685, 'Zacharias', 'Nain', 'Guerrier', 'Loi', 'Roi', 'de Sylvanie', 109607, 0, 0),
(700, 'Warenya Fahle', 'Elfe Noir', 'Sorcier', 'Magie', 'Matriarche', 'D`Alosera', 240304, 0, 0),
(703, 'Azarath', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Jalkaru', 165005, 0, 0),
(706, 'Hakra', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'd`Aorphen', 110664, 0, 0),
(707, 'Kograh', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'de Dystopia', 103464, 0, 0),
(720, 'Burgrok Brise`Fer', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Machkran', 290352, 0, 0),
(731, 'Zoltan', 'Orque', 'Barbare', 'Force', 'Chef', 'd`Irridinium', 144244, 0, 0),
(732, 'Gruck', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Langristal', 139535, 0, 0),
(733, 'Hijen', 'Nain', 'Marchand', 'Chemins', 'Roi', 'de Ch&eacute;reng', 115874, 0, 0),
(734, 'Jaeregan', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'de Pr&eacute;&eacute;minence', 329714, 0, 0),
(771, 'Umassi', 'Orque', 'Shaman', 'Guerre', 'Cheftaine', 'de Seangwen', 104586, 0, 0),
(777, 'Invoj', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'd`El&eacute;dion', 162483, 0, 0),
(782, 'D&eacute;sacre', 'Elfe Noir', 'Assassin', 'Chaos', 'Matriarche', 'de Sar Haffil', 166781, 0, 0),
(784, 'Jade', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'du Cercle d`Adrien', 62836, 0, 0),
(795, 'Halambare', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Lambardie', 129660, 0, 0),
(801, 'Belenora', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Sal`thair', 291375, 0, 0),
(805, 'Prolor', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de Demancia', 126857, 0, 0),
(821, 'Solemyr', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Hazanavicius', 96293, 0, 0),
(822, 'Oedarn', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Vha Heez', 203029, 0, 0);INSERT INTO `11jun_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(829, 'Tiposa', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Luor', 68306, 0, 0),
(846, 'Yeldierick', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Fantaisis', 250258, 0, 0),
(848, 'Eragole', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'D`Hedrias', 124489, 0, 0),
(864, 'Storia', 'Homme', 'Barbare', 'Guerre', 'Dame', 'de Mineria', 123501, 0, 0),
(874, 'Tankarllia', 'Homme', 'Paladin', 'Honneur', 'Dame', 'de Ros&euml;ia', 114384, 0, 0),
(879, 'Grumpf', 'Gnome', 'Voleur', 'Mensonge', 'Gouverneur', 'de Lokeria', 91825, 0, 0),
(880, 'Jijona', 'Homme', 'Paladin', 'Honneur', 'Dame', 'de Jijo', 466163, 0, 0),
(882, 'Hezaram', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Nalvir', 82479, 0, 0),
(884, 'Paaroxsizme', 'Infernal', 'Guerrier', 'Honneur', 'Despote', 'D`Old Coveshire', 64634, 0, 0),
(891, 'Mathor', 'Nain', 'Guerrier', 'Loi', 'Reine', 'de V&eacute;r&eacute;fa', 185252, 0, 0),
(897, 'Brolleur', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Domalto', 167989, 0, 0),
(901, 'Z`arf D`Ibn B&auml;shici', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Illyrion', 147484, 0, 0),
(903, 'Zar`Kull', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de Gor`Mall', 108756, 0, 0),
(904, 'Griffith', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Carwraping', 16255, 0, 0),
(905, 'E&auml;nlys', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'D`Afian', 276511, 0, 0),
(906, 'Jaruleek', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Mordanie', 145672, 0, 0),
(909, 'Zasoum', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Zinapuim', 241322, 0, 0),
(914, 'Masme', 'Orque', 'Barbare', 'Guerre', 'Chef', 'D`Hurlevent', 137372, 0, 0),
(923, 'Artatiss', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'D`Aarklash', 137233, 0, 0),
(925, 'Abranxas', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Symeria', 177450, 0, 0),
(926, 'Zozofiit', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Hyrkul', 103666, 0, 0),
(938, 'Anadyomene', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Eme Est', 162865, 0, 0),
(944, 'Morgjin', 'Sahuagin', 'Shaman', 'Guerre', 'Baronne', 'de Kwenjkka', 112430, 0, 0),
(951, 'Kaya', 'Fée', 'Druide', 'Nature', 'Intendante', 'de Draphuster', 121736, 0, 0),
(952, 'Yglora', 'Homme', 'Nécromancien', 'Ténèbres', 'Dame', 'de Nuboro', 119754, 0, 0),
(954, 'Elfredo', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'D`Arcanis', 141346, 0, 0),
(962, 'Deinoforo', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Fosse du Festin Sanglant', 114752, 0, 0),
(964, 'Morvox', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Royaume de la Paix', 82863, 0, 0),
(966, 'Aysa', 'Fée', 'Magicien', 'Pensée', 'Intendante', 'D`Aldenia', 182305, 0, 0),
(969, 'Artaxxas', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'D`Aramoor', 121629, 0, 0),
(978, 'Lyonis', 'Homme', 'Barde', 'Chance', 'Seigneur', 'du Palais d`Ivoire', 295522, 0, 0),
(980, 'Theobald', 'Homme', 'Chevalier', 'Force', 'Seigneur', 'de la Plaine Artificielle', 78613, 0, 0),
(985, 'Vordamass', 'Nain', 'Prêtre', 'Force', 'Roi', 'de Mont-Chemin-Des-Ildys', 92582, 0, 0),
(987, 'Karkanos', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Toer', 101627, 0, 0),
(988, 'Dorunn', 'Vampire', 'Assassin', 'Mort', 'Comte', 'D`Ameliath', 185255, 0, 0),
(990, 'Drizzit', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Ombre-Terre', 92803, 0, 0),
(991, 'Grunwuck', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'de Cimetiere', 129586, 0, 0),
(996, 'Flatron', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Miroivall&eacute;e', 149287, 0, 0),
(999, 'Parangloss', 'Géant', 'Barbare', 'Force', 'Seigneur', 'D`Asmahrra', 139067, 0, 0),
(1000, 'Hogun', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Tragnard', 53502, 0, 0),
(1001, 'Bolas', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Voraeren', 141452, 0, 0),
(1002, 'Alrik', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Lanvaldear', 198024, 0, 0),
(1005, 'Il&eacute;anor', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Mirque Bois', 103061, 0, 0),
(1036, 'Van Brok', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Kribbsteins', 238766, 0, 0),
(1042, 'Kihara', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Kiharo', 103834, 0, 0),
(1048, 'Mabelrode', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Xiom', 188345, 0, 0),
(1052, 'Haschatansyx', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Dorgam&acirc;al', 169629, 0, 0),
(1056, 'Starsa', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'D`Ilioindon', 121774, 0, 0),
(1060, 'Ouhgloub', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de M&eacute;ragnia', 67841, 0, 0),
(1062, 'Kiste', 'Orque', 'Barbare', 'Guerre', 'Chef', 'D`Azogar', 171704, 0, 0),
(1063, 'Naeril', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de Durunda', 220626, 0, 0);INSERT INTO `11jun_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(1064, 'Kyrr Norfilith', 'Elfe Noir', 'Assassin', 'Mensonge', 'Patriarche', 'de Baal Nimen', 26441, 0, 0),
(1066, 'Hanarion', 'Gnome', 'Voleur', 'Mensonge', 'Gouverneur', 'D`Elendor', 148778, 0, 0),
(1072, 'Aeldrina', 'Orque', 'Shaman', 'Force', 'Cheftaine', 'D`Ombrok', 103348, 0, 0),
(1074, 'Johnas', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'D`Aloth', 139344, 0, 0),
(1075, 'Antedmor', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Mezaros', 141036, 0, 0),
(1077, 'Cerbeque', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'D`Iredia', 129147, 0, 0),
(1080, 'Nicorth', 'Gnome', 'Marchand', 'Mensonge', 'Gouverneur', 'de Bonta', 139449, 0, 0),
(1081, 'Kravel', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'D`Ondria', 157007, 0, 0),
(1085, 'Youvan', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Noemidex', 38038, 0, 0),
(1086, 'El Graid', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'de Malder', 75102, 0, 0),
(1088, 'Killmen', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Killzon', 155872, 0, 0),
(1089, 'Sacaramsar', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'des  Combattants', 7378, 0, 0),
(1091, 'Zac', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Trixon', 41541, 0, 0),
(1093, 'Narmacilis', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Karlotur', 170833, 0, 0),
(1094, 'Survitana', 'Sahuagin', 'Guerrier', 'Force', 'Baron', 'de Longhorn', 101549, 0, 0),
(1095, 'Zhurion', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Zandor', 3134, 0, 0),
(1096, 'Sinklos', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Argans', 17712, 0, 0),
(1097, 'Oragon', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Bello', 0, 0, 0),
(1098, 'Alos', 'Elfe', 'Archer', 'Chance', '', 'de Larvosarasnosre', 0, 0, 0),
(1099, 'Xahryl', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'de Novoh', 0, 0, 0),
(1100, 'Trixe', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de Vliba', 0, 0, 0),
(1101, 'Fafnir', 'Célestial', 'Enchanteur', 'Chaos', 'Maître', 'de Rivnald', 46066, 0, 0),
(1102, 'Dika', 'Infernal', 'Guerrier', 'Guerre', 'Despote', 'D`Onixer', 3703, 0, 0),
(1103, 'Svengoran', 'Célestial', 'Magicien', 'Magie', 'Maître', 'du Mont-des-Loups', 214352, 0, 0),
(1105, 'Biromor', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Minath', 0, 0, 0),
(1106, 'Axys', 'Homme', 'Marchand', 'Chance', 'Dame', 'de Kaldicot', 171109, 0, 0),
(1107, 'Mataldor', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Derome', 0, 0, 0),
(1108, 'Arcontos', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Skaypia', 0, 0, 0),
(1109, 'Aloxandre', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Fatasia', 3274, 0, 0),
(1110, 'Zorback', 'Gnome', 'Marchand', 'Chemins', 'Gouverneur', 'de The Dwarf Lion', 16567, 0, 0),
(1111, 'Zarck', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de les Trois Roi', 0, 0, 0),
(1112, 'Aerclite', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Cadia', 154726, 0, 0),
(1113, 'Shymi', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Shymi des Elfes', 3134, 0, 0),
(1116, 'Karann', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Kelistos', 102735, 0, 0),
(1118, 'Jacques Skellinou', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'd`Holluwee', 143241, 0, 0),
(1119, 'Treleg', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Droriath', 133143, 0, 0),
(1120, 'Gorone', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Dralune', 0, 0, 0),
(1121, 'Rusalka', 'Elfe', 'Voleur', 'Chemins', 'Conseillère', 'D`Allemonde', 3134, 0, 0),
(1122, 'Rayan', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Minotor', 3231, 0, 0),
(1123, 'Eladriel', 'Vampire', 'Assassin', 'Mort', 'Comte', 'D`Ambre Bleue', 3733, 0, 0),
(1126, 'Dragonos', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Valandor', 3903, 0, 0),
(1128, 'Demolade', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'D`Esparadora', 48919, 0, 0),
(1130, 'Lia-Pandoriaque', 'Célestial', 'Enchanteur', 'Magie', 'Maîtresse', 'de Pandoria', 0, 0, 0),
(1131, 'Soveliss', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Greenelven', 0, 0, 0),
(1132, 'Norde', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'de Jarrige', 103999, 0, 0),
(1133, 'Valhomus', 'Ancien', 'Assassin', 'Chaos', 'Vénérable', 'de Valumumus', 55991, 0, 0),
(1134, 'Zardarak', 'Orque', 'Barbare', 'Force', 'Chef', 'de Luc&eacute;phore', 40095, 0, 0),
(1135, 'Sarkhan Vol', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de La Terre De Feu', 167390, 0, 0),
(1136, 'El', 'Orque', 'Shaman', 'Guerre', 'Chef', 'de Lag', 3878, 0, 0),
(1138, 'R&eacute;mi', 'Homme', 'Inquisiteur', 'Compassion', 'Seigneur', 'de Sophir', 28126, 0, 0),
(1139, 'Kakumei', 'Sahuagin', 'Guerrier', 'Guerre', 'Baron', 'de Psy', 32173, 0, 0);INSERT INTO `11jun_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(1142, 'Gaoule', 'Homme', 'Archer', 'Chance', 'Seigneur', 'de la Oule', 3134, 0, 0),
(1143, 'Nicolag', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de Rambourg', 136663, 0, 0),
(1145, 'Amos', 'Nain', 'Prêtre', 'Loi', 'Roi', 'de Terre du Nord', 81998, 0, 0),
(1149, 'Baltor', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Baltorus', 0, 0, 0),
(1150, 'Noar', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'de Niam', 47205, 0, 0),
(1151, 'Oceanider', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de La P&eacute;ninsule Bleue', 79481, 0, 0),
(1152, 'Lantaure', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Sharene', 31349, 0, 0),
(1153, 'Ociesa', 'Célestial', 'Enchanteur', 'Magie', 'Maîtresse', 'D`Olympia', 3134, 0, 0),
(1154, 'Oginsor', 'Homme', 'Chevalier', 'Force', 'Seigneur', 'de Balhall', 3134, 0, 0),
(1155, 'Wallen', 'Orque', 'Barbare', 'Force', 'Cheftaine', 'de Rawen', 75135, 0, 0),
(1156, 'Spamnco', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'D`Hegenheim', 3134, 0, 0),
(1157, 'Toupin le Craint', 'Elfe Noir', 'Voleur', 'Chemins', 'Patriarche', 'de Terre Calixoise', 57934, 0, 0),
(1158, 'Davange', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de La Tour D`Auvorgue', 0, 0, 0),
(1159, 'Ephisia', 'Elfe', 'Archer', 'Chance', 'Conseillère', 'de Nephisie', 3448, 0, 0),
(1160, 'Altir', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'D`Armiros', 94989, 0, 0),
(1161, 'Boo', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'de Parlabas', 134088, 0, 0),
(1162, 'Manod', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de Bion', 48834, 0, 0),
(1163, 'Turin', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Lavoureance', 89185, 0, 0),
(1165, 'Maestroelfe', 'Ancien', 'Rôdeur', 'Nature', 'Vénérable', 'de Voeparezas', 91165, 0, 0),
(1166, 'Bidou', 'Géant', 'Guerrier', 'Loi', 'Seigneur', 'D`Esom', 0, 0, 0),
(1167, 'Tiinussveii', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de Toviceameam', 0, 0, 0),
(1168, 'X&eacute;lior', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Dams', 0, 0, 0),
(1169, 'Hp&eacute;riar', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Loyaumencestral', 3134, 0, 0),
(1170, 'Perork', 'Sahuagin', 'Barbare', 'Guerre', 'Baron', 'de L`antre des Peks', 15053, 0, 0),
(1171, 'Rafal', 'Infernal', 'Guerrier', 'Guerre', 'Despote', 'D`Armalamorbis', 0, 0, 0),
(1173, 'Ireptus', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'D`Aquarion', 0, 0, 0),
(1174, 'Risuron', 'Orque', 'Guerrier', 'Force', 'Chef', 'de Moradar', 3134, 0, 0),
(1175, 'Jeremie', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Siogame', 0, 0, 0),
(1176, 'Miragex', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Brume', 0, 0, 0),
(1177, 'Kienama', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'D`H&ecirc;rathya', 9356, 0, 0),
(1178, 'Clogelia', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Glasi&egrave;re', 0, 0, 0),
(1179, 'Birgale', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Amakna', 0, 0, 0),
(1180, 'Girnok', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de Roma', 3645, 0, 0),
(1182, 'Laethil', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'd`Elhaylin', 22122, 0, 0),
(1185, 'Nem&egrave;s', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'de Pourpres-Ab&icirc;mes', 3481, 0, 0),
(1186, 'Ledemonteur', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Nabovo', 0, 0, 0),
(1187, 'Milyana', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Draktel', 3264, 0, 0),
(1188, 'Kazuya Le D&eacute;chu', 'Orque', 'Barbare', 'Force', 'Chef', 'de Laiteerdu', 3144, 0, 0),
(1189, 'Nyx ', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Labunit ', 0, 0, 0),
(1190, 'Tarnak', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Tranol ', 16363, 0, 0),
(1191, 'Solane', 'Elfe', 'Rôdeur', 'Nature', 'Conseiller', 'de For&ecirc;ts De La Malice', 13008, 0, 0),
(1192, 'Angara', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Pheonix', 0, 0, 0),
(1193, 'Soulire', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Kigtonne', 3690, 0, 0),
(1194, 'Orga', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Galern', 6543, 0, 0),
(1199, 'Lhito', 'Gnome', 'Voleur', 'Chance', 'Gouverneur', 'de Partna', 3556, 0, 0);



CREATE TABLE `11jun_joueurs_stats_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1200 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1200 ;

INSERT INTO `11jun_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(3, 'Vibralea', 22, 113556, 251131, 253000, 47.00, 62.00, 76.00, 81.00, 134.00, 171.00, 46859, 0, 0, 2185351, 546, 1022, 336, 179, 0, 21777732),
(5, 'Dijun', 27, 297297, 356247, 378000, 67.50, 93.00, 170.00, 127.50, 148.00, 232.00, 52, 0, 0, 2420846, 200, 541, 9, 891, 0, 21780878),
(19, 'Gorak', 36, 507691, 633659, 666000, 66.00, 93.00, 171.00, 188.33, 223.00, 440.00, 50000, 0, 0, 1456607, 2395, 1983, 1770, 1633, 0, 21779844),
(36, 'Cl&eacute;mentine', 40, 188458, 786768, 820000, 187.00, 122.00, 252.00, 190.00, 126.00, 92.00, 17935, 0, 0, 611597, 1186, 1138, 898, 769, 0, 21781284),
(43, 'Mund', 23, 139540, 263245, 276000, 139.00, 168.00, 46.70, 144.00, 150.00, 54.00, 39835, 0, 0, 2606955, 693, 906, 769, 1040, 0, 21779282),
(45, 'Dro&iuml;n Pierre de Feu', 36, 388531, 651053, 666000, 272.00, 185.00, 262.00, 253.00, 106.00, 54.00, 26124, 0, 0, 8932032, 6067, 5821, 7461, 5439, 0, 21779789),
(47, 'Agradok', 35, 282359, 627809, 630000, 124.50, 49.50, 170.50, 193.83, 157.50, 375.50, 22608, 0, 0, 4489469, 1198, 2694, 2124, 2878, 0, 21779971),
(48, 'Harkazam', 17, 182826, 152734, 153000, 56.50, 75.00, 72.00, 67.50, 101.50, 142.50, 20106, 0, 0, 362, 1068, 945, 786, 925, 0, 21780639),
(53, 'Nak`Amnar', 26, 150182, 337966, 351000, 115.00, 149.00, 213.00, 112.00, 76.00, 29.00, 35420, 0, 0, 167762, 122, 185, 159, 243, 0, 21780789),
(58, 'Tiram', 36, 243828, 634247, 666000, 57.00, 49.00, 85.00, 167.00, 119.00, 278.00, 45298, 0, 0, 915078, 620, 547, 294, 230, 0, 21779632),
(60, 'Filsigur', 29, 251873, 429941, 435000, 294.00, 241.00, 130.00, 90.50, 158.00, 84.50, 13651, 0, 0, 8970804, 1128, 1824, 1066, 2181, 0, 21781203),
(67, 'Cyrielle', 11, 37265, 60255, 66000, 32.50, 43.50, 33.50, 48.00, 22.00, 86.50, 30000, 0, 0, 15203369, 528, 823, 742, 793, 0, 21770875),
(68, 'Caline', 41, 541115, 823612, 861000, 66.50, 69.00, 75.00, 208.83, 296.00, 451.00, 36046, 0, 0, 1969693, 1285, 1886, 2512, 20344, 0, 21781233),
(69, 'Kylar des Ombres', 23, 151121, 268650, 276000, 202.00, 212.00, 250.00, 159.00, 89.00, 42.00, 39050, 0, 0, 6985825, 2171, 1800, 1633, 2677, 0, 21779673),
(70, 'Phylas', 39, 191418, 755753, 780000, 290.50, 244.50, 71.50, 48.00, 213.00, 134.50, 10536, 0, 0, 19422, 531, 530, 466, 619, 0, 21780642),
(73, 'Philego Rah', 22, 117769, 238611, 253000, 250.00, 146.00, 110.00, 44.00, 90.00, 52.00, 40000, 0, 0, 515696, 140, 123, 143, 78, 0, 21777565),
(76, 'Katrickan', 30, 404374, 445457, 465000, 221.00, 172.00, 70.00, 100.00, 209.00, 119.00, 50000, 0, 0, 417197, 806, 677, 394, 771, 0, 21779866),
(78, 'Athanase', 24, 252043, 290168, 300000, 157.00, 156.00, 104.00, 167.00, 89.00, 56.00, 123, 0, 0, 1282342, 764, 511, 1393, 1340, 0, 21776344),
(84, 'Sycomore', 33, 249167, 544961, 561000, 250.50, 178.00, 254.00, 97.00, 81.00, 33.50, 27788, 0, 0, 96606, 1415, 1484, 1862, 1347, 0, 21779036),
(95, 'Irkos', 25, 125030, 312811, 325000, 94.00, 31.50, 70.50, 72.00, 126.50, 177.50, 50000, 0, 0, 2082066, 1322, 968, 1137, 1156, 0, 21764466),
(96, 'Alcyban', 26, 121551, 335796, 351000, 25.00, 47.00, 47.00, 83.00, 136.00, 427.00, 50000, 0, 0, 4644976, 705, 612, 1550, 641, 0, 21780632),
(98, 'Mayssi', 28, 123030, 390640, 406000, 121.00, 107.00, 134.00, 155.33, 40.00, 25.00, 40000, 0, 0, 4969729, 1639, 727, 683, 582, 0, 21774269),
(101, 'Hulricht', 30, 275494, 452527, 465000, 259.00, 126.00, 226.00, 92.00, 63.00, 27.00, 23129, 0, 0, 1122299, 2176, 1907, 1773, 1851, 0, 21781001),
(104, 'Lumy', 15, 72318, 105576, 120000, 125.50, 72.00, 164.00, 80.00, 40.00, 18.50, 2784, 0, 0, 6800026, 1043, 34507, 429, 536, 0, 21781240),
(105, 'Agrias', 31, 134920, 487974, 496000, 87.50, 57.50, 84.50, 48.50, 206.50, 391.50, 10560, 0, 0, 1079139, 691, 1252, 823, 154, 0, 21778174),
(108, 'Ladanian', 23, 192770, 261188, 276000, 122.50, 91.00, 148.00, 61.00, 54.00, 22.50, 50000, 0, 0, 4079475, 384, 409, 516, 301, 0, 21774188),
(112, 'Vrock', 20, 148777, 190347, 210000, 119.00, 120.00, 211.00, 56.00, 45.00, 22.00, 2201, 0, 0, 1144468, 473, 587, 612, 692, 0, 21779331),
(113, 'Schlemm', 42, 247290, 882223, 903000, 380.00, 256.00, 221.00, 78.00, 125.00, 30.00, 29161, 0, 0, 588099, 1360, 1341, 878, 2682, 0, 21781038),
(115, 'Tylert', 22, 224623, 232172, 253000, 167.00, 133.00, 76.00, 18.00, 76.00, 19.00, 13119, 0, 0, 2408585, 172, 106, 88, 126, 0, 21776942),
(118, 'Liamalika', 17, 116910, 139449, 153000, 72.00, 22.50, 68.50, 25.00, 43.50, 97.50, 103, 0, 0, 1111783, 594, 322, 263, 122, 0, 21780653),
(119, 'Fonua', 19, 217442, 171796, 190000, 132.00, 133.00, 85.50, 118.50, 86.00, 92.00, 4653, 0, 0, 514499, 1180, 1030, 1854, 1588, 0, 21780482),
(120, 'Zanckten', 24, 136885, 282592, 300000, 37.00, 68.00, 65.00, 207.00, 95.00, 148.00, 16554, 0, 0, 2212839, 995, 1046, 1779, 384, 0, 21778740),
(121, 'Dartoil', 12, 128720, 77575, 78000, 55.00, 26.00, 75.00, 33.00, 26.00, 25.00, 40000, 0, 0, 8815080, 827, 672, 161, 574, 0, 21774906),
(124, 'Kayel', 22, 129123, 244258, 253000, 184.00, 79.00, 59.00, 23.00, 51.00, 23.00, 50000, 0, 0, 992359, 258, 232, 252, 0, 0, 21780541),
(140, 'Zronn', 31, 225826, 467592, 496000, 33.50, 57.00, 184.00, 116.50, 226.00, 235.00, 50000, 0, 0, 456867, 834, 276, 1036, 483, 0, 21778710),
(145, 'Ordak', 34, 206543, 581308, 595000, 431.00, 218.00, 103.00, 34.00, 219.00, 57.00, 30000, 0, 0, 3290654, 2177, 2280, 2004, 1695, 0, 21780766),
(146, 'Bartor', 13, 43134, 89930, 91000, 33.50, 21.00, 97.00, 54.00, 15.50, 24.00, 30000, 0, 0, 1189325, 99, 98, 17, 0, 0, 21725052),
(154, 'Ghassen', 24, 215865, 291584, 300000, 40.00, 42.00, 56.00, 51.00, 112.00, 257.00, 31147, 0, 0, 2533812, 1307, 1851, 2017, 2015, 0, 21780837),
(180, 'Lydian', 14, 226603, 98463, 105000, 75.00, 72.00, 33.00, 43.00, 26.00, 20.00, 40000, 0, 0, 1064086, 2225, 1811, 1875, 1950, 0, 21777832),
(189, 'Braal', 18, 672965, 155461, 171000, 250.00, 182.00, 77.00, 17.00, 57.00, 17.00, 614, 0, 0, 2664191, 276, 153, 154, 1003, 0, 21775138),
(191, 'Gwenlf', 21, 177133, 210023, 231000, 169.00, 187.00, 101.50, 76.00, 91.00, 54.50, 44337, 0, 0, 1326110, 2507, 2752, 3149, 2919, 0, 21774660),
(240, 'Myos', 30, 109139, 441357, 465000, 169.00, 40.00, 126.00, 93.00, 177.00, 225.00, 50000, 0, 0, 934266, 3574, 4073, 0, 0, 0, 21753784),
(250, 'Vezk', 24, 123786, 288888, 300000, 240.00, 164.00, 96.00, 24.00, 56.00, 24.00, 35223, 0, 0, 393912, 200, 266, 128, 383, 0, 21775765),
(253, 'Aldeas', 26, 170148, 341196, 351000, 52.00, 23.00, 99.00, 37.00, 204.00, 371.00, 33370, 0, 0, 864451, 1133, 637, 774, 1314, 0, 21781249),
(255, 'Kabidoui&iuml;e', 17, 108465, 143893, 153000, 88.50, 50.00, 136.00, 113.00, 30.50, 36.00, 34781, 0, 0, 908209, 309, 196, 471, 256, 0, 21775234),
(271, 'Agranos', 25, 105676, 306870, 325000, 242.50, 102.00, 244.00, 58.00, 59.00, 23.50, 50000, 0, 0, 5062481, 720, 406, 604, 500, 0, 21779587),
(288, 'Gorano', 16, 173235, 124506, 136000, 81.00, 38.00, 67.00, 28.00, 64.00, 158.00, 28712, 0, 0, 2018721, 1621, 1063, 1298, 1631, 0, 21776339),
(291, 'Ashinseika', 29, 165294, 411411, 435000, 91.50, 91.50, 41.00, 71.50, 144.50, 156.00, 46175, 0, 0, 2916007, 914, 681, 29677, 1110, 0, 21780890),
(322, 'Yodine', 23, 368081, 256074, 276000, 68.50, 125.00, 39.00, 70.00, 110.50, 57.50, 31610, 0, 0, 93293, 284, 296, 451, 308, 0, 21771806),
(343, 'Dinendal Alcarin', 15, 51244, 112657, 120000, 130.00, 127.00, 46.00, 35.50, 31.00, 20.50, 40000, 0, 0, 1694127, 855, 963, 1323, 359, 0, 21753775),
(357, 'Azhaag', 25, 163842, 323136, 325000, 37.50, 60.50, 88.50, 75.00, 198.00, 292.50, 50000, 0, 0, 1906377, 3011, 2462, 2658, 2323, 0, 21780818);INSERT INTO `11jun_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(363, 'Essyr', 14, 188812, 100120, 105000, 77.00, 38.00, 66.00, 23.00, 47.00, 82.00, 40000, 0, 0, 2159178, 1967, 1735, 2133, 2270, 0, 21776548),
(382, 'Elm', 60, 575083, 1779522, 1830000, 241.00, 258.00, 272.00, 236.33, 211.00, 223.00, 28272, 0, 0, 2597763, 19956, 4835, 3792, 4076, 0, 21781004),
(386, 'Magax', 34, 215834, 591112, 595000, 40.00, 47.00, 44.00, 114.00, 234.00, 462.00, 37532, 0, 0, 2569384, 827, 399, 850, 826, 0, 21779483),
(387, 'Lirielle', 22, 94555, 250854, 253000, 48.00, 45.00, 39.00, 125.33, 193.00, 207.00, 50000, 0, 0, 608677, 240, 216, 273, 184, 0, 21779688),
(389, 'Fletiaz', 9, 45244, 39659, 45000, 47.00, 17.50, 25.50, 21.00, 29.50, 111.50, 30000, 0, 0, 2521766, 289, 368, 301, 176, 0, 21771530),
(415, 'Arkatris', 26, 114439, 335139, 351000, 223.00, 130.00, 248.00, 39.00, 51.00, 24.00, 50000, 0, 0, 8635873, 194, 262, 930, 505, 0, 21738508),
(419, 'Boone', 27, 128606, 366732, 378000, 204.50, 93.00, 209.00, 54.00, 51.00, 24.50, 50000, 0, 0, 3365728, 258, 70, 88, 303, 0, 21766796),
(431, 'Meissner', 27, 124454, 369393, 378000, 202.00, 178.50, 222.00, 54.50, 76.50, 26.50, 19470, 0, 0, 291406, 5885, 6022, 6223, 5602, 0, 21781116),
(458, 'Mahrynn', 18, 161078, 165948, 171000, 64.00, 101.00, 92.00, 106.00, 90.00, 110.00, 50000, 0, 0, 2658591, 948, 1146, 984, 1050, 0, 21766641),
(463, 'B&eacute;liaros', 24, 185820, 286578, 300000, 152.00, 74.00, 223.00, 72.00, 46.00, 35.00, 2046, 0, 0, 460910, 425, 270, 245, 819, 0, 21781264),
(478, 'Tirandilis', 25, 106779, 314688, 325000, 104.00, 53.50, 172.50, 23.00, 174.50, 373.50, 50000, 0, 0, 2269641, 1076, 1170, 997, 786, 0, 21769560),
(485, 'Eleanora', 18, 145627, 163057, 171000, 64.00, 72.00, 33.00, 92.00, 72.00, 143.00, 50000, 0, 0, 12540483, 912, 624, 529, 525, 0, 21749428),
(486, 'Zaseo', 25, 116554, 323669, 325000, 159.00, 83.00, 201.00, 123.00, 54.00, 47.00, 50000, 0, 0, 2312232, 1018, 485, 2, 84, 0, 21776809),
(493, 'Belerion', 27, 88692, 365177, 378000, 83.50, 84.50, 87.50, 135.00, 77.00, 199.50, 50000, 0, 0, 2025795, 247, 285, 180, 574, 0, 21740667),
(504, 'Aldramech Sarabhan', 42, 492061, 865072, 903000, 105.00, 44.00, 160.00, 114.00, 275.00, 415.00, 31326, 0, 0, 514642, 1857, 1365, 405, 805, 0, 21776881),
(513, 'Eranoth', 12, 128990, 67172, 78000, 54.00, 50.00, 116.00, 70.00, 55.00, 31.00, 30000, 0, 0, 6858766, 447, 634, 331, 166, 0, 21775226),
(527, 'Darcia', 24, 226778, 288986, 300000, 39.00, 33.00, 91.00, 59.00, 153.00, 196.00, 229, 0, 0, 1481275, 2301, 1300, 778, 1841, 0, 21778275),
(564, 'Malikarn', 21, 146095, 212167, 231000, 120.00, 138.00, 60.50, 109.50, 130.00, 124.00, 50000, 0, 0, 1121856, 915, 684, 465, 847, 0, 21780349),
(565, 'Dalan', 36, 575257, 651530, 666000, 343.00, 269.00, 294.00, 77.00, 72.00, 35.00, 34066, 0, 0, 12782085, 27866, 29256, 28833, 27720, 0, 21781024),
(571, 'Bulrug', 19, 114295, 181145, 190000, 166.00, 92.50, 80.00, 17.50, 52.50, 17.50, 47000, 0, 0, 1977921, 316, 283, 497, 372, 0, 21776003),
(589, 'Han Bal', 18, 110902, 154622, 171000, 190.00, 134.00, 97.00, 36.00, 89.00, 17.00, 50000, 0, 0, 4839879, 934, 1504, 846, 1714, 0, 21778327),
(601, 'Gael', 13, 70269, 82603, 91000, 52.00, 25.00, 80.00, 34.00, 28.00, 31.00, 40000, 0, 0, 2191334, 382, 485, 527, 523, 0, 21765005),
(611, 'Marsys', 15, 327306, 109078, 120000, 59.50, 41.00, 122.00, 54.00, 26.50, 41.00, 21, 0, 0, 1248556, 1240, 1124, 1225, 1270, 0, 21774574),
(614, 'Bibble', 18, 140258, 168572, 171000, 95.00, 82.00, 46.00, 37.00, 65.00, 33.00, 18998, 0, 0, 3499, 232, 176, 228, 105, 0, 21779684),
(623, 'Sartibule', 24, 141057, 295585, 300000, 226.00, 131.00, 101.00, 19.00, 68.00, 40.00, 23183, 0, 0, 76, 319, 403, 267, 502, 0, 21780700),
(628, 'Oryanna', 18, 158580, 167130, 171000, 128.00, 38.00, 177.00, 97.00, 75.00, 51.00, 14043, 0, 0, 1, 339, 720, 396, 1595, 0, 21788177),
(643, 'Ordinn', 26, 241862, 338190, 351000, 101.00, 109.00, 30.00, 123.00, 38.00, 195.00, 98, 0, 0, 450182, 306, 338, 179, 51, 0, 21778462),
(644, 'Khiran', 16, 90880, 120501, 136000, 84.00, 62.00, 38.00, 65.00, 50.00, 41.00, 35990, 0, 0, 7687410, 487, 465, 645, 750, 0, 21778250),
(654, 'Chitcat', 11, 59310, 60756, 66000, 57.00, 22.50, 32.50, 18.00, 30.50, 61.50, 40000, 0, 0, 8810218, 862, 693, 192, 49, 0, 21740143),
(661, 'Gharnohk', 19, 246537, 183168, 190000, 113.00, 79.50, 99.50, 51.00, 89.50, 156.50, 18346, 0, 0, 443307, 619, 224, 202, 174, 0, 21783835),
(666, 'Yzeute', 11, 175262, 62976, 66000, 63.50, 40.00, 68.00, 41.00, 49.00, 33.50, 40000, 0, 0, 1194343, 1404, 1695, 1649, 1679, 0, 21774772),
(674, 'Onacona', 26, 220776, 341367, 351000, 107.00, 76.00, 75.00, 74.00, 142.00, 197.00, 50000, 0, 0, 647941, 2412, 1050, 2331, 3056, 0, 21780811),
(685, 'Zacharias', 22, 109607, 250008, 253000, 285.00, 299.00, 64.00, 21.00, 123.00, 19.00, 50000, 0, 0, 863173, 213, 609, 716, 1658, 0, 21774052),
(700, 'Warenya Fahle', 16, 240304, 132007, 136000, 28.00, 20.00, 32.00, 74.00, 73.00, 110.00, 50000, 0, 0, 2446144, 457, 1133, 847, 838, 0, 21774678),
(703, 'Azarath', 20, 165005, 196670, 210000, 158.00, 70.00, 107.00, 73.00, 48.00, 18.00, 14182, 0, 0, 1242807, 128, 195, 218, 234, 0, 21780908),
(706, 'Hakra', 13, 110664, 89391, 91000, 130.00, 128.00, 61.00, 65.50, 25.00, 21.50, 345, 0, 0, 1331721, 833, 865, 832, 1040, 0, 21756078),
(707, 'Kograh', 19, 103464, 175072, 190000, 33.50, 28.50, 88.00, 280.00, 74.00, 133.00, 40000, 0, 0, 4730951, 1502, 1512, 2081, 1766, 0, 21757798),
(720, 'Burgrok Brise`Fer', 32, 290352, 512747, 528000, 216.00, 201.00, 204.00, 143.00, 148.00, 136.00, 49280, 0, 0, 899282, 402, 732, 795, 873, 0, 21779566),
(731, 'Zoltan', 19, 144244, 187897, 190000, 285.00, 156.50, 93.00, 37.50, 77.50, 51.50, 38166, 0, 0, 2384939, 1779, 1656, 1645, 1797, 0, 21779992),
(732, 'Gruck', 16, 139535, 126472, 136000, 76.00, 60.00, 60.00, 68.00, 55.00, 59.00, 50000, 0, 0, 5207678, 469, 144, 70, 189, 0, 21776081),
(733, 'Hijen', 19, 115874, 173206, 190000, 89.00, 95.00, 133.00, 106.00, 57.50, 17.50, 130, 0, 0, 1446645, 1072, 510, 324, 370, 0, 21778928),
(734, 'Jaeregan', 45, 329714, 1030468, 1035000, 264.00, 88.00, 484.00, 126.00, 60.00, 58.00, 45462, 0, 0, 459602, 2867, 1578, 1028, 1834, 0, 21779862),
(771, 'Umassi', 25, 104586, 306895, 325000, 82.00, 119.00, 117.50, 125.83, 162.50, 235.50, 40000, 0, 0, 593843, 1755, 2147, 1124, 1890, 0, 21780377),
(777, 'Invoj', 17, 162483, 145778, 153000, 59.00, 27.50, 56.50, 35.00, 91.50, 145.50, 50000, 0, 0, 812178, 1434, 1103, 1373, 1226, 0, 21780041),
(782, 'D&eacute;sacre', 30, 166781, 454796, 465000, 190.00, 59.00, 266.00, 95.00, 47.00, 43.00, 22357, 0, 0, 423254, 8882, 8230, 8728, 9776, 0, 21778054),
(784, 'Jade', 17, 62836, 140758, 153000, 7.50, 59.00, 58.00, 40.00, 115.50, 120.50, 50000, 0, 0, 1575547, 434, 427, 500, 225, 0, 21747633),
(795, 'Halambare', 22, 129660, 241107, 253000, 142.00, 104.00, 176.00, 46.00, 72.00, 30.00, 2811, 0, 0, 11199722, 648, 284, 638, 485, 0, 21780586),
(801, 'Belenora', 20, 291375, 204237, 210000, 44.00, 36.00, 37.00, 69.00, 81.00, 185.00, 32321, 0, 0, 1670637, 236, 324, 193, 339, 0, 21779217),
(805, 'Prolor', 24, 126857, 286152, 300000, 177.00, 199.00, 134.00, 7.00, 91.00, 21.00, 30000, 0, 0, 612704, 2121, 2036, 1667, 1383, 0, 21779880),
(821, 'Solemyr', 15, 96293, 117990, 120000, 116.00, 114.00, 43.00, 140.00, 43.00, 47.00, 50000, 0, 0, 7139088, 152, 235, 139, 143, 0, 21761709),
(822, 'Oedarn', 23, 203029, 266659, 276000, 144.00, 83.00, 182.00, 56.00, 82.00, 36.00, 513, 0, 0, 5084441, 486, 673, 701, 110, 0, 21775346);INSERT INTO `11jun_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(829, 'Tiposa', 9, 68306, 36171, 45000, 45.50, 28.00, 54.00, 29.00, 18.00, 15.50, 30000, 0, 0, 4613088, 476, 1144, 667, 663, 0, 21773932),
(846, 'Yeldierick', 28, 250258, 380354, 406000, 274.00, 302.00, 24.00, 91.00, 158.00, 133.00, 132, 0, 0, 60286, 1286, 990, 1529, 1172, 0, 21781139),
(848, 'Eragole', 16, 124489, 123921, 136000, 48.00, 126.00, 81.00, 117.00, 76.00, 70.00, 50000, 0, 0, 611422, 659, 234, 502, 583, 0, 21772102),
(864, 'Storia', 25, 123501, 309223, 325000, 219.00, 123.50, 256.00, 25.50, 64.50, 24.50, 1781, 0, 0, 114464, 4003, 2938, 2731, 2743, 0, 21781225),
(874, 'Tankarllia', 15, 114384, 105062, 120000, 94.00, 120.00, 59.00, 127.00, 106.00, 58.00, 24715, 0, 0, 5274064, 369, 459, 509, 411, 0, 21808966),
(879, 'Grumpf', 9, 91825, 44756, 45000, 28.50, 33.00, 60.00, 45.00, 23.50, 26.00, 30000, 0, 0, 10844327, 492, 853, 785, 483, 0, 21736175),
(880, 'Jijona', 37, 466163, 683935, 703000, 181.00, 197.00, 183.00, 236.00, 99.00, 86.00, 26596, 0, 0, 1446804, 4488, 4810, 5073, 4875, 0, 21780892),
(882, 'Hezaram', 9, 82479, 40972, 45000, 52.00, 21.00, 26.50, 11.50, 37.50, 59.50, 30000, 0, 0, 9357004, 708, 1221, 1003, 736, 0, 21760887),
(884, 'Paaroxsizme', 6, 64634, 15920, 21000, 44.00, 43.00, 24.00, 17.00, 15.00, 20.00, 30000, 0, 0, 6179045, 45, 1032, 11, 713, 0, 21703434),
(891, 'Mathor', 13, 185252, 83997, 91000, 106.00, 126.00, 27.00, 31.50, 40.00, 14.50, 11759, 0, 0, 84392, 1328, 998, 1233, 1533, 0, 21781181),
(897, 'Brolleur', 19, 167989, 186428, 190000, 40.50, 58.50, 65.00, 133.00, 142.00, 173.00, 50000, 0, 0, 2545776, 1156, 462, 570, 134, 0, 21777717),
(901, 'Z`arf D`Ibn B&auml;shici', 13, 147484, 86127, 91000, 42.50, 54.50, 30.00, 72.00, 59.00, 124.00, 40000, 0, 0, 4504485, 402, 410, 130, 216, 0, 21776431),
(903, 'Zar`Kull', 21, 108756, 218534, 231000, 191.50, 147.00, 74.00, 65.00, 146.50, 40.50, 1319, 0, 0, 1636359, 976, 1812, 1187, 790, 0, 21780805),
(904, 'Griffith', 5, 16255, 13366, 15000, 14.50, 17.00, 17.00, 20.50, 28.00, 46.00, 20000, 0, 0, 923997, 41, 563, 132, 84, 0, 21722020),
(905, 'E&auml;nlys', 16, 276511, 120854, 136000, 109.00, 55.00, 112.00, 46.00, 63.00, 38.00, 18521, 0, 0, 1750498, 770, 1943, 1219, 1390, 0, 21777727),
(906, 'Jaruleek', 16, 145672, 123786, 136000, 102.00, 92.00, 132.00, 100.00, 68.00, 74.00, 9415, 0, 0, 199469, 63, 155, 76, 69, 0, 21774855),
(909, 'Zasoum', 11, 241322, 57550, 66000, 14.50, 34.00, 27.00, 40.50, 69.00, 82.00, 37191, 0, 0, 2074019, 1659, 1938, 1943, 1655, 0, 21775811),
(914, 'Masme', 11, 137372, 58371, 66000, 97.00, 65.50, 88.00, 23.50, 33.50, 26.50, 40000, 0, 0, 4504460, 503, 934, 1253, 1328, 0, 21763764),
(923, 'Artatiss', 8, 137233, 29828, 36000, 50.00, 61.00, 28.00, 95.00, 45.00, 44.00, 30000, 0, 0, 14076295, 2208, 2143, 2242, 2623, 0, 21754490),
(925, 'Abranxas', 10, 177450, 53230, 55000, 48.00, 64.00, 34.00, 55.00, 35.00, 77.00, 89, 0, 0, 9386066, 111, 265, 63, 195, 0, 21781009),
(926, 'Zozofiit', 10, 103666, 47543, 55000, 32.00, 19.00, 22.00, 57.00, 29.00, 58.00, 8951, 0, 0, 9098729, 220, 156, 571, 222, 0, 21773984),
(938, 'Anadyomene', 13, 162865, 81294, 91000, 18.50, 27.00, 25.00, 55.50, 85.00, 89.00, 40000, 0, 0, 4816910, 243, 431, 623, 1896, 0, 21778278),
(944, 'Morgjin', 20, 112430, 199168, 210000, 70.00, 53.00, 127.00, 73.00, 114.00, 334.00, 50000, 0, 0, 579160, 589, 857, 151, 881, 0, 21775309),
(951, 'Kaya', 20, 121736, 196994, 210000, 154.00, 86.00, 67.00, 142.00, 87.00, 103.00, 50000, 0, 0, 860677, 1343, 1230, 695, 1167, 0, 21776262),
(952, 'Yglora', 20, 119754, 190930, 210000, 185.00, 70.00, 212.00, 98.00, 51.00, 109.00, 32672, 0, 0, 3034546, 789, 2336, 692, 741, 0, 21780667),
(954, 'Elfredo', 10, 141346, 45063, 55000, 50.00, 36.00, 30.00, 12.00, 52.00, 83.00, 30000, 0, 0, 1859030, 1428, 1409, 1627, 1704, 0, 21775740),
(962, 'Deinoforo', 11, 114752, 62538, 66000, 133.00, 118.00, 35.00, 14.50, 31.00, 22.50, 210, 0, 0, 482186, 466, 210, 263, 246, 0, 21780491),
(964, 'Morvox', 9, 82863, 44372, 45000, 55.00, 58.00, 33.00, 47.00, 39.00, 27.00, 30000, 0, 0, 8599655, 484, 475, 414, 428, 0, 21740675),
(966, 'Aysa', 11, 182305, 63291, 66000, 28.50, 21.00, 36.00, 42.50, 53.00, 93.00, 253, 0, 0, 8461021, 1111, 1643, 1417, 563, 0, 21774281),
(969, 'Artaxxas', 14, 121629, 91821, 105000, 81.00, 56.00, 85.00, 93.00, 79.00, 26.00, 30000, 0, 0, 4250258, 1165, 883, 468, 658, 0, 21763744),
(978, 'Lyonis', 28, 295522, 389282, 406000, 167.00, 116.00, 235.00, 82.00, 88.00, 69.00, 9964, 0, 0, 115031, 1137, 558, 216, 710, 0, 21781205),
(980, 'Theobald', 17, 78613, 138386, 153000, 130.00, 116.00, 94.50, 46.00, 64.00, 30.50, 40000, 0, 0, 3019806, 243, 305, 40, 182, 0, 21769675),
(985, 'Vordamass', 19, 92582, 180251, 190000, 99.00, 107.00, 37.50, 141.50, 77.00, 90.00, 37908, 0, 0, 622408, 522, 1438, 628, 660, 0, 21779877),
(987, 'Karkanos', 6, 101627, 16756, 21000, 50.00, 33.00, 14.00, 31.00, 25.00, 21.00, 30000, 0, 0, 7190482, 736, 551, 698, 1146, 0, 21759619),
(988, 'Dorunn', 10, 185255, 46042, 55000, 58.00, 55.00, 116.00, 65.00, 45.00, 31.00, 20000, 0, 0, 1664491, 796, 640, 923, 975, 0, 21780882),
(990, 'Drizzit', 11, 92803, 57818, 66000, 59.00, 27.00, 108.00, 35.00, 32.00, 31.00, 40000, 0, 0, 1293454, 364, 220, 995, 488, 0, 21761455),
(991, 'Grunwuck', 11, 129586, 62630, 66000, 80.00, 18.50, 34.50, 18.00, 60.50, 76.50, 40000, 0, 0, 3273938, 725, 496, 693, 524, 0, 21779925),
(996, 'Flatron', 13, 149287, 79809, 91000, 59.50, 27.50, 49.50, 28.50, 59.50, 95.50, 0, 0, 0, 8718, 338, 339, 427, 465, 0, 21778336),
(999, 'Parangloss', 5, 139067, 13674, 15000, 55.00, 30.50, 20.00, 10.50, 19.50, 13.50, 20000, 0, 0, 267807, 455, 623, 287, 317, 0, 21756490),
(1000, 'Hogun', 10, 53502, 51726, 55000, 32.00, 23.00, 27.00, 24.00, 37.00, 68.00, 30000, 0, 0, 4065686, 77, 119, 0, 119, 0, 21746341),
(1001, 'Bolas', 18, 141452, 160281, 171000, 171.00, 121.00, 54.00, 115.00, 131.00, 76.00, 9529, 0, 0, 834241, 957, 1596, 1334, 990, 0, 21780860),
(1002, 'Alrik', 13, 198024, 90708, 91000, 54.50, 72.00, 93.00, 45.50, 66.50, 74.50, 36807, 0, 0, 934488, 757, 517, 557, 325, 0, 21780866),
(1005, 'Il&eacute;anor', 9, 103061, 38072, 45000, 81.00, 44.00, 53.00, 39.00, 31.00, 30.00, 30000, 0, 0, 4256917, 240, 112, 206, 242, 0, 21761209),
(1036, 'Van Brok', 11, 238766, 57372, 66000, 98.00, 82.50, 21.00, 29.50, 35.50, 16.50, 1117, 0, 0, 547110, 474, 223, 225, 451, 0, 21774150),
(1042, 'Kihara', 10, 103834, 49314, 55000, 84.00, 51.00, 35.00, 12.00, 26.00, 19.00, 173, 0, 0, 937722, 427, 564, 138, 232, 0, 21765360),
(1048, 'Mabelrode', 25, 188345, 313189, 325000, 216.50, 217.50, 113.50, 104.00, 156.00, 74.50, 31064, 0, 0, 2199955, 1520, 722, 474, 879, 0, 21776557),
(1052, 'Haschatansyx', 11, 169629, 61197, 66000, 90.50, 19.50, 32.50, 26.50, 64.50, 114.50, 40000, 0, 0, 750133, 471, 393, 754, 359, 0, 21778452),
(1056, 'Starsa', 7, 121774, 26302, 28000, 17.50, 14.50, 16.00, 49.00, 29.00, 51.00, 30000, 0, 0, 5176194, 503, 497, 397, 468, 0, 21750896),
(1060, 'Ouhgloub', 6, 67841, 16024, 21000, 41.00, 25.00, 22.00, 8.00, 26.00, 46.00, 24217, 0, 0, 1428090, 327, 135, 264, 313, 0, 21780897),
(1062, 'Kiste', 10, 171704, 48128, 55000, 119.00, 52.00, 82.00, 62.00, 35.00, 14.00, 40000, 0, 0, 1222946, 2152, 1311, 1542, 1378, 0, 21781096),
(1063, 'Naeril', 12, 220626, 70798, 78000, 92.00, 53.00, 97.00, 57.00, 33.00, 26.00, 4341, 0, 0, 61889, 658, 409, 687, 436, 0, 21779588);INSERT INTO `11jun_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1064, 'Kyrr Norfilith', 5, 26441, 11955, 15000, 32.00, 15.00, 43.00, 21.00, 19.00, 17.00, 20000, 0, 0, 983510, 26, 112, 143, 245, 0, 21754652),
(1066, 'Hanarion', 12, 148778, 67744, 78000, 72.00, 82.00, 70.00, 95.00, 36.00, 29.00, 40000, 0, 0, 5829760, 125, 103, 178, 0, 0, 21780469),
(1072, 'Aeldrina', 8, 103348, 33983, 36000, 62.00, 29.00, 26.00, 57.00, 32.00, 59.00, 223, 0, 0, 2686131, 724, 727, 444, 634, 0, 21781276),
(1074, 'Johnas', 9, 139344, 39963, 45000, 40.50, 31.50, 22.00, 41.00, 30.00, 53.00, 402, 0, 0, 603399, 120, 77, 440, 455, 0, 21774404),
(1075, 'Antedmor', 12, 141036, 69896, 78000, 82.00, 86.00, 38.00, 18.00, 29.00, 19.00, 30875, 0, 0, 416947, 1429, 747, 1087, 767, 0, 21779851),
(1077, 'Cerbeque', 6, 129147, 18149, 21000, 35.00, 16.00, 25.00, 20.00, 26.00, 43.00, 189, 0, 0, 1284271, 207, 345, 212, 274, 0, 21780104),
(1080, 'Nicorth', 7, 139449, 21362, 28000, 44.00, 44.00, 23.00, 44.00, 36.50, 21.50, 30000, 0, 0, 1248117, 960, 550, 509, 757, 0, 21772363),
(1081, 'Kravel', 6, 157007, 16771, 21000, 40.00, 28.00, 23.00, 15.00, 23.00, 39.00, 1170, 0, 0, 1534, 1060, 957, 520, 504, 0, 21780604),
(1085, 'Youvan', 6, 38038, 15087, 21000, 36.00, 15.00, 43.00, 21.00, 22.00, 19.00, 10000, 0, 0, 1298134, 198, 232, 182, 235, 0, 21765359),
(1086, 'El Graid', 7, 75102, 26417, 28000, 93.00, 62.00, 41.00, 13.50, 23.00, 11.50, 30000, 0, 0, 2192035, 452, 390, 309, 188, 0, 21766526),
(1088, 'Killmen', 8, 155872, 31816, 36000, 44.00, 35.00, 19.00, 34.00, 30.00, 25.00, 28804, 0, 0, 1022706, 517, 541, 263, 388, 0, 21780872),
(1089, 'Sacaramsar', 2, 7378, 1504, 3000, 25.00, 23.00, 16.00, 16.00, 15.00, 13.00, 10000, 0, 0, 728097, 0, 0, 0, 0, 0, 21743638),
(1091, 'Zac', 4, 41541, 7085, 10000, 22.00, 17.00, 27.00, 30.00, 16.00, 19.00, 10000, 0, 0, 2198683, 53, 83, 223, 98, 0, 21756193),
(1093, 'Narmacilis', 15, 170833, 110200, 120000, 99.50, 97.00, 183.00, 57.00, 76.00, 24.50, 40000, 0, 0, 2119069, 439, 616, 244, 332, 0, 21780656),
(1094, 'Survitana', 8, 101549, 30652, 36000, 81.00, 49.00, 44.00, 9.00, 25.00, 17.00, 96, 0, 0, 170882, 393, 298, 456, 274, 0, 21776693),
(1095, 'Zhurion', 1, 3134, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 230062, 0, 0, 0, 0, 0, 21741989),
(1096, 'Sinklos', 4, 17712, 7986, 10000, 27.00, 27.00, 12.00, 30.00, 18.00, 18.00, 20000, 0, 0, 516848, 112, 32, 33, 83, 0, 21756434),
(1097, 'Oragon', 1, 0, 0, 1000, 7.50, 9.50, 18.50, 17.00, 12.00, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743183),
(1098, 'Alos', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743183),
(1099, 'Xahryl', 1, 0, 0, 1000, 16.00, 15.00, 17.00, 14.00, 13.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743183),
(1100, 'Trixe', 1, 0, 0, 1000, 16.00, 10.00, 18.00, 22.00, 9.00, 12.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743183),
(1101, 'Fafnir', 6, 46066, 15900, 21000, 20.00, 39.00, 14.00, 27.00, 32.00, 15.00, 20000, 0, 0, 286818, 249, 166, 304, 95, 0, 21770085),
(1102, 'Dika', 1, 3703, 0, 1000, 19.00, 16.00, 15.00, 9.50, 10.00, 18.50, 0, 0, 0, 246798, 0, 0, 0, 0, 0, 21743183),
(1103, 'Svengoran', 11, 214352, 59209, 66000, 33.50, 38.00, 40.00, 43.50, 57.00, 97.00, 40000, 0, 0, 2, 583, 246, 796, 571, 0, 21779175),
(1105, 'Biromor', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21743183),
(1106, 'Axys', 6, 171109, 18620, 21000, 45.00, 38.00, 31.00, 92.00, 26.00, 16.00, 62, 0, 0, 253994, 869, 687, 691, 817, 0, 21780827),
(1107, 'Mataldor', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21746571),
(1108, 'Arcontos', 1, 0, 0, 1000, 24.00, 21.00, 11.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21746571),
(1109, 'Aloxandre', 1, 3274, 0, 1000, 14.50, 9.50, 12.00, 21.00, 12.00, 19.00, 0, 0, 0, 1246, 0, 0, 0, 0, 0, 21746571),
(1110, 'Zorback', 3, 16567, 5094, 6000, 16.00, 17.00, 20.00, 23.00, 19.50, 18.50, 10000, 0, 0, 570833, 177, 102, 46, 172, 0, 21762517),
(1111, 'Zarck', 1, 0, 0, 1000, 17.00, 13.00, 17.00, 11.00, 10.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21746573),
(1112, 'Aerclite', 6, 154726, 16032, 21000, 36.00, 64.00, 43.00, 22.00, 16.00, 15.00, 30000, 0, 0, 21147, 379, 1014, 579, 759, 0, 21781128),
(1113, 'Shymi', 1, 3134, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 75689, 40, 40, 40, 40, 0, 21746573),
(1116, 'Karann', 7, 102735, 27839, 28000, 76.00, 77.00, 32.50, 43.00, 23.00, 18.50, 12805, 0, 0, 761242, 1875, 1387, 984, 1132, 0, 21780474),
(1118, 'Jacques Skellinou', 8, 143241, 34710, 36000, 108.00, 14.00, 49.00, 75.00, 26.00, 63.00, 30000, 0, 0, 797988, 351, 288, 174, 201, 0, 21779241),
(1119, 'Treleg', 10, 133143, 54525, 55000, 31.00, 15.00, 25.00, 114.00, 74.00, 150.00, 11514, 0, 0, 959272, 625, 621, 600, 543, 0, 21781218),
(1120, 'Gorone', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21750475),
(1121, 'Rusalka', 1, 3134, 0, 1000, 13.50, 10.00, 25.00, 18.00, 9.50, 12.00, 0, 0, 0, 7092, 12, 12, 12, 12, 0, 21750475),
(1122, 'Rayan', 1, 3231, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 97457, 0, 0, 0, 0, 0, 21750475),
(1123, 'Eladriel', 1, 3733, 800, 1000, 17.00, 11.00, 17.00, 19.00, 11.00, 13.00, 0, 0, 0, 206164, 52, 52, 52, 53, 0, 21769662),
(1126, 'Dragonos', 1, 3903, 7, 1000, 21.00, 19.00, 9.00, 14.00, 15.00, 10.00, 0, 0, 0, 14380, 46, 46, 50, 42, 0, 21770843),
(1128, 'Demolade', 4, 48919, 6816, 10000, 55.00, 35.00, 17.00, 10.00, 17.00, 10.00, 17780, 0, 0, 184281, 209, 206, 315, 57, 0, 21773839),
(1130, 'Lia-Pandoriaque', 1, 0, 0, 1000, 14.50, 17.00, 9.00, 17.00, 14.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756439),
(1131, 'Soveliss', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21756439),
(1132, 'Norde', 5, 103999, 12335, 15000, 47.00, 35.00, 3.00, 85.00, 20.00, 19.00, 6175, 0, 0, 638277, 643, 733, 404, 287, 0, 21776941),
(1133, 'Valhomus', 5, 55991, 12573, 15000, 25.00, 15.00, 36.00, 30.00, 17.00, 22.00, 11767, 0, 0, 15410, 252, 373, 213, 357, 0, 21780623),
(1134, 'Zardarak', 2, 40095, 1339, 3000, 33.00, 20.00, 19.00, 9.00, 15.00, 10.00, 10000, 0, 0, 593941, 172, 90, 57, 86, 0, 21778631),
(1135, 'Sarkhan Vol', 6, 167390, 17121, 21000, 20.00, 31.00, 15.00, 32.00, 33.00, 20.00, 5052, 0, 0, 511, 223, 477, 270, 145, 0, 21780345),
(1136, 'El', 1, 3878, 82, 1000, 21.00, 15.00, 16.50, 7.50, 14.50, 13.50, 0, 0, 0, 1122, 16, 16, 16, 16, 0, 21756439),
(1138, 'R&eacute;mi', 3, 28126, 3550, 6000, 22.50, 19.50, 13.50, 18.00, 23.00, 19.50, 4885, 0, 0, 25489, 140, 139, 88, 88, 0, 21776687),
(1139, 'Kakumei', 3, 32173, 5031, 6000, 35.00, 22.00, 21.00, 6.50, 15.00, 14.50, 9080, 0, 0, 26951, 145, 164, 77, 168, 0, 21779997);INSERT INTO `11jun_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1142, 'Gaoule', 1, 3134, 0, 1000, 16.50, 15.00, 17.00, 13.00, 14.00, 13.50, 0, 0, 0, 8631, 24, 24, 24, 24, 0, 21757592),
(1143, 'Nicolag', 7, 136663, 21905, 28000, 60.00, 45.50, 29.00, 10.50, 22.50, 13.50, 9014, 0, 0, 255, 282, 190, 121, 331, 0, 21780915),
(1145, 'Amos', 6, 81998, 17510, 21000, 31.00, 31.00, 12.00, 23.00, 56.00, 32.00, 11879, 0, 0, 199776, 121, 251, 235, 63, 0, 21779118),
(1149, 'Baltor', 1, 0, 0, 1000, 18.00, 18.00, 15.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766230),
(1150, 'Noar', 3, 47205, 4547, 6000, 18.50, 24.00, 11.00, 21.00, 21.50, 16.50, 1088, 0, 0, 59409, 151, 222, 221, 106, 0, 21781313),
(1151, 'Oceanider', 5, 79481, 12437, 15000, 82.00, 19.00, 21.50, 20.50, 23.50, 49.50, 5366, 0, 0, 6985, 230, 186, 163, 59, 0, 21781108),
(1152, 'Lantaure', 3, 31349, 5134, 6000, 51.00, 26.50, 18.00, 9.50, 17.50, 9.50, 16886, 0, 0, 25214, 133, 58, 34, 61, 0, 21781092),
(1153, 'Ociesa', 1, 3134, 0, 1000, 15.50, 17.00, 9.00, 17.00, 14.50, 13.50, 0, 0, 0, 3445, 0, 0, 0, 0, 0, 21766230),
(1154, 'Oginsor', 1, 3134, 0, 1000, 20.00, 16.00, 13.50, 14.00, 13.00, 12.50, 0, 0, 0, 7384, 16, 16, 16, 16, 0, 21766230),
(1155, 'Wallen', 4, 75135, 9906, 10000, 46.00, 27.00, 23.00, 9.00, 18.00, 11.00, 17, 0, 0, 21716, 117, 199, 237, 221, 0, 21781166),
(1156, 'Spamnco', 1, 3134, 0, 1000, 18.00, 9.50, 14.50, 18.00, 10.50, 17.50, 0, 0, 0, 130899, 0, 0, 0, 0, 0, 21766230),
(1157, 'Toupin le Craint', 3, 57934, 3675, 6000, 24.50, 11.00, 32.00, 19.00, 15.50, 15.00, 82, 0, 0, 21392, 192, 207, 170, 250, 0, 21780664),
(1158, 'Davange', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766230),
(1159, 'Ephisia', 1, 3448, 0, 1000, 19.50, 11.00, 22.00, 14.00, 12.00, 12.50, 0, 0, 0, 60396, 4, 4, 4, 4, 0, 21766230),
(1160, 'Altir', 4, 94989, 9735, 10000, 21.00, 12.00, 12.00, 36.00, 21.00, 38.00, 10000, 0, 0, 21516, 71, 572, 221, 259, 0, 21780888),
(1161, 'Boo', 4, 134088, 8651, 10000, 20.00, 14.00, 13.00, 37.00, 20.00, 35.00, 18946, 0, 0, 70093, 371, 342, 475, 211, 0, 21780890),
(1162, 'Manod', 5, 48834, 11102, 15000, 49.00, 27.50, 22.00, 26.50, 19.50, 14.50, 143, 0, 0, 132, 280, 270, 307, 149, 0, 21780687),
(1163, 'Turin', 4, 89185, 8798, 10000, 31.00, 27.00, 36.00, 29.00, 15.00, 14.00, 13613, 0, 0, 53, 105, 264, 253, 164, 0, 21776644),
(1165, 'Maestroelfe', 5, 91165, 10566, 15000, 25.50, 20.00, 32.00, 31.00, 19.00, 20.50, 17422, 0, 0, 2669, 178, 68, 27, 73, 0, 21780743),
(1166, 'Bidou', 1, 0, 0, 1000, 26.00, 20.00, 9.00, 7.50, 14.00, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766230),
(1167, 'Tiinussveii', 1, 0, 0, 1000, 23.00, 21.00, 10.00, 10.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766230),
(1168, 'X&eacute;lior', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766230),
(1169, 'Hp&eacute;riar', 1, 3134, 0, 1000, 18.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 8520, 0, 0, 0, 0, 0, 21766230),
(1170, 'Perork', 2, 15053, 1929, 3000, 36.00, 17.00, 18.00, 6.00, 14.00, 14.00, 6751, 0, 0, 9045, 57, 72, 76, 76, 0, 21776630),
(1171, 'Rafal', 1, 0, 0, 1000, 19.00, 16.00, 15.00, 9.50, 10.00, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21766231),
(1173, 'Ireptus', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767881),
(1174, 'Risuron', 1, 3134, 0, 1000, 24.00, 17.00, 16.00, 7.50, 14.00, 9.50, 0, 0, 0, 6230, 8, 8, 8, 8, 0, 21767881),
(1175, 'Jeremie', 1, 0, 0, 1000, 17.50, 16.00, 17.00, 13.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767881),
(1176, 'Miragex', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21767881),
(1177, 'Kienama', 2, 9356, 1646, 3000, 14.00, 10.00, 19.00, 16.00, 16.00, 28.00, 10000, 0, 0, 103321, 51, 22, 21, 43, 0, 21779482),
(1178, 'Clogelia', 1, 0, 0, 1000, 15.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771156),
(1179, 'Birgale', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21771156),
(1180, 'Girnok', 1, 3645, 0, 1000, 21.00, 15.50, 14.00, 12.50, 13.50, 12.50, 0, 0, 0, 15760, 8, 8, 8, 8, 0, 21771156),
(1182, 'Laethil', 2, 22122, 1674, 3000, 22.00, 19.00, 15.00, 14.00, 19.00, 17.00, 10000, 0, 0, 137840, 70, 171, 42, 52, 0, 21780471),
(1185, 'Nem&egrave;s', 1, 3481, 0, 1000, 16.00, 13.50, 14.50, 13.00, 15.50, 17.50, 0, 0, 0, 32, 0, 0, 0, 0, 0, 21776994),
(1186, 'Ledemonteur', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776994),
(1187, 'Milyana', 1, 3264, 0, 1000, 11.50, 10.00, 9.00, 22.50, 16.50, 22.50, 0, 0, 0, 467, 4, 4, 4, 4, 0, 21776994),
(1188, 'Kazuya Le D&eacute;chu', 1, 3144, 0, 1000, 26.00, 15.50, 16.00, 7.50, 13.50, 9.50, 0, 0, 0, 4528, 4, 4, 4, 4, 0, 21776994),
(1189, 'Nyx ', 1, 0, 0, 1000, 24.00, 11.00, 15.50, 5.50, 13.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776994),
(1190, 'Tarnak', 1, 16363, 659, 1000, 25.00, 11.00, 15.50, 5.50, 13.50, 20.50, 1781, 0, 0, 6010, 15, 16, 18, 19, 0, 21781100),
(1191, 'Solane', 2, 13008, 1184, 3000, 19.00, 12.00, 27.00, 18.00, 13.00, 14.00, 9618, 0, 0, 8084, 5, 20, 10, 20, 0, 21780559),
(1192, 'Angara', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21776994),
(1193, 'Soulire', 1, 3690, 0, 1000, 15.50, 11.50, 13.50, 10.50, 13.50, 23.50, 0, 0, 0, 60059, 9, 9, 9, 9, 0, 21776995),
(1194, 'Orga', 1, 6543, 302, 1000, 20.50, 16.00, 18.00, 13.00, 13.00, 12.50, 6218, 0, 0, 6492, 11, 6, 6, 1, 0, 21779715),
(1199, 'Lhito', 1, 3556, 0, 1000, 13.50, 16.00, 14.00, 9.00, 16.50, 19.00, 0, 0, 0, 103, 0, 0, 0, 0, 0, 21781177);



CREATE TABLE `11jun_guildes_3` (
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

CREATE TABLE `11jun_guerres_3` (
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

CREATE TABLE `11jun_joueurs_bonus_3` (
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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

INSERT INTO `11jun_joueurs_bonus_3` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1, 'Babka', 29, 30, 32, 10, 0, 20, 3, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21443125, 0, 87, 63, 126120, 1, 2, 0, -1, -1, 1, 1, 5, 17, 0, 0, 0, 0, 0),
(3, 'Adola', 82, 47, 146, 14, 22, 0, 0, 40, 10, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21443483, 0, 48, 152, 402717, 1, 6, 1, -1, -1, 0, 0, 19, 13, 11, 1, 0, 1, 0),
(5, 'Irkos', 71, 104, 86, 18, 34, 9, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443994, 0, 74, 134, 257942, 4, 2, 1, -1, -1, 1, 0, 32, 4, 2, 8, 1, 7, 3),
(9, 'L`Ardonien', 72, 137, 79, 118, 123, 28, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21444359, 0, 91, 75, 280153, 4, 1, 0, 30, 30, 0, 0, 625, 7, 0, 0, 0, 20, 0),
(34, 'Tulkas', 35, 53, 143, 118, 62, 35, 16, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21602597, 0, 46, 35, 515801, 2, 1, 0, -1, -1, 1, 0, 4784, 0, 0, 25, 0, 0, 1),
(43, 'Mornor', 3, 0, 38, 0, 30, 53, 0, 70, 30, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21635756, 0, 28, 24, 120499, 0, 0, 1, 30, 50, 1, 0, 6, 0, 0, 11, 1, 0, 0),
(44, 'Malian', 33, 2, 0, 27, 50, 63, 0, 70, 70, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21662827, 0, 34, 9, 228005, 0, 0, 1, 20, 40, 0, 0, 15, 0, 0, 7, 10, 2, 0),
(47, 'Korannos', 18, 42, 0, 0, 30, 14, 0, 70, 70, 0, 'Magocracie', 'Mésomnon', '', 'Aucune', 21694607, 0, 30, 18, 191518, 0, 0, 0, -1, -1, 1, 1, 1, 0, 3, 4, 0, 0, 1),
(48, 'Massina', 1, 8, 10, 3, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21712695, 0, 26, 17, 166855, 0, 0, 0, -1, -1, 1, 1, 2, 0, 3, 2, 2, 0, 0),
(49, 'Aquilodon', 31, 2, 30, 3, 0, 2, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21713353, 0, 17, 12, 205812, 3, 2, 0, -1, -1, 1, 0, 2, 0, 0, 9, 0, 0, 0),
(51, 'Anas', 19, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21734580, 0, 6, 7, 73203, 0, 0, 0, -1, -1, 1, 1, 25, 0, 0, 4, 0, 0, 1),
(52, 'Nys&eacute;rine', 1, 0, 0, 3, 0, 32, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21740854, 0, 21, 3, 152229, 0, 0, 0, -1, -1, 0, 0, 1, 0, 0, 2, 6, 0, 0),
(53, 'Jeagda', 6, 12, 0, 12, 0, 0, 0, 50, 50, 1, 'Théocratie', 'Scitopole', '', 'Aucune', 21746700, 0, 13, 3, 138797, 3, 1, 1, -1, -1, 1, 1, 1, 0, 0, 7, 0, 0, 1),
(55, 'Rilas Thrin', 16, 0, 0, 0, 0, 14, 0, 100, 10, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21763021, 0, 16, 2, 144875, 0, 0, 0, -1, -1, 1, 0, 2, 1, 1, 0, 1, 1, 0);



CREATE TABLE `11jun_joueurs_heros_3` (
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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

INSERT INTO `11jun_joueurs_heros_3` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1, 'Babka', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Helcar', 100391, 0),
(3, 'Adola', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'des Plaines Perdues', 352678, 0),
(5, 'Irkos', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'de Kalferas', 129500, 0),
(9, 'L`Ardonien', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Le Village Isol&eacute;', 335604, 0),
(34, 'Tulkas', 'Célestial', 'Magicien', 'Pensée', 'Maître', 'd`Illya-Verte', 1685122, 0),
(43, 'Mornor', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'd`Armale', 96874, 0),
(44, 'Malian', 'Fée', 'Magicien', 'Pensée', 'Intendant', 'de Diriath', 300568, 0),
(47, 'Korannos', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Nymrais', 63373, 0),
(48, 'Massina', 'Elfe Noir', 'Démonologiste', 'Maladie', 'Matriarche', 'de For&ecirc;t de la Mort', 92364, 0),
(49, 'Aquilodon', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'de M&eacute;n&eacute;x&egrave;ne', 69730, 0),
(51, 'Anas', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de L`&icirc;le des Perdus', 30280, 0),
(52, 'Nys&eacute;rine', 'Homme', 'Nécromancien', 'Ténèbres', 'Dame', 'de Tysth la N&eacute;cropole', 153774, 0),
(53, 'Jeagda', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Stirland', 122103, 0),
(55, 'Rilas Thrin', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Gil-Talienn', 68493, 0);



CREATE TABLE `11jun_joueurs_stats_3` (
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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

INSERT INTO `11jun_joueurs_stats_3` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1, 'Babka', 17, 100391, 136907, 153000, 83.50, 55.00, 137.00, 76.00, 17.50, 48.00, 30000, 0, 0, 576201, 73, 319, 0, 473, 0, 21776514),
(3, 'Adola', 26, 352678, 326930, 351000, 163.00, 93.00, 290.00, 74.00, 65.00, 39.00, 2837, 0, 0, 1913865, 2408, 2477, 2875, 2457, 0, 21779084),
(5, 'Irkos', 25, 129500, 312100, 325000, 187.00, 215.00, 162.00, 49.50, 75.00, 33.50, 50000, 0, 0, 2488992, 931, 912, 837, 912, 0, 21786068),
(9, 'L`Ardonien', 27, 335604, 371864, 378000, 146.00, 205.00, 118.00, 213.00, 209.00, 94.00, 0, 0, 0, 9977586, 6594, 6708, 6879, 6857, 0, 21784069),
(34, 'Tulkas', 26, 1685122, 330099, 351000, 62.00, 93.00, 203.00, 999.00, 150.00, 177.00, 50000, 0, 0, 990897159, 229454, 233386, 232538, 234911, 0, 21750753),
(43, 'Mornor', 12, 96874, 74278, 78000, 35.00, 16.00, 81.00, 27.00, 70.00, 126.00, 20335, 0, 0, 508102, 109, 100, 430, 15, 0, 21771904),
(44, 'Malian', 19, 300568, 173444, 190000, 49.50, 29.00, 43.00, 69.50, 120.00, 186.00, 17610, 0, 0, 1379965, 1665, 1368, 1511, 964, 0, 21781221),
(47, 'Korannos', 8, 63373, 30750, 36000, 44.00, 59.00, 30.00, 22.00, 60.00, 68.00, 20000, 0, 0, 1902927, 314, 391, 36, 218, 0, 21764636),
(48, 'Massina', 7, 92364, 25941, 28000, 26.50, 22.50, 35.50, 21.50, 34.50, 49.50, 24567, 0, 0, 4, 1928, 1150, 1554, 1604, 0, 21771996),
(49, 'Aquilodon', 9, 69730, 43737, 45000, 71.00, 27.00, 60.50, 14.50, 34.50, 52.50, 30000, 0, 0, 1868909, 673, 262, 564, 942, 0, 21775512),
(51, 'Anas', 5, 30280, 14709, 15000, 36.00, 17.00, 33.00, 41.00, 19.50, 14.50, 466, 0, 0, 78400, 896, 1172, 738, 592, 0, 21779724),
(52, 'Nys&eacute;rine', 8, 153774, 30244, 36000, 38.00, 16.00, 28.00, 23.00, 25.00, 87.00, 17849, 0, 0, 165, 944, 486, 780, 804, 0, 21780735),
(53, 'Jeagda', 8, 122103, 35002, 36000, 40.00, 46.00, 23.00, 33.00, 37.00, 32.00, 21295, 0, 0, 396, 100, 134, 232, 147, 0, 21770893),
(55, 'Rilas Thrin', 4, 68493, 8843, 10000, 45.00, 12.00, 19.00, 12.00, 23.00, 46.00, 7335, 0, 0, 23276, 291, 302, 280, 372, 0, 21779126);



