<?php
function posterMessage($forum_id, $topic_id, $action, $my_subject, $my_text)
{
		global $db, $board_config;
		
		// Défintion et inclusions nécessaires au postage et à l'utilisation des sessions de phpbb
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

		// Préparation du message
		$my_subject   = utf8_normalize_nfc($my_subject, '', true);
		$my_text   = utf8_normalize_nfc($my_text, '', true);
		$data = array(
					   'forum_id'      => $forum_id,
					   'topic_id'		=> $topic_id,
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
		submit_post($action, $my_subject, '', POST_NORMAL, $poll, $data);
		
		// On revient sagement sur notre session forum
		$user = $backup['user'];
		$auth = $backup['auth'];
}
?>