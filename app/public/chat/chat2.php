


<div separateurDO class="text-center plank_background"><h2>Place Publique</h2></div>

<?php
/*
function corrigerAccents($text)
{
					$text = str_replace("&Atilde;&copy;", "&eacute;", $text);
					$text = str_replace("&Atilde;&uml;", "&egrave;", $text);
					$text = str_replace("&Atilde;&ordf;", "&ecirc;", $text);
					$text = str_replace("&Atilde;&laquo;", "&euml;", $text);
					$text = str_replace("&Atilde;&nbsp;", "&agrave;", $text);
					$text = str_replace("&Atilde;&curren;", "&auml;", $text);
					$text = str_replace("&Atilde;&cent;", "&acirc;", $text);
					$text = str_replace("&Atilde;&sup1;", "&ugrave;", $text);
					$text = str_replace("&Atilde;&raquo;", "&ucirc;", $text);
					$text = str_replace("&Atilde;&frac14;", "&uuml;", $text);
					$text = str_replace("&Atilde;&acute;", "&ocirc;", $text);
					$text = str_replace("&Atilde;&para;", "&ouml;", $text);
					$text = str_replace("&Atilde;&reg;", "&icirc;", $text);
					$text = str_replace("&Atilde;&macr;", "&iuml;", $text);
					$text = str_replace("&Atilde;&sect;", "&ccedil;", $text);
	return $text;
} */
function getSmiliesTable ($mode=0, $pathinclude='')
{
	$table = array(
		array(' :D ', 'icon_biggrin.gif', 'très heureux'),
		array(' :) ', 'icon_smile.gif', 'sourire'),
		array(' :( ', 'icon_sad.gif', 'triste'),
		array(' :o ', 'icon_surprised.gif', 'surprise'),
		array(' :shock: ', 'icon_eek.gif', 'choqué'),
		array(' :? ', 'icon_confused.gif', 'confus'),
		array(' 8) ', 'icon_cool.gif', 'cool'),
		array(' :lol: ', 'icon_lol.gif', 'lol'),
		array(' :x ', 'icon_mad.gif', 'fou'),
		array(' :P ', 'icon_razz.gif', 'razz'),
		array(' :oops: ', 'icon_redface.gif', 'embarrassé'),
		array(' :cry: ', 'icon_cry.gif', 'très triste'),
		array(' :evil: ', 'icon_evil.gif', 'diabolique'),
		array(' :twisted: ', 'icon_twisted.gif', 'grimace diabolique'),
		array(' :roll: ', 'icon_rolleyes.gif', 'yeux fous'),
		array(' :wink: ', 'icon_wink.gif', 'clin d\'oeil'),
		array(' :!: ', 'icon_exclaim.gif', 'exclamation'),
		array(' :? ', 'icon_question.gif', 'question'),
		array(' :idea: ', 'icon_idea.gif', 'idée'),
		array(' :arrow: ', 'icon_arrow.gif', 'flèche'),
		array(' :| ', 'icon_neutral.gif', 'neutre'),
		array(' :mrgreen: ', 'icon_mrgreen.gif', 'mr. Green'),
		array(' :face: ', 'fresse.png', 'fantôme'),
		array(' :tongue: ', 'icon_tongue.png', 'langue'),
		array(' :suspect: ', 'suspect.gif', 'suspect'),
		array(' :cheers: ', 'icon_cheers.png', 'ami'),
		array(' :lol!: ', 'lol.gif', 'lol')

	);
	if ($mode == 0)
		return $table;

	$out = array();
	foreach ($table AS $smiley)
	{
		$out[0][] = $smiley[0];
		$out[1][] = $smiley[1];
		$out[2][] = $smiley[2];
	}

	if ($mode == 2)
	{
		foreach ($out[1] AS $i => $img)
		{
			$imgP = getImageSize($pathinclude.'images/smilies/'.$img);
			$out[1][$i] = ' <img src="'.$pathinclude.'images/smilies/'.$img.'"  border=0 alt="'.str_replace('"', '`', $out[2][$i]).'"> ';
		}
	}

	return $out;
}

