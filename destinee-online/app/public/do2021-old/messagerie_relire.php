<?php
session_start();

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
  if (!isset($_POST['nom'])){
      header('Location: www.destinee-online.com');
	  exit();
  }
}

include "messagerie_include.php";

?>

<!doctype html public "-//W3C//DTD HTML 4.0 //EN">
<html>
<head>
       <title>Vos messages</title>
	   <script type="text/javascript">
		<!--
			function HTMLentities(texte) 
			{
				texte = texte.replace(/&/g,'&amp;'); // 38 26
				texte = texte.replace(/</g,'&lt;'); // 60 3C
				texte = texte.replace(/>/g,'&gt;'); // 62 3E
				
				return texte;
			}
			
			function BBcode(texte)
			{
				texte = texte.replace(/\n/g, '<br \/>');
				texte = texte.replace(/\[b\](.*)\[\/b\]/gi, '<strong>$1</strong>');
				texte = texte.replace(/\[i\](.*)\[\/i\]/gi, '<em>$1</em>');
				texte = texte.replace(/\[u\](.*)\[\/u\]/gi, '<u>$1</u>');
				texte = texte.replace(/\[s\](.*)\[\/s\]/gi, '<strike>$1</strike>');
				texte = texte.replace(/\[color="(.+)"\](.*)\[\/color\]/gi, '<span style="color:$1;">$2</span>');
				texte = texte.replace(/\[citer auteur="(.+)"\](.*)\[\/citer]/gi, '<fieldset style="margin-left:10px;margin:right:10px;padding:5px;"><legend>Citation $1 :</legend> $2</fieldset>');
				texte = texte.replace(/\[lien cible=(.+)\](.*)\[\/lien\]/gi, '<a href=$1 title="$2" >$2</a>');
				texte = texte.replace(/:D/gi, '<img src="images/smilies/icon_biggrin.gif" />');
				texte = texte.replace(/:\)/gi, '<img src="images/smilies/icon_smile.gif" />');
				texte = texte.replace(/:\(/gi, '<img src="images/smilies/icon_sad.gif" />');
				texte = texte.replace(/:oops:/gi, '<img src="images/smilies/icon_redface.gif" />');
				texte = texte.replace(/:o/gi, '<img src="images/smilies/icon_surprised.gif" />');
				texte = texte.replace(/:shock:/gi, '<img src="images/smilies/icon_eek.gif" />');
				texte = texte.replace(/:\?:/gi, '<img src="images/smilies/icon_question.gif" />');
				texte = texte.replace(/:\?/gi, '<img src="images/smilies/icon_confused.gif" />');
				texte = texte.replace(/8\)/gi, '<img src="images/smilies/icon_cool.gif" />');
				texte = texte.replace(/:lol:/gi, '<img src="images/smilies/icon_lol.gif" />');
				texte = texte.replace(/:x/gi, '<img src="images/smilies/icon_mad.gif" />');
				texte = texte.replace(/:P/gi, '<img src="images/smilies/icon_razz.gif" />');
				texte = texte.replace(/:cry:/gi, '<img src="images/smilies/icon_cry.gif" />');
				texte = texte.replace(/:evil:/gi, '<img src="images/smilies/icon_evil.gif" />');
				texte = texte.replace(/:twisted:/gi, '<img src="images/smilies/icon_twisted.gif" />');
				texte = texte.replace(/:roll:/gi, '<img src="images/smilies/icon_rolleyes.gif" />');
				texte = texte.replace(/:wink:/gi, '<img src="images/smilies/icon_wink.gif" />');
				texte = texte.replace(/:!:/gi, '<img src="images/smilies/icon_exclaim.gif" />');
				texte = texte.replace(/:idea:/gi, '<img src="images/smilies/icon_idea.gif" />');
				texte = texte.replace(/:arrow:/gi, '<img src="images/smilies/icon_arrow.gif" />');
				texte = texte.replace(/:\|/gi, '<img src="images/smilies/icon_neutral.gif" />');
				texte = texte.replace(/:mrgreen:/gi, '<img src="images/smilies/icon_mrgreen.gif" />');
				texte = texte.replace(/:face:/gi, '<img src="images/smilies/fresse.png" />');
				texte = texte.replace(/:tongue:/gi, '<img src="images/smilies/icon_tongue.gif" />');
				texte = texte.replace(/:suspect:/gi, '<img src="images/smilies/suspect.gif" />');
				texte = texte.replace(/:cheers:/gi, '<img src="images/smilies/icon_cheers.png" />');
				texte = texte.replace(/:lol!:/gi, '<img src="images/smilies/lol.gif" />');
				
				return texte;
			}
			
			function precharger()
			{
				var titre = window.opener.document.forms["composer"].elements["titre"].value;
				titre = HTMLentities(titre);
				document.getElementById("titre").innerHTML = titre;
				
				var message = window.opener.document.forms["composer"].elements["message"].value;
				titre = HTMLentities(titre);
				message = BBcode(message);
				document.getElementById("message").innerHTML = message;	
			}
		-->
		</script>
</head>
<body topmargin=0 marginheight=0 leftmargin=0 marginwidth=0 alink="#000099" vlink="#000000" link="#000000" style="color: rgb(0, 0, 0); background-image: url(/images/fond.gif);" onLoad="precharger();">
<br>
<div align="center">
<table style="width: 561px; text-align: center;" border="0" cellspacing="0" cellpadding="0">
<tbody>
	<tr>
		<td style="height: 40px; vertical-align: top; background-image: URL(/images/parcheminhaut.gif);background-repeat:no-repeat;"></td>
	</tr>
	<tr>
		<td style=" vertical-align: top;"><div style="padding-left:10px; background-image: URL(/images/parchemin.gif);">
			<table border="0" cellspacing="0" cellpadding="20" style="text-align: left; vertical-align: top;">
				<tbody>
					<tr>
						<td>
							Ecrit de la main de : <?phpphp echo $_SESSION['nom']; ?><br /><br />
							<strong><big><center><span id="titre" style="font-family: papyrus;"></span></center></big></strong><br />
							<div id="message" style="padding:5px;margin-left:5px;width:30em;min-height:50px;max-height:14.5em;overflow:auto;scrollbar-track-color:#E1DC91;scrollbar-base-color:#CDAF73;"></div>
						</td>
					</tr>
				</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td style="height: 40px; vertical-align: top;background-image: URL(/images/parcheminbas.gif);background-repeat:no-repeat;"></td>
	</tr>
</tbody>
</div>
</table>