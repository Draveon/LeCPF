<?php
include ("connect.php");
?>
<!-- Modal des races -->
<div id="modalrace" class="modal fade role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h5 class="modal-title">Races</h5>
			</div>
			<div class="modal-body">
				<p>En construction...<br/>
				Vous pouvez en attendant vous référer à la <a href="/encyclopedie_races.php">section</a> de l\'encyclopédie qui y est consacrée...</p> <br/>
				<div> 

	<?php
		
	$sql3 = "SELECT att, def, ini, cha, end, pui, image FROM races ORDER BY race ASC";
	$req3 = mysql_query($sql3) or die('Erreur SQL !<br>'.$sql.'<br>'.mysql_error());
	$anci = mysql_fetch_row($req3);
	$cele = mysql_fetch_row($req3);
	$elfe = mysql_fetch_row($req3);
	$elfn = mysql_fetch_row($req3);
	$fees = mysql_fetch_row($req3);
	$feti = mysql_fetch_row($req3);
	$gean = mysql_fetch_row($req3);
	$gnom = mysql_fetch_row($req3);
	$homm = mysql_fetch_row($req3);
	$infe = mysql_fetch_row($req3);
	$mino = mysql_fetch_row($req3);
	$nain = mysql_fetch_row($req3);
	$orqu = mysql_fetch_row($req3);
	$sahu = mysql_fetch_row($req3);
	$sept = mysql_fetch_row($req3);
	$vamp = mysql_fetch_row($req3);
	$mala = mysql_fetch_row($req3);
?>
<table class="tableraces" style="margin-right:30px;"><tbody>
<tr>	<td></td>
	
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/anciens.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/celestiaux.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/elfes.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/elfesnoirs.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/fees.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/fetides.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/geants.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/gnomes.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/hommes.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/infernaux.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/malakehs.gif" align="middle"></td> 
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/minotaures.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/nains.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/orques.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/sahuagins.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/septentrionaux.gif" align="middle"></td>
	<td style="width: 30px; text-align: right;"><img src="/images/terrain/vampires.gif" align="middle"></td>
</tr>

<?php
	for ($i = 0; $i < 6; $i++)
	{
		switch ($i)
		{
			case '0': echo '<tr><td class="tdraces">Attaque</td>';	break;
			case '1': echo '<tr><td class="tdraces">Défense</td>';	break;
			case '2': echo '<tr><td class="tdraces">Initiative</td>';	break;
			case '3': echo '<tr><td class="tdraces">Charisme</td>';	break;
			case '4': echo '<tr><td class="tdraces">Endurance</td>';	break;
			case '5': echo '<tr><td class="tdraces">Puissance</td>';	break;
		} ?>

		<td class="rollovercolor">'.$anci[$i].'</td>
		<td class="rollovercolor">'.$cele[$i].'</td>
		<td class="rollovercolor">'.$elfe[$i].'</td>
		<td class="rollovercolor">'.$elfn[$i].'</td>
		<td class="rollovercolor">'.$fees[$i].'</td>
		<td class="rollovercolor">'.$feti[$i].'</td>
		<td class="rollovercolor">'.$gean[$i].'</td>
		<td class="rollovercolor">'.$gnom[$i].'</td>
		<td class="rollovercolor">'.$homm[$i].'</td>
		<td class="rollovercolor">'.$infe[$i].'</td>
		<td class="rollovercolor">'.$mino[$i].'</td>
		<td class="rollovercolor">'.$nain[$i].'</td>
		<td class="rollovercolor">'.$orqu[$i].'</td>
		<td class="rollovercolor">'.$sahu[$i].'</td>
		<td class="rollovercolor">'.$sept[$i].'</td>
		<td class="rollovercolor">'.$vamp[$i].'</td>
		<td class="rollovercolor">'.$mala[$i].'</td>
		</tr>';
		<?php
	}
	?>

	</tbody></table>
<?php
}

mysql_close();
?>
	
				</div>
				
			</div>
			<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>	