function getMode($province, $guilde, $default='general')
{
	$mode = $default;
	if ((isset($_GET['mode'])) &&
		(
			(($_GET['mode']=='general'))
		    ||	(($_GET['mode']=='province')&&($province != 'Aucune'))
		    ||  (($_GET['mode']=='guilde')&&($guilde != 'Aucune'))
		))
	{
		$mode = $_GET['mode'];
	}
	return $mode;
}

function writeAllChatboxes($joueur, $compte = '', $serveur, $page, $mode, $province='Aucune', $guilde='Aucune', $pathinclude='')
{
	$echo = '';

	if ($province == '')
		$province = 'Aucune';
	if ($guilde == '')
		$guilde = 'Aucune';

	// Chat général
	if ($mode == 'general')
	{
		$echo .= '	<div class="scroll_background">
				<div style="width:88%; margin:0px auto;">
		';
		if ($province != 'Aucune')
		{
			$echo .= '		<div style="float:right;">Discussions <b>g&eacute;n&eacute;rales</b>
						- <a target="_blank"; href="https://discordapp.com/widget?id=509641555053772811&theme=dark" width="350" height="500" allowtransparency="true" frameborder="0" style="color: #67269d; font-weight: bold;">Discord</a>';
			if ($guilde != 'Aucune')
				$echo .= '		- <a href="'.$page.'?mode=guilde">guilde</a>';
			$echo .= '</div>';
		}
		else if ($pathinclude=='')
			$echo .= '		<div style="float:right;" style="font-size:10pt; white-space:nowrap; padding-top:3px;">Rejoignez une province pour participer &agrave; ses discussions!</div>';
		$echo .= '	</div><br>
		';
		$echo .= writeChatBox($joueur, $compte, $page, $mode, 0, '', '', $pathinclude);
		$echo .= '</div>';
	}
	// Chat de province
	if (($mode == 'province') && ($province != 'Aucune'))
	{
		$echo .= '<div style="text-align:center;">
			<div style="width:88%; margin:0px auto;">
			<div style="float:right;">Discussions
					  <a href="'.$page.'?mode=general">g&eacute;n&eacute;rales</a>
					- <b>province</b>';
		if ($guilde != 'Aucune')
			$echo .= ' 		- <a href="'.$page.'?mode=guilde">guilde</a>';
		$echo .= '</div>
		</div><br>';
		$echo .= writeChatBox($joueur, $compte, $page, $mode, $serveur, $province, $guilde, $pathinclude);
		$echo .= '</div>';
	}
	// Chat de guilde
	if (($mode == 'guilde') && ($guilde != 'Aucune'))
	{
		$echo .= '<div style="text-align:center;">
			<div style="width:88%; margin:0px auto;">
			<div style="float:right;">Discussions
					  <a href="'.$page.'?mode=general">g&eacute;n&eacute;rales</a>
					- <a href="'.$page.'?mode=province">province</a>
					- <b>guilde</b></div>
		</div><br>';
		$echo .= writeChatBox($joueur, $compte, $page, $mode, $serveur, $province, $guilde, $pathinclude);
		$echo .= '</div>';
	}

	return $echo;
}



