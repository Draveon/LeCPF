<?php session_start();

function spec_chars($chaine)
{
	for ($i = 161; $i < 255; $i++)
		$chaine = ereg_replace(chr($i), "&#$i;", $chaine);
	return $chaine;
}

function writeChatForum()
{
	$echo = '';
		$acc0 = array('é','è','à','î','ï','ë');
		$acc1 = array("Ã©","Ã¨","Ã ","Ã®","Ã¯","Ã«");
	
	$javascript = '
<script type="text/javascript">
<!--
function swapbonus (d1, d2)
{
	document.getElementById(d1).style.display = \'none\';
	document.getElementById(d2).style.display = \'block\';
}
//-->
</script>
';
	
	$divstyle =  'width:95%; margin: 0px auto;';
	// connexion au jeu
	if ((isset($_SESSION['connexion']))&&($_SESSION['connexion']==1)&&(isset($_SESSION['serveur']))&&(in_array($_SESSION['serveur'],array(1,2,3))))
	{
		$serveur_off = $_SESSION['serveur'];
		$nom = $_SESSION['nom'];
		
		include ('../administration/choix_serveurs_off.php');
		//mysql_query("SET NAMES utf-8");
		$sql = "SELECT province, guilde FROM joueurs_bonus WHERE nom = '$nom'";
		$req = mysql_query($sql) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
		$data = mysql_fetch_row($req);
		$province = $data[0];
		$guilde = $data[1];
		mysql_close();
		
		
		/*
		$nom = str_replace($acc0, $acc1, $nom);
		$province = str_replace($acc0, $acc1, $province);
		$guilde = str_replace($acc0, $acc1, $guilde);
		*/
		
		include ('../chat/chat.php');
		$mode = getMode($province, $guilde, 'general');
		$echo .= $javascript.'<div style="'.$divstyle.'">';
		$echo .= writeAllChatboxes($nom, $_SESSION['serveur'], 'index.php', $mode, $province, $guilde, '../');
		$echo .= '</div>';
	}
	// sinon on se connecte avec le pseudo forum et seulement à la chatbox principale
	else
	{
		global $user;
		if ($user->data['username'] != 'Anonymous')
		{
			$joueur = str_replace(
				array('Ã ','Ã¢','Ã¤','Ã¥','Ã£','Ã¡','Ã‚','Ã„','Ã€','Ã…','Ãƒ','Ã','Ã¦','Ã†','Ã§','Ã‡','Ã©','Ã¨','Ãª','Ã«','Ã‰','ÃŠ','Ã‹','Ãˆ','Ã¯','Ã®','Ã¬','Ã­','Ã','ÃŽ','ÃŒ','Ã','Ã±','Ã‘','Ã¶','Ã´','Ã³','Ã²','Ãµ','Ã“','Ã”','Ã–','Ã’','Ã•','Ã¹','Ã»','Ã¼','Ãº','Ãœ','Ã›','Ã™','Ãš','Ã¿'),
				array('à', 'â', 'ä', 'å', 'ã', 'á', 'Â', 'Ä', 'À', 'Å', 'Ã', 'Á', 'æ', 'Æ', 'ç', 'Ç', 'é', 'è', 'ê', 'ë', 'É', 'Ê', 'Ë', 'È', 'ï', 'î', 'ì', 'í', 'Ï', 'Î', 'Ì', 'Í', 'ñ', 'Ñ', 'ö', 'ô', 'ó', 'ò', 'õ', 'Ó', 'Ô', 'Ö', 'Ò', 'Õ', 'ù', 'û', 'ü', 'ú', 'Ü', 'Û', 'Ù', 'Ú', 'ÿ' ),
				$user->data['username']);
			include ('../chat/chat.php');
			$echo .= $javascript.'<div style="'.$divstyle.'">';
			$echo .= writeAllChatboxes($joueur, 0, 'index.php', 'general', '', '', '../');
			$echo .= '</div>';
		}
	}
	
	if (strlen($echo) > 0)
	{
		$echo = '
<div class="forabg">
	<div class="inner">
		<span class="corners-top"><span></span></span>
		<ul class="topiclist">
			<li class="header">
				<dl class="icon">
					<dt>Destin&eacute;e - Chatbox</dt>
				</dl>
			</li>
		</ul>
		<ul class="topiclist forums">
			<li class="row">
				<!--<dl class="icon" style="background-image: url(./styles/prosilver/imageset/forum_read.gif); background-repeat: no-repeat;">-->
				<dl class="icon">
					' . $echo .'
				</dl>
			</li>
		</ul>
		<span class="corners-bottom"><span></span></span>
	</div>
</div>
';
	}

	return spec_chars($echo);
}

?>
