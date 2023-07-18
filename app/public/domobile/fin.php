
<?php

echo "<br>\n\n";
if ((!isset($ifcadrefin))||($ifcadrefin))
	echo cadre_fin();

include_once ('partenariats_include.php');
echo '
'.writeLinksBottom(1).'
</div>';

if ((!isset($ifpubgoogle))||($ifpubgoogle!=false))
{
	echo '
<script type="text/javascript"><!--
google_ad_client = "pub-0040694376443235";
/* Destinee online */
google_ad_slot = "3473958144";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src=\'" + gaJsHost + "google-analytics.com/ga.js\' type=\'text/javascript\'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
var pageTracker = _gat._getTracker("UA-4507169-1");
pageTracker._initData();
pageTracker._trackPageview();
</script>';
}

echo '
</div>
</div>

</body>
</html>';

?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="newhero.js">

</script>


<!-- Global Site Tag (gtag.js) - Google Analytics -->
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=GA_TRACKING_ID"></script> -->
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-102847051-1');
</script>
