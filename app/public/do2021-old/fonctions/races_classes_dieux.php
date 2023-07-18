<?php

$mode = urldecode($_GET['m']);
//$race = urldecode($_GET['race']);
//$classe = urldecode($_GET['classe']);

include "../inclus/classes_dieux.php";

switch($mode)
{
	case 'race_classe' :
	
		$str = '<select name="classe" id="classe" style="width: 120px;">';
		$str .= '<option value="Choisir"> Choisir... </option>';
		/*
		if($race != 'Choisir')
		{
			include "../inclus/races_classes.php";
			while(list($cle,$value) = each($rc[$race]))
				$str .= '<option value="'.htmlentities($cle).'">'.htmlentities($cle).'</option>';
		}
		*/
		foreach ($ce AS $key => $value) {
			$str .= '<option value="'.htmlentities($key).'">'.htmlentities($key).'</option>';
		}
		$str .= '</select>';
		echo $str;
		
	break;
	case 'classe_dieu' :
	
		$str = '<select name="dieu" id="dieu" style="width: 120px;">';
		$str .= '<option value="Choisir"> Choisir... </option>';
		/*
		if($classe != 'Choisir')
		{
			include "../inclus/classes_dieux.php";	
			while(list($cle,$value) = each($cd[$classe]))
				$str .= '<option value="'.htmlentities($cle).'">'.htmlentities($cle).'</option>';
		}
		*/
		foreach ($dd AS $key => $value) {
			$str .= '<option value="'.htmlentities($key).'">'.htmlentities($value).'</option>';
		}
		$str .= '</select>';
		echo $str;
		
	break;
	default :
	
		echo 'Invalide...';
		
}

?>