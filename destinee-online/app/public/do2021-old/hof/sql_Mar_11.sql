CREATE TABLE `11mar_guildes_1` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(80) NOT NULL default '',
  `province` varchar(40) NOT NULL default '',
  `nb_membres` int(11) NOT NULL default '0',
  `date_création` int(11) NOT NULL default '0',
  `img` tinytext NOT NULL,
  `chef` varchar(50) NOT NULL default '',
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `regles` text NOT NULL,
  `puissance` int(11) NOT NULL default '0',
  `siteweb` tinytext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

INSERT INTO `11mar_guildes_1` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Alliés de l`Ombre', 'Outre-Mer', 16, 21443802, 'http://img210.imageshack.us/img210/5494/cimetierel.jpg', 'Vils&auml;en', 'Depuis le départ de Cassandre, la barde schizophrène jadis cheffe des Saltimbanques de Kalamai, un grand bouleversement avait eu lieu au sein de sa communauté. La Nécromancienne Cendrine au passé tumultueux avait accepté de prendre en charge les combattants déchus au nom du lien familial qui unissait les deux femmes.

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
- partage des rapports de combat et d`espionnage.', 374937, 'http://saltimbanques.forumactif.com'),
(3, 'L`Ordre Célestial', 'Scitopole', 10, 21443864, 'http://i64.servimg.com/u/f64/13/74/94/60/celest10.jpg', 'Dalan', 'Un homme vêtu d’une longue cape ternie par les intempéries, bâton à la main, se tenait devant les majestueuses forteresses, maintenant en ruines, du peuple Célestial d’Etimnon. La figure avançait d’un pas lourd; autant ralenti par ce qui semblait être un fardeau psychologique, que par l’imposant bouclier qu’il tenait avec lassitude dans son autre main… Un bouclier que portaient fièrement les Paladins, à une certaine époque, semble-t-il...

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

Lieu de rassemblement : http://celestial.forumactif.com/', 373798, 'http://celestial.forumactif.com/forum.htm'),
(4, 'L`Orchidée', 'Thassopole', 9, 21443915, 'http://fr.academic.ru/pictures/frwiki/67/Claudius_II_coin_%28colourised%29.png', 'Orium', '« Jour de marché dans la cité impériale,
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

N.B. : Les rapports de combats et les rapports d\'espionnage sont importants à transmettre ;)', 284776, 'http://orchideemarchande.forumparfait.com/'),
(5, 'L`Ordre de So', 'Prévèze', 10, 21444005, 'http://www.halloweens.net/client/4256/prod/VS_4256_828_1160811630.jpg', 'Olg le Gras', 'Une voix lugubre retentit. Elle déclame des mots. Et ces mots font des phrases. Et ces phrases ont un sens. Quoique.
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
', 158610, 'http://ordredesbouchers.forumparfait.com/'),
(6, 'L`Union des Citoyens', 'Vénopole', 20, 21445160, 'http://r27.imgfast.net/users/2712/57/63/34/album/uc11.png', 'Daneel', 'A nouveau, Kalamaï avait été bouleversée, ravagée en l`espace d`une nuit. Des anciens royaumes ne restaient que les mémoires et quelques écrits. 

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
Écrire au chef de l`alliance ou poster sur le forum pour postuler.', 578147, 'http://union-des-citoyens.positifforum.com/forum.htm://'),
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

-Les païens (les autres classes) sont invités à nous rejoindre pour nourrir les flammes du bucher. ', 156819, 'http://ordredespurs.forumgratuit.fr'),
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
', 282957, 'http://augures-boreals.forumgratuit.ca'),
(11, 'Les Ligues Unifiées', 'Zakinthe', 2, 21624073, 'http://www.wizards.com/magic/images/cardart/9ED/Trade_Routes.jpg', 'Criton', 'Les Ligues Unifiées des Négociants Libres de Zakinthe, parfois connues sous le nom des ligues de Zakinthe, les ligues unifiées, ou simplement des ligues, sont une organisation qui dirige Zakinthe depuis l’ascension de Meggido. 
Les ligues surveillent tous les échanges économiques qui transitent par Zakinthe et commandent tous les échanges maritimes et aériens de la province. Avant leur unification par Meggido, les diverses ligues se querellaient sans cesse, luttant entre elles pour la suprématie, et n’hésitant pas à engager des pirates et des mercenaires pour piller la cargaison d’une ligue rivale. Trahison et fourberie était omniprésentes. L’arrivée de Meggido et de son armée bouleversa à jamais la province de ces seigneurs marchands comme en témoigne le récit que nos allons vous conter :

L’histoire des Ligues Unifiées… Une histoire étonnante pour une armada qui n’en finira jamais d’étonner Kalamai… Une histoire oubliée de tous dû au manque d’écrits et d’archives… Une histoire fabuleuse dans laquelle se sont alliés mythe et réalité, constituant ainsi le passé et le fondement de l’armada commerciale la plus redoutée de tout les temps.
Au commencement, dans un lointain continent sous l’emprise de puissantes alliances, il y avait un homme qui avait de très grands projets. Connu pour la cicatrice ornant son visage, son épée à deux mains gigantesque et son manque total de pitié, Meggido était considéré comme un des seigneurs les plus puissants du monde connu. Son statut lui permis de travailler sans attirer l’attention des puissants de ce monde. Dans l’ombre, il constitua une organisation de plusieurs milliers d’hommes armés, de centaines de machines de guerre, s’entoura de puissants officiers et organisa l’ensemble sous la forme d’une organisation timocratique. C’est ainsi que la plus prospère nation de seigneurs marchands au monde fut crée, elle fut nommée la Ligue. Pendant plusieurs années, la Ligue développa son potentiel économique tel un champignon. Elle gagna ainsi inexorablement de nouveaux marchés. Le chemin parcouru par les ligueurs fut semé de cadavres et de banqueroutes. Jusqu’au jour ou Meggido mis son plan à exécution : il tenta de s’emparer militairement de la province voisine de Zakinthe, Prévèze, avec l’aide de ses hommes. La bataille fut féroce, la presque totalité des ligueurs furent tués par les terribles bouchers de So et leurs alliés tandis ce que les autres battaient en retraite vers leur terres.
Alors que la bataille semblait se terminer, les membres de l`Ordre des Templiers de la Loi Empirique, la plus puissante armada de la région, entra en guerre contre les forces de Prévèze. Sans le vouloir, cette intervention sauva les derniers ligueurs d’une mort certaine. Tandis que les Templiers hissaient leur bannière en haut de la capitale de Prévèze, célébrant ainsi leur victoire sur les terribles bouchers, Meggido médita sur sa défaite. Certes, il avait perdu cette bataille mais il avait apprit beaucoup de ses ennemis.
En l’espace de quelques mois, il réorganisa complètement les ligues, les faisant passées à un système corporatiste hiérarchisé et unifié. Les puissantes ligues sont désormais prêtes pour la guerre, déterminées à vaincre quiconque mettra en doute leur suprématie naissante.
', 'Qu’es ce que les Ligues Unifiées ? 
Nous sommes un regroupement de royaumes indépendants issus de l’ancienne ligue crée par l’empereur de notre province : Meggido. Notre but est d’affirmer notre hégémonie militaire, politique et économique sur Kalamai.

Une bonne coordination est essentielle c``est pourquoi les ligues sont divisées en fonction de leur secteur d’activité au sein de l’industrie de Zakinthe. On trouve notamment parmi elles la célèbre ligue des Charpentiers et Maçons, la très compétente ligue des Forgerons et Fondeurs, la renommée ligue des Bateliers et Navigateurs ou bien encore la redoutable ligue des Golémanciens et Inventeurs.', 'En tant qu’organisation composée d’un nombre restreint de seigneurs, l’intérêt de grades interne est faible. La création d’un forum n’est pas prévue seulement une présence minimum hebdomadaire sur le chat de province est imposée.
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

', 57849, 'http://');



CREATE TABLE `11mar_guerres_1` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(10) NOT NULL default '0',
  `valide` varchar(10) NOT NULL default '0',
  `initiateur` varchar(80) NOT NULL default '',
  `guilde1` varchar(80) NOT NULL default '',
  `guilde2` varchar(80) NOT NULL default '',
  `indep1` text NOT NULL,
  `indep2` text NOT NULL,
  `declaration` text NOT NULL,
  `vainqueur` varchar(80) NOT NULL default '',
  `dateDebut` int(11) NOT NULL default '0',
  `puissDebut1` int(11) NOT NULL default '0',
  `puissDebut2` int(11) NOT NULL default '0',
  `dateFin` int(11) NOT NULL default '0',
  `puissFin1` int(11) NOT NULL default '0',
  `puissFin2` int(11) NOT NULL default '0',
  `cond1` varchar(20) NOT NULL default '',
  `val1` int(11) NOT NULL default '0',
  `cond2` varchar(20) NOT NULL default '',
  `val2` int(11) NOT NULL default '0',
  `cond3` varchar(20) NOT NULL default '',
  `val3` int(11) NOT NULL default '0',
  `andor` char(3) NOT NULL default '',
  `prop1` varchar(20) NOT NULL default '',
  `valp1` int(11) NOT NULL default '0',
  `prop2` varchar(20) NOT NULL default '',
  `valp2` int(11) NOT NULL default '0',
  `prop3` varchar(20) NOT NULL default '',
  `valp3` int(11) NOT NULL default '0',
  `andorp` char(3) NOT NULL default '',
  `proposeur` varchar(80) NOT NULL default '',
  `nbrAttaVict` double NOT NULL default '0',
  `nbrAttaDefa` double NOT NULL default '0',
  `nbrDefeVict` double NOT NULL default '0',
  `nbrDefeDefa` double NOT NULL default '0',
  `nbratta1` double NOT NULL default '0',
  `nbratta2` double NOT NULL default '0',
  `nbrvict1` double NOT NULL default '0',
  `nbrvict2` double NOT NULL default '0',
  `xp1` int(11) NOT NULL default '0',
  `xp2` int(11) NOT NULL default '0',
  `pertePuiss1` int(11) NOT NULL default '0',
  `pertePuiss2` int(11) NOT NULL default '0',
  `acres1` int(11) NOT NULL default '0',
  `acres2` int(11) NOT NULL default '0',
  `prison1` int(11) NOT NULL default '0',
  `prison2` int(11) NOT NULL default '0',
  `tues1` int(11) NOT NULL default '0',
  `tues2` int(11) NOT NULL default '0',
  `detruits1` double NOT NULL default '0',
  `detruits2` double NOT NULL default '0',
  `or1` int(11) NOT NULL default '0',
  `or2` int(11) NOT NULL default '0',
  `ressources1` int(11) NOT NULL default '0',
  `ressources2` int(11) NOT NULL default '0',
  `PGCj1` varchar(25) NOT NULL default '',
  `PGCj2` varchar(25) NOT NULL default '',
  `PGCxp1` int(11) NOT NULL default '0',
  `PGCxp2` int(11) NOT NULL default '0',
  `PGCatta` varchar(25) NOT NULL default '',
  `PGCvainqueur` varchar(25) NOT NULL default '',
  `cache` int(11) NOT NULL default '0',
  `leaver1` text NOT NULL,
  `leaver2` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

INSERT INTO `11mar_guerres_1` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
(1, 'guerre', 'termine', '', 'L`Ordre de So', 'L`Orchidée', '', '', 'La Boucherie est un peu triste, en c`moment, vous trouvez pas ?

Rien de tel que quelques fleurs pour égayer l`ensemble. Malheureusement, le fleuriste, c`est un peu cher, et on a pas envie de se retrouver avec un meurtre sur l`dos. Ça demande un peu de paperasse, après, comprenez ? Donc, on va pas le tuer pour lui piquer ses trucs.

On a donc décider d`aller en cueillir nous-mêmes.

A la hache.

Sus à l`Orchidée, les amis !

Fitzebist !
', 'L`Orchidée', 21481768, 138276, 163306, 21507453, 141583, 137373, 'pertePuiss', 3000000, 'detruits', 12, '', 0, 'OR', 'Butin total', 690941, 'detruits', 5, '', 0, 'AND', 'L`Ordre de So', 128, 39, 33, 82, 158.710816038, 109.95313702, 149.489359326, 117.063759188, 84912, 107634, 3013773, 2490658, 613870, 429417, 205984, 144362, 142215, 90824, 5.50325067565, 4.925323349, 885319, 451145, 1064, 452, 'Olg le Gras', 'Fansel', 357, 3177, 'Olg le Gras', 'Fansel', 0, '|Agasur|Vincze|', '|Grandgor|Ilgansil|Aerandir|'),
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

Fitzebist !', 'L`Ordre de So', 21507457, 156065, 151926, 21556287, 212870, 184617, 'nbrvict', 200, '', 0, '', 0, 'AND', 'Butin total', 2274722, '', 0, '', 0, '', '', 193, 34, 20, 89, 215.923931985, 104.650915364, 200.185119575, 119.24382942, 114278, 188202, 4983005, 3379839, 882162, 388682, 606970, 233358, 436161, 140142, 16.235907286, 2.01758043576, 2406453, 1347076, 1914, 538, 'Seymour', 'Tulkas', 836, 6266, 'Tulkas', 'Tulkas', 0, '|Julis|Arganor|Olg le Gras|Tadzam CoupeVent|Kopan|Nragax|', '|Vezk|Gokily|'),
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

A l`attaque pour la défense de l`attaque sans défense !', 'L`Ordre des Templiers de la Loi Empirique', 21582649, 88692, 252481, 21603939, 130307, 190865, 'xp', 60000, '', 0, '', 0, 'AND', 'Butin total', 1472769, '', 0, '', 0, '', '', 25, 3, 11, 12, 26.0099151959, 22.621228224, 32.7414531609, 14.370959839, 60030, 28135, 774036, 1958429, 107569, 49121, 70511, 37169, 41614, 33789, 1.78159393922, 0, 639675, 348756, 209, 95, 'Bamdinas', 'Olg le Gras', 4576, 1869, 'Bamdinas', 'Bamdinas', 0, '', '|Snikch|Uthers|Daringel|'),
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
(20, 'guerre', 'encours', '', 'Les Alliés de l`Ombre', 'L`Ordre Célestial', '', '', '[...]', '', 21646832, 511692, 386404, 0, 0, 0, 'nbrvict', 75, 'xp', 75000, 'pertePuiss', 1800000, 'AND', '', 0, '', 0, '', 0, '', '', 8, 5, 1, 10, 13.7961794363, 10.4754417891, 9.22024266684, 14.1681441851, 35225, 59502, 1624377, 901847, 68869, 68368, 26800, 50537, 16381, 34386, 1.91825797162, 0, 305973, 410560, 86, 253, 'Malorus', 'Pyaray', 2279, 15128, 'Malorus', 'Pyaray', 0, '', ''),
(21, 'pna', 'enattente', 'L`Ordre des Templiers de la Loi Empirique', 'L`Ordre des Templiers de la Loi Empirique', 'Les Alliés de l`Ombre', '', '', 'Un geste anecdotique au regard de la main salvatrice que vous nous avez tendue.

Alliés de l\'Ombre ! Les Templiers mettrons tout en œuvre pour qu\'Outre-Mer s\'abreuve du sang et des richesses de nos ennemis communs !', '', 21648844, 172475, 390569, 0, 0, 0, '', 0, '', 0, '', 0, '', '', 0, '', 0, '', 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, '', '', 0, '', '');



CREATE TABLE `11mar_joueurs_bonus_1` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(30) NOT NULL default '',
  `att` smallint(6) NOT NULL default '0',
  `def` smallint(6) NOT NULL default '0',
  `ini` smallint(6) NOT NULL default '0',
  `cha` smallint(6) NOT NULL default '0',
  `end` smallint(6) NOT NULL default '0',
  `pui` smallint(6) NOT NULL default '0',
  `chance` smallint(6) NOT NULL default '0',
  `offensive` tinyint(4) NOT NULL default '100',
  `defensive` tinyint(4) NOT NULL default '100',
  `rapport` tinyint(4) NOT NULL default '0',
  `politique` varchar(40) NOT NULL default 'Autarcie',
  `province` varchar(40) NOT NULL default 'Aucune',
  `statut` varchar(40) NOT NULL default '',
  `guilde` varchar(70) NOT NULL default 'Aucune',
  `chg_province` int(11) NOT NULL default '0',
  `quete` int(11) NOT NULL default '0',
  `victoire` int(11) NOT NULL default '0',
  `défaite` int(11) NOT NULL default '0',
  `gain_jour` int(11) NOT NULL default '0',
  `guildeRP` int(11) NOT NULL default '0',
  `rangguildeRP` int(11) NOT NULL default '0',
  `rapportOff` int(11) NOT NULL default '0',
  `incantemin` smallint(6) NOT NULL default '-1',
  `incantemax` smallint(6) NOT NULL default '-1',
  `incantetjrsoff` tinyint(4) NOT NULL default '1',
  `incanterExplo` tinyint(1) NOT NULL default '1',
  `objets_casses` smallint(5) unsigned NOT NULL default '0',
  `satt` smallint(3) NOT NULL default '0',
  `sdef` smallint(3) NOT NULL default '0',
  `sini` smallint(3) NOT NULL default '0',
  `spui` smallint(3) NOT NULL default '0',
  `send` smallint(3) NOT NULL default '0',
  `scha` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1960 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1960 ;

INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(10, 'Maher', 26, 21, 27, 12, 30, 16, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 40, 206, 786614, 0, 0, 0, -1, -1, 1, 1, 50, 5, 0, 4, 1, 2, 1),
(11, 'Titlan', 64, 17, 15, 0, 11, 0, 3, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21584315, 0, 135, 14, 81755, 0, 0, 0, -1, -1, 1, 1, 6, 3, 7, 4, 0, 2, 1),
(12, 'Vigrid', 63, 63, 83, 15, 29, 21, 3, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21451213, 0, 210, 129, 425397, 0, 0, 1, -1, -1, 1, 0, 14, 0, 0, 11, 0, 0, 9),
(17, 'Helmrod', 26, 12, 0, -6, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21444985, 0, 70, 177, 17161, 0, 0, 1, -1, -1, 1, 0, 4, 0, 0, 8, 2, 2, 0),
(29, 'Lissana', 3, 23, 10, 106, 38, 115, 2, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443597, 0, 111, 133, 183689, 0, 0, 1, 80, 80, 0, 0, 122, 0, 0, 0, 17, 0, 0),
(33, 'Demetron', 50, 17, 0, 0, 4, 0, 0, 80, 20, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21447014, 0, 151, 235, 322801, 0, 0, 0, -1, -1, 1, 1, 6, 8, 6, 0, 0, 2, 0),
(35, 'Meissner', 17, 35, 46, 51, 0, 0, 13, 100, 10, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21443640, 0, 98, 313, 1110001, 0, 0, 1, -1, -1, 1, 0, 201, 21, 0, 0, 0, 0, 0),
(36, 'Akos', 0, 2, 0, 0, 0, 0, 0, 80, 10, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21460237, 0, 85, 223, 17417, 0, 0, 1, -1, -1, 1, 0, 1, 12, 0, 0, 0, 0, 0),
(42, 'Ora&iuml;a', 83, 56, 62, 0, 0, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21559358, 0, 191, 56, 176518, 0, 0, 0, -1, -1, 1, 1, 2, 1, 3, 11, 0, 0, 0),
(44, 'Oracle', 171, 147, -6, 83, 105, 28, 0, 100, 30, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443842, 0, 163, 159, 265865, 0, 0, 0, 30, 30, 0, 0, 26, 10, 1, 0, 0, 15, 3),
(45, 'Zhia', 0, 0, 2, 0, 20, 8, 0, 100, 10, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21444135, 0, 184, 111, 91222, 0, 0, 0, 80, 80, 1, 1, 0, 0, 0, 0, 0, 11, 0),
(47, 'Agasur', 7, 4, 2, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21497551, 0, 35, 94, 184924, 0, 0, 0, -1, -1, 1, 1, 8, 1, 3, 0, 2, 0, 0),
(58, 'Egleria', 23, 34, 21, 72, 25, 55, 0, 80, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21446846, 0, 175, 111, 206343, 0, 0, 0, 80, 120, 1, 1, 0, 1, 2, 4, 1, 11, 1),
(61, 'Magebar', 33, 2, 46, 19, 43, 47, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 98, 91, 449540, 0, 0, 1, -1, -1, 1, 1, 18, 3, 3, 10, 1, 1, 1),
(68, 'Kiminou', 128, 71, 130, 66, 11, 6, 0, 80, 60, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21444176, 0, 260, 222, 268956, 0, 0, 0, 20, 30, 1, 0, 142, 2, 0, 31, 0, 0, 0),
(71, 'T&ecirc;te-Plate', 186, 69, 111, 131, 33, 28, 1, 80, 30, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21455345, 0, 124, 240, 549708, 0, 0, 0, 10, 10, 1, 0, 21, 0, 20, 10, 0, 6, 1),
(86, 'Lothadith', 6, 8, 13, 0, 23, 138, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443629, 0, 172, 47, 165042, 0, 0, 0, 40, 80, 0, 0, 46, 0, 0, 0, 18, 0, 0),
(88, 'Shaugan', 17, 12, 14, 0, 7, 6, 1, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 30, 100, 499266, 0, 0, 0, -1, -1, 1, 1, 11, 0, 1, 3, 0, 2, 0),
(89, 'Argazel', 29, 6, 25, 114, 84, 148, 2, 70, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21443807, 0, 81, 168, 399065, 0, 0, 0, 20, 30, 1, 1, 146, 0, 0, 7, 0, 0, 12),
(92, 'Turfel', 330, 283, -5, 108, 81, 25, 5, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21501775, 0, 137, 162, 590111, 0, 0, 0, 50, 50, 1, 0, 430, 1, 0, 0, 0, 0, 37),
(93, 'Danahyl', 36, 2, 23, 11, 24, 83, 0, 90, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21447003, 0, 101, 93, 163983, 0, 0, 0, -1, -1, 1, 0, 12, 2, 5, 2, 1, 2, 5),
(95, 'Rabak', 18, 18, 63, 0, 0, 12, 2, 100, 10, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21487333, 0, 263, 199, 193392, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 10, 0, 0, 6),
(98, 'Nelvin', 32, 12, 64, 0, 0, 0, 0, 100, 80, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21450036, 0, 69, 88, 408610, 0, 0, 1, -1, -1, 1, 0, 1, 0, 0, 15, 0, 0, 0),
(99, 'Aorphen', 74, 12, 79, 74, 4, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21484036, 0, 123, 196, 400847, 0, 0, 1, -1, -1, 1, 1, 21, 9, 0, 8, 0, 1, 0),
(116, 'Ge&iuml;nfrindel', 27, 23, 27, 12, 21, 40, 4, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445317, 0, 80, 200, 766919, 0, 0, 0, -1, -1, 1, 1, 44, 1, 3, 0, 5, 6, 1),
(119, 'Barbouza', 11, 10, 8, 2, 45, 16, 0, 50, 50, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447192, 0, 105, 279, 526927, 0, 0, 1, 80, 80, 0, 0, 15, 3, 0, 3, 4, 0, 2),
(120, 'Aub&eacute;rion', 14, 22, 58, 92, 61, 137, 2, 70, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21443561, 0, 126, 178, 441661, 0, 0, 0, 50, 50, 1, 0, 14, 0, 0, 7, 5, 0, 7),
(125, 'Lhito', 117, 91, 106, 50, 4, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21443678, 0, 301, 316, 332595, 0, 0, 1, -1, -1, 0, 0, 36, 4, 16, 0, 0, 2, 6),
(131, 'Dalan', 104, 79, 32, 66, 28, 28, 2, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21453690, 0, 111, 172, 216820, 0, 0, 0, 20, 30, 1, 0, 29, 13, 15, 5, 0, 1, 0),
(132, 'Malorus', 13, 42, 77, 93, 90, 303, 0, 80, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21444290, 0, 210, 256, 491991, 0, 0, 1, 20, 20, 1, 0, 224, 3, 0, 12, 1, 2, 15),
(133, 'Erios', 17, 19, 22, 0, 3, 6, 0, 100, 80, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443902, 0, 159, 208, 396333, 0, 0, 1, -1, -1, 0, 0, 0, 1, 14, 0, 0, 0, 0),
(136, 'Lirth Evendil', 31, 9, 65, 8, 4, 0, 0, 90, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443876, 0, 154, 172, 164813, 0, 0, 0, -1, -1, 1, 0, 3, 2, 0, 16, 0, 0, 0),
(138, 'Vils&auml;en', 103, 94, 37, 0, 16, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21443723, 0, 96, 180, 223903, 0, 0, 0, -1, -1, 1, 1, 6, 0, 4, 11, 0, 0, 1),
(140, 'Ananta', 28, 33, 14, 18, 9, 25, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 179, 83, 174786, 0, 0, 1, -1, -1, 1, 1, 3, 2, 2, 3, 1, 0, 1),
(143, 'Rinoacamui', 27, 32, 0, 3, 4, 0, 0, 100, 10, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21443995, 0, 75, 111, 394784, 0, 0, 0, -1, -1, 1, 1, 17, 0, 0, 2, 7, 2, 0),
(144, 'Irkos', 66, 95, 59, 86, 24, 16, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443870, 0, 119, 240, 279818, 0, 0, 1, -1, -1, 1, 0, 19, 0, 2, 10, 0, 4, 5),
(145, 'Phyleas', 90, 50, 111, -2, 43, 0, 0, 80, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445026, 0, 263, 270, 283421, 0, 0, 0, 50, 50, 0, 0, 16, 25, 1, 4, 0, 0, 0),
(150, 'Kahzerya', 108, 159, 60, 50, 58, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444302, 0, 191, 246, 278435, 0, 0, 0, -1, -1, 1, 1, 23, 0, 2, 7, 0, 7, 7),
(152, 'Hishnak', 29, 39, 3, 50, 13, 0, 0, 80, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21443890, 0, 106, 61, 164631, 0, 0, 1, -1, -1, 1, 1, 3, 1, 7, 0, 0, 0, 5),
(156, 'Dyospiros', 101, 111, 3, 17, 48, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21468368, 0, 230, 181, 213267, 0, 0, 0, 50, 50, 1, 1, 15, 7, 11, 0, 0, 6, 0),
(161, 'Marr', 51, 40, 15, 0, 22, 8, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21472054, 0, 130, 103, 345641, 0, 0, 1, 50, 50, 1, 1, 22, 0, 0, 14, 0, 0, 0),
(162, 'Xelios', 0, 0, 0, 0, 0, 0, 0, 80, 70, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21443821, 0, 57, 61, 166823, 0, 0, 1, -1, -1, 1, 1, 10, 0, 6, 0, 0, 3, 1),
(167, 'Klaasninas', 65, 150, 10, 12, 22, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21446750, 0, 208, 132, 221730, 0, 0, 0, 40, 40, 0, 0, 9, 5, 13, 0, 0, 3, 0),
(168, 'Altharam', 113, 82, -6, 28, 30, 6, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444026, 0, 170, 85, 161882, 0, 0, 0, -1, -1, 1, 0, 6, 3, 14, 0, 0, 0, 0),
(170, 'Kharst', 86, 81, 30, 97, 62, 0, 0, 100, 30, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21445603, 0, 155, 357, 913445, 0, 0, 0, -1, -1, 1, 1, 77, 1, 0, 1, 0, 7, 9),
(171, 'Draps', 32, 50, 31, 15, 46, 6, 0, 100, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21445795, 0, 124, 137, 251187, 0, 0, 0, -1, -1, 1, 0, 16, 1, 15, 0, 0, 1, 0),
(173, 'Hulricht', 83, 61, 94, 64, 26, 0, 0, 100, 70, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21443974, 0, 234, 283, 224311, 0, 0, 1, 40, 40, 1, 0, 21, 26, 0, 0, 0, 0, 0),
(181, 'Fourbinas', 33, 0, 13, 3, 103, 185, 0, 80, 80, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21443959, 0, 139, 116, 277245, 0, 0, 0, 40, 50, 0, 0, 236, 0, 0, 0, 1, 18, 0),
(183, 'Axeolu', 29, 0, 0, 0, 4, 0, 0, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21443976, 0, 125, 194, 97507, 0, 0, 1, -1, -1, 1, 1, 0, 2, 0, 6, 1, 4, 1),
(187, 'Boubi', 21, 18, 34, 0, 23, 40, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21444197, 0, 116, 92, 132167, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 9, 0, 10, 0),
(189, 'Rmanor', 29, 44, 5, 28, 11, 25, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21559633, 0, 90, 159, 98905, 0, 0, 1, -1, -1, 1, 1, 8, 2, 1, 6, 0, 1, 4);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(192, 'Orium', 182, 143, 125, 78, 4, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21444191, 0, 96, 331, 333993, 0, 0, 0, -1, -1, 1, 1, 2878, 0, 0, 25, 0, 0, 0),
(197, 'Leslie', 2, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 89, 186, 117706, 0, 0, 1, -1, -1, 1, 1, 0, 6, 6, 0, 3, 0, 1),
(199, 'Benihime', 19, 4, -2, -17, 125, 153, 3, 60, 20, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21444113, 0, 127, 268, 337951, 0, 0, 0, 30, 40, 0, 1, 134, 0, 0, 5, 8, 14, 1),
(202, 'Zarode', 4, 2, 0, 3, 0, 0, 0, 100, 50, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21490500, 0, 117, 161, 82572, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(204, 'Ovelia', 40, 38, 50, 0, 35, 0, 0, 80, 60, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444321, 0, 144, 52, 169247, 0, 0, 1, -1, -1, 0, 0, 5, 15, 1, 0, 0, 0, 0),
(217, 'Tylert', 6, 2, 16, 16, 0, 0, 0, 70, 20, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21446751, 0, 114, 95, 214819, 0, 0, 0, 50, 50, 0, 1, 2, 19, 0, 0, 0, 0, 0),
(218, 'Alumdil', 35, 4, 28, 0, 49, 50, 0, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21445012, 0, 187, 160, 254098, 0, 0, 0, 30, 50, 1, 1, 22, 0, 0, 19, 0, 2, 0),
(219, 'Anair&euml;', 154, 93, 171, 107, 10, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21446594, 0, 131, 276, 418994, 0, 0, 0, 10, 10, 1, 1, 116, 35, 0, 0, 0, 0, 0),
(225, 'Ther`glat', 46, 17, 0, 0, 32, 16, 0, 100, 40, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21624355, 0, 86, 68, 206039, 0, 0, 1, -1, -1, 1, 0, 27, 8, 3, 6, 0, 0, 0),
(229, 'Messalith', 51, 37, 82, 53, 85, 114, 0, 100, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21452296, 0, 117, 135, 258528, 0, 0, 0, 40, 40, 0, 0, 56, 0, 0, 21, 0, 0, 0),
(231, 'Galigonidd', 46, 19, 22, 12, 19, 6, 0, 100, 90, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21448597, 0, 82, 168, 663428, 0, 0, 1, -1, -1, 1, 1, 22, 7, 5, 1, 0, 0, 0),
(232, 'Matkias', 23, 53, 69, 0, 43, 13, 2, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21588637, 0, 70, 258, 464613, 0, 0, 1, -1, -1, 1, 1, 46, 2, 6, 1, 5, 2, 0),
(234, 'Poupou', 16, 0, 82, 3, 40, 75, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445036, 0, 88, 111, 312731, 0, 0, 0, -1, -1, 1, 0, 15, 6, 1, 0, 9, 0, 0),
(235, 'Dartoil', 2, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21445172, 0, 54, 34, 82666, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 0, 0, 0),
(236, 'Tefeiri', 3, 32, 50, 14, 0, 30, 2, 90, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21475898, 0, 212, 163, 224470, 0, 0, 1, -1, -1, 1, 1, 0, 4, 1, 5, 5, 0, 0),
(239, 'Luna', 64, 21, 0, 12, 48, 37, 0, 90, 90, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 73, 188, 484267, 0, 0, 1, -1, -1, 1, 0, 21, 4, 9, 0, 0, 0, 0),
(240, 'Kullah', 14, 0, 3, 0, 9, 25, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21446677, 0, 177, 6, 101022, 0, 0, 0, 10, 10, 1, 0, 16, 0, 0, 6, 7, 0, 0),
(241, 'Nadras', 8, 14, 0, 3, 0, 79, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21447908, 0, 186, 52, 207543, 0, 0, 0, 50, 50, 0, 1, 10, 0, 0, 0, 15, 0, 0),
(242, 'Thelv', 3, 0, 13, 3, 76, 186, 0, 80, 80, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21445186, 0, 96, 73, 305790, 0, 0, 1, 20, 30, 0, 0, 66, 0, 0, 7, 2, 8, 0),
(252, 'Fina Nargel', 30, 0, 0, 50, 30, 0, 0, 50, 10, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21448168, 0, 80, 149, 97149, 0, 0, 0, 10, 40, 1, 0, 12, 13, 0, 1, 0, 0, 0),
(256, 'Husam', 14, 0, 0, 0, 15, 46, 2, 60, 30, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21464117, 0, 149, 123, 270539, 0, 0, 0, -1, -1, 1, 1, 9, 0, 0, 1, 14, 1, 0),
(258, 'Febus', 48, 39, 87, 23, 55, 53, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21445510, 0, 249, 147, 241082, 0, 0, 0, 50, 50, 0, 1, 10, 0, 0, 0, 1, 1, 18),
(267, 'Dacapo', 4, 10, 2, 1, 19, 4, 4, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448624, 0, 95, 67, 123381, 0, 0, 1, -1, -1, 1, 1, 8, 3, 0, 3, 1, 4, 0),
(270, 'Desmondis', 2, 2, 0, 3, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 149, 133, 375788, 0, 0, 0, -1, -1, 1, 0, 0, 5, 5, 1, 1, 2, 2),
(272, 'Na&euml;lki', 33, 10, 8, 0, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21540792, 0, 86, 65, 94815, 0, 0, 0, -1, -1, 0, 1, 0, 7, 2, 2, 0, 0, 0),
(273, 'Zagior', 34, 13, 0, 0, 21, 16, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 159, 45, 105794, 0, 0, 0, -1, -1, 0, 0, 2, 5, 1, 11, 0, 0, 0),
(278, 'Zahel', 4, 0, 19, 43, 34, 82, 0, 80, 50, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447081, 0, 233, 197, 205236, 0, 0, 0, -1, -1, 0, 0, 69, 0, 0, 19, 1, 0, 1),
(280, 'Rufbumpa', 20, 10, 13, 0, 0, 12, 0, 60, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21455553, 0, 134, 87, 188299, 0, 0, 0, -1, -1, 1, 1, 0, 16, 0, 0, 0, 0, 0),
(281, 'Estayr', 24, 8, 15, 0, 17, 16, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 85, 60, 247501, 0, 0, 1, -1, -1, 1, 0, 6, 7, 0, 0, 8, 0, 0),
(282, 'Kalista', 81, 102, 40, 31, 0, 8, 5, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 156, 142, 151625, 0, 0, 0, -1, -1, 1, 0, 43, 3, 14, 0, 0, 0, 1),
(283, 'Gelthasar Belt', 81, 125, 75, 83, 87, 12, 2, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21446471, 0, 203, 374, 218244, 0, 0, 0, -1, -1, 1, 1, 25, 0, 0, 4, 0, 1, 26),
(284, 'Tulkas', 50, 54, 177, 104, 24, 0, 0, 100, 30, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21445912, 0, 151, 218, 338310, 0, 0, 0, 20, 20, 0, 0, 265, 2, 0, 25, 0, 0, 0),
(297, 'Bartor', 16, 10, 5, 0, 4, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21468695, 0, 80, 56, 240116, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 16, 0, 0, 0),
(299, 'Almanarre', 41, 39, 55, 12, 54, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21446744, 0, 147, 137, 130063, 0, 0, 0, -1, -1, 1, 0, 15, 3, 0, 13, 0, 0, 2),
(300, 'Shadark', 68, 19, 87, 12, 7, 6, 0, 100, 10, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21599679, 0, 116, 164, 548828, 0, 0, 0, -1, -1, 1, 1, 15, 13, 0, 2, 0, 0, 0),
(301, 'Rausten', 2, 10, 2, 12, 6, 4, 0, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21459475, 0, 151, 101, 17579, 0, 0, 0, -1, -1, 0, 0, 18, 0, 0, 0, 14, 0, 0),
(302, 'L&eacute;otar', 15, 25, 10, 6, 19, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 176, 103, 187346, 0, 0, 1, -1, -1, 1, 1, 1, 5, 5, 0, 4, 0, 1),
(303, 'Gauerd&ocirc;me', -7, 27, 35, 2, 27, 32, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21462576, 0, 181, 81, 275825, 0, 0, 0, 40, 40, 0, 0, 55, 1, 1, 0, 4, 15, 1),
(314, 'Eleanora', 5, 4, 2, 0, 0, 50, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21449107, 0, 128, 126, 166480, 0, 0, 1, -1, -1, 1, 1, 0, 8, 1, 1, 7, 0, 0),
(321, 'Vannams', 49, 19, 24, 76, 8, 0, 6, 100, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447228, 0, 127, 147, 200051, 0, 0, 1, -1, -1, 0, 0, 16, 0, 2, 5, 0, 2, 8),
(328, 'Pyaray', 113, 188, 132, 91, 64, 0, 0, 80, 50, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21447913, 0, 188, 276, 473444, 0, 0, 0, 40, 40, 0, 0, 278, 0, 0, 36, 0, 0, 0),
(333, 'Cassandre', 79, 80, 51, 48, 14, 0, 5, 100, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21449531, 0, 239, 217, 140706, 0, 0, 0, 30, 30, 0, 0, 17, 0, 15, 1, 0, 4, 3),
(345, 'Torme Morselame', 29, 16, 25, 0, 0, 0, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21469665, 0, 133, 101, 231825, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 16, 0),
(349, 'Elanor', 92, 93, 58, 62, 88, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21448636, 0, 33, 167, 613105, 0, 0, 0, 20, 20, 0, 0, 37, 0, 2, 12, 2, 4, 0),
(385, 'Aratos', 21, 38, 30, 9, 49, 31, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21452805, 0, 157, 125, 433115, 0, 0, 0, -1, -1, 1, 1, 15, 0, 0, 21, 0, 0, 0),
(386, 'Yelderick', 103, 118, 22, 27, 60, 0, 1, 80, 80, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21449864, 0, 250, 284, 475732, 0, 0, 0, -1, -1, 1, 0, 53, 15, 3, 3, 0, 5, 2),
(407, 'Archanos', 107, 98, 57, 2, 62, 0, 2, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21463805, 0, 178, 183, 309151, 0, 0, 0, 60, 80, 0, 0, 28, 3, 4, 18, 0, 2, 0),
(408, 'Leorod', 30, 50, 22, 11, 15, 6, 5, 100, 50, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 111, 204, 421351, 0, 0, 1, 40, 60, 1, 1, 17, 0, 0, 0, 11, 4, 0),
(410, 'Birgenn', 102, 30, 69, 62, 64, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21475197, 0, 126, 166, 188715, 0, 0, 1, -1, -1, 1, 1, 8, 6, 5, 1, 0, 3, 3),
(413, 'Tetrahyd', 24, 44, 37, -10, 135, 113, 3, 50, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21452714, 0, 111, 85, 391645, 0, 0, 0, 30, 60, 1, 0, 43, 0, 0, 0, 13, 12, 0),
(418, 'Avister', 13, 2, 3, 0, 9, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21509021, 0, 54, 117, 503730, 0, 0, 0, -1, -1, 1, 1, 3, 3, 2, 0, 2, 3, 1);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(423, 'Abert', 23, 23, 0, 0, 45, 37, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 348, 78, 195468, 0, 0, 0, -1, -1, 1, 1, 10, 2, 1, 5, 5, 0, 0),
(424, 'Draon', 20, 9, -8, 0, 3, 6, 0, 100, 100, 1, 'République', 'Thassopole', '', 'Aucune', 21586835, 0, 36, 144, 291370, 0, 0, 1, -1, -1, 1, 1, 0, 1, 9, 0, 1, 2, 0),
(427, 'Koali', 26, 2, 3, 3, 9, 14, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 75, 71, 289142, 0, 0, 1, -1, -1, 1, 1, 2, 5, 5, 0, 1, 0, 0),
(439, 'Willi', 5, 4, 0, 0, 0, 0, 0, 100, 40, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 39, 116, 504493, 0, 0, 0, -1, -1, 1, 1, 1, 5, 2, 0, 0, 0, 0),
(446, 'Anadyomene', 29, 29, 132, 9, 0, 8, 0, 100, 20, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21455442, 0, 87, 120, 160657, 0, 0, 1, -1, -1, 1, 1, 11, 3, 1, 13, 0, 2, 0),
(463, 'Arnaud', 4, 8, 2, 0, 0, 0, 0, 90, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21457055, 0, 108, 118, 232791, 0, 0, 0, -1, -1, 1, 1, 0, 2, 5, 4, 2, 0, 2),
(465, 'Dachinos', 65, 23, 2, 24, 33, 16, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21624183, 0, 61, 66, 305789, 0, 0, 0, -1, -1, 1, 0, 0, 3, 3, 2, 1, 2, 1),
(478, 'Soymur', 17, 30, 67, 8, 13, 6, 0, 80, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21462565, 0, 107, 156, 417516, 0, 0, 0, -1, -1, 1, 0, 7, 1, 10, 0, 1, 2, 1),
(481, 'Arcelane', 3, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 218, 16, 92527, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 12, 0, 0, 0),
(484, 'Liluth', 116, 88, 86, 6, 45, 0, 0, 100, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21460018, 0, 173, 194, 435819, 0, 0, 1, 50, 80, 0, 0, 15, 0, 0, 18, 0, 0, 0),
(491, 'Ankharon', 20, 14, 0, 43, 89, 56, 3, 60, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21469452, 0, 114, 168, 408755, 0, 0, 0, -1, -1, 1, 0, 43, 0, 0, 0, 26, 0, 1),
(533, 'Roscoat', 53, 46, 11, 12, 36, 16, 2, 100, 20, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21463718, 0, 233, 94, 177155, 0, 0, 0, -1, -1, 1, 1, 48, 0, 1, 9, 0, 1, 0),
(550, 'Montheo', -7, 12, 0, -8, 28, 23, 4, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21499708, 0, 32, 88, 426792, 0, 0, 0, -1, -1, 1, 1, 13, 1, 6, 0, 1, 3, 1),
(555, 'Kaerrawen', 1, 0, 0, 0, 0, 2, 0, 90, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21466638, 0, 87, 90, 264557, 0, 0, 1, 80, 80, 1, 1, 0, 0, 5, 9, 0, 0, 0),
(566, 'Bamdinas', -7, 15, 0, 40, 104, 157, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21521820, 0, 175, 68, 197776, 0, 0, 0, 30, 40, 0, 0, 19, 0, 0, 0, 0, 0, 18),
(570, 'Nell', 17, 4, 14, 0, 0, 0, 1, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 60, 91, 39874, 0, 0, 0, -1, -1, 1, 1, 0, 7, 0, 0, 4, 0, 0),
(572, 'Zathryel', 43, 50, 30, 23, 34, 6, 0, 60, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21562529, 0, 90, 103, 225544, 0, 0, 1, 30, 30, 0, 0, 9, 6, 0, 8, 0, 0, 1),
(578, 'Lortigan', 8, 2, 20, 12, 18, 46, 0, 100, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21483980, 0, 77, 86, 272125, 0, 0, 0, -1, -1, 1, 1, 1, 1, 2, 7, 0, 1, 0),
(607, 'Konrad', 0, 25, 0, 25, 33, 8, 4, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'L`Ordre Célestial', 21474581, 0, 85, 155, 124938, 0, 0, 0, 40, 40, 1, 1, 25, 2, 0, 7, 3, 0, 1),
(624, 'Filemon', 33, 45, 35, 6, 9, 0, 0, 80, 60, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21477480, 0, 45, 99, 35917, 0, 0, 1, 10, 10, 0, 0, 9, 0, 7, 0, 1, 0, 5),
(637, 'Mathaos', 50, 86, 56, 7, 0, 0, 3, 100, 10, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21637400, 0, 71, 130, 478905, 0, 0, 1, -1, -1, 1, 0, 60, 4, 4, 1, 0, 3, 4),
(640, 'Mattai', 24, 20, 15, 11, 0, 16, 2, 100, 60, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21556625, 0, 106, 65, 286001, 0, 0, 0, 30, 60, 1, 1, 0, 2, 3, 4, 3, 0, 2),
(672, 'Jeffrey', 51, 39, 43, 87, 8, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21485718, 0, 110, 14, 178512, 0, 0, 0, -1, -1, 1, 1, 38, 3, 1, 6, 0, 0, 9),
(712, 'Amendel Genfaluin', 3, 21, 0, 0, 8, 0, 0, 60, 10, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21492803, 0, 64, 102, 79627, 0, 0, 1, -1, -1, 0, 1, 0, 4, 3, 1, 0, 2, 0),
(787, 'Dranthen', -7, 2, 0, -7, 15, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21500445, 0, 48, 90, 479175, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 5, 1, 1),
(815, 'Mello', 58, 67, 14, 38, 23, 0, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21508081, 0, 59, 118, 337789, 0, 0, 0, 50, 50, 1, 1, 16, 7, 0, 0, 4, 0, 0),
(820, 'Pirelias', 50, 2, 22, 0, 30, 6, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21504646, 0, 93, 124, 200919, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(835, 'Axel', 22, 17, -10, 12, 9, 6, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21510145, 0, 46, 80, 500709, 0, 0, 0, -1, -1, 1, 1, 7, 5, 1, 1, 0, 0, 3),
(848, 'Arkatros', 68, 140, 8, 12, 14, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21589680, 0, 103, 52, 556055, 0, 0, 0, -1, -1, 1, 1, 25, 10, 1, 14, 0, 0, 0),
(868, 'Arimane', 2, 13, 11, 1, 4, 30, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 48, 70, 317588, 0, 0, 0, -1, -1, 1, 1, 24, 0, 0, 0, 14, 0, 0),
(870, 'Xandre', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21507557, 0, 80, 60, 192491, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 10, 0, 0, 0),
(879, 'Vezk', 75, 102, 56, 0, 18, 0, 0, 40, 30, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21527614, 0, 117, 114, 126312, 0, 0, 0, -1, -1, 1, 0, 3, 16, 4, 0, 0, 0, 0),
(891, 'Hakam Kukur', 11, 23, 0, 0, 10, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21513214, 0, 163, 69, 34339, 0, 0, 0, -1, -1, 1, 1, 3, 0, 7, 7, 0, 0, 0),
(892, 'Rek', 10, 10, 0, 43, 134, 71, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21511704, 0, 120, 48, 253857, 0, 0, 0, -1, -1, 1, 0, 1, 0, 0, 0, 0, 19, 0),
(911, 'Enephia', 4, 0, 2, 12, 7, 35, 2, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21526022, 0, 79, 51, 293920, 0, 0, 0, -1, -1, 1, 1, 4, 0, 14, 0, 0, 0, 0),
(917, 'Nem&egrave;s', 35, 15, 47, 113, 23, 28, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21523251, 0, 154, 36, 193036, 0, 0, 0, 20, 40, 0, 1, 6, 8, 6, 10, 0, 0, 0),
(922, 'Malia', 12, 17, 0, 32, 15, 42, 0, 100, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21519223, 0, 62, 34, 210867, 0, 0, 0, 20, 20, 1, 1, 17, 0, 7, 0, 0, 5, 0),
(928, 'Vlad Consir', 19, 9, 32, 3, 19, 6, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21528101, 0, 47, 75, 189169, 0, 0, 1, -1, -1, 1, 1, 15, 0, 0, 10, 0, 0, 0),
(930, 'Zaseo', 113, 69, 36, 50, 31, 8, 2, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21530419, 0, 155, 48, 135600, 0, 0, 0, -1, -1, 1, 1, 42, 1, 0, 17, 0, 0, 0),
(933, 'Zedounet', 2, 39, 0, 12, 30, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21520357, 0, 81, 92, 427391, 0, 0, 0, 50, 100, 1, 1, 8, 0, 0, 1, 0, 0, 1),
(946, 'Ceccua', 4, 15, 0, 1, 10, 23, 2, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21520382, 0, 29, 33, 391652, 0, 0, 0, -1, -1, 1, 1, 17, 5, 0, 0, 1, 0, 1),
(948, 'Mosoulo', 17, 14, 74, 3, 14, 0, 1, 100, 80, 1, 'Autarcie', 'Aucune', '', 'Aucune', 21554952, 0, 83, 105, 409444, 0, 0, 1, -1, -1, 1, 1, 8, 2, 1, 6, 0, 3, 0),
(988, 'Goupille', 3, 2, 0, 12, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21531106, 0, 40, 61, 338341, 0, 0, 0, -1, -1, 1, 1, 13, 0, 0, 6, 0, 0, 0),
(989, 'Salfalar', 23, 59, 20, 0, 23, 40, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 125, 40, 149690, 0, 0, 0, 20, 20, 0, 1, 13, 0, 0, 17, 0, 0, 0),
(992, 'Aedric', 67, 2, 30, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21566570, 0, 49, 44, 172661, 0, 0, 0, -1, -1, 1, 1, 2, 4, 0, 6, 0, 0, 0),
(1010, 'Herel', 29, 19, -10, 8, 6, 0, 4, 100, 100, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21528014, 0, 80, 119, 473395, 0, 0, 0, -1, -1, 1, 1, 3, 7, 4, 0, 1, 0, 0),
(1014, 'Ascheritto', 2, 0, 0, 13, 0, 4, 2, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21591124, 0, 36, 44, 349257, 0, 0, 1, -1, -1, 1, 1, 1, 0, 0, 0, 8, 0, 0),
(1016, 'Eleana', 19, 32, 22, 0, 0, 6, 0, 90, 80, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21538406, 0, 100, 34, 241392, 0, 0, 1, -1, -1, 1, 1, 6, 0, 0, 14, 0, 0, 0),
(1018, 'Codringher', 19, 18, 0, 24, 6, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21524777, 0, 59, 67, 238032, 0, 0, 0, -1, -1, 1, 1, 15, 1, 3, 2, 0, 0, 0),
(1044, 'E&auml;rthan', 20, 9, -10, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 35, 55, 219961, 0, 0, 1, -1, -1, 1, 1, 3, 1, 0, 4, 0, 0, 0),
(1048, 'Najya', 76, 62, 52, 12, 36, 33, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21527678, 0, 91, 43, 201044, 0, 0, 0, -1, -1, 1, 0, 16, 2, 12, 1, 0, 2, 0);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1057, 'X&eacute;nox', 36, 40, 24, 3, 7, 6, 0, 100, 60, 1, 'Oligarchie', 'Argostole', '', 'Aucune', 21634850, 0, 81, 106, 356992, 0, 0, 1, -1, -1, 1, 1, 17, 0, 7, 0, 2, 3, 1),
(1061, 'Kopan', 0, 2, 2, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21544380, 0, 50, 57, 295956, 0, 0, 0, -1, -1, 1, 0, 1, 4, 0, 0, 2, 0, 1),
(1067, 'Daneel', 51, 25, 15, 67, 29, 0, 1, 60, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21530452, 0, 105, 31, 226574, 0, 0, 0, 30, 30, 0, 0, 50, 20, 0, 0, 0, 0, 0),
(1071, 'Sonim', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21531431, 0, 1, 15, 7761, 0, 0, 0, 50, 50, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1115, 'Galaway', 0, 0, 30, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21546111, 0, 47, 61, 147622, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 5, 1, 0, 0),
(1120, 'Ga&euml;llya', 0, 0, 30, 0, 0, 0, 0, 50, 10, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21533410, 0, 40, 118, 120088, 0, 0, 1, -1, 50, 1, 0, 0, 0, 1, 1, 0, 10, 1),
(1122, 'Del&eacute;nia', 41, 60, -9, 0, 17, 6, 0, 80, 80, 0, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21533389, 0, 129, 12, 158317, 0, 0, 0, 50, 100, 1, 0, 67, 0, 1, 0, 0, 16, 0),
(1139, 'Drekal', 70, 127, -7, 0, 87, 12, 0, 100, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21537596, 0, 99, 52, 266240, 0, 0, 0, -1, -1, 1, 0, 7, 1, 11, 0, 0, 6, 0),
(1141, 'Renard', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21606413, 0, 29, 48, 52296, 0, 0, 0, -1, -1, 1, 1, 1, 0, 1, 0, 6, 1, 0),
(1145, 'DagBar', 4, 20, 3, 3, 35, 88, 0, 70, 40, 0, 'République', 'Thassopole', '', 'Aucune', 21539453, 0, 97, 31, 316373, 0, 0, 1, 10, 10, 0, 0, 38, 0, 0, 0, 16, 0, 0),
(1156, 'Yzeute', 2, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21541002, 0, 70, 58, 292740, 0, 0, 1, -1, -1, 1, 1, 0, 4, 1, 2, 1, 3, 1),
(1164, 'Mayemaye', 37, 18, 0, 3, 0, 0, 0, 90, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21617346, 0, 49, 61, 323486, 0, 0, 0, -1, -1, 1, 1, 4, 2, 1, 0, 1, 6, 2),
(1287, 'Nragax', 126, 99, 121, 72, 0, 0, 0, 80, 80, 0, 'République', 'Thassopole', '', 'Aucune', 21547463, 0, 152, 50, 285602, 0, 0, 0, -1, -1, 0, 1, 726, 15, 0, 1, 0, 0, 0),
(1294, 'Kallikantzaros', 52, 34, 54, 24, 0, 0, 2, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21555039, 0, 62, 46, 334384, 0, 0, 0, -1, -1, 1, 0, 8, 3, 6, 2, 0, 0, 0),
(1299, 'Shinna', 2, 1, 0, 0, 0, 0, 0, 50, 50, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21559590, 0, 15, 24, 32684, 0, 0, 0, -1, -1, 1, 1, 0, 0, 2, 0, 3, 0, 0),
(1301, 'Dexert', 17, 0, 10, 0, 0, 16, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 62, 60, 235146, 0, 0, 1, -1, -1, 0, 0, 3, 0, 0, 1, 0, 1, 0),
(1305, 'Luisoros', 2, 13, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21562404, 0, 41, 39, 293263, 0, 0, 0, -1, -1, 1, 1, 2, 5, 0, 1, 0, 1, 0),
(1308, 'Reya', 3, 12, 25, 61, 40, 99, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21589248, 0, 128, 49, 311443, 0, 0, 0, 10, 30, 0, 1, 1, 0, 0, 18, 1, 0, 0),
(1311, 'Ambre', 36, 32, 2, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21592535, 0, 73, 25, 116561, 0, 0, 0, -1, -1, 1, 1, 0, 1, 2, 8, 0, 0, 0),
(1314, 'Lunnar', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 19, 68, 107666, 0, 0, 0, -1, -1, 1, 1, 0, 4, 1, 0, 0, 0, 0),
(1340, 'X&yuml;ixiant’h ', 19, 0, 41, 0, 4, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21555429, 0, 39, 75, 539102, 0, 0, 1, 50, 50, 1, 1, 5, 0, 3, 5, 0, 0, 1),
(1403, 'Soreclis', 27, 4, 0, 12, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 89, 85, 332155, 0, 0, 1, 60, 100, 0, 0, 3, 2, 1, 4, 4, 0, 0),
(1408, 'Lucas', 2, 12, 0, 0, 6, 23, 0, 10, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21561824, 0, 22, 48, 237010, 0, 0, 0, 10, 10, 1, 1, 0, 1, 1, 2, 0, 0, 2),
(1409, 'Esteban', 20, -20, 30, 0, -20, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21561769, 0, 46, 15, 162733, 0, 0, 1, -1, -1, 1, 1, 1, 9, 0, 0, 0, 0, 0),
(1410, 'Fico', 6, 0, 0, 0, 9, 76, 0, 100, 90, 1, 'Théocratie', 'Scitopole', '', 'Aucune', 21561248, 0, 54, 25, 96058, 0, 0, 1, -1, -1, 0, 0, 0, 0, 0, 0, 7, 0, 0),
(1411, 'Karyon', 14, 23, 56, 58, 55, 46, 2, 100, 100, 1, 'République', 'Thassopole', '', 'Aucune', 21560675, 0, 130, 30, 244489, 0, 0, 1, 20, 50, 0, 1, 117, 0, 1, 5, 2, 4, 1),
(1412, 'Fouchier', 74, 50, 24, 37, 8, 10, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21566357, 0, 150, 59, 466323, 0, 0, 0, -1, -1, 0, 0, 4, 0, 1, 7, 0, 3, 2),
(1414, 'Criton', 31, 51, -3, 18, 19, 0, 0, 100, 90, 1, 'Oligarchie', 'Zakinthe', '', 'Les Ligues Unifiées', 21560813, 0, 115, 95, 357223, 0, 0, 1, -1, -1, 1, 1, 5, 1, 4, 0, 0, 9, 0),
(1418, 'Basl', 16, 31, 7, 64, 8, 16, 16, 10, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21561913, 0, 13, 39, 2580920, 0, 0, 1, -1, -1, 1, 1, 286, 0, 0, 13, 0, 0, 0),
(1457, 'Helagnus', 16, 10, 0, 0, 0, 14, 0, 70, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21565189, 0, 71, 44, 395122, 0, 0, 1, -1, -1, 1, 1, 8, 0, 0, 0, 11, 0, 0),
(1458, 'Yodine', 42, 19, -10, 0, 5, 0, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21608484, 0, 32, 23, 287809, 0, 0, 0, -1, -1, 1, 1, 2, 3, 4, 2, 2, 1, 3),
(1460, 'Alec', 11, 6, 2, 12, 9, 46, 0, 60, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21626887, 0, 45, 22, 456023, 0, 0, 1, -1, -1, 1, 1, 9, 0, 2, 0, 4, 0, 1),
(1463, 'Watmatus', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 32, 18, 134824, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 1, 0, 0, 0),
(1469, 'Elm', 73, 53, 121, 127, 16, 12, 0, 80, 50, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21567987, 0, 118, 45, 481088, 0, 0, 0, -1, 60, 0, 0, 10, 0, 0, 26, 0, 0, 0),
(1470, 'Celithrand', 1, 0, 0, 0, 0, 32, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 34, 23, 220224, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 6, 0),
(1475, 'Batterusero', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21625570, 0, 5, 26, 71772, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 1, 0, 0, 0),
(1477, 'La Sangre', 3, 2, 0, 0, 0, 0, 0, 70, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 34, 36, 169795, 0, 0, 1, -1, -1, 1, 1, 0, 1, 2, 0, 0, 1, 1),
(1480, 'Alaesir', 18, 2, 14, 0, 0, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21570486, 0, 60, 49, 213747, 0, 0, 1, -1, -1, 1, 0, 0, 0, 0, 6, 0, 6, 0),
(1492, 'Osterate', 27, 28, 14, 23, 15, 0, 1, 80, 10, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21575245, 0, 72, 91, 378981, 0, 0, 1, 30, 70, 0, 0, 6, 5, 4, 0, 0, 0, 1),
(1493, 'Safira', 6, 2, 0, 3, 5, 46, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 77, 26, 271026, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 5, 2, 1),
(1499, 'Toroc', 6, 0, 0, -7, 19, 14, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21580686, 0, 55, 55, 395264, 0, 0, 0, -1, -1, 1, 1, 0, 2, 2, 3, 2, 1, 0),
(1512, 'Keldaran', 3, 2, 30, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21573902, 0, 98, 29, 302116, 0, 0, 1, -1, -1, 1, 1, 1, 0, 0, 12, 0, 0, 0),
(1519, 'Tirandilis', 0, 0, 0, 0, 0, 0, 0, 100, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21580705, 0, 79, 31, 254856, 0, 0, 1, 40, 40, 1, 0, 8, 0, 1, 14, 0, 0, 0),
(1522, 'Durshak le Borgne', 51, 73, 54, 0, 3, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21575196, 0, 42, 22, 150395, 0, 0, 0, 50, 50, 0, 1, 4, 1, 0, 12, 0, 0, 0),
(1528, 'Saya', 75, 38, 40, 0, 0, 0, 0, 100, 60, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21577608, 0, 58, 11, 165354, 0, 0, 1, -1, -1, 1, 0, 8, 2, 0, 6, 0, 0, 0),
(1538, 'Mikijonie', 3, 0, 0, 0, 0, 0, 0, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 26, 22, 131503, 0, 0, 1, -1, -1, 1, 1, 0, 0, 1, 0, 5, 0, 0),
(1539, 'Kaiiros', 34, 0, 18, 3, 34, 99, 0, 50, 50, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21579362, 0, 130, 29, 207275, 0, 0, 0, 10, 10, 0, 0, 11, 0, 0, 0, 16, 0, 0),
(1548, 'Iorfel', 5, 12, 5, 0, 0, 0, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21580694, 0, 93, 40, 434584, 0, 0, 0, -1, -1, 1, 0, 2, 6, 0, 5, 0, 0, 0),
(1549, 'Caym', 21, 31, 57, 15, 14, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21608540, 0, 119, 55, 469712, 0, 0, 0, -1, -1, 1, 0, 19, 0, 7, 0, 1, 7, 0),
(1550, 'N&auml;ta&euml;l', 49, 36, 14, 0, 0, 0, 1, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21623401, 0, 57, 48, 129182, 0, 0, 0, -1, -1, 1, 1, 2, 2, 2, 4, 0, 0, 0),
(1559, 'Daringel', 4, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21582401, 0, 15, 28, 266060, 0, 0, 0, -1, -1, 1, 1, 5, 0, 0, 0, 0, 0, 3);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1560, 'Ifingwell', 4, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21583295, 0, 7, 36, 38403, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 5, 0, 0, 0),
(1562, 'Lyraprime', 17, 23, 0, 19, 0, 16, 2, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21588961, 0, 34, 27, 456298, 0, 0, 0, -1, -1, 1, 1, 0, 7, 2, 0, 0, 2, 0),
(1574, 'Na&euml;lys', 64, 18, 49, 1, 10, 0, 8, 80, 80, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21585589, 0, 122, 39, 317046, 0, 0, 0, 20, 20, 0, 0, 5, 13, 0, 1, 0, 0, 0),
(1578, 'Nunglhur', 3, 0, 0, 15, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 7, 42, 17467, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 1, 1, 0, 0),
(1579, 'Nixd', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21829, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1583, 'Rhal', 3, 12, 0, 0, 0, 0, 2, 80, 80, 1, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21586785, 0, 43, 29, 487004, 0, 0, 1, -1, -1, 1, 0, 0, 1, 1, 8, 1, 0, 1),
(1611, 'Arthurik', 13, 13, 0, 12, 3, 0, 0, 100, 50, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21625507, 0, 33, 24, 158015, 0, 0, 0, -1, -1, 1, 1, 2, 10, 0, 0, 0, 0, 0),
(1614, 'Oamba', 3, 2, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21590011, 0, 14, 20, 101679, 0, 0, 1, -1, -1, 0, 1, 0, 0, 4, 0, 1, 0, 0),
(1622, 'Kalina', 21, 12, 19, 1, 4, 0, 4, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21606937, 0, 85, 99, 845802, 0, 0, 1, -1, -1, 1, 1, 4, 3, 0, 6, 0, 0, 0),
(1623, 'Brutus', 16, 2, 0, 0, 4, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 38, 23, 321595, 0, 0, 0, -1, -1, 1, 1, 3, 3, 0, 1, 3, 0, 0),
(1627, 'Silayerr', 3, 2, 0, 0, 0, 0, 0, 80, 80, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21589631, 0, 59, 39, 320779, 0, 0, 1, -1, -1, 1, 0, 1, 3, 3, 2, 0, 4, 0),
(1640, 'Maria', 63, 91, 43, 6, 34, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21611133, 0, 111, 33, 555745, 0, 0, 0, 40, 70, 0, 0, 0, 5, 6, 3, 0, 0, 0),
(1645, 'Lagos', 21, 16, 24, 1, 6, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21593863, 0, 51, 44, 307175, 0, 0, 0, -1, -1, 1, 1, 2, 1, 1, 0, 3, 2, 0),
(1651, 'Ramiran', 0, 0, 0, 0, 0, 0, 0, 100, 80, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21606363, 0, 38, 22, 152003, 0, 0, 0, -1, -1, 1, 1, 0, 0, 4, 0, 0, 0, 2),
(1653, 'Damian', 20, 11, -10, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21634160, 0, 47, 61, 489248, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 2, 0, 1, 1),
(1667, 'Vylnius', 1, 0, 0, 3, 0, 2, 0, 30, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21612435, 0, 35, 42, 223155, 0, 0, 1, -1, -1, 1, 0, 0, 0, 9, 0, 0, 0, 0),
(1670, 'Bolackot', 16, 10, 0, 0, 0, 14, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21596485, 0, 49, 26, 471229, 0, 0, 0, -1, -1, 1, 1, 1, 0, 2, 1, 2, 1, 0),
(1672, 'Drakarius', 0, 2, 0, 12, 0, 0, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21615034, 0, 55, 21, 395796, 0, 0, 0, -1, -1, 1, 1, 1, 2, 0, 0, 0, 2, 0),
(1677, 'Morblink', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21596808, 0, 1, 1, 4729, 0, 0, 0, 150, 150, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(1682, 'L&eacute;&ouml;raz', 3, 0, 0, 0, 0, 0, 0, 100, 50, 0, 'Anarchie', 'Outre-Mer', '', 'L`Ordre des Templiers de la Loi Empirique', 21602478, 0, 46, 27, 50896, 0, 0, 1, 80, 150, 0, 0, 0, 2, 1, 1, 2, 0, 0),
(1685, 'Beltha&iuml;s', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21602607, 0, 21, 21, 56917, 0, 0, 0, -1, -1, 1, 1, 0, 5, 0, 3, 0, 0, 0),
(1694, 'Wariogab', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1698, 'Khalak', 1, 0, 2, 0, 0, 2, 0, 80, 70, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 54, 22, 263705, 0, 0, 0, 70, 70, 1, 1, 0, 2, 0, 1, 1, 2, 0),
(1700, 'Gaeldrech', 69, 26, 14, 12, 0, 0, 0, 100, 30, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 53, 45, 493810, 0, 0, 1, -1, -1, 1, 1, 3, 3, 2, 3, 0, 0, 0),
(1702, 'Jenin', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 13900, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1707, 'Symn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1708, 'Hulriche', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1714, 'Zecrome', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1715, 'Blindor la Montagne', 19, 12, 0, 0, 0, 0, 0, 90, 70, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21618322, 0, 56, 21, 231594, 0, 0, 1, 30, 30, 0, 0, 2, 8, 0, 0, 0, 0, 0),
(1716, 'Archonss', 1, 2, 0, 0, 0, 2, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21609727, 0, 10, 9, 91766, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(1717, 'Lili Eelliote', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1719, 'Nesva', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1720, 'Abnar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1721, 'Lealeia', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1722, 'Balodules', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1723, 'Narayana', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21609579, 0, 0, 0, 29974, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1724, 'Lute', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1725, 'Galmin', 25, 9, 43, 0, 62, 16, 2, 80, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21609874, 0, 81, 2, 218811, 0, 0, 1, 30, 50, 0, 0, 3, 0, 0, 8, 2, 3, 0),
(1727, 'Thorgrim', 1, 0, 0, 0, 0, 32, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 18, 34, 21743, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 4, 0, 0),
(1731, 'Infilz', 17, 0, 14, 0, 0, 0, 1, 30, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 73, 37, 312162, 0, 0, 0, -1, -1, 1, 1, 6, 4, 1, 1, 0, 0, 1),
(1732, 'Khorialyx', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 16680, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1734, 'Wecklers', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1736, 'Pheregan', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1737, 'Darckym', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21612331, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1738, 'Nebala', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1739, 'Dydys', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1740, 'Oolna', 21, 12, 24, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21623761, 0, 40, 10, 175798, 0, 0, 1, -1, -1, 1, 0, 4, 8, 0, 0, 0, 0, 0),
(1741, 'Mecainxi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1742, 'Hygarld', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1743, ' Dimniel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1745, 'Pyrim', 2, 3, 0, 12, 0, 0, 0, 80, 70, 1, 'Despotisme', 'Naxos', '', 'Aucune', 21612328, 0, 45, 14, 289712, 0, 0, 1, -1, -1, 1, 1, 0, 4, 1, 0, 0, 0, 0);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1746, 'Oerio', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1747, 'Hordrin', 75, 80, 0, 24, 58, 20, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21625500, 0, 78, 5, 168169, 0, 0, 1, -1, -1, 1, 0, 0, 1, 13, 0, 0, 0, 0),
(1748, 'Baduit', 70, 42, 35, 50, 14, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Les Alliés de l`Ombre', 21612532, 0, 67, 7, 246473, 0, 0, 0, 30, 60, 0, 0, 3, 2, 0, 7, 0, 3, 1),
(1749, 'Trano', 37, 2, 55, 0, 0, 16, 0, 100, 90, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21612558, 0, 46, 12, 526690, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 7, 0, 0, 0),
(1750, 'Ephem', 17, 8, 14, 0, 0, 0, 1, 70, 20, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21615490, 0, 49, 24, 308027, 0, 0, 0, 60, 60, 1, 1, 3, 5, 1, 3, 0, 0, 0),
(1751, 'Kaatk', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1752, 'Kanou', 61, 21, 14, 0, 7, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21615923, 0, 72, 16, 407132, 0, 0, 1, 60, 60, 0, 0, 3, 8, 0, 0, 0, 0, 0),
(1754, 'Elddoth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 22764, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1755, 'Le Dougec', 3, 0, 0, 1, 0, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 63, 31, 340806, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 1, 0, 1, 1),
(1756, 'Elysfer', 3, 0, 0, 0, 0, 0, 0, 100, 100, 1, 'République', 'Thassopole', '', 'Aucune', 21617062, 0, 24, 17, 289996, 0, 0, 1, -1, -1, 1, 0, 0, 5, 0, 0, 0, 0, 0),
(1757, 'Milyana', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21207, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1758, 'Neroht', 0, 12, 0, 15, 0, 0, 0, 60, 100, 1, 'Monarchie', 'Vénopole', '', 'Aucune', 21624236, 0, 53, 15, 325035, 0, 0, 1, 50, 80, 0, 0, 0, 2, 0, 2, 0, 1, 0),
(1760, 'Shael', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1761, 'Plumne', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1762, 'Killyrr', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1763, 'Houdiard', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1764, 'Jujur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1765, 'Sukye', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1766, 'Cocodu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1767, 'Gorgnano', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1768, 'Alecyel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1769, 'Haradrymn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23574, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1770, 'Ameennos', 2, 2, 0, 0, 0, 0, 0, 100, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21638065, 0, 17, 9, 210470, 0, 0, 1, -1, -1, 1, 1, 0, 1, 0, 3, 0, 0, 0),
(1771, 'Toxigoulec', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1772, 'Zeiradijas', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1773, 'Pyrazine', 17, 46, 14, 0, 0, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21619197, 0, 74, 10, 346427, 0, 0, 0, -1, -1, 1, 1, 2, 0, 0, 6, 0, 0, 0),
(1779, 'Htek', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1780, 'Flinflin', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1781, 'Snackar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 9364, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1782, 'Conona', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21288, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1783, 'Sinostroror', 1, 0, 0, 0, 0, 2, 0, 80, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 2, 1, 36531, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1784, 'Lineus', 6, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 38, 12, 331364, 0, 0, 0, -1, -1, 1, 1, 5, 2, 1, 2, 1, 0, 0),
(1785, 'Engenoir', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1793, 'Erairefal', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 28116, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1794, 'Ramenel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1795, 'Bornami', 18, 2, 14, 66, 0, 0, 4, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21622943, 0, 39, 10, 323905, 0, 0, 1, 40, 70, 1, 0, 15, 0, 0, 0, 0, 0, 8),
(1796, 'Shaynnat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1797, 'Zeldgrove', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1799, 'Sratueur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1800, 'Petinihil', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1801, 'Jixinou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1802, 'Gartamarbasdam', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1803, 'Foukrache', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1804, 'Elorfindelle', 1, 2, 0, 0, 0, 2, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21640220, 0, 27, 7, 240048, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 0, 0, 0),
(1805, 'Alerob', 3, 10, 0, 3, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21628943, 0, 36, 13, 264745, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 1, 1, 0),
(1806, 'Sto&iuml;ck Ur', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21625984, 0, 0, 0, 23600, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1807, 'Twirlinki', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1808, 'Yusurken', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1809, 'Kal', 3, 6, 0, 0, 6, 0, 0, 100, 80, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21647303, 0, 47, 4, 275036, 0, 0, 0, -1, -1, 1, 1, 0, 4, 2, 0, 0, 0, 0),
(1810, 'Exfly', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1812, 'Kilou', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1813, 'Aanor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1814, 'Zizcaptziz', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1815, 'Yuhaln', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23580, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1816, 'Han Main-Tranchante', 26, 2, 32, -6, 4, 0, 0, 70, 60, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21626909, 0, 18, 4, 139535, 0, 0, 0, -1, -1, 1, 0, 2, 0, 0, 6, 0, 0, 0),
(1817, 'Moriador', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1818, 'Shengouara', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 22670, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1819, 'Nevfalas', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1820, 'Nige', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1821, 'Priranpicedo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1822, 'Persuess', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1823, 'Katarat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1824, 'Aedorn', 1, 2, 0, 0, 0, 2, 0, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21628430, 0, 31, 7, 251512, 0, 0, 0, 30, 100, 0, 1, 3, 0, 1, 0, 3, 0, 0),
(1825, 'Arathiliel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1826, 'Anithralith', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 42, 14, 232256, 0, 0, 1, -1, -1, 1, 1, 0, 1, 4, 0, 0, 1, 0),
(1827, 'Khiran', 16, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21631177, 0, 30, 15, 240432, 0, 0, 0, -1, -1, 1, 1, 4, 3, 0, 0, 0, 0, 0),
(1828, 'L&eacute;nnih', 1, 0, 0, 0, 0, 2, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21635281, 0, 19, 6, 116122, 0, 0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 0, 4, 0),
(1829, 'Baldragon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21629779, 0, 0, 0, 20429, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1830, 'Annaebelles', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1831, 'Basijle', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1832, 'Naezdeck', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23001, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1833, 'Witmitis', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23584, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1834, 'Maeon', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1835, 'Krystophoros', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 22, 7, 115977, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 6, 0, 0, 0),
(1836, 'Tchinga', 23, 19, 0, 50, 4, 40, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'L`Union des Citoyens', 21632194, 0, 49, 6, 295294, 0, 0, 0, 20, 20, 1, 1, 0, 0, 0, 0, 0, 0, 11),
(1837, 'Aenurn', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21631549, 0, 0, 0, 31015, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1838, 'Anwaman&euml;l', 20, 9, -10, 0, 0, 0, 0, 50, 50, 0, 'République', 'Thassopole', '', 'Aucune', 21633154, 0, 19, 8, 162769, 0, 0, 0, 50, 50, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(1839, 'Benjik', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1840, 'Geromini', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 24622, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1841, 'Anyd', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21633914, 0, 0, 0, 29887, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1842, 'Cometa', 0, 0, 0, 0, 0, 0, 0, 10, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 19, 5, 117279, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 4),
(1843, 'Poepior ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1851, 'Reyns', 2, 0, 1, 0, 0, 0, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 20, 3, 114981, 0, 0, 1, -1, -1, 1, 1, 0, 0, 1, 1, 0, 0, 1),
(1852, 'Imbalayo', 3, 2, 2, 50, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21632779, 0, 31, 7, 132738, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 0, 0, 0, 5),
(1853, 'Ar&eacute;gonde', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'L`Orchidée', 21643875, 0, 1, 0, 119881, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 4, 0, 0, 0),
(1856, 'Darzang', 33, 10, 0, 1, 0, 0, 2, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 54, 5, 152765, 0, 0, 1, -1, -1, 0, 0, 1, 2, 2, 0, 0, 0, 0),
(1857, 'Zakiroh', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1858, 'Arcillon', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 20441, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1859, 'Hildigrimn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1860, 'Galendurwen ', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1861, 'Isumbras', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1862, 'Kurhosh', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1863, 'Dadarafak', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1864, 'Umbros', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1865, 'D&eacute;ductance', 2, 0, 0, 0, 0, 4, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21636816, 0, 23, 1, 162334, 0, 0, 0, 30, 50, 0, 0, 1, 0, 0, 0, 3, 0, 0),
(1866, 'Agro', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21636936, 0, 6, 3, 123593, 0, 0, 1, -1, -1, 1, 0, 0, 5, 0, 0, 0, 0, 0),
(1867, 'Maxliger', 5, 0, 0, 0, 0, 2, 0, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 26, 7, 89247, 0, 0, 1, -1, -1, 0, 0, 2, 0, 0, 4, 0, 0, 0),
(1869, 'uodo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1870, 'Chelii', 0, 0, 0, 0, 0, 0, 0, 100, 30, 0, 'République', 'Thassopole', '', 'Aucune', 21641641, 0, 18, 2, 157415, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 2, 0, 0),
(1871, 'Wyl', 0, 0, 0, 0, 0, 0, 0, 80, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Aucune', 21646712, 0, 0, 0, 21589, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1873, 'Hirolhalil', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1874, 'Alardius', 3, 2, 0, 0, 0, 0, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21644479, 0, 2, 1, 44428, 0, 0, 0, -1, -1, 1, 0, 0, 1, 0, 0, 0, 0, 0);INSERT INTO `11mar_joueurs_bonus_1` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1875, 'Eiighty', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1876, 'Sachatere', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1877, 'Charlie', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1878, 'Lestathien', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1879, 'Kyohmanu', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1880, 'Ascallion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1881, 'Sparctanyadil', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1882, 'Starome', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1883, 'Khane', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21640311, 0, 5, 4, 109734, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1912, 'Eleril', 1, 0, 0, 0, 0, 2, 0, 100, 100, 1, 'Oligarchie', 'Édhesse', '', 'Aucune', 21647088, 0, 0, 0, 23581, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1913, 'Eshapaqy', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1914, 'Metyorah', 3, 0, 0, 0, 0, 0, 0, 70, 90, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21647194, 0, 9, 5, 41886, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(1915, 'Mortzacus', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21638776, 0, 6, 0, 89806, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(1918, 'Ashinseika', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Les Augures Boréals', 21639811, 0, 9, 0, 114024, 0, 0, 0, -1, -1, 1, 0, 3, 0, 0, 0, 0, 3, 0),
(1920, 'Teperek', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21640099, 0, 0, 6, 54846, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(1922, 'Thaelion', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21641207, 0, 0, 6, 65934, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1923, 'Rofas', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1924, 'B&auml;brah', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21642631, 0, 0, 3, 64714, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(1925, 'Henus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 10, 2, 63439, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(1926, 'Kilo', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1927, 'Koulibab', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1928, 'Wefel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1929, 'Stephi', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1931, 'Trolur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21643822, 0, 2, 4, 58242, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1933, 'Onche', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21645368, 0, 1, 0, 40856, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 0, 0, 0),
(1934, 'Goetiarn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1935, 'Cornholio Gargaholio', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1936, 'Alkkemeniel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1937, 'Ekelgeister', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 5, 2, 40081, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 0, 0, 0),
(1938, 'Sephaika', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1939, 'Jarotth', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1941, 'Kragone', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21645272, 0, 13, 3, 47884, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 2, 0, 0),
(1944, 'Prolor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 3, 2, 29459, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(1945, 'Miroslaw', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 29972, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1946, 'Valinov', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23577, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1947, 'Ame', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1948, 'Forol', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1949, 'Theus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1950, 'Voxhesse', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1951, 'Wigfried', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1952, 'Dukeskar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1953, 'Erchael', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21647445, 0, 0, 0, 35418, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1954, 'Olg le Gras', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Ordre de So', 21648500, 0, 0, 0, 29768, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(1955, 'Enedlotiel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1956, 'Loutch', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21648788, 0, 0, 0, 26838, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(1957, 'Grimm Ouar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1958, 'D&eacute;vass', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(1959, 'Llumeolf', 0, 0, 0, 0, 0, 0, 0, 50, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23617, 0, 0, 1, -1, -1, 1, 0, 0, 0, 0, 0, 1, 0, 0);



CREATE TABLE `11mar_joueurs_heros_1` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(25) NOT NULL default '',
  `race` varchar(25) NOT NULL default '',
  `classe` varchar(25) NOT NULL default '',
  `dieu` varchar(25) NOT NULL default '',
  `titre` varchar(25) NOT NULL default '',
  `royaume` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL default '0',
  `nb` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1960 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1960 ;

INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(10, 'Maher', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'd`Espeance', 181802, 0),
(11, 'Titlan', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'de Trimeandre', 125432, 0),
(12, 'Vigrid', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Dies Irae', 163758, 0),
(17, 'Helmrod', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Norsca', 39228, 0),
(29, 'Lissana', 'Fée', 'Magicien', 'Magie', 'Intendante', 'd`Esperita', 87422, 0),
(33, 'Demetron', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de la Lande Sanglante', 147543, 0),
(35, 'Meissner', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'd`Ensisheim', 236533, 0),
(36, 'Akos', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Talend', 42124, 0),
(42, 'Ora&iuml;a', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Minoria', 75827, 0),
(44, 'Oracle', 'Nain', 'Prêtre', 'Loi', 'Roi', 'de Korok', 471094, 0),
(45, 'Zhia', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Krucland', 76526, 0),
(47, 'Agasur', 'Géant', 'Barbare', 'Force', 'Seigneur', 'd`Agaz', 60836, 0),
(58, 'Egleria', 'Célestial', 'Prêtre', 'Mensonge', 'Maîtresse', 'de Cr&eacute;puscule', 138521, 0),
(61, 'Magebar', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Vali&eacute;d&eacute;ria', 283524, 0),
(68, 'Kiminou', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'des Terres F&eacute;lines', 397430, 0),
(71, 'T&ecirc;te-Plate', 'Homme', 'Inquisiteur', 'Compassion', 'Seigneur', 'des Temples de Gr&egrave;s', 406037, 0),
(86, 'Lothadith', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Pardorwen', 93256, 0),
(88, 'Shaugan', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Maltebes', 137597, 0),
(89, 'Argazel', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de Lezagra', 153835, 0),
(92, 'Turfel', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Ligorun', 445331, 0),
(93, 'Danahyl', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Lithrandil', 99730, 0),
(95, 'Rabak', 'Ancien', 'Assassin', 'Mort', 'Vénérable', 'de Keitha', 120084, 0),
(98, 'Nelvin', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Fellindel', 366286, 0),
(99, 'Aorphen', 'Elfe Noir', 'Assassin', 'Mensonge', 'Patriarche', 'd`Hakkyra', 127875, 0),
(116, 'Ge&iuml;nfrindel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Hadarac', 246746, 0),
(119, 'Barbouza', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Wyveand', 216918, 0),
(120, 'Aub&eacute;rion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Danu', 249514, 0),
(125, 'Lhito', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Tarbias', 225827, 0),
(131, 'Dalan', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Rabistiane', 145448, 0),
(132, 'Malorus', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de la Lune Etincellante', 279186, 0),
(133, 'Erios', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Findeli&euml;', 175753, 0),
(136, 'Lirth Evendil', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Planefide', 121329, 0),
(138, 'Vils&auml;en', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de la Confr&eacute;rie', 103602, 0),
(140, 'Ananta', 'Homme', 'Psioniste', 'Magie', 'Seigneur', 'de Mahou', 93825, 0),
(143, 'Rinoacamui', 'Homme', 'Chevalier', 'Guerre', 'Dame', 'de Zantetsuken', 109930, 0),
(144, 'Irkos', 'Orque', 'Barbare', 'Force', 'Chef', 'de Kalferas', 116978, 0),
(145, 'Phyleas', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Dalarian', 290106, 0),
(150, 'Kahzerya', 'Sahuagin', 'Guerrier', 'Guerre', 'Baronne', 'de Draonster', 117552, 0),
(152, 'Hishnak', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Hok', 116133, 0),
(156, 'Dyospiros', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'd`Hauts Cieux', 110654, 0),
(161, 'Marr', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Marzia', 126367, 0),
(162, 'Xelios', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'd`Alamovit', 70651, 0),
(167, 'Klaasninas', 'Homme', 'Inquisiteur', 'Loi', 'Dame', 'de L&eacute;pinar', 105298, 0),
(168, 'Altharam', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'd`Alycastre', 124276, 0),
(170, 'Kharst', 'Nain', 'Guerrier', 'Chance', 'Roi', 'de Barren`kain', 294555, 0),
(171, 'Draps', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Misfu', 102791, 0),
(173, 'Hulricht', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Solesmes', 192144, 0),
(181, 'Fourbinas', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Baarbute', 109732, 0),
(183, 'Axeolu', 'Géant', 'Shaman', 'Guerre', 'Dame', 'des Terres de Fang', 60751, 0),
(187, 'Boubi', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'de Manoulie', 216130, 0),
(189, 'Rmanor', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'des Terres Noircies', 62967, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(192, 'Orium', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'd`Argentium', 287051, 0),
(197, 'Leslie', 'Vampire', 'Assassin', 'Chaos', 'Comte', 'de Kabalastia', 91631, 0),
(199, 'Benihime', 'Elfe', 'Sorcier', 'Magie', 'Conseiller', 'd`Urhandhile', 299183, 0),
(202, 'Zarode', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Zalod', 50947, 0),
(204, 'Ovelia', 'Nain', 'Guerrier', 'Guerre', 'Reine', 'de Myrrhyn', 135973, 0),
(217, 'Tylert', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Bazanne', 170305, 0),
(218, 'Alumdil', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Morte-Vie', 259419, 0),
(219, 'Anair&euml;', 'Elfe Noir', 'Assassin', 'Mensonge', 'Patriarche', 'de Tyrien', 256700, 0),
(225, 'Ther`glat', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Brogoth', 94679, 0),
(229, 'Messalith', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Ach&eacute;ron', 227657, 0),
(231, 'Galigonidd', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'd`Infernel', 246767, 0),
(232, 'Matkias', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'du Pays du Malisse', 142388, 0),
(234, 'Poupou', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'du Volcan de Talc', 107617, 0),
(235, 'Dartoil', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Rotergan', 39973, 0),
(236, 'Tefeiri', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Schiv', 124765, 0),
(239, 'Luna', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Matriarche', 'de Lunita', 168230, 0),
(240, 'Kullah', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'd`Humlek', 107308, 0),
(241, 'Nadras', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Phoenixia', 138956, 0),
(242, 'Thelv', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'de Lendhyl', 104484, 0),
(252, 'Fina Nargel', 'Célestial', 'Paladin', 'Loi', 'Maîtresse', 'du Coeur de Pierre', 62352, 0),
(256, 'Husam', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'd`Eleeore', 135302, 0),
(258, 'Febus', 'Orque', 'Shaman', 'Force', 'Chef', 'de Febusi', 119408, 0),
(267, 'Dacapo', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'de Stacato', 72152, 0),
(270, 'Desmondis', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Tatouinis', 136148, 0),
(272, 'Na&euml;lki', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'de Sonnam', 51369, 0),
(273, 'Zagior', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Ealodor', 140832, 0),
(278, 'Zahel', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'des Hautes C&icirc;mes', 163100, 0),
(280, 'Rufbumpa', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Wamawala', 135072, 0),
(281, 'Estayr', 'Sahuagin', 'Sorcier', 'Pensée', 'Baron', 'de Corail Creux', 101228, 0),
(282, 'Kalista', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de l`Azur&eacute;e', 137529, 0),
(283, 'Gelthasar Belt', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'd`Elderae', 131110, 0),
(284, 'Tulkas', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'd`Illya-Verte', 141447, 0),
(297, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 116017, 0),
(299, 'Almanarre', 'Orque', 'Barbare', 'Guerre', 'Colporteur', 'de Ragots', 84266, 0),
(300, 'Shadark', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'de Doriane', 159186, 0),
(301, 'Rausten', 'Elfe Noir', 'Démonologiste', 'Maladie', 'Matriarche', 'de Mangrovia', 45747, 0),
(302, 'L&eacute;otar', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'd`Agnez', 126893, 0),
(303, 'Gauerd&ocirc;me', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'de Dam&ocirc;le', 149176, 0),
(314, 'Eleanora', 'Elfe Noir', 'Démonologiste', 'Mort', 'Matriarche', 'de Phenelis', 110408, 0),
(321, 'Vannams', 'Célestial', 'Inquisiteur', 'Force', 'Maître', 'de Belundra', 105851, 0),
(328, 'Pyaray', 'Célestial', 'Inquisiteur', 'Compassion', 'Maître', 'de Kys&euml;', 340311, 0),
(333, 'Cassandre', 'Homme', 'Assassin', 'Mensonge', 'Dame', 'de Sagamore', 101027, 0),
(345, 'Torme Morselame', 'Nain', 'Guerrier', 'Force', 'Roi', 'de Karank Azak', 173148, 0),
(349, 'Elanor', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'd`Elenyalis', 222241, 0),
(385, 'Aratos', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ast&eacute;rismes ', 295850, 0),
(386, 'Yelderick', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Fantaisianis', 369924, 0),
(407, 'Archanos', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Carialos', 275514, 0),
(408, 'Leorod', 'Elfe', 'Guerrier', 'Honneur', 'Conseiller', 'de Belorod', 140355, 0),
(410, 'Birgenn', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'du Steaksorc', 89057, 0),
(413, 'Tetrahyd', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'de Tijua', 152077, 0),
(418, 'Avister', 'Vampire', 'Assassin', 'Chaos', 'Comtesse', 'd`Isoth', 156469, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(423, 'Abert', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Tristemine', 111618, 0),
(424, 'Draon', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'd`Oliviercta', 92384, 0),
(427, 'Koali', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Vallombre', 150432, 0),
(439, 'Willi', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Bellemont', 141343, 0),
(446, 'Anadyomene', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Sanaustinu', 93623, 0),
(463, 'Arnaud', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Grivalion', 133944, 0),
(465, 'Dachinos', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Klobos', 140900, 0),
(478, 'Soymur', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'd`Arkan', 124939, 0),
(481, 'Arcelane', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Csur', 118567, 0),
(484, 'Liluth', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Romine', 132278, 0),
(491, 'Ankharon', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Kouroum', 204082, 0),
(533, 'Roscoat', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Kergrist', 67467, 0),
(550, 'Montheo', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de la For&ecirc;t de Beffou', 117451, 0),
(555, 'Kaerrawen', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'de Fern', 98570, 0),
(566, 'Bamdinas', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'd`Anstaing', 138997, 0),
(570, 'Nell', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Scillius', 129286, 0),
(572, 'Zathryel', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'des Plaines Majestueuses', 147364, 0),
(578, 'Lortigan', 'Fée', 'Illusioniste', 'Chance', 'Intendante', 'de Serealis', 103418, 0),
(607, 'Konrad', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Kross', 65399, 0),
(624, 'Filemon', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Saris', 46081, 0),
(637, 'Mathaos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Terres du Nores', 181866, 0),
(640, 'Mattai', 'Vampire', 'Nécromancien', 'Mort', 'Comte', 'de Dixion', 117950, 0),
(672, 'Jeffrey', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de G&eacute;olois', 213239, 0),
(712, 'Amendel Genfaluin', 'Elfe', 'Guerrier', 'Guerre', 'Conseiller', 'd`Helgeraad', 46343, 0),
(787, 'Dranthen', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'd`Abission', 139568, 0),
(815, 'Mello', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Cardie', 91991, 0),
(820, 'Pirelias', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'd`Angoules', 104258, 0),
(835, 'Axel', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'des Fout ', 147194, 0),
(848, 'Arkatros', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Melfir', 429031, 0),
(868, 'Arimane', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'd`Yami', 137210, 0),
(870, 'Xandre', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Mesmont', 164179, 0),
(879, 'Vezk', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'des Terres Maudites', 84126, 0),
(891, 'Hakam Kukur', 'Orque', 'Barbare', 'Guerre', 'Chef', 'd`Yonpen', 48798, 0),
(892, 'Rek', 'Sahuagin', 'Prêtre', 'Guerre', 'Baron', 'de Conraed', 101334, 0),
(911, 'Enephia', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'd`Isildira', 112868, 0),
(917, 'Nem&egrave;s', 'Fée', 'Druide', 'Nature', 'Intendante', 'de l`Antre Pourpre', 182410, 0),
(922, 'Malia', 'Fée', 'Enchanteur', 'Pensée', 'Intendante', 'de F&eacute;&eacute;rie', 81193, 0),
(928, 'Vlad Consir', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Minass', 69454, 0),
(930, 'Zaseo', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Alabasta', 140351, 0),
(933, 'Zedounet', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'de Toprawa', 133234, 0),
(946, 'Ceccua', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'de Borelandi', 104557, 0),
(948, 'Mosoulo', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Technivaule', 129837, 0),
(988, 'Goupille', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Poningand', 86435, 0),
(989, 'Salfalar', 'Célestial', 'Inquisiteur', 'Compassion', 'Maître', 'de Purios', 109876, 0),
(992, 'Aedric', 'Orque', 'Barbare', 'Force', 'Chef', 'de Nardogord', 62651, 0),
(1010, 'Herel', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Mella', 143439, 0),
(1014, 'Ascheritto', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Vahlarian', 107562, 0),
(1016, 'Eleana', 'Vampire', 'Nécromancien', 'Mort', 'Comtesse', 'de Terrabannias', 157960, 0),
(1018, 'Codringher', 'Célestial', 'Inquisiteur', 'Loi', 'Maître', 'de Rydingsvard', 70162, 0),
(1044, 'E&auml;rthan', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'd`A&euml;remar', 66241, 0),
(1048, 'Najya', 'Fée', 'Druide', 'Nature', 'Intendante', 'de V&eacute;tiver', 93300, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1057, 'X&eacute;nox', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Kaid', 124027, 0),
(1061, 'Kopan', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Kawasp', 77140, 0),
(1067, 'Daneel', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'd`Ardon', 115316, 0),
(1071, 'Sonim', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Cournoir', 4931, 0),
(1115, 'Galaway', 'Homme', 'Archer', 'Chance', 'Seigneur', 'd`Igounem', 104943, 0),
(1120, 'Ga&euml;llya', 'Elfe', 'Prêtre', 'Compassion', 'Conseillère', 'de Fabliensa', 208598, 0),
(1122, 'Del&eacute;nia', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Tuatha', 131882, 0),
(1139, 'Drekal', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Krugor', 155292, 0),
(1141, 'Renard', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de F&eacute;lonie', 35062, 0),
(1145, 'DagBar', 'Ancien', 'Enchanteur', 'Magie', 'Vénérable', 'de Mormarchant', 174109, 0),
(1156, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'd`Oriz-Garsie', 312983, 0),
(1164, 'Mayemaye', 'Célestial', 'Paladin', 'Honneur', 'Maîtresse', 'de le Gnan', 105273, 0),
(1287, 'Nragax', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Brul&eacute;', 175116, 0),
(1294, 'Kallikantzaros', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Flegmatorya', 97155, 0),
(1299, 'Shinna', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Karazia', 23095, 0),
(1301, 'Dexert', 'Célestial', 'Prêtre', 'Honneur', 'Maîtresse', 'de la For&ecirc;t Mill&eacute;naire', 82733, 0),
(1305, 'Luisoros', 'Infernal', 'Guerrier', 'Honneur', 'Despote', 'de Limann', 82248, 0),
(1308, 'Reya', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'du Charnier Goulu', 244055, 0),
(1311, 'Ambre', 'Vampire', 'Assassin', 'Mort', 'Comte', 'd`Ambrosium', 55524, 0),
(1314, 'Lunnar', 'Homme', 'Chevalier', 'Force', 'Seigneur', 'd`El Morad', 40378, 0),
(1340, 'X&yuml;ixiant’h ', 'Elfe', 'Barde', 'Chemins', 'Conseillère', 'de Baentcher', 127182, 0),
(1403, 'Soreclis', 'Ancien', 'Guerrier', 'Guerre', 'Vénérable', 'de Lala', 162286, 0),
(1408, 'Lucas', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'd`Irabaes', 61424, 0),
(1409, 'Esteban', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'de la Falaise', 58651, 0),
(1410, 'Fico', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Solarim', 46193, 0),
(1411, 'Karyon', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'd`Amakiir', 153529, 0),
(1412, 'Fouchier', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'des Granches', 246118, 0),
(1414, 'Criton', 'Minotaure', 'Guerrier', 'Loi', 'Seigneur', 'de Bosphore', 171339, 0),
(1418, 'Basl', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'd`Oxymandre', 4523366, 0),
(1457, 'Helagnus', 'Homme', 'Nécromancien', 'Mort', 'Seigneur', 'de Thayen', 102325, 0),
(1458, 'Yodine', 'Célestial', 'Enchanteur', 'Magie', 'Maîtresse', 'de Hovaoine', 104738, 0),
(1460, 'Alec', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de la Ville C&eacute;leste', 150135, 0),
(1463, 'Watmatus', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Watmar', 46486, 0),
(1469, 'Elm', 'Orque', 'Shaman', 'Guerre', 'Chef', 'd`Argonton', 310806, 0),
(1470, 'Celithrand', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Krenaste', 134730, 0),
(1475, 'Batterusero', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Silenill', 21703, 0),
(1477, 'La Sangre', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Morte-Terre', 55024, 0),
(1480, 'Alaesir', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'de Tor F&eacute;lia', 179558, 0),
(1492, 'Osterate', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de M&eacute;lios', 105884, 0),
(1493, 'Safira', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Matriarche', 'des Terres Noires', 104814, 0),
(1499, 'Toroc', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Hammer', 117031, 0),
(1512, 'Keldaran', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'd`Emergence', 94891, 0),
(1519, 'Tirandilis', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'des Landes Sedus', 150454, 0),
(1522, 'Durshak le Borgne', 'Sahuagin', 'Barbare', 'Guerre', 'Baron', 'de la Tribu Zogdob', 65265, 0),
(1528, 'Saya', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Aglatien', 80677, 0),
(1538, 'Mikijonie', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Laogreif', 48934, 0),
(1539, 'Kaiiros', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Aradie', 140304, 0),
(1548, 'Iorfel', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Lokeria', 157262, 0),
(1549, 'Caym', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Cala Taur', 189062, 0),
(1550, 'N&auml;ta&euml;l', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Abysse', 73724, 0),
(1559, 'Daringel', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Dalmasca', 61954, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1560, 'Ifingwell', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Andorran', 85114, 0),
(1562, 'Lyraprime', 'Célestial', 'Paladin', 'Loi', 'Maîtresse', 'D`Amreb', 260862, 0),
(1574, 'Na&euml;lys', 'Homme', 'Assassin', 'Mensonge', 'Dame', 'd`Asmodia', 106137, 0),
(1578, 'Nunglhur', 'Infernal', 'Assassin', 'Mort', 'Despote', 'de Guerhol', 16098, 0),
(1579, 'Nixd', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Kamosus', 3134, 0),
(1583, 'Rhal', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Dakra&iuml;', 197433, 0),
(1611, 'Arthurik', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Milar', 326088, 0),
(1614, 'Oamba', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Rackma', 37812, 0),
(1622, 'Kalina', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Matriarche', 'de Sablon', 2224217, 0),
(1623, 'Brutus', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'D`Alantore', 95480, 0),
(1627, 'Silayerr', 'Elfe', 'Barde', 'Chance', 'Conseillère', 'de Nihruth', 215797, 0),
(1640, 'Maria', 'Homme', 'Guerrier', 'Force', 'Dame', 'de Colombe', 192287, 0),
(1645, 'Lagos', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'D`Orion', 94274, 0),
(1651, 'Ramiran', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Nimbrthil', 116794, 0),
(1653, 'Damian', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'D`Orobas', 136117, 0),
(1667, 'Vylnius', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Salazariusargonath', 72612, 0),
(1670, 'Bolackot', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Lesiam&eacute;s', 144022, 0),
(1672, 'Drakarius', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Drakila', 97450, 0),
(1677, 'Morblink', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Morbalinit', 3942, 0),
(1682, 'L&eacute;&ouml;raz', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Raze-Campagne', 41938, 0),
(1685, 'Beltha&iuml;s', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Aninma', 112673, 0),
(1694, 'Wariogab', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Jokin', 3134, 0),
(1698, 'Khalak', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Malaguun', 90397, 0),
(1700, 'Gaeldrech', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Underbaran', 143722, 0),
(1702, 'Jenin', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de Le Molau', 3134, 0),
(1707, 'Symn', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Tiguelidi', 3134, 0),
(1708, 'Hulriche', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Lystonne', 0, 0),
(1714, 'Zecrome', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de Balacush', 0, 0),
(1715, 'Blindor la Montagne', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Goudrian', 76757, 0),
(1716, 'Archonss', 'Célestial', 'Magicien', 'Pensée', 'Maître', 'de Polaity', 27411, 0),
(1717, 'Lili Eelliote', 'Elfe', 'Guerrier', 'Guerre', 'Conseillère', 'de la Vistelle', 0, 0),
(1719, 'Nesva', 'Homme', 'Archer', 'Chance', 'Dame', 'de Perche', 0, 0),
(1720, 'Abnar', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Lesheraliers', 0, 0),
(1721, 'Lealeia', 'Célestial', 'Magicien', 'Magie', 'Maîtresse', 'de Nexork', 0, 0),
(1722, 'Balodules', 'Célestial', 'Paladin', 'Loi', 'Maître', 'de Bolofules', 0, 0),
(1723, 'Narayana', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Malantor', 4645, 0),
(1724, 'Lute', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Rofacig', 0, 0),
(1725, 'Galmin', 'Orque', 'Shaman', 'Guerre', 'Chef', 'de Pratoras', 192070, 0),
(1727, 'Thorgrim', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'd`Asurdor', 68583, 0),
(1731, 'Infilz', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Tareksis', 124330, 0),
(1732, 'Khorialyx', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Cereros', 3134, 0),
(1734, 'Wecklers', 'Infernal', 'Assassin', 'Mort', 'Despote', 'de Rofeller', 0, 0),
(1736, 'Pheregan', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Spartinus', 0, 0),
(1737, 'Darckym', 'Homme', 'Voleur', 'Chance', 'Dame', 'de Zangear', 3134, 0),
(1738, 'Nebala', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Citeaux des Carlithion', 0, 0),
(1739, 'Dydys', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Vanacalion', 0, 0),
(1740, 'Oolna', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Izilandi', 124105, 0),
(1741, 'Mecainxi', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Jalapanias', 0, 0),
(1742, 'Hygarld', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Midgard', 0, 0),
(1743, ' Dimniel', 'Homme', 'Chevalier', 'Force', 'Dame', 'de Rouinda', 0, 0),
(1745, 'Pyrim', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'D`Eonisis', 89212, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1746, 'Oerio', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Sylve&iuml;nil', 3164, 0),
(1747, 'Hordrin', 'Célestial', 'Prêtre', 'Loi', 'Maître', 'de Braeron', 166838, 0),
(1748, 'Baduit', 'Elfe', 'Barde', 'Légendes', 'Conseiller', 'd`Hitlum', 89966, 0),
(1749, 'Trano', 'Elfe', 'Prêtre', 'Compassion', 'Conseiller', 'd`Uthyar', 199609, 0),
(1750, 'Ephem', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Erewon', 144345, 0),
(1751, 'Kaatk', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Naheurhelm', 0, 0),
(1752, 'Kanou', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Suna', 124644, 0),
(1754, 'Elddoth', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Morbihatan&eacute;', 3455, 0),
(1755, 'Le Dougec', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Moussijllon ', 111854, 0),
(1756, 'Elysfer', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Bois des Ch&ecirc;nes Rouges', 76033, 0),
(1757, 'Milyana', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Jarys', 3822, 0),
(1758, 'Neroht', 'Homme', 'Chevalier', 'Guerre', 'Dame', 'de Nerinrhod', 84401, 0),
(1760, 'Shael', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de Chade', 0, 0),
(1761, 'Plumne', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'D`Ev Zone', 0, 0),
(1762, 'Killyrr', 'Gnome', 'Voleur', 'Ténèbres', 'Gouverneur', 'de Montavuglnes', 0, 0),
(1763, 'Houdiard', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Zevilldge', 0, 0),
(1764, 'Jujur', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Jujulheim', 0, 0),
(1765, 'Sukye', 'Elfe', 'Guerrier', 'Légendes', 'Conseillère', 'de Thowolfee', 0, 0),
(1766, 'Cocodu', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'D`Atlaniss', 0, 0),
(1767, 'Gorgnano', 'Fée', 'Enchanteur', 'Chance', 'Intendante', 'de Namsandhorth', 3134, 0),
(1768, 'Alecyel', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Vampyrhoth', 3134, 0),
(1769, 'Haradrymn', 'Célestial', 'Enchanteur', 'Chance', 'Maître', 'de Tovralon', 3134, 0),
(1770, 'Ameennos', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'D`Artack', 63038, 0),
(1771, 'Toxigoulec', 'Sahuagin', 'Barbare', 'Guerre', 'Baron', 'de Towoxyrld', 0, 0),
(1772, 'Zeiradijas', 'Homme', 'Paladin', 'Loi', 'Seigneur', 'de Glosthia', 3134, 0),
(1773, 'Pyrazine', 'Sahuagin', 'Shaman', 'Guerre', 'Baron', 'de Pyralie', 92927, 0),
(1779, 'Htek', 'Géant', 'Shaman', 'Force', 'Seigneur', 'de Newerth', 0, 0),
(1780, 'Flinflin', 'Vampire', 'Assassin', 'Mort', 'Comtesse', 'de Normanile', 3134, 0),
(1781, 'Snackar', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Citflesy', 3166, 0),
(1782, 'Conona', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Bahou', 3834, 0),
(1783, 'Sinostroror', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Les Terrsins', 4165, 0),
(1784, 'Lineus', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Darkania', 122105, 0),
(1785, 'Engenoir', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'D`Atein', 0, 0),
(1793, 'Erairefal', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'de Pandotialath', 3536, 0),
(1794, 'Ramenel', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'de Thaurme', 0, 0),
(1795, 'Bornami', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'de Nevjuice', 97988, 0),
(1796, 'Shaynnat', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'D`Orgrimar', 0, 0),
(1797, 'Zeldgrove', 'Elfe Noir', 'Guerrier', 'Chance', 'Patriarche', 'de Villlamosnay', 0, 0),
(1799, 'Sratueur', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'de Sra', 0, 0),
(1800, 'Petinihil', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de Geldare', 0, 0),
(1801, 'Jixinou', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'de Jixidomm', 0, 0),
(1802, 'Gartamarbasdam', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de L`&Eacute;gion&eacute;heim', 0, 0),
(1803, 'Foukrache', 'Homme', 'Chevalier', 'Loi', 'Seigneur', 'de Foukrache', 0, 0),
(1804, 'Elorfindelle', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Kalastria', 68629, 0),
(1805, 'Alerob', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'D`Alzawa', 128104, 0),
(1806, 'Sto&iuml;ck Ur', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Gardien de Syrrusa', 3144, 0),
(1807, 'Twirlinki', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Payerne', 0, 0),
(1808, 'Yusurken', 'Elfe Noir', 'Sorcier', 'Pensée', 'Patriarche', 'de Thangern', 0, 0),
(1809, 'Kal', 'Sahuagin', 'Prêtre', 'Pensée', 'Baron', 'de De la Cryptheilm', 158219, 0),
(1810, 'Exfly', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Aumroy', 3134, 0),
(1812, 'Kilou', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'de Kilheimou', 0, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1813, 'Aanor', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'D`Elezar', 0, 0),
(1814, 'Zizcaptziz', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Tacatomber', 0, 0),
(1815, 'Yuhaln', 'Homme', 'Guerrier', 'Honneur', 'Seigneur', 'de Foucoinde', 3134, 0),
(1816, 'Han Main-Tranchante', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Buchenithar', 90565, 0),
(1817, 'Moriador', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de Sachatanie', 0, 0),
(1818, 'Shengouara', 'Vampire', 'Nécromancien', 'Mort', 'Comtesse', 'de Barbaliso', 3134, 0),
(1819, 'Nevfalas', 'Elfe Noir', 'Nécromancien', 'Ténèbres', 'Patriarche', 'de Gheysens', 0, 0),
(1820, 'Nige', 'Vampire', 'Démonologiste', 'Mort', 'Comte', 'de Maharao', 0, 0),
(1821, 'Priranpicedo', 'Fée', 'Illusioniste', 'Chance', 'Intendant', 'de Sarissain', 0, 0),
(1822, 'Persuess', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Ragnaiar', 0, 0),
(1823, 'Katarat', 'Fée', 'Druide', 'Nature', 'Intendante', 'de Sylveria', 0, 0),
(1824, 'Aedorn', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'D`Iorelrahc', 75099, 0),
(1825, 'Arathiliel', 'Fée', 'Illusioniste', 'Chance', 'Intendante', 'de Rinlhaw', 0, 0),
(1826, 'Anithralith', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Nar Arog', 95394, 0),
(1827, 'Khiran', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Ze&iuml;danys', 89266, 0),
(1828, 'L&eacute;nnih', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'de Drizaste', 35493, 0),
(1829, 'Baldragon', 'Sahuagin', 'Shaman', 'Force', 'Baron', 'd`Armastral', 3139, 0),
(1830, 'Annaebelles', 'Vampire', 'Sorcier', 'Magie', 'Comtesse', 'de Palanhilion', 0, 0),
(1831, 'Basijle', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Alcyulda', 0, 0),
(1832, 'Naezdeck', 'Célestial', 'Magicien', 'Magie', 'Maître', 'D`Essca', 4110, 0),
(1833, 'Witmitis', 'Homme', 'Assassin', 'Ténèbres', 'Seigneur', 'de Luinhilien', 3197, 0),
(1834, 'Maeon', 'Vampire', 'Enchanteur', 'Magie', 'Comtesse', 'de Haeondo', 0, 0),
(1835, 'Krystophoros', 'Nain', 'Guerrier', 'Légendes', 'Roi', 'd`Obedia', 430433, 0),
(1836, 'Tchinga', 'Gnome', 'Illusioniste', 'Chance', 'Gouverneur', 'de Tchigtchouk', 112568, 0),
(1837, 'Aenurn', 'Elfe', 'Rôdeur', 'Nature', 'Conseiller', 'de la Foret D`epines', 3522, 0),
(1838, 'Anwaman&euml;l', 'Elfe', 'Guerrier', 'Guerre', 'Conseillère', 'des Terres de Lumi&egrave;res', 50614, 0),
(1839, 'Benjik', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'D`Olympnais', 0, 0),
(1840, 'Geromini', 'Gnome', 'Voleur', 'Mensonge', 'Gouverneur', 'de Fabiland', 3404, 0),
(1841, 'Anyd', 'Elfe', 'Voleur', 'Chance', 'Conseiller', 'de D`Ilflehm', 3145, 0),
(1842, 'Cometa', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Krait', 94143, 0),
(1843, 'Poepior ', 'Célestial', 'Enchanteur', 'Chaos', 'Maître', 'de Perlanthiwen', 0, 0),
(1851, 'Reyns', 'Homme', 'Barde', 'Chance', 'Seigneur', 'de D&eacute;sert Des Pluies', 38843, 0),
(1852, 'Imbalayo', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de Tahuant', 41740, 0),
(1853, 'Ar&eacute;gonde', 'Homme', 'Psioniste', 'Pensée', 'Dame', 'de Sardhesse', 88385, 0),
(1856, 'Darzang', 'Infernal', 'Assassin', 'Mensonge', 'Despote', 'de Bronrar', 115385, 0),
(1857, 'Zakiroh', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de LIVAGA', 0, 0),
(1858, 'Arcillon', 'Elfe Noir', 'Voleur', 'Mensonge', 'Patriarche', 'de Valion', 3134, 0),
(1859, 'Hildigrimn', 'Vampire', 'Assassin', 'Ténèbres', 'Comte', 'de Beritana', 0, 0),
(1860, 'Galendurwen ', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'de Cuntery', 0, 0),
(1861, 'Isumbras', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Legenderiel', 0, 0),
(1862, 'Kurhosh', 'Célestial', 'Inquisiteur', 'Honneur', '', 'D`Imbice', 3134, 0),
(1863, 'Dadarafak', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Derome', 0, 0),
(1864, 'Umbros', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Troisi', 0, 0),
(1865, 'D&eacute;ductance', 'Sahuagin', 'Sorcier', 'Pensée', 'Baronne', 'de l`Intuition', 79813, 0),
(1866, 'Agro', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'd`Oresmaux', 34840, 0),
(1867, 'Maxliger', 'Fée', 'Enchanteur', 'Magie', 'Intendant', 'de Pics Celestes', 59612, 0),
(1869, 'uodo', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Tepires', 0, 0),
(1870, 'Chelii', 'Elfe', 'Druide', 'Nature', 'Conseillère', 'de Kanalta', 113557, 0),
(1871, 'Wyl', 'Elfe Noir', 'Sorcier', 'Magie', 'Patriarche', 'D`Aglaura', 4607, 0),
(1873, 'Hirolhalil', 'Ancien', 'Assassin', 'Ténèbres', 'Vénérable', 'de Molery', 0, 0),
(1874, 'Alardius', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Astaroth', 6330, 0);INSERT INTO `11mar_joueurs_heros_1` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1875, 'Eiighty', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Nalik', 0, 0),
(1876, 'Sachatere', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Loicdefinesse', 0, 0),
(1877, 'Charlie', 'Elfe Noir', 'Prêtre', 'Guerre', 'Matriarche', 'de Jouhaux', 3134, 0),
(1878, 'Lestathien', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Lillety', 0, 0),
(1879, 'Kyohmanu', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Nuinberaid', 0, 0),
(1880, 'Ascallion', 'Ancien', 'Enchanteur', 'Magie', 'Vénérable', 'de Velonia', 3134, 0),
(1881, 'Sparctanyadil', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Mortdorillion', 0, 0),
(1882, 'Starome', 'Homme', 'Paladin', 'Honneur', '', 'de Celesalwen', 0, 0),
(1883, 'Khane', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de l\'arbre sylvestre', 47740, 0),
(1912, 'Eleril', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'D`Arolven', 3197, 0),
(1913, 'Eshapaqy', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Melodrache', 0, 0),
(1914, 'Metyorah', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Soseai', 7542, 0),
(1915, 'Mortzacus', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Mortfort', 37962, 0),
(1918, 'Ashinseika', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'd`Adjuessi', 63797, 0),
(1920, 'Teperek', 'Fée', 'Druide', 'Nature', 'Intendant', 'D`Avoine', 5779, 0),
(1922, 'Thaelion', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Shelazan', 6939, 0),
(1923, 'Rofas', 'Célestial', 'Paladin', 'Honneur', '', 'de Simande', 0, 0),
(1924, 'B&auml;brah', 'Géant', 'Guerrier', 'Honneur', 'Seigneur', 'de M&auml;zdonia', 8028, 0),
(1925, 'Henus', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Badalle', 11502, 0),
(1926, 'Kilo', 'Ancien', 'Assassin', 'Ténèbres', 'Vénérable', 'de Hanasa', 0, 0),
(1927, 'Koulibab', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Kreruus', 0, 0),
(1928, 'Wefel', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Skyyz', 0, 0),
(1929, 'Stephi', 'Fée', 'Magicien', 'Magie', 'Intendante', 'D`Amberieu', 0, 0),
(1931, 'Trolur', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'd`Oxonium', 6680, 0),
(1933, 'Onche', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'D`HapLand', 29582, 0),
(1934, 'Goetiarn', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'de Myopic Empire.', 0, 0),
(1935, 'Cornholio Gargaholio', 'Vampire', 'Nécromancien', 'Mort', 'Comtesse', 'D`Asymptote', 0, 0),
(1936, 'Alkkemeniel', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'de Kazadayar', 0, 0),
(1937, 'Ekelgeister', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Lio', 13397, 0),
(1938, 'Sephaika', 'Fée', 'Magicien', 'Magie', '', 'de Melbylicious', 0, 0),
(1939, 'Jarotth', 'Orque', 'Guerrier', 'Guerre', '', 'de Xatol ', 0, 0),
(1941, 'Kragone', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Styx', 9215, 0),
(1944, 'Prolor', 'Elfe Noir', 'Démonologiste', 'Maladie', 'Patriarche', 'de Demacia', 5234, 0),
(1945, 'Miroslaw', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Thimeona', 4492, 0),
(1946, 'Valinov', 'Elfe Noir', 'Guerrier', 'Force', 'Patriarche', 'D`Arkagnia', 3134, 0),
(1947, 'Ame', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Solyana', 0, 0),
(1948, 'Forol', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'D`Eohax', 0, 0),
(1949, 'Theus', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Klenfer', 0, 0),
(1950, 'Voxhesse', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Rehug', 0, 0),
(1951, 'Wigfried', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Epaho', 0, 0),
(1952, 'Dukeskar', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Arrub', 0, 0),
(1953, 'Erchael', 'Homme', 'Inquisiteur', 'Loi', 'Seigneur', 'de Tarshen', 4122, 0),
(1954, 'Olg le Gras', 'Géant', 'Barbare', 'Force', 'Seigneur', 'des Monts Ob&egrave;ses', 3220, 0),
(1955, 'Enedlotiel', 'Elfe', 'Magicien', 'Magie', 'Conseillère', 'de Macy', 0, 0),
(1956, 'Loutch', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de C&eacute;leron', 3451, 0),
(1957, 'Grimm Ouar', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'D`Elviass', 0, 0),
(1958, 'D&eacute;vass', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Gayart', 0, 0),
(1959, 'Llumeolf', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Versanie', 3152, 0);



CREATE TABLE `11mar_joueurs_stats_1` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(25) NOT NULL default '',
  `niveau` tinyint(4) NOT NULL default '0',
  `puissance` int(11) NOT NULL default '0',
  `xp` int(11) NOT NULL default '0',
  `but` int(11) NOT NULL default '0',
  `att` float(5,2) NOT NULL default '0.00',
  `def` float(5,2) NOT NULL default '0.00',
  `ini` float(5,2) NOT NULL default '0.00',
  `cha` float(5,2) NOT NULL default '0.00',
  `end` float(5,2) NOT NULL default '0.00',
  `pui` float(5,2) NOT NULL default '0.00',
  `mana` int(11) NOT NULL default '0',
  `victoire` tinyint(4) NOT NULL default '0',
  `defaite` tinyint(4) NOT NULL default '0',
  `argent` int(11) NOT NULL default '0',
  `soufre` mediumint(9) NOT NULL default '0',
  `mercure` mediumint(9) NOT NULL default '0',
  `cristal` mediumint(9) NOT NULL default '0',
  `gemme` mediumint(9) NOT NULL default '0',
  `heure` tinyint(4) NOT NULL default '0',
  `indice_militaire` int(11) NOT NULL default '19314424',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1960 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1960 ;

INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(10, 'Maher', 13, 181802, 80210, 91000, 62.50, 55.00, 61.00, 46.50, 75.50, 75.50, 40000, 0, 0, 2029767, 1712, 1013, 1955, 1288, 0, 21647883),
(11, 'Titlan', 17, 125432, 145964, 153000, 125.00, 50.00, 57.50, 14.50, 66.50, 89.50, 34267, 0, 0, 192021, 1019, 262, 270, 30, 0, 21645216),
(12, 'Vigrid', 20, 163758, 194650, 210000, 131.00, 128.00, 112.00, 59.00, 99.00, 80.00, 7388, 0, 0, 57646, 612, 269, 120, 67, 0, 21645616),
(17, 'Helmrod', 12, 39228, 70839, 78000, 110.00, 57.00, 39.00, 7.00, 32.00, 18.00, 30000, 0, 0, 166935, 0, 154, 268, 234, 0, 21625638),
(29, 'Lissana', 17, 87422, 142809, 153000, 18.50, 48.00, 43.00, 144.50, 101.00, 236.00, 50000, 0, 0, 255379, 498, 330, 221, 911, 0, 21645460),
(33, 'Demetron', 16, 147543, 129068, 136000, 162.00, 78.00, 39.00, 15.00, 42.00, 18.00, 2403, 0, 0, 815240, 241, 363, 342, 147, 0, 21648678),
(35, 'Meissner', 21, 236533, 224522, 231000, 123.50, 85.00, 150.00, 87.00, 30.00, 21.50, 50000, 0, 0, 3877163, 2695, 2623, 3733, 3785, 0, 21645241),
(36, 'Akos', 13, 42124, 78297, 91000, 101.00, 43.50, 39.00, 11.50, 30.50, 19.50, 30000, 0, 0, 2170157, 109, 111, 137, 177, 0, 21608511),
(42, 'Ora&iuml;a', 15, 75827, 110624, 120000, 166.00, 129.00, 117.00, 12.50, 26.00, 26.50, 20000, 0, 0, 2663989, 496, 351, 464, 312, 0, 21649721),
(44, 'Oracle', 29, 471094, 412763, 435000, 255.00, 224.00, 17.50, 165.83, 166.00, 152.00, 37310, 0, 0, 498521, 495, 662, 248, 332, 0, 21648565),
(45, 'Zhia', 11, 76526, 57416, 66000, 12.50, 41.00, 29.00, 35.00, 81.50, 32.50, 27078, 0, 0, 30512, 246, 123, 340, 401, 0, 21648697),
(47, 'Agasur', 7, 60836, 22334, 28000, 67.00, 39.50, 23.00, 10.50, 22.50, 15.50, 30000, 0, 0, 6222794, 785, 550, 1083, 1070, 0, 21621714),
(58, 'Egleria', 20, 138521, 194403, 210000, 78.00, 90.00, 45.00, 141.00, 66.00, 145.00, 36075, 0, 0, 819236, 153, 156, 156, 441, 0, 21648209),
(61, 'Magebar', 19, 283524, 183282, 190000, 77.50, 24.50, 96.50, 57.50, 101.50, 154.50, 41552, 0, 0, 200553, 291, 515, 651, 33, 0, 21644934),
(68, 'Kiminou', 33, 397430, 530337, 561000, 208.00, 149.00, 242.00, 146.00, 89.00, 84.00, 40000, 0, 0, 202211, 597, 557, 390, 300, 0, 21646908),
(71, 'T&ecirc;te-Plate', 37, 406037, 684577, 703000, 290.50, 193.50, 151.50, 184.00, 164.00, 132.50, 50000, 0, 0, 927250, 679, 194, 107, 305, 0, 21648278),
(86, 'Lothadith', 18, 93256, 165283, 171000, 25.00, 49.00, 49.00, 61.00, 56.00, 257.00, 50000, 0, 0, 202150, 426, 141, 18, 396, 0, 21648592),
(88, 'Shaugan', 7, 137597, 21817, 28000, 53.00, 30.00, 41.50, 8.50, 37.50, 50.50, 17675, 0, 0, 1341194, 2114, 1571, 1487, 1998, 0, 21646256),
(89, 'Argazel', 25, 153835, 314198, 325000, 53.50, 43.00, 70.00, 176.50, 171.00, 288.00, 50000, 0, 0, 8101796, 1340, 430, 920, 720, 0, 21640903),
(92, 'Turfel', 38, 445331, 704381, 741000, 400.00, 352.00, 46.00, 253.33, 188.00, 154.00, 50000, 0, 0, 7768666, 4075, 3583, 2667, 2644, 0, 21648365),
(93, 'Danahyl', 17, 99730, 151499, 153000, 58.50, 32.00, 59.00, 54.50, 87.00, 184.00, 50000, 0, 0, 371147, 253, 33, 28, 418, 0, 21646987),
(95, 'Rabak', 16, 120084, 127752, 136000, 61.00, 43.00, 161.00, 58.00, 30.00, 45.00, 24944, 0, 0, 902661, 348, 190, 16, 132, 0, 21648536),
(98, 'Nelvin', 15, 366286, 117925, 120000, 96.50, 50.00, 159.00, 30.00, 24.00, 18.50, 40000, 0, 0, 5150214, 336, 11, 29, 176, 0, 21646647),
(99, 'Aorphen', 19, 127875, 171105, 190000, 136.00, 39.00, 197.00, 123.00, 38.00, 31.00, 34535, 0, 0, 349680, 985, 647, 577, 1202, 0, 21648755),
(116, 'Ge&iuml;nfrindel', 16, 246746, 120686, 136000, 74.00, 56.00, 119.00, 57.00, 55.00, 74.00, 34011, 0, 0, 482, 1410, 1000, 1698, 1080, 0, 21647315),
(119, 'Barbouza', 13, 216918, 78563, 91000, 47.50, 27.50, 42.50, 32.50, 88.50, 96.50, 30000, 0, 0, 32213, 1047, 692, 1122, 952, 0, 21648017),
(120, 'Aub&eacute;rion', 19, 249514, 175422, 190000, 30.50, 58.50, 110.50, 170.00, 91.00, 245.50, 31380, 0, 0, 404046, 535, 995, 530, 429, 0, 21647577),
(125, 'Lhito', 28, 225827, 384357, 406000, 233.00, 173.00, 236.00, 97.00, 43.00, 25.00, 41254, 0, 0, 664955, 792, 543, 604, 615, 0, 21648831),
(131, 'Dalan', 34, 145448, 572813, 595000, 178.00, 170.00, 79.00, 138.00, 128.00, 165.00, 50000, 0, 0, 6044, 756, 778, 685, 235, 0, 21648125),
(132, 'Malorus', 33, 279186, 530855, 561000, 81.50, 66.50, 153.50, 165.50, 189.50, 465.50, 50000, 0, 0, 3197785, 3909, 4850, 4439, 2701, 0, 21646871),
(133, 'Erios', 15, 175753, 114182, 120000, 67.50, 71.00, 99.00, 44.00, 29.00, 26.50, 35255, 0, 0, 1180291, 100, 161, 163, 11, 0, 21648195),
(136, 'Lirth Evendil', 18, 121329, 160938, 171000, 109.00, 54.00, 171.00, 39.00, 32.00, 21.00, 40000, 0, 0, 826635, 90, 0, 81, 83, 0, 21647342),
(138, 'Vils&auml;en', 16, 103602, 124910, 136000, 185.00, 176.00, 95.00, 16.00, 44.00, 23.00, 40000, 0, 0, 1404775, 245, 267, 382, 300, 0, 21646835),
(140, 'Ananta', 9, 93825, 39323, 45000, 55.50, 60.50, 38.00, 53.50, 44.50, 69.00, 14283, 0, 0, 4361963, 492, 521, 464, 533, 0, 21647093),
(143, 'Rinoacamui', 11, 109930, 63490, 66000, 85.00, 79.00, 31.50, 37.00, 29.00, 24.50, 36085, 0, 0, 1148006, 1278, 856, 1063, 839, 0, 21645695),
(144, 'Irkos', 21, 116978, 210863, 231000, 191.00, 162.50, 125.00, 108.50, 71.50, 35.50, 50000, 0, 0, 370573, 724, 932, 789, 791, 0, 21646869),
(145, 'Phyleas', 30, 290106, 462495, 465000, 232.00, 119.00, 255.00, 43.00, 82.00, 26.00, 30000, 0, 0, 308478, 215, 241, 155, 76, 0, 21648533),
(150, 'Kahzerya', 23, 117552, 259753, 276000, 222.00, 263.00, 127.00, 73.50, 99.00, 24.50, 30000, 0, 0, 803982, 552, 363, 311, 250, 0, 21648210),
(152, 'Hishnak', 13, 116133, 85298, 91000, 74.00, 73.00, 37.50, 68.50, 57.50, 67.50, 298, 0, 0, 3030601, 293, 43, 114, 342, 0, 21630039),
(156, 'Dyospiros', 24, 110654, 298883, 300000, 170.00, 184.00, 39.00, 101.00, 115.00, 60.00, 23022, 0, 0, 396451, 191, 255, 148, 568, 0, 21648171),
(161, 'Marr', 14, 126367, 97665, 105000, 145.00, 90.00, 64.00, 14.00, 55.00, 25.00, 3676, 0, 0, 1019992, 499, 651, 679, 520, 0, 21640895),
(162, 'Xelios', 10, 70651, 52577, 55000, 42.00, 26.00, 29.00, 11.00, 39.00, 58.00, 21894, 0, 0, 3803712, 474, 644, 258, 245, 0, 21616394),
(167, 'Klaasninas', 21, 105298, 220068, 231000, 136.50, 229.50, 32.50, 45.00, 101.00, 64.50, 163, 0, 0, 483902, 427, 281, 496, 125, 0, 21648370),
(168, 'Altharam', 17, 124276, 151179, 153000, 200.00, 182.00, 38.00, 43.50, 63.00, 22.50, 23502, 0, 0, 824252, 189, 260, 820, 311, 0, 21648755),
(170, 'Kharst', 18, 294555, 157260, 171000, 174.00, 170.00, 77.00, 122.00, 104.00, 18.00, 34349, 0, 0, 170980, 1801, 1353, 986, 1622, 0, 21643705),
(171, 'Draps', 17, 102791, 143562, 153000, 83.00, 91.00, 129.00, 57.00, 80.00, 36.00, 48174, 0, 0, 3687224, 96, 98, 153, 520, 0, 21628243),
(173, 'Hulricht', 26, 192144, 337511, 351000, 175.00, 127.00, 132.00, 154.00, 91.00, 64.00, 12580, 0, 0, 228385, 577, 724, 203, 748, 0, 21648776),
(181, 'Fourbinas', 19, 109732, 187104, 190000, 54.50, 31.00, 44.00, 43.50, 191.00, 297.00, 3570, 0, 0, 773097, 186, 215, 666, 671, 0, 21648060),
(183, 'Axeolu', 14, 60751, 95982, 105000, 81.00, 30.00, 35.00, 15.00, 55.00, 74.00, 30000, 0, 0, 191243, 85, 111, 97, 132, 0, 21629788),
(187, 'Boubi', 19, 216130, 182532, 190000, 37.50, 54.50, 88.50, 71.00, 63.00, 143.50, 43283, 0, 0, 156838, 114, 92, 138, 168, 0, 21645795),
(189, 'Rmanor', 14, 62967, 100965, 105000, 52.00, 61.00, 36.00, 105.00, 49.00, 96.00, 40000, 0, 0, 1066878, 254, 220, 261, 347, 0, 21635873);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(192, 'Orium', 25, 287051, 314799, 325000, 220.00, 181.00, 238.00, 215.00, 54.50, 25.50, 2994, 0, 0, 1733534, 6575, 5650, 4955, 4929, 0, 21648795),
(197, 'Leslie', 16, 91631, 121077, 136000, 56.00, 33.00, 91.00, 50.00, 24.00, 31.00, 12335, 0, 0, 116276, 106, 25, 37, 78, 0, 21649505),
(199, 'Benihime', 28, 299183, 405064, 406000, 45.00, 26.00, 48.00, 109.00, 205.00, 288.00, 7891, 0, 0, 3181490, 926, 1190, 617, 2369, 0, 21648602),
(202, 'Zarode', 11, 50947, 58315, 66000, 79.00, 46.50, 31.00, 16.50, 29.50, 13.50, 30000, 0, 0, 1783932, 295, 339, 234, 122, 0, 21611081),
(204, 'Ovelia', 16, 135973, 127458, 136000, 135.00, 121.00, 92.00, 15.00, 67.00, 16.00, 329, 0, 0, 1199597, 210, 225, 104, 168, 0, 21647888),
(217, 'Tylert', 19, 170305, 173428, 190000, 105.50, 50.00, 110.00, 48.00, 28.00, 20.50, 23290, 0, 0, 274829, 129, 51, 271, 130, 0, 21648685),
(218, 'Alumdil', 21, 259419, 220873, 231000, 52.50, 33.00, 84.00, 44.50, 126.00, 174.00, 2178, 0, 0, 329201, 312, 133, 300, 33, 0, 21644589),
(219, 'Anair&euml;', 35, 256700, 629827, 630000, 274.00, 136.00, 361.00, 188.33, 59.00, 47.00, 14410, 0, 0, 1862684, 775, 217, 266, 552, 0, 21648783),
(225, 'Ther`glat', 17, 94679, 151328, 153000, 89.50, 62.00, 31.00, 46.50, 88.50, 93.50, 50000, 0, 0, 2208196, 341, 133, 357, 148, 0, 21628588),
(229, 'Messalith', 21, 227657, 221970, 231000, 128.00, 57.50, 148.50, 83.00, 126.50, 226.50, 41669, 0, 0, 525929, 344, 216, 787, 1134, 0, 21644535),
(231, 'Galigonidd', 13, 246767, 89893, 91000, 94.00, 49.00, 100.00, 47.00, 41.00, 37.00, 11808, 0, 0, 2510, 1415, 936, 1356, 1201, 0, 21646646),
(232, 'Matkias', 16, 142388, 130564, 136000, 74.00, 85.00, 163.00, 40.00, 75.00, 47.00, 38300, 0, 0, 1678303, 563, 532, 848, 809, 0, 21645951),
(234, 'Poupou', 16, 107617, 123081, 136000, 76.00, 33.00, 114.00, 18.00, 92.00, 166.00, 6185, 0, 0, 3924075, 350, 70, 203, 73, 0, 21646978),
(235, 'Dartoil', 8, 39973, 32794, 36000, 39.00, 23.00, 52.00, 28.00, 22.00, 21.00, 30000, 0, 0, 2777302, 411, 657, 483, 220, 0, 21638196),
(236, 'Tefeiri', 15, 124765, 116116, 120000, 86.00, 102.00, 98.00, 29.50, 29.00, 54.50, 71, 0, 0, 72622, 443, 358, 365, 399, 0, 21648854),
(239, 'Luna', 13, 168230, 85331, 91000, 123.00, 44.50, 34.50, 33.00, 82.50, 108.50, 12714, 0, 0, 38, 1494, 1048, 1019, 1188, 0, 21645380),
(240, 'Kullah', 13, 107308, 86950, 91000, 32.50, 25.00, 34.00, 31.50, 61.00, 113.00, 8500, 0, 0, 476812, 534, 799, 820, 11, 0, 21648143),
(241, 'Nadras', 15, 138956, 114895, 120000, 30.50, 29.50, 28.00, 71.00, 45.00, 170.00, 4266, 0, 0, 5216276, 231, 339, 208, 112, 0, 21645297),
(242, 'Thelv', 17, 104484, 151891, 153000, 31.50, 16.50, 50.00, 76.00, 130.00, 273.00, 50000, 0, 0, 3705920, 585, 449, 914, 403, 0, 21651610),
(252, 'Fina Nargel', 14, 62352, 91368, 105000, 87.00, 44.00, 23.00, 107.00, 69.00, 37.00, 40000, 0, 0, 5654267, 787, 933, 643, 845, 0, 21561840),
(256, 'Husam', 16, 135302, 125765, 136000, 53.00, 16.00, 38.00, 32.00, 71.00, 148.00, 36877, 0, 0, 294, 381, 377, 374, 168, 0, 21648574),
(258, 'Febus', 20, 119408, 206655, 210000, 108.00, 72.00, 131.00, 58.00, 118.00, 153.00, 7855, 0, 0, 1292650, 175, 152, 57, 468, 0, 21648775),
(267, 'Dacapo', 12, 72152, 69732, 78000, 43.00, 43.00, 47.00, 41.00, 56.00, 40.00, 8, 0, 0, 18949, 840, 738, 384, 1115, 0, 21648889),
(270, 'Desmondis', 16, 136148, 135003, 136000, 41.00, 47.00, 25.00, 50.00, 56.00, 75.00, 2272, 0, 0, 75900, 358, 512, 502, 243, 0, 21648507),
(272, 'Na&euml;lki', 11, 51369, 60323, 66000, 92.50, 44.00, 72.00, 24.00, 20.00, 16.50, 20000, 0, 0, 2549513, 141, 24, 124, 0, 0, 21606961),
(273, 'Zagior', 17, 140832, 145475, 153000, 76.50, 56.00, 45.00, 39.50, 74.50, 88.50, 33828, 0, 0, 1071543, 196, 221, 240, 183, 0, 21648564),
(278, 'Zahel', 21, 163100, 230855, 231000, 29.50, 78.00, 68.00, 101.00, 118.50, 103.50, 28964, 0, 0, 769547, 278, 919, 85, 561, 0, 21648845),
(280, 'Rufbumpa', 16, 135072, 124030, 136000, 104.00, 50.00, 97.00, 31.00, 25.00, 31.00, 8, 0, 0, 3720234, 168, 179, 267, 218, 0, 21648818),
(281, 'Estayr', 15, 101228, 116538, 120000, 58.50, 23.50, 44.00, 66.00, 58.00, 100.00, 50000, 0, 0, 6713620, 40, 340, 76, 336, 0, 21634340),
(282, 'Kalista', 18, 137529, 160421, 171000, 135.00, 144.00, 141.00, 85.00, 28.00, 38.00, 43984, 0, 0, 653678, 1403, 491, 619, 682, 0, 21648065),
(283, 'Gelthasar Belt', 31, 131110, 487067, 496000, 221.00, 258.00, 158.00, 137.83, 128.00, 38.50, 50000, 0, 0, 57274, 650, 126, 463, 153, 0, 21642442),
(284, 'Tulkas', 27, 141447, 352414, 378000, 118.00, 120.00, 271.00, 172.00, 90.00, 66.00, 50000, 0, 0, 628735, 712, 859, 526, 689, 0, 21645616),
(297, 'Bartor', 16, 116017, 132589, 136000, 52.00, 34.00, 121.00, 63.00, 21.00, 27.00, 50000, 0, 0, 1158188, 179, 0, 49, 0, 0, 21646039),
(299, 'Almanarre', 18, 84266, 168744, 171000, 152.00, 98.00, 119.00, 30.00, 93.00, 18.00, 25950, 0, 0, 21981, 121, 507, 255, 223, 0, 21647942),
(300, 'Shadark', 15, 159186, 108264, 120000, 121.00, 42.00, 174.00, 65.00, 34.00, 37.00, 0, 0, 0, 1331826, 1219, 804, 1097, 1200, 0, 21648273),
(301, 'Rausten', 14, 45747, 95470, 105000, 38.00, 25.00, 36.00, 41.00, 58.00, 95.00, 30000, 0, 0, 2183377, 770, 209, 321, 30, 0, 21612211),
(302, 'L&eacute;otar', 15, 126893, 115301, 120000, 93.00, 89.00, 44.50, 51.00, 46.00, 23.50, 37772, 0, 0, 981045, 61, 124, 266, 361, 0, 21647894),
(303, 'Gauerd&ocirc;me', 22, 149176, 248801, 253000, 75.00, 48.00, 81.00, 42.00, 84.00, 147.00, 5029, 0, 0, 525434, 1172, 1262, 1614, 1142, 0, 21647398),
(314, 'Eleanora', 17, 110408, 146031, 153000, 54.50, 22.50, 41.50, 33.50, 58.50, 146.50, 9970, 0, 0, 1206, 165, 17, 139, 54, 0, 21646593),
(321, 'Vannams', 18, 105851, 154710, 171000, 112.00, 81.00, 71.00, 117.00, 77.00, 54.00, 15563, 0, 0, 6909, 121, 301, 217, 58, 0, 21647076),
(328, 'Pyaray', 36, 340311, 659116, 666000, 217.00, 292.00, 194.00, 145.33, 184.00, 99.00, 50000, 0, 0, 627335, 1011, 1184, 879, 1172, 0, 21646894),
(333, 'Cassandre', 23, 101027, 265434, 276000, 137.00, 130.00, 181.00, 112.00, 53.00, 35.00, 28869, 0, 0, 207296, 518, 684, 464, 380, 0, 21646982),
(345, 'Torme Morselame', 16, 173148, 124323, 136000, 111.00, 97.00, 66.00, 15.00, 48.00, 16.00, 11, 0, 0, 129820, 283, 302, 361, 384, 0, 21648570),
(349, 'Elanor', 20, 222241, 193482, 210000, 147.00, 151.00, 98.00, 139.00, 142.00, 51.00, 38815, 0, 0, 4395095, 1797, 1546, 1712, 1533, 0, 21647728),
(385, 'Aratos', 21, 295850, 222977, 231000, 41.50, 56.50, 80.00, 113.00, 104.00, 135.00, 5207, 0, 0, 191342, 964, 118, 236, 121, 0, 21648021),
(386, 'Yelderick', 28, 369924, 405300, 406000, 187.00, 191.00, 65.00, 127.00, 133.00, 68.00, 50000, 0, 0, 243835, 605, 454, 541, 622, 0, 21648136),
(407, 'Archanos', 27, 275514, 361470, 378000, 179.00, 172.00, 110.00, 100.00, 128.00, 63.00, 13601, 0, 0, 708017, 937, 315, 284, 300, 0, 21642833),
(408, 'Leorod', 15, 140355, 105733, 120000, 103.00, 120.00, 69.00, 33.50, 43.00, 35.50, 34664, 0, 0, 296185, 1686, 1664, 1219, 1612, 0, 21648181),
(410, 'Birgenn', 18, 89057, 165216, 171000, 167.00, 94.00, 91.00, 95.00, 134.00, 63.00, 40000, 0, 0, 3071627, 214, 278, 385, 354, 0, 21646604),
(413, 'Tetrahyd', 25, 152077, 315189, 325000, 46.50, 95.50, 83.50, 72.00, 187.00, 258.50, 21690, 0, 0, 1794633, 804, 427, 686, 403, 0, 21648733),
(418, 'Avister', 11, 156469, 65203, 66000, 54.00, 26.00, 69.00, 40.00, 31.00, 25.00, 40000, 0, 0, 822411, 1239, 1528, 1781, 1763, 0, 21645563);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(423, 'Abert', 13, 111618, 90750, 91000, 58.50, 40.50, 38.50, 28.50, 87.50, 118.50, 319, 0, 0, 473633, 1008, 940, 555, 1270, 0, 21657363),
(424, 'Draon', 13, 92384, 82384, 91000, 46.00, 43.00, 46.00, 79.00, 36.50, 25.50, 40000, 0, 0, 2101056, 479, 34, 48, 188, 0, 21634159),
(427, 'Koali', 11, 150432, 60828, 66000, 48.50, 26.00, 31.00, 32.50, 52.00, 85.00, 404, 0, 0, 9853235, 205, 114, 119, 46, 0, 21648404),
(439, 'Willi', 7, 141343, 25529, 28000, 60.00, 50.00, 22.00, 10.50, 19.00, 13.50, 30000, 0, 0, 7283171, 784, 1083, 1304, 904, 0, 21632885),
(446, 'Anadyomene', 19, 93623, 185097, 190000, 112.50, 78.00, 239.00, 41.00, 30.00, 28.50, 19617, 0, 0, 81015, 357, 242, 335, 475, 0, 21647444),
(463, 'Arnaud', 15, 133944, 117992, 120000, 71.50, 52.00, 84.00, 30.00, 25.00, 21.50, 46400, 0, 0, 92478, 111, 144, 40, 187, 0, 21640645),
(465, 'Dachinos', 12, 140900, 75815, 78000, 101.00, 42.00, 33.00, 60.00, 75.00, 83.00, 31044, 0, 0, 493874, 326, 350, 648, 532, 0, 21645138),
(478, 'Soymur', 15, 124939, 105250, 120000, 78.00, 56.50, 102.50, 41.00, 46.50, 86.50, 40000, 0, 0, 885227, 341, 248, 92, 64, 0, 21642846),
(481, 'Arcelane', 12, 118567, 67644, 78000, 57.00, 32.00, 80.00, 27.00, 21.00, 17.00, 30000, 0, 0, 6568, 131, 11, 61, 212, 0, 21650909),
(484, 'Liluth', 18, 132278, 160898, 171000, 202.00, 174.00, 153.00, 27.00, 75.00, 21.00, 50000, 0, 0, 2279036, 607, 554, 499, 361, 0, 21644735),
(491, 'Ankharon', 27, 204082, 377564, 378000, 43.50, 35.50, 35.00, 172.00, 156.00, 210.00, 17134, 0, 0, 627840, 1658, 1368, 1714, 1032, 0, 21648389),
(533, 'Roscoat', 11, 67467, 61376, 66000, 128.00, 91.50, 51.00, 25.50, 66.50, 29.50, 30782, 0, 0, 2524182, 959, 660, 739, 1113, 0, 21635158),
(550, 'Montheo', 12, 117451, 66323, 78000, 33.00, 40.00, 71.00, 34.00, 53.00, 48.00, 40000, 0, 0, 9715258, 928, 899, 1012, 804, 0, 21610975),
(555, 'Kaerrawen', 14, 98570, 91039, 105000, 37.00, 34.00, 37.00, 44.00, 49.00, 59.00, 663, 0, 0, 561100, 129, 132, 15, 5, 0, 21648141),
(566, 'Bamdinas', 18, 138997, 163906, 171000, 63.00, 33.00, 40.00, 84.00, 147.00, 251.00, 41545, 0, 0, 831233, 248, 223, 67, 433, 0, 21646672),
(570, 'Nell', 11, 129286, 60568, 66000, 61.00, 42.00, 33.00, 50.00, 32.00, 35.00, 10683, 0, 0, 938041, 109, 275, 188, 185, 0, 21646623),
(572, 'Zathryel', 16, 147364, 120769, 136000, 96.00, 98.00, 62.00, 89.00, 76.00, 47.00, 2142, 0, 0, 132358, 291, 263, 569, 328, 0, 21648764),
(578, 'Lortigan', 11, 103418, 60606, 66000, 22.50, 29.50, 60.50, 58.00, 42.00, 111.50, 40000, 0, 0, 6149028, 133, 191, 10, 36, 0, 21633460),
(607, 'Konrad', 13, 65399, 83573, 91000, 31.50, 59.00, 28.00, 66.50, 79.50, 74.50, 30000, 0, 0, 1010596, 383, 574, 382, 450, 0, 21640374),
(624, 'Filemon', 13, 46081, 83674, 91000, 66.50, 80.50, 60.00, 61.50, 49.50, 54.00, 40000, 0, 0, 2735919, 109, 136, 352, 251, 0, 21566942),
(637, 'Mathaos', 16, 181866, 122197, 136000, 122.00, 130.00, 141.00, 42.00, 28.00, 19.00, 34393, 0, 0, 203846, 1016, 949, 1082, 1129, 0, 21648610),
(640, 'Mattai', 14, 117950, 103261, 105000, 83.00, 40.00, 51.00, 44.00, 31.00, 94.00, 4645, 0, 0, 80065, 153, 117, 145, 62, 0, 21646260),
(672, 'Jeffrey', 19, 213239, 171011, 190000, 132.50, 90.00, 140.00, 129.00, 39.00, 21.50, 30000, 0, 0, 146479, 469, 307, 238, 216, 0, 21643361),
(712, 'Amendel Genfaluin', 10, 46343, 54415, 55000, 61.00, 74.00, 39.00, 18.00, 29.00, 16.00, 40000, 0, 0, 2724320, 75, 139, 28, 80, 0, 21612207),
(787, 'Dranthen', 9, 139568, 40811, 45000, 39.50, 35.00, 49.00, 15.00, 37.00, 21.50, 30000, 0, 0, 3669508, 956, 847, 741, 630, 0, 21636014),
(815, 'Mello', 11, 91991, 62946, 66000, 142.00, 110.50, 44.00, 51.50, 52.50, 17.50, 40000, 0, 0, 835554, 420, 641, 863, 319, 0, 21632721),
(820, 'Pirelias', 16, 104258, 121986, 136000, 98.00, 26.00, 117.00, 40.00, 61.00, 35.00, 40000, 0, 0, 846182, 385, 168, 0, 172, 0, 21633977),
(835, 'Axel', 10, 147194, 52000, 55000, 62.00, 37.00, 54.00, 52.00, 28.00, 28.00, 40000, 0, 0, 818348, 955, 960, 747, 1168, 0, 21639979),
(848, 'Arkatros', 25, 429031, 318439, 325000, 143.00, 207.00, 55.00, 104.00, 74.00, 59.00, 36655, 0, 0, 969759, 217, 245, 288, 202, 0, 21642746),
(868, 'Arimane', 14, 137210, 100688, 105000, 22.00, 30.00, 37.00, 66.00, 42.00, 121.00, 4635, 0, 0, 1434646, 1310, 790, 694, 1000, 0, 21645781),
(870, 'Xandre', 11, 164179, 65156, 66000, 83.00, 44.50, 39.00, 12.50, 28.50, 15.50, 40000, 0, 0, 5019077, 3, 121, 51, 210, 0, 21647000),
(879, 'Vezk', 20, 84126, 193967, 210000, 184.00, 180.00, 98.00, 54.00, 50.00, 22.00, 50000, 0, 0, 468090, 43, 36, 81, 101, 0, 21644106),
(891, 'Hakam Kukur', 14, 48798, 94108, 105000, 99.00, 79.00, 50.00, 14.00, 43.00, 16.00, 30000, 0, 0, 3208015, 175, 94, 130, 196, 0, 21610611),
(892, 'Rek', 19, 101334, 182987, 190000, 70.00, 58.00, 23.50, 95.50, 183.00, 160.00, 50000, 0, 0, 3905408, 347, 106, 229, 150, 0, 21641109),
(911, 'Enephia', 14, 112868, 98873, 105000, 25.00, 42.00, 25.00, 49.00, 59.00, 117.00, 23703, 0, 0, 393905, 165, 230, 84, 37, 0, 21648513),
(917, 'Nem&egrave;s', 24, 182410, 278749, 300000, 86.00, 77.00, 97.00, 163.33, 96.00, 129.00, 37251, 0, 0, 167424, 187, 220, 170, 58, 0, 21642186),
(922, 'Malia', 12, 81193, 75022, 78000, 25.00, 68.00, 29.00, 70.00, 73.00, 66.00, 40000, 0, 0, 2157757, 466, 759, 676, 638, 0, 21647837),
(928, 'Vlad Consir', 11, 69454, 56169, 66000, 56.00, 30.00, 108.00, 42.00, 40.00, 29.00, 40000, 0, 0, 3566266, 401, 184, 0, 348, 0, 21592160),
(930, 'Zaseo', 18, 140351, 159854, 171000, 165.00, 121.00, 79.00, 121.00, 77.00, 53.00, 13290, 0, 0, 480286, 269, 726, 608, 315, 0, 21647431),
(933, 'Zedounet', 13, 133234, 90568, 91000, 23.50, 93.00, 23.00, 54.00, 86.50, 16.50, 12389, 0, 0, 6633, 765, 372, 656, 815, 0, 21648558),
(946, 'Ceccua', 7, 104557, 27345, 28000, 27.50, 51.00, 16.00, 31.00, 45.50, 37.50, 6800, 0, 0, 1291700, 246, 274, 450, 159, 0, 21641859),
(948, 'Mosoulo', 12, 129837, 67164, 78000, 75.00, 53.00, 141.00, 27.00, 41.00, 18.00, 34639, 0, 0, 4465346, 588, 733, 757, 786, 0, 21643066),
(988, 'Goupille', 7, 86435, 21631, 28000, 40.50, 25.00, 52.00, 32.00, 17.00, 15.50, 20000, 0, 0, 6786573, 235, 708, 459, 536, 0, 21621250),
(989, 'Salfalar', 17, 109876, 143480, 153000, 79.50, 115.50, 53.50, 35.00, 86.00, 91.50, 18686, 0, 0, 77081, 402, 568, 341, 245, 0, 21647820),
(992, 'Aedric', 10, 62651, 47880, 55000, 141.00, 40.00, 70.00, 12.00, 27.00, 14.00, 37000, 0, 0, 931989, 118, 116, 161, 180, 0, 21641573),
(1010, 'Herel', 12, 143439, 76899, 78000, 98.00, 73.00, 21.00, 44.00, 30.00, 19.00, 305, 0, 0, 356575, 71, 342, 275, 371, 0, 21648535),
(1014, 'Ascheritto', 9, 107562, 40001, 45000, 20.50, 23.00, 17.00, 41.50, 38.00, 70.00, 30000, 0, 0, 5791330, 413, 368, 382, 549, 0, 21608442),
(1016, 'Eleana', 14, 157960, 91755, 105000, 76.00, 49.00, 68.00, 31.00, 31.00, 81.00, 2584, 0, 0, 912231, 280, 113, 158, 74, 0, 21648765),
(1018, 'Codringher', 6, 70162, 19929, 21000, 51.00, 52.00, 13.00, 45.00, 35.00, 24.00, 30000, 0, 0, 6359692, 759, 644, 1199, 655, 0, 21615473),
(1044, 'E&auml;rthan', 5, 66241, 12550, 15000, 60.00, 35.50, 17.00, 14.50, 19.50, 14.50, 20000, 0, 0, 9968245, 450, 593, 77, 430, 0, 21606816),
(1048, 'Najya', 17, 93300, 141810, 153000, 110.50, 116.00, 86.00, 51.50, 93.50, 109.50, 50000, 0, 0, 411228, 261, 249, 274, 307, 0, 21646322);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1057, 'X&eacute;nox', 13, 124027, 83827, 91000, 77.00, 72.00, 101.00, 39.00, 32.00, 39.00, 24115, 0, 0, 415927, 222, 387, 348, 202, 0, 21645621),
(1061, 'Kopan', 7, 77140, 23640, 28000, 45.00, 37.00, 24.50, 29.00, 19.00, 17.50, 28712, 0, 0, 9808162, 581, 629, 421, 613, 0, 21624286),
(1067, 'Daneel', 20, 115316, 195757, 210000, 125.00, 59.00, 127.00, 119.00, 61.00, 33.00, 70, 0, 0, 1512587, 1386, 1183, 1579, 1190, 0, 21645765),
(1071, 'Sonim', 1, 4931, 70, 1000, 19.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 700919, 130, 37, 126, 83, 0, 21579371),
(1115, 'Galaway', 11, 104943, 57588, 66000, 52.50, 35.00, 92.00, 23.00, 24.00, 19.50, 364, 0, 0, 788469, 79, 65, 99, 58, 0, 21646109),
(1120, 'Ga&euml;llya', 13, 208598, 82297, 91000, 38.00, 35.00, 54.50, 49.50, 34.00, 63.00, 33709, 0, 0, 6780, 166, 0, 43, 0, 0, 21648554),
(1122, 'Del&eacute;nia', 17, 131882, 148774, 153000, 91.00, 111.00, 7.50, 57.50, 61.00, 83.00, 41677, 0, 0, 313039, 1462, 973, 482, 1202, 0, 21647077),
(1139, 'Drekal', 18, 155292, 154260, 171000, 130.00, 197.00, 14.00, 30.00, 160.00, 69.00, 40000, 0, 0, 705206, 589, 331, 401, 281, 0, 21652435),
(1141, 'Renard', 8, 35062, 31520, 36000, 24.00, 25.00, 25.00, 26.00, 32.00, 47.00, 30000, 0, 0, 1068111, 68, 115, 60, 11, 0, 21622730),
(1145, 'DagBar', 16, 174109, 130334, 136000, 22.00, 76.00, 27.00, 55.00, 104.00, 132.00, 50000, 0, 0, 1215924, 322, 298, 318, 629, 0, 21670360),
(1156, 'Yzeute', 12, 312983, 77531, 78000, 48.00, 33.00, 70.00, 40.00, 24.00, 18.00, 2478, 0, 0, 657, 100, 12, 4, 1, 0, 21650395),
(1164, 'Mayemaye', 12, 105273, 68902, 78000, 78.00, 59.00, 20.00, 58.00, 40.00, 34.00, 40000, 0, 0, 9649544, 125, 5, 13, 90, 0, 21617348),
(1287, 'Nragax', 16, 175116, 120588, 136000, 209.00, 139.00, 206.00, 103.00, 25.00, 19.00, 30000, 0, 0, 3387385, 4967, 4621, 4264, 4027, 0, 21646657),
(1294, 'Kallikantzaros', 11, 97155, 64241, 66000, 93.00, 59.00, 126.00, 54.00, 26.00, 24.00, 40000, 0, 0, 9376599, 199, 316, 184, 276, 0, 21619633),
(1299, 'Shinna', 5, 23095, 14775, 15000, 16.50, 16.00, 22.00, 20.50, 25.00, 43.00, 10000, 0, 0, 427352, 85, 80, 89, 36, 0, 21634279),
(1301, 'Dexert', 9, 82733, 43719, 45000, 50.00, 34.00, 23.50, 39.50, 20.00, 61.00, 23581, 0, 0, 8125096, 259, 263, 329, 94, 0, 21629469),
(1305, 'Luisoros', 8, 82248, 34442, 36000, 53.00, 57.00, 29.00, 15.00, 18.00, 21.00, 20000, 0, 0, 5766693, 659, 758, 870, 791, 0, 21631396),
(1308, 'Reya', 19, 244055, 172695, 190000, 73.00, 34.50, 83.50, 92.00, 82.50, 198.50, 50000, 0, 0, 182339, 417, 382, 540, 157, 0, 21648045),
(1311, 'Ambre', 11, 55524, 58947, 66000, 74.00, 55.00, 76.00, 39.00, 21.00, 23.00, 40000, 0, 0, 865413, 206, 23, 324, 527, 0, 21625621),
(1314, 'Lunnar', 5, 40378, 11268, 15000, 43.00, 31.00, 19.50, 22.00, 17.00, 14.50, 10000, 0, 0, 547637, 155, 156, 155, 99, 0, 21633922),
(1340, 'X&yuml;ixiant’h ', 9, 127182, 43413, 45000, 49.00, 29.00, 84.00, 34.00, 31.00, 29.00, 30000, 0, 0, 5815633, 554, 904, 682, 754, 0, 21624504),
(1403, 'Soreclis', 11, 162286, 63954, 66000, 85.00, 59.00, 35.00, 37.50, 23.00, 25.50, 38127, 0, 0, 22467, 439, 216, 322, 326, 0, 21648585),
(1408, 'Lucas', 6, 61424, 20904, 21000, 28.00, 32.00, 44.00, 26.00, 26.00, 42.00, 20000, 0, 0, 4901413, 625, 273, 369, 670, 0, 21623968),
(1409, 'Esteban', 9, 58651, 40901, 45000, 61.00, -2.00, 88.00, 38.00, -3.00, 20.00, 20000, 0, 0, 6129803, 231, 110, 106, 123, 0, 21648128),
(1410, 'Fico', 7, 46193, 22588, 28000, 21.50, 19.00, 19.00, 22.50, 43.00, 134.00, 30000, 0, 0, 3499264, 0, 0, 9, 19, 0, 21606158),
(1411, 'Karyon', 13, 153529, 88774, 91000, 30.50, 38.50, 83.00, 132.00, 97.00, 119.00, 2061, 0, 0, 1332579, 1007, 1175, 1035, 619, 0, 21648892),
(1412, 'Fouchier', 13, 246118, 83777, 91000, 103.50, 85.00, 52.00, 79.50, 57.50, 73.50, 27176, 0, 0, 12276, 822, 299, 235, 406, 0, 21648348),
(1414, 'Criton', 14, 171339, 94375, 105000, 108.00, 128.00, 33.00, 33.00, 56.00, 15.00, 29418, 0, 0, 39008, 217, 460, 223, 200, 0, 21646668),
(1418, 'Basl', 14, 4523366, 92056, 105000, 42.00, 57.00, 76.00, 149.00, 41.00, 35.00, 763, 0, 0, 1092515, 1532, 1011, 1606, 973, 0, 21606494),
(1457, 'Helagnus', 11, 102325, 58450, 66000, 62.00, 28.50, 28.50, 23.00, 30.50, 87.50, 7533, 0, 0, 1814762, 1494, 1009, 1192, 1269, 0, 21629973),
(1458, 'Yodine', 15, 104738, 115074, 120000, 66.50, 82.00, 15.00, 48.00, 69.50, 22.50, 50000, 0, 0, 1257328, 266, 17, 172, 220, 0, 21633624),
(1460, 'Alec', 7, 150135, 23658, 28000, 28.50, 29.00, 17.00, 38.50, 41.00, 98.00, 30000, 0, 0, 266210, 260, 406, 320, 410, 0, 21645384),
(1463, 'Watmatus', 5, 46486, 13232, 15000, 31.00, 15.00, 39.00, 27.00, 14.00, 17.00, 20000, 0, 0, 1709396, 237, 296, 279, 150, 0, 21628430),
(1469, 'Elm', 26, 310806, 332362, 351000, 143.00, 93.00, 201.00, 147.33, 93.00, 138.00, 18817, 0, 0, 1977358, 536, 1106, 431, 104, 0, 21648791),
(1470, 'Celithrand', 6, 134730, 15711, 21000, 16.00, 14.00, 23.00, 22.00, 34.00, 77.00, 30000, 0, 0, 3836182, 228, 217, 267, 289, 0, 21654469),
(1475, 'Batterusero', 3, 21703, 4328, 6000, 27.50, 16.00, 31.00, 16.00, 13.00, 13.50, 20000, 0, 0, 1980115, 165, 122, 125, 120, 0, 21625613),
(1477, 'La Sangre', 5, 55024, 12121, 15000, 33.00, 17.50, 19.50, 15.00, 19.50, 40.50, 20000, 0, 0, 4492599, 157, 372, 106, 211, 0, 21633241),
(1480, 'Alaesir', 12, 179558, 74307, 78000, 80.00, 67.00, 54.00, 16.00, 34.00, 14.00, 29501, 0, 0, 751584, 222, 148, 170, 83, 0, 21644471),
(1492, 'Osterate', 10, 105884, 53943, 55000, 91.00, 89.00, 42.00, 39.00, 38.00, 13.00, 325, 0, 0, 213131, 427, 570, 455, 667, 0, 21645696),
(1493, 'Safira', 8, 104814, 31996, 36000, 34.00, 14.00, 27.00, 24.00, 42.00, 100.00, 30000, 0, 0, 886443, 368, 663, 125, 133, 0, 21623124),
(1499, 'Toroc', 10, 117031, 52617, 55000, 52.00, 17.00, 32.00, 12.00, 45.00, 79.00, 253, 0, 0, 1593442, 530, 640, 545, 488, 0, 21648810),
(1512, 'Keldaran', 12, 94891, 67464, 78000, 41.00, 40.00, 66.00, 48.00, 37.00, 36.00, 30000, 0, 0, 3615203, 152, 112, 165, 211, 0, 21648761),
(1519, 'Tirandilis', 15, 150454, 105919, 120000, 64.50, 39.00, 94.00, 30.00, 24.00, 18.50, 30000, 0, 0, 1353678, 421, 566, 250, 379, 0, 21647104),
(1522, 'Durshak le Borgne', 13, 65265, 86841, 91000, 139.00, 115.50, 106.00, 11.50, 33.50, 19.50, 40000, 0, 0, 1979384, 177, 214, 19, 77, 0, 21647013),
(1528, 'Saya', 9, 80677, 37634, 45000, 127.00, 79.00, 72.50, 30.00, 21.00, 16.50, 18222, 0, 0, 275203, 354, 19, 142, 118, 0, 21645595),
(1538, 'Mikijonie', 6, 48934, 18135, 21000, 24.00, 21.00, 23.00, 23.00, 26.00, 39.00, 30000, 0, 0, 2998915, 251, 147, 176, 45, 0, 21608364),
(1539, 'Kaiiros', 16, 140304, 133441, 136000, 52.00, 38.00, 51.00, 58.00, 65.00, 207.00, 1754, 0, 0, 213159, 696, 368, 589, 233, 0, 21648739),
(1548, 'Iorfel', 11, 157262, 59306, 66000, 49.00, 31.00, 80.00, 30.00, 26.00, 24.00, 40000, 0, 0, 1897149, 413, 281, 323, 588, 0, 21642232),
(1549, 'Caym', 15, 189062, 107414, 120000, 87.50, 78.00, 135.00, 43.00, 45.00, 19.50, 2025, 0, 0, 2138544, 516, 404, 227, 707, 0, 21648746),
(1550, 'N&auml;ta&euml;l', 8, 73724, 31736, 36000, 97.00, 84.00, 47.00, 16.00, 20.00, 16.00, 5768, 0, 0, 205798, 412, 176, 476, 269, 0, 21647935),
(1559, 'Daringel', 3, 61954, 3631, 6000, 23.50, 13.50, 15.50, 24.50, 17.50, 25.50, 10000, 0, 0, 4629215, 548, 273, 697, 327, 0, 21622548);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1560, 'Ifingwell', 5, 85114, 13245, 15000, 30.00, 13.00, 45.00, 18.00, 20.00, 18.00, 20000, 0, 0, 537818, 150, 160, 68, 67, 0, 21603457),
(1562, 'Lyraprime', 11, 260862, 55640, 66000, 62.00, 63.00, 19.00, 67.00, 35.00, 47.00, 164, 0, 0, 80040, 357, 188, 105, 255, 0, 21642783),
(1574, 'Na&euml;lys', 14, 106137, 92112, 105000, 117.00, 44.00, 134.00, 44.00, 36.00, 26.00, 24592, 0, 0, 741892, 233, 71, 280, 219, 0, 21648803),
(1578, 'Nunglhur', 4, 16098, 6172, 10000, 27.00, 15.00, 33.00, 32.00, 15.00, 23.00, 20000, 0, 0, 765586, 58, 166, 77, 129, 0, 21603830),
(1579, 'Nixd', 1, 3134, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 59656, 50, 50, 50, 50, 0, 21586620),
(1583, 'Rhal', 12, 197433, 76320, 78000, 49.00, 59.00, 22.00, 30.00, 46.00, 40.00, 10, 0, 0, 25613, 248, 139, 116, 55, 0, 21646682),
(1611, 'Arthurik', 10, 326088, 50714, 55000, 97.00, 53.00, 27.00, 24.00, 30.00, 15.00, 26222, 0, 0, 104555, 127, 123, 206, 211, 0, 21640412),
(1614, 'Oamba', 6, 37812, 16904, 21000, 53.00, 38.00, 21.00, 11.00, 22.00, 12.00, 20000, 0, 0, 3161106, 115, 143, 110, 93, 0, 21605552),
(1622, 'Kalina', 9, 2224217, 40116, 45000, 58.00, 29.00, 85.00, 27.00, 28.00, 22.00, 2071, 0, 0, 101626, 654, 169, 99, 674, 0, 21646116),
(1623, 'Brutus', 7, 95480, 25750, 28000, 69.00, 46.00, 23.00, 10.50, 23.00, 16.50, 8129, 0, 0, 391, 616, 480, 780, 668, 0, 21648145),
(1627, 'Silayerr', 12, 215797, 66486, 78000, 43.00, 38.00, 44.00, 37.00, 38.00, 36.00, 30000, 0, 0, 376676, 304, 114, 137, 486, 0, 21648323),
(1640, 'Maria', 14, 192287, 92671, 105000, 140.00, 166.00, 86.00, 25.00, 60.00, 19.00, 26342, 0, 0, 2, 283, 464, 238, 408, 0, 21648581),
(1645, 'Lagos', 7, 94274, 27258, 28000, 58.50, 43.00, 67.00, 22.00, 27.00, 18.50, 20000, 0, 0, 2260850, 625, 529, 434, 423, 0, 21635550),
(1651, 'Ramiran', 6, 116794, 18723, 21000, 32.00, 17.00, 23.00, 17.00, 19.00, 45.00, 19395, 0, 0, 69, 149, 65, 237, 97, 0, 21625296),
(1653, 'Damian', 5, 136117, 13093, 15000, 60.00, 49.00, 11.00, 11.50, 19.00, 10.50, 1783, 0, 0, 552586, 166, 401, 268, 244, 0, 21646789),
(1667, 'Vylnius', 9, 72612, 37915, 45000, 29.50, 21.50, 26.50, 24.50, 37.50, 58.50, 20000, 0, 0, 1428734, 36, 34, 78, 70, 0, 21634005),
(1670, 'Bolackot', 6, 144022, 19855, 21000, 48.00, 25.00, 24.00, 15.00, 20.00, 61.00, 622, 0, 0, 131012, 256, 400, 270, 360, 0, 21648558),
(1672, 'Drakarius', 4, 97450, 7969, 10000, 25.00, 26.00, 12.00, 41.00, 20.00, 17.00, 6106, 0, 0, 1106331, 455, 556, 769, 456, 0, 21634069),
(1677, 'Morblink', 1, 3942, 50, 1000, 26.00, 19.50, 17.00, 7.50, 13.50, 9.50, 0, 0, 0, 576701, 29, 29, 58, 29, 0, 21606627),
(1682, 'L&eacute;&ouml;raz', 6, 41938, 16217, 21000, 38.00, 25.00, 40.00, 20.00, 18.00, 17.00, 20000, 0, 0, 151790, 190, 137, 141, 180, 0, 21645636),
(1685, 'Beltha&iuml;s', 8, 112673, 32240, 36000, 50.00, 26.00, 53.00, 21.00, 17.00, 15.00, 10000, 0, 0, 761209, 171, 53, 155, 77, 0, 21646034),
(1694, 'Wariogab', 1, 3134, 0, 1000, 27.00, 18.50, 10.00, 8.50, 15.50, 8.50, 0, 0, 0, 6119, 8, 8, 8, 8, 0, 21604010),
(1698, 'Khalak', 6, 90397, 18858, 21000, 21.00, 11.00, 22.00, 32.00, 29.00, 43.00, 30000, 0, 0, 478751, 351, 240, 320, 497, 0, 21644173),
(1700, 'Gaeldrech', 8, 143722, 31108, 36000, 118.00, 74.00, 46.00, 28.00, 20.00, 16.00, 15825, 0, 0, 248778, 416, 272, 354, 219, 0, 21648779),
(1702, 'Jenin', 1, 3134, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 26.00, 0, 0, 0, 187779, 8, 8, 8, 8, 0, 21605393),
(1707, 'Symn', 1, 3134, 0, 1000, 23.00, 13.00, 15.00, 8.50, 15.00, 12.50, 0, 0, 0, 6349, 8, 8, 8, 8, 0, 21606568),
(1708, 'Hulriche', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21606844),
(1714, 'Zecrome', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609140),
(1715, 'Blindor la Montagne', 8, 76757, 29509, 36000, 91.00, 47.00, 23.00, 11.00, 24.00, 14.00, 30000, 0, 0, 520830, 209, 276, 333, 174, 0, 21645519),
(1716, 'Archonss', 3, 27411, 4579, 6000, 19.50, 19.00, 12.00, 20.50, 19.00, 29.00, 10000, 0, 0, 974052, 103, 150, 148, 147, 0, 21618706),
(1717, 'Lili Eelliote', 1, 0, 0, 1000, 18.00, 14.00, 20.00, 13.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609140),
(1719, 'Nesva', 1, 0, 0, 1000, 16.50, 15.00, 17.00, 13.00, 14.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609140),
(1720, 'Abnar', 1, 0, 0, 1000, 12.50, 13.00, 13.00, 13.50, 16.00, 21.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609140),
(1721, 'Lealeia', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609140),
(1722, 'Balodules', 1, 0, 0, 1000, 18.00, 18.00, 9.00, 18.00, 13.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609140),
(1723, 'Narayana', 1, 4645, 11, 1000, 10.50, 9.50, 9.00, 24.00, 15.00, 24.00, 0, 0, 0, 193497, 0, 0, 0, 0, 0, 21609140),
(1724, 'Lute', 1, 0, 0, 1000, 16.50, 10.50, 12.50, 18.50, 12.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21609141),
(1725, 'Galmin', 13, 192070, 81528, 91000, 69.00, 36.00, 85.50, 13.50, 109.50, 85.50, 40000, 0, 0, 1515228, 469, 368, 458, 344, 0, 21651642),
(1727, 'Thorgrim', 4, 68583, 6124, 10000, 20.00, 12.00, 18.00, 15.00, 20.00, 75.00, 4228, 0, 0, 163726, 33, 10, 26, 23, 0, 21648726),
(1731, 'Infilz', 7, 124330, 24453, 28000, 47.50, 16.00, 65.00, 30.00, 18.50, 20.00, 2702, 0, 0, 2571, 75, 250, 252, 257, 0, 21646067),
(1732, 'Khorialyx', 1, 3134, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 155578, 4, 4, 4, 4, 0, 21611251),
(1734, 'Wecklers', 1, 0, 0, 1000, 16.00, 12.00, 17.00, 11.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612116),
(1736, 'Pheregan', 1, 0, 0, 1000, 16.50, 11.00, 22.00, 14.00, 11.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612116),
(1737, 'Darckym', 1, 3134, 0, 1000, 14.50, 14.00, 18.00, 15.00, 13.50, 14.00, 0, 0, 0, 5082, 0, 0, 0, 0, 0, 21612116),
(1738, 'Nebala', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612116),
(1739, 'Dydys', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612116),
(1740, 'Oolna', 8, 124105, 30745, 36000, 71.00, 38.00, 74.00, 21.00, 17.00, 15.00, 16855, 0, 0, 34910, 294, 315, 188, 292, 0, 21648269),
(1741, 'Mecainxi', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612119),
(1742, 'Hygarld', 1, 0, 0, 1000, 15.00, 16.00, 13.00, 17.00, 14.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612119),
(1743, ' Dimniel', 1, 0, 0, 1000, 20.00, 16.00, 13.50, 14.00, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612119),
(1745, 'Pyrim', 5, 89212, 14605, 15000, 55.00, 25.50, 23.00, 19.50, 18.50, 15.50, 20000, 0, 0, 682131, 458, 328, 319, 489, 0, 21643924);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1746, 'Oerio', 1, 3164, 0, 1000, 18.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 1992, 0, 0, 0, 0, 0, 21612365),
(1747, 'Hordrin', 14, 166838, 92736, 105000, 120.00, 137.00, 15.00, 74.00, 83.00, 85.00, 850, 0, 0, 1200897, 88, 98, 195, 27, 0, 21648878),
(1748, 'Baduit', 13, 89966, 83276, 91000, 110.00, 77.00, 86.00, 93.00, 52.00, 37.00, 24261, 0, 0, 737064, 196, 171, 174, 55, 0, 21648568),
(1749, 'Trano', 7, 199609, 24480, 28000, 63.00, 24.00, 82.50, 33.50, 18.00, 55.00, 8915, 0, 0, 2577771, 329, 379, 336, 496, 0, 21648542),
(1750, 'Ephem', 9, 144345, 38229, 45000, 67.50, 37.00, 71.00, 22.00, 18.00, 15.50, 30000, 0, 0, 396386, 313, 378, 339, 355, 0, 21642557),
(1751, 'Kaatk', 1, 0, 0, 1000, 11.50, 10.00, 9.00, 22.50, 16.50, 21.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612780),
(1752, 'Kanou', 8, 124644, 33430, 36000, 130.00, 50.00, 43.00, 9.00, 30.00, 17.00, 12643, 0, 0, 389669, 424, 474, 391, 384, 0, 21646969),
(1754, 'Elddoth', 1, 3455, 0, 1000, 12.50, 10.00, 15.00, 24.00, 13.00, 16.50, 0, 0, 0, 17114, 32, 32, 32, 32, 0, 21614310),
(1755, 'Le Dougec', 6, 111854, 17730, 21000, 32.00, 17.00, 42.00, 31.00, 17.00, 18.00, 30000, 0, 0, 13089, 292, 341, 305, 411, 0, 21647129),
(1756, 'Elysfer', 5, 76033, 13576, 15000, 37.50, 18.00, 40.00, 20.00, 14.00, 13.50, 20000, 0, 0, 1748794, 139, 240, 255, 110, 0, 21640191),
(1757, 'Milyana', 1, 3822, 0, 1000, 8.50, 9.50, 18.50, 17.00, 12.00, 25.50, 0, 0, 0, 71743, 16, 16, 16, 16, 0, 21615812),
(1758, 'Neroht', 6, 84401, 15561, 21000, 40.00, 44.00, 24.00, 39.00, 19.00, 15.00, 20000, 0, 0, 2715046, 250, 367, 451, 313, 0, 21639670),
(1760, 'Shael', 1, 0, 0, 1000, 12.50, 13.00, 9.00, 22.00, 15.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1761, 'Plumne', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1762, 'Killyrr', 1, 0, 0, 1000, 12.50, 15.00, 15.00, 9.00, 16.50, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1763, 'Houdiard', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1764, 'Jujur', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1765, 'Sukye', 1, 0, 0, 1000, 16.00, 13.00, 20.00, 16.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1766, 'Cocodu', 1, 0, 0, 1000, 18.00, 18.00, 15.00, 12.50, 13.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615820),
(1767, 'Gorgnano', 1, 3134, 0, 1000, 8.50, 12.00, 18.00, 15.00, 15.50, 16.50, 0, 0, 0, 5421, 0, 0, 0, 0, 0, 21615820),
(1768, 'Alecyel', 1, 3134, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5016, 0, 0, 0, 0, 0, 21616783),
(1769, 'Haradrymn', 1, 3134, 0, 1000, 15.50, 18.00, 10.00, 17.00, 14.50, 11.50, 0, 0, 0, 3198, 0, 0, 0, 0, 0, 21617126),
(1770, 'Ameennos', 4, 63038, 9984, 10000, 28.00, 16.00, 36.00, 16.00, 18.00, 17.00, 20000, 0, 0, 481523, 144, 30, 83, 74, 0, 21640216),
(1771, 'Toxigoulec', 1, 0, 0, 1000, 27.00, 12.50, 16.00, 5.50, 12.50, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21617128),
(1772, 'Zeiradijas', 1, 3134, 0, 1000, 16.00, 16.00, 13.00, 15.00, 15.00, 14.00, 0, 0, 0, 5473, 0, 0, 0, 0, 0, 21617128),
(1773, 'Pyrazine', 6, 92927, 16723, 21000, 51.00, 62.00, 43.00, 8.00, 26.00, 40.00, 23288, 0, 0, 2591560, 204, 303, 443, 383, 0, 21647197),
(1779, 'Htek', 1, 0, 0, 1000, 26.00, 16.00, 8.50, 7.50, 14.50, 14.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21619941),
(1780, 'Flinflin', 1, 3134, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 8139, 20, 20, 20, 20, 0, 21619944),
(1781, 'Snackar', 1, 3166, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 262389, 0, 0, 0, 0, 0, 21619944),
(1782, 'Conona', 1, 3834, 0, 1000, 23.00, 18.50, 15.00, 12.50, 13.50, 12.50, 0, 0, 0, 325427, 0, 0, 0, 0, 0, 21619946),
(1783, 'Sinostroror', 1, 4165, 436, 1000, 18.00, 11.50, 13.50, 10.00, 12.50, 25.50, 6159, 0, 0, 170602, 8, 5, 2, 5, 0, 21619946),
(1784, 'Lineus', 6, 122105, 17049, 21000, 35.00, 17.00, 43.00, 29.00, 16.00, 19.00, 11267, 0, 0, 453439, 581, 544, 208, 666, 0, 21648545),
(1785, 'Engenoir', 1, 0, 0, 1000, 18.00, 9.00, 20.00, 10.00, 16.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21619946),
(1793, 'Erairefal', 1, 3536, 0, 1000, 21.00, 14.00, 16.00, 8.50, 15.00, 12.50, 0, 0, 0, 45233, 20, 20, 20, 20, 0, 21622841),
(1794, 'Ramenel', 1, 0, 0, 1000, 23.00, 13.00, 15.00, 8.50, 15.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622841),
(1795, 'Bornami', 8, 97988, 29390, 36000, 38.00, 22.00, 52.00, 129.00, 24.00, 16.00, 1513, 0, 0, 92192, 325, 342, 271, 352, 0, 21648703),
(1796, 'Shaynnat', 1, 0, 0, 1000, 14.50, 10.00, 21.00, 16.00, 12.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622842),
(1797, 'Zeldgrove', 1, 0, 0, 1000, 20.00, 13.00, 16.00, 8.50, 16.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622842),
(1799, 'Sratueur', 1, 0, 0, 1000, 15.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622844),
(1800, 'Petinihil', 1, 0, 0, 1000, 11.50, 10.00, 9.00, 22.50, 16.50, 21.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622844),
(1801, 'Jixinou', 1, 0, 0, 1000, 16.00, 13.00, 20.00, 16.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622846),
(1802, 'Gartamarbasdam', 1, 0, 0, 1000, 17.00, 11.50, 13.50, 10.00, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622846),
(1803, 'Foukrache', 1, 0, 0, 1000, 18.00, 17.00, 13.50, 14.00, 14.00, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625305),
(1804, 'Elorfindelle', 4, 68629, 6577, 10000, 21.00, 19.00, 21.00, 20.00, 21.00, 29.00, 20000, 0, 0, 116642, 355, 138, 150, 154, 0, 21647718),
(1805, 'Alerob', 5, 128104, 12255, 15000, 37.50, 30.00, 38.00, 21.00, 15.00, 14.50, 776, 0, 0, 2923, 353, 201, 357, 480, 0, 21648434),
(1806, 'Sto&iuml;ck Ur', 1, 3144, 0, 1000, 21.00, 19.00, 13.50, 16.00, 13.00, 12.50, 0, 0, 0, 5038, 0, 0, 0, 0, 0, 21625306),
(1807, 'Twirlinki', 1, 0, 0, 1000, 17.50, 8.50, 16.50, 9.50, 17.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625306),
(1808, 'Yusurken', 1, 0, 0, 1000, 15.50, 8.50, 15.00, 13.00, 16.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625306),
(1809, 'Kal', 6, 158219, 20226, 21000, 39.00, 28.00, 17.00, 21.00, 23.00, 40.00, 3527, 0, 0, 287326, 315, 215, 87, 166, 0, 21648881),
(1810, 'Exfly', 1, 3134, 0, 1000, 19.00, 9.50, 14.50, 9.00, 17.50, 17.50, 0, 0, 0, 5012, 0, 0, 0, 0, 0, 21625308),
(1812, 'Kilou', 1, 0, 0, 1000, 28.00, 19.00, 9.00, 7.50, 13.00, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625309);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1813, 'Aanor', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625309),
(1814, 'Zizcaptziz', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625309),
(1815, 'Yuhaln', 1, 3134, 0, 1000, 20.00, 21.00, 14.00, 14.50, 13.00, 12.50, 0, 0, 0, 5137, 0, 0, 0, 0, 0, 21625310),
(1816, 'Han Main-Tranchante', 6, 90565, 15481, 21000, 51.00, 28.00, 56.00, 26.00, 28.00, 24.00, 20000, 0, 0, 156028, 257, 137, 248, 132, 0, 21654383),
(1817, 'Moriador', 1, 0, 0, 1000, 22.00, 18.00, 17.00, 7.50, 13.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627191),
(1818, 'Shengouara', 1, 3134, 0, 1000, 18.00, 10.50, 12.50, 18.00, 11.50, 16.50, 0, 0, 0, 39638, 50, 50, 50, 50, 0, 21627191),
(1819, 'Nevfalas', 1, 0, 0, 1000, 19.00, 8.50, 16.50, 9.00, 16.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627191),
(1820, 'Nige', 1, 0, 0, 1000, 16.50, 10.50, 12.50, 18.50, 12.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627193),
(1821, 'Priranpicedo', 1, 0, 0, 1000, 8.50, 10.50, 18.50, 16.00, 13.00, 20.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627194),
(1822, 'Persuess', 1, 0, 0, 1000, 15.50, 10.50, 15.50, 10.50, 12.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627194),
(1823, 'Katarat', 1, 0, 0, 1000, 8.50, 10.00, 17.00, 15.50, 15.50, 20.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627196),
(1824, 'Aedorn', 4, 75099, 8312, 10000, 13.00, 23.00, 15.00, 19.00, 19.00, 43.00, 20000, 0, 0, 590269, 318, 170, 297, 146, 0, 21646859),
(1825, 'Arathiliel', 1, 0, 0, 1000, 8.50, 10.50, 18.50, 16.00, 13.00, 20.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627196),
(1826, 'Anithralith', 6, 95394, 15737, 21000, 31.00, 19.00, 43.00, 20.00, 23.00, 19.00, 20000, 0, 0, 11112, 187, 141, 197, 146, 0, 21647407),
(1827, 'Khiran', 3, 89266, 4492, 6000, 52.00, 25.50, 21.00, 8.50, 16.50, 10.50, 20000, 0, 0, 23686, 200, 167, 270, 168, 0, 21645359),
(1828, 'L&eacute;nnih', 4, 35493, 7774, 10000, 17.00, 26.00, 12.00, 23.00, 29.00, 17.00, 20000, 0, 0, 168523, 235, 130, 196, 248, 0, 21645177),
(1829, 'Baldragon', 1, 3139, 0, 1000, 26.00, 10.00, 14.50, 5.50, 14.50, 17.50, 0, 0, 0, 262181, 44, 44, 44, 44, 0, 21629777),
(1830, 'Annaebelles', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21629943),
(1831, 'Basijle', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21629943),
(1832, 'Naezdeck', 1, 4110, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 221838, 8, 8, 8, 8, 0, 21629943),
(1833, 'Witmitis', 1, 3197, 0, 1000, 15.00, 13.00, 20.00, 14.00, 14.00, 14.00, 16, 0, 0, 586, 4, 4, 4, 4, 0, 21629943),
(1834, 'Maeon', 1, 0, 0, 1000, 14.50, 12.00, 12.00, 19.00, 12.50, 15.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21629943),
(1835, 'Krystophoros', 6, 430433, 15548, 21000, 41.00, 43.00, 28.00, 13.00, 22.00, 11.00, 20000, 0, 0, 281, 93, 31, 98, 90, 0, 21643992),
(1836, 'Tchinga', 11, 112568, 59788, 66000, 39.50, 50.50, 25.50, 100.00, 31.00, 107.50, 40000, 0, 0, 87187, 561, 338, 347, 396, 0, 21648484),
(1837, 'Aenurn', 1, 3522, 0, 1000, 16.50, 10.00, 21.00, 16.00, 13.00, 13.50, 0, 0, 0, 220906, 0, 0, 0, 0, 0, 21631435),
(1838, 'Anwaman&euml;l', 3, 50614, 5912, 6000, 49.00, 31.00, 14.00, 14.50, 12.00, 12.50, 19244, 0, 0, 108712, 165, 166, 178, 210, 0, 21647107),
(1839, 'Benjik', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21631439),
(1840, 'Geromini', 1, 3404, 0, 1000, 13.50, 16.00, 15.00, 12.00, 15.50, 18.00, 0, 0, 0, 147, 0, 0, 0, 0, 0, 21631439),
(1841, 'Anyd', 1, 3145, 0, 1000, 16.50, 10.00, 23.00, 16.00, 10.50, 14.00, 0, 0, 0, 4831, 4, 4, 4, 4, 0, 21631439),
(1842, 'Cometa', 4, 94143, 6893, 10000, 34.00, 24.00, 21.00, 18.00, 18.00, 14.00, 20000, 0, 0, 395105, 184, 120, 236, 92, 0, 21643713),
(1843, 'Poepior ', 1, 0, 0, 1000, 16.50, 19.00, 9.00, 17.00, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21631439),
(1851, 'Reyns', 3, 38843, 5498, 6000, 21.00, 20.00, 21.00, 19.00, 19.00, 19.00, 5835, 0, 0, 21645, 104, 21, 70, 139, 0, 21646573),
(1852, 'Imbalayo', 5, 41740, 11183, 15000, 44.00, 27.50, 24.00, 69.50, 19.50, 14.50, 5627, 0, 0, 223562, 121, 154, 211, 217, 0, 21648688),
(1853, 'Ar&eacute;gonde', 4, 88385, 6801, 10000, 21.00, 18.00, 21.00, 23.00, 22.00, 27.00, 10700, 0, 0, 9130, 115, 161, 184, 148, 0, 21643912),
(1856, 'Darzang', 4, 115385, 9785, 10000, 56.00, 26.00, 34.00, 21.00, 13.00, 21.00, 20000, 0, 0, 11911, 246, 242, 164, 171, 0, 21648775),
(1857, 'Zakiroh', 1, 0, 0, 1000, 10.50, 8.50, 9.00, 24.00, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21634409),
(1858, 'Arcillon', 1, 3134, 0, 1000, 18.50, 10.00, 20.00, 14.00, 14.50, 13.00, 0, 0, 0, 88667, 16, 16, 16, 16, 0, 21634409),
(1859, 'Hildigrimn', 1, 0, 0, 1000, 17.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21634409),
(1860, 'Galendurwen ', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 8.50, 14.00, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21634409),
(1861, 'Isumbras', 1, 0, 0, 1000, 15.00, 14.00, 17.00, 14.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21634409),
(1862, 'Kurhosh', 1, 3134, 0, 1000, 17.50, 18.50, 8.50, 18.00, 13.00, 11.50, 0, 0, 0, 5627, 4, 4, 4, 4, 0, 21634409),
(1863, 'Dadarafak', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21634409),
(1864, 'Umbros', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21634409),
(1865, 'D&eacute;ductance', 3, 79813, 5110, 6000, 23.50, 9.50, 17.00, 18.00, 17.00, 35.00, 371, 0, 0, 285724, 258, 46, 56, 172, 0, 21648186),
(1866, 'Agro', 5, 34840, 10873, 15000, 42.00, 31.00, 20.50, 22.00, 17.00, 14.50, 10259, 0, 0, 21383, 191, 53, 74, 120, 0, 21648246),
(1867, 'Maxliger', 5, 59612, 10028, 15000, 14.50, 23.00, 25.00, 23.00, 29.50, 23.50, 3262, 0, 0, 108243, 188, 95, 114, 90, 0, 21646505),
(1869, 'uodo', 1, 0, 0, 1000, 29.00, 17.50, 9.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638191),
(1870, 'Chelii', 5, 113557, 12673, 15000, 19.50, 18.00, 22.00, 21.50, 23.50, 32.50, 1787, 0, 0, 2121, 97, 116, 109, 73, 0, 21648637),
(1871, 'Wyl', 1, 4607, 0, 1000, 16.50, 8.50, 14.00, 12.00, 17.00, 20.00, 0, 0, 0, 27676, 28, 28, 28, 28, 0, 21638195),
(1873, 'Hirolhalil', 1, 0, 0, 1000, 13.00, 9.00, 15.00, 22.00, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638195),
(1874, 'Alardius', 1, 6330, 37, 1000, 21.00, 20.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 8414, 31, 31, 31, 31, 0, 21648609);INSERT INTO `11mar_joueurs_stats_1` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1875, 'Eiighty', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638200),
(1876, 'Sachatere', 1, 0, 0, 1000, 26.00, 20.00, 10.00, 7.50, 13.00, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638200),
(1877, 'Charlie', 1, 3134, 0, 1000, 19.00, 12.00, 14.50, 10.50, 15.00, 16.00, 0, 0, 0, 5479, 0, 0, 0, 0, 0, 21638200),
(1878, 'Lestathien', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638200),
(1879, 'Kyohmanu', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638200),
(1880, 'Ascallion', 1, 3134, 0, 1000, 10.50, 11.00, 9.00, 22.00, 16.50, 20.50, 0, 0, 0, 7802, 20, 20, 20, 20, 0, 21638200),
(1881, 'Sparctanyadil', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638202),
(1882, 'Starome', 1, 0, 0, 1000, 15.00, 16.00, 13.00, 17.00, 14.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638202),
(1883, 'Khane', 1, 47740, 822, 1000, 18.50, 14.00, 20.00, 15.00, 13.00, 12.50, 7382, 0, 0, 224263, 83, 157, 169, 106, 0, 21648735),
(1912, 'Eleril', 1, 3197, 0, 1000, 16.50, 10.50, 13.00, 20.50, 10.50, 20.00, 0, 0, 0, 3812, 20, 20, 20, 20, 0, 21638741),
(1913, 'Eshapaqy', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638742),
(1914, 'Metyorah', 2, 7542, 1218, 3000, 26.00, 14.00, 26.00, 15.00, 11.00, 12.00, 0, 0, 0, 5512, 30, 30, 30, 30, 0, 21648549),
(1915, 'Mortzacus', 3, 37962, 3714, 6000, 29.50, 20.00, 25.00, 15.00, 15.00, 13.50, 17363, 0, 0, 155447, 48, 56, 129, 43, 0, 21648894),
(1918, 'Ashinseika', 3, 63797, 3457, 6000, 16.50, 23.00, 11.00, 21.00, 24.50, 16.50, 20000, 0, 0, 17270, 78, 205, 56, 164, 0, 21645981),
(1920, 'Teperek', 1, 5779, 3, 1000, 9.50, 10.00, 17.00, 16.50, 15.50, 22.50, 10000, 0, 0, 148930, 26, 26, 10, 10, 0, 21640097),
(1922, 'Thaelion', 1, 6939, 9, 1000, 22.00, 19.00, 14.50, 14.00, 13.00, 12.50, 10000, 0, 0, 139336, 30, 12, 12, 12, 0, 21641206),
(1923, 'Rofas', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21641450),
(1924, 'B&auml;brah', 1, 8028, 479, 1000, 29.00, 22.00, 9.00, 9.50, 13.00, 10.50, 10000, 0, 0, 96871, 11, 6, 11, 11, 0, 21641451),
(1925, 'Henus', 1, 11502, 962, 1000, 19.00, 11.00, 18.00, 10.00, 16.00, 14.00, 8513, 0, 0, 21, 51, 40, 68, 36, 0, 21647992),
(1926, 'Kilo', 1, 0, 0, 1000, 13.00, 9.00, 15.00, 22.00, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21641453),
(1927, 'Koulibab', 1, 0, 0, 1000, 19.00, 9.50, 14.50, 9.00, 17.50, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21641453),
(1928, 'Wefel', 1, 0, 0, 1000, 25.00, 19.50, 11.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21641455),
(1929, 'Stephi', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21641615),
(1931, 'Trolur', 1, 6680, 341, 1000, 7.50, 9.50, 18.50, 17.00, 12.00, 23.50, 6739, 0, 0, 2672, 12, 24, 60, 57, 0, 21648313),
(1933, 'Onche', 3, 29582, 3315, 6000, 41.00, 30.00, 13.00, 8.50, 15.00, 11.50, 9694, 0, 0, 10778, 14, 19, 18, 14, 0, 21644584),
(1934, 'Goetiarn', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 7.50, 13.50, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644584),
(1935, 'Cornholio Gargaholio', 1, 0, 0, 1000, 18.00, 10.50, 12.50, 18.00, 11.50, 16.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644584),
(1936, 'Alkkemeniel', 1, 0, 0, 1000, 16.00, 13.00, 20.00, 16.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644584),
(1937, 'Ekelgeister', 2, 13397, 1940, 3000, 21.00, 12.00, 23.00, 12.00, 18.00, 15.00, 4622, 0, 0, 481, 13, 21, 10, 10, 0, 21646654),
(1938, 'Sephaika', 1, 0, 0, 1000, 7.50, 9.00, 17.00, 14.50, 15.00, 24.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644584),
(1939, 'Jarotth', 1, 0, 0, 1000, 22.00, 18.00, 17.00, 7.50, 13.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644584),
(1941, 'Kragone', 2, 9215, 2319, 3000, 19.00, 9.00, 16.00, 11.00, 20.00, 29.00, 6553, 0, 0, 151, 17, 30, 21, 6, 0, 21648463),
(1944, 'Prolor', 1, 5234, 666, 1000, 16.50, 8.50, 14.50, 9.50, 19.50, 19.50, 2600, 0, 0, 9496, 7, 3, 3, 3, 0, 21648660),
(1945, 'Miroslaw', 1, 4492, 23, 1000, 19.50, 16.50, 12.50, 13.00, 16.00, 14.50, 10000, 0, 0, 3428, 4, 12, 4, 4, 0, 21647081),
(1946, 'Valinov', 1, 3134, 0, 1000, 23.00, 13.00, 15.00, 8.50, 15.00, 12.50, 0, 0, 0, 5149, 0, 0, 0, 0, 0, 21647081),
(1947, 'Ame', 1, 0, 0, 1000, 7.50, 11.00, 17.00, 15.00, 15.50, 19.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21647081),
(1948, 'Forol', 1, 0, 0, 1000, 13.50, 10.50, 13.00, 13.00, 12.00, 25.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21647082),
(1949, 'Theus', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21647083),
(1950, 'Voxhesse', 1, 0, 0, 1000, 17.00, 10.50, 15.50, 10.00, 11.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21647084),
(1951, 'Wigfried', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21647084),
(1952, 'Dukeskar', 1, 0, 0, 1000, 15.00, 14.00, 17.00, 14.00, 15.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21647084),
(1953, 'Erchael', 1, 4122, 26, 1000, 19.50, 16.50, 13.50, 13.00, 16.00, 14.50, 10000, 0, 0, 2659, 8, 4, 4, 4, 0, 21647415),
(1954, 'Olg le Gras', 1, 3220, 0, 1000, 32.00, 19.50, 10.00, 7.50, 13.50, 10.50, 0, 0, 0, 6368, 0, 0, 0, 0, 0, 21648500),
(1955, 'Enedlotiel', 1, 0, 0, 1000, 12.50, 9.00, 18.00, 14.50, 13.00, 20.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648706),
(1956, 'Loutch', 1, 3451, 0, 1000, 11.50, 9.50, 9.00, 24.00, 15.00, 26.00, 0, 0, 0, 834, 0, 0, 0, 0, 0, 21648706),
(1957, 'Grimm Ouar', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648707),
(1958, 'D&eacute;vass', 1, 0, 0, 1000, 15.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648707),
(1959, 'Llumeolf', 1, 3152, 8, 1000, 10.50, 8.50, 9.00, 24.00, 15.00, 25.00, 0, 0, 0, 2039, 0, 0, 0, 0, 0, 21648707);



CREATE TABLE `11mar_guildes_2` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(80) NOT NULL default '',
  `province` varchar(40) NOT NULL default '',
  `nb_membres` int(11) NOT NULL default '0',
  `date_création` int(11) NOT NULL default '0',
  `img` tinytext NOT NULL,
  `chef` varchar(50) NOT NULL default '',
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `regles` text NOT NULL,
  `puissance` int(11) NOT NULL default '0',
  `siteweb` tinytext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

INSERT INTO `11mar_guildes_2` (`id`, `nom`, `province`, `nb_membres`, `date_création`, `img`, `chef`, `description`, `objectifs`, `regles`, `puissance`, `siteweb`) VALUES
(1, 'Les Disciples de l`Eternel', 'Thassopole', 8, 21447086, 'http://www.linkup-coaching.com/files/image/icones/const.jpg', 'Azhaag', 'L\'Eternel sur le trône à la place de l\'empereur fit appeler sa garde rapprochée. Les Disciples rentrèrent un à un dans la pièce et s\'agenouillèrent devant leur divinité. 

C\'est à la suite d\'une longue et parfois pénible reconquête qu\'ils forgèrent ensemble dans le sang leur nouveau royaume. 

L\'Eternel transmis à nouveau ses paroles à chaque Disciple:

"Vous êtes braves, vous vous distinguez par votre efficience, vous méritez donc ce que l\'on a conquis.
Ainsi je vous confie maintenant une région à gérer pour qu\'elle soit sous l\'autorité de l\'Eternel et non pas qu\'elle cède à la rébellion ou la violence.
Vous rencontrerez en face de vous sûrement quelques récalcitrants.
Il sera de votre devoir d\'y remédier." 


Les disciples prirent congés sur ordre de l\'Eternel. Chacun avait donc de nouvelles responsabilités qu\'ils se devaient d\'assumer...', 'Cette armada a pour but de défendre l\'Eternel jusqu\'à ce qu\'il soit défait. L\'Eternel possède dés à présent toutes les régions de Kalamaï et entend ainsi répondre des agissements de chaque groupuscule tel qu\'il soit en ses terres assouvies. ', 'Se conformer à l\'organisation interne et ludique de l\'armada.
Ne pas salir limage de l\'Eternel en public.
Respecter les stratégies internes.
Faire preuve de créativité pour embellir celles-ci.', 238931, 'http://'),
(2, 'Vae Victis', 'Amphise', 4, 21464134, 'http://hitskin.com/themes/14/18/75/i_logo.jpg', 'Razak', 'La fondation de cette nouvelle alliance survint quelques jours après la mise en fonction de Razak en tant que Palatin d’Amphise.  Depuis sa jeunesse, seule la défense de sa province l’intéressait. C’est ainsi que ses rêves devinrent réalités. 

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
', 46130, 'http://vae-victis.forumgratuit.fr/forum.htm'),
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
 
Tout Voyageur peut se fixer un ou plusieurs objectifs. Tous alors feront leur possible pour l’aider à les réaliser.', 279403, 'http://manticore.forumactif.com/hall-d-entree-f58/la-complainte-des-voyageurs-t1312.htm'),
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
- toujours garder un bon esprit dans le jeu.', 102793, 'http://luminas.forumpro.fr/forum.htm'),
(5, 'L`Union des Titans', 'Prévèze', 5, 21479735, 'http://img183.imageshack.us/img183/5403/orcs56pw4.jpg', 'Vezk', 'L’aube enfin se lève..
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

*Prenez Garde ! Même un petit Gnome marchand, peut révéler un Barbare buveur de Sang !', 63626, 'http://union-titans.forum-gratuit.net/'),
(6, 'Les Scribes de Mésolongion', 'Mésolongion', 5, 21479922, 'http://a31.idata.over-blog.com/1/72/23/46/sister-nightfall/CN8-Eglise-Notre-Dame--Taverny.jpg', 'Irkos', 'Dans la forêt magique et impénétrable de Mésolongion, un homme vivait en ermite, au fin fond des bois. Il était nécromancien. Cet homme se nommait Irkos, c’était un marginal. 

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
- Fair play, bonne entente, et cohésion sont requis afin d’être les plus performants possibles. ', 108300, 'http://scribes.forumgratuit.fr'),
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
Concevoir la victoire, la défaite et les interactions entre joueurs en général en termes ludiques.', 150018, 'http://marcheursdesombres.forumgratuit.fr/forum.htm'),
(8, 'Pour un Empire Neuf', 'Naxos', 6, 21538779, 'http://fc05.deviantart.net/fs41/f/2009/051/b/1/Undead_army_by_ani_r.jpg', 'Myos', '"Ecoutez, mortels, écoutez morts, et écoutez surtout maîtres de la Mort, amis nécromanciens,

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

5. Tout membre est tenu de s’impliquer un maximum pour notre cause.', 131035, 'http://pourunempireneuf.forumactif.net/forum');



CREATE TABLE `11mar_guerres_2` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(10) NOT NULL default '0',
  `valide` varchar(10) NOT NULL default '0',
  `initiateur` varchar(80) NOT NULL default '',
  `guilde1` varchar(80) NOT NULL default '',
  `guilde2` varchar(80) NOT NULL default '',
  `indep1` text NOT NULL,
  `indep2` text NOT NULL,
  `declaration` text NOT NULL,
  `vainqueur` varchar(80) NOT NULL default '',
  `dateDebut` int(11) NOT NULL default '0',
  `puissDebut1` int(11) NOT NULL default '0',
  `puissDebut2` int(11) NOT NULL default '0',
  `dateFin` int(11) NOT NULL default '0',
  `puissFin1` int(11) NOT NULL default '0',
  `puissFin2` int(11) NOT NULL default '0',
  `cond1` varchar(20) NOT NULL default '',
  `val1` int(11) NOT NULL default '0',
  `cond2` varchar(20) NOT NULL default '',
  `val2` int(11) NOT NULL default '0',
  `cond3` varchar(20) NOT NULL default '',
  `val3` int(11) NOT NULL default '0',
  `andor` char(3) NOT NULL default '',
  `prop1` varchar(20) NOT NULL default '',
  `valp1` int(11) NOT NULL default '0',
  `prop2` varchar(20) NOT NULL default '',
  `valp2` int(11) NOT NULL default '0',
  `prop3` varchar(20) NOT NULL default '',
  `valp3` int(11) NOT NULL default '0',
  `andorp` char(3) NOT NULL default '',
  `proposeur` varchar(80) NOT NULL default '',
  `nbrAttaVict` double NOT NULL default '0',
  `nbrAttaDefa` double NOT NULL default '0',
  `nbrDefeVict` double NOT NULL default '0',
  `nbrDefeDefa` double NOT NULL default '0',
  `nbratta1` double NOT NULL default '0',
  `nbratta2` double NOT NULL default '0',
  `nbrvict1` double NOT NULL default '0',
  `nbrvict2` double NOT NULL default '0',
  `xp1` int(11) NOT NULL default '0',
  `xp2` int(11) NOT NULL default '0',
  `pertePuiss1` int(11) NOT NULL default '0',
  `pertePuiss2` int(11) NOT NULL default '0',
  `acres1` int(11) NOT NULL default '0',
  `acres2` int(11) NOT NULL default '0',
  `prison1` int(11) NOT NULL default '0',
  `prison2` int(11) NOT NULL default '0',
  `tues1` int(11) NOT NULL default '0',
  `tues2` int(11) NOT NULL default '0',
  `detruits1` double NOT NULL default '0',
  `detruits2` double NOT NULL default '0',
  `or1` int(11) NOT NULL default '0',
  `or2` int(11) NOT NULL default '0',
  `ressources1` int(11) NOT NULL default '0',
  `ressources2` int(11) NOT NULL default '0',
  `PGCj1` varchar(25) NOT NULL default '',
  `PGCj2` varchar(25) NOT NULL default '',
  `PGCxp1` int(11) NOT NULL default '0',
  `PGCxp2` int(11) NOT NULL default '0',
  `PGCatta` varchar(25) NOT NULL default '',
  `PGCvainqueur` varchar(25) NOT NULL default '',
  `cache` int(11) NOT NULL default '0',
  `leaver1` text NOT NULL,
  `leaver2` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

INSERT INTO `11mar_guerres_2` (`id`, `type`, `valide`, `initiateur`, `guilde1`, `guilde2`, `indep1`, `indep2`, `declaration`, `vainqueur`, `dateDebut`, `puissDebut1`, `puissDebut2`, `dateFin`, `puissFin1`, `puissFin2`, `cond1`, `val1`, `cond2`, `val2`, `cond3`, `val3`, `andor`, `prop1`, `valp1`, `prop2`, `valp2`, `prop3`, `valp3`, `andorp`, `proposeur`, `nbrAttaVict`, `nbrAttaDefa`, `nbrDefeVict`, `nbrDefeDefa`, `nbratta1`, `nbratta2`, `nbrvict1`, `nbrvict2`, `xp1`, `xp2`, `pertePuiss1`, `pertePuiss2`, `acres1`, `acres2`, `prison1`, `prison2`, `tues1`, `tues2`, `detruits1`, `detruits2`, `or1`, `or2`, `ressources1`, `ressources2`, `PGCj1`, `PGCj2`, `PGCxp1`, `PGCxp2`, `PGCatta`, `PGCvainqueur`, `cache`, `leaver1`, `leaver2`) VALUES
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
(12, 'guerre', 'encours', '', 'Luminas', 'Les Disciples de l`Eternel', '', '', '" Vils ignorants, adorateurs d`un faux dieu, vous les pantins de celui que vous nommez l`eternel avez répandu mort et désolation dans plusieurs provinces de Kalamaï.
Dans leur grande sagesse l`union des anciens et des celestriaux vous offre la rédemption, succombez humblement sous la lumière éclatante de nos armes purificatrices et retenez ceci : jamais vous ne souillerez par vos actes le sol d`Etimnon "', '', 21640990, 201539, 210446, 0, 0, 0, 'xp', 50000, 'ressources', 1500, '', 0, 'AND', '', 0, '', 0, '', 0, '', '', 8, 5, 3, 37, 10.173587499, 41.8320828252, 8.14752892547, 43.2819477904, 37718, 58912, 988611, 985519, 38038, 314671, 20727, 141556, 11391, 113936, 0.790340689219, 8.8667285933, 346012, 991100, 300, 635, 'Phylas', 'Alcyban', 9107, 2922, 'Alcyban', 'Phylas', 0, '|Nak`Amnar|', '');



CREATE TABLE `11mar_joueurs_bonus_2` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(30) NOT NULL default '',
  `att` smallint(6) NOT NULL default '0',
  `def` smallint(6) NOT NULL default '0',
  `ini` smallint(6) NOT NULL default '0',
  `cha` smallint(6) NOT NULL default '0',
  `end` smallint(6) NOT NULL default '0',
  `pui` smallint(6) NOT NULL default '0',
  `chance` smallint(6) NOT NULL default '0',
  `offensive` tinyint(4) NOT NULL default '100',
  `defensive` tinyint(4) NOT NULL default '100',
  `rapport` tinyint(4) NOT NULL default '0',
  `politique` varchar(40) NOT NULL default 'Autarcie',
  `province` varchar(40) NOT NULL default 'Aucune',
  `statut` varchar(40) NOT NULL default '',
  `guilde` varchar(70) NOT NULL default 'Aucune',
  `chg_province` int(11) NOT NULL default '0',
  `quete` int(11) NOT NULL default '0',
  `victoire` int(11) NOT NULL default '0',
  `défaite` int(11) NOT NULL default '0',
  `gain_jour` int(11) NOT NULL default '0',
  `guildeRP` int(11) NOT NULL default '0',
  `rangguildeRP` int(11) NOT NULL default '0',
  `rapportOff` int(11) NOT NULL default '0',
  `incantemin` smallint(6) NOT NULL default '-1',
  `incantemax` smallint(6) NOT NULL default '-1',
  `incantetjrsoff` tinyint(4) NOT NULL default '1',
  `incanterExplo` tinyint(1) NOT NULL default '1',
  `objets_casses` smallint(5) unsigned NOT NULL default '0',
  `satt` smallint(3) NOT NULL default '0',
  `sdef` smallint(3) NOT NULL default '0',
  `sini` smallint(3) NOT NULL default '0',
  `spui` smallint(3) NOT NULL default '0',
  `send` smallint(3) NOT NULL default '0',
  `scha` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=870 DEFAULT CHARSET=latin1 AUTO_INCREMENT=870 ;

INSERT INTO `11mar_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(2, 'Alumdil', 17, 2, 94, -20, 58, 86, 4, 100, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21491787, 0, 85, 82, 275902, 0, 0, 1, 30, 30, 1, 1, 27, 0, 0, 19, 0, 0, 0),
(3, 'Vibralea', 14, 9, 35, 0, 80, 84, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 143, 19, 101681, 0, 0, 0, -1, -1, 1, 1, 11, 0, 0, 5, 7, 5, 2),
(4, 'L&eacute;nnih', 66, 71, 178, 12, 19, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21452739, 0, 123, 173, 191317, 0, 0, 1, -1, -1, 1, 0, 1985, 0, 0, 14, 0, 0, 0),
(5, 'Dijun', 17, 17, 74, 74, 29, 75, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21451213, 0, 159, 101, 272180, 0, 0, 1, -1, -1, 1, 0, 10, 1, 0, 7, 2, 0, 10),
(8, 'Helmrod', 2, 3, 1, 0, 0, 0, 0, 80, 100, 1, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21445005, 0, 81, 219, 19573, 0, 0, 1, -1, -1, 1, 0, 4, 0, 1, 7, 2, 1, 0),
(13, 'Aleksander', 150, 119, 60, 58, 37, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443972, 0, 146, 244, 191098, 0, 0, 0, 50, 50, 0, 0, 20, 17, 1, 4, 0, 0, 0),
(16, 'Meolas', 11, 24, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21512053, 0, 118, 156, 14061, 0, 0, 0, -1, -1, 1, 1, 1, 7, 0, 6, 0, 0, 0),
(18, 'Darith', 14, 10, 13, 0, 0, 12, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21444181, 0, 97, 193, 9292, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 10, 0, 0, 0),
(19, 'Gorak', -10, 8, 64, 138, 127, 239, 1, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21456808, 0, 128, 242, 395623, 0, 0, 0, 40, 40, 1, 1, 35, 0, 1, 21, 0, 0, 1),
(30, 'Gaoule', 117, 6, 82, 0, 13, 0, 0, 90, 90, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443741, 0, 120, 198, 376460, 0, 0, 0, 10, 30, 0, 0, 9, 9, 0, 11, 0, 0, 0),
(36, 'Cl&eacute;mentine', 84, 40, 65, 69, 48, 22, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21444566, 0, 156, 263, 540147, 0, 0, 0, 50, 50, 1, 0, 22, 0, 0, 26, 0, 0, 0),
(43, 'Mund', 36, 46, -5, 66, 4, 0, 0, 80, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21445805, 0, 132, 129, 261911, 0, 0, 0, 60, 150, 1, 1, 9, 11, 1, 3, 0, 2, 0),
(45, 'Dro&iuml;n Pierre de Feu', 190, 121, 132, 81, 22, 0, 3, 80, 60, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21447100, 0, 188, 300, 202638, 0, 0, 0, -1, -1, 1, 0, 1384, 0, 1, 22, 0, 0, 1),
(47, 'Agradok', 0, 22, 108, 157, 16, 238, 8, 100, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443814, 0, 89, 193, 342784, 0, 0, 0, 10, 20, 1, 1, 161, 0, 0, 8, 0, 0, 19),
(48, 'Harkazam', 29, 15, 0, 24, 27, 34, 0, 100, 100, 1, 'Gérontocratie', 'Amphise', '', 'Aucune', 21446781, 0, 245, 353, 357716, 0, 0, 1, -1, -1, 1, 1, 4, 0, 0, 13, 0, 0, 0),
(53, 'Nak`Amnar', 31, 21, 24, 0, 7, 0, 1, 90, 90, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21477157, 0, 173, 169, 133965, 0, 0, 0, -1, -1, 0, 0, 6, 2, 3, 9, 0, 1, 4),
(54, 'Harlatsak', 61, 21, 72, 50, 4, 0, 0, 100, 10, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21443984, 0, 121, 306, 283277, 0, 0, 0, -1, -1, 1, 0, 13, 16, 1, 9, 0, 0, 0),
(56, 'Razak', 0, 9, 2, -21, 4, 20, 2, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21443543, 0, 328, 307, 98751, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 19, 0, 0, 0),
(58, 'Tiram', 6, 11, 26, 0, 20, 58, 0, 100, 50, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21443611, 0, 174, 284, 256375, 0, 0, 0, 40, 50, 1, 1, 30, 0, 0, 3, 17, 4, 0),
(60, 'Filsigur', 115, 129, 75, 2, 121, 41, 0, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21465204, 0, 271, 317, 378094, 0, 0, 0, -1, -1, 1, 1, 111, 0, 0, 1, 11, 0, 10),
(62, 'Taras Bale', 33, 32, -2, 0, 0, 18, 0, 100, 50, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21443753, 0, 154, 264, 43670, 0, 0, 1, 100, 100, 1, 1, 5, 3, 13, 0, 0, 0, 0),
(65, 'Rhaghenst', 54, 31, 10, 24, 5, 0, 2, 100, 40, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21475757, 0, 108, 110, 24561, 0, 0, 1, -1, -1, 1, 0, 14, 11, 0, 3, 0, 0, 0),
(67, 'Cyrielle', 22, 24, 2, 12, 0, 14, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21448252, 0, 36, 211, 295530, 0, 0, 0, 50, 50, 0, 1, 16, 0, 4, 0, 4, 0, 0),
(68, 'Caline', 0, 22, 0, 149, 123, 237, 3, 70, 20, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21548781, 0, 125, 202, 293241, 0, 0, 1, 30, 30, 1, 0, 38, 5, 0, 6, 2, 1, 13),
(69, 'Kylar des Ombres', 127, 128, 68, 87, 42, 6, 0, 90, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21449925, 0, 163, 258, 435086, 0, 0, 1, -1, -1, 1, 1, 90, 0, 0, 17, 0, 0, 0),
(70, 'Phylas', 153, 166, 22, -8, 68, 0, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21445208, 0, 193, 213, 265025, 0, 0, 0, 50, 50, 0, 0, 11, 5, 0, 24, 0, 0, 0),
(73, 'Philego Rah', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21464125, 0, 164, 187, 112937, 0, 0, 0, -1, -1, 1, 1, 0, 9, 0, 7, 0, 0, 0),
(76, 'Katrickan', 83, 31, 16, 65, 19, 69, 2, 100, 30, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21444256, 0, 152, 208, 190638, 0, 0, 0, 20, 50, 0, 0, 7, 8, 0, 7, 1, 2, 3),
(77, 'Kaya', 118, 54, 119, 66, 15, 0, 0, 100, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21491628, 0, 68, 219, 185090, 0, 0, 0, -1, -1, 1, 1, 15, 3, 7, 3, 0, 5, 2),
(78, 'Athanase', 46, 91, 9, 74, 29, 18, 4, 80, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21446662, 0, 177, 219, 286396, 0, 0, 0, -1, -1, 1, 1, 11, 0, 6, 0, 0, 0, 13),
(79, 'Arteas', 11, 10, 0, 0, 4, 2, 0, 90, 70, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21534441, 0, 109, 162, 208000, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 12, 0, 0),
(84, 'Sycomore', 127, 87, 77, 16, 44, 28, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21454147, 0, 240, 176, 149425, 0, 0, 0, 30, 30, 0, 0, 34, 12, 1, 8, 0, 1, 0),
(95, 'Irkos', 6, 21, 15, 12, 9, 21, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21454100, 0, 103, 117, 222610, 0, 0, 1, -1, -1, 1, 0, 13, 1, 3, 7, 0, 7, 0),
(96, 'Alcyban', 33, 0, 10, 3, 39, 151, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21465344, 0, 147, 73, 259797, 0, 0, 0, 30, 70, 0, 0, 9, 0, 0, 1, 18, 1, 0),
(98, 'Mayssi', 30, 0, 0, 50, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21454203, 0, 166, 114, 235053, 0, 0, 0, 40, 40, 0, 0, 3, 6, 8, 2, 0, 3, 0),
(101, 'Hulricht', 88, 14, 82, 50, 13, 12, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21444031, 0, 179, 275, 270624, 0, 0, 1, 40, 40, 0, 0, 23, 24, 0, 0, 0, 0, 0),
(104, 'Lumy', 49, 32, 78, 50, 16, 0, 0, 100, 80, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21445298, 0, 124, 45, 134130, 0, 0, 0, 20, 20, 0, 0, 1, 8, 0, 2, 0, 0, 0),
(105, 'Agrias', 19, 30, 13, 4, 81, 73, 6, 80, 70, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21444319, 0, 201, 24, 134624, 0, 0, 1, -1, -1, 0, 0, 56, 0, 0, 0, 23, 0, 0),
(108, 'Ladanian', 33, 49, 26, 0, 3, 0, 1, 80, 30, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21447068, 0, 242, 279, 237557, 0, 0, 1, -1, -1, 0, 0, 0, 9, 1, 8, 0, 0, 0),
(111, 'Galahay', 33, 0, 50, 0, 30, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21519008, 0, 176, 199, 84709, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 12, 2, 0, 0),
(112, 'Vrock', 32, 35, 76, 0, 16, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21507658, 0, 377, 101, 103513, 0, 0, 0, -1, -1, 1, 1, 2, 4, 6, 4, 0, 0, 0),
(113, 'Schlemm', 140, 130, 80, 50, 20, 0, 0, 70, 50, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21444383, 0, 226, 241, 253500, 0, 0, 0, 10, 20, 1, 1, 9, 0, 0, 31, 0, 0, 0),
(115, 'Tylert', 28, 2, 0, 0, 0, 0, 0, 70, 20, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21446749, 0, 108, 157, 83791, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 16, 0, 0, 0),
(118, 'Liamalika', 1, 0, 30, 0, 0, 2, 0, 100, 70, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21447206, 0, 120, 99, 166538, 0, 0, 1, -1, -1, 1, 1, 0, 2, 4, 0, 6, 1, 0),
(119, 'Fonua', 72, 64, 50, 0, 17, 6, 0, 80, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21460762, 0, 140, 209, 373006, 0, 0, 0, -1, -1, 0, 1, 10, 0, 5, 8, 0, 0, 0),
(120, 'Zanckten', 13, 43, 10, 77, 28, 27, 0, 100, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21479426, 0, 145, 112, 195682, 0, 0, 1, -1, -1, 1, 0, 2, 2, 6, 0, 2, 1, 6),
(121, 'Dartoil', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21445162, 0, 68, 17, 46593, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 0, 0, 0),
(122, 'Grunwuck', 33, 72, 48, 1, 12, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21466955, 0, 182, 207, 178614, 0, 0, 0, -1, -1, 1, 1, 47, 16, 0, 0, 0, 0, 0),
(124, 'Kayel', 19, 10, 0, 0, 6, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21456454, 0, 170, 224, 158101, 0, 0, 0, -1, -1, 1, 1, 7, 18, 0, 0, 0, 0, 0),
(139, 'Nehkrid', 17, 0, 52, 0, 0, 36, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21510565, 0, 213, 196, 145656, 0, 0, 1, -1, -1, 1, 0, 0, 0, 1, 0, 14, 0, 0),
(140, 'Zronn', 21, 36, 87, 57, 81, 43, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 175, 124, 147529, 0, 0, 0, -1, -1, 1, 0, 20, 0, 0, 19, 1, 2, 0);INSERT INTO `11mar_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(145, 'Ordak', 171, 108, 70, 12, 79, 0, 0, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21454257, 0, 205, 265, 462726, 0, 0, 0, -1, -1, 1, 1, 24, 0, 0, 0, 0, 18, 0),
(146, 'Bartor', 2, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21475215, 0, 99, 67, 88559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 12, 0, 0, 0),
(154, 'Ghassen', 17, 0, 0, 0, 0, 84, 0, 80, 60, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21460032, 0, 209, 78, 165589, 0, 0, 0, 30, 60, 0, 0, 2, 0, 0, 17, 0, 0, 0),
(180, 'Lydian', 28, 4, 2, -6, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 112, 411, 256732, 0, 0, 0, -1, -1, 1, 1, 0, 1, 9, 0, 1, 0, 0),
(181, 'Gullfaxio', 5, 13, 4, 6, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21459700, 0, 118, 83, 120390, 0, 0, 0, -1, -1, 1, 1, 4, 11, 0, 0, 0, 0, 0),
(189, 'Braal', 104, 82, 13, 0, 5, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21471564, 0, 55, 92, 200417, 0, 0, 0, -1, -1, 1, 1, 4, 4, 1, 4, 0, 3, 0),
(191, 'Gwenlf', -6, 36, 45, 7, -5, 14, 4, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21562350, 0, 87, 206, 569811, 0, 0, 0, -1, -1, 1, 1, 11, 1, 5, 9, 1, 0, 1),
(196, 'Harold', 61, 30, 10, 32, 13, 0, 0, 100, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21483532, 0, 125, 151, 128172, 0, 0, 1, -1, -1, 1, 1, 10, 5, 4, 0, 1, 0, 0),
(197, 'Daell', 29, 57, 15, 6, 0, 0, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21453811, 0, 89, 67, 86966, 0, 0, 1, -1, -1, 1, 1, 2, 1, 0, 10, 2, 1, 0),
(203, 'Nomad', 44, 10, 36, 0, 10, 0, 0, 90, 80, 1, 'République', 'Thassopole', '', 'Aucune', 21551906, 0, 152, 98, 123812, 0, 0, 1, -1, -1, 0, 0, 0, 8, 0, 5, 0, 0, 0),
(223, 'Zar`Kull', 21, 27, 17, -17, 101, 77, 0, 80, 70, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21456502, 0, 187, 35, 187383, 0, 0, 1, 10, 40, 0, 0, 34, 0, 0, 23, 0, 0, 0),
(236, 'Aelindel', 50, 38, 90, 99, 0, 0, 8, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21458575, 0, 114, 268, 344045, 0, 0, 0, -1, -1, 1, 0, 26, 0, 0, 11, 0, 0, 16),
(239, 'Demetron', 3, 9, 5, 0, 19, 31, 0, 80, 30, 1, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21460075, 0, 84, 122, 443987, 0, 0, 1, -1, -1, 1, 0, 19, 0, 0, 0, 16, 0, 0),
(240, 'Myos', 11, 8, 55, 51, 64, 31, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21514917, 0, 85, 56, 264041, 0, 0, 1, -1, -1, 0, 0, 5, 0, 0, 0, 0, 0, 0),
(242, 'Agathocles', -4, 6, 30, 54, 56, 98, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21461623, 0, 97, 61, 133520, 0, 0, 0, 30, 30, 0, 0, 22, 0, 0, 11, 1, 2, 1),
(250, 'Vezk', 96, 69, 30, 0, 3, 0, 0, 100, 70, 0, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21464819, 0, 121, 214, 92344, 0, 0, 0, -1, -1, 1, 0, 0, 10, 7, 0, 0, 0, 0),
(253, 'Aldeas', 6, 0, 53, 3, 57, 76, 0, 80, 70, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21465596, 0, 165, 76, 112314, 0, 0, 0, 20, 50, 1, 0, 8, 0, 0, 4, 9, 4, 0),
(255, 'Kabidoui&iuml;e', 17, 9, 45, 0, 3, 12, 0, 100, 90, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21468190, 0, 82, 89, 296117, 0, 0, 0, -1, -1, 1, 1, 2, 2, 1, 8, 0, 1, 1),
(261, 'Azraeg', 25, 53, 0, 12, 38, 27, 0, 70, 20, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21606740, 0, 106, 72, 194968, 0, 0, 1, 30, 40, 0, 0, 9, 0, 0, 0, 1, 18, 0),
(271, 'Agranos', 107, 43, 53, 0, 3, 0, 0, 100, 10, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21468393, 0, 151, 126, 220964, 0, 0, 0, -1, -1, 1, 1, 0, 5, 6, 3, 0, 2, 1),
(273, 'Katell', 23, 11, 74, 59, 14, 20, 0, 100, 90, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21490773, 0, 62, 98, 251224, 0, 0, 0, 10, 20, 0, 1, 41, 3, 0, 0, 11, 1, 1),
(275, 'Cyanea', 13, 74, 0, 0, 34, 0, 0, 70, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21490218, 0, 53, 20, 129265, 0, 0, 0, 10, 10, 1, 1, 0, 4, 0, 0, 0, 0, 0),
(285, 'Nebkan', 73, 30, 101, 111, 47, 45, 0, 60, 30, 0, 'République', 'Thassopole', '', 'Aucune', 21472541, 0, 88, 171, 399781, 0, 0, 0, 60, 60, 1, 0, 181, 19, 1, 4, 0, 0, 4),
(288, 'Gorano', 32, 10, 0, 0, 5, 69, 2, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21501876, 0, 40, 67, 192969, 0, 0, 0, -1, -1, 1, 1, 11, 2, 0, 2, 5, 0, 0),
(291, 'Ashinseika', 31, 1, -4, -10, 43, 0, 0, 70, 40, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21471696, 0, 126, 72, 262243, 0, 0, 0, -1, -1, 1, 0, 2, 2, 0, 2, 16, 1, 0),
(322, 'Yodine', -5, 18, 2, 2, 22, 25, 5, 70, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21485879, 0, 58, 129, 173203, 0, 0, 0, 40, 40, 1, 1, 17, 2, 8, 1, 3, 0, 3),
(324, 'Enilia', 5, 3, 16, 0, 0, 0, 0, 80, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21481029, 0, 96, 75, 166872, 0, 0, 0, -1, -1, 0, 1, 0, 0, 0, 16, 0, 0, 0),
(331, 'Kalash Von Divynisos', 3, 0, 40, 12, 0, 0, 0, 100, 50, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21486253, 0, 82, 63, 201032, 0, 0, 0, -1, -1, 1, 0, 0, 3, 1, 4, 1, 0, 0),
(341, 'Alrik', 40, 59, 43, 50, 5, 0, 4, 100, 10, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21485460, 0, 49, 115, 255898, 0, 0, 0, -1, -1, 1, 1, 25, 0, 14, 0, 0, 0, 0),
(342, 'Malrick', 1, 0, 0, 3, 0, 2, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21484742, 0, 79, 64, 66458, 0, 0, 0, -1, -1, 1, 1, 1, 0, 11, 0, 0, 0, 0),
(343, 'Dinendal Alcarin', 63, 29, 14, 12, 4, 0, 2, 70, 10, 1, 'Magocracie', 'Mésolongion', '', 'Aucune', 21612053, 0, 115, 181, 143411, 0, 0, 1, 20, 70, 0, 0, 18, 3, 2, 1, 2, 2, 2),
(357, 'Azhaag', 4, 35, 28, 27, 76, 55, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21491361, 0, 178, 9, 157517, 0, 0, 0, 40, 60, 1, 0, 60, 0, 0, 0, 4, 11, 0),
(363, 'Essyr', 3, 12, 30, 0, 0, 0, 0, 100, 10, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21514179, 0, 66, 90, 225020, 0, 0, 1, -1, -1, 1, 1, 1, 6, 1, 1, 1, 3, 0),
(365, 'Amendel Genfaluin', 26, 2, 0, -6, 0, 0, 0, 60, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 73, 91, 82709, 0, 0, 0, -1, -1, 1, 1, 0, 4, 1, 0, 2, 3, 0),
(382, 'Elm', 79, 73, 146, 143, 3, 6, 0, 90, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21501702, 0, 159, 94, 514187, 0, 0, 0, 10, 60, 1, 0, 13, 8, 0, 30, 0, 0, 0),
(386, 'Magax', 6, 0, 3, 64, 84, 138, 2, 80, 80, 0, 'Autarcie', 'Aucune', '', 'Aucune', 21520047, 0, 266, 92, 121106, 0, 0, 0, 50, 50, 0, 0, 29, 0, 0, 0, 0, 22, 0),
(387, 'Lirielle', 6, 0, 10, 64, 59, 76, 0, 50, 10, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21500457, 0, 93, 50, 135673, 0, 0, 1, 10, 10, 0, 0, 1, 0, 0, 0, 8, 7, 0),
(389, 'Fletiaz', 6, 2, 0, 3, 5, 48, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21508084, 0, 50, 76, 197973, 0, 0, 0, -1, -1, 1, 1, 18, 0, 0, 0, 5, 0, 2),
(392, 'Ashakars', 24, 11, 2, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21606780, 0, 49, 67, 314080, 0, 0, 0, -1, -1, 1, 1, 6, 4, 0, 5, 0, 0, 0),
(415, 'Arkatris', 117, 37, 65, 0, 15, 0, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21525072, 0, 85, 77, 291713, 0, 0, 0, -1, -1, 1, 1, 49, 0, 19, 0, 0, 0, 0),
(419, 'Boone', 74, 28, 59, 6, 16, 0, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21620133, 0, 128, 105, 316949, 0, 0, 1, -1, -1, 1, 0, 2, 15, 0, 5, 0, 0, 0),
(431, 'Meissner', 68, 80, 51, 50, 33, 0, 2, 100, 20, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21510468, 0, 133, 233, 280652, 0, 0, 1, -1, -1, 1, 0, 88, 18, 0, 0, 0, 0, 0),
(435, 'Khamos', 16, 20, 17, 83, 4, 14, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21510604, 0, 68, 132, 134483, 0, 0, 0, -1, -1, 1, 0, 7, 0, 0, 0, 0, 0, 12),
(437, 'Gragasi', 0, 4, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21513389, 0, 61, 74, 37313, 0, 0, 0, -1, -1, 1, 1, 0, 9, 0, 0, 0, 0, 0),
(445, 'Hyke', 16, 22, 2, 0, 7, 95, 0, 80, 80, 0, 'Gérontocratie', 'Etimnon', '', 'Luminas', 21544753, 0, 74, 69, 288776, 0, 0, 0, -1, -1, 0, 0, 16, 0, 0, 0, 17, 0, 0),
(449, 'Laethil', 203, 78, 111, 101, 123, 12, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21515791, 0, 201, 154, 368374, 0, 0, 0, 10, 20, 1, 0, 12, 20, 0, 6, 0, 0, 0),
(458, 'Mahrynn', 24, 30, 33, 12, 29, 32, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Les Scribes de Mésolongion', 21517587, 0, 114, 109, 206814, 0, 0, 0, -1, -1, 1, 0, 2, 9, 7, 0, 0, 0, 0),
(463, 'B&eacute;liaros', 69, 1, 95, 0, 13, 13, 2, 100, 70, 1, 'Anarchie', 'Prévèze', '', 'Aucune', 21594901, 0, 77, 93, 329535, 0, 0, 1, -1, -1, 0, 0, 7, 8, 0, 4, 0, 0, 4),
(468, 'Bolas', 138, 138, -5, 50, 82, 0, 0, 100, 30, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21520550, 0, 143, 85, 230000, 0, 0, 1, 40, 40, 1, 0, 43, 21, 0, 0, 0, 0, 0),
(474, 'Mal`hac', 23, 19, -10, 12, 0, 0, 0, 80, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21537542, 0, 60, 70, 615681, 0, 0, 0, 50, 50, 1, 1, 1, 1, 0, 8, 0, 0, 0),
(475, 'Goupille', 20, 7, -10, 1, 0, 0, 2, 100, 10, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21531096, 0, 53, 68, 97818, 0, 0, 0, 50, 80, 1, 0, 3, 7, 1, 0, 0, 0, 0);INSERT INTO `11mar_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(478, 'Tirandilis', 0, 0, 50, 0, 0, 0, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21523134, 0, 121, 61, 217480, 0, 0, 1, 30, 30, 1, 0, 5, 0, 0, 16, 0, 0, 0),
(482, 'Dundragon', 17, 6, 14, 0, 6, 0, 1, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21542208, 0, 61, 26, 153042, 0, 0, 0, -1, -1, 1, 1, 0, 1, 3, 6, 0, 1, 0),
(485, 'Eleanora', 1, 16, 0, 53, 19, 52, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21524785, 0, 81, 50, 261826, 0, 0, 1, -1, -1, 1, 1, 0, 3, 0, 0, 12, 0, 0),
(486, 'Zaseo', 91, 92, 63, 50, 13, 6, 2, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21530422, 0, 147, 58, 198915, 0, 0, 0, -1, -1, 1, 1, 30, 19, 0, 0, 0, 0, 0),
(493, 'Belerion', 41, 18, 32, 18, 38, 70, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 73, 102, 274837, 0, 0, 0, -1, -1, 1, 1, 9, 22, 0, 1, 0, 0, 0),
(501, 'Morgjin', 4, 46, 24, 71, 69, 48, 4, 100, 90, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21638712, 0, 76, 18, 260372, 0, 0, 0, 10, 30, 1, 1, 157, 0, 0, 1, 0, 5, 9),
(502, 'Elemaster', 18, 11, 37, 0, 9, 17, 0, 90, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21530369, 0, 46, 67, 242974, 0, 0, 1, 20, 50, 1, 0, 4, 0, 5, 4, 1, 0, 0),
(504, 'Aldramech Sarabhan', -4, 11, 55, 43, 79, 121, 0, 100, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21530521, 0, 230, 97, 158946, 0, 0, 0, 30, 30, 0, 0, 65, 0, 0, 22, 0, 0, 0),
(512, 'Damarya', 2, 9, 0, 3, 4, 4, 6, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21596601, 0, 67, 63, 528602, 0, 0, 1, -1, -1, 1, 1, 13, 1, 1, 6, 6, 0, 0),
(513, 'Arth&eacute;on', 16, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21560267, 0, 22, 76, 17221, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 2, 0, 2, 0),
(516, 'Nicci', 0, 14, 0, 26, 33, 8, 2, 100, 90, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21539343, 0, 67, 53, 219022, 0, 0, 0, -1, 30, 1, 0, 6, 0, 1, 11, 0, 1, 0),
(521, 'Reyson', 15, 30, 0, 3, 0, 65, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 62, 29, 50476, 0, 0, 0, -1, -1, 1, 0, 5, 0, 8, 5, 0, 0, 0),
(526, 'Celithrand', 34, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 33, 45, 121749, 0, 0, 0, -1, -1, 1, 1, 0, 5, 0, 0, 0, 3, 0),
(527, 'Darcia', 14, 0, 48, 3, 53, 25, 5, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21555178, 0, 149, 71, 235927, 0, 0, 0, 20, 50, 0, 1, 74, 1, 1, 2, 2, 3, 5),
(558, 'Jeor', 3, 0, 0, 0, 0, 0, 0, 100, 10, 1, 'Oligarchie', 'Édhesse', '', 'Aucune', 21550674, 0, 99, 67, 230003, 0, 0, 1, -1, -1, 1, 1, 0, 0, 8, 0, 0, 6, 0),
(561, 'Kadavre', 11, 2, 0, 3, 0, 2, 0, 100, 10, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21618041, 0, 57, 47, 152982, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(564, 'Malikarn', 77, 88, 30, 0, 65, 18, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21578004, 0, 133, 62, 375158, 0, 0, 0, 30, 70, 0, 1, 0, 5, 5, 4, 0, 1, 0),
(565, 'Dalan', 2, 11, 11, 50, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Aucune', 21550625, 0, 162, 90, 188946, 0, 0, 0, 20, 40, 1, 0, 380, 9, 0, 8, 0, 0, 0),
(571, 'Bulrug', 63, 37, 16, 0, 28, 0, 2, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 99, 60, 213992, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 15, 0, 0, 0),
(579, 'Castelluli', 33, 21, 10, 0, 3, 16, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 66, 20, 97612, 0, 0, 0, -1, -1, 1, 1, 1, 0, 0, 11, 0, 0, 0),
(584, 'Magnus', 16, 0, 0, 1, 7, 20, 2, 70, 50, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21570738, 0, 102, 58, 194319, 0, 0, 1, 60, 60, 0, 0, 3, 0, 0, 0, 12, 0, 0),
(585, 'Theobald', 96, 66, 35, 62, 10, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21560811, 0, 44, 40, 139276, 0, 0, 0, -1, -1, 1, 1, 7, 2, 0, 9, 0, 0, 2),
(589, 'Han Bal', 89, 71, 13, 32, 15, 0, 0, 70, 60, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21560791, 0, 76, 30, 266368, 0, 0, 0, -1, -1, 1, 0, 29, 0, 0, 3, 0, 6, 0),
(594, 'Klamhan', 17, 0, 22, 0, 0, 6, 0, 100, 80, 0, 'Gérontocratie', 'Amphise', '', 'Vae Victis', 21582570, 0, 80, 32, 211556, 0, 0, 0, -1, -1, 1, 1, 4, 0, 5, 0, 1, 7, 0),
(596, 'Jacques Skellinou', 124, 94, 171, 58, 26, 0, 0, 70, 50, 0, 'République', 'Thassopole', '', 'Les Disciples de l`Eternel', 21561737, 0, 193, 69, 175284, 0, 0, 1, 30, 40, 0, 0, 1679, 1, 0, 7, 0, 0, 8),
(598, 'Oldoron', 18, 8, 0, 12, 6, 28, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21563483, 0, 116, 25, 108787, 0, 0, 0, -1, 30, 1, 1, 10, 0, 8, 0, 0, 0, 0),
(601, 'Gael', 2, 4, 0, 0, 0, 0, 0, 100, 100, 1, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21572149, 0, 45, 45, 182522, 0, 0, 1, -1, -1, 1, 1, 1, 6, 0, 0, 2, 0, 0),
(604, 'Goundrak', 40, 35, 0, 0, 3, 0, 0, 100, 20, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21576585, 0, 53, 38, 153114, 0, 0, 0, -1, -1, 1, 1, 2, 10, 0, 0, 0, 0, 0),
(606, 'Crios', 16, 10, 0, 24, 3, 20, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21570812, 0, 44, 32, 320971, 0, 0, 1, -1, -1, 1, 0, 0, 0, 2, 5, 1, 2, 2),
(608, 'Rowenda', 5, 0, 0, 3, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 53, 38, 165998, 0, 0, 0, -1, -1, 1, 0, 5, 0, 3, 3, 2, 0, 0),
(611, 'Marsys', 20, 10, 16, 2, 10, 0, 5, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 39, 44, 349380, 0, 0, 1, -1, -1, 1, 1, 5, 3, 3, 3, 0, 0, 0),
(614, 'Bibble', 27, 18, -10, 12, 0, 0, 0, 80, 70, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21646895, 0, 50, 61, 128732, 0, 0, 1, 30, 30, 0, 1, 0, 0, 1, 0, 7, 3, 0),
(618, 'Ymir', 18, 12, 14, 65, 0, 0, 1, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21568817, 0, 53, 46, 202436, 0, 0, 0, -1, -1, 0, 0, 6, 3, 2, 1, 0, 0, 0),
(623, 'Sartibule', 92, 69, 30, 0, 24, 0, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21570665, 0, 74, 86, 173624, 0, 0, 0, -1, -1, 1, 1, 5, 0, 14, 4, 0, 0, 0),
(628, 'Oryanna', 62, 35, 33, 51, 26, 6, 7, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21575777, 0, 72, 18, 118594, 0, 0, 0, -1, -1, 1, 0, 4, 4, 0, 3, 0, 3, 0),
(637, 'Thistos', 17, 2, 14, 12, 0, 0, 1, 80, 60, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21579371, 0, 38, 34, 239743, 0, 0, 0, -1, -1, 1, 1, 7, 5, 4, 0, 1, 0, 0),
(638, 'Harnas', 21, 4, 0, 15, 20, 33, 0, 100, 90, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21576372, 0, 59, 21, 247212, 0, 0, 0, 20, 70, 0, 0, 16, 3, 0, 4, 5, 1, 0),
(643, 'Ordinn', 24, 49, 0, 30, 0, 34, 0, 100, 40, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21589582, 0, 75, 27, 363743, 0, 0, 0, 40, 70, 1, 0, 5, 4, 5, 1, 5, 0, 1),
(644, 'Khiran', 31, 12, 0, 12, 0, 16, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21575352, 0, 64, 62, 390334, 0, 0, 0, -1, -1, 1, 1, 7, 7, 3, 0, 0, 0, 0),
(651, 'Hawkys', 2, 2, 0, 0, 0, 23, 0, 100, 100, 0, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21619715, 0, 57, 39, 283090, 0, 0, 0, -1, -1, 1, 1, 3, 0, 0, 1, 4, 2, 0),
(654, 'Chitcat', 0, 4, 0, 3, 0, 0, 0, 50, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21587182, 0, 19, 23, 264184, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 0, 1, 1, 0),
(655, 'Sansst', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21638383, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(660, 'Valt&eacute;ri', 49, 9, 24, 52, 11, 0, 4, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21579627, 0, 41, 14, 196341, 0, 0, 0, -1, -1, 1, 1, 28, 8, 0, 0, 0, 0, 0),
(661, 'Gharnohk', 14, 17, 33, 3, 12, 46, 0, 70, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 69, 36, 339431, 0, 0, 1, 40, 40, 0, 0, 4, 3, 0, 1, 6, 0, 0),
(666, 'Yzeute', 2, 10, 0, 0, 0, 0, 0, 80, 80, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21582721, 0, 62, 52, 369696, 0, 0, 0, -1, -1, 1, 1, 0, 3, 2, 0, 1, 3, 0),
(669, 'Ashut', 18, 2, 14, 0, 4, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21587899, 0, 43, 25, 221848, 0, 0, 0, -1, -1, 1, 1, 1, 0, 4, 0, 0, 4, 0),
(671, 'Zulema', 84, 146, 47, 95, 36, 0, 1, 90, 60, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21583758, 0, 107, 59, 497010, 0, 0, 0, 40, 40, 0, 0, 46, 0, 0, 21, 0, 0, 0),
(673, 'Griffith', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21586512, 0, 31, 28, 113582, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 3, 0, 0, 0),
(674, 'Onacona', 4, 2, 19, 0, 9, 4, 0, 60, 30, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21586310, 0, 160, 14, 137806, 0, 0, 0, 30, 30, 0, 0, 22, 2, 0, 0, 13, 0, 0),
(683, 'Karann', 20, 17, 24, 14, 13, 6, 0, 100, 90, 0, 'République', 'Thassopole', '', 'Aucune', 21589001, 0, 84, 82, 510178, 0, 0, 0, -1, -1, 1, 0, 4, 0, 7, 0, 0, 5, 0),
(685, 'Zacharias', 75, 47, 0, 21, 59, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21589483, 0, 43, 21, 234659, 0, 0, 0, -1, -1, 1, 1, 13, 3, 5, 0, 0, 3, 0);INSERT INTO `11mar_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(687, 'Vordamass', 19, 30, 63, 40, 15, 6, 0, 100, 10, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21611578, 0, 50, 38, 314752, 0, 0, 0, -1, -1, 1, 0, 70, 0, 1, 12, 0, 0, 0),
(688, 'Lyonis', 104, 48, -10, 74, 29, 12, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21588372, 0, 56, 17, 229956, 0, 0, 1, 30, 50, 0, 0, 9, 0, 4, 6, 0, 0, 2),
(691, 'Dantz', 30, 6, 2, -5, 0, 0, 2, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21605337, 0, 2, 26, 69243, 0, 0, 0, -1, -1, 1, 1, 0, 3, 1, 0, 0, 2, 0),
(700, 'Warenya Fahle', 8, 2, 0, 1, 5, 46, 2, 70, 70, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21591208, 0, 21, 25, 376081, 0, 0, 0, -1, -1, 1, 1, 0, 2, 3, 0, 2, 3, 1),
(703, 'Azarath', 32, 3, 0, 50, 0, 0, 0, 70, 60, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21591206, 0, 26, 18, 164685, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 2, 0, 0, 4),
(704, 'Risnak', 1, 0, 0, 12, 0, 2, 0, 80, 80, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21605564, 0, 48, 13, 132670, 0, 0, 0, -1, -1, 1, 1, 0, 8, 0, 0, 0, 1, 0),
(705, 'Grumpf', 41, 23, 16, 40, 4, 0, 3, 100, 10, 0, 'République', 'Thassopole', '', 'Aucune', 21594002, 0, 53, 65, 465355, 0, 0, 0, -1, -1, 1, 1, 12, 0, 0, 0, 0, 0, 6),
(706, 'Hakra', 50, 39, -10, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 34, 27, 197810, 0, 0, 0, -1, -1, 1, 1, 0, 9, 0, 0, 0, 0, 0),
(707, 'Kograh', 0, 9, 3, 87, 58, 8, 4, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21595170, 0, 25, 12, 201418, 0, 0, 1, 60, 60, 0, 0, 90, 0, 0, 0, 8, 0, 0),
(708, 'Algar', 14, 8, 3, 3, 43, 16, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21614144, 0, 29, 26, 305400, 0, 0, 0, -1, -1, 1, 1, 1, 0, 7, 0, 1, 1, 0),
(715, 'Krugerr', 2, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 5, 10, 68040, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 1, 0),
(718, 'Umbre', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21598164, 0, 11, 28, 41400, 0, 0, 1, -1, -1, 1, 1, 0, 0, 2, 0, 2, 1, 0),
(720, 'Burgrok Brise`Fer', 75, 47, 76, 53, 24, 0, 0, 100, 70, 0, 'République', 'Thassopole', '', 'Aucune', 21598050, 0, 58, 21, 403502, 0, 0, 0, -1, -1, 0, 0, 3, 4, 1, 10, 0, 0, 0),
(730, 'Yglora', 16, 2, 0, 50, 0, 45, 0, 100, 70, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21616407, 0, 60, 15, 221258, 0, 0, 0, -1, -1, 1, 0, 4, 0, 0, 0, 10, 0, 0),
(731, 'Zoltan', 7, 40, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 38, 35, 102048, 0, 0, 0, -1, -1, 1, 1, 1, 2, 2, 3, 0, 0, 0),
(732, 'Gruck', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21600474, 0, 24, 18, 96549, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 5, 0, 0, 0),
(733, 'Hijen', 46, 47, 72, 0, 0, 0, 1, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 54, 30, 143437, 0, 0, 0, 30, 40, 0, 1, 41, 0, 2, 9, 0, 0, 0),
(734, 'Jaeregan', 19, 11, 117, 16, 3, 6, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21644487, 0, 93, 17, 193971, 0, 0, 0, 10, 30, 0, 0, 0, 0, 0, 15, 0, 0, 0),
(736, 'Djikokou', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 13, 30, 21158, 0, 0, 0, -1, -1, 1, 1, 0, 0, 3, 0, 0, 0, 0),
(745, 'Cresodurs', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(746, 'Charlysub', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(750, 'Anadyomene', 1, 6, 0, 0, 6, 2, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21623651, 0, 23, 14, 153354, 0, 0, 0, 40, 50, 1, 0, 0, 0, 0, 0, 0, 6, 0),
(751, 'Sorvahn', 3, 2, 0, 0, 0, 0, 0, 70, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 77, 28, 227514, 0, 0, 0, -1, -1, 1, 0, 0, 7, 0, 0, 0, 0, 0),
(752, 'Agito', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 17840, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(758, 'Skanhs', 40, 23, 14, 0, 4, 0, 1, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21617368, 0, 73, 28, 351203, 0, 0, 1, 60, 60, 0, 0, 6, 7, 0, 0, 0, 0, 0),
(760, 'Orga', 20, 9, -10, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21610996, 0, 21, 24, 207865, 0, 0, 0, -1, -1, 1, 1, 0, 4, 0, 1, 0, 0, 0),
(761, 'Yarl Baudig', 18, 2, 0, 62, 0, 14, 0, 100, 100, 1, 'Anarchie', 'Prévèze', '', 'L`Union des Titans', 21612177, 0, 35, 35, 491725, 0, 0, 1, 50, 90, 1, 1, 7, 1, 0, 2, 1, 0, 1),
(762, 'Shooky', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(763, 'Darzang', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(765, 'Herubanmik', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(767, 'Kylordion', 31, 2, 30, 0, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21623926, 0, 87, 29, 470224, 0, 0, 0, 30, 40, 0, 1, 2, 4, 0, 7, 0, 0, 0),
(768, 'Tharoze', 3, 2, 0, 0, 0, 2, 0, 100, 100, 1, 'Despotisme', 'Naxos', '', 'Pour un Empire Neuf', 21613911, 0, 44, 23, 179927, 0, 0, 1, -1, -1, 1, 1, 1, 2, 2, 0, 2, 1, 0),
(769, 'Xeohrod', 1, 0, 0, 1, 0, 2, 2, 70, 100, 1, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21616638, 0, 54, 26, 309766, 0, 0, 1, 50, 100, 0, 0, 2, 0, 1, 2, 2, 1, 0),
(770, 'Mendrake', 22, 23, -10, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21616528, 0, 51, 17, 177938, 0, 0, 0, -1, -1, 1, 1, 2, 4, 1, 2, 0, 0, 0),
(771, 'Umassi', 0, 11, 0, 54, 6, 23, 2, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21614006, 0, 57, 15, 134833, 0, 0, 0, 30, 30, 1, 0, 5, 0, 0, 0, 0, 8, 0),
(772, 'Infilz', 5, 0, 0, 12, 0, 4, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 61, 36, 388137, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 4, 0, 2),
(774, 'Treleg', 85, 131, 0, 0, 65, 0, 4, 100, 70, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21613491, 0, 71, 5, 214448, 0, 0, 1, 20, 30, 0, 0, 4, 7, 0, 4, 0, 1, 0),
(775, 'Il&eacute;anor', 21, 17, 46, 13, 13, 0, 2, 100, 10, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 58, 24, 178810, 0, 0, 1, -1, -1, 1, 0, 1, 0, 0, 8, 0, 0, 0),
(777, 'Invoj', 16, 0, 0, 3, 4, 14, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21645750, 0, 55, 11, 175814, 0, 0, 1, 40, 80, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(778, 'Zijft', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(779, 'Hijacinthe', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(780, 'Monoro', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(782, 'D&eacute;sacre', 2, 8, 31, 0, 6, 0, 0, 100, 100, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616732, 0, 40, 7, 121678, 0, 0, 1, -1, -1, 1, 0, 1, 0, 0, 6, 0, 0, 0),
(784, 'Jade', 2, 4, 0, 1, 0, 23, 4, 80, 80, 0, 'Régime Tribal', 'Igoumen', '', 'Les Marcheurs des Ombres', 21616851, 0, 44, 12, 87887, 0, 0, 0, 70, 70, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(787, 'Lhito', 1, 0, 0, 50, 0, 2, 0, 100, 100, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21619839, 0, 40, 7, 176945, 0, 0, 1, -1, -1, 0, 1, 0, 1, 2, 3, 0, 0, 0),
(788, 'Mordjane', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(790, 'Neveda', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(791, 'Demolischors', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(792, 'Dhorlyn', 3, 2, 0, 0, 0, 0, 0, 80, 20, 0, 'République', 'Thassopole', '', 'Aucune', 21620049, 0, 21, 26, 75826, 0, 0, 1, -1, -1, 1, 0, 3, 0, 0, 2, 0, 0, 0),
(793, 'Darfankettle', 2, 0, 0, 0, 0, 4, 0, 60, 70, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21628535, 0, 23, 7, 208025, 0, 0, 1, 70, 70, 1, 1, 1, 0, 2, 0, 1, 1, 0),
(794, 'Ratatalk', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21189, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0);INSERT INTO `11mar_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(795, 'Halambare', 35, 10, 2, 3, 10, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 35, 15, 161608, 0, 0, 0, 50, 50, 0, 1, 3, 0, 1, 0, 0, 0, 5),
(796, 'LyrboOss', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(797, 'Qatrisk', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(798, 'Valhorn', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(799, 'Shaynnat', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(800, 'Clemahil', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(801, 'Belenora', 1, 2, 0, 0, 0, 2, 0, 50, 30, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21628004, 0, 35, 8, 255991, 0, 0, 0, 70, 70, 0, 1, 0, 4, 0, 0, 2, 0, 2),
(802, 'Astaldoram', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(803, 'Maikailh', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(804, 'Lesteur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(805, 'Prolor', 21, 4, 26, 3, 0, 0, 0, 80, 90, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21638804, 0, 50, 22, 185103, 0, 0, 0, -1, 100, 0, 0, 0, 3, 0, 1, 0, 1, 2),
(806, 'Kogisett', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 4, 20, 41070, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 0, 0, 0),
(807, 'Bloodchedt', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(808, 'Mercolothion', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21630144, 0, 9, 11, 105795, 0, 0, 0, -1, -1, 1, 1, 0, 1, 1, 0, 1, 0, 0),
(815, 'Dakurjia', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23580, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(816, 'Ruddax', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Amphise', '', 'Aucune', 21630788, 0, 6, 4, 71572, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(818, 'Sindatal', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21630019, 0, 5, 5, 48087, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(819, 'Malmos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 21993, 0, 0, 0, -1, -1, 1, 1, 0, 0, 1, 0, 0, 0, 0),
(820, 'Yannslath', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23580, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(821, 'Solemyr', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 24, 7, 127616, 0, 0, 0, -1, -1, 1, 0, 0, 0, 0, 2, 0, 1, 1),
(822, 'Oedarn', 32, 0, 2, 0, 0, 0, 0, 60, 60, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21629987, 0, 9, 10, 190489, 0, 0, 0, -1, -1, 1, 0, 3, 4, 0, 0, 0, 0, 0),
(823, 'Narmacilis', 33, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 23, 2, 95947, 0, 0, 1, -1, -1, 1, 0, 0, 4, 0, 0, 0, 0, 0),
(825, 'Jijona', 1, 0, 0, 95, 0, 2, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 40, 3, 146962, 0, 0, 1, 20, 20, 1, 1, 0, 6, 0, 0, 0, 0, 1),
(828, 'Vaenyel', 1, 0, 0, 0, 0, 2, 0, 100, 100, 0, 'Magocracie', 'Mésolongion', '', 'Aucune', 21648099, 0, 5, 0, 26168, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(829, 'Tiposa', 0, 0, 0, 0, 0, 0, 0, 100, 10, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 15, 3, 77208, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 3),
(831, 'Kennit', 1, 0, 0, 12, 0, 2, 0, 100, 100, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 18, 1, 104868, 0, 0, 1, -1, -1, 1, 1, 0, 0, 0, 3, 0, 0, 0),
(832, 'Krumrarz', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(833, 'Erinal&euml;', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(840, 'Teperek', 3, 2, 0, 0, 0, 0, 0, 50, 20, 1, 'République', 'Thassopole', '', 'Aucune', 21632817, 0, 14, 10, 150145, 0, 0, 1, -1, -1, 1, 1, 0, 0, 1, 0, 0, 2, 0),
(841, 'Braniack', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 17467, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(843, 'Eladriel', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 4, 3, 54481, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 1, 0, 0),
(844, 'Ariban', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(845, 'Jpgeant', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(846, 'Yeldierick', 3, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Gérontocratie', 'Etimnon', '', 'Aucune', 21638465, 0, 30, 0, 155765, 0, 0, 0, -1, -1, 1, 1, 0, 2, 1, 0, 0, 0, 0),
(847, 'Aftergodme', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(848, 'Eragole', 4, 30, 0, 0, 0, 0, 0, 80, 50, 1, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 25, 4, 82403, 0, 0, 1, -1, -1, 1, 1, 2, 0, 1, 0, 0, 3, 0),
(849, 'Elazur', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(850, 'Anarkall', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 559, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(851, 'Mithyav', 2, 0, 0, 0, 0, 0, 0, 80, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21639808, 0, 0, 3, 60576, 0, 0, 0, -1, -1, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(853, 'Morphox', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 24412, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(854, 'Kilars', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(855, 'Virshan', 1, 0, 0, 0, 0, 2, 0, 50, 50, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 23581, 0, 0, 0, 50, 50, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(856, 'Gregoireo', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21642901, 0, 0, 0, 30806, 0, 0, 0, -1, -1, 1, 1, 0, 1, 0, 0, 0, 0, 0),
(857, 'Vaith', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 3, 54549, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(859, 'Olinos', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(860, 'Erkast', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(861, 'Cael', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(862, 'Morriganithil', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(863, 'Katum', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21645241, 0, 10, 0, 50590, 0, 0, 0, -1, -1, 1, 1, 0, 3, 0, 0, 0, 0, 0),
(864, 'Storia', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Les Voyageurs de Kalamaï', 21647469, 0, 0, 0, 36096, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 1),
(865, 'Xeitheus', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);INSERT INTO `11mar_joueurs_bonus_2` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(866, 'Vardahil', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(867, 'Azaar', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Monarchie', 'Vénopole', '', 'Aucune', 21648737, 0, 0, 0, 23646, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0),
(868, 'Cemaure', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0),
(869, 'Devassilien', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Autarcie', 'Aucune', '', 'Aucune', 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 0, 0);



CREATE TABLE `11mar_joueurs_heros_2` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(25) NOT NULL default '',
  `race` varchar(25) NOT NULL default '',
  `classe` varchar(25) NOT NULL default '',
  `dieu` varchar(25) NOT NULL default '',
  `titre` varchar(25) NOT NULL default '',
  `royaume` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL default '0',
  `nb` tinyint(4) NOT NULL default '0',
  `mentor` mediumint(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=870 DEFAULT CHARSET=latin1 AUTO_INCREMENT=870 ;

INSERT INTO `11mar_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(2, 'Alumdil', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de Morte-Vie', 106763, 0, 0),
(3, 'Vibralea', 'Vampire', 'Psioniste', 'Pensée', 'Comtesse', 'de Limitra', 159659, 0, 0),
(4, 'L&eacute;nnih', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'de Drizaste', 75383, 0, 0),
(5, 'Dijun', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Vigrid', 184428, 0, 0),
(8, 'Helmrod', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Norsca', 39749, 0, 0),
(13, 'Aleksander', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Dreize', 188219, 0, 0),
(16, 'Meolas', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'd`Armac', 41765, 0, 0),
(18, 'Darith', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Sammorivas', 43681, 0, 0),
(19, 'Gorak', 'Homme', 'Magicien', 'Pensée', 'Seigneur', 'de la Lumi&egrave;re', 247690, 0, 0),
(30, 'Gaoule', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de la Oule', 128618, 0, 0),
(36, 'Cl&eacute;mentine', 'Homme', 'Barde', 'Chemins', 'Dame', 'de Nortika', 172254, 0, 0),
(43, 'Mund', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'de Lair&aelig;', 95048, 0, 0),
(45, 'Dro&iuml;n Pierre de Feu', 'Nain', 'Marchand', 'Chemins', 'Roi', 'des Mines de la Toura', 180887, 0, 0),
(47, 'Agradok', 'Infernal', 'Démonologiste', 'Maladie', 'Despote', 'de Kodarga', 179414, 0, 0),
(48, 'Harkazam', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'd`Aquinas', 135974, 0, 0),
(53, 'Nak`Amnar', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'd`Eliandir', 159015, 0, 0),
(54, 'Harlatsak', 'Infernal', 'Assassin', 'Mensonge', 'Despote', 'd`Adavodar', 137604, 0, 0),
(56, 'Razak', 'Elfe', 'Prêtre', 'Pensée', 'Conseiller', 'de Keitha', 134517, 0, 0),
(58, 'Tiram', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Horem', 127437, 0, 0),
(60, 'Filsigur', 'Homme', 'Guerrier', 'Chance', 'Seigneur', 'd`Hogarsilgar', 174770, 0, 0),
(62, 'Taras Bale', 'Nain', 'Guerrier', 'Honneur', 'Roi', 'du Mont Vulcain', 56288, 0, 0),
(65, 'Rhaghenst', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Rilith', 47926, 0, 0),
(67, 'Cyrielle', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Cyriella', 92717, 0, 0),
(68, 'Caline', 'Elfe', 'Magicien', 'Pensée', 'Conseillère', 'de la Paix de L`Ame', 260438, 0, 0),
(69, 'Kylar des Ombres', 'Homme', 'Assassin', 'Mort', 'Seigneur', 'de Caenaria', 126971, 0, 0),
(70, 'Phylas', 'Célestial', 'Inquisiteur', 'Honneur', 'Maître', 'de Darian', 139442, 0, 0),
(73, 'Philego Rah', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'de Pihanit', 73996, 0, 0),
(76, 'Katrickan', 'Célestial', 'Inquisiteur', 'Loi', 'Maîtresse', 'des Sept Duch&eacute;s', 168926, 0, 0),
(77, 'Kaya', 'Ancien', 'Assassin', 'Ténèbres', 'Vénérable', 'de Draphuster', 92537, 0, 0),
(78, 'Athanase', 'Minotaure', 'Paladin', 'Loi', 'Seigneur', 'd`Edal&eacute;e', 153280, 0, 0),
(79, 'Arteas', 'Elfe Noir', 'Nécromancien', 'Mort', 'Matriarche', 'de Mirydin', 86702, 0, 0),
(84, 'Sycomore', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'du Bosquet Mill&eacute;naire', 179852, 0, 0),
(95, 'Irkos', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Kalferas', 108503, 0, 0),
(96, 'Alcyban', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Branderuz', 194353, 0, 0),
(98, 'Mayssi', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de M&eacute;none', 98811, 0, 0),
(101, 'Hulricht', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Solesmes', 192261, 0, 0),
(104, 'Lumy', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'd`Anwaman&euml;', 54045, 0, 0),
(105, 'Agrias', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Lormyr', 124333, 0, 0),
(108, 'Ladanian', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Tomlison', 96396, 0, 0),
(111, 'Galahay', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'd`Igounem', 80735, 0, 0),
(112, 'Vrock', 'Homme', 'Archer', 'Chemins', 'Seigneur', 'de Mynrhyn', 69200, 0, 0),
(113, 'Schlemm', 'Orque', 'Barbare', 'Guerre', 'Chef', 'de Lacrymie', 248615, 0, 0),
(115, 'Tylert', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Bazanne', 84913, 0, 0),
(118, 'Liamalika', 'Elfe Noir', 'Nécromancien', 'Mort', 'Matriarche', 'de Silmarols', 91628, 0, 0),
(119, 'Fonua', 'Nain', 'Prêtre', 'Chemins', 'Roi', 'des Grottes d`Armandie', 107135, 0, 0),
(120, 'Zanckten', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Espit', 89279, 0, 0),
(121, 'Dartoil', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Rotergan', 32844, 0, 0),
(122, 'Grunwuck', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'des Plaines Sombres', 83404, 0, 0),
(124, 'Kayel', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'de Kartil&eacute;', 140592, 0, 0),
(139, 'Nehkrid', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Demacia', 137689, 0, 0),
(140, 'Zronn', 'Fée', 'Magicien', 'Magie', 'Intendant', 'de l`Azur&eacute;e', 139789, 0, 0);INSERT INTO `11mar_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(145, 'Ordak', 'Homme', 'Barbare', 'Force', 'Seigneur', 'de la Corne Dor&eacute;e', 136406, 0, 0),
(146, 'Bartor', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Elbartomania', 97610, 0, 0),
(154, 'Ghassen', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Zarzis', 96629, 0, 0),
(180, 'Lydian', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Reveria', 123480, 0, 0),
(181, 'Gullfaxio', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Jotunhe', 55891, 0, 0),
(189, 'Braal', 'Minotaure', 'Guerrier', 'Guerre', 'Seigneur', 'de Sarial', 87347, 0, 0),
(191, 'Gwenlf', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Rolirin', 149762, 0, 0),
(196, 'Harold', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'de Rheaume', 59465, 0, 0),
(197, 'Daell', 'Célestial', 'Paladin', 'Loi', 'Maîtresse', 'de Sucla', 58997, 0, 0),
(203, 'Nomad', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Lethonel', 61301, 0, 0),
(223, 'Zar`Kull', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'de Gor`Mall', 119361, 0, 0),
(236, 'Aelindel', 'Homme', 'Barde', 'Chemins', 'Seigneur', 'd`Imankar', 141573, 0, 0),
(239, 'Demetron', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'de Lande Pourpre', 232260, 0, 0),
(240, 'Myos', 'Homme', 'Nécromancien', 'Mort', 'Dame', 'de Mugis', 195698, 0, 0),
(242, 'Agathocles', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Korok', 107224, 0, 0),
(250, 'Vezk', 'Homme', 'Barbare', 'Guerre', 'Seigneur', 'des Terres Ensanglant&eacute;', 68428, 0, 0),
(253, 'Aldeas', 'Elfe Noir', 'Démonologiste', 'Magie', 'Patriarche', 'de Karabak', 163360, 0, 0),
(255, 'Kabidoui&iuml;e', 'Gnome', 'Voleur', 'Chemins', 'Gouverneur', 'de Schnafon', 111690, 0, 0),
(261, 'Azraeg', 'Célestial', 'Prêtre', 'Pensée', 'Maître', 'de Siomas', 137712, 0, 0),
(271, 'Agranos', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'de Soledor', 89866, 0, 0),
(273, 'Katell', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Ros&euml;ia', 91768, 0, 0),
(275, 'Cyanea', 'Célestial', 'Inquisiteur', 'Loi', 'Maîtresse', 'd`Ocral', 88255, 0, 0),
(285, 'Nebkan', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Khenat', 173952, 0, 0),
(288, 'Gorano', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'd`Hadesisn', 87899, 0, 0),
(291, 'Ashinseika', 'Elfe Noir', 'Psioniste', 'Pensée', 'Matriarche', 'de Land`savos', 139496, 0, 0),
(322, 'Yodine', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'd`Havoine', 83911, 0, 0),
(324, 'Enilia', 'Elfe', 'Archer', 'Chemins', 'Conseillère', 'de Grana', 107436, 0, 0),
(331, 'Kalash Von Divynisos', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'd`Aoxd', 74202, 0, 0),
(341, 'Alrik', 'Nain', 'Guerrier', 'Guerre', 'Roi', 'de Lanvaldear', 100248, 0, 0),
(342, 'Malrick', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'd`Altar', 49652, 0, 0),
(343, 'Dinendal Alcarin', 'Elfe', 'Guerrier', 'Force', 'Conseiller', 'de Breizhar', 101597, 0, 0),
(357, 'Azhaag', 'Gnome', 'Illusioniste', 'Pensée', 'Gouverneur', 'd`Anirie', 146481, 0, 0),
(363, 'Essyr', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'd`Asphina', 107725, 0, 0),
(365, 'Amendel Genfaluin', 'Elfe', 'Guerrier', 'Guerre', 'Conseiller', 'd`Helgedaar', 48847, 0, 0),
(382, 'Elm', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Tergolite', 362455, 0, 0),
(386, 'Magax', 'Fée', 'Magicien', 'Magie', 'Intendante', 'de Misn&eacute;il', 150044, 0, 0),
(387, 'Lirielle', 'Célestial', 'Magicien', 'Pensée', 'Maîtresse', 'de Golgotha', 100127, 0, 0),
(389, 'Fletiaz', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Loeses', 77838, 0, 0),
(392, 'Ashakars', 'Vampire', 'Assassin', 'Mort', 'Comtesse', 'de Terradenocte', 92686, 0, 0),
(415, 'Arkatris', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Minotaurya', 104579, 0, 0),
(419, 'Boone', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Novac', 122275, 0, 0),
(431, 'Meissner', 'Sahuagin', 'Barbare', 'Force', 'Baron', 'd`Ensisheim', 136807, 0, 0),
(435, 'Khamos', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'd`Ecklesia', 59224, 0, 0),
(437, 'Gragasi', 'Orque', 'Barbare', 'Force', 'Chef', 'de Damacia', 43383, 0, 0),
(445, 'Hyke', 'Ancien', 'Sorcier', 'Magie', 'Vénérable', 'd`Ost`Sitan', 110871, 0, 0),
(449, 'Laethil', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'd`Elhaylin', 250551, 0, 0),
(458, 'Mahrynn', 'Elfe Noir', 'Sorcier', 'Pensée', 'Matriarche', 'de Dam Goolkarh', 104960, 0, 0),
(463, 'B&eacute;liaros', 'Vampire', 'Assassin', 'Mensonge', 'Comte', 'd`Ensfarir', 204156, 0, 0),
(468, 'Bolas', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Voraeren', 183737, 0, 0),
(474, 'Mal`hac', 'Elfe Noir', 'Guerrier', 'Guerre', 'Patriarche', 'd`Irianeth', 152906, 0, 0),
(475, 'Goupille', 'Géant', 'Guerrier', 'Force', 'Seigneur', 'de Goupnd', 46302, 0, 0);INSERT INTO `11mar_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(478, 'Tirandilis', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Surrus', 101410, 0, 0),
(482, 'Dundragon', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'de la Tour d`Ombre', 60247, 0, 0),
(485, 'Eleanora', 'Fée', 'Druide', 'Nature', 'Intendante', 'd`Itoshi', 116255, 0, 0),
(486, 'Zaseo', 'Ancien', 'Assassin', 'Mensonge', 'Vénérable', 'd`Alabasta', 158829, 0, 0),
(493, 'Belerion', 'Fée', 'Illusioniste', 'Pensée', 'Intendant', 'd`Orliae', 134532, 0, 0),
(501, 'Morgjin', 'Célestial', 'Prêtre', 'Compassion', 'Maîtresse', 'de Kwenjkka', 134557, 0, 0),
(502, 'Elemaster', 'Homme', 'Magicien', 'Magie', 'Seigneur', 'de Contr&eacute;ments', 72197, 0, 0),
(504, 'Aldramech Sarabhan', 'Elfe Noir', 'Démonologiste', 'Ténèbres', 'Patriarche', 'de Phl&eacute;g&eacute;thonen', 193762, 0, 0),
(512, 'Damarya', 'Vampire', 'Enchanteur', 'Chance', 'Comtesse', 'de Nuit', 228653, 0, 0),
(513, 'Arth&eacute;on', 'Nain', 'Marchand', 'Chance', 'Roi', 'd`Olydris', 40597, 0, 0),
(516, 'Nicci', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'du Palais des Proph&egrave;si', 158668, 0, 0),
(521, 'Reyson', 'Fée', 'Magicien', 'Pensée', 'Intendant', 'de Serenes', 50690, 0, 0),
(526, 'Celithrand', 'Elfe', 'Guerrier', 'Guerre', 'Conseiller', 'de Krenaste', 120246, 0, 0),
(527, 'Darcia', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Cosquer', 128599, 0, 0),
(558, 'Jeor', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Fort le Mort', 151524, 0, 0),
(561, 'Kadavre', 'Infernal', 'Nécromancien', 'Ténèbres', 'Despote', 'de Chalys&eacute;es', 57080, 0, 0),
(564, 'Malikarn', 'Célestial', 'Prêtre', 'Chemins', 'Maîtresse', 'des Neiges Eternelles', 170919, 0, 0),
(565, 'Dalan', 'Infernal', 'Guerrier', 'Force', 'Despote', 'de Rabistiane', 95431, 0, 0),
(571, 'Bulrug', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'd`Elsweyr', 124218, 0, 0),
(579, 'Castelluli', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Bicocca', 105240, 0, 0),
(584, 'Magnus', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Thay', 76266, 0, 0),
(585, 'Theobald', 'Gnome', 'Marchand', 'Mensonge', 'Gouverneur', 'de la Plaine Artificielle', 62780, 0, 0),
(589, 'Han Bal', 'Nain', 'Guerrier', 'Force', 'Roi', 'des Mines Sans-Fond', 114253, 0, 0),
(594, 'Klamhan', 'Elfe', 'Archer', 'Guerre', 'Conseillère', 'de Palisetirces', 116470, 0, 0),
(596, 'Jacques Skellinou', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'd`Holluwee', 143648, 0, 0),
(598, 'Oldoron', 'Ancien', 'Assassin', 'Chaos', 'Vénérable', 'de Byb', 56697, 0, 0),
(601, 'Gael', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Corona', 62345, 0, 0),
(604, 'Goundrak', 'Géant', 'Barbare', 'Guerre', 'Seigneur', 'd`Enfer', 60560, 0, 0),
(606, 'Crios', 'Célestial', 'Inquisiteur', 'Loi', 'Maître', 'de Taropie', 98559, 0, 0),
(608, 'Rowenda', 'Nain', 'Prêtre', 'Chance', 'Roi', 'd`Eglandor', 62041, 0, 0),
(611, 'Marsys', 'Elfe Noir', 'Voleur', 'Ténèbres', 'Patriarche', 'de Libory', 108158, 0, 0),
(614, 'Bibble', 'Elfe', 'Guerrier', 'Légendes', 'Conseillère', 'de Dolfin', 93943, 0, 0),
(618, 'Ymir', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'du Temple Interdit', 56135, 0, 0),
(623, 'Sartibule', 'Géant', 'Barbare', 'Force', 'Dame', 'de Danlong', 90997, 0, 0),
(628, 'Oryanna', 'Elfe Noir', 'Assassin', 'Mensonge', 'Matriarche', 'de Quintefeuille  ', 101893, 0, 0),
(637, 'Thistos', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Aflan', 151624, 0, 0),
(638, 'Harnas', 'Vampire', 'Enchanteur', 'Chance', 'Comte', 'd`Okocim', 142499, 0, 0),
(643, 'Ordinn', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Coril', 168563, 0, 0),
(644, 'Khiran', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Zeidanys', 113637, 0, 0),
(651, 'Hawkys', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'D`Ithonys', 89462, 0, 0),
(654, 'Chitcat', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'D`Alma', 69037, 0, 0),
(655, 'Sansst', 'Célestial', 'Prêtre', 'Loi', 'Maîtresse', 'de Nresda', 3134, 0, 0),
(660, 'Valt&eacute;ri', 'Gnome', 'Marchand', 'Chemins', '', 'de Luc&eacute;phore', 83401, 0, 0),
(661, 'Gharnohk', 'Orque', 'Nécromancien', 'Mort', 'Chef', 'des Grottes', 179879, 0, 0),
(666, 'Yzeute', 'Elfe', 'Rôdeur', 'Chemins', 'Conseillère', 'de Pitiponk-les-fl&ocirc;ts', 130974, 0, 0),
(669, 'Ashut', 'Infernal', 'Assassin', 'Chaos', 'Despote', 'de Surtsey', 70859, 0, 0),
(671, 'Zulema', 'Homme', 'Prêtre', 'Compassion', 'Dame', 'de Styx', 310997, 0, 0),
(673, 'Griffith', 'Homme', 'Marchand', 'Chance', 'Seigneur', 'de Carwraping', 29204, 0, 0),
(674, 'Onacona', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'des Prairies du Clair de Lune', 156391, 0, 0),
(683, 'Karann', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Kelistos', 232723, 0, 0),
(685, 'Zacharias', 'Nain', 'Guerrier', 'Loi', 'Roi', 'de Sylvanie', 74742, 0, 0);INSERT INTO `11mar_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(687, 'Vordamass', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'du Mont Chemin des Ildys', 135291, 0, 0),
(688, 'Lyonis', 'Homme', 'Inquisiteur', 'Force', 'Seigneur', 'du Palais d`Ivoire', 190210, 0, 0),
(691, 'Dantz', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de N&eacute;ant', 30417, 0, 0),
(700, 'Warenya Fahle', 'Elfe Noir', 'Sorcier', 'Magie', 'Matriarche', 'D`Alosera', 123877, 0, 0),
(703, 'Azarath', 'Minotaure', 'Barbare', 'Guerre', 'Seigneur', 'de Jalkaru', 95818, 0, 0),
(704, 'Risnak', 'Fée', 'Illusioniste', 'Chance', 'Intendant', 'de Bretilh', 120755, 0, 0),
(705, 'Grumpf', 'Homme', 'Marchand', 'Chemins', 'Seigneur', 'de Lokeria', 100030, 0, 0),
(706, 'Hakra', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'd`Aorphen', 72811, 0, 0),
(707, 'Kograh', 'Ancien', 'Sorcier', 'Pensée', 'Vénérable', 'de Dystopia', 59829, 0, 0),
(708, 'Algar', 'Orque', 'Nécromancien', 'Ténèbres', 'Chef', 'D`Alt&euml;iria', 146860, 0, 0),
(715, 'Krugerr', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'de Villissyus ', 22045, 0, 0),
(718, 'Umbre', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'D`Area', 23799, 0, 0),
(720, 'Burgrok Brise`Fer', 'Nain', 'Prêtre', 'Guerre', 'Roi', 'de Machkran', 116775, 0, 0),
(730, 'Yglora', 'Fée', 'Illusioniste', 'Pensée', 'Intendante', 'de Nuboro', 73782, 0, 0),
(731, 'Zoltan', 'Orque', 'Barbare', 'Force', 'Chef', 'd`Irridinium', 71861, 0, 0),
(732, 'Gruck', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Langristal', 50112, 0, 0),
(733, 'Hijen', 'Nain', 'Marchand', 'Chemins', 'Roi', 'de Ch&eacute;reng', 91086, 0, 0),
(734, 'Jaeregan', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'de Pr&eacute;&eacute;minence', 151431, 0, 0),
(736, 'Djikokou', 'Infernal', 'Démonologiste', 'Maladie', 'Despote', 'de Chacha', 14012, 0, 0),
(745, 'Cresodurs', 'Vampire', 'Assassin', 'Ténèbres', 'Comtesse', 'de Kalendan', 3254, 0, 0),
(746, 'Charlysub', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Chydenlha', 3134, 0, 0),
(750, 'Anadyomene', 'Célestial', 'Enchanteur', 'Magie', 'Maître', 'de Eme Est', 122535, 0, 0),
(751, 'Sorvahn', 'Sahuagin', 'Guerrier', 'Guerre', 'Baron', 'de Forge', 133257, 0, 0),
(752, 'Agito', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Sanguin', 3572, 0, 0),
(758, 'Skanhs', 'Géant', 'Guerrier', 'Guerre', 'Seigneur', 'de Suna', 97351, 0, 0),
(760, 'Orga', 'Géant', 'Barbare', 'Force', 'Seigneur', 'de Galern', 58365, 0, 0),
(761, 'Yarl Baudig', 'Vampire', 'Psioniste', 'Pensée', 'Comte', 'de Rosakarfa', 122766, 0, 0),
(762, 'Shooky', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Comptabia', 3689, 0, 0),
(763, 'Darzang', 'Infernal', 'Assassin', 'Mort', 'Despote', 'de Bondrar', 0, 0, 0),
(765, 'Herubanmik', 'Infernal', 'Démonologiste', 'Mort', 'Despote', 'de Ramounak', 0, 0, 0),
(767, 'Kylordion', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'D`Abasnath', 130799, 0, 0),
(768, 'Tharoze', 'Infernal', 'Nécromancien', 'Mort', 'Despote', 'de Terres Chaotiques', 144118, 0, 0),
(769, 'Xeohrod', 'Elfe Noir', 'Psioniste', 'Magie', 'Matriarche', 'D`Havnarh&ucirc;d', 83095, 0, 0),
(770, 'Mendrake', 'Minotaure', 'Guerrier', 'Force', 'Seigneur', 'D`Alfarer', 58587, 0, 0),
(771, 'Umassi', 'Orque', 'Shaman', 'Guerre', 'Cheftaine', 'de Seangwen', 115262, 0, 0),
(772, 'Infilz', 'Infernal', 'Démonologiste', 'Magie', 'Despote', 'de Tareksis', 121018, 0, 0),
(774, 'Treleg', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Droriath', 144720, 0, 0),
(775, 'Il&eacute;anor', 'Elfe Noir', 'Assassin', 'Ténèbres', 'Patriarche', 'de Mirque Bois', 99121, 0, 0),
(777, 'Invoj', 'Vampire', 'Nécromancien', 'Ténèbres', 'Comte', 'd`El&eacute;dion', 90141, 0, 0),
(778, 'Zijft', 'Homme', 'Assassin', 'Mensonge', 'Seigneur', 'de Morteterre', 0, 0, 0),
(779, 'Hijacinthe', 'Elfe Noir', 'Psioniste', 'Pensée', 'Patriarche', 'D`Apollonir', 0, 0, 0),
(780, 'Monoro', 'Vampire', 'Enchanteur', 'Chaos', 'Comtesse', 'de Martana', 0, 0, 0),
(782, 'D&eacute;sacre', 'Elfe Noir', 'Assassin', 'Chaos', 'Matriarche', 'de Sar Haffil', 116355, 0, 0),
(784, 'Jade', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'du Cercle d`Adrien', 42711, 0, 0),
(787, 'Lhito', 'Elfe', 'Druide', 'Nature', 'Conseiller', 'de Partna', 90524, 0, 0),
(788, 'Mordjane', 'Infernal', 'Assassin', 'Mort', 'Despote', 'de Sephora', 0, 0, 0),
(790, 'Neveda', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'D`Athriuss', 0, 0, 0),
(791, 'Demolischors', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de le Royaume Paxhelm', 0, 0, 0),
(792, 'Dhorlyn', 'Homme', 'Barbare', 'Guerre', 'Dame', 'D`Andasgaard', 19358, 0, 0),
(793, 'Darfankettle', 'Vampire', 'Démonologiste', 'Ténèbres', 'Comte', 'de J&ucirc;mosland', 94567, 0, 0),
(794, 'Ratatalk', 'Minotaure', 'Guerrier', 'Honneur', 'Seigneur', 'de Loudpie', 3134, 0, 0);INSERT INTO `11mar_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(795, 'Halambare', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Lambardie', 100488, 0, 0),
(796, 'LyrboOss', 'Sahuagin', 'Sorcier', 'Magie', 'Baron', 'de Lyrad&ocirc;me', 3330, 0, 0),
(797, 'Qatrisk', 'Ancien', 'Druide', 'Nature', '', 'D`Apeulsdasebp&eacute;unyimpire', 0, 0, 0),
(798, 'Valhorn', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'de Pegashem', 0, 0, 0),
(799, 'Shaynnat', 'Elfe', 'Rôdeur', 'Nature', 'Conseillère', 'de Lune-d`argent', 0, 0, 0),
(800, 'Clemahil', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Bouchetgon', 0, 0, 0),
(801, 'Belenora', 'Elfe', 'Magicien', 'Magie', 'Conseiller', 'de Sal`thair', 158308, 0, 0),
(802, 'Astaldoram', 'Vampire', 'Sorcier', 'Magie', 'Comte', 'de les Morvivanbar', 0, 0, 0),
(803, 'Maikailh', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de les Volyturs', 0, 0, 0),
(804, 'Lesteur', 'Minotaure', 'Paladin', 'Honneur', 'Seigneur', 'de Lawoogba', 0, 0, 0),
(805, 'Prolor', 'Orque', 'Guerrier', 'Guerre', 'Chef', 'de Demancia', 82798, 0, 0),
(806, 'Kogisett', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Ferdiokjyul', 10248, 0, 0),
(807, 'Bloodchedt', 'Célestial', 'Magicien', 'Magie', 'Maître', 'de Dolfy', 0, 0, 0),
(808, 'Mercolothion', 'Vampire', 'Assassin', 'Mort', 'Comte', 'de Les Grande Colines', 39028, 0, 0),
(815, 'Dakurjia', 'Célestial', 'Enchanteur', 'Chance', 'Maîtresse', 'de Daku', 3134, 0, 0),
(816, 'Ruddax', 'Elfe', 'Archer', 'Chance', 'Conseiller', 'de Fury', 92872, 0, 0),
(818, 'Sindatal', 'Célestial', 'Magicien', 'Magie', 'Maître', 'D`Utarique', 7201, 0, 0),
(819, 'Malmos', 'Homme', 'Archer', 'Guerre', 'Seigneur', 'de Toembeau', 3167, 0, 0),
(820, 'Yannslath', 'Elfe', 'Archer', 'Chemins', 'Conseiller', 'D`Autre Monde', 3134, 0, 0),
(821, 'Solemyr', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'D`Hazanavicius', 74129, 0, 0),
(822, 'Oedarn', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'de Saa-Vha Shi Heez', 58002, 0, 0),
(823, 'Narmacilis', 'Homme', 'Chevalier', 'Honneur', 'Seigneur', 'de Karlotur', 31652, 0, 0),
(825, 'Jijona', 'Ancien', 'Enchanteur', 'Chaos', 'Vénérable', 'de Jijo', 63211, 0, 0),
(828, 'Vaenyel', 'Infernal', 'Sorcier', 'Magie', 'Despote', 'de Valdemar', 7660, 0, 0),
(829, 'Tiposa', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Luor', 69593, 0, 0),
(831, 'Kennit', 'Ancien', 'Druide', 'Nature', 'Vénérable', 'de L`&icirc;le Des Autres', 48969, 0, 0),
(832, 'Krumrarz', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'D`Ellesmnera', 0, 0, 0),
(833, 'Erinal&euml;', 'Elfe', 'Magicien', 'Pensée', 'Conseillère', 'de Terriadica', 3134, 0, 0),
(840, 'Teperek', 'Homme', 'Chevalier', 'Loi', 'Seigneur', 'D`Hydross', 47930, 0, 0),
(841, 'Braniack', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'de Kryws', 3134, 0, 0),
(843, 'Eladriel', 'Homme', 'Prêtre', 'Pensée', 'Seigneur', 'D`Ambre Bleue', 16560, 0, 0),
(844, 'Ariban', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'D`Aiglerune', 0, 0, 0),
(845, 'Jpgeant', 'Géant', 'Guerrier', 'Légendes', 'Seigneur', 'de Queen Flavie', 0, 0, 0),
(846, 'Yeldierick', 'Célestial', 'Prêtre', 'Compassion', 'Maître', 'de Fantaisis', 67070, 0, 0),
(847, 'Aftergodme', 'Homme', 'Guerrier', 'Guerre', 'Seigneur', 'de Worldort', 3134, 0, 0),
(848, 'Eragole', 'Homme', 'Marchand', 'Mensonge', 'Seigneur', 'D`Hedrias', 30374, 0, 0),
(849, 'Elazur', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'D`Aol', 0, 0, 0),
(850, 'Anarkall', 'Elfe Noir', 'Guerrier', 'Chance', 'Matriarche', 'D`Amebix', 3134, 0, 0),
(851, 'Mithyav', 'Homme', 'Assassin', 'Chaos', 'Seigneur', 'de Galdine', 5683, 0, 0),
(853, 'Morphox', 'Elfe Noir', 'Assassin', 'Chaos', 'Patriarche', 'D`Ile de la Sentinelle', 3408, 0, 0),
(854, 'Kilars', 'Vampire', 'Assassin', 'Mort', 'Comte', 'D`Ophime', 0, 0, 0),
(855, 'Virshan', 'Elfe Noir', 'Nécromancien', 'Mort', 'Patriarche', 'de Huwuxe', 3137, 0, 0),
(856, 'Gregoireo', 'Sahuagin', 'Guerrier', 'Force', 'Baron', 'de Zenor', 3302, 0, 0),
(857, 'Vaith', 'Ancien', 'Rôdeur', 'Chemins', 'Vénérable', 'de Pourpres-Ab&icirc;mes', 7559, 0, 0),
(859, 'Olinos', 'Minotaure', 'Barbare', 'Force', 'Seigneur', 'de Terre Rouge', 0, 0, 0),
(860, 'Erkast', 'Infernal', 'Guerrier', 'Guerre', 'Despote', 'D`Obsidia', 0, 0, 0),
(861, 'Cael', 'Ancien', 'Rôdeur', 'Nature', 'Vénérable', 'D`Eryldian', 0, 0, 0),
(862, 'Morriganithil', 'Célestial', 'Magicien', 'Magie', 'Maîtresse', 'D`Asportane', 0, 0, 0),
(863, 'Katum', 'Homme', 'Chevalier', 'Guerre', 'Seigneur', 'de Maliandre', 13547, 0, 0),
(864, 'Storia', 'Homme', 'Barbare', 'Guerre', 'Dame', 'de Mineria', 4936, 0, 0),
(865, 'Xeitheus', 'Elfe', 'Archer', 'Guerre', 'Conseiller', 'de Ruffian', 0, 0, 0);INSERT INTO `11mar_joueurs_heros_2` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`, `mentor`) VALUES
(866, 'Vardahil', 'Orque', 'Guerrier', 'Légendes', 'Chef', 'de Skairat', 0, 0, 0),
(867, 'Azaar', 'Homme', 'Psioniste', 'Pensée', 'Seigneur', 'de Monade', 3198, 0, 0),
(868, 'Cemaure', 'Infernal', 'Guerrier', 'Guerre', 'Despote', 'D`Ichklabie', 0, 0, 0),
(869, 'Devassilien', 'Célestial', 'Enchanteur', 'Pensée', 'Maîtresse', 'de Gabolgdam', 0, 0, 0);



CREATE TABLE `11mar_joueurs_stats_2` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(25) NOT NULL default '',
  `niveau` tinyint(4) NOT NULL default '0',
  `puissance` int(11) NOT NULL default '0',
  `xp` int(11) NOT NULL default '0',
  `but` int(11) NOT NULL default '0',
  `att` float(5,2) NOT NULL default '0.00',
  `def` float(5,2) NOT NULL default '0.00',
  `ini` float(5,2) NOT NULL default '0.00',
  `cha` float(5,2) NOT NULL default '0.00',
  `end` float(5,2) NOT NULL default '0.00',
  `pui` float(5,2) NOT NULL default '0.00',
  `mana` int(11) NOT NULL default '0',
  `victoire` tinyint(4) NOT NULL default '0',
  `defaite` tinyint(4) NOT NULL default '0',
  `argent` int(11) unsigned NOT NULL default '0',
  `soufre` mediumint(9) NOT NULL default '0',
  `mercure` mediumint(9) NOT NULL default '0',
  `cristal` mediumint(9) NOT NULL default '0',
  `gemme` mediumint(9) NOT NULL default '0',
  `heure` tinyint(4) NOT NULL default '0',
  `indice_militaire` int(11) NOT NULL default '19314424',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=870 DEFAULT CHARSET=latin1 AUTO_INCREMENT=870 ;

INSERT INTO `11mar_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(2, 'Alumdil', 19, 106763, 181712, 190000, 33.50, 29.00, 148.00, 21.50, 127.00, 200.00, 3999, 0, 0, 430872, 239, 244, 653, 135, 0, 21644604),
(3, 'Vibralea', 19, 159659, 172691, 190000, 56.50, 46.50, 71.00, 67.50, 140.50, 162.00, 39051, 0, 0, 582770, 284, 175, 185, 150, 0, 21645224),
(4, 'L&eacute;nnih', 14, 75383, 99295, 105000, 93.00, 98.00, 247.00, 94.00, 53.00, 20.00, 40000, 0, 0, 10830375, 9541, 8024, 9221, 8431, 0, 21645175),
(5, 'Dijun', 20, 184428, 192040, 210000, 42.00, 51.00, 109.00, 129.00, 100.00, 190.00, 748, 0, 0, 605146, 66, 430, 10, 590, 0, 21648715),
(8, 'Helmrod', 12, 39749, 66428, 78000, 86.00, 49.00, 39.00, 13.00, 31.00, 18.00, 30000, 0, 0, 664384, 207, 93, 104, 0, 0, 21625639),
(13, 'Aleksander', 22, 188219, 237684, 253000, 226.00, 154.00, 186.00, 111.00, 68.00, 40.00, 5771, 0, 0, 11994, 38693, 147, 184, 948, 0, 21648827),
(16, 'Meolas', 13, 41765, 86596, 91000, 92.00, 92.00, 40.00, 13.50, 25.00, 16.50, 20000, 0, 0, 1228287, 0, 48, 0, 0, 0, 21581017),
(18, 'Darith', 14, 43681, 102762, 105000, 78.00, 47.00, 99.00, 29.00, 23.00, 30.00, 20000, 0, 0, 143713, 35, 23, 0, 0, 0, 21601225),
(19, 'Gorak', 23, 247690, 256218, 276000, 13.50, 44.00, 121.00, 186.83, 208.00, 369.00, 50000, 0, 0, 629757, 1309, 959, 996, 1224, 0, 21646897),
(30, 'Gaoule', 20, 128618, 203399, 210000, 182.00, 34.00, 208.00, 48.00, 48.00, 33.00, 27440, 0, 0, 866141, 134, 312, 976, 149, 0, 21648193),
(36, 'Cl&eacute;mentine', 26, 172254, 348639, 351000, 148.00, 104.00, 158.00, 135.00, 112.00, 86.00, 40000, 0, 0, 613021, 1404, 1024, 1047, 921, 0, 21645360),
(43, 'Mund', 17, 95048, 148738, 153000, 101.00, 98.00, 23.00, 125.00, 54.00, 42.00, 40472, 0, 0, 362253, 575, 30, 222, 394, 0, 21648195),
(45, 'Dro&iuml;n Pierre de Feu', 24, 180887, 293199, 300000, 228.00, 162.00, 238.00, 211.00, 74.00, 20.00, 33833, 0, 0, 5346371, 4161, 3640, 11454, 4339, 0, 21648755),
(47, 'Agradok', 27, 179414, 355709, 378000, 53.50, 45.50, 168.50, 225.83, 95.50, 378.50, 50000, 0, 0, 955061, 2021, 3446, 3143, 3691, 0, 21642851),
(48, 'Harkazam', 13, 135974, 78472, 91000, 58.50, 49.00, 34.00, 64.50, 73.50, 97.50, 26737, 0, 0, 15, 280, 205, 234, 283, 0, 21648267),
(53, 'Nak`Amnar', 19, 159015, 183338, 190000, 90.50, 70.00, 120.00, 64.00, 39.00, 25.50, 40000, 0, 0, 41862, 184, 164, 15, 10, 0, 21647012),
(54, 'Harlatsak', 26, 137604, 333918, 351000, 142.00, 58.00, 225.00, 114.00, 39.00, 43.00, 30000, 0, 0, 1032110, 281, 472, 689, 1084, 0, 21645335),
(56, 'Razak', 19, 134517, 177002, 190000, 50.00, 55.00, 48.50, 62.50, 32.00, 110.00, 799, 0, 0, 248023, 213, 75, 40, 67, 0, 21648754),
(58, 'Tiram', 24, 127437, 276988, 300000, 28.00, 31.00, 61.00, 116.00, 85.00, 191.00, 10049, 0, 0, 124939, 652, 130, 212, 33, 0, 21651512),
(60, 'Filsigur', 22, 174770, 239183, 253000, 216.00, 230.00, 133.00, 35.00, 156.00, 76.00, 4825, 0, 0, 322004, 781, 153, 90, 907, 0, 21648817),
(62, 'Taras Bale', 16, 56288, 128436, 136000, 115.00, 127.00, 39.00, 17.00, 32.00, 34.00, 50000, 0, 0, 382860, 257, 120, 194, 239, 0, 21624255),
(65, 'Rhaghenst', 14, 47926, 92967, 105000, 157.00, 82.00, 49.00, 39.00, 39.00, 15.00, 30000, 0, 0, 733773, 0, 210, 236, 57, 0, 21609964),
(67, 'Cyrielle', 8, 92717, 31388, 36000, 33.00, 48.00, 31.00, 50.00, 19.00, 72.00, 30000, 0, 0, 5304021, 938, 1493, 1350, 1358, 0, 21644526),
(68, 'Caline', 27, 260438, 375941, 378000, 30.50, 57.00, 51.00, 216.83, 214.00, 388.00, 43423, 0, 0, 1038252, 1482, 1406, 1203, 42239, 0, 21648140),
(69, 'Kylar des Ombres', 17, 126971, 150195, 153000, 174.00, 158.00, 182.00, 133.00, 73.00, 36.00, 35469, 0, 0, 904383, 740, 600, 308, 626, 0, 21645869),
(70, 'Phylas', 29, 139442, 422864, 435000, 245.50, 254.50, 68.50, 38.00, 165.00, 81.50, 21448, 0, 0, 31304, 435, 183, 262, 281, 0, 21648583),
(73, 'Philego Rah', 16, 73996, 122505, 136000, 116.00, 51.00, 52.00, 13.00, 35.00, 21.00, 20000, 0, 0, 643380, 38, 61, 79, 85, 0, 21641189),
(76, 'Katrickan', 21, 168926, 223181, 231000, 159.50, 99.50, 41.50, 104.00, 95.00, 131.50, 35955, 0, 0, 100456, 1158, 655, 288, 771, 0, 21646786),
(77, 'Kaya', 20, 92537, 194718, 210000, 172.00, 89.00, 232.00, 128.00, 53.00, 37.00, 30000, 0, 0, 1012816, 201, 455, 259, 613, 0, 21643717),
(78, 'Athanase', 19, 153280, 182277, 190000, 104.00, 152.00, 36.00, 152.00, 81.00, 64.00, 37382, 0, 0, 300990, 386, 179, 504, 669, 0, 21645432),
(79, 'Arteas', 12, 86702, 68381, 78000, 63.00, 25.00, 31.00, 20.00, 38.00, 81.00, 15266, 0, 0, 1960661, 264, 535, 46, 521, 0, 21646134),
(84, 'Sycomore', 22, 179852, 240252, 253000, 206.00, 140.00, 193.00, 75.00, 76.00, 50.00, 21506, 0, 0, 439719, 166, 126, 123, 95, 0, 21648478),
(95, 'Irkos', 18, 108503, 155893, 171000, 75.00, 44.00, 61.00, 39.00, 54.00, 120.00, 9635, 0, 0, 42863, 574, 116, 385, 532, 0, 21645049),
(96, 'Alcyban', 20, 194353, 204317, 210000, 55.00, 28.00, 48.00, 46.00, 110.00, 284.00, 45733, 0, 0, 2008949, 1026, 587, 1033, 384, 0, 21648568),
(98, 'Mayssi', 19, 98811, 176502, 190000, 95.50, 54.00, 98.00, 103.00, 31.00, 20.50, 40000, 0, 0, 1318716, 1183, 418, 372, 357, 0, 21647462),
(101, 'Hulricht', 24, 192261, 278826, 300000, 210.00, 76.00, 191.00, 86.00, 49.00, 36.00, 10948, 0, 0, 191190, 1185, 933, 958, 965, 0, 21648600),
(104, 'Lumy', 10, 54045, 53045, 55000, 104.00, 60.00, 140.00, 75.00, 35.00, 16.00, 30000, 0, 0, 4898079, 552, 51506, 146, 189, 0, 21648751),
(105, 'Agrias', 23, 124333, 263210, 276000, 68.50, 49.50, 60.50, 46.50, 153.50, 215.50, 29704, 0, 0, 222004, 111, 389, 155, 209, 0, 21647442),
(108, 'Ladanian', 18, 96396, 169235, 171000, 99.00, 94.00, 126.00, 51.00, 30.00, 20.00, 50000, 0, 0, 696064, 116, 333, 141, 199, 0, 21645932),
(111, 'Galahay', 17, 80735, 149112, 153000, 105.50, 46.00, 145.00, 31.00, 59.00, 22.50, 30000, 0, 0, 1191338, 90, 7, 1, 2, 0, 21641573),
(112, 'Vrock', 14, 69200, 97426, 105000, 97.00, 81.00, 151.00, 28.00, 42.00, 19.00, 6589, 0, 0, 287764, 175, 271, 265, 221, 0, 21654519),
(113, 'Schlemm', 31, 248615, 492128, 496000, 313.00, 221.50, 188.00, 72.50, 78.50, 24.50, 30000, 0, 0, 552299, 711, 269, 577, 644, 0, 21642289),
(115, 'Tylert', 16, 84913, 135533, 136000, 108.00, 84.00, 58.00, 15.00, 32.00, 16.00, 17693, 0, 0, 106988, 146, 91, 24, 93, 0, 21648687),
(118, 'Liamalika', 13, 91628, 86224, 91000, 58.00, 19.50, 62.50, 21.00, 36.50, 79.50, 40000, 0, 0, 339290, 77, 192, 120, 0, 0, 21642169),
(119, 'Fonua', 14, 107135, 94913, 105000, 114.00, 113.00, 77.00, 44.00, 47.00, 70.00, 40000, 0, 0, 866256, 389, 599, 983, 818, 0, 21641346),
(120, 'Zanckten', 17, 89279, 149307, 153000, 33.50, 65.50, 35.00, 171.00, 76.00, 117.00, 12438, 0, 0, 162896, 253, 272, 507, 519, 0, 21644544),
(121, 'Dartoil', 8, 32844, 33385, 36000, 43.00, 18.00, 53.00, 24.00, 22.00, 21.00, 10000, 0, 0, 1716749, 293, 141, 113, 91, 0, 21641063),
(122, 'Grunwuck', 16, 83404, 127856, 136000, 131.00, 150.00, 95.00, 16.00, 40.00, 17.00, 38428, 0, 0, 575150, 819, 878, 774, 582, 0, 21648411),
(124, 'Kayel', 18, 140592, 158750, 171000, 141.00, 69.00, 49.00, 21.00, 45.00, 21.00, 1, 0, 0, 207538, 79, 123, 54, 1, 0, 21648684),
(139, 'Nehkrid', 15, 137689, 109408, 120000, 55.50, 16.50, 89.50, 30.50, 52.50, 130.50, 38193, 0, 0, 15, 0, 261, 0, 0, 0, 21644793),
(140, 'Zronn', 22, 139789, 232518, 253000, 39.00, 66.00, 144.00, 103.00, 161.00, 173.00, 4630, 0, 0, 90939, 534, 229, 385, 386, 0, 21647121);INSERT INTO `11mar_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(145, 'Ordak', 18, 136406, 161568, 171000, 277.00, 166.00, 118.00, 33.00, 136.00, 21.00, 28227, 0, 0, 1739358, 1064, 1145, 1189, 492, 0, 21648042),
(146, 'Bartor', 13, 97610, 79397, 91000, 33.50, 21.00, 97.00, 54.00, 15.50, 24.00, 30000, 0, 0, 653004, 108, 114, 62, 16, 0, 21646041),
(154, 'Ghassen', 17, 96629, 149590, 153000, 39.50, 31.00, 42.00, 40.50, 62.00, 182.00, 24214, 0, 0, 509813, 540, 340, 108, 267, 0, 21648625),
(180, 'Lydian', 11, 123480, 60958, 66000, 86.00, 60.00, 30.50, 30.00, 23.00, 18.50, 22970, 0, 0, 111117, 412, 257, 231, 339, 0, 21639466),
(181, 'Gullfaxio', 11, 55891, 57296, 66000, 68.50, 45.00, 66.00, 30.00, 20.00, 16.50, 20000, 0, 0, 8239379, 525, 406, 510, 113, 0, 21610995),
(189, 'Braal', 12, 87347, 73411, 78000, 176.00, 148.00, 50.00, 14.00, 33.00, 14.00, 486, 0, 0, 927920, 50, 152, 96, 162, 0, 21638739),
(191, 'Gwenlf', 17, 149762, 145382, 153000, 102.00, 123.00, 92.50, 54.00, 39.00, 35.50, 615, 0, 0, 4475, 1716, 1815, 1224, 1673, 0, 21648226),
(196, 'Harold', 10, 59465, 52313, 55000, 123.00, 84.00, 44.00, 45.00, 37.00, 18.00, 40000, 0, 0, 4995389, 565, 447, 712, 711, 0, 21609367),
(197, 'Daell', 14, 58997, 94517, 105000, 74.00, 101.00, 47.00, 63.00, 40.00, 39.00, 40000, 0, 0, 3322147, 213, 302, 0, 5, 0, 21628315),
(203, 'Nomad', 13, 61301, 89024, 91000, 111.50, 46.00, 111.00, 26.00, 32.00, 17.50, 40000, 0, 0, 6142901, 240, 486, 69, 514, 0, 21606162),
(223, 'Zar`Kull', 23, 119361, 259115, 276000, 42.50, 46.50, 72.00, 96.00, 159.00, 188.00, 22941, 0, 0, 1991821, 400, 394, 415, 521, 0, 21648634),
(236, 'Aelindel', 27, 141573, 362172, 378000, 116.00, 104.00, 170.00, 183.00, 66.00, 66.00, 50000, 0, 0, 459135, 366, 527, 671, 771, 0, 21648587),
(239, 'Demetron', 16, 232260, 122923, 136000, 21.00, 25.00, 29.00, 84.00, 64.00, 131.00, 5264, 0, 0, 3226961, 661, 792, 451, 517, 0, 21637828),
(240, 'Myos', 19, 195698, 185908, 190000, 81.00, 30.50, 95.50, 82.00, 106.50, 129.50, 50000, 0, 0, 699495, 8545, 8014, 74, 407, 0, 21647515),
(242, 'Agathocles', 15, 107224, 118281, 120000, 15.50, 29.00, 73.00, 90.50, 113.00, 189.00, 50000, 0, 0, 337690, 126, 91, 345, 513, 0, 21647584),
(250, 'Vezk', 17, 68428, 149747, 153000, 205.00, 132.50, 77.00, 20.50, 40.50, 20.50, 40000, 0, 0, 386354, 47, 99, 41, 133, 0, 21646856),
(253, 'Aldeas', 17, 163360, 147852, 153000, 46.50, 16.50, 95.50, 36.50, 118.50, 177.50, 50000, 0, 0, 46024, 57, 306, 139, 196, 0, 21646887),
(255, 'Kabidoui&iuml;e', 13, 111690, 78416, 91000, 48.50, 37.00, 129.00, 48.00, 25.50, 42.00, 40000, 0, 0, 3121766, 316, 94, 226, 38, 0, 21643170),
(261, 'Azraeg', 19, 137712, 183282, 190000, 77.00, 105.00, 18.50, 75.50, 85.00, 116.00, 40973, 0, 0, 469801, 75, 209, 172, 160, 0, 21670146),
(271, 'Agranos', 17, 89866, 146268, 153000, 183.50, 91.00, 144.00, 33.00, 31.00, 19.50, 50000, 0, 0, 702045, 494, 97, 181, 95, 0, 21641207),
(273, 'Katell', 16, 91768, 132526, 136000, 78.00, 51.00, 155.00, 106.00, 42.00, 52.00, 50000, 0, 0, 1638297, 903, 1170, 634, 1077, 0, 21644850),
(275, 'Cyanea', 10, 88255, 53639, 55000, 58.00, 115.00, 13.00, 25.00, 75.00, 34.00, 40000, 0, 0, 480062, 154, 266, 250, 78, 0, 21660882),
(285, 'Nebkan', 28, 173952, 403982, 406000, 146.00, 95.00, 150.00, 171.33, 128.00, 156.00, 41336, 0, 0, 377380, 2128, 1912, 2390, 2429, 0, 21648165),
(288, 'Gorano', 11, 87899, 59163, 66000, 81.00, 26.50, 30.50, 20.00, 32.50, 141.50, 1, 0, 0, 1719659, 429, 351, 611, 748, 0, 21646754),
(291, 'Ashinseika', 21, 139496, 223157, 231000, 79.50, 40.50, 33.00, 51.50, 110.50, 94.00, 33637, 0, 0, 403331, 1054, 548, 48324, 402, 0, 21648618),
(322, 'Yodine', 17, 83911, 140110, 153000, 20.50, 92.00, 29.00, 54.00, 92.50, 46.50, 50000, 0, 0, 1146688, 61, 154, 335, 0, 0, 21636563),
(324, 'Enilia', 16, 107436, 133425, 136000, 73.00, 43.00, 116.00, 31.00, 25.00, 19.00, 36400, 0, 0, 2685582, 58, 136, 76, 219, 0, 21648767),
(331, 'Kalash Von Divynisos', 9, 74202, 44543, 45000, 39.00, 22.00, 101.00, 39.00, 18.00, 28.00, 30000, 0, 0, 3963344, 47, 83, 0, 0, 0, 21618297),
(341, 'Alrik', 14, 100248, 92598, 105000, 112.00, 147.00, 81.00, 64.00, 35.00, 15.00, 40000, 0, 0, 2367233, 919, 861, 390, 895, 0, 21645285),
(342, 'Malrick', 11, 49652, 63752, 66000, 18.50, 30.00, 28.00, 32.50, 43.00, 72.00, 4384, 0, 0, 417668, 0, 0, 10, 0, 0, 21645612),
(343, 'Dinendal Alcarin', 12, 101597, 72286, 78000, 130.00, 88.00, 56.00, 33.00, 27.00, 19.00, 37070, 0, 0, 901400, 1027, 842, 1022, 299, 0, 21647500),
(357, 'Azhaag', 15, 146481, 111785, 120000, 21.50, 71.50, 59.50, 79.00, 117.00, 146.50, 9968, 0, 0, 784934, 685, 655, 682, 917, 0, 21648726),
(363, 'Essyr', 12, 107725, 72362, 78000, 59.00, 29.00, 63.00, 21.00, 31.00, 73.00, 30000, 0, 0, 512948, 473, 363, 355, 512, 0, 21641001),
(365, 'Amendel Genfaluin', 10, 48847, 53764, 55000, 84.00, 53.00, 38.00, 12.00, 22.00, 18.00, 40000, 0, 0, 3093673, 58, 64, 0, 0, 0, 21618681),
(382, 'Elm', 38, 362455, 722714, 741000, 156.00, 157.00, 231.00, 214.33, 109.00, 152.00, 49419, 0, 0, 1500406, 4941, 4641, 5180, 5455, 0, 21648230),
(386, 'Magax', 22, 150044, 237863, 253000, 24.00, 30.00, 41.00, 110.00, 184.00, 267.00, 42912, 0, 0, 70829, 647, 212, 429, 305, 0, 21646714),
(387, 'Lirielle', 15, 100127, 105386, 120000, 27.50, 29.00, 34.00, 102.50, 121.00, 171.00, 31781, 0, 0, 13642, 353, 450, 185, 234, 0, 21648208),
(389, 'Fletiaz', 8, 77838, 31991, 36000, 44.00, 17.00, 24.00, 22.00, 28.00, 107.00, 30000, 0, 0, 643051, 324, 443, 310, 193, 0, 21637418),
(392, 'Ashakars', 10, 92686, 45156, 55000, 63.00, 31.00, 68.00, 37.00, 20.00, 22.00, 30000, 0, 0, 9359735, 398, 165, 154, 268, 0, 21606803),
(415, 'Arkatris', 19, 104579, 175755, 190000, 197.50, 104.00, 159.00, 32.00, 43.00, 20.50, 50000, 0, 0, 583675, 457, 351, 982, 463, 0, 21642767),
(419, 'Boone', 20, 122275, 194738, 210000, 173.00, 78.00, 162.00, 39.00, 45.00, 21.00, 33440, 0, 0, 261516, 165, 115, 89, 182, 0, 21645686),
(431, 'Meissner', 18, 136807, 163772, 171000, 200.00, 134.00, 100.00, 64.00, 71.00, 22.00, 22471, 0, 0, 1908099, 1905, 1482, 1493, 1544, 0, 21648536),
(435, 'Khamos', 12, 59224, 66764, 78000, 40.00, 44.00, 68.00, 169.33, 34.00, 32.00, 40000, 0, 0, 5556574, 314, 205, 280, 333, 0, 21617555),
(437, 'Gragasi', 12, 43383, 66834, 78000, 89.00, 47.00, 38.00, 13.00, 30.00, 15.00, 30000, 0, 0, 3660287, 0, 64, 29, 79, 0, 21631637),
(445, 'Hyke', 17, 110871, 140196, 153000, 34.50, 38.50, 27.00, 88.00, 54.00, 200.00, 3318, 0, 0, 556316, 649, 676, 582, 706, 0, 21648373),
(449, 'Laethil', 26, 250551, 341251, 351000, 300.00, 138.00, 241.00, 168.00, 158.00, 36.00, 50000, 0, 0, 339505, 396, 775, 825, 9541, 0, 21645747),
(458, 'Mahrynn', 16, 104960, 123340, 136000, 56.00, 53.00, 63.00, 85.00, 75.00, 111.00, 42944, 0, 0, 198421, 46, 0, 18, 106, 0, 21646987),
(463, 'B&eacute;liaros', 16, 204156, 135788, 136000, 123.00, 26.00, 192.00, 56.00, 37.00, 40.00, 269, 0, 0, 38209, 181, 81, 216, 358, 0, 21648711),
(468, 'Bolas', 21, 183737, 220045, 231000, 217.00, 198.00, 15.50, 109.50, 119.00, 92.00, 41306, 0, 0, 200867, 1411, 1105, 1159, 889, 0, 21647381),
(474, 'Mal`hac', 9, 152906, 39188, 45000, 77.00, 65.00, 30.00, 24.50, 23.00, 16.50, 9673, 0, 0, 1249594, 806, 473, 507, 815, 0, 21647253),
(475, 'Goupille', 9, 46302, 36855, 45000, 87.00, 59.00, 15.00, 12.50, 21.00, 14.50, 20000, 0, 0, 5456662, 436, 530, 343, 399, 0, 21588036);INSERT INTO `11mar_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(478, 'Tirandilis', 16, 101410, 120006, 136000, 64.00, 17.00, 103.00, 24.00, 40.00, 85.00, 1714, 0, 0, 218109, 758, 1044, 465, 368, 0, 21647110),
(482, 'Dundragon', 11, 60247, 61537, 66000, 46.50, 28.00, 95.00, 48.00, 21.50, 22.00, 40000, 0, 0, 4132226, 64, 47, 50, 76, 0, 21617039),
(485, 'Eleanora', 15, 116255, 119031, 120000, 33.50, 54.00, 31.00, 89.50, 69.50, 133.50, 30993, 0, 0, 1212338, 124, 294, 337, 86, 0, 21646595),
(486, 'Zaseo', 19, 158829, 174655, 190000, 158.00, 119.00, 168.00, 111.00, 44.00, 41.00, 12115, 0, 0, 544770, 991, 250, 9, 9, 0, 21647424),
(493, 'Belerion', 23, 134532, 259272, 276000, 81.50, 60.50, 84.50, 123.00, 72.00, 191.50, 50000, 0, 0, 55609, 24, 463, 400, 737, 0, 21646674),
(501, 'Morgjin', 15, 134557, 110290, 120000, 48.00, 90.00, 40.50, 135.50, 101.00, 117.00, 2032, 0, 0, 618519, 1084, 1135, 2046, 1000, 0, 21648577),
(502, 'Elemaster', 10, 72197, 46696, 55000, 35.00, 38.00, 63.00, 27.00, 52.00, 84.00, 30000, 0, 0, 7500343, 169, 170, 85, 145, 0, 21606906),
(504, 'Aldramech Sarabhan', 22, 193762, 249954, 253000, 45.00, 30.00, 125.00, 84.00, 149.00, 233.00, 18940, 0, 0, 329697, 242, 400, 323, 477, 0, 21648752),
(512, 'Damarya', 14, 228653, 95063, 105000, 25.00, 62.00, 32.00, 48.00, 62.00, 29.00, 32471, 0, 0, 42289, 277, 288, 110, 241, 0, 21645716),
(513, 'Arth&eacute;on', 5, 40597, 13138, 15000, 37.00, 22.00, 27.00, 32.00, 26.50, 11.50, 9776, 0, 0, 327224, 182, 46, 0, 79, 0, 21638175),
(516, 'Nicci', 13, 158668, 84623, 91000, 29.50, 49.00, 32.00, 66.50, 80.50, 71.50, 10742, 0, 0, 173185, 160, 268, 412, 148, 0, 21647198),
(521, 'Reyson', 13, 50690, 79961, 91000, 28.50, 59.00, 35.00, 36.50, 50.00, 148.00, 40000, 0, 0, 1086435, 298, 245, 247, 103, 0, 21611439),
(526, 'Celithrand', 8, 120246, 34222, 36000, 85.00, 42.00, 34.00, 17.00, 20.00, 15.00, 13833, 0, 0, 1087350, 150, 221, 51, 425, 0, 21654471),
(527, 'Darcia', 14, 128599, 103755, 105000, 34.00, 23.00, 81.00, 42.00, 108.00, 112.00, 6112, 0, 0, 1502194, 806, 908, 364, 2061, 0, 21648896),
(558, 'Jeor', 14, 151524, 93075, 105000, 46.00, 32.00, 81.00, 45.00, 30.00, 26.00, 16974, 0, 0, 1495380, 184, 84, 162, 171, 0, 21644476),
(561, 'Kadavre', 7, 57080, 26107, 28000, 46.00, 15.50, 24.50, 19.00, 21.50, 51.50, 30000, 0, 0, 4290174, 277, 190, 211, 295, 0, 21619420),
(564, 'Malikarn', 15, 170919, 110549, 120000, 126.00, 137.00, 52.50, 54.50, 91.00, 87.00, 28155, 0, 0, 1390, 543, 357, 226, 255, 0, 21648468),
(565, 'Dalan', 17, 95431, 143722, 153000, 96.00, 90.00, 65.00, 67.50, 26.00, 25.50, 28780, 0, 0, 113834, 3290, 3786, 3162, 3916, 0, 21648170),
(571, 'Bulrug', 15, 124218, 108136, 120000, 160.00, 90.50, 69.00, 15.50, 63.50, 15.50, 41102, 0, 0, 940380, 305, 268, 227, 344, 0, 21648161),
(579, 'Castelluli', 11, 105240, 56450, 66000, 61.50, 51.00, 49.00, 30.50, 41.50, 67.50, 18797, 0, 0, 939349, 253, 405, 227, 403, 0, 21645271),
(584, 'Magnus', 12, 76266, 75208, 78000, 48.00, 16.00, 32.00, 28.00, 47.00, 104.00, 40000, 0, 0, 1535407, 570, 616, 0, 512, 0, 21630759),
(585, 'Theobald', 13, 62780, 80030, 91000, 121.00, 93.00, 93.00, 138.00, 44.50, 23.50, 40000, 0, 0, 302085, 150, 171, 220, 27, 0, 21646086),
(589, 'Han Bal', 9, 114253, 44569, 45000, 143.00, 124.00, 43.00, 43.50, 46.00, 12.50, 30000, 0, 0, 773853, 520, 548, 579, 1079, 0, 21654722),
(594, 'Klamhan', 13, 116470, 84907, 91000, 76.50, 41.00, 92.00, 26.00, 29.00, 24.50, 15175, 0, 0, 134, 154, 35, 280, 404, 0, 21652859),
(596, 'Jacques Skellinou', 16, 143648, 130601, 136000, 153.00, 122.00, 241.00, 160.00, 62.00, 20.00, 19374, 0, 0, 3790275, 2905, 3271, 1893, 2981, 0, 21645814),
(598, 'Oldoron', 9, 56697, 36778, 45000, 48.00, 35.00, 53.00, 50.00, 27.00, 54.00, 20170, 0, 0, 1634030, 120, 239, 215, 280, 0, 21635165),
(601, 'Gael', 8, 62345, 33517, 36000, 40.00, 20.00, 55.00, 24.00, 23.00, 23.00, 30000, 0, 0, 3426332, 282, 489, 275, 207, 0, 21641768),
(604, 'Goundrak', 10, 60560, 50743, 55000, 122.00, 76.00, 28.00, 12.00, 30.00, 15.00, 30000, 0, 0, 4422527, 223, 181, 110, 118, 0, 21629173),
(606, 'Crios', 12, 98559, 72144, 78000, 62.00, 58.00, 19.00, 53.00, 52.00, 60.00, 21632, 0, 0, 2261987, 434, 297, 83, 406, 0, 21629940),
(608, 'Rowenda', 8, 62041, 34573, 36000, 36.00, 36.00, 17.00, 30.00, 25.00, 43.00, 30000, 0, 0, 5717430, 492, 194, 99, 314, 0, 21607076),
(611, 'Marsys', 9, 108158, 42761, 45000, 52.50, 30.00, 79.00, 37.00, 29.50, 22.00, 11371, 0, 0, 76759, 713, 577, 562, 686, 0, 21631388),
(614, 'Bibble', 11, 93943, 61964, 66000, 83.00, 72.00, 30.00, 33.50, 23.00, 23.50, 12006, 0, 0, 178, 74, 39, 30, 23, 0, 21646929),
(618, 'Ymir', 6, 56135, 18003, 21000, 39.00, 32.00, 48.00, 109.00, 21.00, 15.00, 20000, 0, 0, 5369151, 500, 243, 246, 270, 0, 21608254),
(623, 'Sartibule', 19, 90997, 171116, 190000, 211.00, 145.50, 79.00, 16.50, 64.50, 19.50, 20000, 0, 0, 188432, 310, 341, 237, 587, 0, 21645875),
(628, 'Oryanna', 10, 101893, 48572, 55000, 101.00, 53.00, 101.00, 82.00, 53.00, 28.00, 40000, 0, 0, 76069, 215, 804, 76, 169, 0, 21645613),
(637, 'Thistos', 10, 151624, 50016, 55000, 57.00, 42.00, 32.00, 59.00, 30.00, 30.00, 1052, 0, 0, 30, 363, 577, 632, 579, 0, 21647459),
(638, 'Harnas', 13, 142499, 88260, 91000, 45.50, 53.00, 29.00, 58.00, 75.50, 56.50, 26444, 0, 0, 51942, 863, 616, 147, 221, 0, 21648149),
(643, 'Ordinn', 16, 168563, 130517, 136000, 74.00, 100.00, 17.00, 89.00, 28.00, 112.00, 638, 0, 0, 19900, 0, 259, 144, 61, 0, 21646183),
(644, 'Khiran', 10, 113637, 51818, 55000, 73.00, 51.00, 18.00, 59.00, 30.00, 45.00, 1926, 0, 0, 1121592, 483, 359, 433, 652, 0, 21648743),
(651, 'Hawkys', 7, 89462, 27949, 28000, 39.00, 14.50, 24.50, 15.00, 28.50, 71.50, 20000, 0, 0, 1460014, 718, 451, 448, 545, 0, 21643536),
(654, 'Chitcat', 6, 69037, 19050, 21000, 38.00, 20.00, 25.00, 16.00, 23.00, 38.00, 30000, 0, 0, 2264556, 501, 441, 575, 364, 0, 21600190),
(655, 'Sansst', 1, 3134, 0, 1000, 300.00, 18.00, 8.50, 17.50, 12.00, 13.00, 0, 0, 0, 1000009647, 50, 50, 50, 50, 0, 21579546),
(660, 'Valt&eacute;ri', 8, 83401, 31232, 36000, 75.00, 31.00, 59.00, 100.00, 38.00, 21.00, 30000, 0, 0, 205491, 999, 835, 553, 833, 0, 21647622),
(661, 'Gharnohk', 10, 179879, 45043, 55000, 64.00, 35.00, 63.00, 20.00, 41.00, 107.00, 10768, 0, 0, 248876, 392, 289, 391, 483, 0, 21645869),
(666, 'Yzeute', 9, 130974, 44801, 45000, 39.50, 38.00, 56.00, 33.00, 21.00, 16.50, 18017, 0, 0, 21, 78, 133, 50, 265, 0, 21648749),
(669, 'Ashut', 8, 70859, 34590, 36000, 49.00, 26.00, 66.00, 25.00, 25.00, 26.00, 374, 0, 0, 886019, 369, 176, 524, 490, 0, 21648571),
(671, 'Zulema', 21, 310997, 219907, 231000, 138.00, 200.00, 90.50, 162.83, 71.00, 96.00, 50000, 0, 0, 148754, 453, 296, 504, 986, 0, 21647377),
(673, 'Griffith', 3, 29204, 5997, 6000, 19.00, 16.00, 25.00, 27.00, 17.50, 14.50, 10000, 0, 0, 650809, 75, 195, 193, 47, 0, 21642931),
(674, 'Onacona', 15, 156391, 110047, 120000, 43.50, 32.50, 48.00, 46.50, 60.50, 77.00, 30667, 0, 0, 163783, 1042, 458, 774, 1277, 0, 21648657),
(683, 'Karann', 13, 232723, 78831, 91000, 79.50, 60.00, 94.00, 40.00, 40.00, 23.50, 28315, 0, 0, 93383, 411, 363, 503, 658, 0, 21647128),
(685, 'Zacharias', 11, 74742, 56809, 66000, 138.00, 114.00, 31.00, 33.50, 90.00, 13.50, 40000, 0, 0, 239550, 136, 193, 626, 371, 0, 21647191);INSERT INTO `11mar_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(687, 'Vordamass', 13, 135291, 87230, 91000, 67.00, 60.00, 102.50, 53.50, 59.50, 74.50, 21663, 0, 0, 38396, 519, 199, 41, 515, 0, 21647492),
(688, 'Lyonis', 12, 190210, 77366, 78000, 150.00, 95.00, 14.00, 100.00, 77.00, 54.00, 5961, 0, 0, 116040, 127, 287, 255, 174, 0, 21648778),
(691, 'Dantz', 6, 30417, 15065, 21000, 71.00, 39.00, 24.00, 19.00, 20.00, 15.00, 20000, 0, 0, 640253, 161, 259, 244, 206, 0, 21612840),
(700, 'Warenya Fahle', 11, 123877, 60695, 66000, 30.50, 18.50, 24.00, 54.00, 45.00, 108.00, 25357, 0, 0, 474648, 329, 272, 501, 282, 0, 21643608),
(703, 'Azarath', 10, 95818, 45086, 55000, 106.00, 45.00, 31.00, 67.00, 28.00, 13.00, 475, 0, 0, 57275, 40, 251, 105, 19, 0, 21645126),
(704, 'Risnak', 9, 120755, 43326, 45000, 21.50, 22.50, 30.50, 52.00, 22.00, 58.50, 28822, 0, 0, 498, 139, 63, 152, 27, 0, 21647523),
(705, 'Grumpf', 6, 100030, 15826, 21000, 59.00, 41.00, 49.00, 90.00, 25.00, 15.00, 27500, 0, 0, 2731849, 1353, 1052, 1145, 1073, 0, 21629768),
(706, 'Hakra', 9, 72811, 44692, 45000, 113.00, 89.00, 23.00, 11.50, 21.00, 13.50, 30000, 0, 0, 315271, 215, 223, 134, 294, 0, 21647337),
(707, 'Kograh', 8, 59829, 32446, 36000, 14.00, 21.00, 20.00, 140.00, 86.00, 67.00, 30000, 0, 0, 103207, 738, 857, 338, 336, 0, 21645331),
(708, 'Algar', 9, 146860, 36075, 45000, 58.00, 31.50, 32.50, 19.00, 70.50, 67.50, 9794, 0, 0, 77917, 145, 130, 184, 222, 0, 21647163),
(715, 'Krugerr', 3, 22045, 5510, 6000, 22.50, 13.50, 18.50, 13.50, 18.50, 31.50, 20000, 0, 0, 679656, 138, 66, 169, 43, 0, 21633376),
(718, 'Umbre', 5, 23799, 12332, 15000, 16.50, 31.00, 13.00, 25.00, 29.50, 17.50, 20000, 0, 0, 1597642, 62, 144, 107, 190, 0, 21610770),
(720, 'Burgrok Brise`Fer', 15, 116775, 105484, 120000, 125.00, 96.00, 103.50, 97.50, 55.00, 68.00, 50000, 0, 0, 668928, 293, 141, 49, 144, 0, 21647093),
(730, 'Yglora', 10, 73782, 50904, 55000, 28.00, 25.00, 32.00, 94.00, 21.00, 118.00, 40000, 0, 0, 710125, 259, 183, 329, 269, 0, 21652432),
(731, 'Zoltan', 7, 71861, 22541, 28000, 64.00, 72.50, 31.00, 10.50, 22.50, 12.50, 18068, 0, 0, 282742, 347, 346, 368, 272, 0, 21648540),
(732, 'Gruck', 6, 50112, 15520, 21000, 30.00, 30.00, 19.00, 35.00, 22.00, 21.00, 10752, 0, 0, 201122, 79, 16, 64, 102, 0, 21645132),
(733, 'Hijen', 11, 91086, 62113, 66000, 71.00, 76.00, 126.00, 64.00, 32.50, 13.50, 27953, 0, 0, 226244, 1328, 273, 239, 182, 0, 21647585),
(734, 'Jaeregan', 15, 151431, 105706, 120000, 63.00, 40.00, 219.00, 58.00, 30.00, 34.00, 34659, 0, 0, 73622, 424, 42, 25, 203, 0, 21648548),
(736, 'Djikokou', 3, 14012, 4442, 6000, 18.50, 14.50, 16.50, 13.50, 19.50, 34.50, 10000, 0, 0, 718227, 44, 120, 35, 171, 0, 21605026),
(745, 'Cresodurs', 1, 3254, 0, 1000, 20.00, 10.00, 18.00, 19.00, 10.00, 13.00, 0, 0, 0, 57, 0, 0, 0, 0, 0, 21606481),
(746, 'Charlysub', 1, 3134, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5280, 12, 12, 12, 12, 0, 21606571),
(750, 'Anadyomene', 6, 122535, 19097, 21000, 18.00, 38.00, 14.00, 27.00, 44.00, 18.00, 30000, 0, 0, 557212, 206, 272, 371, 242, 0, 21645991),
(751, 'Sorvahn', 7, 133257, 25312, 28000, 60.00, 40.00, 28.00, 8.50, 18.00, 16.50, 22083, 0, 0, 239303, 295, 178, 187, 77, 0, 21647571),
(752, 'Agito', 1, 3572, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 12.00, 0, 0, 0, 137160, 4, 4, 4, 4, 0, 21609141),
(758, 'Skanhs', 8, 97351, 28419, 36000, 101.00, 71.00, 38.00, 11.00, 24.00, 14.00, 30000, 0, 0, 477898, 903, 437, 257, 371, 0, 21646975),
(760, 'Orga', 5, 58365, 12984, 15000, 73.00, 36.50, 8.00, 9.50, 19.50, 12.50, 20000, 0, 0, 726963, 290, 327, 220, 312, 0, 21644367),
(761, 'Yarl Baudig', 5, 122766, 13447, 15000, 40.50, 18.50, 19.00, 93.50, 20.50, 44.00, 120, 0, 0, 259168, 365, 464, 505, 397, 0, 21648574),
(762, 'Shooky', 1, 3689, 0, 1000, 21.00, 11.00, 18.00, 10.00, 16.00, 14.00, 0, 0, 0, 986, 0, 0, 0, 0, 0, 21612109),
(763, 'Darzang', 1, 0, 0, 1000, 16.00, 12.00, 17.00, 11.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612109),
(765, 'Herubanmik', 1, 0, 0, 1000, 15.50, 11.50, 13.50, 10.50, 13.50, 22.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21612109),
(767, 'Kylordion', 11, 130799, 56413, 66000, 84.00, 16.50, 66.50, 19.00, 32.50, 64.50, 24330, 0, 0, 1356834, 867, 473, 391, 380, 0, 21647027),
(768, 'Tharoze', 7, 144118, 22606, 28000, 40.00, 18.50, 22.50, 16.00, 22.50, 53.50, 24474, 0, 0, 2337, 156, 80, 147, 217, 0, 21647509),
(769, 'Xeohrod', 6, 83095, 17811, 21000, 25.00, 18.00, 21.00, 24.00, 31.00, 38.00, 30000, 0, 0, 2454506, 253, 420, 293, 381, 0, 21635680),
(770, 'Mendrake', 7, 58587, 23291, 28000, 76.00, 68.00, 14.00, 11.50, 20.00, 11.50, 30000, 0, 0, 864690, 302, 182, 124, 342, 0, 21640381),
(771, 'Umassi', 8, 115262, 31397, 36000, 34.00, 33.00, 27.00, 65.00, 46.00, 68.00, 30000, 0, 0, 272078, 525, 569, 284, 645, 0, 21648007),
(772, 'Infilz', 6, 121018, 18643, 21000, 27.00, 13.00, 21.00, 32.00, 25.00, 56.00, 16037, 0, 0, 164760, 503, 483, 427, 358, 0, 21647128),
(774, 'Treleg', 12, 144720, 73763, 78000, 135.00, 172.00, 24.00, 46.00, 103.00, 32.00, 36456, 0, 0, 434718, 306, 128, 115, 285, 0, 21648862),
(775, 'Il&eacute;anor', 8, 99121, 31329, 36000, 53.00, 33.00, 109.00, 37.00, 36.00, 21.00, 381, 0, 0, 386162, 914, 482, 370, 608, 0, 21647318),
(777, 'Invoj', 6, 90141, 19808, 21000, 49.00, 12.00, 22.00, 26.00, 22.00, 59.00, 30000, 0, 0, 478514, 295, 440, 211, 422, 0, 21646653),
(778, 'Zijft', 1, 0, 0, 1000, 14.00, 13.00, 19.00, 17.00, 13.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615808),
(779, 'Hijacinthe', 1, 0, 0, 1000, 16.50, 9.50, 15.00, 11.50, 16.50, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615808),
(780, 'Monoro', 1, 0, 0, 1000, 16.50, 14.00, 12.00, 19.00, 11.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21615808),
(782, 'D&eacute;sacre', 6, 116355, 20042, 21000, 31.00, 24.00, 80.00, 20.00, 26.00, 19.00, 19333, 0, 0, 194225, 589, 939, 581, 457, 0, 21648581),
(784, 'Jade', 6, 42711, 20151, 21000, 12.00, 30.00, 22.00, 26.00, 33.00, 51.00, 13310, 0, 0, 669083, 158, 892, 2, 166, 0, 21648385),
(787, 'Lhito', 6, 90524, 15150, 21000, 23.00, 22.00, 26.00, 73.00, 26.00, 36.00, 9483, 0, 0, 636099, 166, 342, 133, 169, 0, 21648704),
(788, 'Mordjane', 1, 0, 0, 1000, 16.00, 12.00, 17.00, 11.00, 12.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21619935),
(790, 'Neveda', 1, 0, 0, 1000, 13.50, 9.00, 25.00, 18.00, 9.50, 12.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21619937),
(791, 'Demolischors', 1, 0, 0, 1000, 17.00, 18.00, 9.00, 20.00, 12.00, 11.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21619938),
(792, 'Dhorlyn', 2, 19358, 2780, 3000, 27.00, 21.00, 19.00, 13.00, 15.00, 13.00, 4974, 0, 0, 54905, 385, 232, 153, 217, 0, 21648181),
(793, 'Darfankettle', 5, 94567, 13076, 15000, 24.50, 13.50, 20.50, 24.50, 22.50, 39.50, 49, 0, 0, 1000860, 315, 236, 70, 282, 0, 21648785),
(794, 'Ratatalk', 1, 3134, 0, 1000, 24.00, 21.00, 10.00, 10.50, 14.00, 8.50, 0, 0, 0, 71484, 0, 0, 0, 0, 0, 21619938);INSERT INTO `11mar_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(795, 'Halambare', 6, 100488, 17550, 21000, 70.00, 33.00, 44.00, 27.00, 25.00, 14.00, 1544, 0, 0, 526422, 325, 525, 365, 506, 0, 21648784),
(796, 'LyrboOss', 1, 3330, 0, 1000, 20.50, 8.50, 14.00, 9.00, 14.00, 21.00, 0, 0, 0, 2520, 0, 0, 0, 0, 0, 21622833),
(797, 'Qatrisk', 1, 0, 0, 1000, 11.50, 10.00, 9.00, 22.50, 16.50, 21.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622835),
(798, 'Valhorn', 1, 0, 0, 1000, 18.00, 10.00, 18.00, 10.00, 17.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622835),
(799, 'Shaynnat', 1, 0, 0, 1000, 14.50, 10.00, 21.00, 16.00, 12.00, 13.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622836),
(800, 'Clemahil', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622836),
(801, 'Belenora', 8, 158308, 28445, 36000, 21.00, 18.00, 25.00, 27.00, 34.00, 59.00, 20000, 0, 0, 83901, 387, 346, 222, 343, 0, 21648521),
(802, 'Astaldoram', 1, 0, 0, 1000, 14.50, 9.50, 12.00, 21.00, 11.00, 19.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21622839),
(803, 'Maikailh', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625304),
(804, 'Lesteur', 1, 0, 0, 1000, 21.00, 19.00, 9.00, 13.00, 15.00, 10.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21625305),
(805, 'Prolor', 7, 82798, 23071, 28000, 70.00, 46.00, 56.00, 15.50, 20.00, 12.50, 30000, 0, 0, 230575, 508, 255, 261, 248, 0, 21648378),
(806, 'Kogisett', 2, 10248, 1058, 3000, 24.00, 13.00, 23.00, 12.00, 16.00, 15.00, 10000, 0, 0, 293428, 131, 104, 126, 115, 0, 21635314),
(807, 'Bloodchedt', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21627187),
(808, 'Mercolothion', 3, 39028, 5241, 6000, 22.00, 14.00, 26.00, 23.00, 13.00, 16.00, 4428, 0, 0, 16150, 105, 54, 152, 205, 0, 21644028),
(815, 'Dakurjia', 1, 3134, 0, 1000, 15.50, 18.00, 10.00, 17.00, 14.50, 10.50, 0, 0, 0, 3322, 0, 0, 0, 0, 0, 21629945),
(816, 'Ruddax', 5, 92872, 10538, 15000, 33.50, 20.00, 38.00, 18.00, 15.00, 14.50, 9349, 0, 0, 77, 150, 150, 50, 150, 0, 21638194),
(818, 'Sindatal', 1, 7201, 157, 1000, 14.50, 15.00, 10.00, 16.50, 14.00, 18.00, 10000, 0, 0, 308616, 18, 11, 17, 17, 0, 21635182),
(819, 'Malmos', 1, 3167, 0, 1000, 17.50, 17.00, 17.00, 13.00, 13.00, 12.50, 0, 0, 0, 49815, 8, 8, 8, 8, 0, 21629953),
(820, 'Yannslath', 1, 3134, 0, 1000, 16.50, 10.00, 24.00, 16.00, 10.00, 11.50, 0, 0, 0, 3817, 0, 0, 0, 0, 0, 21629953),
(821, 'Solemyr', 4, 74129, 8817, 10000, 26.00, 26.00, 14.00, 30.00, 19.00, 17.00, 12809, 0, 0, 137850, 113, 292, 114, 91, 0, 21665547),
(822, 'Oedarn', 4, 58002, 7407, 10000, 61.00, 14.00, 35.00, 16.00, 18.00, 17.00, 20000, 0, 0, 132156, 127, 222, 219, 147, 0, 21644354),
(823, 'Narmacilis', 4, 31652, 8702, 10000, 66.00, 28.00, 18.00, 22.00, 16.00, 14.00, 20000, 0, 0, 482773, 97, 125, 63, 154, 0, 21641397),
(825, 'Jijona', 7, 63211, 24871, 28000, 22.50, 31.00, 15.00, 130.33, 36.50, 22.50, 30000, 0, 0, 201019, 570, 233, 399, 333, 0, 21647950),
(828, 'Vaenyel', 1, 7660, 114, 1000, 14.50, 10.50, 13.00, 13.00, 12.00, 28.00, 10000, 0, 0, 5940, 53, 53, 53, 53, 0, 21648109),
(829, 'Tiposa', 3, 69593, 4164, 6000, 24.50, 16.00, 30.00, 19.00, 12.00, 12.50, 9834, 0, 0, 243743, 101, 217, 96, 158, 0, 21643436),
(831, 'Kennit', 3, 48969, 5510, 6000, 15.50, 14.00, 14.00, 37.50, 21.50, 30.50, 13854, 0, 0, 45160, 157, 170, 73, 81, 0, 21646578),
(832, 'Krumrarz', 1, 0, 0, 1000, 16.00, 13.00, 20.00, 16.50, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21632701),
(833, 'Erinal&euml;', 1, 3134, 0, 1000, 12.50, 9.00, 19.00, 15.50, 12.00, 19.00, 0, 0, 0, 5001, 0, 0, 0, 0, 0, 21632701),
(840, 'Teperek', 3, 47930, 4027, 6000, 29.00, 26.00, 16.50, 18.00, 18.00, 13.50, 20000, 0, 0, 106209, 137, 205, 191, 188, 0, 21654158),
(841, 'Braniack', 1, 3134, 0, 1000, 17.00, 18.00, 9.00, 20.00, 13.00, 11.00, 0, 0, 0, 167700, 32, 32, 32, 32, 0, 21633667),
(843, 'Eladriel', 1, 16560, 414, 1000, 14.00, 14.00, 13.50, 15.50, 13.00, 20.00, 105, 0, 0, 221268, 140, 50, 93, 51, 0, 21648705),
(844, 'Ariban', 1, 0, 0, 1000, 15.00, 16.00, 13.00, 17.00, 14.00, 14.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638190),
(845, 'Jpgeant', 1, 0, 0, 1000, 24.00, 19.00, 10.00, 10.50, 13.00, 10.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638190),
(846, 'Yeldierick', 3, 67070, 4871, 6000, 25.00, 21.00, 9.50, 25.50, 15.00, 21.00, 10000, 0, 0, 14761, 271, 201, 253, 116, 0, 21648663),
(847, 'Aftergodme', 1, 3134, 0, 1000, 18.00, 18.00, 15.00, 12.50, 13.00, 12.50, 0, 0, 0, 5030, 0, 0, 0, 0, 0, 21638190),
(848, 'Eragole', 4, 30374, 7329, 10000, 20.00, 47.00, 26.00, 35.00, 21.00, 14.00, 9621, 0, 0, 180449, 75, 105, 72, 101, 0, 21647167),
(849, 'Elazur', 1, 0, 0, 1000, 13.50, 13.50, 14.00, 15.50, 14.50, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21638190),
(850, 'Anarkall', 1, 3134, 0, 1000, 20.00, 13.00, 16.00, 8.50, 16.00, 13.50, 0, 0, 0, 5393, 0, 0, 0, 0, 0, 21638750),
(851, 'Mithyav', 1, 5683, 231, 1000, 18.00, 15.00, 17.00, 14.00, 13.00, 15.00, 10000, 0, 0, 215107, 17, 7, 7, 7, 0, 21638751),
(853, 'Morphox', 1, 3408, 0, 1000, 19.00, 11.00, 19.00, 10.00, 15.00, 14.00, 0, 0, 0, 583, 0, 0, 0, 0, 0, 21639703),
(854, 'Kilars', 1, 0, 0, 1000, 17.00, 11.00, 16.00, 19.00, 11.00, 13.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21641456),
(855, 'Virshan', 1, 3137, 0, 1000, 21.00, 9.50, 14.50, 9.00, 17.50, 19.50, 0, 0, 0, 3585, 0, 0, 0, 0, 0, 21641456),
(856, 'Gregoireo', 1, 3302, 0, 1000, 32.00, 15.00, 15.00, 5.50, 12.00, 13.50, 0, 0, 0, 3585, 4, 4, 4, 4, 0, 21641456),
(857, 'Vaith', 1, 7559, 0, 1000, 12.50, 10.00, 16.00, 24.00, 13.00, 16.50, 0, 0, 0, 4090, 29, 45, 24, 13, 0, 21643017),
(859, 'Olinos', 1, 0, 0, 1000, 27.00, 18.50, 10.00, 8.50, 14.50, 8.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644579),
(860, 'Erkast', 1, 0, 0, 1000, 19.00, 16.00, 15.00, 9.50, 10.00, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644579),
(861, 'Cael', 1, 0, 0, 1000, 12.50, 10.00, 12.00, 23.00, 15.00, 18.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644579),
(862, 'Morriganithil', 1, 0, 0, 1000, 14.50, 15.00, 9.00, 16.50, 14.00, 18.00, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21644579),
(863, 'Katum', 3, 13547, 3013, 6000, 32.00, 25.00, 17.50, 18.00, 15.00, 13.50, 10028, 0, 0, 9012, 3, 20, 28, 3, 0, 21648368),
(864, 'Storia', 1, 4936, 0, 1000, 22.00, 18.50, 15.00, 13.50, 13.50, 12.50, 1079, 0, 0, 40, 0, 0, 0, 0, 0, 21647469),
(865, 'Xeitheus', 1, 0, 0, 1000, 17.50, 12.00, 22.00, 14.00, 10.00, 11.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648710);INSERT INTO `11mar_joueurs_stats_2` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(866, 'Vardahil', 1, 0, 0, 1000, 20.00, 17.00, 17.00, 10.50, 13.00, 9.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648710),
(867, 'Azaar', 1, 3198, 0, 1000, 13.50, 13.50, 15.00, 15.50, 14.50, 18.00, 0, 0, 0, 547, 0, 0, 0, 0, 0, 21648710),
(868, 'Cemaure', 1, 0, 0, 1000, 19.00, 16.00, 15.00, 9.50, 10.00, 17.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648710),
(869, 'Devassilien', 1, 0, 0, 1000, 14.50, 17.00, 10.00, 18.00, 13.50, 12.50, 0, 0, 0, 5000, 0, 0, 0, 0, 0, 21648710);



CREATE TABLE `11mar_guildes_3` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(80) NOT NULL default '',
  `province` varchar(40) NOT NULL default '',
  `nb_membres` int(11) NOT NULL default '0',
  `date_création` int(11) NOT NULL default '0',
  `img` tinytext NOT NULL,
  `chef` varchar(50) NOT NULL default '',
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `regles` text NOT NULL,
  `puissance` int(11) NOT NULL default '0',
  `siteweb` tinytext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `11mar_guerres_3` (
  `id` int(11) NOT NULL auto_increment,
  `type` varchar(10) NOT NULL default '0',
  `valide` varchar(10) NOT NULL default '0',
  `initiateur` varchar(80) NOT NULL default '',
  `guilde1` varchar(80) NOT NULL default '',
  `guilde2` varchar(80) NOT NULL default '',
  `indep1` text NOT NULL,
  `indep2` text NOT NULL,
  `declaration` text NOT NULL,
  `vainqueur` varchar(80) NOT NULL default '',
  `dateDebut` int(11) NOT NULL default '0',
  `puissDebut1` int(11) NOT NULL default '0',
  `puissDebut2` int(11) NOT NULL default '0',
  `dateFin` int(11) NOT NULL default '0',
  `puissFin1` int(11) NOT NULL default '0',
  `puissFin2` int(11) NOT NULL default '0',
  `cond1` varchar(20) NOT NULL default '',
  `val1` int(11) NOT NULL default '0',
  `cond2` varchar(20) NOT NULL default '',
  `val2` int(11) NOT NULL default '0',
  `cond3` varchar(20) NOT NULL default '',
  `val3` int(11) NOT NULL default '0',
  `andor` char(3) NOT NULL default '',
  `prop1` varchar(20) NOT NULL default '',
  `valp1` int(11) NOT NULL default '0',
  `prop2` varchar(20) NOT NULL default '',
  `valp2` int(11) NOT NULL default '0',
  `prop3` varchar(20) NOT NULL default '',
  `valp3` int(11) NOT NULL default '0',
  `andorp` char(3) NOT NULL default '',
  `proposeur` varchar(80) NOT NULL default '',
  `nbrAttaVict` double NOT NULL default '0',
  `nbrAttaDefa` double NOT NULL default '0',
  `nbrDefeVict` double NOT NULL default '0',
  `nbrDefeDefa` double NOT NULL default '0',
  `xp1` int(11) NOT NULL default '0',
  `xp2` int(11) NOT NULL default '0',
  `pertePuiss1` int(11) NOT NULL default '0',
  `pertePuiss2` int(11) NOT NULL default '0',
  `acres1` int(11) NOT NULL default '0',
  `acres2` int(11) NOT NULL default '0',
  `prison1` int(11) NOT NULL default '0',
  `prison2` int(11) NOT NULL default '0',
  `tues1` int(11) NOT NULL default '0',
  `tues2` int(11) NOT NULL default '0',
  `detruits1` double NOT NULL default '0',
  `detruits2` double NOT NULL default '0',
  `or1` int(11) NOT NULL default '0',
  `or2` int(11) NOT NULL default '0',
  `ressources1` int(11) NOT NULL default '0',
  `ressources2` int(11) NOT NULL default '0',
  `PGCj1` varchar(25) NOT NULL default '',
  `PGCj2` varchar(25) NOT NULL default '',
  `PGCxp1` int(11) NOT NULL default '0',
  `PGCxp2` int(11) NOT NULL default '0',
  `PGCatta` varchar(25) NOT NULL default '',
  `PGCvainqueur` varchar(25) NOT NULL default '',
  `cache` int(11) NOT NULL default '0',
  `leaver1` text NOT NULL,
  `leaver2` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE `11mar_joueurs_bonus_3` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(30) NOT NULL default '',
  `att` smallint(6) NOT NULL default '0',
  `def` smallint(6) NOT NULL default '0',
  `ini` smallint(6) NOT NULL default '0',
  `cha` smallint(6) NOT NULL default '0',
  `end` smallint(6) NOT NULL default '0',
  `pui` smallint(6) NOT NULL default '0',
  `chance` smallint(6) NOT NULL default '0',
  `offensive` tinyint(4) NOT NULL default '100',
  `defensive` tinyint(4) NOT NULL default '100',
  `rapport` tinyint(4) NOT NULL default '0',
  `politique` varchar(40) NOT NULL default 'Autarcie',
  `province` varchar(40) NOT NULL default 'Aucune',
  `statut` varchar(40) NOT NULL default '',
  `guilde` varchar(70) NOT NULL default 'Aucune',
  `chg_province` int(11) NOT NULL default '0',
  `quete` int(11) NOT NULL default '0',
  `victoire` int(11) NOT NULL default '0',
  `défaite` int(11) NOT NULL default '0',
  `gain_jour` int(11) NOT NULL default '0',
  `guildeRP` int(11) NOT NULL default '0',
  `rangguildeRP` int(11) NOT NULL default '0',
  `rapportOff` int(11) NOT NULL default '0',
  `incantemin` smallint(6) NOT NULL default '-1',
  `incantemax` smallint(6) NOT NULL default '-1',
  `incantetjrsoff` tinyint(4) NOT NULL default '1',
  `incanterExplo` tinyint(1) NOT NULL default '1',
  `objets_casses` smallint(5) unsigned NOT NULL default '0',
  `satt` smallint(3) NOT NULL default '0',
  `sdef` smallint(3) NOT NULL default '0',
  `sini` smallint(3) NOT NULL default '0',
  `spui` smallint(3) NOT NULL default '0',
  `send` smallint(3) NOT NULL default '0',
  `scha` smallint(3) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

INSERT INTO `11mar_joueurs_bonus_3` (`id`, `nom`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `chance`, `offensive`, `defensive`, `rapport`, `politique`, `province`, `statut`, `guilde`, `chg_province`, `quete`, `victoire`, `défaite`, `gain_jour`, `guildeRP`, `rangguildeRP`, `rapportOff`, `incantemin`, `incantemax`, `incantetjrsoff`, `incanterExplo`, `objets_casses`, `satt`, `sdef`, `sini`, `spui`, `send`, `scha`) VALUES
(1, 'Babka', 29, 30, 32, 11, 0, 20, 3, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21443125, 0, 80, 34, 98687, 1, 2, 0, -1, -1, 1, 1, 5, 16, 0, 0, 0, 0, 0),
(3, 'Adola', 75, 49, 132, 10, 22, 0, 0, 30, 10, 0, 'Oligarchie', 'Édhesse', '', 'Aucune', 21443483, 0, 37, 115, 254325, 1, 6, 1, -1, -1, 0, 0, 13, 7, 8, 1, 0, 1, 0),
(4, 'Malian', 17, 10, 4, 41, 68, 40, 0, 80, 70, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21443764, 0, 42, 51, 334114, 2, 1, 1, 30, 40, 1, 0, 18, 0, 0, 7, 2, 13, 0),
(5, 'Irkos', 71, 63, 64, 5, 23, 9, 0, 100, 10, 0, 'Anarchie', 'Outre-Mer', '', 'Aucune', 21443994, 0, 61, 105, 319181, 4, 2, 1, -1, -1, 1, 0, 17, 3, 2, 2, 1, 7, 3),
(9, 'L`Ardonien', 53, 73, 67, 86, 87, 39, 2, 60, 60, 0, 'République', 'Thassopole', '', 'Aucune', 21444359, 0, 56, 67, 267025, 4, 1, 0, 30, 50, 0, 0, 224, 7, 0, 0, 0, 14, 0),
(15, 'Aquilodon L`Aveugle', 3, 2, 10, 0, 0, 0, 0, 70, 60, 0, 'Oligarchie', 'Zakinthe', '', 'Aucune', 21466784, 0, 85, 77, 93111, 3, 1, 0, -1, -1, 1, 0, 6, 0, 0, 11, 5, 0, 0),
(20, 'Alexia', 2, 11, 0, 1, 24, 8, 2, 100, 100, 0, 'Gérontocratie', 'Maon', '', 'Aucune', 21529850, 0, 79, 77, 233265, 0, 0, 0, -1, -1, 1, 1, 2, 0, 5, 3, 4, 1, 0),
(25, 'Aedric', 55, 0, 0, 0, 30, 16, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21566645, 0, 22, 14, 151813, 3, 6, 0, -1, -1, 1, 1, 0, 4, 0, 0, 0, 3, 0),
(34, 'Tulkas', 16, 11, 2, 53, 4, 25, 0, 100, 10, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21602597, 0, 24, 18, 197753, 2, 1, 0, -1, -1, 1, 0, 0, 0, 0, 10, 0, 0, 0),
(39, 'Lulyane', 8, 2, 13, 0, 44, 76, 0, 100, 80, 0, 'Anarchie', 'Prévèze', '', 'Aucune', 21628036, 0, 13, 11, 208423, 2, 1, 0, 30, 30, 0, 0, 5, 0, 0, 8, 0, 0, 0),
(40, 'Braniack', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Despotisme', 'Naxopole', '', 'Aucune', 21616518, 0, 0, 0, 8755, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 0, 0, 1, 0),
(41, 'Uzul', 3, 2, 0, 0, 0, 0, 0, 100, 100, 0, 'Théocratie', 'Scitopole', '', 'Aucune', 21628369, 0, 8, 1, 114260, 4, 2, 0, -1, -1, 1, 1, 0, 0, 0, 3, 0, 0, 0),
(42, 'Perstan', 2, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'République', 'Thassopole', '', 'Aucune', 21641669, 0, 0, 1, 66058, 0, 0, 0, -1, -1, 1, 1, 0, 2, 0, 0, 0, 0, 0),
(43, 'Mornor', 0, 0, 0, 0, 0, 0, 0, 100, 100, 0, 'Oligarchie', 'Argostole', '', 'Aucune', 21635756, 0, 1, 0, 66746, 0, 0, 0, -1, -1, 1, 1, 0, 0, 0, 1, 0, 0, 0);



CREATE TABLE `11mar_joueurs_heros_3` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(25) NOT NULL default '',
  `race` varchar(25) NOT NULL default '',
  `classe` varchar(25) NOT NULL default '',
  `dieu` varchar(25) NOT NULL default '',
  `titre` varchar(25) NOT NULL default '',
  `royaume` varchar(50) NOT NULL,
  `puissance` int(11) NOT NULL default '0',
  `nb` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

INSERT INTO `11mar_joueurs_heros_3` (`id`, `nom`, `race`, `classe`, `dieu`, `titre`, `royaume`, `puissance`, `nb`) VALUES
(1, 'Babka', 'Elfe', 'Voleur', 'Chemins', 'Conseiller', 'd`Helcar', 83117, 0),
(3, 'Adola', 'Elfe Noir', 'Assassin', 'Mort', 'Patriarche', 'des Plaines Perdues', 497497, 0),
(4, 'Malian', 'Fée', 'Magicien', 'Pensée', 'Intendant', 'de Diriath', 527261, 0),
(5, 'Irkos', 'Elfe', 'Guerrier', 'Légendes', 'Conseiller', 'de Kalferas', 595764, 0),
(9, 'L`Ardonien', 'Homme', 'Paladin', 'Honneur', 'Seigneur', 'de Le Village Isol&eacute;', 223227, 0),
(15, 'Aquilodon L`Aveugle', 'Géant', 'Shaman', 'Guerre', 'Seigneur', 'de M&eacute;n&eacute;x&egrave;ne', 108801, 0),
(20, 'Alexia', 'Fée', 'Enchanteur', 'Magie', 'Intendante', 'de Dragoland', 141538, 0),
(25, 'Aedric', 'Homme', 'Inquisiteur', 'Force', 'Seigneur', 'de Nardogord', 70521, 0),
(34, 'Tulkas', 'Célestial', 'Magicien', 'Pensée', 'Maître', 'd`Illya-Verte', 74077, 0),
(39, 'Lulyane', 'Vampire', 'Sorcier', 'Pensée', 'Comtesse', 'de La Tour Opaline', 120028, 0),
(40, 'Braniack', 'Vampire', 'Démonologiste', 'Magie', 'Comte', 'de Kryws', 3240, 0),
(41, 'Uzul', 'Célestial', 'Paladin', 'Honneur', 'Maître', 'd`Arataribe', 95580, 0),
(42, 'Perstan', 'Elfe', 'Rôdeur', 'Chemins', 'Conseiller', 'de Rothink', 21001, 0),
(43, 'Mornor', 'Infernal', 'Démonologiste', 'Ténèbres', 'Despote', 'd`Armale', 19636, 0);



CREATE TABLE `11mar_joueurs_stats_3` (
  `id` int(11) NOT NULL auto_increment,
  `nom` varchar(25) NOT NULL default '',
  `niveau` tinyint(4) NOT NULL default '0',
  `puissance` int(11) NOT NULL default '0',
  `xp` int(11) NOT NULL default '0',
  `but` int(11) NOT NULL default '0',
  `att` float(5,2) NOT NULL default '0.00',
  `def` float(5,2) NOT NULL default '0.00',
  `ini` float(5,2) NOT NULL default '0.00',
  `cha` float(5,2) NOT NULL default '0.00',
  `end` float(5,2) NOT NULL default '0.00',
  `pui` float(5,2) NOT NULL default '0.00',
  `mana` int(11) NOT NULL default '0',
  `victoire` tinyint(4) NOT NULL default '0',
  `defaite` tinyint(4) NOT NULL default '0',
  `argent` int(11) NOT NULL default '0',
  `soufre` mediumint(9) NOT NULL default '0',
  `mercure` mediumint(9) NOT NULL default '0',
  `cristal` mediumint(9) NOT NULL default '0',
  `gemme` mediumint(9) NOT NULL default '0',
  `heure` tinyint(4) NOT NULL default '0',
  `indice_militaire` int(11) NOT NULL default '19314424',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

INSERT INTO `11mar_joueurs_stats_3` (`id`, `nom`, `niveau`, `puissance`, `xp`, `but`, `att`, `def`, `ini`, `cha`, `end`, `pui`, `mana`, `victoire`, `defaite`, `argent`, `soufre`, `mercure`, `cristal`, `gemme`, `heure`, `indice_militaire`) VALUES
(1, 'Babka', 16, 83117, 121333, 136000, 81.00, 54.00, 132.00, 74.00, 17.00, 47.00, 15531, 0, 0, 1764678, 182, 376, 147, 591, 0, 21645977),
(3, 'Adola', 17, 497497, 150541, 153000, 132.00, 83.00, 231.00, 52.00, 56.00, 30.00, 39688, 0, 0, 319533, 498, 814, 826, 490, 0, 21642717),
(4, 'Malian', 22, 527261, 242669, 253000, 35.00, 40.00, 50.00, 88.00, 158.00, 170.00, 10558, 0, 0, 4529220, 563, 941, 695, 985, 0, 21647459),
(5, 'Irkos', 18, 595764, 169275, 171000, 158.00, 146.00, 120.00, 33.00, 57.00, 30.00, 50000, 0, 0, 769361, 875, 791, 717, 812, 0, 21631048),
(9, 'L`Ardonien', 21, 223227, 228854, 231000, 115.00, 129.00, 100.00, 163.00, 155.00, 93.00, 13818, 0, 0, 4371364, 3592, 3191, 3723, 3275, 0, 21644358),
(15, 'Aquilodon L`Aveugle', 16, 108801, 126978, 136000, 57.00, 34.00, 53.00, 15.00, 52.00, 87.00, 40000, 0, 0, 4182, 418, 5, 115, 332, 0, 21653180),
(20, 'Alexia', 13, 141538, 85929, 91000, 15.50, 63.00, 32.00, 40.00, 82.50, 37.50, 28721, 0, 0, 557, 485, 274, 139, 186, 0, 21642232),
(25, 'Aedric', 7, 70521, 25109, 28000, 92.50, 30.50, 15.50, 19.00, 66.00, 45.50, 15168, 0, 0, 1012579, 95, 90, 186, 122, 0, 21646080),
(34, 'Tulkas', 10, 74077, 54664, 55000, 35.00, 35.00, 31.00, 84.00, 44.00, 87.00, 30000, 0, 0, 491522, 344, 129, 356, 261, 0, 21644452),
(39, 'Lulyane', 8, 120028, 28921, 36000, 26.00, 15.00, 41.00, 50.00, 68.00, 122.00, 30000, 0, 0, 282894, 295, 485, 305, 482, 0, 21642469),
(40, 'Braniack', 1, 3240, 0, 1000, 15.50, 9.50, 12.50, 18.50, 12.50, 19.50, 10000, 0, 0, 316492, 50, 50, 50, 50, 0, 21615340),
(41, 'Uzul', 3, 95580, 4401, 6000, 24.00, 24.00, 14.00, 26.00, 16.00, 15.00, 725, 0, 0, 227147, 213, 155, 242, 364, 0, 21642429),
(42, 'Perstan', 2, 21001, 1764, 3000, 21.00, 12.00, 28.00, 19.00, 11.00, 12.00, 6543, 0, 0, 358191, 49, 45, 143, 47, 0, 21634464),
(43, 'Mornor', 1, 19636, 370, 1000, 15.50, 10.50, 16.50, 10.50, 12.50, 22.50, 10000, 0, 0, 151618, 61, 29, 59, 30, 0, 21641005);



