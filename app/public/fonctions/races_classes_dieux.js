var objReq1, objReq2;
if(navigator.appName.search("Microsoft") > -1) {
	objReq1 = new ActiveXObject("Microsoft.XMLHTTP");
	objReq2 = new ActiveXObject("Microsoft.XMLHTTP");
}
else {
		objReq1 = new XMLHttpRequest();
		objReq2 = new XMLHttpRequest();
}
				
				
function race_classe() {
	objReq1.open("get", "fonctions/races_classes_dieux.php?m=race_classe&race=", true);
	objReq1.onreadystatechange = function() {
		if(objReq1.readyState == 4) {
			document.getElementById("divclasse").innerHTML = objReq1.responseText;
		}
	}
	objReq1.send(null);
}
	
	
function classe_dieu() {
	objReq2.open("get", "fonctions/races_classes_dieux.php?m=classe_dieu&classe=", true);
	objReq2.onreadystatechange = function() {
		if(objReq2.readyState == 4) {
			document.getElementById("divdieu").innerHTML = objReq2.responseText;
		}
	}
	objReq2.send(null);
}

function load_selects() {
	race_classe();
	classe_dieu();
}