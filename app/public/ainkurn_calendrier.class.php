<?php
/*
 * CODER DE GÉNIE = ainkurn
 * PRINCIPE = UNE TABLE STATIQUE AVEC TOUS LES JOURS DE L'ANNNEE
 * 2 VARIABLES PAR PROCESS : 1) BOOLAN QUI DIT SI TEL JOUR ON FAIT 2) ANNEE OU CELA A ÉTÉ FAIT POUR LA DERNIERE FOIS
 * CHAQUE JOUR ON REGARDE SI CETTE ANNEE ON A FAIT
 * SI PAS FAIT, ON FAIT
 * SI FAIT ON FAIT PAS
 * AJOUTER UN PROCESS = AJOUTER 2 VARIABLE À LA TABLE, AVEC NOMMING = 1) [boolean](index btree)nom_ma_var 2) [int(4)]nom_ma_var_last_date 
/*
 * REQUETES POUR CHANGER LA FRQUENCE :
UPDATE calendrier SET `marche_noir_normal` = false;
UPDATE calendrier SET `marche_noir_normal` = true
WHERE  MOD(id,2) = 0;
UPDATE calendrier SET `marche_noir_special` = false;
UPDATE calendrier SET `marche_noir_special` = true
WHERE  MOD(id,4) = 0;
UPDATE calendrier SET `marche_noir_crea` = false;
UPDATE calendrier SET `marche_noir_crea` = true
WHERE  MOD(id,3) = 0;

 */
class Calendrier {
	protected $field;

	/*
	 * pass the field you want to test if have to do today eg : "marche_noir_normal" OU "marche_noir_special" OU "hof"
	 */
	public function __Construct($field) {
		$this->field = $field;
	}

	/*
	 * check if something to do today according to field passed to constructor
	 * return : boolean
	 */ 
	public function isItForNow(){
			//Voyons voir si quelque chose à faire aujourd'hui
		$sql = sprintf("
				SELECT id
				FROM `calendrier` 
				WHERE days = extract(day FROM NOW()) AND 
				month = extract(month FROM NOW()) AND 
				( %s_last_year < extract(year FROM NOW()) OR %s_last_year is null ) AND 
				%s IS TRUE
				", $this->field, $this->field, $this->field);
			$req = mysql_query($sql) or die (mysql_error());	
			$dat = mysql_fetch_row($req);
			$id = $dat[0];
			if(!isset($id)){//Rien pour ajourd'hui ou plus rien si déja fait
				return false;
			}else{
				$sql = sprintf("
					UPDATE calendrier
					SET %s_last_year = extract(year FROM NOW())
					WHERE id = %d
					", $this->field, $id );
				$req = mysql_query($sql) or die (mysql_error());
				return true;
			}
	
	}
}
/* TESTS
$_SESSION['serveur'] = "4";
include("connect.php");
echo "chiottes";

//test
$id = new Calendrier("marche_noir_special");
if( $id->isItForNow() ){
echo "a faire";
}else{
echo "pas a faire";

}
 */
?>
