<?php
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
}
function jarterAccents($text)
{
					$text = str_replace("é", "e", $text);
					$text = str_replace("è", "e", $text);
					$text = str_replace("ê", "e", $text);
					$text = str_replace("ë", "e", $text);
					$text = str_replace("à", "a", $text);
					$text = str_replace("ä", "a", $text);
					$text = str_replace("â", "a", $text);
					$text = str_replace("ù", "u", $text);
					$text = str_replace("û", "u", $text);
					$text = str_replace("ü", "u", $text);
					$text = str_replace("ô", "o", $text);
					$text = str_replace("ö", "o", $text);
					$text = str_replace("î", "i", $text);
					$text = str_replace("ï", "i", $text);
					$text = str_replace("ç", "c", $text);
	return $text;
}
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

function getMode($faction, $province, $guilde, $default='general')
{
	$mode = $default;
	if ((isset($_GET['mode'])) &&
		(
			(($_GET['mode']=='general'))
		    ||	(($_GET['mode']=='province')&&($province != 'Aucune'))
		    ||  (($_GET['mode']=='guilde')&&($guilde != 'Aucune'))
		    ||  (($_GET['mode']=='faction')&&($faction != 'Aucune'))

		))
	{
		$mode = $_GET['mode'];
	}
	return $mode;
}

function writeAllChatboxes($joueur, $serveur, $page, $mode, $province='Aucune', $guilde='Aucune', $faction='Aucune', $pathinclude='')
{
	$echo = '';

	if ($province == '')
		$province = 'Aucune';
	if ($guilde == '')
		$guilde = 'Aucune';
	if ($faction == '')
		$faction = 'Aucune';

	$helplinks = '<a href="/forum/viewtopic.php?t=3600" target="_blank">Magie & mana</a> - <a href="/forum/viewtopic.php?t=3589" target="_blank">Cr&eacute;atures</a> - <a href="/forum/viewforum.php?f=24" target="_blank">Forum</a>';
	if ($pathinclude != '')
		$helplinks = 'Connect&eacute;: <b>'.$joueur.'</b>';

	// Chat général
	if ($mode == 'general')
	{
		$echo .= '	<div style="text-align:center;">
				<div style="width:88%; margin:0px auto;">
				<div style="float:left; white-space:nowrap;">'.$helplinks.'</div>
		';
		if ($province != 'Aucune')
		{
			$echo .= '		<div style="float:right;">Discussions <b>g&eacute;n&eacute;rales</b>
						- <a href="'.$page.'?mode=province">province</a>';
			if ($guilde != 'Aucune')
				$echo .= '		- <a href="'.$page.'?mode=guilde">guilde</a>';
			$echo .= '</div>';

			if ($faction != 'Aucune')
				$echo .= '		- <a href="'.$page.'?mode=faction">faction</a>';
			$echo .= '</div>';


		}
		else if ($pathinclude=='')
			$echo .= '		<div style="float:right;" style="font-size:10pt; white-space:nowrap; padding-top:3px;">Rejoignez une province pour participer &agrave; ses discussions!</div>';
		$echo .= '	</div><br>
		';
		$echo .= writeChatBox($joueur, $page, $mode, 0, '', '', $pathinclude);
		$echo .= '</div>';
	}
	// Chat de province
	if (($mode == 'province') && ($province != 'Aucune'))
	{
		$echo .= '<div style="text-align:center;">
			<div style="width:88%; margin:0px auto;">
			<div style="float:left; white-space:nowrap;">'.$helplinks.'</div>
			<div style="float:right;">Discussions
					  <a href="'.$page.'?mode=general">g&eacute;n&eacute;rales</a>
					- <b>province</b>';
		if ($guilde != 'Aucune')
			$echo .= ' 		- <a href="'.$page.'?mode=guilde">guilde</a>';
		$echo .= '</div>
		</div><br>';
		$echo .= writeChatBox($joueur, $page, $mode, $serveur, $province, $guilde, $faction, $pathinclude);
		$echo .= '</div>';

		if ($faction != 'Aucune')
			$echo .= ' 		- <a href="'.$page.'?mode=faction">faction</a>';
		$echo .= '</div>
		</div><br>';
		$echo .= writeChatBox($joueur, $page, $mode, $serveur, $province, $guilde, $faction, $pathinclude);
		$echo .= '</div>';


	}
	// Chat de guilde
	if (($mode == 'guilde') && ($guilde != 'Aucune'))
	{
		$echo .= '<div style="text-align:center;">
			<div style="width:88%; margin:0px auto;">
			<div style="float:left; white-space:nowrap;">'.$helplinks.'</div>
			<div style="float:right;">Discussions
					  <a href="'.$page.'?mode=general">g&eacute;n&eacute;rales</a>
					- <a href="'.$page.'?mode=province">province</a>
					- <b>guilde</b></div>
					- <b>faction</b></div>
		</div><br>';
		$echo .= writeChatBox($joueur, $page, $mode, $serveur, $province, $guilde, $faction, $pathinclude);
		$echo .= '</div>';
	}

	return $echo;
}




