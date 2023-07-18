<?php 	

include('chat/chat2.php');
$mode = getMode($province, $guilde);
echo writeAllChatboxes($nom, $_SESSION['login'], $serveur, 'principale.php', $mode, $province, $guilde);

 ?>