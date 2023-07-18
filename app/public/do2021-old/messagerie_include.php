<?php

function ligneliens ($colspan)
{
	return '<td colspan="'.$colspan.'" style="text-align: right; vertical-align: top;"><a href="messagerie_reception.php">Réception</a> - <a href="messagerie_compose.php">Composer</a> - <a href="messagerie_envoyes.php">Relire</a></td>'."\n";
}

function isofficiel ($auteur)
{
	if ( ($auteur == "Zhao Yun") or ($auteur == "Gilnarfein") or ($auteur == "Eleusis") or ($auteur == "Messager Impérial") )
		return true;
	return false;
}

function bbcode($message)
{
	$message = preg_replace('#\[b\](.+)\[/b\]#isU', '<strong>$1</strong>', $message);
	$message = preg_replace('#\[i\](.+)\[/i\]#isU', '<em>$1</em>', $message);
	$message = preg_replace('#\[u\](.+)\[/u\]#isU', '<u>$1</u>', $message);
	$message = preg_replace('#\[s\](.+)\[/s\]#isU', '<strike>$1</strike>', $message);
	$message = preg_replace('#\[color="(.+)"\](.+)\[/color\]#isU', '<span style="color:$1;">$2</span>', $message);
	$message = preg_replace('#\[citer auteur="(.+)"\](.+)\[/citer]\]#isU', '<fieldset style="margin-left:10px;margin:right:10px;padding:5px;"><legend>Citation $1 :</legend> $2</fieldset>', $message);
	$message = preg_replace('#\[lien cible=(.+)\](.*)\[/lien\]#isU', '<a href=$1 title="$2">$2</a>', $message);
	
	$code = array(':?:', ':oops:', ':D', ':)', ':(', ':o', ':shock:', ':?', '8)', ':lol:', ':x', ':P', ':cry:', ':evil:', ':twisted:', ':roll:', ':wink:', ':!:', ':idea:', ':arrow:', ':|', ':mrgreen:', ':face:', ':tongue:', ':suspect:', ':cheers:', ':lol!:');
	$imgr = array('<img src="images/smilies/icon_question.gif" />', '<img src="images/smilies/icon_confused.gif" />', '<img src="images/smilies/icon_biggrin.gif" />', '<img src="images/smilies/icon_smile.gif" />', '<img src="images/smilies/icon_sad.gif" />', '<img src="images/smilies/icon_surprised.gif" />', '<img src="images/smilies/icon_eek.gif" />', '<img src="images/smilies/icon_cool.gif" />', '<img src="images/smilies/icon_lol.gif" />', '<img src="images/smilies/icon_mad.gif" />', '<img src="images/smilies/icon_razz.gif" />', '<img src="images/smilies/icon_redface.gif" />', '<img src="images/smilies/icon_cry.gif" />', '<img src="images/smilies/icon_evil.gif" />', '<img src="images/smilies/icon_twisted.gif" />', '<img src="images/smilies/icon_rolleyes.gif" />', '<img src="images/smilies/icon_wink.gif" />', '<img src="images/smilies/icon_exclaim.gif" />', '<img src="images/smilies/icon_idea.gif" />', '<img src="images/smilies/icon_arrow.gif" />', '<img src="images/smilies/icon_neutral.gif" />', '<img src="images/smilies/icon_mrgreen.gif" />', '<img src="images/smilies/fresse.png" />', '<img src="images/smilies/icon_tongue.png" />', '<img src="images/smilies/suspect.gif" />', '<img src="images/smilies/icon_cheers.png" />', '<img src="images/smilies/lol.gif" />');
	$message = str_replace($code, $imgr, $message);
	
	return $message;
}

?>