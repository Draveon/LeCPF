<?php session_start();
#Ainkurn : 2015
# fonctionnement approximatif
#1)Ajouter un array à la liste dateoptions
#2) appeller l'adresse du hof en ajoutant &creerhof=true pour chaque serveur
#seront crés les tableaux php du dossier /hof/
$head_title = 'Le Hall of Fame';
$head_keywords = 'joueur, classement, puissance, xp, meilleur, combat';

parse_str($_SERVER['QUERY_STRING'], $_GET);//Ainkurn pour automatiser appel php from cli

//	SELECT * FROM joueurs_stats INNER JOIN joueurs_bonus ON joueurs_stats.nom = joueurs_bonus.nom WHERE puissance > '0'

// *** *** *** écriture des en-têtes
if (!isset($_SESSION['connexion']))
	$_SESSION['connexion'] = 0;
include ('debut.php');
if ($_SESSION['connexion'] != 1)
	include ('menu_index.php');
if ($_SESSION['connexion'] == 1)
	include ('menu.php');
entete_index("Hall of Fame");
echo "</form>\n";



// *** *** *** variables utiles
$nbrplayers=15;								// nombre de joueur affichés dans les classements

$dateoptions = array(
	array(	"RàZ Février 07",					// display
		"fev07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"Mars 07",						// display
		"mar07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"Avril 07",						// display
		"avr07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"Mai 07",						// display
		"mai07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"Juin 07",						// display
		"juin07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"Juillet 07",						// display
		"juil07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"Août 07",						// display
		"aou07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		0
	),
	array(	"RàZ Septembre 07",						// display
		"sept07_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"spacer" ),
	array(	"Octobre 07",						// display
		"07oct_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Novembre 07",						// display
		"07nov_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Décembre 07",						// display
		"07dec_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Janvier 08",						// display
		"08jan_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Février 08",						// display
		"08fev_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Mars 08",						// display
		"08mar_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Avril 08",						// display
		"08avr_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"RàZ Mai 08",						// display
		"08mai_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"spacer" ),
	array(	"Juin 08",						// display
		"08juin_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Juillet 08",						// display
		"08juil_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Août 08",						// display
		"08aou_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Septembre 08",						// display
		"08sep_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Octobre 08",						// display
		"08oct_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Novembre 08",						// display
		"08nov_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Décembre 08",						// display
		"08dec_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"RàZ Janvier 09",					// display
		"09jan_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"spacer" ),
	array(	"Février 09",						// display
		"09fev_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Mars 09",						// display
		"09mar_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Avril 09",						// display
		"09avr_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Mai 09",						// display
		"09mai_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Juin 09",						// display
		"09juin_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Juillet 09",						// display
		"09juil_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Août 09",						// display
		"09aou_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Septembre 09",						// display
		"09sep_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Octobre 09",						// display
		"09oct_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Novembre 09",						// display
		"09nov_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"spacer" ),
	array(	"Décembre 09",						// display
		"09dec_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Janvier 10",						// display
		"10jan_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Février 10",						// display
		"10fev_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Mars 10",						// display
		"10mar_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Avril 10",						// display
		"10avr_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Mai 10",						// display
		"10mai_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
		array(	"Juin 10",						// display
		"10jui_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
		array(	"Juillet 10",						// display
		"10juil_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
		array(	"Août 10",						// display
		"10aou_",						// préfixe des tables selon da
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
		array(	"RàZ septembre 10",						// display
		"10sept_",						// préfixe des tables selon da
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"spacer" ),
	array(	"Octobre 10",					// display
		"10oct_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Novembre 10",					// display
		"10nov_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Décembre 10",					// display
		"10dec_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Janvier 11",					// display
		"11jan_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Février 11",					// display
		"11fev_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Mars 11",					// display
		"11mar_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Avril 11",					// display
		"11avr_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"RàZ Mai 11",					// display
		"11mai_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"spacer" ),
	array(	"Juin 11",					// display
		"11jui_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Juillet 11",					// display
		"11juil_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1
	),
	array(	"Août 11",						// display
		"11aou_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Septembre 11",						// display
		"11sept_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Octobre 11",						// display
		"11oct_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	),
	array(	"Novembre 11",						// display
		"11nov__",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("0",		"0",		"0"),		// dans quelle db sont les tables
		"statique",
		1							// quels hof sont affichés
	)
	,array(	"spacer" )
        ,array(	"Juin 15",					// display
		"15jui_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("1",		"2",		"3"),		// dans quelle db sont les tables
		"statique",
		1
	)
,array(	"Juillet 15",					// display
		"15jul_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("1",		"2",		"3"),		// dans quelle db sont les tables
		"statique",
		1
	)
,array(	"Aout 15",					// display
		"15aou_",						// préfixe des tables selon date
		array("Serveur 1",	"Serveur 2", 	"Serveur RP"),	// display
		array("_1", 		"_2",		"_3"	),	// suffixe des tables selon serveur
		array("1",		"2",		"3"),		// dans quelle db sont les tables
		"statique",
		1
	)

,array("Sep 15","15Sep_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Oct 15","15Oct_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Nov 15","15Nov_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Dec 16","16Dec_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Jan 16","16Jan_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Feb 16","16Feb_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Mar 16","16Mar_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Apr 16","16Apr_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("May 16","16May_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Jun 16","16Jun_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Jul 16","16Jul_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Aug 16","16Aug_",array("Serveur 1","Serveur 2","Serveur RP"),array("_1","_2","_3"	),array("1","2","3"),"statique",1)
,array("Sep 16","16Sep_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Oct 16","16Oct_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Nov 16","16Nov_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Dec 17","17Dec_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jan 17","17Jan_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Feb 17","17Feb_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Mar 17","17Mar_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Apr 17","17Apr_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("May 17","17May_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jun 17","17Jun_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jul 17","17Jul_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Aug 17","17Aug_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Sep 17","17Sep_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Oct 17","17Oct_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Nov 17","17Nov_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Dec 18","18Dec_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jan 18","18Jan_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Feb 18","18Feb_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Mar 18","18Mar_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Apr 18","18Apr_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Aug 18","18Aug_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Sep 18","18Sep_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Oct 18","18Oct_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Nov 18","18Nov_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Dec 19","19Dec_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jan 19","19Jan_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Feb 19","19Feb_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Mar 19","19Mar_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Avr 19","19Avr_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Apr 19","19Apr_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("May 19","19May_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jun 19","19Jun_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jul 19","19Jul_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Aug 19","19Aug_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Sep 19","19Sep_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Oct 19","19Oct_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Nov 19","19Nov_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Dec 20","20Dec_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jan 20","20Jan_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Feb 20","20Feb_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Mar 20","20Mar_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Apr 20","20Apr_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("May 20","20May_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jun 20","20Jun_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jul 20","20Jul_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Aug 20","20Aug_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Sep 20","20Sep_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Oct 20","20Oct_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Nov 20","20Nov_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Dec 21","21Dec_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jan 21","21Jan_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Feb 21","21Feb_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Mar 21","21Mar_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Apr 21","21Apr_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("May 21","21May_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
,array("Jun 21","21Jun_",array("Serveur 1","Serveur 2"),array("_1","_2"	),array("1","2"),"statique",2)
//replaceAinkurn Dont touch this code
);


$classement_[0] = array(		// identifiant, intitulé
	array("puissance",	"Puissance"),
	array("xp",		"xp"),
	array("vict",		"# victoires"),
	array("ratioVT",	"Ratio V/T"),
	array("g_puissance",	"Puissance (armadas)"),
	array("g_ratioVD",	"Ratio V/D (armadas)"),
	array("g_xp",		"xp (armadas)")
);
$classement_[1] = array(		// identifiant, intitulé
	array("puissance",	"Puissance"),
	array("xp",		"xp"),
	array("vict",		"# victoires"),
	array("ratioVT",	"Ratio V/T"),
	array("g_puissance",	"Puissance (armadas)"),
	array("g_ratioVD",	"Ratio V/D (armadas)"),
	array("g_xp",		"xp (armadas)"),
	array("g_guerres",	"guerres")
);
$classement_[2] = array(		// identifiant, intitulé
	array("xp",		"xp"),
	array("ratioVT",	"Ratio V/T"),
	array("score",	"Score")
);




$border='border="0" cellspacing="2" cellpadding="0" style="width: 800px; vertical-align: center; text-align: center;"';
$vspacer="<br><br>\n\n\n";
$avatardef="<img src=\\\"http://www.destinee-online.com/images/avatar.gif\\\" width=\\\"20\\\" height=\\\"20\\\">";


// *** *** *** analyse des données vouluess par l'utilisateur
if (!isset($_GET['dynamique'])||($_GET['dynamique']!="true"))
	$dynamique = false;
else	$dynamique = true;

$serveur_off = 1;

// période voulue
$date = 0;
if (!isset($_GET['date']))
	$_GET['date'] = $dateoptions[(sizeof($dateoptions)-1)][0];
for ($i=0; $i<sizeof($dateoptions); $i++)
	if ($_GET['date'] == $dateoptions[$i][0])
	{
		$date = $i;
		$display_date = $dateoptions[$i][0];
		$db_prefixe = $dateoptions[$i][1];
		$classements = $classement_[ $dateoptions[$i][6] ];
	}

// quel serveur
$display_server= "";
$database_serv = "";
$serveur_off   = "";
$db_suffixe    = $dateoptions[$date][3][0];
if (!isset($_GET['serveur']))
{
	if (isset($_SESSION['serveur']))
		$_GET['serveur'] = 'Serveur '.$_SESSION['serveur'];
	else	$_GET['serveur'] = $dateoptions[$date][2][0];
}
for ($i=0; $i<sizeof($dateoptions[$date][2]); $i++)
{
	if ($_GET['serveur'] == $dateoptions[$date][2][$i])
	{
		$display_server = $dateoptions[$date][2][$i];
		$db_suffixe 	= $dateoptions[$date][3][$i];
		$serveur_off	= $dateoptions[$date][4][$i];
		$current_server = $i;
		if ($dateoptions[$date][5]=="dynamique")
			$dynamique = true;
	}
}
$joueurs_stats 	= $db_prefixe."joueurs_stats".$db_suffixe;
$joueurs_bonus 	= $db_prefixe."joueurs_bonus".$db_suffixe;
$joueurs_heros 	= $db_prefixe."joueurs_heros".$db_suffixe;
$guildes 	= $db_prefixe."guildes"      .$db_suffixe;
$guerres 	= $db_prefixe."guerres"      .$db_suffixe;

#ajout Ainkurn
if($_GET['creerhof']==true){
$joueurs_stats 	= "joueurs_stats";
$joueurs_bonus 	= "joueurs_bonus";
$joueurs_heros 	= "joueurs_heros";
$guildes 	= "guildes";
$guerres 	= "guerres";
}
#fin ajout Ainkurn

// quel classement
$class = 0;
$flag = false;
if (!isset($_GET['classement']))
	$_GET['classement'] = "score";
for ($i=0; $i<sizeof($classements); $i++)
	if ($_GET['classement'] == $classements[$i][0])
	{
		$class = $i;
		$flag = true;
	}
if (!$flag)
{
	$class = 0;
	$_GET['classement'] = "puissance";
}
// *** *** *** connexion à la bonne bdd, choix du serveur
include ('administration/choix_serveurs_off.php');	//connexion à MySQL



// *** *** *** début de l'affichage

// choix dans la date
$lnkclass = "";
if (isset($_GET['classement']))
	$lnkclass='&classement='.$_GET['classement'];
echo '<center>';
if (sizeof($dateoptions)>1)
{
	echo ' ~ ';
	$flag = false;
	for ($i=0; $i<sizeof($dateoptions); $i++)
	{
		if ($dateoptions[$i][0] == "spacer")
		{
			echo ' ~<br>~ ';
			$flag = false;
		}
		else
		{
			if ($flag)
				echo " | \n";
			$flag = true;
			if ($date == $i)
				echo '<b>';
			echo '	<a href="hof.php?date='.$dateoptions[$i][0].'&serveur='.$dateoptions[$date][2][$current_server].$lnkclass.'">'.$dateoptions[$i][0].'</a> ';
			if ($date == $i)
				echo '</b>';
		}
	}
	echo '	~ '."\n";
}
else
	echo '<b>'.$dateoptions[0][0]."</b>\n";
echo $vspacer;

// choix dans le serveur
echo "\n	~\n";
$flag = false;
for ($i=0; $i<sizeof($dateoptions[$date][2]); $i++)
{
	if ($flag)
		echo " | \n";
	$flag = true;
	if ($dateoptions[$date][2][$i]==$display_server)
		echo '<b>';
	echo '	<a href="hof.php?date='.$dateoptions[$date][0].'&serveur='.$dateoptions[$date][2][$i].$lnkclass.'">'.$dateoptions[$date][2][$i].'</a>';
	if ($dateoptions[$date][2][$i]==$display_server)
		echo '</b>';
}
echo "\n~\n";
echo $vspacer;

// choix dans le classement
echo "\n	~\n";
$flag = false;
for ($i=0; $i<sizeof($classements); $i++)
{
	if ($flag)
		echo " | \n";
	$flag = true;
	if ($classements[$i][1] == $classements[$class][1])
		echo '<b>';
	echo '	<a href="hof.php?date='.$dateoptions[$date][0].'&serveur='.$display_server.'&classement='.$classements[$i][0].'">'.$classements[$i][1].'</a>';
	if ($classements[$i][1] == $classements[$class][1])
		echo '</b>';
}
echo "\n~\n</center>\n";
echo $vspacer;


include("hof_fonctions.php");
include("classement_cache.php");
$jmasques = str_replace ("joueurs_stats.nom", "$joueurs_stats.nom", $jmasques);

// *** *** *** classement des joueurs à la puissance
if ($_GET['classement'] == "puissance")
{
	$affichage1	= array("",		"Nom", "Race", "Classe", "Dieu", "Niv", "Puissance");
	$affichage2	= array("AVATAR",	"NTR", "race", "classe", "dieu", "niveau", "puissance");
	$class		= array("",		"",	"", 	"", 	 "", 	"cl_aligneC",  "cl_aligneR");
	$contraint1 	= array("",		"", 	"", 	"", 	"", 	"", 	"\".number_format(");
	$contraint2 	= array("",	 	"",	"",	"", 	"", 	"", 	", 0, ',', ',').\"");
	$sql = "SELECT $joueurs_stats.nom, titre, royaume, race, classe, dieu, $joueurs_stats.niveau, $joueurs_stats.puissance
		FROM $joueurs_stats
		INNER JOIN $joueurs_heros ON $joueurs_heros.nom = $joueurs_stats.nom
		INNER JOIN $joueurs_bonus ON $joueurs_bonus.nom = $joueurs_stats.nom
		WHERE $jmasques
		ORDER BY $joueurs_stats.puissance DESC
		LIMIT $nbrplayers";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}

if ($_GET['classement'] == "score")
{
	$affichage1	= array("",		"Nom", "Héros 1", "Héros 2", "Score");
	$affichage2	= array("AVATAR",	"login", "heros1", "heros2", "score");
	$class		= array("",		"",		"", 	"", 	 "cl_aligneR");
	$contraint1 	= array("",		"", 	"", 	"", 	"\".number_format(");
	$contraint2 	= array("",	 	"",		"", 	"", 	", 0, ',', ',').\"");
	$sql = "SELECT joueurs_infos.login, heros1.nom AS 'heros1', heros2.nom AS 'heros2', joueurs_infos.score FROM joueurs_infos
		LEFT JOIN joueurs_heros AS heros1 ON joueurs_infos.id = heros1.id_compte INNER JOIN joueurs_stats AS heros1stats ON heros1.id = heros1stats.id
		LEFT JOIN joueurs_heros AS heros2 ON joueurs_infos.id = heros2.id_compte AND heros1.nom != heros2.nom LEFT JOIN joueurs_stats AS heros2stats ON heros2.id = heros2stats.id
		GROUP BY joueurs_infos.id ORDER BY joueurs_infos.score DESC
		LIMIT $nbrplayers";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}


// *** *** *** classement des joueurs à l'XP
if ($_GET['classement'] == "xp")
{
	$affichage1 	= array("",		"Nom", "Race", "Classe", "Dieu", "Niv", "XP", "Score");
	$affichage2 	= array("AVATAR",	"NTR", "race", "classe", "dieu", "niveau", "xp", "score");
	$class		= array("",		"",	"", 	"", 	 "", 	"cl_aligneC", "cl_aligneR", "cl_aligneR");
	$contraint1 	= array("",		"", 	"", 	"", 	"", 	"", 	"\".number_format(", 	"\".number_format(");
	$contraint2 	= array("",		"", 	"",	"", 	"", 	"", 	", 0, ',', ',').\"", 	", 0, ',', ',').\"");
	$sql = "SELECT $joueurs_stats.nom, titre, royaume, race, classe, dieu, $joueurs_stats.niveau, $joueurs_stats.xp, $joueurs_stats.score
		FROM $joueurs_stats
		INNER JOIN $joueurs_heros ON $joueurs_heros.nom = $joueurs_stats.nom
		INNER JOIN $joueurs_bonus ON $joueurs_bonus.nom = $joueurs_stats.nom
		WHERE $jmasques
		ORDER BY xp DESC
		LIMIT $nbrplayers";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}


// *** *** *** classement au nombre de victoires
if ($_GET['classement'] == "vict")
{
	$affichage1 	= array("",		"Nom", "Victoires", 	"Defaites", 	"Niv", 		"Puissance");
	$affichage2 	= array("AVATAR",	"NTR", "victoire",	"défaite",  	"niveau",	"puissance");
	$class		= array("",		"",	"cl_aligneC", 	"cl_aligneC", 	"cl_aligneC",	"cl_aligneR");
	$contraint1 	= array("",		"", 	"", 		"", 		"", 		"\".number_format(");
	$contraint2 	= array("",		"", 	"",	 	"", 		"", 		", 0, ',', ',').\"");
	$sql = "SELECT $joueurs_stats.nom, titre, royaume, $joueurs_bonus.victoire AS victoire, $joueurs_bonus.défaite, $joueurs_stats.niveau, $joueurs_stats.puissance
		FROM $joueurs_bonus
		INNER JOIN $joueurs_stats ON $joueurs_stats.nom = $joueurs_bonus.nom
		INNER JOIN $joueurs_heros ON $joueurs_heros.nom = $joueurs_bonus.nom
		WHERE $jmasques
		ORDER BY $joueurs_bonus.victoire DESC
		LIMIT $nbrplayers";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}


// *** *** *** classement au ratio victoires/nb total de combats
if ($_GET['classement'] == "ratioVT")
{
	$threshold=50;   // nombre de combat minimum pour être pris en compte
	$affichage1 	= array("",		"Nom", "Vict.", 	"Def.", 	"Ratio V/D", 	"Ratio V/T",	"Niv", "Score");
	$affichage2 	= array("AVATAR",	"NTR", "victoire",	"défaite",  	"ratioVD", 	"ratioVT",	"niveau", "score");
	$class		= array("",		"",	"cl_aligneC", 	"cl_aligneC",	"cl_aligneC", 	"cl_aligneC", 	"cl_aligneC", "cl_aligneR");
	$contraint1 	= array("",		"", 	"", 		"", 		"", 		"\".substr(round(",	"",	  "\".number_format(");
	$contraint2 	= array("",		"", 	"",	 	"", 		"", 		",2)+0.001,0,4).\"",	 	"",	  ", 0, ',', ',').\"");
	$sql = "SELECT $joueurs_stats.nom, titre, royaume, $joueurs_bonus.victoire, $joueurs_bonus.défaite, $joueurs_stats.niveau, $joueurs_stats.score, ($joueurs_bonus.victoire*1.00001/($joueurs_bonus.défaite+$joueurs_bonus.victoire)) AS ratioVT, ($joueurs_bonus.victoire/$joueurs_bonus.défaite) AS ratioVD
		FROM $joueurs_bonus
		INNER JOIN $joueurs_stats ON $joueurs_stats.nom = $joueurs_bonus.nom
		INNER JOIN $joueurs_heros ON $joueurs_heros.nom = $joueurs_bonus.nom
		WHERE ($joueurs_bonus.victoire+$joueurs_bonus.défaite) > $threshold
		ORDER BY ratioVT DESC
		LIMIT $nbrplayers";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}


// *** *** *** classement des guildes à la puissance
if ($_GET['classement'] == "g_puissance")
{
	$affichage1 	= array("",			"Armada",	"Chef", "Province", 	"Membres", 	"Puissance");
	$affichage2 	= array("img",			"nom", 		"chef", "province", 	"nb_membres", 	"puissance");
	$class 		= array("",			"", 		"", 	"", 		"cl_aligneC",	"cl_aligneR");
	$contraint1 	= array("<img src=",		"", 		"", 	"", 		"", 		"\".number_format(");
	$contraint2 	= array(" width=20 height=20>",	"", 		"", 	"", 		"", 		", 0, ',', ',').\"");
	$sql = "SELECT nom, img, chef, province, nb_membres, puissance
		FROM $guildes
		ORDER BY puissance DESC";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}


// *** *** *** classement des guildes par ratio  victoire/défaite
if ($_GET['classement'] == "g_ratioVD")
{
	$affichage1 	= array("",			"Armada",	"Chef", "Province", 	"Membres", 	"V/D",		"V/C",		"Puissance");
	$affichage2 	= array("img",			"nom", 		"chef", "province", 	"nb_membres", 	"ratioVD",	"ratioVC",	"puissance");
	$class 		= array("",			"", 		"", 	"", 		"cl_aligneC",	"cl_aligneC",	"cl_aligneC",	"cl_aligneR");
	$contraint1 	= array("<img src=",		"", 		"", 	"", 		"", 		"",		"",		"\".number_format(");
	$contraint2 	= array(" width=20 height=20>",	"", 		"", 	"", 		"", 		"",		"",		", 0, ',', ',').\"");
	$sql = "SELECT nom, img, chef, province, nb_membres, puissance, ratioVD, ratioVC
		FROM $guildes
		INNER JOIN (
			SELECT guilde, (SUM(victoire)/SUM(défaite)) AS ratioVD, (SUM(victoire)/(SUM(victoire)+SUM(défaite))) AS ratioVC
			FROM $joueurs_bonus
			GROUP BY guilde
			) AS temp
			ON temp.guilde = $guildes.nom
		ORDER BY ratioVC DESC";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}



// *** *** *** classement des guildes par xp moyenne
if ($_GET['classement'] == "g_xp")
{
	$affichage1 	= array("",			"Armada",	"Chef", "Province", 	"Membres", 	"XP moy.",	"Niv moy.",	"Puissance");
	$affichage2 	= array("img",			"nom", 		"chef", "province", 	"nb_membres", 	"xp_m",		"niv_m",	"puissance");
	$class 		= array("",			"", 		"", 	"", 		"cl_aligneC",	"cl_aligneC",	"cl_aligneC",	"cl_aligneR");
	$contraint1 	= array("<img src=",		"", 		"", 	"", 		"", 		"\".round(",	"\".round(",	"\".number_format(");
	$contraint2 	= array(" width=20 height=20>",	"", 		"", 	"", 		"", 		").\"",		",2).\"",		", 0, ',', ',').\"");
	$sql = "SELECT nom, img, chef, province, nb_membres, puissance, xp_m, niv_m
		FROM $guildes
		INNER JOIN (
			SELECT guilde, AVG(xp) AS xp_m, AVG(niveau) AS niv_m
			FROM $joueurs_bonus
			INNER JOIN $joueurs_stats ON $joueurs_stats.nom = $joueurs_bonus.nom
			GROUP BY guilde
			) AS temp
			ON temp.guilde = $guildes.nom
		ORDER BY xp_m DESC";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}



// *** *** *** classement des guildes par ratio dans les guerres
if ($_GET['classement'] == "g_guerres")
{
	include ("guerres_checktermine.php");

	$affichage1 	= array("",			"Armada",	"Chef", "Province", 	"Membres", 	"V/T",		"Tot.",		"Vict.",	"Déf.",		"Lancées");
	$affichage2 	= array("img",			"nom", 		"chef", "province", 	"nb_membres", 	"Ratio",	"Tot",		"Vic_",		"Def",		"Lancees_");
	$class 		= array("",			"", 		"", 	"", 		"cl_aligneC",	"cl_aligneC",	"cl_aligneC",	"cl_aligneC",	"cl_aligneC",	"cl_aligneC");
	$contraint1 	= array("<img src=",		"", 		"", 	"", 		"", 		"\".round(",	"",		"",		"",		"");
	$contraint2 	= array(" width=20 height=20>",	"", 		"", 	"", 		"", 		",2).\"",	"",		"",		"",		"");
	$sql = "SELECT nom, img, chef, province, nb_membres,
			(COALESCE(Vic,0) / (COALESCE(Vic,0) + COALESCE(Def1,0) + COALESCE(Def2,0) + COALESCE(Nul1,0) + COALESCE(Nul2,0) + 0.0000001)) AS Ratio,
			 COALESCE(Vic,0) AS Vic_,
			 COALESCE(Def1,0) AS Def1_,
			 COALESCE(Def2,0) AS Def2_,
			(COALESCE(Def1,0) + COALESCE(Def2,0)) AS Def,
			(COALESCE(Nul1,0) + COALESCE(Nul2,0)) AS Nul_,
			(COALESCE(Vic,0) + COALESCE(Def1,0) + COALESCE(Def2,0) + COALESCE(Nul1,0) + COALESCE(Nul2,0)) AS Tot,
			 COALESCE(Lancees,0) AS Lancees_
		FROM $guildes
		LEFT JOIN 	(
				SELECT vainqueur, COUNT(*) AS Vic
				FROM $guerres
				WHERE	(
						valide = '$VALIDE_TERMINE'
					AND	type = '$TYPE_GUERRE'
					AND	cache = '0'
					)
				GROUP BY vainqueur
				) AS temp0
			ON temp0.vainqueur = $guildes.nom
		LEFT JOIN 	(
				SELECT guilde1, COUNT(*) AS Def1
				FROM $guerres
				WHERE	(
						valide = '$VALIDE_TERMINE'
					AND	type = '$TYPE_GUERRE'
					AND	cache = '0'
					AND	vainqueur = guilde2
					)
				GROUP BY guilde1
				) AS temp1
			ON temp1.guilde1 = $guildes.nom
		LEFT JOIN 	(
				SELECT guilde2, COUNT(*) AS Def2
				FROM $guerres
				WHERE	(
						valide = '$VALIDE_TERMINE'
					AND	type = '$TYPE_GUERRE'
					AND	cache = '0'
					AND	vainqueur = guilde1
					)
				GROUP BY guilde2
				) AS temp2
			ON temp2.guilde2 = $guildes.nom
		LEFT JOIN 	(
				SELECT guilde1, COUNT(*) AS Lancees
				FROM $guerres
				WHERE	(
						valide = '$VALIDE_TERMINE'
					AND	type = '$TYPE_GUERRE'
					AND	cache = '0'
					)
				GROUP BY guilde1
				) AS temp3
			ON temp3.guilde1 = $guildes.nom
		LEFT JOIN 	(
				SELECT guilde1, COUNT(*) AS Nul1
				FROM $guerres
				WHERE	(
						valide = '$VALIDE_TERMINE'
					AND	type = '$TYPE_GUERRE'
					AND	cache = '0'
					AND	vainqueur = 'Aucun'
					)
				GROUP BY guilde1
				) AS temp4
			ON temp4.guilde1 = $guildes.nom
		LEFT JOIN 	(
				SELECT guilde2, COUNT(*) AS Nul2
				FROM $guerres
				WHERE	(
						valide = '$VALIDE_TERMINE'
					AND	type = '$TYPE_GUERRE'
					AND	cache = '0'
					AND	vainqueur = 'Aucun'
					)
				GROUP BY guilde2
				) AS temp5
			ON temp5.guilde2 = $guildes.nom
		ORDER BY Ratio DESC, Vic DESC, Def ASC, Tot ASC, Lancees_ ASC, nb_membres DESC";
	ecritclassementsimple($sql, $affichage1, $affichage2, $class, $contraint1, $contraint2);
}



mysql_close();
include("fin.php");
