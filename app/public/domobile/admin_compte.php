<?php session_start();

if (!isset($_SESSION['connexion_compte']) OR $_SESSION['connexion_compte'] == 0){
	if (!isset($_POST['login'])){
		echo '<META http-equiv="refresh" content="1; URL=http://www.destinee-online.com">';
		exit;
	}
}

include "connect.php";
include "fonctions/profil.class.php";
include 'administration/include_fonctions.php';
$profil = new Profil(Profil::ACT_AUTRE, true);
$note = '';
$erreur = 0;

$req = "SELECT * from `joueurs_infos` WHERE id = ".$_SESSION['id_compte']."";
$result = mysql_query($req) or die("Erreur SQL sur admin_compte.php: ".mysql_error());
$donnees_joueur = mysql_fetch_assoc($result);


if(isset($_GET['v']) && (int)$_GET['v'] == 1)
{
	if(!isset($_GET['t']) || empty($_GET['t']) || $_GET['t'] != $_SESSION['profil_token']) // Si le jeton du fomulaire ne colle pas avec celui de la session.
		exit("Possibilite de faille CSRF.<br /><a href=\"index.php\">Retour à l'index.</a>");
	$token = $_SESSION['profil_token'];	// Sinon utilisera le jeton pour resécuriser ce forumulaire.
	// Modification de l'email
	if(isset($_POST['email']) && $_POST['email'] != $donnees_joueur['email'])
	{
		if(!empty($_POST['email']))
		{
			$profil->flushError();
			if(($retour = $profil->setEmailCompte($_SESSION['id_compte'], $_POST['email'])) == Profil::EXIT_SUCCESS)
			{
				$note .= '<span style="color:darkgreen;">Email modifié.</span><br />';
				$donnees_joueur['email'] = $_POST['email'];
			}
			elseif($retour == Profil::EXIT_FAILURE)
			{
				$note .= '<span style="color:darkred;">'.$profil->getError().'</span>';
				$erreur = 1;
			}
		}
	}
	// Modification du mot de passe
	if(isset($_POST['new_pass']) && isset($_POST['new_pass_2']) && (!empty($_POST['new_pass']) || !empty($_POST['new_pass_2'])))
	{
		if((!empty($_POST['new_pass']) && empty($_POST['new_pass_2'])) || (empty($_POST['new_pass']) && !empty($_POST['new_pass_2']))) {
			$note .= '<span style="color:darkred;">Vous devez resaisir votre mot de passe.</span><br />';
			$erreur = 1;
		}
		elseif($_POST['new_pass'] != $_POST['new_pass_2']) {
			$note .= '<span style="color:darkred;">Les deux mots de passe spécifiés sont différents.</span><br />';
			$erreur = 1;
		}
		elseif(md5($_POST['ancien_pass']) != $donnees_joueur['password']) {
			$note .= '<span style="color:darkred;">Le mot de passe acutel est éronné.</span><br />';
			$erreur = 1;
		}
		elseif(($retour = $profil->setPassword($_SESSION['id_compte'], $_POST['new_pass'])) == Profil::EXIT_SUCCESS) {
			$note .= '<span style="color:darkgreen;">Mot de passe modifié.</span><br />';
		}
		elseif($retour == Profil::EXIT_FAILURE) {
			$note .= '<span style="color:darkred;">Mot de passe non modifié.</span><br />';
			$erreur = 1;
		}
	}
	// Suppression du compte
	if(isset($_POST['del']) && !empty($_POST['del']))
	{
		$profil->supprimerCompte($_SESSION['id_compte']);
		$_SESSION = array();
		session_destroy();
		echo '<META http-equiv="refresh" content="1; URL=..">';
	}
}
else if(empty($_SESSION['profil_token']))	// Si on arrive pas sur cette page parce qu'on a validé un formulaire, on génère le jeton.
{
	$_SESSION['profil_token'] = $token = md5(uniqid(rand(), true));
	$_SESSION['profil_token_time'] = time();
}
else
{
	$token = $_SESSION['profil_token'];
}
if(isset($_SESSION['profil_token_time']) && $_SESSION['profil_token_time'] != 0 && $_SESSION['profil_token_time'] < (time() - 15*60)) // Si le jeton existe et qu'il a expiré (+ d'1/4 h)
{
	$_SESSION['profil_token'] = $token = md5(uniqid(rand(), true));
	$_SESSION['profil_token_time'] = time();	// On regénère un token.
}

// On passe à l'affichage.
include "debut.php";
include "menu.php";
entete('Compte');
include "connect.php";

if($note != '')
{
	if($erreur == 0)
		echo '<fieldset style="width:70%;border-color:darkgreen;"><legend>Informations</legend>'.$note.'</fieldset>';
	else
		echo '<fieldset style="width:70%;border-color:darkred;"><legend>Erreurs</legend>'.$note.'</fieldset>';
}
?>
<form method="post" action="admin_compte.php?v=1&t=<?php echo $token; ?>">
<fieldset style="margin-bottom:20px;width:80%;">
	<legend>Vos informations</legend>
		<table>
			<tr>
				<td class="profilleft"><label for="new_pass">Nouveau mot de passe :</label></td>
				<td class="profilright"><input type="password" id="new_pass" name="new_pass" /></td>
			</tr>
			<tr>
				<td class="profilleft"><label for="new_pass_2">Resaisir le mot de passe :</label></td>
				<td class="profilright"><input type="password" id="new_pass_2" name="new_pass_2" /></td>
			</tr>
			<tr>
				<td class="profilleft"><label for="ancien_pass">Ancien mot de passe :</label></td>
				<td class="profilright"><input type="password" id="ancien_pass" name="ancien_pass" /></td>
			</tr>
			<tr>
				<td colspan="2"><hr height="1" width="20%;"/></td>
			</tr>
			<tr>
				<br /><span style="font-weight: bold;">Attention :</span> Les adresse Gmail et Hotmail ne permettent pas de recevoir les rapport de combats. <br />(Recommandé : Yahoo, Yopmail...)</td>
			</tr>
			<tr>
				<td class="profilleft">Email associé au compte :</td>
				<td class="profilright"><?php echo $donnees_joueur['email']; ?></td>
			</tr>
			<tr>
				<td class="profilleft"><label for="email">Nouvelle adresse mail :</td>
				<td class="profilright"><input type="text" id="email" name="email" /></td>
			</tr>
			<tr>
				<td colspan="2"><hr height="1" width="20%;"/></td>
			</tr>
			<tr>
				<td colspan="2"><input type="checkbox" name="del" /> Supprimer votre compte.</td>
			</tr>
		</table>
</fieldset>
<div style="text-align:center;"><input type="submit" value="Suivant >>" /></div>
</form>
<?php
include "fin.php";
?>
