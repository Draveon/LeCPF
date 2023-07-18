<? session_start();

include ("debut.php");

if (!isset($_SESSION['connexion']) OR $_SESSION['connexion'] != 1){
    $connexion = 0;
    include ("menu_index.php");
}

else{
    $connexion = 1;
    include ("menu.php");
}

entete("Inscription");

echo '<table border="0" style="width: 630px; text-align: left;"><tbody><tr><td>';

echo '<strong><span style="font-family: papyrus;">Inscription - Grand Concours de l\'été</span></strong><br><br>';

echo '<DIV ALIGN=JUSTIFY><P STYLE="text-indent: 1cm">En procédant à cette inscription, vous aurez accès au Grand Concours de l\'été, qui aura lieu du 14 juillet au 15 août. Bien que votre inscription
puisse se faire immédiatement, vous n\'aurez accès à votre compte qu\'à la première minute du 14 juillet, et pas avant. Ce faisant, vous courrez
aussi la chance de remporter le lot final, d\'une valeur approximative de 10€( pour l\'instant, décerné à celui figurant au sommet du classement lors du 14 juillet
2007, à 23h59. Pour de plus amples renseignements, le forum est à votre disposition. Bonne chance à tous !</div></p><center>';

?>
<table border="0" width="436" height="411" style="border: 1px solid #E5E3FF;" cellpadding="0" cellspacing="0">
 <tr>
  <td colspan="2" width="436">
   <table width="436" border="0" cellpadding="0" cellspacing="0">
    <tr height="27">
     <td width="127" align="left" bgcolor="#D0D0FD">
      <a href="http://www.allopass.com/?REDIRECT=presentation.php4&ADV=9584028" target="_blank"><img src="http://www.allopass.com/imgweb/common/access/logo.gif" width="127" height="27" border="0" alt="Allopass"></a>
     </td>
         <td width="309" align="right" bgcolor="#D0D0FD">
      <font style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #000084; font-style : none; font-weight: bold; text-decoration: none;">
       Solution de micro paiement sécurisé<br>Securised micro payment solution
      </font>
     </td>
    </tr>
    <tr height="30">
     <td colspan="2" width="436" align="center" valign="middle" bgcolor="#F1F0FF">
      <font style="font-family: Arial, Helvetica, sans-serif; font-size: 9px; color: #000084; font-style : none; font-weight: bold; text-decoration: none;">
       Pour acheter ce contenu, insérez le code obtenu en cliquant sur le drapeau de votre pays
      </font>
      <br>
      <font style="font-family: Arial, Helvetica, sans-serif; font-size: 9px; color: #5E5E90; font-style : none; font-weight: bold; text-decoration: none;">
       To buy this content, insert your access code obtained by clicking on your country flag
      </font>
     </td>
    </tr>
        <tr height="2"><td colspan="2" width="436" bgcolor="#E5E3FF"></td></tr>
   </table>
  </td>
 </tr>
 <tr height="347">
  <td width="284">
   <iframe name="APsleft" width="284" height="347" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" src="http://www.allopass.com/access/left.php4?LG=fr_uk&SITE_ID=130643&DOC_ID=359598&ADV=9584028"></iframe>
  </td>
  <td width="152">
   <iframe name="APsright" width="152" height="347" frameborder="0" marginheight="0" marginwidth="0" scrolling="no" src="http://www.allopass.com/access/right.php4?LG=fr_uk&SITE_ID=130643&DOC_ID=359598&ADV=9584028"></iframe>
  </td>
 </tr>
 <tr height="5"><td colspan="2" bgcolor="#D0D0FD" width="436"></td></tr>
</table>

<?

echo '</td></tr></tbody></table>';

include("fin.php");
