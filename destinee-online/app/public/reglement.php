<? session_start();

$head_keywords = 'Reglement, regles, inscription, respect';

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] == 0){
    $connexion = 0;
    include ("menu_index.php");
}
else{
    $connexion = 1;
    include ("menu.php");
}
entete_index("Règlement");
?>

<table class="localtable630"><tbody>
<tr>	<td><h2>Règlement</h2>
<div class="longtexte">L'acceptation des règlements ci-dessous est un prérequis pour tout joueur. Toute personne inscrite est considérée comme ayant lu, accepté et approuvé ces règlements, dans leurs entièretés indissociables. Le joueur promet également de dégager l'équipe d'administration ainsi que l'hébergeur de tout problème lié à leur compte, quel qu'il soit. Tous les comptes de www.destinee-online.com sont et demeurent la propriété des Administrateurs, lesquels s'engagent à respecter la confidentialité des données auxquelles ils ont accès.</div>
<ul style="text-align: left;">
<li><i>Article premier :</i><br>
	Par la présente, je déclare avoir lu, compris et accepté les différents règlements relatifs à la possession d'un compte. Je suis conscient des différents interdits et encourage l'application des pénalités qui découlent de leur non-respect, et ce même à mon propre égard. Je suis de plus conscient que ces règlements sont susceptibles d'évoluer avec le jeu, et consens à les suivre et à les respecter dans leur intégralité.<br>
	&nbsp;</li>
<li><i>Article deuxième :</i></li><br>
	Par la présente, je m'engage à utiliser en tout temps un langage respectueux envers tous les joueurs, tous les membres de l'équipe et tous les visiteurs au sein du cadre virtuel de Destinée, tant dans le jeu que sur les forums.<br>
	&nbsp;</li>
<li><i>Article troisième :</i><br>
	Par la présente, je m'engage à divulguer tout acte allant à l'encontre des deux premiers articles, ou encore à l'encontre de tout autre(s) règlement(s) présent(s) et/ou futur(s) que ce soit. L'individu préférant garder le silence est considéré comme complice du fautif.<br>
	&nbsp;</li>
<li><i>Article quatrième :</i><br>
	Par la présente, j'exige de la part des membres de l'Équipe d'Administration de Destinée le respect des règlements, d'être intègres et d'être professionnels. L'Équipe s'engage, en juste retour des choses, à faire appliquer le plein respect des règlements tant pour elle-même qu'aux joueurs.<br>
	&nbsp;</li>
<li><i>Article cinquième :</i><br>
	Je comprends que www.destinee-online.com est et demeure la propriété des administrateurs et qu'ils ont pleins droits quant à la validation des inscriptions, au bannissement et à la suppression des comptes et/ou des guildes de joueurs n'ayant pas respecté ces présents règlements ainsi qu'au choix d'une date de fermeture du présent site web. Aucune mesure ne peut être prise contre l'application de ces droits.<br>
	&nbsp;</li>
<li><i>Article sixième :</i><br>
	Toute personne possédant un compte sur www.destinee-online est en droit de s'en défaire, et ce sans restriction ni questionnement obligatoire de la part de l'Équipe d'Administration. Pour ce faire, le joueur doit passer par la page Personnage => Votre Compte pour cocher la case permettant de supprimer son compte. Les joueurs peuvent (dans ce cadre) laisser leurs comptes inactifs pour quelques jours, ces derniers seront supprimés au bout de 30 jours. Un mode "vacances" prévoit la mise en pause du jeu. Pour ce faire, le joueur doit passer par la page Personnage => Votre Compte pour cocher la case permettant de mettre son compte en "vacances" pour la durée choisie (il en résulte une impossibilité de se connecter pendant la période choisie). Un compte n'étant pas mis "en vacances" est considéré comme un compte à l'abandon. L'utilisation de ce mode "vacances" à des fins stratégiques et/ou tactiques est formellement interdit.Tout contrevenant s'expose à des sanctions pouvant aller du blocage à la suppression du compte.<br>
	&nbsp;</li>
<li><i>Article septième :</i><br>
	En aucun cas ni pour aucune raison que ce soit, un joueur ne pourra pas demander un quelconque dédommagement pour la perte de données, d'un compte, d'une armada ou la fermeture du présent site web. De manière volontaire ou obligatoire, tout joueur accepte de partir sans indemnités en retour, et ce peu importe les raisons invoquées.<br>
	&nbsp;</li>
