CREATE TABLE `11may_guildes_1` (
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

INSERT INTO `11may_guildes_1` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Alliés de l`Ombre', 'Outre-Mer', 11, 21443802, 'http://img210.imageshack.us/img210/5494/cimetierel.jpg', 'Miroslaw', 'Depuis le départ de Cassandre, la barde schizophrène jadis cheffe des Saltimbanques de Kalamai, un grand bouleversement avait eu lieu au sein de sa communauté. La Nécromancienne Cendrine au passé tumultueux avait accepté de prendre en charge les combattants déchus au nom du lien familial qui unissait les deux femmes.

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
- partage des rapports de combat et d`espionnage.', 791837, 'http://saltimbanques.forumactif.com'),
(3, 'L`Ordre Célestial', 'Scitopole', 8, 21443864, 'http://i64.servimg.com/u/f64/13/74/94/60/celest10.jpg', 'Dalan', 'Un homme vêtu d’une longue cape ternie par les intempéries, bâton à la main, se tenait devant les majestueuses forteresses, maintenant en ruines, du peuple Célestial d’Etimnon. La figure avançait d’un pas lourd; autant ralenti par ce qui semblait être un fardeau psychologique, que par l’imposant bouclier qu’il tenait avec lassitude dans son autre main… Un bouclier que portaient fièrement les Paladins, à une certaine époque, semble-t-il...

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

Lieu de rassemblement : http://celestial.forumactif.com/', 358439, 'http://celestial.forumactif.com/forum.htm'),
(4, 'L`Orchidée', 'Thassopole', 7, 21443915, 'http://fr.academic.ru/pictures/frwiki/67/Claudius_II_coin_%28colourised%29.png', 'Orium', '« Jour de marché dans la cité impériale,
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

N.B. : Les rapports de combats et les rapports d\'espionnage sont importants à transmettre ;)', 244632, 'http://orchideemarchande.forumparfait.com/'),
(5, 'L`Ordre de So', 'Prévèze', 6, 21444005, 'http://www.halloweens.net/client/4256/prod/VS_4256_828_1160811630.jpg', 'Han Main-Tranchante', 'Une voix lugubre retentit. Elle déclame des mots. Et ces mots font des phrases. Et ces phrases ont un sens. Quoique.
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
', 197599, 'http://ordredesbouchers.forumparfait.com/'),
(6, 'L`Union des Citoyens', 'Vénopole', 14, 21445160, 'http://r27.imgfast.net/users/2712/57/63/34/album/uc11.png', 'Daneel', 'A nouveau, Kalamaï avait été bouleversée, ravagée en l`espace d`une nuit. Des anciens royaumes ne restaient que les mémoires et quelques écrits. 

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
Écrire au chef de l`alliance ou poster sur le forum pour postuler.', 860308, 'http://union-des-citoyens.positifforum.com/forum.htm://'),
(7, 'L`Ordre des Templiers de la Loi Empirique', 'Outre-Mer', 7, 21455504, 'http://i89.servimg.com/u/f89/12/69/42/73/tour310.jpg', 'T&ecirc;te-Plate', 'Les Templiers de la Loi Empirique, rassemble les Templiers de Kalamaï.

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

-Les païens (les autres classes) sont invités à nous rejoindre pour nourrir les flammes du bucher. ', 289857, 'http://ordredespurs.forumgratuit.fr'),
(9, 'Les Augures Boréals', 'Etimnon', 8, 21526433, 'http://imalbum.aufeminin.com/album/D20080313/385532_S3SMFGL66ZM2RRVWIVLOWYX8K47FET_aurore-boreal_H232959_L.jpg', 'Malia', 'La guerre… L’escroquerie… La mesquinerie…

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
', 248090, 'http://augures-boreals.forumgratuit.ca'),
(11, 'Les Ligues Unifiées', 'Zakinthe', 2, 21624073, 'http://www.noelshack.com/uploads/images/9442766748888_result.jpg', 'Criton', 'Les Ligues Unifiées des Négociants Libres de Zakinthe, parfois connues sous le nom des ligues de Zakinthe, les ligues unifiées, ou simplement des ligues, sont une organisation qui dirige Zakinthe depuis l’ascension de Megiddo. 
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

', 64016, 'http://');



CREATE TABLE `11may_guerres_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

INSERT INTO `11may_guerres_1` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
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

Fitzebist ! ', '', 21668722, 153139, 241545, 0, 0, 0, 'nbrvict', 150, '', 0, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 171, 15, 5, 78, 154.83973515832, 86.49071935561, 146.07926431409, 95.963219564787, 75448, 178236, 3743857, 2707530, 839658, 569686, 404574, 423723, 312143, 272505, 95.386392362958, 7.470729589013, 4380984, 3443214, 6804, 2170, 'Irkos', 'Tulkas', 645, 14515, 'Tulkas', 'Tulkas', 0, '|Olg le Gras|', '|Dyospiros|'),
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
', 'L`Ordre Célestial', 21717487, 432532, 541701, 21729974, 441725, 696685, 'xp', 140000, 'pertePuiss', 4000000, '', 0, 'AND', 'Butin total', 5638892, '', 0, '', 0, '', '', 30, 8, 9, 71, 31.081318742515, 81.324662030143, 31.667457078965, 80.301371478034, 141457, 180468, 3765027, 4561259, 182925, 901354, 143533, 237552, 76021, 177080, 0, 19.853536008545, 2035078, 3165562, 615, 1674, 'Dalan', 'Malorus', 5761, 15856, 'Dalan', 'Malorus', 0, '', '|Cassandre|');



CREATE TABLE `11may_joueurs_bonus_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2402 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2402 ;

INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(10, 'Maher', 31, 36, 23, 5, 51, 16, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 78, 298, 534316, 0, 0, 0, -1, -1, 1, 1, 60, 7, 0, 5, 1, 3, 2),
(11, 'Titlan', 98, 11, 1, 0, 17, 16, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21584315, 0, 174, 21, 76476, 0, 0, 0, -1, -1, 1, 1, 8, 4, 9, 5, 0, 2, 1),
(12, 'Vigrid', 71, 66, 78, 20, 45, 21, 3, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21451213, 0, 254, 184, 420331, 0, 0, 1, -1, -1, 1, 0, 30, 1, 0, 15, 0, 0, 9),
(29, 'Lissana', 0, 26, 7, 150, 130, 192, 1, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443597, 0, 163, 165, 199900, 0, 0, 1, 50, 50, 0, 0, 397, 0, 0, 0, 22, 0, 0),
(33, 'Demetron', 82, 17, 15, 0, 4, 0, 0, 80, 20, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21447014, 0, 159, 305, 140144, 0, 0, 0, -1, -1, 1, 1, 9, 9, 6, 0, 0, 2, 0),
(35, 'Meissner', 17, 40, 34, 14, 3, 0, 37, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21443640, 0, 101, 425, 932200, 0, 0, 1, -1, -1, 1, 1, 856, 24, 0, 0, 0, 0, 0),
(42, 'Ora&iuml;a', 118, 91, 92, 0, 20, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21559358, 0, 237, 79, 228742, 0, 0, 0, -1, -1, 1, 1, 2, 1, 3, 14, 0, 0, 0),
(45, 'Zhia', 1, 0, 5, 0, 12, 2, 0, 100, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21444135, 0, 249, 148, 123728, 0, 0, 0, 80, 80, 1, 1, 1, 0, 0, 0, 0, 11, 0),
(58, 'Egleria', 55, 65, 7, 56, 79, 57, 0, 80, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21446846, 0, 216, 141, 309737, 0, 0, 0, 80, 120, 1, 1, 30, 1, 2, 4, 2, 15, 1),
(68, 'Kiminou', 152, 71, 159, 74, 23, 0, 0, 70, 60, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21444176, 0, 334, 272, 202095, 0, 0, 0, 20, 30, 1, 0, 198, 2, 0, 39, 0, 0, 0),
(71, 'T&ecirc;te-Plate', 91, 88, 101, 124, 249, 68, 0, 100, 40, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21455345, 0, 153, 312, 466942, 0, 0, 0, 30, 30, 1, 0, 23, 0, 20, 10, 0, 7, 6),
(86, 'Lothadith', 0, 9, 53, 28, 58, 176, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443629, 0, 248, 87, 221344, 0, 0, 0, -1, -1, 0, 0, 93, 0, 0, 0, 23, 0, 0),
(88, 'Shaugan', 0, 9, 3, 0, 15, 16, 2, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21657648, 0, 57, 128, 288136, 0, 0, 1, -1, -1, 1, 1, 15, 0, 4, 3, 1, 4, 2),
(89, 'Argazel', 66, 22, 15, 114, 143, 316, 7, 90, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443807, 0, 100, 231, 377081, 0, 0, 0, 20, 30, 1, 1, 261, 0, 0, 8, 0, 0, 17),
(92, 'Turfel', 59, 70, 0, 75, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21501775, 0, 191, 170, 1449708, 0, 0, 0, 50, 50, 1, 0, 1402, 1, 0, 0, 0, 0, 50),
(93, 'Danahyl', 2, 16, 40, 68, 19, 104, 0, 90, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21447003, 0, 129, 134, 311309, 0, 0, 0, 20, 50, 0, 0, 19, 4, 5, 3, 1, 5, 5),
(98, 'Nelvin', 36, 12, 117, -2, 15, 12, 0, 100, 80, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21450036, 0, 94, 131, 420924, 0, 0, 1, -1, -1, 0, 0, 3, 0, 0, 21, 0, 0, 0),
(116, 'Ge&iuml;nfrindel', 6, 21, 27, 14, 36, 30, 6, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445317, 0, 98, 252, 645698, 0, 0, 0, -1, -1, 1, 1, 84, 2, 5, 0, 5, 7, 1),
(119, 'Barbouza', 33, 29, 33, 0, 27, 98, 0, 50, 50, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447192, 0, 134, 395, 1084131, 0, 0, 1, 80, 80, 0, 0, 31, 5, 0, 3, 7, 0, 2),
(120, 'Aub&eacute;rion', 21, 40, 80, 80, 78, 103, 2, 70, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443561, 0, 146, 237, 558526, 0, 0, 0, 50, 50, 1, 1, 30, 0, 0, 9, 8, 0, 7),
(125, 'Lhito', 141, 95, 106, 50, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21443678, 0, 410, 395, 323569, 0, 0, 1, -1, -1, 0, 0, 44, 4, 24, 0, 0, 2, 6),
(131, 'Dalan', 140, 99, 34, 66, 23, 28, 2, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21453690, 0, 150, 190, 281211, 0, 0, 0, 20, 30, 1, 0, 33, 18, 17, 6, 0, 1, 0),
(132, 'Malorus', 12, 90, 64, 123, 128, 163, 0, 50, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21444290, 0, 259, 328, 868654, 0, 0, 1, 30, 40, 1, 0, 346, 3, 0, 12, 2, 3, 22),
(133, 'Erios', 17, 34, 89, 8, 12, 6, 0, 100, 80, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443902, 0, 202, 279, 536625, 0, 0, 1, -1, -1, 0, 0, 0, 2, 16, 0, 0, 2, 0),
(136, 'Lirth Evendil', 50, 19, 86, 8, 0, 0, 0, 90, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 182, 238, 285857, 0, 0, 0, -1, -1, 1, 0, 5, 3, 0, 20, 0, 0, 0),
(140, 'Ananta', 28, 33, 14, 18, 9, 25, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 206, 98, 180540, 0, 0, 1, -1, -1, 1, 1, 3, 2, 2, 3, 1, 0, 1),
(143, 'Rinoacamui', 27, 27, 0, 7, 0, 0, 2, 100, 10, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21443995, 0, 87, 163, 233506, 0, 0, 0, -1, -1, 1, 1, 27, 1, 0, 3, 7, 2, 0),
(144, 'Irkos', 116, 107, 61, 62, 35, 16, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443870, 0, 149, 337, 341939, 0, 0, 1, -1, -1, 1, 0, 34, 0, 2, 12, 0, 4, 6),
(145, 'Phyleas', 130, 80, 111, 8, 18, 0, 0, 70, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445026, 0, 330, 368, 409223, 0, 0, 0, 50, 50, 1, 0, 26, 35, 1, 4, 0, 0, 0),
(150, 'Kahzerya', 91, 85, 29, 78, 73, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444302, 0, 256, 363, 319776, 0, 0, 0, -1, -1, 1, 1, 39, 0, 2, 10, 0, 10, 7),
(161, 'Marr', 89, 68, 20, 0, 22, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21472054, 0, 160, 133, 242900, 0, 0, 1, 50, 50, 1, 1, 22, 0, 0, 16, 0, 0, 0),
(162, 'Xelios', 21, 6, 0, 11, 26, 22, 0, 80, 70, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21443821, 0, 63, 81, 256747, 0, 0, 1, -1, -1, 1, 1, 12, 0, 6, 0, 0, 3, 2),
(167, 'Klaasninas', 155, 173, -5, 0, 93, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21446750, 0, 298, 202, 317753, 0, 0, 0, 40, 40, 0, 0, 11, 10, 17, 0, 0, 3, 0),
(168, 'Altharam', 137, 112, 5, 2, 31, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444026, 0, 230, 131, 136305, 0, 0, 0, -1, -1, 1, 0, 8, 5, 17, 0, 0, 0, 0),
(173, 'Hulricht', 112, 57, 91, 52, 29, 6, 0, 100, 70, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21443974, 0, 286, 353, 221205, 0, 0, 1, 40, 40, 1, 0, 28, 33, 0, 0, 0, 0, 0),
(181, 'Fourbinas', 0, 0, 0, 0, 30, 30, 0, 80, 80, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21443959, 0, 168, 156, 396617, 0, 0, 0, 40, 50, 0, 0, 386, 0, 0, 0, 1, 22, 0),
(183, 'Axeolu', 9, 10, 0, 12, 3, 16, 2, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443976, 0, 157, 236, 529380, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 6, 3, 5, 2),
(187, 'Boubi', 21, 18, 24, 0, 17, 23, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21444197, 0, 133, 117, 112021, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 10, 0, 12, 0),
(192, 'Orium', 184, 45, 72, 83, 0, 0, 22, 100, 90, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21444191, 0, 114, 411, 478646, 0, 0, 0, -1, -1, 1, 1, 3450, 0, 0, 30, 0, 0, 0),
(197, 'Leslie', 2, 10, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 114, 260, 387375, 0, 0, 1, -1, -1, 1, 1, 0, 7, 6, 0, 3, 0, 1),
(199, 'Benihime', 19, 4, -2, -5, 113, 138, 5, 100, 30, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444113, 0, 162, 323, 270774, 0, 0, 0, 30, 40, 0, 1, 150, 0, 0, 5, 9, 17, 1),
(204, 'Ovelia', 72, 102, 33, 6, 53, 0, 0, 80, 60, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444321, 0, 191, 66, 164417, 0, 0, 1, -1, -1, 0, 0, 7, 18, 1, 0, 1, 0, 0),
(217, 'Tylert', 39, 37, 61, 2, 27, 0, 0, 70, 20, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21446751, 0, 132, 138, 311035, 0, 0, 0, 50, 50, 0, 1, 8, 25, 0, 0, 0, 0, 0),
(218, 'Alumdil', 2, 4, 0, 0, 0, 0, 0, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21445012, 0, 190, 189, 94987, 0, 0, 0, 30, 50, 1, 0, 27, 0, 0, 20, 0, 2, 0),
(225, 'Ther`glat', 57, 38, 0, 0, 21, 12, 2, 100, 40, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21624355, 0, 137, 88, 239126, 0, 0, 1, -1, -1, 1, 0, 74, 12, 3, 11, 0, 0, 0),
(231, 'Galigonidd', 92, 12, 42, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21448597, 0, 99, 223, 504999, 0, 0, 1, -1, -1, 1, 1, 32, 10, 6, 1, 0, 0, 0),
(232, 'Matkias', 29, 44, 44, 5, 64, 8, 2, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21588637, 0, 76, 335, 391184, 0, 0, 1, -1, -1, 1, 1, 114, 2, 7, 1, 5, 3, 0),
(234, 'Poupou', 16, 0, 88, 19, 22, 43, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445036, 0, 117, 132, 408621, 0, 0, 0, -1, -1, 1, 0, 15, 6, 1, 0, 15, 0, 0),
(235, 'Dartoil', -6, 12, 0, -9, 15, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445172, 0, 61, 68, 251550, 0, 0, 0, -1, -1, 1, 1, 9, 9, 0, 0, 0, 0, 0),
(236, 'Tefeiri', 3, 32, 50, 0, 0, 30, 0, 90, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21475898, 0, 294, 219, 280290, 0, 0, 1, -1, -1, 1, 1, 1, 7, 1, 5, 5, 0, 0),
(239, 'Luna', 64, 21, 0, 12, 48, 37, 0, 90, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 80, 211, 489671, 0, 0, 1, -1, -1, 1, 0, 26, 4, 11, 0, 0, 0, 0);INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(241, 'Nadras', 0, 15, 10, 3, 18, 130, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21447908, 0, 219, 62, 143076, 0, 0, 0, 50, 50, 0, 1, 17, 0, 0, 0, 18, 0, 0),
(242, 'Thelv', 3, 0, 5, -7, 126, 194, 0, 90, 80, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445186, 0, 128, 114, 270476, 0, 0, 1, 20, 30, 0, 0, 99, 0, 0, 9, 4, 10, 0),
(256, 'Husam', 0, 0, 0, 0, 12, 15, 2, 60, 30, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21464117, 0, 186, 177, 308179, 0, 0, 0, 80, 80, 1, 1, 12, 0, 0, 6, 14, 1, 0),
(258, 'Febus', 20, 30, 45, -4, 79, 30, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445510, 0, 296, 240, 130550, 0, 0, 0, 50, 50, 0, 1, 18, 0, 0, 0, 1, 1, 21),
(267, 'Dacapo', 27, 6, 14, 1, 19, 8, 4, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448624, 0, 140, 96, 195532, 0, 0, 1, -1, -1, 1, 1, 29, 6, 1, 3, 1, 4, 0),
(270, 'Desmondis', 2, 14, 10, 0, 10, 40, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 187, 187, 516628, 0, 0, 0, -1, -1, 1, 0, 3, 6, 8, 1, 1, 3, 2),
(278, 'Zahel', 4, 4, 9, 43, 44, 81, 3, 80, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447081, 0, 361, 258, 303811, 0, 0, 0, -1, -1, 0, 0, 101, 0, 0, 25, 2, 0, 1),
(280, 'Rufbumpa', 20, 20, 23, 0, 0, 12, 0, 60, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21455553, 0, 186, 148, 388741, 0, 0, 0, 20, 100, 0, 1, 9, 21, 0, 0, 0, 0, 0),
(282, 'Kalista', 95, 126, 35, 31, 4, 0, 5, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 199, 201, 147657, 0, 0, 0, -1, -1, 1, 0, 56, 3, 15, 3, 0, 0, 1),
(283, 'Gelthasar Belt', 51, 101, 75, 120, 65, 12, 2, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21446471, 0, 206, 526, 72427, 0, 0, 0, -1, -1, 1, 1, 28, 0, 0, 4, 0, 1, 26),
(284, 'Tulkas', 65, 81, 217, 119, 20, 0, 0, 80, 60, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21445912, 0, 179, 315, 429687, 0, 0, 0, 20, 20, 0, 0, 3141, 2, 0, 31, 0, 0, 2),
(297, 'Bartor', 14, 28, 10, 11, 0, 16, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21468695, 0, 96, 84, 334023, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 21, 0, 0, 0),
(300, 'Shadark', 78, 30, 89, 16, 0, 12, 2, 100, 50, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21599679, 0, 125, 244, 604803, 0, 0, 0, -1, -1, 1, 1, 42, 17, 0, 2, 0, 1, 0),
(302, 'L&eacute;otar', 37, 86, -8, 0, 31, 30, 2, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 287, 143, 171225, 0, 0, 1, -1, -1, 1, 1, 3, 6, 5, 0, 5, 0, 3),
(303, 'Gauerd&ocirc;me', -7, 27, 35, 1, 28, 32, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21462576, 0, 274, 122, 331178, 0, 0, 0, 40, 40, 0, 0, 95, 1, 1, 0, 4, 24, 1),
(314, 'Eleanora', 21, 4, 24, 50, 0, 50, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21449107, 0, 154, 164, 104811, 0, 0, 1, -1, -1, 1, 1, 0, 8, 1, 1, 8, 0, 1),
(321, 'Vannams', 46, 68, 75, 122, 45, 19, 2, 100, 10, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447228, 0, 162, 201, 199158, 0, 0, 1, -1, -1, 0, 0, 20, 0, 2, 10, 0, 3, 8),
(345, 'Torme Morselame', 27, 16, 10, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21469665, 0, 180, 152, 175929, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 0, 0, 20, 0),
(349, 'Elanor', 99, 120, 122, 104, 75, 0, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21448636, 0, 44, 267, 918009, 0, 0, 0, 20, 30, 0, 0, 148, 0, 2, 17, 2, 4, 0),
(385, 'Aratos', 14, 4, 19, 19, 48, 84, 3, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21452805, 0, 190, 169, 354605, 0, 0, 0, -1, -1, 1, 1, 41, 0, 0, 26, 0, 0, 0),
(386, 'Yelderick', 147, 124, 2, 25, 48, 0, 1, 100, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21449864, 0, 297, 369, 386689, 0, 0, 0, -1, -1, 1, 0, 105, 20, 5, 3, 0, 5, 2),
(408, 'Leorod', 49, 88, -2, 11, 9, 0, 5, 100, 50, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 126, 282, 318787, 0, 0, 1, 40, 60, 1, 1, 28, 0, 0, 0, 13, 4, 1),
(410, 'Birgenn', 47, 80, 61, 62, 51, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21475197, 0, 151, 226, 151301, 0, 0, 1, -1, -1, 1, 1, 16, 6, 9, 1, 0, 3, 3),
(413, 'Tetrahyd', 24, 44, 17, -10, 138, 133, 3, 100, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21452714, 0, 125, 105, 192382, 0, 0, 0, 30, 60, 1, 0, 49, 0, 0, 0, 14, 15, 0),
(423, 'Abert', 23, 41, 48, 16, 48, 79, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 453, 99, 204885, 0, 0, 0, -1, -1, 1, 1, 14, 3, 3, 5, 7, 0, 0),
(427, 'Koali', 2, 4, 4, 0, 9, 0, 0, 100, 100, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21663359, 0, 90, 96, 443587, 0, 0, 1, -1, -1, 1, 1, 19, 5, 8, 0, 1, 0, 0),
(439, 'Willi', 6, 10, 0, 1, 6, 0, 2, 70, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 176, 491584, 0, 0, 0, -1, -1, 1, 1, 11, 5, 2, 0, 0, 0, 0),
(463, 'Arnaud', 4, 0, 0, 0, 0, 0, 0, 90, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21457055, 0, 118, 150, 207113, 0, 0, 0, -1, -1, 1, 1, 0, 2, 6, 4, 3, 0, 2),
(465, 'Dachinos', 61, 11, 30, 25, 34, 24, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21693158, 0, 69, 101, 74695, 0, 0, 0, -1, -1, 1, 0, 0, 3, 3, 3, 1, 2, 1),
(481, 'Arcelane', 3, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 273, 26, 86955, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 14, 0, 0, 0),
(491, 'Ankharon', 26, 14, 0, 43, 89, 146, 5, 60, 20, 0, 'République', 'Thassopole', '', 'Aucune', 21469452, 0, 131, 215, 160491, 0, 0, 0, -1, -1, 1, 0, 52, 0, 0, 0, 29, 0, 1),
(555, 'Kaerrawen', 1, 0, 20, 0, 0, 2, 0, 90, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21466638, 0, 117, 128, 342736, 0, 0, 1, 80, 80, 1, 1, 0, 2, 5, 11, 0, 0, 0),
(566, 'Bamdinas', -7, 15, 10, 40, 107, 218, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21521820, 0, 234, 100, 331073, 0, 0, 0, 30, 40, 0, 0, 22, 0, 0, 0, 0, 0, 24),
(637, 'Mathaos', 145, 116, 34, 6, 28, 0, 0, 100, 100, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21637400, 0, 98, 198, 495448, 0, 0, 1, -1, -1, 1, 0, 134, 4, 4, 1, 0, 6, 6),
(640, 'Mattai', 29, 20, 41, 8, 0, 0, 2, 100, 50, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21556625, 0, 132, 104, 345674, 0, 0, 0, 30, 60, 1, 1, 3, 2, 4, 4, 7, 0, 2),
(672, 'Jeffrey', 42, 39, 41, 87, 8, 0, 4, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21485718, 0, 150, 39, 431136, 0, 0, 0, -1, -1, 1, 1, 170, 3, 1, 6, 0, 0, 13),
(787, 'Dranthen', 3, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21500445, 0, 49, 135, 756924, 0, 0, 0, -1, -1, 1, 1, 0, 2, 2, 0, 5, 1, 1),
(815, 'Mollestho', 80, 67, 15, 24, 20, 8, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21508081, 0, 60, 178, 713482, 0, 0, 0, 50, 50, 1, 1, 29, 9, 0, 0, 4, 1, 0),
(848, 'Arkatros', 178, 176, 18, 0, 65, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21589680, 0, 124, 75, 663328, 0, 0, 0, -1, -1, 1, 1, 85, 10, 1, 21, 0, 0, 1),
(868, 'Arimane', 13, 11, 3, 1, 47, 84, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 64, 97, 347177, 0, 0, 0, -1, -1, 1, 1, 30, 0, 0, 0, 18, 1, 0),
(870, 'Xandre', 31, 19, 0, 0, 31, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21507557, 0, 114, 118, 202101, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 14, 0, 0, 0),
(879, 'Vezk', 101, 101, 56, 0, 23, 31, 0, 40, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21527614, 0, 135, 163, 122450, 0, 0, 0, -1, -1, 1, 0, 6, 16, 4, 1, 0, 0, 0),
(911, 'Enephia', 15, 0, 2, -20, 25, 40, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21526022, 0, 97, 66, 293602, 0, 0, 0, -1, -1, 1, 1, 4, 0, 14, 0, 0, 7, 0),
(922, 'Malia', 13, 33, 30, 57, 45, 44, 0, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21519223, 0, 74, 57, 562542, 0, 0, 0, 20, 20, 0, 0, 22, 0, 8, 0, 0, 9, 0),
(930, 'Zaseo', 72, 89, 54, 50, 36, 8, 3, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21530419, 0, 220, 77, 153246, 0, 0, 0, -1, -1, 1, 1, 54, 1, 0, 24, 0, 0, 0),
(989, 'Salfalar', 24, 59, 26, 16, 27, 40, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 154, 85, 371182, 0, 0, 0, 20, 20, 0, 1, 49, 0, 0, 22, 0, 0, 0),
(1010, 'Herel', 27, 6, 5, 5, 6, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21528014, 0, 98, 192, 358612, 0, 0, 0, -1, -1, 1, 1, 12, 9, 4, 0, 2, 0, 0),
(1016, 'Eleana', 17, 30, 22, 0, 0, 6, 0, 90, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21538406, 0, 114, 45, 235312, 0, 0, 1, -1, -1, 1, 1, 6, 0, 0, 15, 0, 0, 0),
(1057, 'X&eacute;nox', 44, 39, 11, 15, 37, 16, 0, 100, 10, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21703668, 0, 109, 197, 299700, 0, 0, 1, -1, -1, 1, 1, 54, 0, 7, 0, 3, 7, 1),
(1067, 'Daneel', 62, 70, 78, 56, 64, 0, 0, 60, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21530452, 0, 145, 70, 314787, 0, 0, 0, 30, 30, 0, 0, 388, 26, 0, 0, 0, 0, 0),
(1115, 'Galaway', 30, 30, 30, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21657168, 0, 58, 112, 22740, 0, 0, 0, -1, -1, 1, 1, 2, 1, 0, 10, 1, 0, 0);INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1122, 'Del&eacute;nia', 20, 99, 3, 0, 53, 12, 2, 80, 80, 0, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21533389, 0, 203, 16, 160881, 0, 0, 0, 50, 50, 0, 0, 208, 0, 1, 0, 0, 25, 0),
(1141, 'Renard', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21606413, 0, 36, 93, 140081, 0, 0, 0, -1, -1, 1, 1, 1, 0, 1, 0, 8, 1, 0),
(1156, 'Yzeute', 22, 26, 24, 13, 0, 0, 2, 80, 70, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21541002, 0, 80, 119, 639672, 0, 0, 1, -1, -1, 1, 1, 13, 4, 2, 3, 1, 3, 2),
(1287, 'Nragax', 134, 37, 130, 72, 0, 0, 0, 80, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21547463, 0, 203, 90, 180699, 0, 0, 0, 20, 20, 0, 1, 1274, 27, 0, 1, 0, 0, 0),
(1301, 'Dexert', 14, 10, 0, 0, 0, 16, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 73, 89, 240421, 0, 0, 1, -1, -1, 0, 0, 7, 0, 0, 1, 0, 1, 0),
(1403, 'Soreclis', 40, 38, 15, 12, 9, 0, 4, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 152, 181, 378016, 0, 0, 1, 80, 80, 0, 0, 12, 3, 2, 5, 6, 1, 0),
(1409, 'Esteban', 88, 10, 74, 8, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21672998, 0, 93, 33, 208202, 0, 0, 0, 10, 10, 0, 1, 2, 11, 3, 1, 0, 0, 0),
(1411, 'Karyon', 4, 0, 50, -9, 94, 112, 2, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21560675, 0, 199, 50, 338642, 0, 0, 1, 20, 50, 1, 1, 152, 0, 1, 6, 3, 8, 3),
(1412, 'Fouchier', 74, 107, 24, 50, 22, 40, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21566357, 0, 187, 95, 329094, 0, 0, 0, 20, 20, 0, 0, 4, 0, 1, 7, 0, 12, 2),
(1414, 'Criton', 30, 56, -18, 37, 19, 0, 2, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21560813, 0, 149, 163, 293992, 0, 0, 1, -1, -1, 1, 1, 6, 1, 4, 1, 0, 11, 2),
(1418, 'Basl', 0, 42, -1, 110, 29, 25, 14, 10, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21561913, 0, 14, 40, 15780413, 0, 0, 1, -1, -1, 1, 1, 1126, 0, 0, 13, 0, 0, 0),
(1458, 'Yodine', 35, 10, 10, 12, 34, 31, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21608484, 0, 48, 59, 539110, 0, 0, 0, -1, -1, 1, 1, 12, 3, 7, 2, 3, 2, 4),
(1460, 'Alec', 41, 4, 3, 15, 28, 41, 0, 60, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21727927, 0, 153, 65, 286672, 0, 0, 1, 50, 50, 1, 1, 31, 0, 7, 2, 5, 0, 2),
(1469, 'Elm', 93, 85, 181, 152, 12, 12, 0, 60, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21567987, 0, 211, 64, 492381, 0, 0, 0, -1, 60, 0, 0, 50, 1, 10, 26, 0, 0, 9),
(1470, 'Celithrand', 1, 0, 30, 0, 30, 32, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 64, 46, 264750, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 14, 0),
(1475, 'Batterusero', 11, 8, 26, 2, 21, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21658626, 0, 31, 99, 504495, 0, 0, 0, -1, -1, 1, 1, 0, 1, 3, 1, 3, 2, 0),
(1492, 'Osterate', 47, 53, 25, 26, 17, 14, 0, 80, 80, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21575245, 0, 113, 154, 359828, 0, 0, 1, 30, 70, 0, 0, 20, 8, 4, 2, 1, 0, 3),
(1512, 'Keldaran', 20, 28, 30, 0, 0, 0, 3, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21573902, 0, 146, 55, 137038, 0, 0, 1, -1, -1, 1, 1, 8, 0, 0, 17, 0, 0, 0),
(1519, 'Tirandilis', 26, 27, 126, 0, 3, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21580705, 0, 136, 83, 227966, 0, 0, 1, 40, 40, 1, 0, 12, 0, 8, 15, 0, 0, 0),
(1522, 'Durshak le Borgne', 84, 74, 55, 0, 10, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21728148, 0, 76, 75, 222102, 0, 0, 0, 50, 50, 0, 1, 7, 1, 0, 22, 0, 0, 0),
(1528, 'Saya', 119, 82, 40, 0, 15, 0, 0, 100, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21577608, 0, 70, 39, 77349, 0, 0, 1, -1, -1, 1, 0, 8, 2, 0, 8, 0, 0, 0),
(1539, 'Kaiiros', 2, 14, 19, 28, 50, 195, 3, 50, 30, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21579362, 0, 183, 53, 247781, 0, 0, 0, 10, 10, 0, 0, 17, 0, 0, 0, 25, 0, 0),
(1549, 'Caym', 23, 31, 79, 15, 10, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21608540, 0, 130, 72, 572535, 0, 0, 0, -1, -1, 1, 0, 21, 1, 7, 0, 1, 7, 0),
(1550, 'N&auml;ta&euml;l', 97, 102, -2, 3, 22, 14, 0, 80, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21623401, 0, 174, 87, 224466, 0, 0, 0, -1, -1, 1, 1, 16, 2, 2, 8, 3, 0, 0),
(1562, 'Lyraprime', 33, 63, 0, 33, 16, 24, 4, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21588961, 0, 52, 63, 378666, 0, 0, 0, -1, -1, 1, 1, 12, 11, 3, 0, 0, 3, 0),
(1583, 'Rhal', 16, 12, 32, 0, 13, 20, 0, 80, 80, 1, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21586785, 0, 62, 64, 230464, 0, 0, 1, -1, -1, 1, 0, 2, 3, 2, 8, 2, 0, 1),
(1611, 'Arthurik', 47, 21, 0, 12, 3, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21698899, 0, 53, 66, 211090, 0, 0, 0, -1, -1, 1, 1, 4, 15, 0, 2, 0, 0, 0),
(1627, 'Silayerr', 46, 2, 0, 12, 0, 14, 0, 100, 90, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21589631, 0, 79, 75, 348024, 0, 0, 1, -1, -1, 1, 0, 2, 3, 7, 4, 0, 4, 0),
(1653, 'Damian', 43, 70, 46, 9, 14, 0, 0, 80, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21698931, 0, 81, 161, 378928, 0, 0, 0, -1, -1, 1, 1, 10, 0, 2, 4, 0, 2, 1),
(1667, 'Vylnius', 20, 7, -10, 3, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21612435, 0, 58, 127, 655718, 0, 0, 1, -1, -1, 1, 0, 4, 0, 13, 0, 0, 0, 0),
(1670, 'Bolackot', 17, 10, 25, 3, 13, 6, 2, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21682797, 0, 86, 74, 551840, 0, 0, 0, -1, -1, 1, 1, 3, 0, 6, 2, 3, 1, 0),
(1682, 'L&eacute;&ouml;raz', 19, 6, 24, 0, 6, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21602478, 0, 85, 53, 190778, 0, 0, 1, 80, 150, 0, 0, 0, 4, 2, 4, 3, 0, 0),
(1685, 'Beltha&iuml;s', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21602607, 0, 23, 54, 22541, 0, 0, 0, -1, -1, 1, 1, 0, 7, 0, 3, 0, 0, 0),
(1700, 'Gaeldrech', 74, 58, 14, 18, 53, 0, 3, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21652627, 0, 88, 158, 476854, 0, 0, 1, -1, -1, 0, 1, 8, 3, 2, 5, 0, 4, 1),
(1725, 'Galmin', 188, 49, 51, 29, 47, 28, 2, 80, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21609874, 0, 210, 34, 360503, 0, 0, 1, 20, 30, 0, 0, 14, 14, 0, 19, 2, 3, 0),
(1747, 'Hordrin', 152, 163, 3, 0, 116, 28, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21625500, 0, 191, 24, 245069, 0, 0, 1, 20, 40, 0, 0, 7, 1, 27, 0, 0, 3, 0),
(1748, 'Baduit', 71, 78, 107, 86, 70, 12, 0, 80, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21612532, 0, 180, 77, 264799, 0, 0, 0, 30, 60, 0, 0, 19, 5, 1, 13, 0, 7, 1),
(1755, 'Le Dougec', 62, 47, 46, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 85, 118, 481036, 0, 0, 0, -1, -1, 1, 1, 6, 6, 2, 1, 0, 1, 3),
(1773, 'Pyrazine', 43, 46, 31, -10, 120, 99, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21619197, 0, 240, 71, 630326, 0, 0, 0, -1, -1, 1, 1, 16, 5, 0, 10, 0, 0, 0),
(1784, 'Lineus', 16, 45, 0, 50, 17, 53, 0, 90, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21651077, 0, 66, 58, 276760, 0, 0, 1, -1, -1, 1, 1, 10, 2, 5, 2, 1, 2, 1),
(1795, 'Bornami', 44, 63, 87, 80, 41, 23, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21651064, 0, 73, 82, 688989, 0, 0, 1, 40, 70, 1, 0, 70, 0, 0, 0, 0, 0, 19),
(1804, 'Elorfindelle', 4, 10, 1, 0, 10, 0, 0, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21640220, 0, 53, 60, 67187, 0, 0, 1, -1, -1, 1, 1, 3, 9, 1, 0, 0, 0, 0),
(1809, 'Kal', 105, 148, 116, 0, 74, 29, 0, 70, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21647303, 0, 162, 91, 790591, 0, 0, 0, -1, -1, 1, 1, 1, 25, 2, 0, 0, 0, 0),
(1816, 'Han Main-Tranchante', 97, 62, 62, 62, 15, 0, 0, 70, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21626909, 0, 65, 44, 373093, 0, 0, 0, -1, -1, 1, 0, 19, 0, 0, 14, 0, 0, 0),
(1824, 'Aedorn', 39, 51, 40, 3, 72, 96, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21628430, 0, 82, 39, 412094, 0, 0, 0, 10, 30, 1, 0, 56, 0, 7, 0, 12, 1, 0),
(1827, 'Khiran', 33, 27, 17, 12, 14, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21631177, 0, 55, 93, 514420, 0, 0, 0, -1, -1, 1, 1, 25, 12, 0, 0, 0, 0, 0),
(1835, 'Krystophoros', 18, 59, 16, 12, 6, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21699308, 0, 44, 56, 408795, 0, 0, 1, -1, -1, 1, 1, 5, 0, 0, 7, 0, 7, 0),
(1838, 'Anwaman&euml;l', 28, 49, -12, 1, 12, 14, 2, 70, 50, 1, 'République', 'Thassopole', '', 'Aucune', 21633154, 0, 63, 91, 523839, 0, 0, 1, 40, 50, 1, 1, 8, 8, 3, 0, 0, 2, 0),
(1842, 'Cometa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 58, 47, 144389, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 7),
(1851, 'Reyns', 26, 37, 15, 22, 14, 14, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 71, 60, 445301, 0, 0, 1, -1, -1, 1, 1, 4, 0, 2, 4, 4, 3, 2),
(1853, 'Ar&eacute;gonde', 25, 61, 97, 145, 45, 26, 0, 100, 80, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21643875, 0, 87, 35, 159646, 0, 0, 1, 10, 10, 1, 0, 116, 4, 0, 10, 0, 0, 5);INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1866, 'Agro', 111, 105, 85, 78, 34, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21636936, 0, 174, 44, 257163, 0, 0, 1, 40, 40, 1, 0, 279, 20, 0, 0, 0, 0, 0),
(1867, 'Maxliger', 15, 9, 3, 0, 20, 27, 2, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 112, 55, 357670, 0, 0, 1, -1, -1, 0, 0, 22, 0, 0, 14, 0, 0, 0),
(1874, 'Alardius', 3, 2, 0, 0, 0, 0, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21644479, 0, 12, 60, 19862, 0, 0, 0, -1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0),
(1883, 'Khane', 66, 21, 16, 18, 10, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21640311, 0, 40, 29, 236024, 0, 0, 0, -1, -1, 1, 1, 12, 1, 1, 7, 0, 0, 0),
(1914, 'Metyorah', 18, 0, 14, 0, 0, 0, 0, 70, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21647194, 0, 45, 41, 332984, 0, 0, 0, -1, -1, 1, 1, 5, 2, 3, 2, 0, 2, 0),
(1922, 'Thaelion', 29, 2, 15, 24, 0, 0, 2, 100, 10, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21641207, 0, 53, 56, 316176, 0, 0, 1, -1, -1, 1, 0, 3, 12, 0, 2, 0, 0, 0),
(1927, 'Koulibab', 2, 1, 0, 0, 0, 0, 0, 100, 60, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 29, 37, 322339, 0, 0, 1, -1, -1, 1, 1, 3, 3, 1, 0, 0, 0, 0),
(1937, 'Ekelgeister', 18, 0, 14, 11, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 67, 26, 390493, 0, 0, 0, -1, -1, 1, 0, 3, 1, 3, 0, 11, 0, 0),
(1945, 'Miroslaw', 112, 126, -7, 0, 49, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21649335, 0, 127, 49, 265620, 0, 0, 0, 50, 50, 0, 0, 26, 9, 1, 0, 0, 6, 0),
(1953, 'Erchael', 105, 97, 68, 80, 13, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21647445, 0, 242, 65, 205686, 0, 0, 0, -1, -1, 1, 0, 286, 0, 0, 10, 0, 0, 0),
(1959, 'Llumeolf', 6, 0, 18, 14, 14, 63, 4, 100, 30, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21687739, 0, 83, 28, 289386, 0, 0, 0, -1, -1, 0, 0, 41, 0, 0, 0, 11, 1, 0),
(1962, 'Noddin', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21675711, 0, 42, 34, 259254, 0, 0, 0, 30, 100, 1, 1, 0, 0, 4, 0, 0, 2, 0),
(1991, 'Aorphen', 36, 0, 0, 0, 5, 46, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 32, 248428, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 2, 0, 0),
(1994, 'Aridius', 23, 9, -10, 12, 0, 0, 0, 100, 10, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21706461, 0, 52, 40, 294022, 0, 0, 1, -1, -1, 1, 1, 2, 3, 1, 2, 1, 0, 0),
(1995, 'Trano', 27, 23, 48, 6, 0, 0, 0, 100, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21655677, 0, 67, 32, 196535, 0, 0, 0, 50, 50, 1, 1, 1, 3, 0, 13, 0, 0, 0),
(1996, 'Anithralith', 47, 57, 16, 15, 7, 0, 1, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 47, 44, 370521, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 6, 1, 0, 0),
(2001, 'Murzolk ', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21661225, 0, 51, 31, 275960, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 10, 0, 0),
(2007, 'Luinelinde', 25, 30, 3, 23, 21, 16, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21656071, 0, 96, 26, 316153, 0, 0, 1, 40, 60, 0, 1, 15, 6, 0, 4, 3, 1, 0),
(2017, 'Nargorath', 42, 50, 15, 12, 24, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21702921, 0, 124, 23, 232827, 0, 0, 1, -1, -1, 1, 1, 5, 10, 2, 1, 0, 0, 0),
(2021, 'Borfang', 23, 17, -10, 0, 0, 0, 0, 90, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21655962, 0, 66, 41, 292432, 0, 0, 0, 50, 60, 0, 1, 2, 5, 0, 1, 0, 1, 1),
(2026, 'Drekal', 89, 116, 61, 0, 18, 0, 0, 100, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21658788, 0, 126, 36, 223253, 0, 0, 0, 20, 30, 0, 0, 2, 8, 0, 10, 0, 0, 0),
(2028, 'L&eacute;nnih', 14, 2, 5, 0, 9, 26, 0, 100, 40, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21664563, 0, 57, 37, 384876, 0, 0, 1, -1, -1, 1, 0, 5, 0, 0, 0, 10, 0, 0),
(2030, 'Archanos', 49, 59, 89, 0, 19, 12, 0, 100, 90, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21660170, 0, 73, 40, 462521, 0, 0, 0, 60, 80, 1, 0, 1, 0, 11, 0, 0, 2, 0),
(2043, 'Latifa', 50, 2, 64, 0, 0, 0, 1, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21679072, 0, 31, 12, 234086, 0, 0, 0, -1, -1, 0, 0, 0, 3, 0, 4, 0, 0, 0),
(2047, 'Aldere', 50, 29, 14, 12, 4, 0, 1, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21665445, 0, 65, 61, 378229, 0, 0, 1, -1, -1, 1, 1, 0, 7, 3, 2, 0, 0, 0),
(2048, 'Haelyn', 20, 17, -8, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 65, 55, 641104, 0, 0, 0, -1, -1, 1, 1, 2, 1, 4, 0, 3, 1, 0),
(2053, 'Barnoche', 35, 19, 14, 21, 31, 0, 4, 70, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21673193, 0, 75, 69, 361040, 0, 0, 1, -1, -1, 1, 1, 45, 2, 0, 10, 0, 0, 0),
(2056, 'Kalesh', 49, 15, 27, 32, 0, 0, 2, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 102, 48, 377575, 0, 0, 1, -1, -1, 1, 0, 3, 0, 4, 4, 0, 0, 6),
(2058, 'Kristan', 78, 97, 28, 68, 35, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21662569, 0, 85, 56, 984331, 0, 0, 0, -1, -1, 1, 0, 24, 0, 0, 17, 0, 0, 0),
(2067, 'Ashinseika', 2, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21664806, 0, 42, 7, 98455, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(2071, 'Teperek', 42, 13, 2, 83, 4, 0, 0, 60, 30, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21666950, 0, 48, 35, 182963, 0, 0, 1, -1, -1, 1, 0, 4, 0, 0, 0, 0, 0, 8),
(2072, 'Richard Oraph', 2, 0, 10, 3, 0, 4, 0, 40, 50, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21667121, 0, 49, 58, 483109, 0, 0, 0, 70, 70, 0, 0, 1, 0, 0, 0, 11, 0, 0),
(2073, 'Artane', 29, 32, 30, 1, 0, 17, 2, 100, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21689430, 0, 19, 29, 755466, 0, 0, 0, -1, -1, 1, 1, 46, 1, 1, 5, 0, 0, 0),
(2074, 'Tureloitu', 5, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21668525, 0, 46, 47, 238618, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 5, 0, 0, 0),
(2103, 'Grog', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21671746, 0, 31, 34, 99274, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2112, 'Defraglaroche', 71, 105, 132, 74, 21, 23, 0, 70, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21692779, 0, 150, 61, 661570, 0, 0, 0, 20, 30, 0, 0, 34, 26, 0, 0, 0, 0, 0),
(2126, 'Trolur', 143, 49, 41, 0, 34, 31, 0, 90, 80, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21703312, 0, 163, 22, 199125, 0, 0, 1, 20, 30, 0, 0, 4, 1, 0, 22, 0, 0, 0),
(2134, 'Iorfel', 4, 2, 0, 0, 4, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21696056, 0, 11, 13, 277988, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 7),
(2137, 'Prolor', 29, 38, 45, 6, 14, 0, 0, 60, 60, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21684230, 0, 148, 43, 240176, 0, 0, 0, 10, 60, 0, 0, 22, 14, 0, 0, 0, 0, 0),
(2143, 'Krijeks', 42, 60, 2, 12, 15, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 63, 44, 371179, 0, 0, 0, -1, -1, 1, 1, 5, 0, 10, 0, 0, 0, 0),
(2154, 'Seloma', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21712911, 0, 25, 9, 211279, 0, 0, 0, 100, 100, 1, 1, 0, 1, 0, 2, 2, 0, 0),
(2161, 'Zimbra', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 7, 16, 76176, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(2171, 'Shemmoran', 2, 0, 30, 0, 0, 4, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21708415, 0, 48, 25, 385573, 0, 0, 0, -1, -1, 1, 1, 0, 0, 5, 2, 0, 0, 0),
(2175, 'Dyospiros', -10, 19, 5, -3, 54, 23, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21682710, 0, 73, 19, 370755, 0, 0, 0, -1, -1, 1, 1, 3, 0, 1, 0, 7, 3, 0),
(2176, 'Na&euml;lys', 128, 34, 30, 12, 36, 0, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21686140, 0, 79, 12, 216759, 0, 0, 0, -1, -1, 1, 1, 2, 13, 0, 0, 0, 0, 0),
(2177, 'Melagius', 5, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21685638, 0, 23, 11, 251340, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 5, 0, 0),
(2182, 'Rotgh&auml;r', 29, 4, 0, -6, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 45, 21, 413879, 0, 0, 1, -1, -1, 1, 1, 4, 7, 0, 0, 1, 0, 0),
(2188, 'Lycane', 59, 16, 28, 0, 9, 0, 1, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21687494, 0, 83, 26, 201047, 0, 0, 0, 20, 20, 1, 0, 6, 0, 0, 11, 0, 3, 0),
(2190, 'Zaramoth', 23, 19, 0, 12, 0, 0, 0, 100, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21687523, 0, 45, 31, 352735, 0, 0, 1, 70, 150, 0, 0, 2, 1, 0, 0, 0, 0, 6),
(2192, 'Naloune', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21695955, 0, 0, 0, 21441, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2212, 'Styliann', 3, 18, 0, 0, 10, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21703316, 0, 83, 28, 543122, 0, 0, 1, -1, -1, 1, 1, 1, 8, 1, 0, 2, 0, 0);INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2225, 'Mortzacus', 40, 27, 0, 0, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21693076, 0, 31, 3, 83210, 0, 0, 0, -1, -1, 1, 1, 0, 6, 0, 0, 0, 0, 0),
(2228, 'Kromlech', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21711758, 0, 20, 7, 104521, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2229, 'Bidou', 17, 14, 16, 13, 0, 0, 3, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 52, 16, 395652, 0, 0, 0, -1, -1, 1, 1, 3, 0, 6, 0, 0, 0, 0),
(2230, 'Aysa', 3, 8, 0, 0, 6, 0, 0, 100, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 73, 26, 217922, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 4, 0, 0, 0),
(2231, 'Ezhul`s', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2232, 'Wellan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2233, 'L&eacute;o', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2234, 'Barney', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2235, 'Woshhi', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21704849, 0, 6, 22, 63464, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 1),
(2236, 'Kiharo', 17, 0, 0, 3, 0, 14, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21699087, 0, 51, 19, 442636, 0, 0, 0, -1, -1, 1, 1, 8, 3, 2, 0, 0, 0, 1),
(2237, 'Wisclicenus', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21706292, 0, 65, 38, 489688, 0, 0, 0, -1, -1, 1, 1, 1, 1, 2, 2, 1, 0, 0),
(2240, 'Bakj', 3, 0, 0, 0, 0, 0, 0, 30, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21701851, 0, 0, 0, 31103, 0, 0, 0, 80, 80, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2241, 'Lillie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2242, 'Heragons', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2243, 'Tara', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2244, 'Zola', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2245, 'Alex', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2246, 'Questorat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2247, 'Lomax', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2249, 'Syel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2250, 'Maxlo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2251, 'Azarath', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 18, 18, 53818, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 3, 0, 0),
(2252, 'Magebar', 3, 36, 0, 3, 6, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 57, 10, 353611, 0, 0, 1, -1, -1, 1, 1, 2, 0, 2, 5, 0, 0, 0),
(2254, 'Sildhur', 45, 22, 30, 50, 0, 14, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21698942, 0, 20, 7, 150152, 0, 0, 0, 20, 20, 0, 1, 1, 9, 0, 0, 0, 0, 0),
(2255, 'Karibuo', 3, 10, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21715901, 0, 52, 23, 363221, 0, 0, 1, -1, -1, 1, 1, 0, 6, 0, 0, 0, 0, 0),
(2256, 'Yzerta', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2257, 'Daxgox', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2258, 'Tonimiguel', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21713863, 0, 1, 19, 15415, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 1, 0, 0),
(2259, 'Lobless', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21701799, 0, 13, 14, 146013, 0, 0, 0, -1, -1, 1, 1, 0, 4, 2, 0, 2, 2, 0),
(2260, 'Bebel', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21699220, 0, 4, 23, 26724, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2262, 'Atman', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2264, 'Arum', 16, 10, 0, 0, 30, 14, 0, 10, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 16, 1, 75988, 0, 0, 0, 10, 10, 1, 1, 1, 0, 0, 1, 1, 2, 0),
(2265, 'Bleu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2266, 'Alexendre', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2267, 'Skaad', 2, 42, 0, 1, 0, 0, 2, 70, 70, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21701294, 0, 65, 12, 342414, 0, 0, 0, -1, -1, 1, 1, 6, 1, 2, 1, 0, 2, 0),
(2268, 'Bahumuth', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 47, 13, 255145, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 5, 0, 0, 0),
(2269, 'Fosth', 2, 0, 2, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21722633, 0, 57, 13, 341232, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 4, 0, 0, 0),
(2270, 'Juleinacl', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2271, 'Scotthy', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 10813, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2272, 'Macsijm', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2273, 'Buleite', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2280, 'Arongrim', 7, 6, 0, 0, 6, 0, 0, 100, 50, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21709892, 0, 60, 10, 284871, 0, 0, 0, 40, 40, 1, 1, 1, 2, 0, 5, 0, 0, 0),
(2282, 'Thaor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2283, 'Enering', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 8, 35476, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(2286, 'Diablotta', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2287, 'Elfi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2288, 'Elrendir', 1, 0, 0, 0, 0, 2, 0, 70, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21712803, 0, 32, 18, 189423, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 4, 0, 0),
(2289, 'Kyky', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2290, 'Nashira', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2292, 'Achiliss', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2293, 'Cocoz', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2294, 'Pelli', 32, 16, 0, 0, 15, 0, 0, 80, 80, 1, 'République', 'Thassopole', '', 'Aucune', 21717767, 0, 30, 23, 397598, 0, 0, 1, -1, -1, 1, 1, 3, 1, 1, 1, 4, 1, 1),
(2295, 'Andie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2296, 'Louna', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2308, 'Xavius', 34, 12, 5, 0, 13, 16, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21709097, 0, 68, 10, 256253, 0, 0, 0, -1, -1, 1, 0, 0, 6, 0, 2, 0, 0, 0),
(2309, 'Baalack ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 4, 5, 32445, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2311, 'Evasgelun', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 17507, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2312, 'Savage', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2313, 'Tittellion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2314, 'Saylith', 3, 6, 0, 0, 6, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21734064, 0, 13, 1, 160414, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 0, 2, 2, 1),
(2315, 'Sillegue', 3, 12, 0, 12, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21712079, 0, 22, 4, 255806, 0, 0, 1, -1, -1, 1, 1, 3, 4, 0, 0, 0, 1, 0),
(2316, 'Akenon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2317, 'Snakle', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2318, 'Purpurim La Fouine', 22, 6, 4, 12, 0, 0, 0, 40, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21711871, 0, 69, 7, 169116, 0, 0, 0, 10, 30, 0, 1, 1, 0, 0, 8, 0, 0, 0),
(2319, 'Arashur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2320, 'Serra', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2321, 'Ligalus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 20595, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2322, 'Argarock', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2323, 'Captiva', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2324, 'Sophrate', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2325, 'MxU', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2326, 'Khorn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2327, 'Alcap', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2328, 'Bossdevaud', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2331, 'Kzerk', 3, 0, 0, 3, 0, 0, 0, 50, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 54, 14, 299066, 0, 0, 1, -1, -1, 1, 1, 0, 0, 1, 0, 3, 2, 1),
(2333, 'Jessym', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21721742, 0, 10, 12, 62728, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2335, 'Kailern', 2, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21715872, 0, 6, 17, 82998, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 3, 0, 0, 0),
(2336, 'Morzak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23618, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2337, 'Maria', 19, 10, 0, 0, 0, 44, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 43, 0, 180358, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 2, 2, 0, 0),
(2338, 'Nanthilde', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2339, 'Tchinga', 18, 4, 4, 65, 0, 16, 0, 80, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21717359, 0, 33, 6, 301705, 0, 0, 0, -1, -1, 0, 0, 1, 0, 0, 0, 0, 0, 7),
(2340, 'Datstoke', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2341, 'Zakaria', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2342, 'Jesper', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2343, 'Taurn', 33, 18, 0, 0, 6, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21717880, 0, 46, 11, 132225, 0, 0, 1, -1, -1, 1, 0, 6, 0, 0, 9, 0, 0, 0),
(2344, 'Usarnem', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2345, 'Mifour', 1, 10, 2, 0, 0, 2, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21730439, 0, 24, 4, 256816, 0, 0, 0, -1, -1, 1, 1, 0, 2, 2, 0, 1, 0, 0),
(2347, 'Khaim', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2348, 'Stylestar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2349, 'OverOo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2350, 'Bobth', 20, 7, -10, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 10, 3, 99475, 0, 0, 0, -1, -1, 1, 1, 2, 2, 0, 0, 1, 1, 0),
(2351, 'Azzarius ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2352, 'Brasgali', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2353, 'Stirkaller', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23577, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2354, 'Lolan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2356, 'Thorgrim', 0, 0, 30, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21720385, 0, 6, 7, 53363, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 4, 0, 0, 0),
(2357, 'Sedusant', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2358, 'Morzik', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2359, 'Asurya', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2360, 'Cristael', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2361, 'Orhan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2362, 'Safer', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21725861, 0, 13, 2, 116681, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 4, 0, 0, 0);INSERT INTO `11may_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2363, 'Macsime ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2364, 'Artcher', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2365, 'Analis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2366, 'Laao', 2, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21726599, 0, 32, 0, 105503, 0, 0, 0, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(2367, 'Cathie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2368, 'Perry', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2369, 'Buko', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21726013, 0, 0, 0, 22923, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(2370, 'Tuditak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2371, 'Siez', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2372, 'Lelogasteban', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2373, 'Socatoa', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2374, 'Actartus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2375, 'Metolugeth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2376, 'Mareik', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23538, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(2377, 'Elferth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2378, 'Physsiallis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 9, 0, 65502, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(2381, 'Netenmeth', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21730677, 0, 19, 3, 85471, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 0, 0, 0, 1),
(2382, 'BouboulX', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2383, 'Kylars', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2384, 'Enylak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2385, 'Viviano', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 15, 2, 49431, 0, 0, 0, 150, 150, 1, 1, 0, 1, 1, 0, 0, 0, 0),
(2386, 'Jeminy', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 22413, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2387, 'Scofid', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2388, 'Legovan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2389, 'Antikor', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23577, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(2391, 'Elarinya', 0, 0, 0, 0, 0, 0, 0, 70, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21734962, 0, 0, 0, 30527, 0, 0, 0, 40, 90, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(2392, 'Naryutogd', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2393, 'Sartrox', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2394, 'Spocke', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2395, 'Karedoca', 38, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 16, 2, 53041, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 2, 0, 0, 0),
(2397, 'Anthonytouti', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2398, 'Saltoes ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2399, 'Nys&eacute;rine', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21731604, 0, 5, 0, 60523, 0, 0, 0, 40, 50, 0, 0, 0, 0, 0, 2, 0, 1, 0),
(2400, 'D&eacute;ductance', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23013, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(2401, 'Toroc', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21734317, 0, 3, 1, 50966, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0);



CREATE TABLE `11may_joueurs_heros_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2402 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2402 ;

INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(10, 'Maher', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'd`Espeance', 165694, 0),
(11, 'Titlan', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Trimeandre', 122942, 0),
(12, 'Vigrid', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Dies Irae', 252742, 0),
(29, 'Lissana', 'Fée', 'Magicien', 'Magie', 'Intendante', 'd`Esperita', 161089, 0),
(33, 'Demetron', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de la Lande Sanglante', 77431, 0),
(35, 'Meissner', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'd`Ensisheim', 213909, 0),
(42, 'Ora&iuml;a', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Minoria', 153650, 0),
(45, 'Zhia', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Krucland', 65450, 0),
(58, 'Egleria', 'Célestial', 'Prêtre', 'Mensonge', 'Maîtresse', 'de Cr&eacute;puscule', 188972, 0),
(68, 'Kiminou', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'des Terres F&eacute;lines', 363256, 0),
(71, 'T&ecirc;te-Plate', 'Homme', 'Inquisiteur', 'Compassion', 'Seigneur', 'des Temples de Gr&egrave;s', 436250, 0),
(86, 'Lothadith', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Pardorwen', 128059, 0),
(88, 'Shaugan', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Maltebes', 174846, 0),
(89, 'Argazel', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de Lezagra', 153921, 0),
(92, 'Turfel', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Ligorun', 8803558, 0),
(93, 'Danahyl', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Lithrandil', 292394, 0),
(98, 'Nelvin', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Fellindel', 142661, 0),
(116, 'Ge&iuml;nfrindel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Hadarac', 245926, 0),
(119, 'Barbouza', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Wyveand', 311174, 0),
(120, 'Aub&eacute;rion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Danu', 201889, 0),
(125, 'Lhito', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Tarbias', 384288, 0),
(131, 'Dalan', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Rabistiane', 466596, 0),
(132, 'Malorus', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de la Lune Etincellante', 3381068, 0),
(133, 'Erios', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Findeli&euml;', 162547, 0),
(136, 'Lirth Evendil', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Planefide', 143194, 0),
(140, 'Ananta', 'Homme', 'Psioniste', 'Magie', 'Seigneur', 'de Mahou', 101314, 0),
(143, 'Rinoacamui', 'Homme', 'Chevalier', 'Guerre', 'Dame', 'de Zantetsuken', 104437, 0),
(144, 'Irkos', 'Orque', 'Barbare', 'Force', 'Chef', 'de Kalferas', 281544, 0),
(145, 'Phyleas', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Dalarian', 528842, 0),
(150, 'Kahzerya', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Draonster', 142090, 0),
(161, 'Marr', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Marzia', 124806, 0),
(162, 'Xelios', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'd`Alamovit', 95810, 0),
(167, 'Klaasninas', 'Homme', 'Inquisiteur', 'Loi', 'Dame', 'de L&eacute;pinar', 197975, 0),
(168, 'Altharam', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'd`Alycastre', 143758, 0),
(173, 'Hulricht', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Solesmes', 237429, 0),
(181, 'Fourbinas', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Baarbute', 177317, 0),
(183, 'Axeolu', 'Géant', 'Shaman', 'Guerre', 'Dame', 'des Terres de Fang', 253360, 0),
(187, 'Boubi', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Manoulie', 88354, 0),
(192, 'Orium', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'd`Argentium', 165447, 0),
(197, 'Leslie', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Kabalastia', 144427, 0),
(199, 'Benihime', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'd`Urhandhile', 142649, 0),
(204, 'Ovelia', 'Nain', 'Guerrier', 'Guerre', 'Reine', 'de Myrrhyn', 126357, 0),
(217, 'Tylert', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Bazanne', 232098, 0),
(218, 'Alumdil', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Morte-Vie', 84610, 0),
(225, 'Ther`glat', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Brogoth', 254614, 0),
(231, 'Galigonidd', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'd`Infernel', 204046, 0),
(232, 'Matkias', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'du Pays du Malisse', 138226, 0),
(234, 'Poupou', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'du Volcan de Talc', 142263, 0),
(235, 'Dartoil', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Rotergan', 74870, 0),
(236, 'Tefeiri', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Schiv', 142002, 0),
(239, 'Luna', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Matriarche', 'de Lunita', 257457, 0);INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(241, 'Nadras', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Phoenixia', 84486, 0),
(242, 'Thelv', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'de Lendhyl', 115597, 0),
(256, 'Husam', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'd`Eleeore', 232044, 0),
(258, 'Febus', 'Orque', 'Shaman', 'Force', 'Chef', 'de Febusi', 113584, 0),
(267, 'Dacapo', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'de Stacato', 87496, 0),
(270, 'Desmondis', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Tatouinis', 271006, 0),
(278, 'Zahel', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'des Hautes C&icirc;mes', 144080, 0),
(280, 'Rufbumpa', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Wamawala', 173975, 0),
(282, 'Kalista', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de l`Azur&eacute;e', 125789, 0),
(283, 'Gelthasar Belt', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'd`Elderae', 105478, 0),
(284, 'Tulkas', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'd`Illya-Verte', 520162, 0),
(297, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 231364, 0),
(300, 'Shadark', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'de Doriane', 164027, 0),
(302, 'L&eacute;otar', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'd`Agnez', 97844, 0),
(303, 'Gauerd&ocirc;me', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'de Dam&ocirc;le', 156023, 0),
(314, 'Eleanora', 'Elfe Noir', 'Démonologiste', 'Mort', 'Matriarche', 'de Phenelis', 92852, 0),
(321, 'Vannams', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Belundra', 148833, 0),
(345, 'Torme Morselame', 'Nain', 'Guerrier', 'Force', 'Roi', 'de Karank Azak', 90641, 0),
(349, 'Elanor', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'd`Elenyalis', 267860, 0),
(385, 'Aratos', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ast&eacute;rismes ', 364171, 0),
(386, 'Yelderick', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Fantaisianis', 226660, 0),
(408, 'Leorod', 'Elfe', 'Guerrier', 'Honneur', 'Conseiller', 'de Belorod', 154655, 0),
(410, 'Birgenn', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'du Steaksorc', 97945, 0),
(413, 'Tetrahyd', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Tijua', 269729, 0),
(423, 'Abert', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Tristemine', 101733, 0),
(427, 'Koali', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Vallombre', 257232, 0),
(439, 'Willi', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Bellemont', 144127, 0),
(463, 'Arnaud', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Grivalion', 90692, 0),
(465, 'Dachinos', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Klobos', 55719, 0),
(481, 'Arcelane', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Csur', 153939, 0),
(491, 'Ankharon', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Kouroum', 120617, 0),
(555, 'Kaerrawen', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'de Fern', 124989, 0),
(566, 'Bamdinas', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'd`Anstaing', 194449, 0),
(637, 'Mathaos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Terres du Nores', 158063, 0),
(640, 'Mattai', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Dixion', 200131, 0),
(672, 'Jeffrey', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de G&eacute;olois', 186899, 0),
(787, 'Dranthen', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'd`Abission', 211525, 0),
(815, 'Mollestho', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Cardie', 164918, 0),
(848, 'Arkatros', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Melfir', 223071, 0),
(868, 'Arimane', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'd`Yami', 249569, 0),
(870, 'Xandre', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Mesmont', 141955, 0),
(879, 'Vezk', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'des Terres Maudites', 86069, 0),
(911, 'Enephia', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'd`Isildira', 255859, 0),
(922, 'Malia', 'Fée', 'Enchanteur', 'Pensée', 'Intendante', 'de F&eacute;&eacute;rie', 172034, 0),
(930, 'Zaseo', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Alabasta', 119942, 0),
(989, 'Salfalar', 'Célestial', 'Inquisiteur', 'Compassion', 'Maître', 'de Purios', 277935, 0),
(1010, 'Herel', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Mella', 128651, 0),
(1016, 'Eleana', 'Vampire', 'Nécromancien', 'Mort', 'Comtesse', 'de Terrabannias', 94753, 0),
(1057, 'X&eacute;nox', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Kaid', 310325, 0),
(1067, 'Daneel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Ardon', 304884, 0),
(1115, 'Galaway', 'Homme', 'Archer', 'Chance', 'Seigneur', 'd`Igounem', 44163, 0);INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1122, 'Del&eacute;nia', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Tuatha', 168755, 0),
(1141, 'Renard', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de F&eacute;lonie', 97873, 0),
(1156, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'd`Oriz-Garsie', 185113, 0),
(1287, 'Nragax', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Brul&eacute;', 132801, 0),
(1301, 'Dexert', 'Célestial', 'Prêtre', 'Honneur', 'Maîtresse', 'de la For&ecirc;t Mill&eacute;naire', 149614, 0),
(1403, 'Soreclis', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Lala', 158299, 0),
(1409, 'Esteban', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de la Falaise', 125641, 0),
(1411, 'Karyon', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'd`Amakiir', 257351, 0),
(1412, 'Fouchier', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'des Granches', 159101, 0),
(1414, 'Criton', 'Minotaure', 'Guerrier', 'Loi', 'Seigneur', 'de Bosphore', 175838, 0),
(1418, 'Basl', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'd`Oxymandre', 10903219, 0),
(1458, 'Yodine', 'Célestial', 'Enchanteur', 'Magie', 'Maîtresse', 'de Hovaoine', 222431, 0),
(1460, 'Alec', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de la Ville C&eacute;leste', 164868, 0),
(1469, 'Elm', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Argonton', 663001, 0),
(1470, 'Celithrand', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Krenaste', 179686, 0),
(1475, 'Batterusero', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Silenill', 127924, 0),
(1492, 'Osterate', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de M&eacute;lios', 124530, 0),
(1512, 'Keldaran', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'd`Emergence', 84701, 0),
(1519, 'Tirandilis', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Landes Sedus', 507272, 0),
(1522, 'Durshak le Borgne', 'Sahuagin', 'Barbare', 'Guerre', 'Baron', 'de la Tribu Zogdob', 107263, 0),
(1528, 'Saya', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Aglatien', 43169, 0),
(1539, 'Kaiiros', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Aradie', 260760, 0),
(1549, 'Caym', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Cala Taur', 709078, 0),
(1550, 'N&auml;ta&euml;l', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Abysse', 111225, 0),
(1562, 'Lyraprime', 'Célestial', 'Paladin', 'Loi', 'Maîtresse', 'D`Amreb', 129062, 0),
(1583, 'Rhal', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Dakra&iuml;', 92706, 0),
(1611, 'Arthurik', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Milar', 129128, 0),
(1627, 'Silayerr', 'Elfe', 'Barde', 'Chance', 'Conseillère', 'de Nihruth', 168951, 0),
(1653, 'Damian', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'D`Orobas', 90730, 0),
(1667, 'Vylnius', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Salazariusargonath', 227415, 0),
(1670, 'Bolackot', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Lesiam&eacute;s', 160711, 0),
(1682, 'L&eacute;&ouml;raz', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Raze-Campagne', 220265, 0),
(1685, 'Beltha&iuml;s', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Aninma', 36944, 0),
(1700, 'Gaeldrech', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Underbaran', 128636, 0),
(1725, 'Galmin', 'Orque', 'Shaman', 'Guerre', 'Chef', 'de Pratoras', 534071, 0),
(1747, 'Hordrin', 'Célestial', 'Prêtre', 'Loi', 'Maître', 'de Braeron', 280252, 0),
(1748, 'Baduit', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'd`Hitlum', 210396, 0),
(1755, 'Le Dougec', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Moussijllon ', 149295, 0),
(1773, 'Pyrazine', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Pyralie', 209862, 0),
(1784, 'Lineus', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Darkania', 143762, 0),
(1795, 'Bornami', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Nevjuice', 206276, 0),
(1804, 'Elorfindelle', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Kalastria', 44774, 0),
(1809, 'Kal', 'Sahuagin', 'Prêtre', 'Pensée', 'Baron', 'de De la Cryptheilm', 269315, 0),
(1816, 'Han Main-Tranchante', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Buchenithar', 140208, 0),
(1824, 'Aedorn', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'D`Iorelrahc', 190060, 0),
(1827, 'Khiran', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Ze&iuml;danys', 175387, 0),
(1835, 'Krystophoros', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'd`Obedia', 114474, 0),
(1838, 'Anwaman&euml;l', 'Elfe', 'Guerrier', 'Guerre', 'Conseillère', 'des Terres de Lumi&egrave;res', 132036, 0),
(1842, 'Cometa', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Krait', 53273, 0),
(1851, 'Reyns', 'Homme', 'Barde', 'Chance', 'Seigneur', 'de D&eacute;sert Des Pluies', 145892, 0),
(1853, 'Ar&eacute;gonde', 'Homme', 'Psioniste', 'Pensée', 'Dame', 'de Sardhesse', 84864, 0);INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1866, 'Agro', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Oresmaux', 191942, 0),
(1867, 'Maxliger', 'Fée', 'Enchanteur', 'Magie', 'Intendant', 'de Pics Celestes', 129413, 0),
(1874, 'Alardius', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Astaroth', 6774, 0),
(1883, 'Khane', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de l\'arbre sylvestre', 69638, 0),
(1914, 'Metyorah', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Soseai', 95269, 0),
(1922, 'Thaelion', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Shelazan', 108479, 0),
(1927, 'Koulibab', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Kreruus', 87915, 0),
(1937, 'Ekelgeister', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Lio', 139749, 0),
(1945, 'Miroslaw', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Thimeona', 175517, 0),
(1953, 'Erchael', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Tarshen', 93022, 0),
(1959, 'Llumeolf', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Versanie', 103767, 0),
(1962, 'Noddin', 'Nain', 'Prêtre', 'Chance', 'Roi', 'de Squiercort', 61796, 0),
(1991, 'Aorphen', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hakkyra', 104811, 0),
(1994, 'Aridius', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'D`Arid', 80941, 0),
(1995, 'Trano', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'd`Uthyar', 180808, 0),
(1996, 'Anithralith', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Nar Arog', 117459, 0),
(2001, 'Murzolk ', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Sebaste', 87228, 0),
(2007, 'Luinelinde', 'Sahuagin', 'Prêtre', 'Chance', 'Baron', 'D`Atleas', 137651, 0),
(2017, 'Nargorath', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Kalend&ouml;rth', 150047, 0),
(2021, 'Borfang', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Royaume Sacr&eacute;e', 127454, 0),
(2026, 'Drekal', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Krugor', 192994, 0),
(2028, 'L&eacute;nnih', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Drizaste', 150164, 0),
(2030, 'Archanos', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'de Carialos', 170781, 0),
(2043, 'Latifa', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Wido', 92076, 0),
(2047, 'Aldere', 'Nain', 'Guerrier', 'Honneur', 'Roi', 'D`Hijsterian', 183970, 0),
(2048, 'Haelyn', 'Célestial', 'Prêtre', 'Honneur', 'Maître', 'D`Allansia', 205140, 0),
(2053, 'Barnoche', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de PauvreTerre', 175606, 0),
(2056, 'Kalesh', 'Ancien', 'Guerrier', 'Force', 'Vénérable', 'de Tortreth', 140139, 0),
(2058, 'Kristan', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Morneval', 286938, 0),
(2067, 'Ashinseika', 'Infernal', 'Assassin', 'Ténèbres', 'Despote', 'd`Adjuessi', 99156, 0),
(2071, 'Teperek', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'D`Avoine', 58435, 0),
(2072, 'Richard Oraph', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'de l`Empire D`Huurn', 162785, 0),
(2073, 'Artane', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'D`Ador&eacute;a', 151595, 0),
(2074, 'Tureloitu', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Leagenuds', 167605, 0),
(2103, 'Grog', 'Orque', 'Guerrier', 'Force', 'Chef', 'D`H&eacute;vanaziss', 49404, 0),
(2112, 'Defraglaroche', 'Homme', 'Nécromancien', 'Mort', 'Seigneur', 'de Kronn', 403348, 0),
(2126, 'Trolur', 'Orque', 'Barbare', 'Guerre', 'Chef', 'd`Oxonium', 254150, 0),
(2134, 'Iorfel', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Lokeria', 93760, 0),
(2137, 'Prolor', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Demacia', 84124, 0),
(2143, 'Krijeks', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Terres Dures', 163396, 0),
(2154, 'Seloma', 'Célestial', 'Prêtre', 'Force', 'Maîtresse', 'de Fenris', 71074, 0),
(2161, 'Zimbra', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Lakeryon', 17621, 0),
(2171, 'Shemmoran', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Moga', 93820, 0),
(2175, 'Dyospiros', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'd`Hauts Cieux', 98027, 0),
(2176, 'Na&euml;lys', 'Sahuagin', 'Barbare', 'Force', 'Baronne', 'd`Asmodia', 162603, 0),
(2177, 'Melagius', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Midghard', 64380, 0),
(2182, 'Rotgh&auml;r', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de les Terres de Glaces', 122728, 0),
(2188, 'Lycane', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Luperque', 114833, 0),
(2190, 'Zaramoth', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Valdis', 94953, 0),
(2192, 'Naloune', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Nalounled', 3139, 0),
(2212, 'Styliann', 'Elfe', 'Prêtre', 'Honneur', 'Conseiller', 'de Xerxes', 217735, 0);INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2225, 'Mortzacus', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de Mortfort', 34074, 0),
(2228, 'Kromlech', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Xyara', 24895, 0),
(2229, 'Bidou', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Langevin', 169982, 0),
(2230, 'Aysa', 'Géant', 'Barbare', 'Guerre', 'Dame', 'D`Aldenia', 130331, 0),
(2231, 'Ezhul`s', 'Vampire', 'Démonologiste', 'Ténèbres', 'Comte', 'de Zulys', 0, 0),
(2232, 'Wellan', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'D`Opale', 0, 0),
(2233, 'L&eacute;o', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'D`Escorc', 0, 0),
(2234, 'Barney', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Myrmalond', 0, 0),
(2235, 'Woshhi', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Sramyr', 17068, 0),
(2236, 'Kiharo', 'Homme', 'Nécromancien', 'Ténèbres', 'Seigneur', 'de Kihara', 126147, 0),
(2237, 'Wisclicenus', 'Géant', 'Shaman', 'Force', 'Dame', 'de Blondin', 200137, 0),
(2240, 'Bakj', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de L`akatsuki', 3945, 0),
(2241, 'Lillie', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Stend&eacute;', 0, 0),
(2242, 'Heragons', 'Elfe', 'Archer', 'Chance', 'Conseillère', 'de Termytir', 0, 0),
(2243, 'Tara', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'D`AutreMonde', 0, 0),
(2244, 'Zola', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Soleilla', 0, 0),
(2245, 'Alex', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'D`Escroux', 0, 0),
(2246, 'Questorat', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de Parana', 3134, 0),
(2247, 'Lomax', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de le Mac', 0, 0),
(2249, 'Syel', 'Orque', 'Shaman', 'Force', 'Chef', 'de Phantom-soal', 0, 0),
(2250, 'Maxlo', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Faldor', 0, 0),
(2251, 'Azarath', 'Vampire', 'Enchanteur', 'Chaos', 'Comte', 'de Jal`karu', 86707, 0),
(2252, 'Magebar', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Vali&eacute;d&eacute;ria', 120169, 0),
(2254, 'Sildhur', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'de Landourn', 56069, 0),
(2255, 'Karibuo', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Karante', 97657, 0),
(2256, 'Yzerta', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Poiuy', 0, 0),
(2257, 'Daxgox', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Berta&egrave;yn', 0, 0),
(2258, 'Tonimiguel', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Sarisp', 10258, 0),
(2259, 'Lobless', 'Homme', 'Assassin', 'Ténèbres', 'Seigneur', 'de Telomarsuss', 280624, 0),
(2260, 'Bebel', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Seyhelle', 5211, 0),
(2262, 'Atman', 'Ancien', 'Assassin', 'Mort', 'Vénérable', 'de Ozlfui', 0, 0),
(2264, 'Arum', 'Fée', 'Druide', 'Nature', 'Intendante', 'de Clos Sauvage', 98003, 0),
(2265, 'Bleu', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Royal-act', 0, 0),
(2266, 'Alexendre', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Maxicuys', 0, 0),
(2267, 'Skaad', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Dalijran', 138200, 0),
(2268, 'Bahumuth', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Cebastes', 128090, 0),
(2269, 'Fosth', 'Elfe Noir', 'Assassin', 'Mort', 'Matriarche', 'de Zitomira', 113498, 0),
(2270, 'Juleinacl', 'Minotaure', 'Guerrier', 'Légendes', 'Seigneur', 'de Juukin', 0, 0),
(2271, 'Scotthy', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Vauvert', 3450, 0),
(2272, 'Macsijm', 'Fée', 'Magicien', 'Magie', 'Intendant', 'D`Hacketh', 0, 0),
(2273, 'Buleite', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Marijein', 0, 0),
(2280, 'Arongrim', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'D`Asagard', 132116, 0),
(2282, 'Thaor', 'Célestial', 'Paladin', 'Loi', 'Maître', 'de Paradis de la Force', 0, 0),
(2283, 'Enering', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'D`Erodia', 6993, 0),
(2286, 'Diablotta', 'Elfe Noir', 'Guerrier', 'Force', 'Matriarche', 'de Teriffior', 0, 0),
(2287, 'Elfi', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Dragontopia', 0, 0),
(2288, 'Elrendir', 'Vampire', 'Enchanteur', 'Chaos', 'Comte', 'D`Aferan', 66404, 0),
(2289, 'Kyky', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Nuagend', 0, 0),
(2290, 'Nashira', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Matriarche', 'de T&eacute;n&egrave;bra', 0, 0),
(2292, 'Achiliss', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Royau', 0, 0),
(2293, 'Cocoz', 'Elfe', 'Guerrier', 'Force', 'Conseillère', 'de Orwick', 0, 0);INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2294, 'Pelli', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Talmondais', 136023, 0),
(2295, 'Andie', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'D`Aperse', 0, 0),
(2296, 'Louna', 'Homme', 'Archer', 'Chance', 'Dame', 'de Liliane', 0, 0),
(2308, 'Xavius', 'Sahuagin', 'Prêtre', 'Chance', 'Baron', 'D`Helheim', 94589, 0),
(2309, 'Baalack ', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Passat', 5649, 0),
(2311, 'Evasgelun', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Dystopia', 3418, 0),
(2312, 'Savage', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Dragold', 0, 0),
(2313, 'Tittellion', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Psytirid&eacute;', 0, 0),
(2314, 'Saylith', 'Sahuagin', 'Prêtre', 'Compassion', 'Baronne', 'de Ghostamthil', 183296, 0),
(2315, 'Sillegue', 'Homme', 'Guerrier', 'Force', 'Seigneur', 'D`Artidis', 84678, 0),
(2316, 'Akenon', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de L`oublit', 0, 0),
(2317, 'Snakle', 'Vampire', 'Sorcier', 'Pensée', 'Comte', 'de Soul Alibur', 0, 0),
(2318, 'Purpurim La Fouine', 'Homme', 'Voleur', 'Chance', 'Seigneur', 'de les Mers Avides', 94968, 0),
(2319, 'Arashur', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Mistroumatome', 0, 0),
(2320, 'Serra', 'Vampire', 'Assassin', 'Mensonge', 'Comtesse', 'de Du Tertre', 0, 0),
(2321, 'Ligalus', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'D`Hylie', 3134, 0),
(2322, 'Argarock', 'Infernal', 'Démonologiste', 'Maladie', 'Despote', 'D`Arckanium', 0, 0),
(2323, 'Captiva', 'Nain', 'Marchand', 'Chemins', 'Roi', 'de Stendhel', 0, 0),
(2324, 'Sophrate', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'D`Ark', 0, 0),
(2325, 'MxU', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de MxU-WORLD', 0, 0),
(2326, 'Khorn', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'D`Innytias', 0, 0),
(2327, 'Alcap', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Dream', 0, 0),
(2328, 'Bossdevaud', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de Marsna', 0, 0),
(2331, 'Kzerk', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Sombrebois', 135691, 0),
(2333, 'Jessym', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Goldork', 13698, 0),
(2335, 'Kailern', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Nideuk', 20439, 0),
(2336, 'Morzak', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Makkathran', 3147, 0),
(2337, 'Maria', 'Vampire', 'Sorcier', 'Pensée', 'Comtesse', 'de Tour de Gorde', 130847, 0),
(2338, 'Nanthilde', 'Célestial', 'Enchanteur', 'Pensée', 'Maîtresse', 'de Stra&euml;l', 0, 0),
(2339, 'Tchinga', 'Elfe', 'Voleur', 'Chance', 'Conseiller', 'de Tchingtchouk', 97592, 0),
(2340, 'Datstoke', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Mine de Laria', 0, 0),
(2341, 'Zakaria', 'Homme', 'Chevalier', 'Loi', 'Seigneur', 'de Spirot', 3134, 0),
(2342, 'Jesper', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Arteis', 0, 0),
(2343, 'Taurn', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Tamargue', 119569, 0),
(2344, 'Usarnem', 'Elfe Noir', 'Démonologiste', 'Mort', 'Patriarche', 'de la Vie Ou la Mort', 0, 0),
(2345, 'Mifour', 'Orque', 'Shaman', 'Guerre', 'Chef', 'D`O`rtac', 120703, 0),
(2347, 'Khaim', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Casmeellothern', 0, 0),
(2348, 'Stylestar', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'de Myst&eacute;rian', 0, 0),
(2349, 'OverOo', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Sprieengfield', 0, 0),
(2350, 'Bobth', 'Gnome', 'Marchand', 'Chemins', 'Gouverneur', 'de Mouchern', 76099, 0),
(2351, 'Azzarius ', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Itaque', 0, 0),
(2352, 'Brasgali', 'Ancien', 'Assassin', 'Mort', 'Vénérable', 'de Royaume du Feu de la Terre', 0, 0),
(2353, 'Stirkaller', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Shadow Empire', 3160, 0),
(2354, 'Lolan', 'Elfe Noir', 'Guerrier', 'Légendes', 'Matriarche', 'de Lolesqueth', 0, 0),
(2356, 'Thorgrim', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Asurdor', 24732, 0),
(2357, 'Sedusant', 'Homme', 'Guerrier', 'Chance', '', 'de Sebt Aziz', 0, 0),
(2358, 'Morzik', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Spart', 0, 0),
(2359, 'Asurya', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'D`Ol&eacute;anne', 0, 0),
(2360, 'Cristael', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Matriarche', 'de Slarma&iuml;', 0, 0),
(2361, 'Orhan', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'D`Othomans', 0, 0),
(2362, 'Safer', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de Les Terroirs Maudits', 68010, 0);INSERT INTO `11may_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(2363, 'Macsime ', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Maximulian', 0, 0),
(2364, 'Artcher', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Sombreforge', 0, 0),
(2365, 'Analis', 'Elfe Noir', 'Assassin', 'Chaos', 'Matriarche', 'de Netpule', 3134, 0),
(2366, 'Laao', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'D`Ih`syb`aa', 46625, 0),
(2367, 'Cathie', 'Elfe Noir', 'Assassin', 'Chaos', '', 'de Diablosia', 0, 0),
(2368, 'Perry', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Perrand', 0, 0),
(2369, 'Buko', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Compton', 3134, 0),
(2370, 'Tuditak', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Xicelli', 0, 0),
(2371, 'Siez', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'D`Astarion', 0, 0),
(2372, 'Lelogasteban', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'de Destroya', 0, 0),
(2373, 'Socatoa', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'D`Eureka', 0, 0),
(2374, 'Actartus', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Tafalnd', 0, 0),
(2375, 'Metolugeth', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Goethikle', 3260, 0),
(2376, 'Mareik', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'D`Alaga&euml;', 4314, 0),
(2377, 'Elferth', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'D`Irisis', 0, 0),
(2378, 'Physsiallis', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Loard&eacute;ronne', 51638, 0),
(2381, 'Netenmeth', 'Homme', 'Nécromancien', 'Mort', 'Seigneur', 'de Mouijlle', 26205, 0),
(2382, 'BouboulX', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de le Royaume des Nas', 0, 0),
(2383, 'Kylars', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'de Dark Union', 0, 0),
(2384, 'Enylak', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'D`Ythaque', 0, 0),
(2385, 'Viviano', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'de Vivianies', 19957, 0),
(2386, 'Jeminy', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Tredefeu', 3134, 0),
(2387, 'Scofid', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Leasvempires', 0, 0),
(2388, 'Legovan', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Kalijmndorth', 0, 0),
(2389, 'Antikor', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'D`Entriposfaz', 3197, 0),
(2391, 'Elarinya', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Berethiel', 3723, 0),
(2392, 'Naryutogd', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de The Darikeneses ', 0, 0),
(2393, 'Sartrox', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Devillius', 0, 0),
(2394, 'Spocke', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Villespocke', 0, 0),
(2395, 'Karedoca', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Vannesis', 14016, 0),
(2397, 'Anthonytouti', 'Orque', 'Guerrier', 'Force', 'Chef', 'D`Athony', 0, 0),
(2398, 'Saltoes ', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Shalhudra', 0, 0),
(2399, 'Nys&eacute;rine', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'de Tysth L`Envol&eacute;e ', 39430, 0),
(2400, 'D&eacute;ductance', 'Sahuagin', 'Sorcier', 'Pensée', 'Baronne', 'de l`Intuition', 3134, 0),
(2401, 'Toroc', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'd`Hammer', 4133, 0);



CREATE TABLE `11may_joueurs_stats_1` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2402 DEFAULT CHARSET=latin1 AUTO_INCREMENT=2402 ;

INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(10, 'Maher', 18, 165694, 160665, 171000, 77.00, 80.00, 63.00, 48.00, 110.00, 93.00, 1201, 0, 0, 13109099, 1601, 1182, 2157, 1403, 0, 21736434),
(11, 'Titlan', 21, 122942, 214377, 231000, 168.00, 50.00, 50.50, 16.50, 82.50, 123.50, 22275, 0, 0, 1450666, 941, 177, 290, 20, 0, 21730545),
(12, 'Vigrid', 25, 252742, 317950, 325000, 152.50, 143.50, 113.50, 69.00, 130.00, 92.50, 38960, 0, 0, 186326, 967, 398, 260, 125, 0, 21734369),
(29, 'Lissana', 22, 161089, 251768, 253000, 18.00, 56.00, 45.00, 196.00, 208.00, 343.00, 27297, 0, 0, 567710, 1195, 995, 1328, 1017, 0, 21736276),
(33, 'Demetron', 17, 77431, 152113, 153000, 200.00, 80.50, 56.00, 15.50, 43.50, 18.50, 50000, 0, 0, 6453166, 349, 530, 562, 413, 0, 21708567),
(35, 'Meissner', 24, 213909, 296427, 300000, 137.00, 96.00, 150.00, 53.00, 36.00, 23.00, 46650, 0, 0, 2554372, 6432, 5661, 6403, 6078, 0, 21736439),
(42, 'Ora&iuml;a', 18, 153650, 160468, 171000, 223.00, 196.00, 156.00, 14.00, 69.00, 28.00, 30000, 0, 0, 5721146, 457, 345, 428, 296, 0, 21733107),
(45, 'Zhia', 12, 65450, 67529, 78000, 14.00, 44.00, 33.00, 37.00, 77.00, 27.00, 28994, 0, 0, 614016, 380, 248, 399, 36, 0, 21733275),
(58, 'Egleria', 25, 188972, 323873, 325000, 120.00, 131.00, 33.50, 137.50, 129.00, 168.00, 50000, 0, 0, 63779, 406, 32, 136, 488, 0, 21733698),
(68, 'Kiminou', 41, 363256, 848102, 861000, 248.00, 165.00, 295.00, 170.00, 117.00, 94.00, 17828, 0, 0, 3120825, 1547, 1369, 831, 1406, 0, 21735911),
(71, 'T&ecirc;te-Plate', 43, 436250, 925093, 946000, 210.50, 227.50, 144.50, 188.00, 399.00, 187.50, 22385, 0, 0, 2895510, 719, 412, 674, 276, 0, 21730996),
(86, 'Lothadith', 23, 128059, 268261, 276000, 21.50, 57.50, 96.50, 104.00, 96.00, 322.50, 5201, 0, 0, 1757532, 858, 1019, 727, 920, 0, 21775191),
(88, 'Shaugan', 14, 174846, 99454, 105000, 50.00, 37.00, 41.00, 14.00, 65.00, 93.00, 308, 0, 0, 72747, 1543, 1233, 1104, 1469, 0, 21735464),
(89, 'Argazel', 30, 153921, 448395, 465000, 93.00, 64.00, 66.00, 189.00, 245.00, 481.00, 50000, 0, 0, 3742625, 1961, 1207, 2207, 752, 0, 21729643),
(92, 'Turfel', 51, 8803558, 1280825, 1326000, 148.50, 158.50, 64.00, 265.50, 139.50, 168.00, 50000, 0, 0, 17956826, 10587, 9216, 8884, 9029, 0, 21736191),
(93, 'Danahyl', 23, 292394, 253681, 276000, 29.50, 52.00, 83.00, 120.50, 103.00, 235.00, 50000, 0, 0, 7703, 592, 220, 168, 340, 0, 21730307),
(98, 'Nelvin', 21, 142661, 210615, 231000, 121.50, 62.00, 242.00, 34.00, 45.00, 33.50, 50000, 0, 0, 6022007, 381, 96, 221, 240, 0, 21730006),
(116, 'Ge&iuml;nfrindel', 20, 245926, 208301, 210000, 62.00, 60.00, 139.00, 67.00, 75.00, 68.00, 45617, 0, 0, 1560935, 1913, 2128, 2134, 2001, 0, 21730792),
(119, 'Barbouza', 18, 311174, 153521, 171000, 79.00, 49.00, 75.00, 38.00, 83.00, 204.00, 15823, 0, 0, 1193520, 622, 547, 855, 1018, 0, 21734661),
(120, 'Aub&eacute;rion', 24, 201889, 291636, 300000, 40.00, 84.00, 142.00, 173.00, 113.00, 237.00, 44723, 0, 0, 3944201, 715, 1220, 482, 1019, 0, 21727889),
(125, 'Lhito', 36, 384288, 633378, 666000, 285.00, 201.00, 268.00, 105.00, 51.00, 29.00, 50000, 0, 0, 3024504, 1176, 1123, 1303, 1224, 0, 21734482),
(131, 'Dalan', 42, 466596, 866315, 903000, 231.00, 208.00, 90.00, 150.00, 143.00, 193.00, 50000, 0, 0, 6278082, 1064, 1077, 740, 397, 0, 21730201),
(132, 'Malorus', 42, 3381068, 896037, 903000, 94.00, 119.00, 154.00, 216.33, 251.00, 367.00, 2585, 0, 0, 2978848, 3399, 3854, 3822, 2257, 0, 21723371),
(133, 'Erios', 20, 162547, 198936, 210000, 81.00, 98.00, 186.00, 62.00, 45.00, 29.00, 38788, 0, 0, 7205090, 96, 64, 82, 93, 0, 21734941),
(136, 'Lirth Evendil', 23, 143194, 258646, 276000, 146.50, 74.00, 216.00, 44.00, 33.00, 23.50, 50000, 0, 0, 1301608, 424, 400, 488, 536, 0, 21734538),
(140, 'Ananta', 10, 101314, 51282, 55000, 57.00, 62.00, 39.00, 56.00, 47.00, 72.00, 23181, 0, 0, 6918798, 522, 507, 446, 511, 0, 21738835),
(143, 'Rinoacamui', 13, 104437, 82653, 91000, 94.00, 80.00, 35.50, 45.00, 27.00, 25.50, 36085, 0, 0, 3427666, 1611, 1279, 1391, 1306, 0, 21720761),
(144, 'Irkos', 24, 281544, 293238, 300000, 256.00, 182.00, 135.00, 87.00, 87.00, 37.00, 16382, 0, 0, 1371602, 1586, 1067, 1287, 1555, 0, 21732011),
(145, 'Phyleas', 40, 528842, 786355, 820000, 317.00, 169.00, 295.00, 63.00, 67.00, 31.00, 5548, 0, 0, 172740, 1001, 731, 709, 783, 0, 21734560),
(150, 'Kahzerya', 29, 142090, 409236, 435000, 229.00, 213.00, 111.00, 104.50, 123.00, 33.50, 12093, 0, 0, 1564279, 726, 821, 605, 542, 0, 21736412),
(161, 'Marr', 16, 124806, 126291, 136000, 193.00, 123.00, 75.00, 15.00, 58.00, 18.00, 40000, 0, 0, 1079700, 323, 589, 603, 427, 0, 21734906),
(162, 'Xelios', 11, 95810, 57104, 66000, 65.00, 33.00, 30.50, 23.50, 67.50, 84.50, 40000, 0, 0, 5585761, 968, 932, 945, 854, 0, 21707432),
(167, 'Klaasninas', 30, 197975, 454070, 465000, 254.00, 279.00, 22.00, 42.00, 199.00, 87.00, 31479, 0, 0, 485501, 821, 446, 898, 255, 0, 21736338),
(168, 'Altharam', 22, 143758, 248125, 253000, 246.00, 235.00, 59.00, 20.00, 69.00, 19.00, 30000, 0, 0, 670506, 86, 108, 329, 181, 0, 21732320),
(173, 'Hulricht', 33, 237429, 543476, 561000, 225.00, 137.00, 136.00, 163.00, 108.00, 84.00, 16911, 0, 0, 166251, 876, 658, 528, 772, 0, 21734970),
(181, 'Fourbinas', 23, 177317, 254234, 276000, 23.50, 35.00, 35.00, 46.50, 134.00, 162.00, 9767, 0, 0, 946521, 599, 641, 1256, 787, 0, 21733600),
(183, 'Axeolu', 18, 253360, 167733, 171000, 69.00, 44.00, 41.00, 30.00, 65.00, 110.00, 14511, 0, 0, 1861268, 489, 382, 342, 472, 0, 21734531),
(187, 'Boubi', 22, 88354, 238479, 253000, 39.00, 59.00, 84.00, 80.00, 62.00, 140.00, 50000, 0, 0, 2523574, 306, 0, 402, 377, 0, 21734859),
(192, 'Orium', 30, 165447, 446660, 465000, 227.00, 88.00, 205.00, 245.33, 58.00, 28.00, 50000, 0, 0, 1953197, 6830, 5072, 5206, 4336, 0, 21723304),
(197, 'Leslie', 18, 144427, 155937, 171000, 61.00, 45.00, 101.00, 54.00, 26.00, 33.00, 50000, 0, 0, 8946896, 330, 191, 283, 320, 0, 21735982),
(199, 'Benihime', 32, 142649, 510682, 528000, 47.00, 28.00, 52.00, 137.00, 204.00, 290.00, 40000, 0, 0, 5076287, 1093, 1226, 726, 2118, 0, 21733019),
(204, 'Ovelia', 20, 126357, 208051, 210000, 186.00, 201.00, 83.00, 23.00, 89.00, 19.00, 5878, 0, 0, 2880314, 383, 260, 78, 403, 0, 21732317),
(217, 'Tylert', 25, 232098, 311442, 325000, 165.50, 97.00, 179.00, 40.00, 61.00, 23.50, 16425, 0, 0, 126949, 132, 189, 258, 87, 0, 21734234),
(218, 'Alumdil', 22, 84610, 239736, 253000, 20.00, 34.00, 58.00, 46.00, 80.00, 129.00, 50000, 0, 0, 2121624, 182, 28, 216, 115, 0, 21699170),
(225, 'Ther`glat', 26, 254614, 344958, 351000, 118.00, 101.00, 45.00, 60.00, 100.00, 121.00, 24317, 0, 0, 677334, 826, 525, 707, 88, 0, 21734449),
(231, 'Galigonidd', 17, 204046, 147342, 153000, 151.00, 47.00, 140.00, 43.00, 26.00, 35.00, 28620, 0, 0, 2105463, 2022, 1582, 2443, 1728, 0, 21734977),
(232, 'Matkias', 18, 138226, 164006, 171000, 84.00, 79.00, 148.00, 49.00, 99.00, 44.00, 50000, 0, 0, 1962576, 1317, 1307, 1340, 997, 0, 21731497),
(234, 'Poupou', 22, 142263, 246056, 253000, 88.00, 39.00, 129.00, 37.00, 89.00, 167.00, 13481, 0, 0, 10774787, 566, 471, 1028, 240, 0, 21731941),
(235, 'Dartoil', 9, 74870, 37457, 45000, 34.00, 34.00, 57.00, 21.00, 38.00, 22.00, 30000, 0, 0, 7621979, 499, 648, 768, 342, 0, 21718718),
(236, 'Tefeiri', 18, 142002, 162049, 171000, 101.00, 114.00, 104.00, 17.00, 32.00, 56.00, 39550, 0, 0, 127240, 1092, 1048, 887, 830, 0, 21734837),
(239, 'Luna', 15, 257457, 115338, 120000, 129.00, 47.50, 37.50, 35.00, 85.50, 117.50, 693, 0, 0, 1024986, 1653, 1437, 1176, 1247, 0, 21743432);INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(241, 'Nadras', 19, 84486, 182899, 190000, 24.50, 32.50, 42.00, 87.00, 71.00, 240.00, 6871, 0, 0, 1636219, 1014, 1182, 426, 424, 0, 21724937),
(242, 'Thelv', 23, 115597, 255244, 276000, 34.50, 19.50, 50.00, 90.00, 194.00, 307.00, 50000, 0, 0, 4042380, 1340, 751, 934, 906, 0, 21707385),
(256, 'Husam', 21, 232044, 227535, 231000, 46.50, 18.50, 50.50, 39.50, 80.50, 139.50, 44124, 0, 0, 1452692, 104, 265, 329, 24, 0, 21730413),
(258, 'Febus', 23, 113584, 274465, 276000, 86.00, 66.00, 93.50, 35.50, 149.50, 143.50, 984, 0, 0, 1134346, 46, 174, 83, 512, 0, 21730499),
(267, 'Dacapo', 15, 87496, 107705, 120000, 75.00, 46.00, 65.00, 47.00, 62.00, 50.00, 50000, 0, 0, 378912, 1449, 1184, 530, 1508, 0, 21732402),
(270, 'Desmondis', 21, 271006, 217248, 231000, 49.50, 72.00, 40.00, 54.50, 79.50, 132.50, 28286, 0, 0, 24434, 493, 1010, 491, 296, 0, 21733438),
(278, 'Zahel', 28, 144080, 380103, 406000, 33.00, 103.00, 71.00, 115.00, 153.00, 107.00, 2491, 0, 0, 1062382, 1107, 1269, 893, 928, 0, 21736603),
(280, 'Rufbumpa', 21, 173975, 225071, 231000, 126.50, 70.00, 127.00, 36.00, 30.00, 33.50, 3480, 0, 0, 2864434, 388, 560, 502, 654, 0, 21734707),
(282, 'Kalista', 22, 125789, 242715, 253000, 157.00, 173.00, 159.00, 93.00, 36.00, 34.00, 18513, 0, 0, 66628, 1496, 667, 553, 656, 0, 21735697),
(283, 'Gelthasar Belt', 31, 105478, 494821, 496000, 191.00, 234.00, 158.00, 174.83, 106.00, 38.50, 50000, 0, 0, 279528, 273, 106, 208, 57, 0, 21658681),
(284, 'Tulkas', 35, 520162, 617230, 630000, 149.00, 163.00, 333.00, 205.00, 102.00, 82.00, 26924, 0, 0, 1990621, 11563, 10693, 11193, 10678, 0, 21735878),
(297, 'Bartor', 21, 231364, 216148, 231000, 57.50, 57.00, 156.00, 89.00, 19.50, 48.00, 9, 0, 0, 3752484, 268, 323, 97, 81, 0, 21733853),
(300, 'Shadark', 20, 164027, 197517, 210000, 145.00, 58.00, 201.00, 79.00, 33.00, 48.00, 50000, 0, 0, 6939411, 1717, 1890, 1924, 2264, 0, 21718807),
(302, 'L&eacute;otar', 19, 97844, 174299, 190000, 132.00, 162.00, 32.50, 55.00, 62.00, 56.50, 50000, 0, 0, 2762980, 288, 389, 313, 162, 0, 21734443),
(303, 'Gauerd&ocirc;me', 31, 156023, 494888, 496000, 102.00, 52.50, 94.50, 50.00, 107.50, 187.50, 22783, 0, 0, 1740544, 1549, 1497, 1731, 1205, 0, 21736352),
(314, 'Eleanora', 19, 92852, 187640, 190000, 73.50, 23.50, 66.50, 87.50, 63.50, 156.50, 40000, 0, 0, 655300, 163, 34, 124, 74, 0, 21729192),
(321, 'Vannams', 23, 148833, 255249, 276000, 121.50, 142.50, 104.50, 168.33, 127.00, 85.50, 50000, 0, 0, 796692, 215, 68, 285, 18, 0, 21730668),
(345, 'Torme Morselame', 20, 90641, 190598, 210000, 125.00, 113.00, 59.00, 17.00, 56.00, 18.00, 40000, 0, 0, 834700, 406, 399, 465, 495, 0, 21717785),
(349, 'Elanor', 25, 267860, 322713, 325000, 164.00, 188.00, 172.00, 196.33, 139.00, 61.00, 50000, 0, 0, 3910230, 1806, 1669, 1496, 1784, 0, 21730149),
(385, 'Aratos', 26, 364171, 335253, 351000, 37.00, 25.00, 79.00, 143.00, 113.00, 208.00, 30893, 0, 0, 674, 625, 374, 244, 723, 0, 21737302),
(386, 'Yelderick', 35, 226660, 617019, 630000, 250.00, 213.00, 52.00, 146.00, 135.00, 82.00, 283, 0, 0, 239333, 1364, 656, 1582, 1215, 0, 21735824),
(408, 'Leorod', 18, 154655, 164256, 171000, 134.00, 170.00, 51.00, 36.00, 40.00, 33.00, 47884, 0, 0, 317721, 1643, 1493, 1364, 1745, 0, 21732274),
(410, 'Birgenn', 22, 97945, 247306, 253000, 147.00, 175.00, 85.00, 99.00, 148.00, 73.00, 1051, 0, 0, 2685102, 558, 615, 805, 551, 0, 21736417),
(413, 'Tetrahyd', 29, 269729, 415676, 435000, 48.50, 101.50, 69.50, 84.00, 197.00, 297.50, 3048, 0, 0, 2934283, 491, 386, 715, 324, 0, 21736537),
(423, 'Abert', 18, 101733, 160562, 171000, 67.00, 63.00, 94.00, 52.00, 103.00, 185.00, 1047, 0, 0, 1030679, 1078, 744, 356, 1217, 0, 21736435),
(427, 'Koali', 14, 257232, 96101, 105000, 26.00, 34.00, 35.00, 34.00, 61.00, 86.00, 54, 0, 0, 18523857, 809, 491, 245, 418, 0, 21736291),
(439, 'Willi', 7, 144127, 27017, 28000, 61.00, 56.00, 22.00, 11.50, 25.00, 13.50, 30000, 0, 0, 13593490, 1586, 1495, 1774, 1384, 0, 21729024),
(463, 'Arnaud', 17, 90692, 145864, 153000, 78.50, 49.00, 90.00, 32.00, 27.00, 23.50, 50000, 0, 0, 3889894, 0, 9, 71, 135, 0, 21703916),
(465, 'Dachinos', 13, 55719, 86473, 91000, 98.50, 30.50, 63.50, 62.50, 78.50, 95.50, 40000, 0, 0, 1762811, 134, 344, 509, 512, 0, 21691729),
(481, 'Arcelane', 14, 153939, 102847, 105000, 64.00, 36.00, 90.00, 29.00, 23.00, 18.00, 24010, 0, 0, 20138, 115, 68, 3, 322, 0, 21734984),
(491, 'Ankharon', 31, 120617, 469606, 496000, 51.50, 37.50, 39.00, 188.00, 164.00, 319.00, 50000, 0, 0, 5788717, 1488, 1656, 1083, 882, 0, 21711387),
(555, 'Kaerrawen', 18, 124989, 160705, 171000, 45.00, 40.00, 63.00, 54.00, 59.00, 71.00, 50000, 0, 0, 1985363, 199, 353, 0, 37, 0, 21727968),
(566, 'Bamdinas', 24, 194449, 276829, 300000, 81.00, 36.00, 59.00, 96.00, 159.00, 339.00, 12774, 0, 0, 2992361, 442, 612, 387, 368, 0, 21736150),
(637, 'Mathaos', 21, 158063, 212980, 231000, 234.50, 170.00, 139.00, 48.00, 64.00, 21.50, 50000, 0, 0, 2780722, 1345, 1662, 1683, 1226, 0, 21730216),
(640, 'Mattai', 19, 200131, 178302, 190000, 103.00, 43.50, 84.50, 46.00, 38.50, 104.50, 14858, 0, 0, 738357, 106, 138, 211, 137, 0, 21732295),
(672, 'Jeffrey', 23, 186899, 274367, 276000, 137.50, 98.00, 154.00, 137.00, 43.00, 23.50, 40845, 0, 0, 8905340, 2485, 3201, 3130, 2720, 0, 21733676),
(787, 'Dranthen', 11, 211525, 64182, 66000, 57.50, 42.00, 57.00, 24.00, 24.00, 22.50, 40000, 0, 0, 3084620, 1856, 2419, 1823, 1685, 0, 21729219),
(815, 'Mollestho', 14, 164918, 94617, 105000, 181.00, 118.00, 51.00, 39.00, 55.00, 27.00, 1, 0, 0, 1783726, 301, 477, 755, 147, 0, 21735488),
(848, 'Arkatros', 33, 223071, 540278, 561000, 269.00, 259.00, 80.00, 117.00, 141.00, 75.00, 50000, 0, 0, 762049, 65, 424, 169, 92, 0, 21727172),
(868, 'Arimane', 19, 249569, 185410, 190000, 35.50, 30.50, 34.00, 86.00, 96.00, 199.00, 13042, 0, 0, 4499055, 1501, 1138, 1081, 1208, 0, 21728002),
(870, 'Xandre', 15, 141955, 106312, 120000, 131.00, 71.50, 51.00, 14.50, 65.50, 33.50, 17887, 0, 0, 8326494, 153, 68, 67, 137, 0, 21736627),
(879, 'Vezk', 21, 86069, 214839, 231000, 214.00, 182.00, 100.50, 56.00, 56.00, 53.50, 50000, 0, 0, 3537161, 242, 346, 372, 309, 0, 21725664),
(911, 'Enephia', 21, 255859, 223258, 231000, 39.50, 49.00, 32.00, 27.50, 105.00, 157.00, 22642, 0, 0, 311476, 82, 69, 188, 79, 0, 21728404),
(922, 'Malia', 17, 172034, 147491, 153000, 28.50, 100.00, 64.00, 105.00, 124.50, 70.50, 50000, 0, 0, 3101998, 1101, 1076, 1040, 1006, 0, 21726630),
(930, 'Zaseo', 25, 119942, 316416, 325000, 138.00, 155.00, 111.00, 142.00, 96.00, 67.00, 37680, 0, 0, 383839, 150, 510, 370, 270, 0, 21733694),
(989, 'Salfalar', 22, 277935, 251230, 253000, 93.00, 128.00, 67.00, 56.00, 105.00, 104.00, 5053, 0, 0, 573420, 673, 547, 484, 316, 0, 21734584),
(1010, 'Herel', 15, 128651, 109289, 120000, 110.00, 69.00, 40.50, 47.00, 33.00, 21.50, 405, 0, 0, 647712, 728, 637, 1042, 888, 0, 21736474),
(1016, 'Eleana', 15, 94753, 109338, 120000, 77.00, 47.50, 70.50, 32.00, 32.50, 85.50, 40000, 0, 0, 7960984, 229, 75, 167, 65, 0, 21731576),
(1057, 'X&eacute;nox', 18, 310325, 162098, 171000, 95.00, 76.00, 113.00, 61.00, 71.00, 55.00, 28753, 0, 0, 23730, 538, 626, 689, 544, 0, 21730957),
(1067, 'Daneel', 26, 304884, 350446, 351000, 154.00, 110.00, 220.00, 120.00, 102.00, 39.00, 34310, 0, 0, 1857165, 4386, 4401, 4555, 4806, 0, 21731749),
(1115, 'Galaway', 13, 44163, 89683, 91000, 89.50, 69.00, 105.00, 25.00, 26.00, 20.50, 40000, 0, 0, 31846, 44, 38, 31, 12, 0, 21726681);INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1122, 'Del&eacute;nia', 26, 168755, 333609, 351000, 88.00, 168.00, 24.00, 80.00, 115.00, 125.00, 30516, 0, 0, 367688, 3407, 2707, 2477, 2970, 0, 21733013),
(1141, 'Renard', 10, 97873, 47909, 55000, 27.00, 29.00, 27.00, 29.00, 37.00, 56.00, 22441, 0, 0, 1194441, 223, 159, 112, 231, 0, 21734551),
(1156, 'Yzeute', 15, 185113, 110730, 120000, 75.50, 66.00, 107.00, 60.00, 27.00, 19.50, 0, 0, 0, 834589, 1438, 1305, 1348, 1158, 0, 21736419),
(1287, 'Nragax', 28, 132801, 393974, 406000, 271.00, 101.00, 263.00, 115.00, 37.00, 25.00, 182, 0, 0, 5023350, 4901, 4812, 4998, 3587, 0, 21736644),
(1301, 'Dexert', 11, 149614, 63960, 66000, 51.00, 48.00, 14.50, 44.50, 22.00, 69.00, 30000, 0, 0, 11869506, 716, 987, 925, 585, 0, 21721448),
(1403, 'Soreclis', 17, 158299, 145249, 153000, 123.00, 118.00, 63.00, 40.50, 39.00, 30.50, 34664, 0, 0, 946214, 583, 647, 499, 531, 0, 21735929),
(1409, 'Esteban', 15, 125641, 109622, 120000, 153.00, 57.00, 163.00, 58.00, 47.00, 26.00, 17306, 0, 0, 7303507, 660, 189, 2187, 366, 0, 21736064),
(1411, 'Karyon', 21, 257351, 224709, 231000, 24.50, 19.50, 86.00, 99.00, 156.00, 218.00, 15476, 0, 0, 1435940, 1022, 912, 541, 326, 0, 21736092),
(1412, 'Fouchier', 22, 159101, 240080, 253000, 127.00, 180.00, 61.00, 106.00, 123.00, 135.00, 323, 0, 0, 1415543, 1289, 986, 1547, 778, 0, 21735036),
(1414, 'Criton', 19, 175838, 172629, 190000, 127.00, 153.00, 29.00, 56.50, 63.00, 17.50, 18266, 0, 0, 429207, 154, 654, 408, 294, 0, 21736626),
(1418, 'Basl', 20, 10903219, 207035, 210000, 32.00, 74.00, 86.00, 225.00, 71.00, 47.00, 50000, 0, 0, 80926782, 12588, 11902, 11995, 11970, 0, 21651567),
(1458, 'Yodine', 21, 222431, 230278, 231000, 62.50, 94.00, 41.00, 73.00, 120.50, 57.50, 40311, 0, 0, 420645, 345, 182, 402, 701, 0, 21730730),
(1460, 'Alec', 16, 164868, 123441, 136000, 63.00, 41.00, 29.00, 56.00, 87.00, 139.00, 50000, 0, 0, 1276898, 1499, 1943, 1325, 1050, 0, 21733219),
(1469, 'Elm', 48, 663001, 1150040, 1176000, 208.00, 157.00, 294.00, 192.00, 144.00, 237.00, 50000, 0, 0, 5199408, 2945, 953, 1798, 1963, 0, 21729258),
(1470, 'Celithrand', 14, 179686, 97804, 105000, 20.00, 22.00, 61.00, 34.00, 96.00, 117.00, 40000, 0, 0, 13539726, 365, 346, 436, 320, 0, 21733727),
(1475, 'Batterusero', 10, 127924, 47875, 55000, 60.00, 40.00, 85.00, 25.00, 43.00, 20.00, 40000, 0, 0, 13085169, 1208, 1027, 998, 803, 0, 21713618),
(1492, 'Osterate', 18, 124530, 169027, 171000, 146.00, 146.00, 71.00, 48.00, 48.00, 32.00, 50000, 0, 0, 6799911, 452, 8, 436, 105, 0, 21709994),
(1512, 'Keldaran', 17, 84701, 151438, 153000, 68.00, 76.00, 76.00, 63.00, 47.00, 46.00, 35620, 0, 0, 2326591, 252, 336, 390, 142, 0, 21735059),
(1519, 'Tirandilis', 23, 507272, 271087, 276000, 118.50, 89.00, 253.00, 38.00, 35.00, 22.50, 30, 0, 0, 1593452, 760, 756, 620, 572, 0, 21734891),
(1522, 'Durshak le Borgne', 23, 107263, 258005, 276000, 222.00, 141.50, 137.00, 16.50, 55.50, 24.50, 50000, 0, 0, 369149, 341, 241, 77, 107, 0, 21734577),
(1528, 'Saya', 10, 43169, 53769, 55000, 175.00, 126.00, 76.00, 32.00, 37.00, 17.00, 30000, 0, 0, 5028534, 534, 141, 260, 511, 0, 21695954),
(1539, 'Kaiiros', 25, 260760, 301015, 325000, 24.50, 65.50, 65.50, 110.00, 90.00, 352.50, 37988, 0, 0, 220619, 615, 606, 1039, 101, 0, 21736312),
(1549, 'Caym', 16, 709078, 124187, 136000, 94.00, 80.00, 161.00, 44.00, 42.00, 20.00, 835, 0, 0, 7582590, 656, 332, 561, 738, 0, 21753863),
(1550, 'N&auml;ta&euml;l', 15, 111225, 107972, 120000, 173.00, 178.00, 49.00, 22.50, 49.00, 36.50, 96, 0, 0, 1760863, 793, 671, 770, 590, 0, 21736108),
(1562, 'Lyraprime', 17, 129062, 144361, 153000, 94.00, 116.00, 25.00, 99.00, 64.00, 67.00, 40000, 0, 0, 4928903, 660, 381, 484, 422, 0, 21702167),
(1583, 'Rhal', 16, 92706, 127787, 136000, 74.00, 70.00, 56.00, 34.00, 71.00, 71.00, 30000, 0, 0, 4519376, 209, 194, 6, 7, 0, 21716442),
(1611, 'Arthurik', 17, 129128, 141158, 153000, 171.00, 78.50, 43.00, 27.50, 40.50, 18.50, 6895, 0, 0, 816, 136, 116, 353, 171, 0, 21720863),
(1627, 'Silayerr', 18, 168951, 158268, 171000, 98.00, 54.00, 58.00, 61.00, 50.00, 62.00, 3, 0, 0, 2827386, 409, 0, 7, 381, 0, 21725080),
(1653, 'Damian', 9, 90730, 41977, 45000, 99.00, 125.00, 77.00, 22.50, 38.00, 12.50, 30000, 0, 0, 7282478, 622, 419, 395, 410, 0, 21728663),
(1667, 'Vylnius', 13, 227415, 87163, 91000, 54.50, 34.50, 22.50, 30.50, 47.50, 74.50, 3703, 0, 0, 4769438, 61, 123, 0, 136, 0, 21735996),
(1670, 'Bolackot', 12, 160711, 66228, 78000, 67.00, 32.00, 59.00, 24.00, 42.00, 81.00, 11484, 0, 0, 40961, 679, 523, 271, 373, 0, 21736438),
(1682, 'L&eacute;&ouml;raz', 13, 220265, 78528, 91000, 80.50, 46.00, 95.00, 27.00, 31.00, 21.50, 1058, 0, 0, 252717, 364, 228, 536, 587, 0, 21736273),
(1685, 'Beltha&iuml;s', 11, 36944, 55421, 66000, 62.50, 32.00, 65.00, 24.00, 20.00, 16.50, 10000, 0, 0, 893310, 116, 26, 113, 49, 0, 21734339),
(1700, 'Gaeldrech', 15, 128636, 108619, 120000, 151.00, 134.00, 62.00, 38.50, 84.00, 19.50, 40000, 0, 0, 2841808, 773, 522, 868, 532, 0, 21719360),
(1725, 'Galmin', 38, 534071, 711774, 741000, 296.00, 101.00, 142.00, 55.00, 157.00, 210.00, 46660, 0, 0, 2338348, 711, 375, 626, 433, 0, 21734477),
(1747, 'Hordrin', 31, 280252, 491934, 496000, 231.00, 268.00, 26.50, 92.50, 161.00, 161.00, 20036, 0, 0, 1292671, 779, 323, 723, 333, 0, 21736658),
(1748, 'Baduit', 27, 210396, 368078, 378000, 142.00, 142.00, 192.00, 157.00, 140.00, 77.00, 12267, 0, 0, 2238749, 1207, 501, 1229, 556, 0, 21736380),
(1755, 'Le Dougec', 13, 149295, 89854, 91000, 109.00, 72.00, 123.00, 46.00, 24.00, 25.00, 40000, 0, 0, 317623, 598, 732, 775, 516, 0, 21734619),
(1773, 'Pyrazine', 15, 209862, 114712, 120000, 100.00, 71.00, 77.50, 2.50, 168.50, 179.50, 39256, 0, 0, 8996334, 1289, 930, 978, 1100, 0, 21739010),
(1784, 'Lineus', 13, 143762, 85685, 91000, 59.00, 73.00, 78.00, 94.00, 42.00, 79.00, 278, 0, 0, 216588, 566, 720, 254, 926, 0, 21724139),
(1795, 'Bornami', 19, 206276, 172298, 190000, 75.00, 94.00, 158.00, 209.00, 81.50, 44.50, 23233, 0, 0, 246726, 746, 630, 745, 1323, 0, 21736002),
(1804, 'Elorfindelle', 11, 44774, 56165, 66000, 41.50, 41.00, 29.00, 30.50, 48.50, 51.50, 30000, 0, 0, 2932945, 427, 152, 340, 101, 0, 21697935),
(1809, 'Kal', 27, 269315, 356607, 378000, 204.00, 212.00, 143.50, 73.50, 112.00, 153.00, 25501, 0, 0, 2832380, 3445, 4972, 2273, 4648, 0, 21736494),
(1816, 'Han Main-Tranchante', 14, 140208, 102986, 105000, 138.00, 104.00, 102.00, 118.00, 55.00, 40.00, 17630, 0, 0, 5131893, 1043, 631, 391, 469, 0, 21733889),
(1824, 'Aedorn', 20, 190060, 201852, 210000, 59.00, 102.00, 79.00, 70.00, 108.00, 218.00, 50000, 0, 0, 2190766, 1182, 890, 982, 259, 0, 21735266),
(1827, 'Khiran', 12, 175387, 75539, 78000, 123.00, 71.00, 56.00, 25.00, 44.00, 15.00, 40000, 0, 0, 4369606, 580, 1040, 1105, 934, 0, 21729788),
(1835, 'Krystophoros', 14, 114474, 94427, 105000, 88.00, 132.00, 61.00, 29.00, 43.00, 15.00, 34775, 0, 0, 1601864, 536, 410, 445, 314, 0, 21729193),
(1838, 'Anwaman&euml;l', 13, 132036, 80861, 91000, 102.00, 114.00, 32.00, 20.50, 36.00, 31.50, 30000, 0, 0, 2907710, 643, 372, 588, 682, 0, 21728951),
(1842, 'Cometa', 7, 53273, 24621, 28000, 49.00, 31.50, 27.00, 22.50, 22.50, 15.50, 30000, 0, 0, 6604248, 302, 230, 337, 229, 0, 21710059),
(1851, 'Reyns', 15, 145892, 109898, 120000, 79.00, 102.00, 62.00, 66.00, 80.00, 61.00, 10311, 0, 0, 19921, 85, 212, 154, 255, 0, 21733066),
(1853, 'Ar&eacute;gonde', 19, 84864, 184508, 190000, 69.50, 101.50, 139.00, 210.83, 104.50, 98.00, 50000, 0, 0, 2654835, 1863, 1354, 1832, 1220, 0, 21729207);INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1866, 'Agro', 20, 191942, 197845, 210000, 225.00, 179.00, 128.00, 130.00, 66.00, 22.00, 13790, 0, 0, 563162, 3504, 3957, 4884, 4377, 0, 21736281),
(1867, 'Maxliger', 14, 129413, 95944, 105000, 29.00, 59.00, 47.00, 41.00, 81.00, 53.00, 1703, 0, 0, 1362701, 1527, 1345, 921, 1434, 0, 21735068),
(1874, 'Alardius', 1, 6774, 627, 1000, 21.00, 20.00, 9.00, 20.00, 12.00, 11.00, 10000, 0, 0, 2054209, 153, 263, 190, 143, 0, 21671678),
(1883, 'Khane', 9, 69638, 41513, 45000, 110.50, 52.00, 74.00, 41.00, 31.00, 16.50, 24140, 0, 0, 2283193, 346, 746, 508, 577, 0, 21730845),
(1914, 'Metyorah', 10, 95269, 50207, 55000, 69.00, 33.00, 74.00, 23.00, 21.00, 16.00, 30000, 0, 0, 8946704, 683, 576, 570, 530, 0, 21710326),
(1922, 'Thaelion', 14, 108479, 94331, 105000, 111.00, 58.00, 51.00, 64.00, 26.00, 19.00, 0, 0, 0, 5906690, 503, 337, 389, 494, 0, 21736345),
(1927, 'Koulibab', 5, 87915, 10959, 15000, 36.00, 13.50, 20.50, 13.00, 23.50, 35.50, 20000, 0, 0, 2658605, 396, 472, 524, 387, 0, 21724468),
(1937, 'Ekelgeister', 15, 139749, 106829, 120000, 65.00, 27.00, 102.00, 49.00, 31.00, 39.00, 4037, 0, 0, 3314299, 319, 114, 188, 183, 0, 21729380),
(1945, 'Miroslaw', 16, 175517, 134129, 136000, 175.00, 181.00, 13.00, 28.00, 116.00, 52.00, 8294, 0, 0, 1004100, 675, 758, 527, 1167, 0, 21736518),
(1953, 'Erchael', 10, 93022, 49104, 55000, 144.00, 136.00, 95.00, 102.00, 56.00, 37.00, 10000, 0, 0, 1495829, 1248, 507, 1149, 1108, 0, 21736668),
(1959, 'Llumeolf', 12, 103767, 66549, 78000, 22.00, 14.00, 38.00, 82.00, 52.00, 142.00, 9129, 0, 0, 568324, 213, 250, 41, 357, 0, 21734893),
(1962, 'Noddin', 6, 61796, 19876, 21000, 30.00, 35.00, 13.00, 22.00, 25.00, 33.00, 30000, 0, 0, 9079747, 35, 91, 30, 85, 0, 21706231),
(1991, 'Aorphen', 10, 104811, 54793, 55000, 88.00, 16.00, 27.00, 19.00, 31.00, 111.00, 40000, 0, 0, 2026299, 320, 241, 118, 95, 0, 21734897),
(1994, 'Aridius', 8, 80941, 30657, 36000, 77.00, 51.00, 21.00, 24.00, 22.00, 17.00, 30000, 0, 0, 5114886, 399, 292, 424, 311, 0, 21710380),
(1995, 'Trano', 17, 180808, 138876, 153000, 101.50, 65.00, 149.00, 38.00, 26.00, 19.50, 25797, 0, 0, 483324, 109, 91, 294, 314, 0, 21733372),
(1996, 'Anithralith', 11, 117459, 56576, 66000, 102.50, 94.00, 79.00, 38.00, 30.00, 18.50, 40000, 0, 0, 6330782, 288, 201, 265, 220, 0, 21723192),
(2001, 'Murzolk ', 11, 87228, 64114, 66000, 18.50, 23.00, 24.00, 28.50, 46.00, 83.00, 40000, 0, 0, 1770346, 107, 155, 4, 23, 0, 21715111),
(2007, 'Luinelinde', 14, 137651, 96436, 105000, 80.00, 67.00, 28.00, 63.00, 48.00, 89.00, 378, 0, 0, 1359054, 407, 364, 80, 303, 0, 21730880),
(2017, 'Nargorath', 13, 150047, 84932, 91000, 118.00, 105.00, 48.50, 50.00, 49.00, 18.50, 40000, 0, 0, 3373918, 211, 214, 53, 31, 0, 21735190),
(2021, 'Borfang', 8, 127454, 32882, 36000, 42.00, 29.00, 7.00, 53.00, 30.00, 52.00, 131, 0, 0, 1148681, 338, 527, 405, 232, 0, 21732326),
(2026, 'Drekal', 18, 192994, 157439, 171000, 183.00, 184.00, 111.00, 48.00, 48.00, 21.00, 30000, 0, 0, 1503962, 1092, 538, 1125, 931, 0, 21730385),
(2028, 'L&eacute;nnih', 10, 150164, 52094, 55000, 26.00, 25.00, 37.00, 44.00, 30.00, 99.00, 40000, 0, 0, 1781770, 367, 282, 183, 3, 0, 21735827),
(2030, 'Archanos', 13, 170781, 82993, 91000, 105.00, 88.50, 124.50, 20.00, 53.50, 80.50, 14656, 0, 0, 2853086, 176, 175, 254, 180, 0, 21735920),
(2043, 'Latifa', 7, 92076, 25920, 28000, 80.50, 24.00, 107.00, 36.00, 19.00, 19.50, 30000, 0, 0, 1, 347, 184, 260, 200, 0, 21739192),
(2047, 'Aldere', 12, 183970, 69288, 78000, 120.00, 98.00, 49.00, 27.00, 32.00, 14.00, 29895, 0, 0, 497493, 639, 652, 265, 444, 0, 21735173),
(2048, 'Haelyn', 9, 205140, 36448, 45000, 54.00, 55.00, 4.50, 39.50, 20.00, 48.00, 297, 0, 0, 34239, 1080, 863, 770, 702, 0, 21736321),
(2053, 'Barnoche', 12, 175606, 70376, 78000, 61.00, 43.00, 75.00, 95.00, 61.00, 18.00, 40000, 0, 0, 532598, 4, 312, 117, 301, 0, 21728119),
(2056, 'Kalesh', 14, 140139, 100945, 105000, 119.00, 84.00, 67.00, 65.00, 26.00, 23.00, 33795, 0, 0, 882596, 386, 363, 290, 273, 0, 21730679),
(2058, 'Kristan', 17, 286938, 150138, 153000, 126.00, 145.00, 74.00, 131.00, 82.00, 46.00, 0, 0, 0, 666066, 1353, 1750, 1343, 1080, 0, 21732188),
(2067, 'Ashinseika', 4, 99156, 8974, 10000, 28.00, 14.00, 34.00, 17.00, 14.00, 22.00, 10880, 0, 0, 1423165, 232, 186, 224, 183, 0, 21736149),
(2071, 'Teperek', 8, 58435, 33273, 36000, 66.00, 37.00, 27.00, 117.33, 35.00, 41.00, 30000, 0, 0, 2535183, 50, 398, 134, 346, 0, 21707001),
(2072, 'Richard Oraph', 12, 162785, 66389, 78000, 20.00, 14.00, 39.00, 64.00, 34.00, 78.00, 35800, 0, 0, 1035861, 419, 136, 211, 99, 0, 21732085),
(2073, 'Artane', 7, 151595, 26889, 28000, 43.50, 44.50, 50.00, 49.00, 27.00, 65.00, 30000, 0, 0, 5960709, 908, 961, 967, 783, 0, 21729472),
(2074, 'Tureloitu', 10, 167605, 49703, 55000, 43.00, 28.00, 65.00, 35.00, 19.00, 16.00, 30555, 0, 0, 279413, 153, 313, 194, 408, 0, 21730243),
(2103, 'Grog', 10, 49404, 45405, 55000, 65.00, 55.00, 34.00, 12.00, 22.00, 14.00, 20000, 0, 0, 2121215, 95, 168, 53, 94, 0, 21685905),
(2112, 'Defraglaroche', 26, 403348, 326239, 351000, 188.00, 131.00, 183.00, 112.00, 74.00, 153.00, 6364, 0, 0, 815281, 876, 719, 698, 814, 0, 21736573),
(2126, 'Trolur', 23, 254150, 266235, 276000, 277.00, 120.50, 124.00, 18.50, 80.50, 51.50, 9822, 0, 0, 633329, 910, 907, 925, 645, 0, 21736486),
(2134, 'Iorfel', 7, 93760, 23433, 28000, 30.50, 17.00, 50.00, 36.00, 22.50, 20.00, 30000, 0, 0, 2262554, 262, 385, 436, 401, 0, 21705868),
(2137, 'Prolor', 14, 84124, 91075, 105000, 104.00, 74.00, 121.00, 35.00, 37.00, 18.00, 13020, 0, 0, 1698729, 1101, 976, 1066, 1280, 0, 21735542),
(2143, 'Krijeks', 11, 163396, 56874, 66000, 102.00, 132.00, 34.00, 24.50, 42.00, 13.50, 8253, 0, 0, 19234, 226, 239, 237, 310, 0, 21736594),
(2154, 'Seloma', 6, 71074, 15266, 21000, 34.00, 27.00, 13.00, 30.00, 16.00, 35.00, 20000, 0, 0, 386677, 126, 191, 70, 257, 0, 21730663),
(2161, 'Zimbra', 2, 17621, 1179, 3000, 15.00, 12.00, 19.00, 17.00, 16.00, 20.00, 10000, 0, 0, 1916405, 53, 47, 89, 107, 0, 21730517),
(2171, 'Shemmoran', 7, 93820, 22602, 28000, 19.50, 17.50, 50.00, 45.00, 23.00, 47.00, 30000, 0, 0, 3815165, 201, 221, 361, 280, 0, 21718587),
(2175, 'Dyospiros', 11, 98027, 65575, 66000, 7.50, 63.00, 24.00, 39.00, 107.50, 52.50, 40000, 0, 0, 655376, 237, 14, 216, 128, 0, 21734676),
(2176, 'Na&euml;lys', 13, 162603, 87744, 91000, 230.00, 75.50, 69.00, 23.50, 66.50, 19.50, 4023, 0, 0, 907746, 241, 241, 214, 284, 0, 21736494),
(2177, 'Melagius', 6, 64380, 19787, 21000, 41.00, 24.00, 42.00, 19.00, 15.00, 19.00, 20000, 0, 0, 2825390, 191, 305, 217, 276, 0, 21727870),
(2182, 'Rotgh&auml;r', 8, 122728, 35048, 36000, 98.00, 40.00, 24.00, 5.00, 24.00, 15.00, 30000, 0, 0, 1568129, 514, 674, 466, 496, 0, 21733912),
(2188, 'Lycane', 14, 114833, 97526, 105000, 106.00, 52.00, 115.00, 43.00, 35.00, 18.00, 1415, 0, 0, 54833, 294, 271, 287, 217, 0, 21736474),
(2190, 'Zaramoth', 7, 94953, 22795, 28000, 51.00, 47.00, 19.00, 53.00, 26.00, 26.00, 30000, 0, 0, 1135003, 500, 345, 337, 357, 0, 21712947),
(2192, 'Naloune', 1, 3139, 0, 1000, 18.00, 17.00, 14.50, 14.00, 13.00, 13.50, 0, 0, 0, 134161, 40, 40, 40, 40, 0, 21687415),
(2212, 'Styliann', 11, 217735, 58333, 66000, 46.00, 51.00, 22.50, 42.50, 30.00, 57.00, 64, 0, 0, 314891, 617, 213, 562, 415, 0, 21736236);INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2225, 'Mortzacus', 6, 34074, 18360, 21000, 98.00, 58.00, 20.00, 10.00, 25.00, 13.00, 30000, 0, 0, 42394, 193, 209, 85, 91, 0, 21734045),
(2228, 'Kromlech', 3, 24895, 4762, 6000, 17.50, 16.50, 16.00, 20.50, 19.50, 27.00, 10000, 0, 0, 1240171, 70, 164, 72, 110, 0, 21717631),
(2229, 'Bidou', 6, 169982, 17209, 21000, 44.00, 48.00, 30.00, 48.00, 22.00, 21.00, 264, 0, 0, 1146981, 601, 445, 311, 388, 0, 21736233),
(2230, 'Aysa', 7, 130331, 21941, 28000, 63.00, 41.50, 26.00, 10.50, 28.50, 13.50, 22695, 0, 0, 850384, 416, 395, 356, 368, 0, 21735173),
(2231, 'Ezhul`s', 1, 0, 0, 1000, 16.50, 9.50, 14.50, 18.50, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2232, 'Wellan', 1, 0, 0, 1000, 18.00, 17.00, 14.50, 14.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2233, 'L&eacute;o', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2234, 'Barney', 1, 0, 0, 1000, 13.50, 13.50, 14.00, 15.50, 14.50, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2235, 'Woshhi', 3, 17068, 4554, 6000, 19.50, 13.50, 16.00, 26.50, 15.50, 25.00, 10000, 0, 0, 711175, 24, 35, 53, 128, 0, 21707167),
(2236, 'Kiharo', 6, 126147, 19489, 21000, 51.00, 17.00, 23.00, 22.00, 22.00, 54.00, 30000, 0, 0, 467287, 195, 385, 505, 405, 0, 21734396),
(2237, 'Wisclicenus', 6, 200137, 18071, 21000, 40.00, 23.00, 18.00, 10.00, 27.00, 38.00, 5289, 0, 0, 36, 258, 211, 168, 346, 0, 21736628),
(2240, 'Bakj', 1, 3945, 0, 1000, 19.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 15881, 20, 20, 20, 32, 0, 21697851),
(2241, 'Lillie', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2242, 'Heragons', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2243, 'Tara', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2244, 'Zola', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2245, 'Alex', 1, 0, 0, 1000, 20.50, 8.50, 14.00, 9.00, 14.00, 21.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2246, 'Questorat', 1, 3134, 0, 1000, 12.50, 13.00, 9.00, 22.00, 15.50, 17.50, 0, 0, 0, 7381, 24, 24, 24, 24, 0, 21697851),
(2247, 'Lomax', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2249, 'Syel', 1, 0, 0, 1000, 22.00, 14.00, 15.50, 7.50, 14.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2250, 'Maxlo', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697851),
(2251, 'Azarath', 3, 86707, 5079, 6000, 18.50, 20.00, 14.00, 23.00, 18.50, 18.50, 119, 0, 0, 358315, 10, 117, 126, 96, 0, 21736063),
(2252, 'Magebar', 8, 120169, 28110, 36000, 35.00, 55.00, 58.00, 27.00, 30.00, 21.00, 29, 0, 0, 124928, 629, 783, 484, 522, 0, 21736581),
(2254, 'Sildhur', 9, 56069, 43836, 45000, 98.00, 38.50, 59.50, 66.00, 26.50, 64.50, 30000, 0, 0, 1568518, 326, 353, 235, 250, 0, 21733727),
(2255, 'Karibuo', 7, 97657, 21505, 28000, 68.00, 42.50, 21.00, 10.50, 22.50, 13.50, 30000, 0, 0, 937976, 372, 450, 267, 291, 0, 21730198),
(2256, 'Yzerta', 1, 0, 0, 1000, 19.00, 16.50, 15.00, 12.50, 13.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21699194),
(2257, 'Daxgox', 1, 0, 0, 1000, 29.00, 17.50, 9.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21699194),
(2258, 'Tonimiguel', 3, 10258, 4677, 6000, 25.00, 13.00, 29.00, 14.00, 17.00, 17.00, 10000, 0, 0, 298623, 31, 77, 31, 31, 0, 21699194),
(2259, 'Lobless', 10, 280624, 46541, 55000, 39.00, 24.00, 64.00, 32.00, 25.00, 25.00, 13879, 0, 0, 1189, 198, 116, 293, 107, 0, 21735042),
(2260, 'Bebel', 1, 5211, 797, 1000, 22.00, 20.00, 15.00, 12.50, 13.00, 12.50, 10000, 0, 0, 977372, 0, 0, 0, 0, 0, 21703232),
(2262, 'Atman', 1, 0, 0, 1000, 13.00, 10.00, 13.00, 22.00, 15.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21699195),
(2264, 'Arum', 5, 98003, 10721, 15000, 30.50, 28.00, 22.00, 21.50, 57.50, 49.50, 20000, 0, 0, 200054, 121, 91, 216, 170, 0, 21749062),
(2265, 'Bleu', 1, 0, 0, 1000, 23.00, 13.00, 15.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21701213),
(2266, 'Alexendre', 1, 0, 0, 1000, 18.00, 17.00, 14.50, 14.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21701213),
(2267, 'Skaad', 6, 138200, 20514, 21000, 32.00, 60.00, 44.00, 21.00, 22.00, 19.00, 61, 0, 0, 81763, 383, 389, 330, 356, 0, 21730822),
(2268, 'Bahumuth', 5, 128090, 10560, 15000, 28.00, 13.00, 45.00, 18.00, 20.00, 18.00, 18, 0, 0, 475954, 447, 410, 417, 479, 0, 21727412),
(2269, 'Fosth', 6, 113498, 16085, 21000, 30.00, 17.00, 49.00, 20.00, 22.00, 19.00, 19652, 0, 0, 819059, 348, 491, 616, 508, 0, 21730550),
(2270, 'Juleinacl', 1, 0, 0, 1000, 22.00, 20.00, 11.00, 11.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21701216),
(2271, 'Scotthy', 1, 3450, 0, 1000, 20.50, 16.00, 17.00, 13.00, 13.00, 12.50, 10000, 0, 0, 235196, 4, 4, 4, 4, 0, 21701216),
(2272, 'Macsijm', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21701217),
(2273, 'Buleite', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21701217),
(2280, 'Arongrim', 7, 132116, 23094, 28000, 40.00, 23.00, 53.00, 22.00, 27.00, 20.00, 19262, 0, 0, 921162, 397, 338, 346, 238, 0, 21731877),
(2282, 'Thaor', 1, 0, 0, 1000, 18.00, 18.00, 9.00, 18.00, 13.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21705522),
(2283, 'Enering', 1, 6993, 2, 1000, 25.00, 21.00, 10.00, 11.00, 16.00, 10.00, 10000, 0, 0, 639019, 38, 58, 52, 154, 0, 21705522),
(2286, 'Diablotta', 1, 0, 0, 1000, 23.00, 13.00, 15.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21705523),
(2287, 'Elfi', 1, 0, 0, 1000, 13.50, 10.00, 18.00, 15.50, 13.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21705523),
(2288, 'Elrendir', 5, 66404, 14040, 15000, 19.50, 26.00, 17.00, 27.00, 25.50, 20.50, 14281, 0, 0, 7507, 215, 255, 488, 251, 0, 21733287),
(2289, 'Kyky', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21705523),
(2290, 'Nashira', 1, 0, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21705524),
(2292, 'Achiliss', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21707114),
(2293, 'Cocoz', 1, 0, 0, 1000, 20.00, 13.00, 19.00, 13.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21707114);INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2294, 'Pelli', 9, 136023, 44099, 45000, 82.00, 58.00, 26.50, 33.00, 37.00, 20.50, 5811, 0, 0, 327232, 148, 70, 81, 50, 0, 21735684),
(2295, 'Andie', 1, 0, 0, 1000, 25.00, 19.50, 11.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21707114),
(2296, 'Louna', 1, 0, 0, 1000, 16.50, 15.00, 17.00, 13.00, 14.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21707114),
(2308, 'Xavius', 8, 94589, 28787, 36000, 77.00, 37.00, 25.00, 25.00, 33.00, 62.00, 10662, 0, 0, 1080186, 189, 154, 43, 464, 0, 21731545),
(2309, 'Baalack ', 1, 5649, 809, 1000, 13.50, 13.50, 14.00, 15.50, 14.50, 19.00, 10000, 0, 0, 496958, 33, 33, 37, 31, 0, 21722020),
(2311, 'Evasgelun', 1, 3418, 118, 1000, 17.50, 16.50, 12.50, 13.00, 16.00, 14.50, 0, 0, 0, 233308, 0, 0, 0, 0, 0, 21711863),
(2312, 'Savage', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711866),
(2313, 'Tittellion', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711866),
(2314, 'Saylith', 9, 183296, 40255, 45000, 44.00, 33.00, 17.50, 31.50, 30.00, 51.00, 26665, 0, 0, 219, 162, 157, 211, 207, 0, 21736111),
(2315, 'Sillegue', 5, 84678, 10471, 15000, 43.00, 45.00, 22.00, 26.50, 18.00, 14.50, 87, 0, 0, 736, 357, 104, 309, 393, 0, 21735882),
(2316, 'Akenon', 1, 0, 0, 1000, 19.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711866),
(2317, 'Snakle', 1, 0, 0, 1000, 14.50, 9.50, 13.00, 22.00, 10.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711866),
(2318, 'Purpurim La Fouine', 8, 94968, 30936, 36000, 47.00, 27.00, 65.00, 48.00, 17.00, 21.00, 12461, 0, 0, 772764, 393, 335, 451, 420, 0, 21736297),
(2319, 'Arashur', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 7.50, 13.00, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711866),
(2320, 'Serra', 1, 0, 0, 1000, 16.00, 10.00, 18.00, 22.00, 9.00, 12.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711866),
(2321, 'Ligalus', 1, 3134, 0, 1000, 16.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 87324, 4, 4, 4, 4, 0, 21711866),
(2322, 'Argarock', 1, 0, 0, 1000, 14.50, 10.50, 13.50, 10.50, 14.50, 23.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2323, 'Captiva', 1, 0, 0, 1000, 15.00, 17.00, 15.00, 14.00, 17.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2324, 'Sophrate', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2325, 'MxU', 1, 0, 0, 1000, 24.00, 11.00, 15.50, 5.50, 13.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2326, 'Khorn', 1, 0, 0, 1000, 15.50, 10.50, 15.50, 10.50, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2327, 'Alcap', 1, 0, 0, 1000, 25.00, 19.50, 11.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2328, 'Bossdevaud', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711867),
(2331, 'Kzerk', 7, 135691, 25306, 28000, 41.50, 29.00, 41.00, 23.00, 21.00, 18.50, 8426, 0, 0, 348, 398, 524, 449, 428, 0, 21736600),
(2333, 'Jessym', 2, 13698, 2589, 3000, 35.00, 26.00, 12.00, 9.00, 15.00, 9.00, 10000, 0, 0, 702628, 51, 45, 68, 73, 0, 21723767),
(2335, 'Kailern', 3, 20439, 3344, 6000, 23.00, 13.00, 29.00, 23.00, 13.00, 15.00, 10000, 0, 0, 201162, 71, 234, 31, 235, 0, 21732314),
(2336, 'Morzak', 1, 3147, 0, 1000, 13.50, 10.00, 15.00, 24.00, 13.00, 16.50, 0, 0, 0, 4895, 0, 0, 0, 0, 0, 21717291),
(2337, 'Maria', 4, 130847, 9973, 10000, 35.00, 21.00, 18.00, 34.00, 16.00, 76.00, 8997, 0, 0, 174595, 49, 155, 195, 85, 0, 21736215),
(2338, 'Nanthilde', 1, 0, 0, 1000, 14.50, 17.00, 10.00, 18.00, 13.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717292),
(2339, 'Tchinga', 7, 97592, 24131, 28000, 41.50, 20.00, 57.00, 106.00, 13.50, 35.00, 30000, 0, 0, 675636, 415, 331, 121, 161, 0, 21735875),
(2340, 'Datstoke', 1, 0, 0, 1000, 21.00, 15.00, 14.00, 9.50, 10.00, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717292),
(2341, 'Zakaria', 1, 3134, 0, 1000, 19.00, 17.00, 13.50, 14.00, 14.00, 12.50, 0, 0, 0, 5001, 0, 0, 0, 0, 0, 21717292),
(2342, 'Jesper', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717292),
(2343, 'Taurn', 9, 119569, 42519, 45000, 71.00, 53.00, 26.00, 35.00, 38.00, 26.00, 30000, 0, 0, 207037, 108, 232, 152, 205, 0, 21736226),
(2344, 'Usarnem', 1, 0, 0, 1000, 17.50, 9.50, 14.50, 9.50, 18.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717293),
(2345, 'Mifour', 5, 120703, 14621, 15000, 31.00, 31.00, 24.50, 9.50, 24.50, 34.50, 16474, 0, 0, 72582, 252, 281, 462, 193, 0, 21736379),
(2347, 'Khaim', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717695),
(2348, 'Stylestar', 1, 0, 0, 1000, 12.50, 8.50, 18.00, 17.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717695),
(2349, 'OverOo', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717695),
(2350, 'Bobth', 4, 76099, 6551, 10000, 36.00, 25.00, 13.00, 28.00, 22.00, 20.00, 20000, 0, 0, 112687, 59, 15, 128, 110, 0, 21736227),
(2351, 'Azzarius ', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717695),
(2352, 'Brasgali', 1, 0, 0, 1000, 13.00, 10.00, 13.00, 22.00, 15.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717695),
(2353, 'Stirkaller', 1, 3160, 0, 1000, 16.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 7358, 16, 16, 16, 16, 0, 21717695),
(2354, 'Lolan', 1, 0, 0, 1000, 19.00, 13.00, 16.00, 11.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717695),
(2356, 'Thorgrim', 4, 24732, 8816, 10000, 26.00, 18.00, 55.00, 9.00, 22.00, 27.00, 526, 0, 0, 184016, 124, 29, 114, 53, 0, 21731882),
(2357, 'Sedusant', 1, 0, 0, 1000, 17.00, 17.00, 15.00, 12.50, 14.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724545),
(2358, 'Morzik', 1, 0, 0, 1000, 13.50, 10.00, 18.00, 15.50, 13.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724545),
(2359, 'Asurya', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724545),
(2360, 'Cristael', 1, 0, 0, 1000, 17.50, 8.50, 16.50, 9.50, 17.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724550),
(2361, 'Orhan', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724550),
(2362, 'Safer', 4, 68010, 6176, 10000, 19.00, 16.00, 31.00, 34.00, 18.00, 14.00, 20000, 0, 0, 51883, 126, 95, 101, 187, 0, 21735879);INSERT INTO `11may_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2363, 'Macsime ', 1, 0, 0, 1000, 17.50, 9.00, 20.00, 11.00, 15.50, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724550),
(2364, 'Artcher', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724550),
(2365, 'Analis', 1, 3134, 0, 1000, 19.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 5060, 0, 0, 0, 0, 0, 21724550),
(2366, 'Laao', 3, 46625, 4027, 6000, 18.50, 13.00, 35.00, 27.00, 10.50, 14.00, 20000, 0, 0, 441965, 98, 87, 167, 91, 0, 21735929),
(2367, 'Cathie', 1, 0, 0, 1000, 19.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724759),
(2368, 'Perry', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724764),
(2369, 'Buko', 1, 3134, 0, 1000, 12.50, 10.00, 9.00, 22.50, 17.50, 23.50, 0, 0, 0, 23342, 0, 0, 0, 0, 0, 21724767),
(2370, 'Tuditak', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724976),
(2371, 'Siez', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724977),
(2372, 'Lelogasteban', 1, 0, 0, 1000, 14.50, 17.00, 9.00, 17.00, 14.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724977),
(2373, 'Socatoa', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724978),
(2374, 'Actartus', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21725934),
(2375, 'Metolugeth', 1, 3260, 0, 1000, 16.50, 10.50, 12.50, 18.50, 12.50, 16.50, 0, 0, 0, 3243, 0, 0, 0, 0, 0, 21725934),
(2376, 'Mareik', 1, 4314, 16, 1000, 16.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 2036, 0, 0, 0, 0, 0, 21725934),
(2377, 'Elferth', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21725934),
(2378, 'Physsiallis', 2, 51638, 1573, 3000, 19.00, 18.00, 14.00, 20.00, 16.00, 16.00, 10000, 0, 0, 214250, 36, 40, 42, 40, 0, 21735045),
(2381, 'Netenmeth', 3, 26205, 4144, 6000, 25.00, 16.50, 16.50, 16.00, 18.50, 26.50, 19714, 0, 0, 12, 29, 82, 116, 37, 0, 21736446),
(2382, 'BouboulX', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730959),
(2383, 'Kylars', 1, 0, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730959),
(2384, 'Enylak', 1, 0, 0, 1000, 13.50, 10.00, 18.00, 15.50, 13.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730959),
(2385, 'Viviano', 3, 19957, 3142, 6000, 29.00, 28.00, 19.00, 13.50, 16.00, 14.50, 10000, 0, 0, 2212, 34, 32, 35, 33, 0, 21736393),
(2386, 'Jeminy', 1, 3134, 0, 1000, 18.00, 10.50, 12.50, 18.00, 11.50, 17.50, 0, 0, 0, 40430, 12, 12, 12, 12, 0, 21730959),
(2387, 'Scofid', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730959),
(2388, 'Legovan', 1, 0, 0, 1000, 17.00, 17.00, 13.50, 16.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730962),
(2389, 'Antikor', 1, 3197, 0, 1000, 16.50, 10.50, 15.50, 10.50, 12.50, 25.50, 0, 0, 0, 136, 4, 4, 4, 4, 0, 21730962),
(2391, 'Elarinya', 1, 3723, 0, 1000, 12.50, 10.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5994, 8, 8, 8, 8, 0, 21730962),
(2392, 'Naryutogd', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730964),
(2393, 'Sartrox', 1, 0, 0, 1000, 19.00, 9.50, 14.50, 9.00, 17.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730964),
(2394, 'Spocke', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730964),
(2395, 'Karedoca', 3, 14016, 3358, 6000, 63.00, 26.00, 18.50, 20.00, 15.00, 13.50, 0, 0, 0, 1811, 8, 15, 6, 19, 0, 21736602),
(2397, 'Anthonytouti', 1, 0, 0, 1000, 24.00, 17.00, 16.00, 7.50, 13.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730965),
(2398, 'Saltoes ', 1, 0, 0, 1000, 19.00, 9.50, 14.50, 9.00, 17.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730965),
(2399, 'Nys&eacute;rine', 3, 39430, 3086, 6000, 17.50, 24.00, 14.00, 21.00, 22.50, 13.50, 14488, 0, 0, 9884, 65, 26, 22, 27, 0, 21736167),
(2400, 'D&eacute;ductance', 1, 3134, 0, 1000, 20.50, 8.50, 15.00, 10.00, 13.00, 20.00, 0, 0, 0, 22202, 0, 0, 0, 0, 0, 21733351),
(2401, 'Toroc', 1, 4133, 718, 1000, 20.00, 19.00, 14.50, 16.00, 13.00, 12.50, 8939, 0, 0, 45792, 14, 16, 11, 12, 0, 21736422);



CREATE TABLE `11may_guildes_2` (
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

INSERT INTO `11may_guildes_2` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Disciples de l`Eternel', 'Thassopole', 8, 21447086, 'http://www.linkup-coaching.com/files/image/icones/const.jpg', 'Zar`Kull', 'L\'Eternel sur le trône à la place de l\'empereur fit appeler sa garde rapprochée. Les Disciples rentrèrent un à un dans la pièce et s\'agenouillèrent devant leur divinité. 

C\'est à la suite d\'une longue et parfois pénible reconquête qu\'ils forgèrent ensemble dans le sang leur nouveau royaume. 

L\'Eternel transmis à nouveau ses paroles à chaque Disciple:

"Vous êtes braves, vous vous distinguez par votre efficience, vous méritez donc ce que l\'on a conquis.
Ainsi je vous confie maintenant une région à gérer pour qu\'elle soit sous l\'autorité de l\'Eternel et non pas qu\'elle cède à la rébellion ou la violence.
Vous rencontrerez en face de vous sûrement quelques récalcitrants.
Il sera de votre devoir d\'y remédier." 


Les disciples prirent congés sur ordre de l\'Eternel. Chacun avait donc de nouvelles responsabilités qu\'ils se devaient d\'assumer...', 'Cette armada a pour but de défendre l\'Eternel jusqu\'à ce qu\'il soit défait. L\'Eternel possède dés à présent toutes les régions de Kalamaï et entend ainsi répondre des agissements de chaque groupuscule tel qu\'il soit en ses terres assouvies. ', 'Se conformer à l\'organisation interne et ludique de l\'armada.
Ne pas salir limage de l\'Eternel en public.
Respecter les stratégies internes.
Faire preuve de créativité pour embellir celles-ci.', 380274, 'http://'),
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
', 18470, 'http://vae-victis.forumgratuit.fr/forum.htm'),
(3, 'Les Voyageurs de Kalamaï', 'Thassopole', 10, 21465352, 'http://img195.imageshack.us/img195/9028/voyageurs.gif', 'Lumy', 'La complainte des Voyageurs


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
 
Tout Voyageur peut se fixer un ou plusieurs objectifs. Tous alors feront leur possible pour l’aider à les réaliser.', 310290, 'http://manticore.forumactif.com/hall-d-entree-f58/la-complainte-des-voyageurs-t1312.htm'),
(4, 'Luminas', 'Etimnon', 8, 21465859, 'http://nsa19.casimages.com/img/2010/10/24/101024110430599849.jpg', 'Tiram', 'Une fois encore, ils étaient venus tout ravager. Partout des destructions, la nature souillée, la puanteur de la mort et les cris des agonisants...

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
- toujours garder un bon esprit dans le jeu.', 259097, 'http://luminas.forumpro.fr/forum.htm'),
(5, 'L`Union des Titans', 'Prévèze', 1, 21479735, 'http://img183.imageshack.us/img183/5403/orcs56pw4.jpg', 'Vezk', 'L’aube enfin se lève..
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

*Prenez Garde ! Même un petit Gnome marchand, peut révéler un Barbare buveur de Sang !', 29757, 'http://union-titans.forum-gratuit.net/'),
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
- Fair play, bonne entente, et cohésion sont requis afin d’être les plus performants possibles. ', 131520, 'http://scribes.forumgratuit.fr'),
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
Concevoir la victoire, la défaite et les interactions entre joueurs en général en termes ludiques.', 226086, 'http://marcheursdesombres.forumgratuit.fr/forum.htm'),
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

5. Tout membre est tenu de s’impliquer un maximum pour notre cause.', 79516, 'http://pourunempireneuf.forumactif.net/forum'),
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

Toute demande d``adhésion devra se faire sur le forum ou par message à Ashinseika ou autre responsable.', 177591, 'http://do-lamainpourpre.xooit.fr'),
(10, 'Le cercle des Monarques', 'Vénopole', 7, 21652976, 'http://mythologica.fr/medieval/pic/arthur2.jpg', 'Lyonis', ' Aujourd’hui se tint une nouvelle réunion du cercle des monarques. Ce cercle fut créé par trois rois dans un unique but, vaincre l’Ennui. L’Ennui tenace et fourbe, qu’ils enduraient jour après jour, durait depuis qu’ils étaient montés sur le trône, remplaçant leurs défunts pères. En effet, ils n’avaient rien à faire en tant que roi : toutes les affaires de leurs royaumes étaient gérées par des fonctionnaires très compétents. Les finances étaient bonnes, les rentrées d’argent régulières. La police et la milice remplissaient à merveille leur rôle, tant et si bien que le peuple se tenait à carreau, pas de révolte à mater, pas de brigands à jeter au cachot, pas un meurtrier à écarteler en place publique ni même un voleur de poule à mettre au pilori. Pas plus que de défendre terre à défendre, car leur voisins étaient tous respectables et incroyablement loyaux. Bref, les monarques s’ennuyaient fermement, à la tête de leur royaume où tout allait si bien. Ils avaient donc décidé de créer ce club, le cercle des monarques, qui avait pour but de trouver une occupation durable à ces trois rois en manque de sensations fortes. Mais terrasser le royal Ennui n’est pas chose aisée. Ils s’étaient réunis maintes fois, et avaient essayé moult activités : le bridge, la pétanque molle, un jeu elfe connu sous le nom de Skrabeule, les échecs orques, qui consistes à faire avaler le plus grand nombre de pièce à l’adversaire, des sauts en parachutes du haut du donjon, des courses de gnomes en sac, saute-mouton, un cache-cache géant, et même un jeu étrange où le but est de toucher les autres puis de monter sur les meubles. Ils organisèrent des tournois de joute, de tir à l’arc, des combats de gladiateurs, mais rien ne put les distraire bien longtemps. Ils avaient même tenté d’organiser des révoltes paysannes, en soudoyant certains chefs de villages, mais ces derniers avaient tous refusé. Ils avaient tenté d’importer des brigands d’autres contrées, mais à peine étaient-ils arrivés sur leurs terres, qu\'ils furent interceptés par les miliciens et reconduits à la frontière. Malgré tous leurs efforts, ils ne parvinrent à terrasser l’Ennui. 
 Mais ce soir, ils trouvèrent LA solution. Ce serait la fin de l’Ennui. Voilà ce qu\'il fallait : partir en guerre contre d’autres contrées, à la tête de leurs armées belles et bien nourries. Et pour en faire profiter tout le monde, ils envoyèrent une missive à tous les Monarques Vénopoliens, afin de les appeler à vaincre le royal Ennui !
', 'Vaincre le Royal Ennui, en rassemblant tous les monarques de Vénopole dans de multiples et joyeuses croisades. Les vétérans comme les débutants seront accueillis à bras ouverts !

Terrasser sous toutes ses formes le Royal Ennui, dans la joie et la bonne humeur.

Noyer le Royal Ennui dans des tonneaux de vin et de bière.

', 'Participer un peu sur forum, poster ses rapports de combats.

Etre présents au réunion du cercle.

Rester poli et courtois.

', 229981, 'http://lecercledesmonarques.forumgratuit.fr/'),
(11, 'Confrérie des Ombres', 'Prévèze', 14, 21680287, 'http://api.ning.com/files/D58P6DfhWBW6IT0mWlg15kugwGOAZctT4*jzHcV7jAqHlZqfJY5dHp0yjnc6uMQHlBFl2WBIS8oWmD2C7hZ0wXBLn9u77*fc/Vampires12.jpg', 'Artaxxas', 'Il faut savoir que le nosferatu, communément appelé vampire, ne meurt pas, comme l``abeille, une fois qu``il a fait une victime. Au contraire, il n``en devient que plus fort ; et, plus fort, il n``en est que plus dangereux . Il se sert de la nécromancie et de la démonologie, arts qui, comme l``indique l``étymologie des deux mots, consistent à évoquer les morts pour deviner l``avenir, à les ranimer et à contrôler les démons. Tous les morts dont il s``approche sont donc à ses ordres. Il peut, avec pourtant des réserves, se transformer en une énorme chauve-souris, et se déplacer plus vite qu``un étalon au galop; il a même le pouvoir, dans une certaine mesure, de se rendre maître des éléments : la tempête, le brouillard, le tonnerre, et de se faire obéir de créatures inférieures, telles que le rat, le hibou, la chauve-souris, la phalène, le renard et le loup ; il peut se faire grand et se rapetisser et, à certains moments, il disparaît exactement comme s``il n``existait plus. Nous, les vampires, venons des ténèbres, il est dans notre nature de répandre le mal et la peur. C``est ce que nous avons fait à de nombreuses reprises dans l``empire de Kalamai . Hélas, nous avons été vaincus et affaiblis et notre plan de domination sur toutes les terres connues a échoué. Mais aujourd``hui , après avoir patiemment reconstitué nos forces pendant des siècles, nous sommes enfin prêts à annihiler tous nos ennemis et à prendre la place qui nous reviens de droit. Aucune race ne pourra nous arrêter et même les pouvoirs des anciens sont dérisoires face aux forces que nous ont accordé nos dieux noirs. Nous nous répandons partout et la Corporation des Arcanes, la seule qui ait la puissance pour nous contrer, est rongée de l``intérieur par nos agents. Aucun Dante ne viendra vous sauver, servez les ténèbres ou vos âmes seront torturées pour l``éternité et votre sang abreuvera à jamais notre soif insatiable. Toutefois, nos dissensions internes ont causé jadis notre perte c``est pourquoi les vampires et leurs alliés ténébreux se sont réunis dans dans une confrérie : la Confrérie des Ombres . Même nos amis tremblent à l``idée de prononcer le nom funeste de notre armada...', 'Notre but ultime est la domination éternelle des Ténèbres sur l``empire de Kalamai et toutes les terres connues, les impurs doivent adorer les dieux noirs .', '-Premier commandement : 
A ton chef tu obéiras et les officiers tu suivras sans broncher 


-Deuxième commandement :
Tes frères tu respecteras et aideras 


Troisième commandement :
A la vie commune tu participeras de façon régulière en consultant et en participant aux discussions 


Quatrième commandement :
Tes ennemis tu égorgeras et pilleras sans te poser de question


La règle ultime est tuer ou être tué !
', 274309, 'http://do-shadow-lords.xooit.fr');



CREATE TABLE `11may_guerres_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

INSERT INTO `11may_guerres_2` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
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

Pliez vous à l`Eternel.', 'Les Disciples de l`Eternel', 21660911, 223502, 103751, 21677092, 156886, 172079, 'xp', 50000, 'nbrvict', 50, 'or', 1000000, 'AND', 'Butin total', 1055671, '', 0, '', 0, '', '', 45, 3, 11, 32, 47.5339387974, 36.0092867318, 55.6230683117, 29.2875626308, 52739, 27106, 672809, 913384, 229418, 101807, 120984, 56134, 79008, 41892, 9.18570225878, 0, 1012758, 869057, 784, 1075, 'Sycomore', 'Tiram', 4819, 1220, 'Tiram', 'Sycomore', 0, '|Zar`Kull|', ''),
(15, 'guerre', 'termine', '', 'La Main Pourpre', 'Le cercle des Monarques', '', '', 'Le royal ennemie se taira le temps de cette bataille, l`ennuie nous a gagner, nous le chassons ainsi, et nous ne nous retiendrons pas de vous chasser vous aussi.', 'La Main Pourpre', 21663114, 91251, 116753, 21681012, 144641, 191078, 'pertePuiss', 1500000, 'nbrvict', 50, '', 0, 'AND', 'Butin total', 1749711, '', 0, '', 0, '', '', 56, 7, 9, 52, 54.7829990545, 60.2398562691, 56.9505808593, 58.7519359693, 85726, 57472, 1100705, 1691343, 258579, 429565, 162496, 160650, 109961, 108751, 4.86533161769, 13.3071345812, 1904305, 1498516, 861, 6545, 'Ashinseika', 'Alrik', 9442, 725, 'Alrik', 'Ashinseika', 0, '|Jaeregan|', ''),
(16, 'guerre', 'encours', '', 'La Main Pourpre', 'Pour un Empire Neuf', '', '', 'Dies iræ, dies illa,
Solvet sæclum in favílla

"Jour de colère, que ce jour là
Où le monde sera réduit en cendres,"

Les Ombres de la Main Pourpre vont venir vous cueillir.', '', 21690429, 125625, 100695, 0, 0, 0, 'nbrvict', 45, 'pertePuiss', 1500000, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 51, 17, 2, 18, 63.424533075956, 16.308937698936, 49.418067600356, 29.469800240145, 83456, 78287, 1565879, 1334358, 430917, 110569, 180684, 96340, 108560, 58009, 8.4506670169757, 6.1231298778999, 1363264, 1044193, 1920, 1543, 'Eragole', 'Myos', 786, 9111, 'Eragole', 'Myos', 0, '|L&eacute;nnih|', '|Essyr|'),
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
(22, 'guerre', 'encours', '', 'Confrérie des Ombres', 'Pour un Empire Neuf', '', '', 'La Main Pourpre est notre allié , votre sang doit donc couler !
De plus vous avez pactisé avec le Cercle des Monarques nos pires ennemis , c`est une provocation intolérable ! Que les ombres vous engloutissent !', '', 21717836, 240807, 83725, 0, 0, 0, 'nbrvict', 75, 'xp', 75000, 'or', 300000, 'AND', '', 0, '', 0, '', 0, '', '', 21, 11, 1, 18, 32.849343941886, 10.956858936829, 23.09499985799, 17.6354788651, 33057, 40377, 1079137, 443470, 135424, 95235, 60095, 39500, 43840, 26212, 4.5484167274673, 2.742378145988, 447995, 611672, 651, 263, 'Harnas', 'Myos', 2423, 12064, 'Myos', 'Myos', 0, '', ''),
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
(25, 'guerre', 'encours', '', 'Les Disciples de l`Eternel', 'La Main Pourpre', '', '', 'Les Disciples en pleine méditation journalière reçurent un message télépathique de l`Eternel. 

"Le chiffre 6 - La Main Pourpre" 

Ils se mirent tous en route vers l`Outre-Mer', '', 21736146, 319350, 175264, 0, 0, 0, 'xp', 75000, '', 0, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 6, 0, 0, 0, 6.4304510642638, 0, 6.4304510642638, 0, 12211, 1254, 43552, 157177, 38560, 0, 30905, 0, 16239, 0, 0, 0, 336524, 0, 356, 0, 'Zar`Kull', 'Anadyomene', 3820, 894, 'Zar`Kull', 'Zar`Kull', 0, '', '');



CREATE TABLE `11may_joueurs_bonus_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1084 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1084 ;

INSERT INTO `11may_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2, 'Alumdil', 2, 2, 0, 0, 0, 0, 4, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21491787, 0, 87, 118, 71445, 0, 0, 1, 30, 30, 1, 1, 31, 0, 0, 20, 0, 0, 0),
(3, 'Vibralea', 0, 20, 35, 6, 65, 84, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 175, 23, 102127, 0, 0, 0, -1, -1, 1, 1, 12, 0, 0, 6, 7, 6, 2),
(5, 'Dijun', 18, 35, 93, 96, 30, 101, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21451213, 0, 190, 138, 364929, 0, 0, 1, -1, -1, 1, 0, 18, 1, 0, 10, 3, 0, 10),
(13, 'Aleksander', 130, 91, 75, 58, 42, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443972, 0, 201, 346, 252111, 0, 0, 0, 50, 50, 0, 0, 31, 18, 2, 4, 0, 4, 0),
(19, 'Gorak', 36, 12, 31, 138, 32, 131, 11, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21456808, 0, 183, 316, 473567, 0, 0, 0, 30, 30, 1, 1, 47, 0, 1, 30, 0, 0, 1),
(36, 'Cl&eacute;mentine', 115, 29, 86, 91, 33, 0, 1, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21444566, 0, 241, 386, 235358, 0, 0, 0, 50, 50, 1, 0, 42, 0, 0, 36, 0, 1, 0),
(43, 'Mund', 54, 109, 7, 65, 46, 0, 0, 50, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21445805, 0, 160, 176, 357466, 0, 0, 0, 60, 90, 1, 0, 36, 15, 1, 3, 0, 2, 0),
(45, 'Dro&iuml;n Pierre de Feu', 197, 130, 133, 58, 22, 0, 0, 80, 80, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21447100, 0, 259, 391, 304376, 0, 0, 0, -1, -1, 1, 0, 2182, 0, 3, 24, 0, 0, 5),
(47, 'Agradok', 30, 22, 77, 133, 70, 356, 6, 80, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443814, 0, 114, 268, 272427, 0, 0, 0, 10, 20, 1, 1, 197, 0, 0, 14, 0, 0, 19),
(48, 'Harkazam', 30, 40, 10, 21, 28, 49, 0, 100, 100, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21446781, 0, 320, 491, 450541, 0, 0, 1, -1, -1, 1, 1, 9, 0, 0, 16, 0, 0, 0),
(53, 'Nak`Amnar', 20, 45, 66, 36, 14, 0, 1, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21477157, 0, 229, 232, 224303, 0, 0, 0, 20, 50, 0, 0, 13, 5, 4, 10, 0, 2, 4),
(58, 'Tiram', 36, 23, 35, 3, 34, 147, 5, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21443611, 0, 285, 400, 275507, 0, 0, 0, 40, 50, 1, 0, 45, 0, 0, 10, 19, 4, 0),
(60, 'Filsigur', 118, 123, 36, 77, 96, 41, 2, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21465204, 0, 409, 463, 496634, 0, 0, 0, -1, -1, 1, 1, 302, 0, 0, 1, 14, 0, 12),
(67, 'Cyrielle', 22, 24, 2, 12, 0, 14, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448252, 0, 51, 251, 127864, 0, 0, 0, 50, 50, 0, 1, 16, 0, 5, 0, 5, 0, 1),
(68, 'Caline', 36, 22, 0, 121, 139, 343, 5, 50, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21713634, 0, 153, 276, 427568, 0, 0, 1, 30, 30, 1, 0, 66, 5, 0, 6, 3, 6, 15),
(69, 'Kylar des Ombres', 139, 176, 101, 101, 51, 6, 1, 90, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21449925, 0, 200, 350, 668585, 0, 0, 1, -1, -1, 1, 1, 124, 0, 0, 21, 0, 0, 0),
(70, 'Phylas', 163, 129, 20, -8, 86, 28, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21445208, 0, 291, 340, 321900, 0, 0, 0, 50, 50, 1, 0, 15, 11, 0, 24, 0, 0, 0),
(73, 'Philego Rah', 110, 81, 26, 28, 5, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21464125, 0, 198, 240, 205869, 0, 0, 0, -1, -1, 1, 1, 1, 9, 0, 11, 0, 0, 0),
(76, 'Katrickan', 142, 82, 15, 52, 85, 28, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21444256, 0, 201, 315, 271349, 0, 0, 0, 20, 30, 0, 0, 12, 11, 0, 9, 1, 3, 3),
(78, 'Athanase', 69, 65, 54, 74, 17, 6, 2, 70, 70, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21446662, 0, 200, 294, 510538, 0, 0, 0, -1, -1, 1, 1, 20, 0, 6, 3, 0, 0, 13),
(84, 'Sycomore', 137, 101, 115, 16, 33, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21454147, 0, 350, 278, 302267, 0, 0, 0, 30, 30, 0, 0, 40, 17, 2, 8, 0, 3, 0),
(95, 'Irkos', 4, 0, 10, 40, 54, 21, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21454100, 0, 129, 157, 205312, 0, 0, 1, -1, -1, 1, 0, 17, 1, 4, 10, 0, 7, 1),
(96, 'Alcyban', 0, 45, 3, 31, 43, 258, 3, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21465344, 0, 189, 84, 259767, 0, 0, 0, 30, 70, 0, 0, 15, 0, 0, 1, 22, 1, 0),
(98, 'Mayssi', 30, 0, 0, 83, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21454203, 0, 220, 181, 237560, 0, 0, 0, 40, 40, 0, 0, 4, 9, 10, 2, 0, 3, 1),
(101, 'Hulricht', 100, 26, 103, 58, 11, 0, 2, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21444031, 0, 231, 383, 307708, 0, 0, 1, 40, 40, 0, 0, 32, 27, 0, 0, 0, 0, 0),
(104, 'Lumy', 51, 34, 80, 50, 16, 0, 0, 100, 80, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21445298, 0, 170, 90, 201747, 0, 0, 0, 20, 20, 0, 0, 2, 9, 0, 2, 0, 0, 0),
(105, 'Agrias', 29, 34, 33, 14, 78, 91, 9, 80, 70, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21444319, 0, 281, 32, 155295, 0, 0, 1, -1, -1, 0, 0, 143, 0, 0, 0, 28, 0, 0),
(108, 'Ladanian', 41, 53, 28, 0, 25, 0, 1, 80, 30, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21447068, 0, 297, 358, 326895, 0, 0, 1, -1, -1, 0, 0, 0, 10, 3, 8, 0, 0, 0),
(111, 'Galahay', 33, 0, 50, 0, 30, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21519008, 0, 182, 290, 38584, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 12, 2, 0, 0),
(112, 'Vrock', 30, 60, 91, 6, 12, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21507658, 0, 473, 131, 188416, 0, 0, 0, -1, -1, 1, 1, 3, 5, 8, 4, 0, 0, 0),
(113, 'Schlemm', 152, 111, 80, 50, 53, 0, 0, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21444383, 0, 337, 360, 213248, 0, 0, 0, 10, 20, 1, 0, 15, 0, 0, 38, 0, 0, 0),
(115, 'Tylert', 41, 10, 0, 0, 23, 0, 0, 70, 20, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21446749, 0, 135, 195, 166367, 0, 0, 0, -1, -1, 1, 1, 5, 0, 0, 20, 0, 0, 0),
(118, 'Liamalika', 1, 0, 30, 0, 0, 2, 0, 100, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447206, 0, 143, 121, 206282, 0, 0, 1, -1, -1, 1, 1, 4, 4, 5, 0, 6, 1, 0),
(119, 'Fonua', 72, 70, 60, 12, 36, 6, 0, 80, 90, 1, 'République', 'Thassopole', '', 'Aucune', 21736411, 0, 201, 277, 637959, 0, 0, 1, -1, -1, 0, 0, 21, 0, 7, 11, 0, 0, 0),
(120, 'Zanckten', 13, 43, 40, 85, 28, 27, 0, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21479426, 0, 179, 139, 251536, 0, 0, 1, -1, -1, 1, 0, 2, 2, 6, 3, 4, 1, 6),
(121, 'Dartoil', 4, 4, 0, 1, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21445162, 0, 88, 57, 356495, 0, 0, 0, -1, -1, 1, 1, 6, 10, 0, 0, 0, 0, 0),
(124, 'Kayel', 15, 12, 2, 0, 6, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21456454, 0, 195, 289, 293730, 0, 0, 0, -1, -1, 1, 1, 10, 20, 0, 1, 0, 0, 0),
(140, 'Zronn', 11, 18, 109, 57, 119, 60, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 223, 157, 131269, 0, 0, 0, -1, -1, 1, 0, 34, 0, 0, 25, 1, 2, 0),
(145, 'Ordak', 245, 140, 40, 0, 104, 28, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21454257, 0, 374, 406, 415054, 0, 0, 0, -1, -1, 1, 1, 63, 0, 0, 1, 0, 29, 0),
(146, 'Bartor', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21475215, 0, 107, 84, 58859, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 12, 0, 0, 0),
(154, 'Ghassen', 14, 0, 10, 0, 6, 130, 0, 80, 60, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21460032, 0, 298, 91, 217814, 0, 0, 0, 30, 60, 0, 0, 11, 0, 0, 22, 0, 0, 0),
(180, 'Lydian', 6, 2, 0, 1, 0, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 171, 548, 418049, 0, 0, 0, -1, -1, 1, 1, 3, 1, 12, 0, 1, 0, 0),
(189, 'Braal', 104, 80, 15, 0, 22, 0, 0, 100, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21471564, 0, 84, 135, 320155, 0, 0, 1, -1, -1, 1, 1, 7, 4, 1, 6, 0, 4, 0),
(191, 'Gwenlf', 37, 60, 55, 6, 44, 31, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21562350, 0, 100, 370, 871478, 0, 0, 0, -1, -1, 1, 1, 43, 1, 5, 10, 1, 0, 2),
(239, 'Demetron', 3, 0, 3, 0, 15, 21, 0, 80, 30, 1, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21460075, 0, 88, 149, 341944, 0, 0, 1, -1, -1, 1, 0, 21, 0, 0, 0, 16, 0, 0),
(240, 'Myos', 66, 12, 60, 51, 95, 77, 3, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21514917, 0, 147, 106, 250392, 0, 0, 0, -1, -1, 0, 0, 9, 0, 0, 14, 0, 14, 0),
(250, 'Vezk', 96, 59, 30, 0, 3, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21464819, 0, 147, 272, 88981, 0, 0, 0, -1, -1, 1, 0, 0, 12, 7, 1, 0, 0, 0),
(253, 'Aldeas', -4, 0, 43, -7, 118, 182, 0, 80, 70, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21465596, 0, 227, 99, 137576, 0, 0, 0, 20, 50, 1, 0, 12, 0, 0, 4, 14, 5, 0),
(255, 'Kabidoui&iuml;e', 13, 10, 32, 0, 0, 0, 0, 100, 90, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21468190, 0, 88, 136, 274346, 0, 0, 0, -1, -1, 1, 1, 6, 2, 1, 8, 2, 1, 1),
(271, 'Agranos', 138, 47, 94, 17, 23, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21468393, 0, 199, 185, 185548, 0, 0, 0, -1, -1, 1, 1, 0, 5, 6, 8, 0, 2, 1),
(285, 'Nebkan', 116, 182, 89, 108, 43, 0, 0, 60, 30, 0, 'République', 'Thassopole', '', 'Aucune', 21472541, 0, 105, 268, 157911, 0, 0, 0, 60, 60, 1, 0, 366, 22, 1, 4, 0, 0, 4);INSERT INTO `11may_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(288, 'Gorano', 18, 30, 0, 0, 20, 70, 2, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21501876, 0, 48, 109, 511056, 0, 0, 0, -1, -1, 1, 1, 40, 2, 1, 4, 6, 0, 0),
(291, 'Ashinseika', 31, 10, -4, -10, 47, 0, 0, 70, 40, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21471696, 0, 177, 131, 269912, 0, 0, 0, -1, -1, 1, 0, 15, 2, 0, 2, 22, 1, 0),
(322, 'Yodine', 36, 11, 3, 18, 13, 31, 3, 70, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21485879, 0, 76, 178, 353090, 0, 0, 0, 40, 40, 1, 1, 30, 2, 8, 1, 5, 2, 3),
(324, 'Enilia', 15, 4, 17, -10, 15, 0, 0, 80, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21481029, 0, 111, 97, 234065, 0, 0, 0, -1, -1, 0, 1, 2, 0, 1, 16, 0, 0, 0),
(343, 'Dinendal Alcarin', 50, 67, -2, 13, 4, 0, 2, 70, 20, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21612053, 0, 150, 216, 142023, 0, 0, 1, 20, 70, 0, 0, 30, 4, 3, 1, 2, 3, 2),
(357, 'Azhaag', 19, 1, 36, -30, 116, 119, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21491361, 0, 230, 16, 165273, 0, 0, 0, 40, 60, 1, 0, 149, 0, 0, 0, 5, 16, 0),
(363, 'Essyr', 26, 10, 30, 0, 13, 14, 0, 100, 50, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21691175, 0, 85, 146, 388439, 0, 0, 1, -1, -1, 1, 1, 27, 8, 1, 1, 1, 3, 0),
(382, 'Elm', 146, 117, 101, 143, 50, 0, 0, 90, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21501702, 0, 229, 130, 372435, 0, 0, 0, 10, 60, 1, 0, 86, 19, 4, 30, 0, 0, 0),
(386, 'Magax', 16, 5, -6, 50, 86, 250, 3, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21725867, 0, 348, 98, 228894, 0, 0, 0, 40, 40, 0, 0, 32, 0, 0, 0, 0, 29, 0),
(387, 'Lirielle', -4, 0, 18, 54, 94, 76, 0, 100, 30, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21500457, 0, 131, 71, 161077, 0, 0, 1, 10, 10, 0, 0, 12, 0, 0, 0, 10, 9, 0),
(389, 'Fletiaz', 6, 2, 0, 0, 5, 48, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21508084, 0, 50, 110, 141699, 0, 0, 0, -1, -1, 1, 1, 18, 0, 0, 0, 5, 0, 3),
(415, 'Arkatris', 117, 44, 122, 0, 15, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21525072, 0, 110, 121, 459246, 0, 0, 0, -1, -1, 1, 1, 126, 1, 23, 0, 0, 1, 0),
(419, 'Boone', 74, 29, 76, 14, 15, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21620133, 0, 153, 181, 196142, 0, 0, 1, -1, -1, 1, 0, 3, 19, 0, 5, 0, 0, 0),
(431, 'Meissner', 15, 94, 126, 36, 37, 0, 6, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21510468, 0, 227, 323, 188014, 0, 0, 1, -1, -1, 1, 0, 331, 25, 0, 0, 0, 0, 0),
(445, 'Hyke', 14, 10, 0, 0, 4, 95, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21544753, 0, 77, 126, 96487, 0, 0, 0, -1, -1, 0, 0, 16, 0, 0, 0, 17, 0, 0),
(449, 'Laethil', 227, 108, 111, 101, 123, 12, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21515791, 0, 283, 272, 468377, 0, 0, 0, 10, 20, 1, 0, 18, 30, 0, 6, 0, 0, 0),
(458, 'Mahrynn', 40, 74, 55, 0, 51, 54, 0, 100, 90, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21517587, 0, 134, 177, 459559, 0, 0, 0, -1, -1, 1, 0, 38, 9, 8, 0, 0, 1, 0),
(463, 'B&eacute;liaros', 69, 41, 98, 0, 22, 13, 4, 100, 10, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21594901, 0, 106, 144, 478235, 0, 0, 1, -1, -1, 0, 0, 17, 9, 0, 9, 0, 0, 4),
(474, 'Mal`hac', 20, 24, 26, 12, 0, 0, 1, 80, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21537542, 0, 63, 111, 354056, 0, 0, 0, 50, 50, 1, 1, 12, 1, 0, 9, 0, 0, 0),
(478, 'Tirandilis', 13, 28, 107, -10, 98, 220, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21523134, 0, 170, 83, 185805, 0, 0, 1, 30, 30, 1, 0, 5, 0, 0, 23, 0, 0, 0),
(485, 'Eleanora', 27, 28, -2, 54, 13, 50, 2, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21524785, 0, 89, 86, 385848, 0, 0, 1, -1, -1, 1, 1, 7, 3, 0, 1, 13, 1, 0),
(486, 'Zaseo', 91, 92, 66, 50, 12, 6, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21530422, 0, 182, 88, 300305, 0, 0, 0, -1, -1, 1, 1, 45, 23, 0, 0, 0, 0, 0),
(493, 'Belerion', 41, 36, 25, 18, 39, 60, 7, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 77, 170, 171004, 0, 0, 0, -1, -1, 1, 1, 19, 22, 0, 5, 0, 0, 0),
(504, 'Aldramech Sarabhan', 19, 15, 55, 43, 129, 122, 3, 100, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21530521, 0, 310, 119, 340700, 0, 0, 0, 20, 20, 0, 0, 107, 0, 0, 37, 0, 0, 0),
(513, 'Eranoth', 11, 0, 30, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21701829, 0, 64, 139, 339280, 0, 0, 0, -1, -1, 1, 1, 2, 1, 0, 2, 1, 3, 1),
(526, 'Celithrand', 34, 0, 30, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 52, 97, 57703, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 0, 3, 0),
(527, 'Darcia', 14, 0, 43, 3, 65, 59, 7, 100, 10, 1, 'République', 'Thassopole', '', 'Aucune', 21555178, 0, 201, 92, 381895, 0, 0, 1, 20, 50, 1, 1, 111, 1, 1, 5, 2, 5, 7),
(561, 'Kadavre', 24, 2, 0, 3, 3, 22, 0, 100, 10, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21618041, 0, 74, 80, 106062, 0, 0, 1, -1, -1, 0, 0, 1, 0, 0, 0, 0, 1, 0),
(564, 'Malikarn', 59, 77, 30, 40, 98, 30, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21578004, 0, 162, 96, 537529, 0, 0, 0, 30, 70, 0, 1, 5, 5, 5, 8, 1, 1, 0),
(565, 'Dalan', 171, 114, 190, 50, 22, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21550625, 0, 225, 160, 178663, 0, 0, 0, 20, 40, 1, 0, 4844, 11, 0, 18, 0, 3, 0),
(571, 'Bulrug', 61, 31, 15, 0, 15, 0, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 118, 105, 125613, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 17, 0, 0, 0),
(589, 'Han Bal', 104, 82, 47, 6, 42, 0, 2, 70, 60, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21560791, 0, 128, 84, 359280, 0, 0, 0, -1, -1, 1, 0, 86, 0, 0, 4, 0, 11, 0),
(596, 'Jacques Skellinou', 174, 113, 181, 58, 43, 0, 0, 90, 90, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21561737, 0, 276, 187, 321854, 0, 0, 1, 20, 30, 0, 0, 2805, 16, 0, 8, 0, 0, 8),
(601, 'Gael', 2, 4, 0, 0, 0, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21572149, 0, 50, 79, 151798, 0, 0, 1, -1, -1, 1, 1, 1, 8, 0, 0, 4, 0, 0),
(611, 'Marsys', 24, 22, 28, 0, 25, 22, 4, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21671807, 0, 53, 111, 495138, 0, 0, 1, -1, -1, 1, 1, 14, 5, 4, 4, 0, 0, 1),
(614, 'Bibble', 11, 0, -10, 12, 34, 0, 0, 80, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21646895, 0, 90, 100, 124561, 0, 0, 1, 30, 30, 0, 1, 0, 0, 1, 0, 11, 4, 0),
(623, 'Sartibule', 92, 69, 30, 0, 24, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21570665, 0, 96, 169, 84275, 0, 0, 0, -1, -1, 1, 1, 5, 0, 16, 6, 0, 0, 0),
(628, 'Oryanna', 62, 35, 41, 50, 26, 6, 5, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21575777, 0, 85, 18, 163920, 0, 0, 0, -1, -1, 1, 0, 4, 4, 0, 5, 0, 3, 0),
(638, 'Harnas', 21, 16, 11, 14, 48, 83, 2, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21653202, 0, 91, 49, 230609, 0, 0, 0, 10, 60, 0, 0, 72, 5, 0, 8, 7, 1, 0),
(643, 'Ordinn', 23, 78, 0, 12, 9, 64, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21589582, 0, 96, 64, 364042, 0, 0, 0, -1, -1, 1, 0, 12, 4, 5, 1, 11, 0, 1),
(644, 'Khiran', 37, 21, 14, 12, 8, 0, 1, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21575352, 0, 92, 139, 285482, 0, 0, 1, -1, -1, 1, 1, 14, 10, 5, 0, 0, 0, 0),
(654, 'Chitcat', 17, 4, 22, 0, 0, 6, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21713087, 0, 33, 62, 286606, 0, 0, 0, -1, -1, 1, 1, 3, 7, 1, 0, 2, 1, 0),
(655, 'Sansst', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21638383, 0, 0, 11, 8853, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(661, 'Gharnohk', 14, 39, 33, 3, 19, 79, 0, 70, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 104, 122, 262343, 0, 0, 1, 40, 40, 0, 0, 8, 7, 0, 1, 8, 0, 0),
(666, 'Yzeute', 21, 18, 2, 0, 17, 16, 0, 80, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21582721, 0, 69, 124, 541876, 0, 0, 0, -1, -1, 1, 1, 12, 3, 2, 1, 1, 3, 1),
(674, 'Onacona', 40, 40, 25, 6, 57, 55, 0, 60, 30, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21586310, 0, 266, 42, 153728, 0, 0, 0, 30, 30, 0, 0, 71, 11, 0, 0, 13, 0, 0),
(685, 'Zacharias', 153, 186, 11, 3, 77, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21589483, 0, 94, 73, 357416, 0, 0, 0, -1, -1, 1, 1, 40, 6, 7, 0, 0, 7, 0),
(700, 'Warenya Fahle', 6, 10, 3, 0, 21, 27, 2, 70, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21591208, 0, 26, 138, 1113613, 0, 0, 0, -1, -1, 1, 1, 64, 2, 4, 0, 3, 4, 2),
(703, 'Azarath', 33, 2, 30, 50, 4, 0, 0, 70, 30, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21591206, 0, 61, 60, 222049, 0, 0, 0, 30, 30, 1, 1, 2, 5, 0, 5, 0, 1, 5),
(706, 'Hakra', 30, 44, 0, 52, 0, 0, 4, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 57, 72, 175309, 0, 0, 0, -1, -1, 1, 1, 6, 12, 0, 0, 0, 0, 0),
(707, 'Kograh', 14, 32, 8, 181, 40, 60, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21595170, 0, 95, 31, 284908, 0, 0, 1, 40, 40, 0, 0, 393, 0, 0, 0, 13, 4, 0);INSERT INTO `11may_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(720, 'Burgrok Brise`Fer', 128, 117, 153, 59, 92, 0, 0, 70, 40, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21598050, 0, 89, 66, 460133, 0, 0, 0, -1, -1, 0, 0, 26, 4, 1, 20, 0, 2, 0),
(731, 'Zoltan', 45, 59, 2, 0, 22, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21657917, 0, 147, 103, 272665, 0, 0, 0, -1, -1, 1, 1, 10, 2, 2, 8, 2, 0, 2),
(732, 'Gruck', 29, 30, 21, 3, 12, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21600474, 0, 61, 57, 442816, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 13, 0, 1, 0),
(733, 'Hijen', 73, 54, 58, 0, 16, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 92, 98, 144300, 0, 0, 0, 30, 40, 0, 1, 57, 0, 2, 14, 0, 0, 1),
(734, 'Jaeregan', 160, 29, 202, 24, 3, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21673210, 0, 263, 79, 216477, 0, 0, 0, 10, 30, 0, 0, 5, 0, 0, 37, 0, 0, 0),
(761, 'Yarl Baudig', 20, 18, 19, 50, 0, 14, 2, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21655186, 0, 61, 147, 355217, 0, 0, 1, 50, 90, 1, 1, 21, 1, 0, 4, 1, 5, 1),
(767, 'Kylordion', 96, 58, 78, 99, 10, 14, 2, 100, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21623926, 0, 135, 102, 376223, 0, 0, 0, 30, 40, 0, 1, 5, 6, 0, 13, 0, 0, 0),
(768, 'Tharoze', 2, 3, 0, 0, 0, 0, 0, 100, 100, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21613911, 0, 55, 65, 171870, 0, 0, 1, -1, -1, 1, 1, 2, 2, 2, 0, 3, 1, 1),
(771, 'Umassi', 41, 30, 55, 117, 80, 54, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21653003, 0, 159, 21, 148293, 0, 0, 0, 20, 20, 0, 0, 15, 0, 0, 0, 0, 21, 0),
(774, 'Treleg', 231, 300, -12, 0, 134, 0, 0, 100, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21613491, 0, 235, 45, 265703, 0, 0, 1, 20, 40, 0, 0, 29, 10, 8, 4, 0, 10, 0),
(777, 'Invoj', -6, 10, 18, 1, 58, 37, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21645750, 0, 127, 41, 183715, 0, 0, 1, 40, 80, 0, 0, 11, 0, 0, 0, 13, 0, 0),
(782, 'D&eacute;sacre', 96, 28, 103, 19, 0, 0, 3, 70, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616732, 0, 233, 51, 166850, 0, 0, 1, 10, 10, 1, 0, 176, 10, 0, 16, 0, 0, 0),
(784, 'Jade', -8, 0, 25, -7, 44, 76, 0, 80, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616851, 0, 130, 32, 110745, 0, 0, 0, 40, 40, 0, 0, 31, 0, 0, 0, 16, 0, 0),
(795, 'Halambare', 61, 49, 68, 11, 26, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21651549, 0, 119, 46, 259489, 0, 0, 0, 50, 50, 1, 1, 5, 0, 1, 0, 5, 0, 12),
(801, 'Belenora', 13, 8, 0, 35, 11, 63, 4, 50, 10, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21709248, 0, 79, 76, 390923, 0, 0, 0, 70, 70, 1, 1, 3, 9, 0, 0, 6, 0, 4),
(805, 'Prolor', 54, 64, 75, 0, 54, 6, 0, 60, 40, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21648907, 0, 220, 62, 141813, 0, 0, 0, 10, 50, 0, 0, 16, 11, 0, 5, 0, 1, 2),
(821, 'Solemyr', 29, 51, 16, 82, 0, 0, 1, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21699117, 0, 83, 61, 271687, 0, 0, 0, -1, -1, 1, 0, 8, 2, 0, 5, 0, 3, 2),
(822, 'Oedarn', 63, 49, 57, 16, 41, 0, 0, 60, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21629987, 0, 64, 45, 355076, 0, 0, 0, 10, 30, 1, 0, 20, 18, 1, 0, 0, 0, 0),
(829, 'Tiposa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 43, 39, 177601, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 7),
(846, 'Yeldierick', 128, 152, 3, 0, 114, 12, 2, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21654374, 0, 180, 50, 424196, 0, 0, 0, -1, -1, 1, 0, 101, 10, 7, 0, 0, 3, 0),
(848, 'Eragole', 17, 95, 0, 15, 34, 44, 0, 100, 10, 1, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21652883, 0, 136, 100, 355142, 0, 0, 1, -1, -1, 1, 1, 36, 0, 1, 2, 5, 6, 0),
(864, 'Storia', 0, 25, 30, 18, 31, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21647469, 0, 52, 40, 338132, 0, 0, 0, 40, 60, 0, 1, 178, 0, 0, 15, 0, 0, 1),
(874, 'Tankarllia', 50, 80, 0, 68, 43, 16, 0, 100, 90, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21650217, 0, 29, 38, 358331, 0, 0, 0, 20, 20, 0, 0, 13, 0, 3, 0, 0, 8, 0),
(878, 'Eladriel', 3, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21682672, 0, 23, 57, 104885, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 0, 0, 0),
(879, 'Grumpf', 4, 8, 0, 0, 4, 0, 0, 100, 100, 1, 'République', 'Thassopole', '', 'Aucune', 21683395, 0, 9, 17, 520188, 0, 0, 1, -1, -1, 1, 1, 9, 0, 0, 0, 0, 0, 8),
(880, 'Jijona', 23, 21, 47, 80, 0, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21655479, 0, 142, 95, 298287, 0, 0, 0, 30, 30, 0, 0, 732, 0, 0, 0, 0, 0, 27),
(882, 'Hezaram', 4, 11, 2, 1, 6, 0, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21673717, 0, 34, 37, 327424, 0, 0, 0, -1, -1, 1, 1, 0, 5, 0, 0, 0, 1, 1),
(884, 'Paaroxsizme', 3, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 46, 40, 294589, 0, 0, 0, -1, -1, 1, 1, 14, 3, 3, 0, 0, 0, 0),
(887, 'Ilarneek', 3, 8, 0, 0, 9, 6, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21656102, 0, 56, 36, 313834, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 2, 2, 1, 3),
(891, 'Mathor', 25, 25, -8, 0, 0, 0, 0, 90, 30, 1, 'République', 'Thassopole', '', 'Aucune', 21655916, 0, 81, 65, 579194, 0, 0, 1, -1, -1, 1, 1, 3, 3, 7, 0, 0, 0, 0),
(895, 'Gradhar', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21675703, 0, 37, 41, 54952, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(897, 'Brolleur', 0, 11, 11, 20, 59, 38, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 75, 47, 586912, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 3, 7, 3, 3),
(901, 'Z`arf D`Ibn B&auml;shici', 18, 39, 2, 3, 6, 14, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Le Concile d`Antion', 21661259, 0, 78, 48, 464646, 0, 0, 0, -1, -1, 1, 1, 0, 6, 1, 3, 0, 0, 0),
(903, 'Zar`Kull', 122, 58, 45, 0, 28, 13, 0, 80, 70, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21661713, 0, 150, 10, 225969, 0, 0, 1, 30, 60, 0, 0, 6, 14, 0, 0, 0, 0, 0),
(904, 'Griffith', 0, 0, 2, 1, 0, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21673228, 0, 51, 27, 39982, 0, 0, 0, -1, -1, 1, 0, 4, 0, 0, 0, 5, 0, 0),
(905, 'E&auml;nlys', 56, 27, 15, 0, 33, 12, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21683271, 0, 66, 70, 528807, 0, 0, 1, -1, -1, 1, 1, 5, 1, 3, 0, 5, 4, 0),
(906, 'Jaruleek', 19, 40, 24, 50, 36, 0, 0, 50, 90, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21662994, 0, 88, 71, 318143, 0, 0, 1, -1, -1, 1, 1, 0, 3, 3, 1, 2, 2, 1),
(909, 'Zasoum', 26, 2, 0, 3, 0, 14, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21665238, 0, 91, 39, 450482, 0, 0, 0, 70, 90, 1, 1, 0, 0, 7, 0, 0, 0, 0),
(911, 'Nathanaou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 11756, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(914, 'Masme', 19, 12, 50, 0, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21713277, 0, 31, 43, 470792, 0, 0, 0, -1, -1, 1, 1, 8, 5, 2, 1, 2, 1, 0),
(915, 'Karann', 94, 93, 26, 64, 25, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21662582, 0, 100, 89, 712963, 0, 0, 0, -1, -1, 1, 0, 33, 0, 3, 0, 0, 9, 0),
(919, 'Morphox', 4, 2, 32, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21707332, 0, 70, 46, 332832, 0, 0, 0, -1, -1, 1, 1, 0, 0, 5, 2, 0, 0, 0),
(923, 'Artatiss', 19, 31, 2, 26, 16, 16, 2, 90, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21713500, 0, 40, 56, 635336, 0, 0, 1, -1, -1, 1, 1, 78, 2, 0, 4, 0, 1, 0),
(925, 'Abranxas', 1, 12, 0, 3, 0, 2, 0, 70, 70, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21674528, 0, 57, 43, 406266, 0, 0, 1, -1, -1, 1, 1, 0, 1, 5, 0, 0, 0, 1),
(926, 'Zozofiit', 11, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 33, 14, 154065, 0, 0, 0, -1, -1, 1, 1, 0, 1, 4, 1, 1, 0, 0),
(938, 'Anadyomene', 0, 2, 0, 12, 20, 8, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'La Main Pourpre', 21670398, 0, 35, 26, 191321, 0, 0, 0, -1, -1, 1, 1, 12, 0, 0, 0, 0, 10, 0),
(944, 'Morgjin', 25, 30, 32, 101, 53, 19, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21677339, 0, 56, 14, 189025, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 11, 1, 0, 0),
(947, 'Gaoule', 3, 2, 30, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21674672, 0, 4, 43, 140557, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 5, 0, 0, 1),
(951, 'Kaya', 51, 57, 10, 50, 24, 16, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21675682, 0, 66, 43, 314351, 0, 0, 0, -1, -1, 1, 1, 6, 15, 0, 0, 0, 0, 0),
(952, 'Yglora', 58, 8, 143, 58, 6, 6, 0, 100, 70, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21677491, 0, 91, 20, 259676, 0, 0, 0, 20, 30, 0, 0, 1, 4, 0, 9, 0, 0, 0),
(953, 'Vaith', 125, 136, 94, 0, 9, 0, 7, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21678218, 0, 154, 17, 258553, 0, 0, 0, 10, 30, 0, 0, 825, 0, 0, 17, 0, 0, 0);INSERT INTO `11may_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(954, 'Elfredo', 14, 18, 0, 3, 7, 22, 0, 60, 100, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21679175, 0, 54, 51, 478575, 0, 0, 1, -1, -1, 1, 1, 4, 0, 4, 0, 2, 0, 1),
(955, 'Atalwatu', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 31, 37, 24497, 0, 0, 0, -1, -1, 1, 1, 1, 1, 0, 0, 3, 0, 0),
(962, 'Deinoforo', 33, 2, 0, 0, 0, 0, 0, 100, 100, 1, 'Despotisme', 'Naxos', '', 'Aucune', 21697461, 0, 19, 22, 52955, 0, 0, 1, -1, -1, 1, 1, 0, 2, 2, 0, 0, 0, 0),
(964, 'Morvox', 17, 10, 14, 3, 6, 0, 1, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21707381, 0, 73, 47, 597423, 0, 0, 0, -1, -1, 1, 1, 2, 3, 5, 0, 0, 1, 0),
(966, 'Aysa', 16, 2, 0, 12, 0, 14, 0, 90, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 141, 36, 337598, 0, 0, 0, -1, -1, 1, 1, 6, 0, 0, 1, 6, 0, 0),
(969, 'Artaxxas', 14, 28, 30, 0, 40, 0, 0, 50, 60, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21679703, 0, 87, 59, 429178, 0, 0, 0, -1, -1, 1, 1, 6, 5, 1, 0, 4, 1, 0),
(972, 'Teperek', 2, 2, 1, 12, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21698855, 0, 21, 52, 43476, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(973, 'Jinugra', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21708669, 0, 52, 29, 177900, 0, 0, 0, -1, -1, 1, 1, 0, 0, 4, 2, 0, 0, 0),
(978, 'Lyonis', 49, 27, 99, 6, 4, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21686016, 0, 104, 34, 244730, 0, 0, 0, 30, 50, 0, 0, 9, 0, 0, 18, 0, 0, 0),
(980, 'Theobald', 46, 42, 30, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21687007, 0, 45, 12, 113933, 0, 0, 0, 30, 50, 1, 1, 2, 0, 0, 11, 0, 0, 0),
(982, 'Belisama', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(984, 'Aries', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 14, 15433, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(985, 'Vordamass', 50, 42, 2, 0, 21, 6, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21697893, 0, 39, 20, 233391, 0, 0, 1, -1, -1, 1, 0, 5, 0, 0, 12, 0, 0, 0),
(986, 'Sanogoaen', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(987, 'Karkanos', 16, 2, 0, 3, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 47, 18, 190392, 0, 0, 0, -1, -1, 1, 1, 3, 2, 1, 0, 1, 0, 0),
(988, 'Dorunn', 23, 8, 16, 24, 13, 6, 0, 100, 10, 1, 'Oligarchie', 'Édhesse', '', 'Aucune', 21733636, 0, 31, 48, 454477, 0, 0, 1, -1, -1, 1, 1, 1, 3, 1, 1, 2, 0, 1),
(989, 'Darakim', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(990, 'Drizzit', 4, 2, 0, 3, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21713559, 0, 24, 13, 164431, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 3, 0, 0, 2),
(991, 'Grunwuck', 0, 0, 0, 0, 0, 23, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 60, 24, 279249, 0, 0, 0, -1, -1, 0, 0, 7, 5, 0, 1, 1, 0, 0),
(992, 'Unluck', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 19541, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(994, 'Trak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(996, 'Flatron', 3, 2, 0, 0, 0, 2, 0, 90, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 28, 17, 241410, 0, 0, 0, -1, -1, 1, 1, 0, 2, 5, 0, 0, 0, 0),
(997, 'Erelian', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(998, 'Arren', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23578, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(999, 'Parangloss', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21729137, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1000, 'Hogun', 2, 0, 0, 0, 0, 4, 0, 100, 100, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21707319, 0, 33, 16, 206805, 0, 0, 1, -1, -1, 1, 1, 2, 1, 5, 0, 1, 1, 0),
(1001, 'Bolas', 31, 20, 2, 12, 21, 16, 0, 100, 30, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21701567, 0, 40, 6, 205427, 0, 0, 0, -1, -1, 1, 0, 22, 6, 0, 3, 0, 0, 2),
(1002, 'Alrik', 3, 2, 50, 12, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21716315, 0, 48, 9, 185379, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 8, 0, 0, 0),
(1003, 'Rohnny', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 9024, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1004, 'Dji El', 7, 6, 2, 0, 0, 0, 0, 30, 80, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21716488, 0, 56, 15, 377615, 0, 0, 1, 50, 50, 1, 0, 0, 0, 0, 2, 0, 2, 2),
(1005, 'Il&eacute;anor', 3, 2, 0, 3, 0, 0, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 11, 293636, 0, 0, 1, -1, -1, 1, 0, 0, 0, 0, 7, 0, 0, 0),
(1007, 'Barleim', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23480, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(1008, 'Laprise', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1022, 'Nicolag', 0, 0, 0, 3, 20, 8, 0, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21707217, 0, 58, 21, 393393, 0, 0, 0, -1, -1, 1, 1, 0, 0, 6, 4, 0, 0, 0),
(1023, 'Nah&iuml;ada', 2, 0, 0, 12, 0, 4, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21708903, 0, 49, 9, 252669, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 1, 2, 1, 1),
(1024, 'Julian', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1025, 'Lhito', 43, 47, 30, 0, 10, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21707509, 0, 44, 4, 289982, 0, 0, 1, -1, -1, 0, 0, 0, 0, 11, 0, 0, 0, 0),
(1027, 'Looorie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1028, 'Shiver', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1029, 'Arthurion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1030, 'Argarock', 1, 0, 0, 0, 0, 2, 0, 70, 80, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21714485, 0, 0, 0, 25933, 0, 0, 1, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1031, 'Pelli', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1032, 'Amnesiar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1033, 'Megaboste', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1034, 'Y&egrave;menice', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1035, 'Snakel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1036, 'Van Brok', 20, 9, -10, 1, 0, 0, 2, 100, 60, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21717910, 0, 32, 5, 162271, 0, 0, 1, -1, -1, 1, 1, 0, 3, 1, 0, 1, 1, 0),
(1039, 'Delrion', 3, 2, 2, 0, 0, 32, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 52, 15, 248572, 0, 0, 1, -1, -1, 1, 1, 2, 2, 0, 0, 5, 0, 1),
(1042, 'Kihara', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21733425, 0, 26, 6, 154247, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 1, 0, 1),
(1044, 'Bargop', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23579, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(1045, 'Zhurion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11may_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1046, 'Kalma', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1047, 'Listade', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 1, 10, 42559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1048, 'Mabelrode', 3, 0, 0, 50, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Le cercle des Monarques', 21717529, 0, 43, 5, 241857, 0, 0, 0, -1, -1, 1, 0, 3, 4, 0, 0, 0, 0, 1),
(1049, 'Peronrar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1050, 'Aure', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1051, 'Morgan', 2, 11, 0, 3, 0, 0, 0, 60, 60, 0, 'Anarchie', 'Prévèze', '', 'Confrérie des Ombres', 21717559, 0, 33, 8, 156825, 0, 0, 1, 60, 60, 1, 1, 3, 1, 3, 0, 0, 0, 0),
(1052, 'Haschatansyx', 1, 0, 0, 0, 0, 2, 0, 80, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21717383, 0, 4, 17, 45752, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 1, 0, 0, 0),
(1054, 'Ulyseis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1055, 'Sylv', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1056, 'Starsa', 1, 0, 2, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21719104, 0, 22, 2, 305430, 0, 0, 0, -1, -1, 1, 1, 2, 0, 1, 0, 2, 2, 0),
(1057, 'Lollanth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1058, 'Orga', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 17, 2, 113346, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 1, 0, 0, 0),
(1059, 'Bonty', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1060, 'Ouhgloub', 4, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 3, 77717, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0),
(1061, 'Chiechinlla', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21726446, 0, 0, 0, 26135, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1062, 'Kiste', 3, 2, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21736162, 0, 30, 4, 157553, 0, 0, 1, 40, 40, 1, 0, 0, 1, 1, 1, 0, 0, 0),
(1063, 'Naeril', 2, 0, 0, 0, 0, 0, 0, 60, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21724588, 0, 34, 3, 156414, 0, 0, 1, -1, -1, 0, 0, 0, 0, 1, 1, 0, 2, 0),
(1064, 'Kyrr Norfilith', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 3, 8, 70710, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 2, 0, 0, 0),
(1065, 'Elya', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 1, 6, 49784, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 1, 0, 0),
(1066, 'Hanarion', 2, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21724612, 0, 3, 6, 88916, 0, 0, 0, 20, 20, 0, 0, 0, 3, 0, 0, 0, 0, 0),
(1067, 'Lunire', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1068, 'Lilian', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1069, 'Yuffiel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1070, 'Selonna', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23579, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1071, 'Carcane', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1072, 'Aeldrina', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21725128, 0, 24, 1, 68435, 0, 0, 0, 20, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1073, 'Spertacus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1074, 'Johnas', 2, 0, 1, 0, 0, 0, 0, 80, 80, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 21, 2, 105422, 0, 0, 1, -1, -1, 1, 1, 0, 0, 4, 0, 0, 0, 0),
(1075, 'Antedmor', 16, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 29, 1, 102977, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 1, 0, 0),
(1076, 'Narmacilis', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 11, 0, 66233, 0, 0, 1, 20, 40, 0, 0, 0, 0, 0, 3, 0, 0, 0),
(1077, 'Cerbeque', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 11, 0, 48378, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 1, 0, 0),
(1078, 'le Teuru', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1079, 'Viviano', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 4, 0, 39064, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1080, 'Nicorth', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 1, 45017, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1081, 'Kravel', 1, 0, 0, 0, 0, 2, 0, 60, 50, 1, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21733269, 0, 6, 2, 39898, 0, 0, 1, 60, 120, 1, 1, 0, 1, 0, 0, 1, 0, 0),
(1082, 'Kabumn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1083, 'Anthonytouti', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);



CREATE TABLE `11may_joueurs_heros_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1084 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1084 ;

INSERT INTO `11may_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(2, 'Alumdil', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Morte-Vie', 72522, 0, 0),
(3, 'Vibralea', 'Vampire', 'Psioniste', 'Pensée', 'Comtesse', 'de Limitra', 191012, 0, 0),
(5, 'Dijun', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Vigrid', 143397, 0, 0),
(13, 'Aleksander', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Dreize', 278223, 0, 0),
(19, 'Gorak', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de la Lumi&egrave;re', 171711, 0, 0),
(36, 'Cl&eacute;mentine', 'Homme', 'Barde', 'Chemins', 'Dame', 'de Nortika', 188932, 0, 0),
(43, 'Mund', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Lair&aelig;', 131908, 0, 0),
(45, 'Dro&iuml;n Pierre de Feu', 'Nain', 'Marchand', 'Chemins', 'Roi', 'des Mines de la Toura', 202510, 0, 0),
(47, 'Agradok', 'Infernal', 'Démonologiste', 'Maladie', 'Despote', 'de Kodarga', 157536, 0, 0),
(48, 'Harkazam', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'd`Aquinas', 150085, 0, 0),
(53, 'Nak`Amnar', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'd`Eliandir', 117629, 0, 0),
(58, 'Tiram', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Horem', 205695, 0, 0),
(60, 'Filsigur', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'd`Hogarsilgar', 218824, 0, 0),
(67, 'Cyrielle', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Cyriella', 62552, 0, 0),
(68, 'Caline', 'Elfe', 'Magicien', 'Pensée', 'Conseillère', 'de la Paix de L`Ame', 575087, 0, 0),
(69, 'Kylar des Ombres', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Caenaria', 230771, 0, 0),
(70, 'Phylas', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Darian', 174663, 0, 0),
(73, 'Philego Rah', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Pihanit', 121751, 0, 0),
(76, 'Katrickan', 'Célestial', 'Inquisiteur', 'Loi', 'Maîtresse', 'des Sept Duch&eacute;s', 132409, 0, 0),
(78, 'Athanase', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'd`Edal&eacute;e', 165535, 0, 0),
(84, 'Sycomore', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'du Bosquet Mill&eacute;naire', 230824, 0, 0),
(95, 'Irkos', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Kalferas', 166425, 0, 0),
(96, 'Alcyban', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Branderuz', 333677, 0, 0),
(98, 'Mayssi', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de M&eacute;none', 116666, 0, 0),
(101, 'Hulricht', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Solesmes', 185184, 0, 0),
(104, 'Lumy', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'd`Anwaman&euml;', 128785, 0, 0),
(105, 'Agrias', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Lormyr', 167536, 0, 0),
(108, 'Ladanian', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Tomlison', 160148, 0, 0),
(111, 'Galahay', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'd`Igounem', 61702, 0, 0),
(112, 'Vrock', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Mynrhyn', 122653, 0, 0),
(113, 'Schlemm', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Lacrymie', 156051, 0, 0),
(115, 'Tylert', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Bazanne', 168466, 0, 0),
(118, 'Liamalika', 'Elfe Noir', 'Nécromancien', 'Mort', 'Matriarche', 'de Silmarols', 106924, 0, 0),
(119, 'Fonua', 'Nain', 'Prêtre', 'Chemins', 'Roi', 'des Grottes d`Armandie', 172657, 0, 0),
(120, 'Zanckten', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Espit', 181521, 0, 0),
(121, 'Dartoil', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Rotergan', 95602, 0, 0),
(124, 'Kayel', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Kartil&eacute;', 123777, 0, 0),
(140, 'Zronn', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de l`Azur&eacute;e', 194250, 0, 0),
(145, 'Ordak', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de la Corne Dor&eacute;e', 231149, 0, 0),
(146, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 92352, 0, 0),
(154, 'Ghassen', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Zarzis', 200408, 0, 0),
(180, 'Lydian', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Reveria', 179076, 0, 0),
(189, 'Braal', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Sarial', 99901, 0, 0),
(191, 'Gwenlf', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Rolirin', 200884, 0, 0),
(239, 'Demetron', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Lande Pourpre', 115780, 0, 0),
(240, 'Myos', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'de Mugis', 153245, 0, 0),
(250, 'Vezk', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'des Terres Ensanglant&eacute;', 148785, 0, 0),
(253, 'Aldeas', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Karabak', 200925, 0, 0),
(255, 'Kabidoui&iuml;e', 'Gnome', 'Voleur', 'Chemins', 'Gouverneur', 'de Schnafon', 135717, 0, 0),
(271, 'Agranos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Soledor', 142088, 0, 0),
(285, 'Nebkan', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Khenat', 120494, 0, 0);INSERT INTO `11may_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(288, 'Gorano', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hadesisn', 145220, 0, 0),
(291, 'Ashinseika', 'Elfe Noir', 'Psioniste', 'Pensée', 'Matriarche', 'de Land`savos', 145058, 0, 0),
(322, 'Yodine', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'd`Havoine', 152041, 0, 0),
(324, 'Enilia', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Grana', 110795, 0, 0),
(343, 'Dinendal Alcarin', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'de Breizhar', 107206, 0, 0),
(357, 'Azhaag', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Anirie', 148650, 0, 0),
(363, 'Essyr', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Asphina', 122735, 0, 0),
(382, 'Elm', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Tergolite', 362240, 0, 0),
(386, 'Magax', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Misn&eacute;il', 271567, 0, 0),
(387, 'Lirielle', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'de Golgotha', 97302, 0, 0),
(389, 'Fletiaz', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Loeses', 653065, 0, 0),
(415, 'Arkatris', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Minotaurya', 219019, 0, 0),
(419, 'Boone', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Novac', 107952, 0, 0),
(431, 'Meissner', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'd`Ensisheim', 313363, 0, 0),
(445, 'Hyke', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ost`Sitan', 69650, 0, 0),
(449, 'Laethil', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'd`Elhaylin', 198317, 0, 0),
(458, 'Mahrynn', 'Elfe Noir', 'Sorcier', 'Pensée', 'Matriarche', 'de Dam Goolkarh', 157810, 0, 0),
(463, 'B&eacute;liaros', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'd`Ensfarir', 199846, 0, 0),
(474, 'Mal`hac', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'd`Irianeth', 94659, 0, 0),
(478, 'Tirandilis', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Surrus', 111705, 0, 0),
(485, 'Eleanora', 'Fée', 'Druide', 'Nature', 'Intendante', 'd`Itoshi', 171473, 0, 0),
(486, 'Zaseo', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'd`Alabasta', 239797, 0, 0),
(493, 'Belerion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'd`Orliae', 118970, 0, 0),
(504, 'Aldramech Sarabhan', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Phl&eacute;g&eacute;thonen', 251719, 0, 0),
(513, 'Eranoth', 'Nain', 'Marchand', 'Chance', 'Roi', 'd`Ydrolis', 82123, 0, 0),
(526, 'Celithrand', 'Elfe', 'Guerrier', 'Guerre', 'Conseiller', 'de Krenaste', 49007, 0, 0),
(527, 'Darcia', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Cosquer', 191901, 0, 0),
(561, 'Kadavre', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Chalys&eacute;es', 54626, 0, 0),
(564, 'Malikarn', 'Célestial', 'Prêtre', 'Chemins', 'Maîtresse', 'des Neiges Eternelles', 175343, 0, 0),
(565, 'Dalan', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Rabistiane', 273058, 0, 0),
(571, 'Bulrug', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'd`Elsweyr', 95742, 0, 0),
(589, 'Han Bal', 'Nain', 'Guerrier', 'Force', 'Roi', 'des Mines Sans-Fond', 161191, 0, 0),
(596, 'Jacques Skellinou', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'd`Holluwee', 657186, 0, 0),
(601, 'Gael', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Corona', 71267, 0, 0),
(611, 'Marsys', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Libory', 132369, 0, 0),
(614, 'Bibble', 'Elfe', 'Guerrier', 'Légendes', 'Conseillère', 'de Dolfin', 97837, 0, 0),
(623, 'Sartibule', 'Géant', 'Barbare', 'Force', 'Dame', 'de Danlong', 82681, 0, 0),
(628, 'Oryanna', 'Elfe Noir', 'Assassin', 'Mensonge', 'Matriarche', 'de Quintefeuille  ', 164253, 0, 0),
(638, 'Harnas', 'Vampire', 'Enchanteur', 'Chance', 'Comte', 'd`Okocim', 135026, 0, 0),
(643, 'Ordinn', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Coril', 245389, 0, 0),
(644, 'Khiran', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Zeidanys', 107883, 0, 0),
(654, 'Chitcat', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'D`Alma', 99291, 0, 0),
(655, 'Sansst', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Nresda', 4885, 0, 0),
(661, 'Gharnohk', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'des Grottes', 127713, 0, 0),
(666, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Pitiponk-les-fl&ocirc;ts', 164410, 0, 0),
(674, 'Onacona', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'des Prairies du Clair de Lune', 190916, 0, 0),
(685, 'Zacharias', 'Nain', 'Guerrier', 'Loi', 'Roi', 'de Sylvanie', 122687, 0, 0),
(700, 'Warenya Fahle', 'Elfe Noir', 'Sorcier', 'Magie', 'Matriarche', 'D`Alosera', 248219, 0, 0),
(703, 'Azarath', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Jalkaru', 133144, 0, 0),
(706, 'Hakra', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'd`Aorphen', 85814, 0, 0),
(707, 'Kograh', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'de Dystopia', 99556, 0, 0);INSERT INTO `11may_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(720, 'Burgrok Brise`Fer', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Machkran', 394427, 0, 0),
(731, 'Zoltan', 'Orque', 'Barbare', 'Force', 'Chef', 'd`Irridinium', 99050, 0, 0),
(732, 'Gruck', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Langristal', 134590, 0, 0),
(733, 'Hijen', 'Nain', 'Marchand', 'Chemins', 'Roi', 'de Ch&eacute;reng', 107095, 0, 0),
(734, 'Jaeregan', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'de Pr&eacute;&eacute;minence', 354679, 0, 0),
(761, 'Yarl Baudig', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Rosakarfa', 102916, 0, 0),
(767, 'Kylordion', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'D`Abasnath', 139918, 0, 0),
(768, 'Tharoze', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Terres Chaotiques', 67555, 0, 0),
(771, 'Umassi', 'Orque', 'Shaman', 'Guerre', 'Cheftaine', 'de Seangwen', 91514, 0, 0),
(774, 'Treleg', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Droriath', 283639, 0, 0),
(777, 'Invoj', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'd`El&eacute;dion', 97971, 0, 0),
(782, 'D&eacute;sacre', 'Elfe Noir', 'Assassin', 'Chaos', 'Matriarche', 'de Sar Haffil', 153372, 0, 0),
(784, 'Jade', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'du Cercle d`Adrien', 84805, 0, 0),
(795, 'Halambare', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Lambardie', 195469, 0, 0),
(801, 'Belenora', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Sal`thair', 211039, 0, 0),
(805, 'Prolor', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de Demancia', 180214, 0, 0),
(821, 'Solemyr', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Hazanavicius', 88115, 0, 0),
(822, 'Oedarn', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Vha Heez', 195232, 0, 0),
(829, 'Tiposa', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Luor', 61359, 0, 0),
(846, 'Yeldierick', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Fantaisis', 201863, 0, 0),
(848, 'Eragole', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'D`Hedrias', 352400, 0, 0),
(864, 'Storia', 'Homme', 'Barbare', 'Guerre', 'Dame', 'de Mineria', 103371, 0, 0),
(874, 'Tankarllia', 'Homme', 'Paladin', 'Honneur', 'Dame', 'de Ros&euml;ia', 98118, 0, 0),
(878, 'Eladriel', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'D`Ambre Bleue', 47584, 0, 0),
(879, 'Grumpf', 'Gnome', 'Voleur', 'Mensonge', 'Gouverneur', 'de Lokeria', 168217, 0, 0),
(880, 'Jijona', 'Homme', 'Paladin', 'Honneur', 'Dame', 'de Jijo', 135958, 0, 0),
(882, 'Hezaram', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Nalvir', 78791, 0, 0),
(884, 'Paaroxsizme', 'Infernal', 'Guerrier', 'Honneur', 'Despote', 'D`Old Coveshire', 88609, 0, 0),
(887, 'Ilarneek', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Pouette', 90023, 0, 0),
(891, 'Mathor', 'Nain', 'Guerrier', 'Loi', 'Reine', 'de V&eacute;r&eacute;fa', 174498, 0, 0),
(895, 'Gradhar', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'de La Vall&eacute;e D`Eniram', 29078, 0, 0),
(897, 'Brolleur', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Domalto', 262090, 0, 0),
(901, 'Z`arf D`Ibn B&auml;shici', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Illyrion', 148648, 0, 0),
(903, 'Zar`Kull', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de Gor`Mall', 104303, 0, 0),
(904, 'Griffith', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Carwraping', 22223, 0, 0),
(905, 'E&auml;nlys', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'D`Afian', 145740, 0, 0),
(906, 'Jaruleek', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Mordanie', 167461, 0, 0),
(909, 'Zasoum', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Zinapuim', 134927, 0, 0),
(911, 'Nathanaou', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'D`Alagesan', 3516, 0, 0),
(914, 'Masme', 'Orque', 'Barbare', 'Guerre', 'Chef', 'D`Hurlevent', 132952, 0, 0),
(915, 'Karann', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Kelistos', 157914, 0, 0),
(919, 'Morphox', 'Elfe Noir', 'Voleur', 'Mensonge', 'Patriarche', 'D`Ile de la Sentinelle', 87647, 0, 0),
(923, 'Artatiss', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'D`Aarklash', 130335, 0, 0),
(925, 'Abranxas', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Symeria', 108440, 0, 0),
(926, 'Zozofiit', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Hyrkul', 104228, 0, 0),
(938, 'Anadyomene', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Eme Est', 66081, 0, 0),
(944, 'Morgjin', 'Sahuagin', 'Shaman', 'Guerre', 'Baronne', 'de Kwenjkka', 180188, 0, 0),
(947, 'Gaoule', 'Homme', 'Archer', 'Chance', 'Seigneur', 'de la Oule', 26150, 0, 0),
(951, 'Kaya', 'Fée', 'Druide', 'Nature', 'Intendante', 'de Draphuster', 116928, 0, 0),
(952, 'Yglora', 'Homme', 'Nécromancien', 'Ténèbres', 'Dame', 'de Nuboro', 109095, 0, 0),
(953, 'Vaith', 'Homme', 'Guerrier', 'Légendes', 'Seigneur', 'de Pourpres-Ab&icirc;mes', 106460, 0, 0);INSERT INTO `11may_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(954, 'Elfredo', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'D`Arcanis', 133050, 0, 0),
(955, 'Atalwatu', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Tkashi', 17706, 0, 0),
(962, 'Deinoforo', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Fosse du Festin Sanglant', 26968, 0, 0),
(964, 'Morvox', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Royaume de la Paix', 171957, 0, 0),
(966, 'Aysa', 'Fée', 'Magicien', 'Pensée', 'Intendante', 'D`Aldenia', 108185, 0, 0),
(969, 'Artaxxas', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'D`Aramoor', 166569, 0, 0),
(972, 'Teperek', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'D`Hydross', 20769, 0, 0),
(973, 'Jinugra', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Pokkeirn', 57027, 0, 0),
(978, 'Lyonis', 'Homme', 'Barde', 'Chance', 'Seigneur', 'du Palais d`Ivoire', 95609, 0, 0),
(980, 'Theobald', 'Homme', 'Chevalier', 'Force', 'Seigneur', 'de la Plaine Artificielle', 106782, 0, 0),
(982, 'Belisama', 'Célestial', 'Enchanteur', 'Pensée', 'Maîtresse', 'de Divicis', 3264, 0, 0),
(984, 'Aries', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Lotharingie', 4965, 0, 0),
(985, 'Vordamass', 'Nain', 'Prêtre', 'Force', 'Roi', 'de Mont-Chemin-Des-Ildys', 158724, 0, 0),
(986, 'Sanogoaen', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'D`Hugo', 0, 0, 0),
(987, 'Karkanos', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Toer', 66117, 0, 0),
(988, 'Dorunn', 'Vampire', 'Assassin', 'Mort', 'Comte', 'D`Ameliath', 176573, 0, 0),
(989, 'Darakim', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Bertagone', 0, 0, 0),
(990, 'Drizzit', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Ombre-Terre', 94404, 0, 0),
(991, 'Grunwuck', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'de Cimetiere', 95753, 0, 0),
(992, 'Unluck', 'Elfe Noir', 'Démonologiste', 'Maladie', 'Patriarche', 'de Tirnanog', 3752, 0, 0),
(994, 'Trak', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Prandeth', 0, 0, 0),
(996, 'Flatron', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Miroivall&eacute;e', 92708, 0, 0),
(997, 'Erelian', 'Célestial', 'Magicien', 'Magie', 'Maître', 'D`Amareth', 3134, 0, 0),
(998, 'Arren', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Enlad', 3134, 0, 0),
(999, 'Parangloss', 'Géant', 'Barbare', 'Force', 'Seigneur', 'D`Asmahrra', 3907, 0, 0),
(1000, 'Hogun', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Tragnard', 69272, 0, 0),
(1001, 'Bolas', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Voraeren', 109174, 0, 0),
(1002, 'Alrik', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Lanvaldear', 109049, 0, 0),
(1003, 'Rohnny', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de la Cit&eacute; St-Paul', 3150, 0, 0),
(1004, 'Dji El', 'Sahuagin', 'Prêtre', 'Force', 'Baron', 'de Dji Eloi', 93318, 0, 0),
(1005, 'Il&eacute;anor', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Mirque Bois', 97342, 0, 0),
(1007, 'Barleim', 'Elfe Noir', 'Voleur', 'Mensonge', 'Patriarche', 'D`Halmar', 3940, 0, 0),
(1008, 'Laprise', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Trois-Rivi&egrave;res', 0, 0, 0),
(1022, 'Nicolag', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Rambourg', 142387, 0, 0),
(1023, 'Nah&iuml;ada', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Flabularium', 186765, 0, 0),
(1024, 'Julian', 'Vampire', 'Assassin', 'Mort', '', 'de Tuerie', 0, 0, 0),
(1025, 'Lhito', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Partna', 175613, 0, 0),
(1027, 'Looorie', 'Gnome', 'Marchand', 'Mensonge', 'Gouverneur', 'de Bijoux', 0, 0, 0),
(1028, 'Shiver', 'Homme', 'Assassin', 'Ténèbres', 'Seigneur', 'D`Hysteria', 3134, 0, 0),
(1029, 'Arthurion', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Ga`Hool', 0, 0, 0),
(1030, 'Argarock', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'D`ArgaLand', 3128, 0, 0),
(1031, 'Pelli', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Talmondais', 0, 0, 0),
(1032, 'Amnesiar', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Bheuvil', 0, 0, 0),
(1033, 'Megaboste', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Xdeyx', 0, 0, 0),
(1034, 'Y&egrave;menice', 'Vampire', 'Assassin', 'Chaos', 'Comtesse', 'de Lyssa', 0, 0, 0),
(1035, 'Snakel', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Rivers', 0, 0, 0),
(1036, 'Van Brok', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Kribbsteins', 59679, 0, 0),
(1039, 'Delrion', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Triak', 105150, 0, 0),
(1042, 'Kihara', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Kiharo', 67535, 0, 0),
(1044, 'Bargop', 'Gnome', 'Marchand', 'Chemins', 'Gouverneur', 'D`H&eacute;ronie', 3134, 0, 0),
(1045, 'Zhurion', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Zandor', 0, 0, 0);INSERT INTO `11may_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(1046, 'Kalma', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Nether', 0, 0, 0),
(1047, 'Listade', 'Minotaure', 'Guerrier', 'Légendes', 'Seigneur', 'de Truistrea', 6630, 0, 0),
(1048, 'Mabelrode', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Xiom', 168844, 0, 0),
(1049, 'Peronrar', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Terrerar', 0, 0, 0),
(1050, 'Aure', 'Homme', 'Voleur', 'Chemins', 'Seigneur', 'de Miloges', 3134, 0, 0),
(1051, 'Morgan', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'des Cimeti&egrave;res Interdits', 65590, 0, 0),
(1052, 'Haschatansyx', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Dorgam&acirc;al', 13365, 0, 0),
(1054, 'Ulyseis', 'Vampire', 'Assassin', 'Mort', 'Comtesse', 'de Zodiaque', 0, 0, 0),
(1055, 'Sylv', 'Homme', 'Assassin', 'Mensonge', 'Seigneur', 'de Danseurs', 0, 0, 0),
(1056, 'Starsa', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'D`Ilioindon', 100526, 0, 0),
(1057, 'Lollanth', 'Vampire', 'Assassin', 'Ténèbres', 'Comtesse', 'de Lolesqueth', 0, 0, 0),
(1058, 'Orga', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Galern', 62993, 0, 0),
(1059, 'Bonty', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Kolopo', 0, 0, 0),
(1060, 'Ouhgloub', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de M&eacute;ragnia', 18297, 0, 0),
(1061, 'Chiechinlla', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'de Rang Scott', 3219, 0, 0),
(1062, 'Kiste', 'Orque', 'Barbare', 'Guerre', 'Chef', 'D`Azogar', 151292, 0, 0),
(1063, 'Naeril', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de Durunda', 84736, 0, 0),
(1064, 'Kyrr Norfilith', 'Elfe Noir', 'Assassin', 'Mensonge', 'Patriarche', 'de Baal Nimen', 23006, 0, 0),
(1065, 'Elya', 'Fée', 'Druide', 'Nature', 'Intendant', 'de Pand&egrave;re', 8984, 0, 0),
(1066, 'Hanarion', 'Gnome', 'Voleur', 'Mensonge', 'Gouverneur', 'D`Elendor', 29030, 0, 0),
(1067, 'Lunire', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Solares', 0, 0, 0),
(1068, 'Lilian', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'D`Armaralda', 0, 0, 0),
(1069, 'Yuffiel', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'D`Orgart', 0, 0, 0),
(1070, 'Selonna', 'Fée', 'Enchanteur', 'Chance', 'Intendante', 'de Phidis', 3134, 0, 0),
(1071, 'Carcane', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Cieux', 0, 0, 0),
(1072, 'Aeldrina', 'Orque', 'Shaman', 'Force', 'Cheftaine', 'D`Ombrok', 36523, 0, 0),
(1073, 'Spertacus', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Sparti&euml;n', 0, 0, 0),
(1074, 'Johnas', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'D`Aloth', 72269, 0, 0),
(1075, 'Antedmor', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Mezaros', 75868, 0, 0),
(1076, 'Narmacilis', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Karlotur', 36416, 0, 0),
(1077, 'Cerbeque', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'D`Iredia', 19167, 0, 0),
(1078, 'le Teuru', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de le Raumefes', 0, 0, 0),
(1079, 'Viviano', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'de Vivianie', 7288, 0, 0),
(1080, 'Nicorth', 'Gnome', 'Marchand', 'Mensonge', 'Gouverneur', 'de Bonta', 9360, 0, 0),
(1081, 'Kravel', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'D`Ondria', 15209, 0, 0),
(1082, 'Kabumn', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'de Montfracasse', 0, 0, 0),
(1083, 'Anthonytouti', 'Elfe Noir', 'Guerrier', 'Honneur', 'Patriarche', 'D`Athony', 0, 0, 0);



CREATE TABLE `11may_joueurs_stats_2` (
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
) ENGINE=MyISAM AUTO_INCREMENT=1084 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1084 ;

INSERT INTO `11may_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2, 'Alumdil', 20, 72522, 191166, 210000, 19.00, 30.00, 56.00, 43.00, 72.00, 119.00, 50000, 0, 0, 1999286, 131, 129, 483, 132, 0, 21694900),
(3, 'Vibralea', 21, 191012, 226467, 231000, 45.50, 60.50, 74.00, 78.50, 131.50, 168.00, 39051, 0, 0, 2098534, 683, 157, 479, 249, 0, 21730547),
(5, 'Dijun', 24, 143397, 294908, 300000, 45.00, 73.00, 135.00, 157.00, 113.00, 237.00, 3, 0, 0, 2306713, 73, 485, 31, 775, 0, 21736526),
(13, 'Aleksander', 28, 278223, 385075, 406000, 219.00, 133.00, 231.00, 123.00, 83.00, 46.00, 18807, 0, 0, 146708, 20571, 32, 9, 788, 0, 21736524),
(19, 'Gorak', 32, 171711, 497565, 528000, 64.00, 57.00, 106.00, 200.33, 140.00, 306.00, 37382, 0, 0, 3818094, 2736, 2010, 2143, 2127, 0, 21736679),
(36, 'Cl&eacute;mentine', 37, 188932, 698425, 703000, 201.00, 115.00, 211.00, 179.00, 120.00, 86.00, 32318, 0, 0, 131149, 2555, 1871, 2023, 1797, 0, 21736487),
(43, 'Mund', 21, 131908, 222117, 231000, 131.00, 169.00, 39.00, 136.00, 104.00, 50.00, 11579, 0, 0, 1192972, 608, 571, 617, 666, 0, 21736027),
(45, 'Dro&iuml;n Pierre de Feu', 32, 202510, 511600, 528000, 243.00, 181.00, 265.00, 232.00, 86.00, 24.00, 1483, 0, 0, 11434378, 6030, 4920, 8112, 5038, 0, 21735165),
(47, 'Agradok', 34, 157536, 584597, 595000, 94.00, 49.00, 154.00, 212.33, 167.00, 528.00, 35555, 0, 0, 2253866, 1289, 2524, 2277, 3198, 0, 21730464),
(48, 'Harkazam', 16, 150085, 129381, 136000, 64.00, 80.00, 50.00, 66.00, 82.00, 123.00, 31903, 0, 0, 15687, 596, 444, 463, 474, 0, 21736533),
(53, 'Nak`Amnar', 25, 117629, 307038, 325000, 97.50, 107.00, 187.00, 112.00, 53.00, 28.50, 33459, 0, 0, 77058, 612, 316, 311, 376, 0, 21734969),
(58, 'Tiram', 33, 205695, 550511, 561000, 62.50, 47.50, 86.00, 155.00, 117.00, 318.00, 44477, 0, 0, 783139, 1479, 1326, 210, 601, 0, 21735996),
(60, 'Filsigur', 27, 218824, 354761, 378000, 239.00, 244.00, 104.00, 114.50, 136.00, 81.50, 24129, 0, 0, 4487263, 1213, 1405, 981, 2329, 0, 21736667),
(67, 'Cyrielle', 11, 62552, 58001, 66000, 34.50, 53.50, 35.50, 60.00, 22.00, 86.50, 30000, 0, 0, 13989117, 729, 1131, 1047, 1092, 0, 21709282),
(68, 'Caline', 35, 575087, 623348, 630000, 70.50, 65.00, 59.00, 202.83, 259.00, 535.00, 35397, 0, 0, 1014101, 1118, 1603, 1563, 22816, 0, 21733720),
(69, 'Kylar des Ombres', 21, 230771, 212012, 231000, 194.00, 210.00, 239.00, 155.00, 86.00, 40.00, 50000, 0, 0, 3534766, 1656, 1579, 1153, 1671, 0, 21735803),
(70, 'Phylas', 35, 174663, 603926, 630000, 276.50, 232.50, 69.50, 44.00, 201.00, 124.50, 40000, 0, 0, 140407, 1119, 824, 677, 1719, 0, 21736320),
(73, 'Philego Rah', 20, 121751, 201837, 210000, 243.00, 140.00, 90.00, 43.00, 46.00, 23.00, 40000, 0, 0, 975428, 57, 73, 78, 66, 0, 21734917),
(76, 'Katrickan', 27, 132409, 360457, 378000, 236.50, 165.50, 45.50, 97.00, 180.00, 105.50, 50000, 0, 0, 243971, 708, 708, 228, 856, 0, 21734817),
(78, 'Athanase', 22, 165535, 239907, 253000, 133.00, 132.00, 87.00, 161.00, 75.00, 58.00, 50000, 0, 0, 1670033, 567, 510, 954, 986, 0, 21733432),
(84, 'Sycomore', 31, 230824, 466606, 496000, 243.50, 173.00, 267.00, 93.00, 76.00, 26.50, 24600, 0, 0, 680679, 1758, 1180, 2215, 1131, 0, 21731978),
(95, 'Irkos', 23, 166425, 273519, 276000, 88.00, 26.50, 66.50, 73.00, 106.50, 142.50, 43438, 0, 0, 774405, 1233, 675, 1160, 1116, 0, 21732013),
(96, 'Alcyban', 24, 333677, 289176, 300000, 24.00, 77.00, 45.00, 80.00, 126.00, 415.00, 50000, 0, 0, 2920191, 790, 675, 914, 705, 0, 21732998),
(98, 'Mayssi', 25, 116666, 304741, 325000, 113.50, 68.00, 122.00, 149.33, 37.00, 23.50, 40000, 0, 0, 2586458, 1520, 734, 661, 573, 0, 21730776),
(101, 'Hulricht', 27, 185184, 376295, 378000, 235.50, 94.00, 224.00, 97.00, 50.00, 25.50, 13147, 0, 0, 772434, 2018, 1853, 1439, 1588, 0, 21736153),
(104, 'Lumy', 11, 128785, 64373, 66000, 110.50, 64.00, 146.00, 76.00, 36.00, 16.50, 30000, 0, 0, 8760621, 953, 36150, 332, 392, 0, 21736463),
(105, 'Agrias', 28, 167536, 382839, 406000, 86.00, 56.00, 88.00, 64.00, 163.00, 261.00, 43304, 0, 0, 334167, 505, 793, 476, 185, 0, 21735843),
(108, 'Ladanian', 21, 160148, 228200, 231000, 115.50, 106.00, 140.00, 57.00, 55.00, 21.50, 50000, 0, 0, 1824604, 363, 407, 538, 248, 0, 21733772),
(111, 'Galahay', 18, 61702, 159658, 171000, 109.00, 48.00, 149.00, 32.00, 60.00, 23.00, 40000, 0, 0, 676155, 18, 0, 132, 0, 0, 21687576),
(112, 'Vrock', 17, 122653, 142266, 153000, 106.50, 114.00, 178.00, 37.00, 41.00, 20.50, 210, 0, 0, 311065, 351, 522, 552, 567, 0, 21736446),
(113, 'Schlemm', 38, 156051, 715004, 741000, 360.00, 220.00, 209.00, 76.00, 122.00, 28.00, 28562, 0, 0, 1524955, 1285, 1426, 1005, 1469, 0, 21735776),
(115, 'Tylert', 20, 168466, 193758, 210000, 137.00, 108.00, 70.00, 17.00, 59.00, 18.00, 20000, 0, 0, 1761305, 155, 104, 67, 129, 0, 21733754),
(118, 'Liamalika', 16, 106924, 120282, 136000, 69.00, 22.00, 67.00, 24.00, 41.00, 93.00, 16185, 0, 0, 1492080, 541, 282, 216, 51, 0, 21734243),
(119, 'Fonua', 18, 172657, 158727, 171000, 122.00, 129.00, 92.00, 66.00, 70.00, 86.00, 24509, 0, 0, 93402, 742, 860, 1215, 1269, 0, 21736410),
(120, 'Zanckten', 22, 181521, 238737, 253000, 36.00, 68.00, 73.00, 199.00, 86.00, 139.00, 8831, 0, 0, 849154, 1015, 1284, 990, 224, 0, 21733619),
(121, 'Dartoil', 10, 95602, 52457, 55000, 51.00, 24.00, 63.00, 29.00, 24.00, 23.00, 29750, 0, 0, 4606705, 806, 709, 334, 586, 0, 21734357),
(124, 'Kayel', 21, 123777, 217991, 231000, 154.00, 78.50, 58.00, 22.50, 49.50, 22.50, 50000, 0, 0, 743188, 128, 174, 241, 0, 0, 21734448),
(140, 'Zronn', 28, 194250, 404851, 406000, 32.00, 54.00, 178.00, 112.00, 217.00, 220.00, 471, 0, 0, 2221, 1072, 369, 990, 926, 0, 21735690),
(145, 'Ordak', 30, 231149, 444634, 465000, 411.00, 228.00, 113.00, 27.00, 190.00, 55.00, 20245, 0, 0, 1948467, 1836, 1951, 1983, 1620, 0, 21739352),
(146, 'Bartor', 13, 92352, 89797, 91000, 33.50, 21.00, 97.00, 54.00, 15.50, 24.00, 11400, 0, 0, 819425, 135, 135, 42, 1, 0, 21725052),
(154, 'Ghassen', 22, 200408, 240378, 253000, 39.00, 36.00, 62.00, 48.00, 83.00, 253.00, 50000, 0, 0, 1594315, 1260, 1825, 2114, 1990, 0, 21734899),
(180, 'Lydian', 14, 179076, 93050, 105000, 76.00, 70.00, 33.00, 43.00, 26.00, 20.00, 8450, 0, 0, 289191, 1356, 1069, 915, 1005, 0, 21728722),
(189, 'Braal', 15, 99901, 117109, 120000, 188.00, 158.00, 60.00, 15.50, 54.00, 15.50, 40000, 0, 0, 3406548, 170, 57, 129, 192, 0, 21730462),
(191, 'Gwenlf', 19, 200884, 173655, 190000, 153.00, 153.00, 106.50, 58.00, 90.00, 53.50, 1592, 0, 0, 103740, 2494, 2542, 2263, 3035, 0, 21736085),
(239, 'Demetron', 17, 115780, 144572, 153000, 21.50, 16.50, 28.00, 88.00, 62.00, 125.00, 28715, 0, 0, 14300490, 770, 577, 190, 464, 0, 21709231),
(240, 'Myos', 28, 153245, 395921, 406000, 163.00, 39.00, 128.00, 91.00, 165.00, 216.00, 12785, 0, 0, 208263, 5439, 5630, 388, 257, 0, 21733087),
(250, 'Vezk', 20, 148785, 195453, 210000, 222.00, 130.00, 84.00, 22.00, 45.00, 22.00, 40000, 0, 0, 1000830, 59, 117, 21, 148, 0, 21725666),
(253, 'Aldeas', 23, 200925, 266274, 276000, 45.50, 19.50, 94.50, 35.50, 195.50, 315.50, 50000, 0, 0, 402154, 671, 531, 629, 936, 0, 21735371),
(255, 'Kabidoui&iuml;e', 15, 135717, 107970, 120000, 47.50, 40.00, 126.00, 54.00, 23.50, 34.00, 27293, 0, 0, 11948, 348, 260, 542, 324, 0, 21734537),
(271, 'Agranos', 22, 142088, 239108, 253000, 232.00, 105.00, 210.00, 55.00, 56.00, 22.00, 46265, 0, 0, 2784505, 475, 48, 367, 147, 0, 21736418),
(285, 'Nebkan', 31, 120494, 486404, 496000, 196.50, 253.00, 141.00, 172.83, 131.50, 121.50, 50000, 0, 0, 2646604, 1790, 1707, 2301, 1763, 0, 21712915);INSERT INTO `11may_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(288, 'Gorano', 13, 145220, 88166, 91000, 73.00, 48.50, 35.50, 22.00, 50.50, 152.50, 40000, 0, 0, 1915997, 1294, 907, 1268, 1339, 0, 21729012),
(291, 'Ashinseika', 27, 145058, 357376, 378000, 88.50, 58.50, 39.00, 66.50, 129.50, 118.00, 15233, 0, 0, 2764690, 723, 422, 34663, 745, 0, 21736142),
(322, 'Yodine', 21, 152041, 215891, 231000, 63.50, 97.00, 34.00, 78.00, 99.50, 56.50, 9588, 0, 0, 196, 73, 308, 515, 226, 0, 21730731),
(324, 'Enilia', 17, 110795, 152722, 153000, 86.50, 47.00, 121.00, 22.00, 41.00, 19.50, 336, 0, 0, 5835515, 127, 162, 146, 319, 0, 21731577),
(343, 'Dinendal Alcarin', 15, 107206, 105320, 120000, 130.00, 139.00, 46.00, 35.50, 31.00, 20.50, 325, 0, 0, 1412894, 1226, 1329, 1835, 525, 0, 21735115),
(357, 'Azhaag', 21, 148650, 224958, 231000, 39.50, 46.50, 76.50, 40.00, 168.00, 238.50, 36416, 0, 0, 2535200, 1983, 1201, 1719, 1880, 0, 21736159),
(363, 'Essyr', 14, 122735, 96410, 105000, 90.00, 28.00, 66.00, 23.00, 47.00, 96.00, 30000, 0, 0, 2948121, 1516, 1213, 1189, 1703, 0, 21721119),
(382, 'Elm', 53, 362240, 1386782, 1431000, 256.50, 235.00, 201.00, 236.83, 193.50, 198.50, 1395, 0, 0, 4384449, 4869, 4552, 3036, 4576, 0, 21731714),
(386, 'Magax', 29, 271567, 427950, 435000, 37.50, 42.00, 39.00, 106.50, 214.00, 414.00, 43597, 0, 0, 807736, 880, 362, 1201, 1169, 0, 21735904),
(387, 'Lirielle', 20, 97302, 190692, 210000, 20.00, 34.00, 47.00, 100.00, 173.00, 198.00, 724, 0, 0, 590215, 398, 613, 272, 394, 0, 21725066),
(389, 'Fletiaz', 8, 653065, 33288, 36000, 44.00, 17.00, 24.00, 20.00, 28.00, 107.00, 0, 0, 0, 1436808, 332, 418, 340, 200, 0, 21637418),
(415, 'Arkatris', 25, 219019, 313792, 325000, 219.50, 127.00, 240.00, 38.00, 50.00, 23.50, 50000, 0, 0, 2099902, 273, 373, 1123, 653, 0, 21727189),
(419, 'Boone', 24, 107952, 285558, 300000, 191.00, 87.00, 195.00, 51.00, 48.00, 23.00, 50000, 0, 0, 1241024, 147, 45, 0, 221, 0, 21726501),
(431, 'Meissner', 25, 313363, 320862, 325000, 189.00, 165.50, 189.00, 53.50, 85.50, 25.50, 4381, 0, 0, 880912, 4204, 3607, 3702, 4319, 0, 21736445),
(445, 'Hyke', 17, 69650, 141606, 153000, 32.50, 26.50, 25.00, 88.00, 51.00, 200.00, 50000, 0, 0, 3733556, 344, 372, 300, 402, 0, 21672550),
(449, 'Laethil', 36, 198317, 632759, 666000, 359.00, 188.00, 281.00, 188.00, 168.00, 41.00, 13481, 0, 0, 1655492, 523, 750, 926, 4465, 0, 21736675),
(458, 'Mahrynn', 18, 157810, 153631, 171000, 73.00, 99.00, 87.00, 81.00, 102.00, 141.00, 50000, 0, 0, 2177170, 533, 793, 547, 695, 0, 21728141),
(463, 'B&eacute;liaros', 22, 199846, 240340, 253000, 136.00, 72.00, 230.00, 68.00, 52.00, 46.00, 32655, 0, 0, 648000, 267, 248, 259, 567, 0, 21734561),
(474, 'Mal`hac', 10, 94659, 50684, 55000, 78.00, 74.00, 69.00, 25.00, 24.00, 17.00, 40000, 0, 0, 7243104, 785, 583, 512, 984, 0, 21665664),
(478, 'Tirandilis', 23, 111705, 266747, 276000, 98.00, 48.50, 177.50, 21.00, 148.50, 336.50, 40000, 0, 0, 1274915, 909, 760, 480, 256, 0, 21731948),
(485, 'Eleanora', 18, 171473, 161789, 171000, 64.00, 72.00, 33.00, 95.00, 72.00, 143.00, 50000, 0, 0, 2372344, 482, 338, 197, 298, 0, 21729193),
(486, 'Zaseo', 23, 239797, 266402, 276000, 170.00, 123.00, 191.00, 119.00, 47.00, 45.00, 6720, 0, 0, 2100818, 1087, 543, 45, 293, 0, 21736523),
(493, 'Belerion', 27, 118970, 365152, 378000, 83.50, 84.50, 87.50, 135.00, 77.00, 199.50, 50000, 0, 0, 2212061, 0, 165, 199, 397, 0, 21685992),
(504, 'Aldramech Sarabhan', 37, 251719, 668138, 703000, 90.50, 41.50, 162.50, 106.50, 236.50, 301.50, 8689, 0, 0, 388632, 1406, 1385, 316, 755, 0, 21736513),
(513, 'Eranoth', 8, 82123, 34977, 36000, 35.00, 25.00, 66.00, 48.00, 32.00, 14.00, 22000, 0, 0, 1121475, 405, 900, 266, 147, 0, 21735094),
(526, 'Celithrand', 12, 49007, 66940, 78000, 104.00, 58.00, 72.00, 19.00, 24.00, 17.00, 30000, 0, 0, 2185892, 153, 230, 0, 460, 0, 21709262),
(527, 'Darcia', 21, 191901, 213882, 231000, 37.50, 30.00, 86.00, 54.50, 143.00, 181.00, 44566, 0, 0, 1996644, 1511, 932, 619, 2419, 0, 21735379),
(561, 'Kadavre', 9, 54626, 43617, 45000, 65.00, 16.50, 27.50, 21.00, 27.50, 80.50, 30000, 0, 0, 5736668, 521, 315, 526, 657, 0, 21721447),
(564, 'Malikarn', 20, 175343, 202047, 210000, 118.00, 136.00, 59.00, 107.00, 129.00, 120.00, 22256, 0, 0, 232993, 922, 625, 320, 798, 0, 21730338),
(565, 'Dalan', 32, 273058, 521907, 528000, 327.00, 253.00, 284.00, 75.00, 66.00, 33.00, 40000, 0, 0, 46664210, 24281, 26456, 26180, 25402, 0, 21735964),
(571, 'Bulrug', 17, 95742, 151887, 153000, 168.00, 89.50, 74.00, 16.50, 53.50, 16.50, 50000, 0, 0, 1507668, 339, 310, 437, 418, 0, 21724447),
(589, 'Han Bal', 15, 161191, 115102, 120000, 182.00, 159.00, 90.00, 20.50, 84.00, 15.50, 50000, 0, 0, 1072674, 955, 1614, 996, 1751, 0, 21733892),
(596, 'Jacques Skellinou', 32, 657186, 503455, 528000, 234.00, 157.00, 300.00, 240.00, 103.00, 28.00, 832, 0, 0, 3708873, 7256, 8917, 8355, 6512, 0, 21734674),
(601, 'Gael', 13, 71267, 78360, 91000, 52.00, 25.00, 80.00, 34.00, 28.00, 30.00, 40000, 0, 0, 3147301, 382, 502, 376, 479, 0, 21720972),
(611, 'Marsys', 14, 132369, 94663, 105000, 66.00, 48.00, 117.00, 51.00, 47.00, 49.00, 40000, 0, 0, 1484882, 754, 915, 751, 837, 0, 21731373),
(614, 'Bibble', 16, 97837, 135683, 136000, 87.00, 74.00, 40.00, 36.00, 63.00, 30.00, 22315, 0, 0, 76310, 40, 95, 15, 110, 0, 21735959),
(623, 'Sartibule', 22, 82681, 244709, 253000, 226.00, 155.00, 87.00, 18.00, 69.00, 21.00, 30000, 0, 0, 72688, 324, 448, 283, 543, 0, 21733429),
(628, 'Oryanna', 12, 164253, 76096, 78000, 105.00, 55.00, 121.00, 85.00, 55.00, 30.00, 30000, 0, 0, 438302, 193, 818, 168, 310, 0, 21741936),
(638, 'Harnas', 21, 135026, 214740, 231000, 51.50, 89.00, 52.00, 73.00, 131.50, 112.50, 50000, 0, 0, 404237, 1523, 1446, 480, 966, 0, 21728825),
(643, 'Ordinn', 22, 245389, 242500, 253000, 85.00, 141.00, 20.00, 86.00, 43.00, 172.00, 9280, 0, 0, 1553, 472, 670, 381, 317, 0, 21734569),
(644, 'Khiran', 15, 107883, 115358, 120000, 92.00, 72.00, 37.00, 74.00, 48.00, 39.00, 31522, 0, 0, 3303399, 672, 639, 770, 956, 0, 21726816),
(654, 'Chitcat', 11, 99291, 60748, 66000, 74.00, 22.50, 54.50, 18.00, 30.50, 67.50, 40000, 0, 0, 4729992, 992, 787, 234, 66, 0, 21740143),
(655, 'Sansst', 1, 4885, 0, 1000, 300.00, 18.00, 8.50, 17.50, 12.00, 13.00, 0, 0, 0, 588677977, 6507, 7035, 7226, 6251, 0, 21684009),
(661, 'Gharnohk', 16, 127713, 126915, 136000, 86.00, 60.00, 72.00, 26.00, 57.00, 169.00, 40000, 0, 0, 2703, 482, 43, 370, 352, 0, 21734649),
(666, 'Yzeute', 11, 164410, 61204, 66000, 63.50, 50.00, 67.00, 38.00, 40.00, 33.50, 0, 0, 0, 669617, 1157, 1670, 1629, 1745, 0, 21736421),
(674, 'Onacona', 24, 190916, 288411, 300000, 102.00, 84.00, 63.00, 75.00, 131.00, 155.00, 50000, 0, 0, 399419, 2563, 1094, 2610, 2912, 0, 21735091),
(685, 'Zacharias', 20, 122687, 206047, 210000, 255.00, 291.00, 60.00, 20.00, 121.00, 18.00, 50000, 0, 0, 200225, 81, 460, 964, 1442, 0, 21736198),
(700, 'Warenya Fahle', 15, 248219, 113444, 120000, 30.50, 21.50, 31.00, 70.00, 70.00, 106.00, 50000, 0, 0, 2278385, 622, 819, 932, 679, 0, 21730610),
(703, 'Azarath', 16, 133144, 124870, 136000, 138.00, 59.00, 76.00, 71.00, 42.00, 16.00, 39700, 0, 0, 230046, 62, 299, 259, 5, 0, 21734710),
(706, 'Hakra', 12, 85814, 76424, 78000, 108.00, 106.00, 39.00, 65.00, 24.00, 15.00, 384, 0, 0, 162343, 499, 588, 696, 799, 0, 21736169),
(707, 'Kograh', 17, 99556, 142944, 153000, 32.50, 48.50, 34.00, 270.00, 90.00, 160.00, 40000, 0, 0, 753987, 1595, 1193, 887, 1730, 0, 21734945);INSERT INTO `11may_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(720, 'Burgrok Brise`Fer', 27, 394427, 364576, 378000, 202.00, 190.00, 196.50, 133.50, 137.00, 116.00, 13716, 0, 0, 1977311, 597, 828, 492, 961, 0, 21736391),
(731, 'Zoltan', 16, 99050, 121705, 136000, 147.00, 114.00, 56.00, 17.00, 58.00, 19.00, 35493, 0, 0, 895666, 1408, 688, 626, 1217, 0, 21735219),
(732, 'Gruck', 14, 134590, 100810, 105000, 72.00, 74.00, 56.00, 62.00, 51.00, 53.00, 40000, 0, 0, 1061551, 463, 166, 121, 282, 0, 21733155),
(733, 'Hijen', 17, 107095, 143677, 153000, 104.00, 89.00, 135.00, 95.00, 57.50, 16.50, 24025, 0, 0, 655665, 1186, 529, 320, 425, 0, 21734991),
(734, 'Jaeregan', 37, 354679, 684845, 703000, 248.00, 80.00, 436.00, 110.00, 52.00, 50.00, 33200, 0, 0, 264515, 2553, 1199, 1162, 1585, 0, 21735205),
(761, 'Yarl Baudig', 12, 102916, 74038, 78000, 53.00, 45.00, 47.00, 99.00, 43.00, 65.00, 40000, 0, 0, 4640608, 1224, 1379, 689, 597, 0, 21709866),
(767, 'Kylordion', 24, 139918, 294978, 300000, 190.00, 79.00, 140.00, 131.00, 62.00, 135.00, 50000, 0, 0, 4091787, 297, 166, 110, 1138, 0, 21733585),
(768, 'Tharoze', 9, 67555, 37128, 45000, 45.00, 20.50, 25.50, 19.00, 25.50, 61.50, 30000, 0, 0, 7409055, 155, 136, 361, 195, 0, 21701979),
(771, 'Umassi', 21, 91514, 228760, 231000, 101.00, 65.00, 101.50, 134.83, 165.50, 157.50, 40000, 0, 0, 251913, 1393, 1743, 1051, 1676, 0, 21735727),
(774, 'Treleg', 32, 283639, 527234, 528000, 324.00, 389.00, 32.00, 106.00, 221.00, 72.00, 12409, 0, 0, 293701, 2103, 1401, 901, 1974, 0, 21736586),
(777, 'Invoj', 13, 97971, 86658, 91000, 48.00, 25.50, 50.50, 31.00, 86.50, 120.50, 6519, 0, 0, 137778, 987, 542, 809, 605, 0, 21736130),
(782, 'D&eacute;sacre', 26, 153372, 347976, 351000, 175.00, 64.00, 262.00, 79.00, 40.00, 39.00, 2258, 0, 0, 324088, 6297, 6176, 6034, 6881, 0, 21736338),
(784, 'Jade', 16, 84805, 127905, 136000, 7.00, 56.00, 57.00, 38.00, 112.00, 119.00, 272, 0, 0, 65926, 568, 522, 617, 338, 0, 21725829),
(795, 'Halambare', 18, 195469, 163797, 171000, 138.00, 96.00, 158.00, 54.00, 53.00, 25.00, 4389, 0, 0, 7767311, 676, 334, 616, 475, 0, 21736607),
(801, 'Belenora', 19, 211039, 171675, 190000, 43.50, 35.00, 36.00, 80.50, 78.00, 179.00, 277, 0, 0, 126411, 306, 267, 0, 50, 0, 21734676),
(805, 'Prolor', 19, 180214, 181897, 190000, 159.00, 154.00, 133.00, 18.50, 86.00, 24.50, 29046, 0, 0, 369554, 1139, 920, 801, 1076, 0, 21736230),
(821, 'Solemyr', 12, 88115, 74997, 78000, 70.00, 91.00, 41.00, 137.00, 37.00, 33.00, 40000, 0, 0, 3868068, 219, 269, 262, 136, 0, 21724355),
(822, 'Oedarn', 19, 195232, 184076, 190000, 136.00, 79.00, 165.00, 62.00, 74.00, 32.00, 21939, 0, 0, 1630866, 512, 678, 921, 242, 0, 21736239),
(829, 'Tiposa', 7, 61359, 27058, 28000, 38.50, 24.00, 46.00, 27.00, 16.00, 14.50, 20000, 0, 0, 3348517, 440, 1197, 685, 722, 0, 21719695),
(846, 'Yeldierick', 20, 201863, 206097, 210000, 217.00, 230.00, 21.00, 68.00, 164.00, 101.00, 38000, 0, 0, 4966, 1204, 1053, 1444, 1004, 0, 21733527),
(848, 'Eragole', 14, 352400, 98770, 105000, 43.00, 122.00, 58.00, 100.00, 73.00, 68.00, 9087, 0, 0, 162098, 538, 44, 451, 697, 0, 21732622),
(864, 'Storia', 16, 103371, 123855, 136000, 94.00, 79.00, 90.00, 39.00, 67.00, 20.00, 40000, 0, 0, 1741830, 1412, 681, 691, 896, 0, 21724743),
(874, 'Tankarllia', 12, 98118, 70881, 78000, 87.00, 121.00, 24.00, 118.00, 87.00, 52.00, 18205, 0, 0, 3888308, 344, 391, 442, 313, 0, 21730639),
(878, 'Eladriel', 9, 47584, 36307, 45000, 80.00, 35.50, 31.00, 9.50, 24.50, 17.50, 27000, 0, 0, 1511262, 119, 167, 58, 90, 0, 21733731),
(879, 'Grumpf', 8, 168217, 34344, 36000, 26.00, 30.00, 50.00, 41.00, 23.00, 25.00, 30000, 0, 0, 1954530, 613, 864, 764, 519, 0, 21736175),
(880, 'Jijona', 27, 135958, 368726, 378000, 90.00, 89.00, 86.00, 202.00, 66.00, 66.00, 40000, 0, 0, 2130381, 5410, 4840, 5286, 5943, 0, 21733388),
(882, 'Hezaram', 8, 78791, 32240, 36000, 49.00, 28.00, 27.00, 11.00, 38.00, 49.00, 30000, 0, 0, 6197702, 255, 585, 519, 392, 0, 21705275),
(884, 'Paaroxsizme', 6, 88609, 15723, 21000, 44.00, 43.00, 24.00, 14.00, 15.00, 20.00, 24520, 0, 0, 1835322, 865, 993, 878, 751, 0, 21703434),
(887, 'Ilarneek', 8, 90023, 34808, 36000, 29.00, 23.00, 26.00, 24.00, 41.00, 62.00, 30000, 0, 0, 6761547, 452, 456, 659, 426, 0, 21704991),
(891, 'Mathor', 10, 174498, 54240, 55000, 84.00, 90.00, 21.00, 12.00, 27.00, 13.00, 31211, 0, 0, 552913, 677, 774, 736, 412, 0, 21736417),
(895, 'Gradhar', 6, 29078, 15672, 21000, 39.00, 22.00, 17.00, 10.00, 27.00, 39.00, 20000, 0, 0, 2525143, 133, 124, 0, 75, 0, 21706232),
(897, 'Brolleur', 16, 262090, 128479, 136000, 18.00, 27.00, 38.00, 107.00, 107.00, 129.00, 10051, 0, 0, 1085269, 179, 557, 462, 341, 0, 21735963),
(901, 'Z`arf D`Ibn B&auml;shici', 10, 148648, 51373, 55000, 43.00, 54.00, 26.00, 60.00, 35.00, 69.00, 40000, 0, 0, 690011, 197, 307, 42, 250, 0, 21736283),
(903, 'Zar`Kull', 14, 104303, 94018, 105000, 155.00, 110.00, 67.00, 48.00, 89.00, 37.00, 30104, 0, 0, 1527654, 906, 648, 1164, 582, 0, 21736163),
(904, 'Griffith', 5, 22223, 13366, 15000, 14.50, 17.00, 19.00, 20.50, 28.00, 46.00, 20000, 0, 0, 694916, 81, 781, 195, 140, 0, 21722020),
(905, 'E&auml;nlys', 13, 145740, 80155, 91000, 101.50, 64.00, 84.00, 40.00, 61.00, 36.50, 1291, 0, 0, 217, 526, 1443, 795, 900, 0, 21736371),
(906, 'Jaruleek', 12, 167461, 70252, 78000, 61.00, 65.00, 96.00, 92.00, 60.00, 26.00, 40000, 0, 0, 114442, 215, 196, 202, 73, 0, 21735894),
(909, 'Zasoum', 7, 134927, 27274, 28000, 36.50, 24.00, 23.00, 26.50, 33.00, 68.00, 284, 0, 0, 879663, 374, 566, 680, 548, 0, 21736581),
(911, 'Nathanaou', 1, 3516, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 264131, 50, 50, 50, 50, 0, 21662418),
(914, 'Masme', 11, 132952, 56483, 66000, 97.00, 55.50, 88.00, 12.50, 33.50, 16.50, 40000, 0, 0, 1000826, 361, 371, 637, 596, 0, 21734422),
(915, 'Karann', 12, 157914, 75534, 78000, 118.00, 120.00, 76.00, 139.00, 64.00, 18.00, 40000, 0, 0, 1749722, 1276, 1239, 1180, 1260, 0, 21732190),
(919, 'Morphox', 7, 87647, 21658, 28000, 29.50, 22.00, 84.00, 32.00, 17.50, 19.00, 30000, 0, 0, 7461538, 228, 236, 234, 268, 0, 21718585),
(923, 'Artatiss', 7, 130335, 27252, 28000, 48.00, 59.00, 25.00, 61.00, 43.00, 42.00, 30000, 0, 0, 3201328, 1561, 1502, 1619, 2013, 0, 21729427),
(925, 'Abranxas', 8, 108440, 32281, 36000, 28.00, 31.00, 26.00, 25.00, 30.00, 56.00, 30000, 0, 0, 4282772, 135, 287, 119, 182, 0, 21729153),
(926, 'Zozofiit', 7, 104228, 25279, 28000, 29.50, 16.50, 19.00, 45.00, 23.00, 46.00, 0, 0, 0, 3437970, 196, 139, 298, 198, 0, 21735784),
(938, 'Anadyomene', 10, 66081, 47725, 55000, 17.00, 24.00, 22.00, 39.00, 73.00, 74.00, 23725, 0, 0, 1014367, 127, 235, 312, 230, 0, 21734486),
(944, 'Morgjin', 12, 180188, 72949, 78000, 71.00, 52.00, 75.00, 112.00, 94.00, 87.00, 7190, 0, 0, 89522, 275, 1136, 209, 1206, 0, 21733396),
(947, 'Gaoule', 6, 26150, 20595, 21000, 37.00, 27.00, 72.00, 19.00, 19.00, 16.00, 10000, 0, 0, 390546, 241, 194, 285, 286, 0, 21729115),
(951, 'Kaya', 15, 116928, 114616, 120000, 95.50, 95.00, 41.00, 86.50, 74.50, 85.50, 45464, 0, 0, 41919, 249, 1298, 372, 185, 0, 21736409),
(952, 'Yglora', 13, 109095, 81533, 91000, 114.00, 26.50, 185.50, 83.00, 38.50, 77.50, 40000, 0, 0, 1121823, 396, 2345, 671, 194, 0, 21730624),
(953, 'Vaith', 17, 106460, 139446, 153000, 205.00, 217.00, 158.00, 23.50, 38.00, 20.50, 30000, 0, 0, 166028, 5382, 4924, 4310, 4317, 0, 21736271);INSERT INTO `11may_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(954, 'Elfredo', 7, 133050, 26932, 28000, 51.00, 33.50, 25.50, 19.00, 32.50, 68.50, 15353, 0, 0, 829633, 710, 1054, 986, 793, 0, 21732395),
(955, 'Atalwatu', 4, 17706, 6697, 10000, 32.00, 14.00, 20.00, 7.00, 21.00, 36.00, 20000, 0, 0, 1545315, 23, 153, 0, 111, 0, 21695004),
(962, 'Deinoforo', 5, 26968, 12895, 15000, 72.00, 35.00, 22.00, 11.50, 14.00, 19.50, 20000, 0, 0, 1224959, 142, 54, 68, 95, 0, 21717464),
(964, 'Morvox', 9, 171957, 36069, 45000, 53.00, 49.00, 31.00, 47.00, 35.00, 27.00, 1167, 0, 0, 124184, 324, 317, 385, 384, 0, 21735860),
(966, 'Aysa', 7, 108185, 27603, 28000, 26.50, 17.00, 25.00, 36.50, 32.00, 73.00, 30000, 0, 0, 4167444, 971, 1686, 1355, 468, 0, 21735179),
(969, 'Artaxxas', 11, 166569, 61448, 66000, 43.00, 53.00, 76.00, 67.00, 70.50, 22.50, 30000, 0, 0, 142393, 1000, 827, 705, 726, 0, 21735981),
(972, 'Teperek', 4, 20769, 8096, 10000, 28.00, 24.00, 17.00, 36.00, 21.00, 20.00, 20000, 0, 0, 1117966, 289, 47, 368, 71, 0, 21710566),
(973, 'Jinugra', 6, 57027, 16991, 21000, 33.00, 35.00, 13.00, 23.00, 28.00, 24.00, 20000, 0, 0, 2382969, 198, 253, 110, 157, 0, 21718590),
(978, 'Lyonis', 18, 95609, 160029, 171000, 98.00, 76.00, 166.00, 54.00, 53.00, 49.00, 41119, 0, 0, 241331, 367, 223, 241, 222, 0, 21736204),
(980, 'Theobald', 11, 106782, 55901, 66000, 106.00, 88.00, 69.50, 34.00, 23.00, 17.50, 189, 0, 0, 213279, 222, 282, 32, 122, 0, 21735931),
(982, 'Belisama', 1, 3264, 0, 1000, 14.50, 18.00, 10.00, 18.00, 13.50, 12.50, 0, 0, 0, 567, 20, 20, 20, 20, 0, 21687415),
(984, 'Aries', 1, 4965, 79, 1000, 19.50, 11.00, 22.00, 14.00, 11.00, 13.50, 10000, 0, 0, 684801, 10, 10, 16, 4, 0, 21687415),
(985, 'Vordamass', 12, 158724, 74958, 78000, 92.00, 83.00, 29.00, 37.00, 49.00, 62.00, 30000, 0, 0, 1922633, 762, 1528, 1172, 1231, 0, 21733617),
(986, 'Sanogoaen', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697846),
(987, 'Karkanos', 4, 66117, 9315, 10000, 45.00, 28.00, 12.00, 25.00, 21.00, 17.00, 10000, 0, 0, 698976, 357, 319, 424, 468, 0, 21729936),
(988, 'Dorunn', 8, 176573, 30161, 36000, 57.00, 27.00, 68.00, 58.00, 31.00, 28.00, 981, 0, 0, 8, 491, 957, 339, 536, 0, 21734648),
(989, 'Darakim', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697846),
(990, 'Drizzit', 8, 94404, 29873, 36000, 39.00, 18.00, 58.00, 29.00, 23.00, 21.00, 24329, 0, 0, 715, 197, 137, 284, 309, 0, 21729360),
(991, 'Grunwuck', 7, 95753, 24595, 28000, 43.00, 16.50, 25.50, 14.00, 24.50, 65.50, 29961, 0, 0, 230488, 463, 203, 526, 310, 0, 21733165),
(992, 'Unluck', 1, 3752, 0, 1000, 16.50, 9.50, 14.50, 9.50, 19.50, 18.50, 0, 0, 0, 216391, 0, 0, 0, 0, 0, 21697846),
(994, 'Trak', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21697846),
(996, 'Flatron', 8, 92708, 28613, 36000, 30.00, 21.00, 24.00, 21.00, 30.00, 59.00, 27571, 0, 0, 2407, 288, 238, 353, 248, 0, 21736407),
(997, 'Erelian', 1, 3134, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5394, 0, 0, 0, 0, 0, 21697846),
(998, 'Arren', 1, 3134, 0, 1000, 18.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5511, 0, 0, 0, 0, 0, 21697846),
(999, 'Parangloss', 1, 3907, 0, 1000, 32.00, 19.50, 10.00, 7.50, 13.50, 10.50, 0, 0, 0, 1049, 50, 50, 50, 50, 0, 21697846),
(1000, 'Hogun', 8, 69272, 33930, 36000, 29.00, 20.00, 24.00, 21.00, 32.00, 59.00, 5506, 0, 0, 5565, 102, 157, 34, 141, 0, 21736333),
(1001, 'Bolas', 11, 109174, 64392, 66000, 65.50, 50.00, 33.00, 44.50, 59.50, 67.50, 1011, 0, 0, 526731, 927, 1139, 701, 1047, 0, 21736274),
(1002, 'Alrik', 8, 109049, 31839, 36000, 27.00, 26.00, 83.00, 38.00, 31.00, 43.00, 30000, 0, 0, 562744, 121, 129, 211, 296, 0, 21732233),
(1003, 'Rohnny', 1, 3150, 0, 1000, 20.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 182278, 16, 16, 16, 16, 0, 21699194),
(1004, 'Dji El', 7, 93318, 21400, 28000, 45.00, 29.00, 20.50, 24.50, 20.00, 41.00, 30000, 0, 0, 3042813, 136, 218, 159, 125, 0, 21725797),
(1005, 'Il&eacute;anor', 7, 97342, 23995, 28000, 31.00, 30.00, 26.00, 36.00, 27.00, 26.00, 26600, 0, 0, 763291, 273, 117, 216, 253, 0, 21735078),
(1007, 'Barleim', 1, 3940, 0, 1000, 16.50, 9.00, 20.00, 15.00, 14.50, 13.00, 0, 0, 0, 199312, 0, 0, 0, 0, 0, 21701209),
(1008, 'Laprise', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21701209),
(1022, 'Nicolag', 10, 142387, 46598, 55000, 19.00, 20.00, 25.00, 60.00, 49.00, 63.00, 220, 0, 0, 43786, 468, 623, 346, 484, 0, 21736452),
(1023, 'Nah&iuml;ada', 9, 186765, 38158, 45000, 48.50, 27.00, 57.00, 37.00, 19.00, 21.50, 18946, 0, 0, 417248, 139, 124, 140, 208, 0, 21736077),
(1024, 'Julian', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21707114),
(1025, 'Lhito', 11, 175613, 62779, 66000, 95.50, 90.00, 92.00, 24.00, 30.00, 16.50, 27007, 0, 0, 1026865, 96, 85, 106, 222, 0, 21735080),
(1027, 'Looorie', 1, 0, 0, 1000, 11.00, 15.00, 13.00, 14.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1028, 'Shiver', 1, 3134, 0, 1000, 15.00, 13.00, 19.00, 14.00, 14.00, 14.00, 0, 0, 0, 6098, 4, 4, 4, 4, 0, 21711893),
(1029, 'Arthurion', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1030, 'Argarock', 1, 3128, 0, 1000, 20.00, 10.50, 12.50, 18.00, 11.50, 18.50, 0, 0, 0, 8514, 4, 4, 4, 4, 0, 21711893),
(1031, 'Pelli', 1, 0, 0, 1000, 17.00, 17.00, 13.50, 16.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1032, 'Amnesiar', 1, 0, 0, 1000, 15.50, 10.50, 15.50, 10.50, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1033, 'Megaboste', 1, 0, 0, 1000, 19.00, 11.00, 18.00, 10.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1034, 'Y&egrave;menice', 1, 0, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1035, 'Snakel', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21711893),
(1036, 'Van Brok', 6, 59679, 15420, 21000, 73.00, 42.00, 11.00, 12.00, 23.00, 12.00, 6786, 0, 0, 974, 125, 48, 104, 194, 0, 21734797),
(1039, 'Delrion', 8, 105150, 29429, 36000, 29.00, 26.00, 27.00, 27.00, 31.00, 78.00, 20000, 0, 0, 348402, 341, 240, 278, 200, 0, 21731801),
(1042, 'Kihara', 5, 67535, 13029, 15000, 54.00, 24.50, 23.00, 8.50, 18.50, 16.50, 20000, 0, 0, 45587, 274, 417, 134, 153, 0, 21734730),
(1044, 'Bargop', 1, 3134, 0, 1000, 11.00, 15.00, 14.00, 14.00, 16.50, 17.50, 0, 0, 0, 5078, 12, 12, 12, 12, 0, 21716503),
(1045, 'Zhurion', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21716503);INSERT INTO `11may_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1046, 'Kalma', 1, 0, 0, 1000, 15.50, 10.50, 15.50, 10.50, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717293),
(1047, 'Listade', 1, 6630, 167, 1000, 25.00, 23.00, 11.00, 11.50, 14.00, 8.50, 10000, 0, 0, 472226, 13, 26, 13, 13, 0, 21717293),
(1048, 'Mabelrode', 5, 168844, 14946, 15000, 33.50, 26.50, 14.50, 68.00, 28.00, 24.50, 10293, 0, 0, 515512, 161, 342, 348, 303, 0, 21736566),
(1049, 'Peronrar', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717294),
(1050, 'Aure', 1, 3134, 0, 1000, 13.50, 13.00, 20.00, 17.00, 12.50, 13.00, 0, 0, 0, 5023, 0, 0, 0, 0, 0, 21717294),
(1051, 'Morgan', 4, 65590, 8639, 10000, 30.00, 25.00, 19.00, 24.00, 15.00, 30.00, 20000, 0, 0, 65955, 229, 31, 69, 16, 0, 21735299),
(1052, 'Haschatansyx', 3, 13365, 4756, 6000, 20.50, 13.50, 17.50, 13.50, 18.50, 33.50, 10000, 0, 0, 340285, 29, 5, 8, 6, 0, 21723226),
(1054, 'Ulyseis', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717692),
(1055, 'Sylv', 1, 0, 0, 1000, 14.00, 13.00, 19.00, 17.00, 13.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717692),
(1056, 'Starsa', 5, 100526, 14024, 15000, 13.50, 11.50, 16.00, 41.00, 24.00, 43.00, 16285, 0, 0, 57418, 319, 340, 217, 190, 0, 21736383),
(1057, 'Lollanth', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21717692),
(1058, 'Orga', 4, 62993, 8809, 10000, 28.00, 14.00, 32.00, 25.00, 14.00, 16.00, 1041, 0, 0, 347912, 110, 133, 63, 128, 0, 21736424),
(1059, 'Bonty', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724552),
(1060, 'Ouhgloub', 2, 18297, 2340, 3000, 32.00, 11.00, 16.00, 6.00, 16.00, 22.00, 10000, 0, 0, 213600, 69, 33, 171, 33, 0, 21734883),
(1061, 'Chiechinlla', 1, 3219, 36, 1000, 31.00, 21.00, 9.00, 7.50, 13.00, 11.50, 0, 0, 0, 0, 4, 4, 4, 4, 0, 21724552),
(1062, 'Kiste', 3, 151292, 5361, 6000, 37.00, 24.50, 22.00, 8.50, 16.50, 10.50, 5263, 0, 0, 7, 214, 241, 149, 135, 0, 21735226),
(1063, 'Naeril', 4, 84736, 8266, 10000, 24.00, 14.00, 34.00, 28.00, 14.00, 15.00, 14054, 0, 0, 325, 122, 108, 192, 119, 0, 21736558),
(1064, 'Kyrr Norfilith', 4, 23006, 6437, 10000, 28.00, 12.00, 37.00, 19.00, 18.00, 16.00, 9918, 0, 0, 71, 93, 45, 53, 44, 0, 21736317),
(1065, 'Elya', 2, 8984, 2155, 3000, 12.00, 12.00, 18.00, 17.00, 18.00, 27.00, 0, 0, 0, 133534, 12, 12, 22, 12, 0, 21724552),
(1066, 'Hanarion', 3, 29030, 5621, 6000, 19.50, 17.00, 25.00, 18.00, 16.50, 20.00, 17812, 0, 0, 309600, 110, 87, 108, 0, 0, 21733116),
(1067, 'Lunire', 1, 0, 0, 1000, 18.00, 12.00, 16.00, 19.00, 9.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724554),
(1068, 'Lilian', 1, 0, 0, 1000, 17.00, 10.50, 15.50, 10.00, 11.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724554),
(1069, 'Yuffiel', 1, 0, 0, 1000, 11.50, 10.00, 9.00, 22.50, 16.50, 21.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724554),
(1070, 'Selonna', 1, 3134, 0, 1000, 8.50, 13.00, 18.00, 15.00, 15.50, 16.50, 0, 0, 0, 5089, 0, 0, 0, 0, 0, 21724554),
(1071, 'Carcane', 1, 0, 0, 1000, 24.00, 21.00, 11.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21724554),
(1072, 'Aeldrina', 3, 36523, 4196, 6000, 27.00, 16.00, 18.50, 8.50, 19.50, 24.50, 1002, 0, 0, 178165, 73, 93, 68, 75, 0, 21735911),
(1073, 'Spertacus', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21725936),
(1074, 'Johnas', 4, 72269, 9880, 10000, 24.00, 14.00, 18.00, 21.00, 20.00, 33.00, 6218, 0, 0, 61102, 79, 57, 40, 14, 0, 21735358),
(1075, 'Antedmor', 3, 75868, 5736, 6000, 43.00, 29.00, 19.00, 13.50, 15.00, 14.50, 16464, 0, 0, 39237, 126, 123, 130, 157, 0, 21736080),
(1076, 'Narmacilis', 3, 36416, 3254, 6000, 21.50, 14.00, 35.00, 21.00, 12.00, 12.50, 10000, 0, 0, 513, 46, 88, 80, 38, 0, 21734955),
(1077, 'Cerbeque', 2, 19167, 1018, 3000, 27.00, 12.00, 18.00, 6.00, 16.00, 25.00, 6557, 0, 0, 13795, 27, 35, 38, 40, 0, 21736619),
(1078, 'le Teuru', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730957),
(1079, 'Viviano', 1, 7288, 67, 1000, 17.00, 17.00, 15.00, 12.50, 14.00, 13.50, 0, 0, 0, 46345, 14, 34, 14, 14, 0, 21735032),
(1080, 'Nicorth', 1, 9360, 7, 1000, 14.00, 15.00, 13.00, 14.00, 16.50, 18.50, 8367, 0, 0, 31, 32, 28, 16, 34, 0, 21734916),
(1081, 'Kravel', 2, 15209, 1145, 3000, 25.00, 14.00, 17.00, 9.00, 17.00, 22.00, 9838, 0, 0, 1, 17, 20, 16, 17, 0, 21736551),
(1082, 'Kabumn', 1, 0, 0, 1000, 28.00, 19.00, 9.00, 7.50, 13.00, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730957),
(1083, 'Anthonytouti', 1, 0, 0, 1000, 20.00, 14.00, 15.00, 10.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21730957);



CREATE TABLE `11may_guildes_3` (
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

CREATE TABLE `11may_guerres_3` (
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

CREATE TABLE `11may_joueurs_bonus_3` (
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

INSERT INTO `11may_joueurs_bonus_3` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1, 'Babka', 29, 30, 32, 10, 0, 20, 0, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21443125, 0, 86, 56, 65696, 1, 2, 0, -1, -1, 1, 1, 5, 16, 0, 0, 0, 0, 0),
(3, 'Adola', 82, 49, 136, 14, 27, 0, 0, 30, 10, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21443483, 0, 44, 138, 411163, 1, 6, 1, -1, -1, 0, 0, 16, 12, 10, 1, 0, 1, 0),
(5, 'Irkos', 61, 76, 69, 54, 35, 9, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443994, 0, 73, 117, 360981, 4, 2, 1, -1, -1, 1, 0, 32, 4, 2, 7, 1, 7, 3),
(9, 'L`Ardonien', 70, 144, 100, 102, 135, 23, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21444359, 0, 83, 73, 272177, 4, 1, 0, 30, 30, 0, 0, 520, 7, 0, 0, 0, 18, 0),
(34, 'Tulkas', 33, 31, 90, 83, 53, 85, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21602597, 0, 43, 33, 385925, 2, 1, 0, -1, -1, 1, 0, 2664, 0, 0, 20, 0, 0, 1),
(43, 'Mornor', 3, 0, 30, 0, 30, 30, 0, 60, 60, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21635756, 0, 22, 7, 121227, 0, 0, 1, 30, 50, 1, 0, 0, 0, 0, 9, 1, 0, 0),
(44, 'Malian', 4, 4, 2, 15, 30, 34, 0, 80, 70, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21662827, 0, 24, 5, 171806, 0, 0, 1, 20, 40, 0, 0, 8, 0, 0, 5, 7, 1, 0),
(45, 'Malbrum', 50, 92, 54, 80, 42, 6, 4, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21667045, 0, 14, 34, 331342, 5, 6, 1, -1, -1, 1, 0, 632, 9, 1, 2, 0, 1, 0),
(46, 'Atalwatu', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21677452, 0, 6, 11, 85416, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 0, 5, 0, 0),
(47, 'Korannos', 18, 34, 0, 0, 0, 14, 0, 70, 70, 0, 'Magocracie', 'Mésomnon', '', 'Aucune', 21694607, 0, 21, 6, 177115, 0, 0, 0, -1, -1, 1, 1, 0, 0, 3, 2, 0, 0, 0),
(48, 'Massina', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21712695, 0, 14, 7, 155810, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 2, 2, 0, 0),
(49, 'Aquilodon', 1, 0, 30, 0, 0, 2, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21713353, 0, 9, 1, 88380, 3, 0, 0, -1, -1, 1, 0, 0, 0, 0, 6, 0, 0, 0),
(51, 'Anas', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21734580, 0, 0, 0, 43405, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0);



CREATE TABLE `11may_joueurs_heros_3` (
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

INSERT INTO `11may_joueurs_heros_3` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1, 'Babka', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Helcar', 90361, 0),
(3, 'Adola', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'des Plaines Perdues', 659010, 0),
(5, 'Irkos', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'de Kalferas', 701854, 0),
(9, 'L`Ardonien', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Le Village Isol&eacute;', 396371, 0),
(34, 'Tulkas', 'Célestial', 'Magicien', 'Pensée', 'Maître', 'd`Illya-Verte', 1312501, 0),
(43, 'Mornor', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'd`Armale', 172619, 0),
(44, 'Malian', 'Fée', 'Magicien', 'Pensée', 'Intendant', 'de Diriath', 254377, 0),
(45, 'Malbrum', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Mont-Chemin-des-Ildys', 108685, 0),
(46, 'Atalwatu', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Tkashi', 32574, 0),
(47, 'Korannos', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Nymrais', 108472, 0),
(48, 'Massina', 'Elfe Noir', 'Démonologiste', 'Maladie', 'Matriarche', 'de For&ecirc;t de la Mort', 125584, 0),
(49, 'Aquilodon', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'de M&eacute;n&eacute;x&egrave;ne', 36769, 0),
(51, 'Anas', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de L`&icirc;le des Perdus', 5198, 0);



CREATE TABLE `11may_joueurs_stats_3` (
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
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

INSERT INTO `11may_joueurs_stats_3` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1, 'Babka', 16, 90361, 135225, 136000, 81.00, 54.00, 132.00, 73.00, 17.00, 47.00, 442, 0, 0, 1247978, 89, 345, 12, 512, 0, 21766925),
(3, 'Adola', 24, 659010, 287376, 300000, 158.00, 92.00, 270.00, 70.00, 68.00, 37.00, 22, 0, 0, 99563, 1176, 1237, 1525, 1095, 0, 21732035),
(5, 'Irkos', 24, 701854, 297733, 300000, 173.00, 183.00, 142.00, 85.00, 75.00, 33.00, 23311, 0, 0, 640637, 954, 894, 855, 811, 0, 21728465),
(9, 'L`Ardonien', 25, 396371, 318020, 325000, 140.00, 208.00, 137.00, 191.00, 215.00, 85.00, 15973, 0, 0, 6548999, 5471, 5409, 5759, 5227, 0, 21730540),
(34, 'Tulkas', 21, 1312501, 215375, 231000, 57.50, 66.00, 140.00, 985.99, 126.00, 202.00, 50000, 0, 0, 2065459422, 173663, 175093, 176250, 178414, 0, 21728923),
(43, 'Mornor', 10, 172619, 53902, 55000, 32.00, 15.00, 68.00, 24.00, 65.00, 94.00, 29840, 0, 0, 49813, 294, 117, 640, 200, 0, 21733287),
(44, 'Malian', 13, 254377, 88619, 91000, 17.50, 25.00, 37.00, 48.50, 81.00, 124.00, 32475, 0, 0, 578995, 1535, 1030, 1094, 728, 0, 21730895),
(45, 'Malbrum', 13, 108685, 85692, 91000, 84.00, 118.00, 109.00, 160.00, 74.50, 24.50, 14016, 0, 0, 2578544, 31964, 28496, 29515, 27658, 0, 21733021),
(46, 'Atalwatu', 5, 32574, 10041, 15000, 33.00, 15.00, 21.50, 7.50, 23.50, 42.50, 20000, 0, 0, 2294166, 83, 184, 167, 133, 0, 21689013),
(47, 'Korannos', 6, 108472, 15100, 21000, 41.00, 50.00, 25.00, 18.00, 25.00, 59.00, 7131, 0, 0, 470, 259, 291, 56, 196, 0, 21733004),
(48, 'Massina', 4, 125584, 6342, 10000, 22.00, 10.00, 21.00, 14.00, 27.00, 36.00, 10456, 0, 0, 32179, 1054, 703, 745, 844, 0, 21736391),
(49, 'Aquilodon', 6, 36769, 15478, 21000, 35.00, 22.00, 53.00, 10.00, 27.00, 39.00, 151, 0, 0, 454126, 251, 223, 232, 445, 0, 21733904),
(51, 'Anas', 1, 5198, 0, 1000, 13.00, 13.00, 18.00, 20.00, 13.50, 12.50, 10000, 0, 0, 1434, 14, 9, 9, 14, 0, 21732199);