function writeChatBox ($joueur, $compte='', $page, $mode, $srv_id=0, $province='', $guilde='', $pathinclude='')
{
	$echo = '';
	$dbtable = 'chat';

	if ($compte != '')
		$compte = " ($compte)";

	$prov = '';
	if ($mode == 'province')
		$prov = $province;
	$guil = '';
	if ($mode == 'guilde')
		$guil = $guilde;

	// insertion d'un nouveau commentaire
	if (isset($_POST['envoie']) && (isset($_POST['text_chat']) && $_POST['text_chat'] != '') && ((isset($_POST['srv_id']))&&($_POST['srv_id']==$srv_id) ))
	{
		if (	(($mode=='general') &&($srv_id == 0)		)	||
			(($mode=='province')&&($srv_id != 0) && ($prov != ''))	||
			(($mode=='guilde')  &&($srv_id != 0) && ($guil != ''))	)
		{
			$serveur_off = $srv_id;
			include($pathinclude.'administration/choix_serveurs_off.php');
			$text = mysql_real_escape_string($_POST['text_chat']);
			$text = trim(str_replace("'", "'", $text));
			if ($text != '')
			{
				//$text = corrigerAccents(htmlentities($text));
				mysql_query('INSERT INTO `'.$dbtable.'` (`author`, `text`, `time`, `province`, `guilde`) VALUES ("'.$joueur.''.$compte.'", "'.str_replace('<', '', $text).'", "'.time().'", "'.$prov.'", "'.$guil.'");') or die(mysql_error());
			}
				mysql_close();
		}
	}

	$chk = (isset($_POST['ref'])) ? 'checked' : '';
	$ref = (isset($_POST['ref'])) ? 1 : 0;
	$stylefont = ($pathinclude=='') ? 'font-size:10pt; padding-top:3px;' : '';

	$smilies = getSmiliesTable(2, $pathinclude);


	$echo .= '
	<script type="text/javascript">
	<!--
	function insertSmiley(id, text)
	{
		if (!isNaN(document.getElementById(id).selectionStart))
		{
			var selStart = document.getElementById(id).selectionStart;
			var selEnd = document.getElementById(id).selectionEnd;
			var textLength = (document.getElementById(id).value).length;

			var s1 = (document.getElementById(id).value).substring(0, selStart);
			var s2 = (document.getElementById(id).value).substring(selStart, textLength)
			document.getElementById(id).value = s1 + text + s2;

			document.getElementById(id).selectionStart = selStart + text.length;
			document.getElementById(id).selectionEnd = selEnd + text.length;
		}
		else
		{
			document.getElementById(id).value = document.getElementById(id).value + text;
		}
		swapbonus(\'chatSmilies\',\'smilieslink\');
		document.getElementById(id).focus();
	}
	//-->
	</script>
	';

	$sortie_mode = ('/forum/' == substr(getenv('SCRIPT_NAME'), 0, 7) && $srv_id == 0) ? '?'.getenv('QUERY_STRING') : '?mode='.$mode;

	$echo .= '
	<form class="chat_form" method="POST" action="'.$page.$sortie_mode.'" style="text-align:center;" accept-charset="utf-8">
	<div style="width:95%; text-align:center; margin: 0px auto;" border="0">
		<IFRAME SRC="'.$pathinclude.'chatframe.php?srv='.$srv_id.'&guilde='.urlencode($guil).'&province='.urlencode($prov).'&refresh='.$ref.'&pathinclude='.$pathinclude.'" TITLE="chatframe" width="100%" height="150"></IFRAME>
		<div style="height:28px;">
			<div style="float:left; width:82%; text-align:left;">
				<input type="text" name="text_chat" id="text_chat" class="post" style="width:100%; font-size:10pt; padding:0px 2px" maxlength="350"></div>
			<div style="display:block; float: left; padding:0px 8px;" id="smilieslink"><a href="javascript:swapbonus(\'smilieslink\',\'chatSmilies\')"><img src="images/smilies/icon_biggrin.gif" width=25 height=25 alt="Smiley" border=1 style="padding:3px;"></a></div>
			<div style="float:right;width:10%;"><input type="hidden" name="srv_id" value="'.$srv_id.'">
								<input type="submit" class="bouton" name="envoie" value=" >> " style="width:100%;"></div>
			&nbsp;</div>
		<div id="chatSmilies" style="min-height:80px;width:100%; display:none; width:370px; margin:0px auto;">
		';
	foreach ($smilies[i] AS $i => $img)
		$echo .= '<div style="float:left; margin:0px; padding:4px 10px 0px 0px;"><a href="javascript:insertSmiley(\'text_chat\', \''.$smilies[0][$i].'\')">'.$img.'</a></div>';

	$echo .= '	</div>
	</div>
	</form>

	';

	return $echo;
}


?>