<li><i>Article huitième :</i><br>
	En vous inscrivant sur www.destinee-online.com vous acceptez de recevoir plusieurs mails (Inscription, rapport de combat, etc...) Vous ne pourrez donc pas tenir pour responsable les membres de l'administration ou notre hébergeur le cas échéant. Vous pourrez à tous moment via la page Votre compte, disponible sous l'onglet Personnage, demander la résiliation de votre compte.<br>
	&nbsp;</li>
<li><i>Article neuvième :</i><br>
	Est considéré comme multicomptes, un nombre de "jeux" gérés par une seule et même personne. Sauf conditions très particulières (ordinateur familial) et autorisations exceptionnelles des administrateurs, tout joueur pris en faute verra ses comptes bloqués et/ou supprimés.<br>
	&nbsp;</li>
<li><i>Article dixième :</i><br>
Le don d'or abusif est rigoureusement interdit entre joueurs d'une même armada,armadas alliées ou entre indépendants. Les administrateurs et l'équipe se réservent le droit d'estimer et de supprimer la transaction ainsi que l'or lié à celle-ci. La sanction pouvant être la perte de l'or et de l'objet...voire même le blocage des comptes associés.<br>
	&nbsp;</li>
<li><i>Article onzième :</i><br>
	Est considéré comme abusif et passible de blocage voire de bannissement le fait d'attaquer, à quelques minutes d'intervalle le même joueur à partir de plusieurs comptes différents via le même ordinateur, les personnes en multicomptes autorisés ne devant pas abuser de ce privilège pour affiner leur stratégie.<br>
	&nbsp;</li>
</ul>
<!--<UL>
<LI><i>Article premier :</i><br><br>
Par la présente, je déclare avoir lu, comprit et accepté
les différents règlements relatif à la possession d'un
compte. Je suis conscient des différents interdits et
encourage l'application et le respect des pénalités qui
suivent leur non-respect, et ce même à mon propre égard.
Je suis de plus conscient que ces règlements sont
succeptibles d'évoluer avec le jeu, et conscent à
les suivres et à les respecter dans leur intégralité.<br><br>
<LI><i>Article deuxième :</i><br><br>
Par la présente, je m'engage à utiliser en tout temps un
langage respectueux envers tous les joueurs, tous les
membres de l'équipe et tous les visiteurs à l'intérieur
du cadre virtuel de Destinée, autant en jeu que sur les
forums.<br><br>
<LI><i>Article troisième :</i><br><br>
Par la présente, je m'engage à divulguer touts actes allant
à l'encontre de ces deux derniers énoncés, ou encore à
l'encontre de tout autre règlement que ce soit. L'indivu
préférant garder le silence sera considéré comme étant
complice du fautif.<br><br>
<LI><i>Article quatrième :</i><br><br>
Par la présente, j'exige de la part des membres de
l'Équipe d'administration de Destinée respect des
règlements, intégrité et professionalisme. L'Équipe
s'engage, comme juste retour des choses, à s'assurer du
plein respect des règlements autant de la part de ses
membres, que de la part des joueurs.<br><br>
<LI><i>Article cinquième :</i><br><br>
Je comprends que www.destinee-online.com est et demeure la
propriété des administrateurs et qu'ils ont plein droits
quant à l'acceptation des inscriptions, au bannissement et
au retrait des comptes de joueurs n'ayant pas respecté
ces présents règlements ainsi qu'au choix d'une date de
fermeture du présent site web. Aucune mesure ne peut
être prise contre l'application de ces droits.<br><br>
<LI><i>Article sixième :</i><br><br>
Toute personne possédant un compte sur www.destinee-online
est en droit de s'en défaire, et ce sans restriction ni
questionnement de la part de l'équipe d'administration. Un
e-mail se doit dans ce cas d'être acheminer à l'un des
administrateurs, dans lequel le joueur stipule son nom
de compte ainsi que son mot de passe. Le compte sera effacé
dans un délai raisonnable. Le joueur peut de plus laissé
son compte inactif pour quelques jours, ces derniers étant
supprimés régulièrement.<br><br>
<LI><i>Article septième :</i><br><br>
En aucun cas ni pour aucune raison que ce soit un joueur
peut demandé dédomagement pour la perte de données, la perte
d'un compte ou la fermeture du présent site web. Qu'il quitte
de manière volontaire ou par obligation, tout joueur accepte
de partir sans ne rien demander en retour, et ce peu importe
les raison pouvant être évoquées.<br><br>
</UL>-->

<div class="longtexte">L'Équipe d'Administration</div>

</tr></td></tbody></table><?

include("fin.php");
