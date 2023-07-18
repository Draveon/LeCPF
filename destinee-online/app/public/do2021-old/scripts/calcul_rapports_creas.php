<? session_start();

$diff_stats_range = 20;
$diff_stats_volant = 15;
$diff_stats_rv = 30;
$bonus_contact_sol = 1;
$bonus_contact_vol = 1;
$resist_volant = 1.18;
$resist_volant_archer = 1.06;
$reduc_preli = 0.5;
$bonus_preli_vs_vol = 1;

$degats = 17.5;


echo '<table><tbody><tr><td colspan="2"><b>Ini vs pas ini</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100;
$res_2 = $stats_2 / 100;
$bonus_d = 1.212121212;
$pvs_1 = $pvs_2 = 100;
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1 -= $pvs_2 / 100 * $degats;
	$pvs_2 -= $pvs_1 / 100 * $degats * $bonus_d;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$ini_pini = round(max(0, $pvs_1) - max(0, $pvs_2));
$pini_ini = round(max(0, $pvs_2) - max(0, $pvs_1));


echo '<table><tbody><tr><td colspan="2"><b>Range sol vs Contact sol</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100 + $diff_stats_range;
$res_2 = $stats_2 / 100;
$pvs_1 = $pvs_2 = 100;
// Tour préli
$pvs_2 -= $reduc_preli * $pvs_1 / 100 * $degats / $res_2;
echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1_new = $pvs_1 - $bonus_contact_sol * $pvs_2 / 100 * $degats;
	$pvs_2 -= $pvs_1 / 100 * $degats / $res_2;
	$pvs_1 = $pvs_1_new;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$rs_cs = round(max(0, $pvs_1) - max(0, $pvs_2));
$cs_rs = round(max(0, $pvs_2) - max(0, $pvs_1));

echo '<table><tbody><tr><td colspan="2"><b>Range sol vs Contact vol</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100 - $diff_stats_volant + $diff_stats_range;
$res_2 = $stats_2 / 100;
$pvs_1 = $pvs_2 = 100;
// Tour préli
$pvs_2 -= $reduc_preli * $pvs_1 / 100 * $degats / $res_2 / $resist_volant_archer * $bonus_preli_vs_vol;
echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1_new = $pvs_1 - $pvs_2 / 100 * $degats;
	$pvs_2 -= $pvs_1 / 100 * $degats / $res_2 / $resist_volant_archer;
	$pvs_1 = $pvs_1_new;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$rs_cv = round(max(0, $pvs_1) - max(0, $pvs_2));
$cv_rs = round(max(0, $pvs_2) - max(0, $pvs_1));

echo '<table><tbody><tr><td colspan="2"><b>Range vol vs Range sol</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100 - $diff_stats_range + $diff_stats_rv;
$res_2 = $stats_2 / 100;
$pvs_1 = $pvs_2 = 100;
// Tour préli
$pvs_1_new = $pvs_1 - $reduc_preli * $pvs_2 / 100 * $degats / $resist_volant_archer * $bonus_preli_vs_vol;
$pvs_2 -= $reduc_preli * $pvs_1 / 100 * $degats / $res_2;
$pvs_1 = $pvs_1_new;
echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1_new = $pvs_1 - $pvs_2 / 100 * $degats / $resist_volant_archer;
	$pvs_2 -= $pvs_1 / 100 * $degats / $res_2;
	$pvs_1 = $pvs_1_new;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$rv_rs = round(max(0, $pvs_1) - max(0, $pvs_2));
$rs_rv = round(max(0, $pvs_2) - max(0, $pvs_1));

echo '<table><tbody><tr><td colspan="2"><b>Contact vol vs Contact sol</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100 + $diff_stats_volant;
$res_2 = $stats_2 / 100;
$pvs_1 = $pvs_2 = 100;
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1_new = $pvs_1 - $pvs_2 / 100 * $degats / $resist_volant;
	$pvs_2 -= $pvs_1 / 100 * $degats / $res_2;
	$pvs_1 = $pvs_1_new;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$cv_cs = round(max(0, $pvs_1) - max(0, $pvs_2));
$cs_cv = round(max(0, $pvs_2) - max(0, $pvs_1));

echo '<table><tbody><tr><td colspan="2"><b>Range vol vs Contact vol</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100 - $diff_stats_volant + $diff_stats_rv;
$res_2 = $stats_2 / 100;
$pvs_1 = $pvs_2 = 100;
// Tour préli
$pvs_2 -= $reduc_preli * $pvs_1 / 100 * $degats / $res_2 * $bonus_preli_vs_vol;
echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1_new = $pvs_1 - $bonus_contact_vol * $pvs_2 / 100 * $degats;
	$pvs_2 -= $pvs_1 / 100 * $degats / $res_2;
	$pvs_1 = $pvs_1_new;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$rv_cv = round(max(0, $pvs_1) - max(0, $pvs_2));
$cv_rv = round(max(0, $pvs_2) - max(0, $pvs_1));

echo '<table><tbody><tr><td colspan="2"><b>Range vol vs Contact sol</b></td></tr>';
$stats_1 = 100;
$stats_2 = 100 + $diff_stats_rv;
$res_2 = $stats_2 / 100;
$pvs_1 = $pvs_2 = 100;
// Tour préli
$pvs_2 -= $reduc_preli * $pvs_1 / 100 * $degats / $res_2;
echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
while ($pvs_1 > 0 && $pvs_2 > 0) {
	$pvs_1_new = $pvs_1 - $pvs_2 / 100 * $degats / $resist_volant;
	$pvs_2 -= $pvs_1 / 100 * $degats / $res_2;
	$pvs_1 = $pvs_1_new;
	echo "<tr><td>$pvs_1</td><td>$pvs_2</td></tr>";
}
echo '</tbody></table>';

$rv_cs = round(max(0, $pvs_1) - max(0, $pvs_2));
$cs_rv = round(max(0, $pvs_2) - max(0, $pvs_1));

echo '<table border="1"><tbody>';
echo '<tr><td></td><td><b>Contact sol</b></td><td><b>Range sol</b></td><td><b>Contact vol</b></td><td><b>Range vol</b></td></tr>';
echo "<tr><td><b>Contact sol</b></td><td></td><td>$cs_rs</td><td>$cs_cv</td><td>$cs_rv</td></tr>";
echo "<tr><td><b>Range sol</b></td><td>$rs_cs</td><td></td><td>$rs_cv</td><td>$rs_rv</td></tr>";
echo "<tr><td><b>Contact vol</b></td><td>$cv_cs</td><td>$cv_rs</td><td></td><td>$cv_rv</td></tr>";
echo "<tr><td><b>Range vol</b></td><td>$rv_cs</td><td>$rv_rs</td><td>$rv_cv</td><td></td></tr>";
echo '</tbody></table>';
?>