function writeChatBox ($joueur, $page, $mode, $srv_id=0, $province='', $guilde='', $pathinclude='')
{
	$echo = '';
	$dbtable = 'chat';

	$prov = '';
	if ($mode == 'province')
		$prov = $province;
	$guil = '';
	if ($mode == 'guilde')
		$guil = $guilde;


	// insertion d'un nouveau commentaire
	if (isset($_POST['envoie']) && (isset($_POST['text_chat']) && $_POST['text_chat'] != '') && ((isset($_POST['srv_id']))&&($_POST['srv_id']==$srv_id) ) )
	{
		if (	(($mode=='general') &&($srv_id == 0)		)	||
			(($mode=='province')&&($srv_id != 0) && ($prov != ''))	||
			(($mode=='guilde')  &&($srv_id != 0) && ($guil != ''))	||
			)
		{
			$serveur_off = $srv_id;
			include($pathinclude.'administration/choix_serveurs_off.php');
			$text = mysql_real_escape_string($_POST['text_chat']);
			if (substr($text, 0, strlen($joueur.':')) == $joueur.':')
				$text = substr($text, strlen($joueur.':'));
			$text = trim(str_replace("'", "'", $text));
			if ($text != '')
			{

				$text = corrigerAccents(htmlentities($text));

				$sql = "SELECT COUNT(`id`) FROM `$dbtable` WHERE `author` = '$joueur' AND `text` LIKE '".$text."'";
				$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
				$data = mysql_fetch_row($req);
				if ($data[0] == 0)
				{
					mysql_query('INSERT INTO `'.$dbtable.'` (`author`, `text`, `time`, `province`, `guilde`) VALUES ("'.$joueur.'", "'.str_replace('<', '', $text).'", "'.time().'", "'.jarterAccents($prov).'", "'.jarterAccents($fact).'", "'.jarterAccents($guil).'");');
				}
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
		clearInput (id, \''.$joueur.'\');
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

	function clearInput (id, joueur)
	{
		if (document.getElementById(id).value == joueur+\':\')
		{
			document.getElementById(id).value = \'\';
		}

	}
	function checkInput (id, joueur)
	{
		if (document.getElementById(id).value == \'\')
		{
			document.getElementById(id).value = joueur+\':\';
		}
	}
	//-->
	</script>
	';

	$echo .= '
	<form method="POST" name="chat" action="'.$page.'?mode='.$mode.'" style="text-align:center;" accept-charset="iso-8859-1">
	<div style="width:100%; text-align:center; margin: 0px auto;" border="0">
		<IFRAME SRC="'.$pathinclude.'chatframe.php?srv='.$srv_id.'&guilde='.urlencode($guil).'&province='.urlencode($prov).'&faction='.urlencode($fact).'&refresh='.$ref.'&pathinclude='.$pathinclude.'" TITLE="chatframe" width="100%" height="150"></IFRAME>
		<div style="height:28px;">
			<div style="float:left; width:82%; text-align:left;">
				<input type="text" name="text_chat" id="text_chat" value="'.$joueur.':" onfocus="javascript:clearInput(\'text_chat\', \''.$joueur.'\')" onblur="javascript:checkInput(\'text_chat\', \''.$joueur.'\')" class="post" style="width:100%; font-size:10pt; padding:0px 2px" maxlength="250"></div>
			<div style="display:block; float: left; padding:0px 8px;" id="smilieslink"><a href="javascript:swapbonus(\'smilieslink\',\'chatSmilies\')"><img src="images/smilies/icon_biggrin.gif" width=15 height=15 alt="Smiley" border=1 style="padding:3px;"></a></div>
			<div style="float:right;width:10%;"><input type="hidden" name="srv_id" value="'.$srv_id.'">
								<input type="submit" class="bouton" name="envoie" value=" >> " style="width:100%;"></div>
			&nbsp;</div>
		<div id="chatSmilies" style="min-height:80px;width:100%; display:none; width:370px; margin:0px auto;">
		';
	foreach ($smilies[1] AS $i => $img)
		$echo .= '<div style="float:left; margin:0px; padding:4px 10px 0px 0px;"><a href="javascript:insertSmiley(\'text_chat\', \''.$smilies[0][$i].'\')">'.$img.'</a></div>';

	$echo .= '	</div>
		<div style="min-height:20px;">
			<div style="float:left; '.$stylefont.' white-space:nowrap;">(L\'heure est au format GMT - il est actuellement '.gmdate("G:i:s").')</div>
			<div style="float:right;"><input type="checkbox" name="ref" value="1" '.$chk.'> <span class="tooltip">Actualisation automatique (15 secondes)</span></div>
			&nbsp;</div>
	</div>
	</form>
	';

	return $echo;
}


?>
