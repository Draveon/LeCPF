<?php
		
		// Récupération des requetes
		ob_start();
		include 'gilnarfein/hof_autosave.php';
		$requetes_hof = ob_get_contents();
		ob_end_clean();
		
		// Sauvegarde en fichier
		$sauvegarde = fopen('hof/sql_'.date('M_y').'.sql', 'a');
		fwrite($sauvegarde, $requetes_hof);
		fclose($sauvegarde);
		
		// On signale sur le forum que le fichier a été créé
		include 'fonctions/fonctions_forum.php';
		$my_text = 'Sauvegarde du fichier hof/sql_'.date('M_y').'.sql contenant les informations relatives au hof de ce mois...'."\n\n".'Ceci est un message automatique.';
		$my_subject = 'Hof Auto_SQL';		// Défintion et inclusions nécessaires au postage et à l'utilisation des sessions de phpbb
		
		$my_text_gen = 'Les donnees necessaires pour le Hall of Fame de ce mois ont ete enregistrees le '.date('d/m/Y a H:i:s')."\n".'Le HoF verra donc le jour tres bientot et avec ces donnees.'."\n\n".'Ceci est un message automatique.';
		$my_subject_gen = 'Enregistrement du HoF '.date('M_y');
		
		
		define('IN_PHPBB', true);
		$phpbb_root_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './forum/';
		$phpbb_admin_path = (defined('PHPBB_ROOT_PATH')) ? PHPBB_ROOT_PATH : './forum/';
		$phpEx = substr(strrchr(__FILE__, '.'), 1);
		include($phpbb_root_path . 'common.' . $phpEx);
		include($phpbb_root_path . 'includes/functions_posting.' . $phpEx);
		include($phpbb_root_path . 'includes/functions_display.' . $phpEx);
		include($phpbb_root_path . 'includes/message_parser.' . $phpEx);

		// On switche sur Eva avec un backup pour la session courante du forum
		$backup['user'] = $user;
		$backup['auth'] = $auth;
		
		$user->session_begin();
		$sql = 'SELECT *
			FROM ' . USERS_TABLE . '
			WHERE user_id = 10571';
		$result = $db->sql_query($sql);
		$row = $db->sql_fetchrow($result);
		$db->sql_freeresult($result);

		$user->data = array_merge($user->data, $row);
		$auth->acl($user->data);

		// Préparation du message en partie admin
		$my_subject   = utf8_normalize_nfc($my_subject, '', true);
		$my_text   = utf8_normalize_nfc($my_text, '', true);
		$data = array(
					   'forum_id'      => 50,
					   'topic_id'		=> 9011,
					   'icon_id'      => false,

					   'enable_bbcode'      => true,
					   'enable_smilies'   => true,
					   'enable_urls'      => true,
					   'enable_sig'      => true,

					   'message'      => $my_text,
					   'message_md5'   => md5($my_text),
								
					   'bbcode_bitfield'   => '',
					   'bbcode_uid'      => '',

					   'post_edit_locked'   => 0,
					   'topic_title'      => $my_subject,
					   'notify_set'      => false,
					   'notify'         => false,
					   'post_time'       => 0,
					   'forum_name'      => '',
					   'enable_indexing'   => true,
					   'force_approved_state'  => true
				);
		// On poste le message
		submit_post('reply', $my_subject, '', POST_NORMAL, $poll, $data);

		// Préparation du message en partie admin
		$my_subject_gen   = utf8_normalize_nfc($my_subject_gen, '', true);
		$my_text_gen   = utf8_normalize_nfc($my_text_gen, '', true);
		$data_gen = array(
					   'forum_id'      => 8,
					   'topic_id'		=> 5487,
					   'icon_id'      => false,

					   'enable_bbcode'      => true,
					   'enable_smilies'   => true,
					   'enable_urls'      => true,
					   'enable_sig'      => true,

					   'message'      => $my_text_gen,
					   'message_md5'   => md5($my_text_gen),
								
					   'bbcode_bitfield'   => '',
					   'bbcode_uid'      => '',

					   'post_edit_locked'   => 0,
					   'topic_title'      => $my_subject_gen,
					   'notify_set'      => false,
					   'notify'         => false,
					   'post_time'       => 0,
					   'forum_name'      => '',
					   'enable_indexing'   => true,
					   'force_approved_state'  => true
				);
		// On poste le message
		submit_post('reply', $my_subject_gen, '', POST_NORMAL, $poll, $data_gen);
		
		// On revient sagement sur notre session forum
		$user = $backup['user'];
		$auth = $backup['auth'];
		
?>