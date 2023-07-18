/*
**	Fonction d'obtention d'un objet XHR
**	Sert pour les codes aJax ='D
**	@ param : none
**	@ return : objet XHR
**
*/
function getXMLHttpRequest() {
	var xhr = null;
	
	if (window.XMLHttpRequest || window.ActiveXObject) {
		if (window.ActiveXObject) {
			try {
				xhr = new ActiveXObject("Msxml2.XMLHTTP");
			} catch(e) {
				xhr = new ActiveXObject("Microsoft.XMLHTTP");
			}
		} else {
			xhr = new XMLHttpRequest(); 
		}
	} else {
		alert("Votre navigateur ne supporte pas l'objet XMLHTTPRequest...");
		return null;
	}
	
	return xhr;
}

/*
**	Fonction d'effection des requêtes aJax
**	@ param : fonction de callback à laquelle on transmettra les données de l'URL
**	@ return : none
**
*/
function aJaxRequest(url, callback) {
	var xhr = getXMLHttpRequest();
	
	xhr.onreadystatechange = function() {
		if (xhr.readyState == 4 && (xhr.status == 200 || xhr.status == 0)) {
			callback(xhr.responseText);
		}
	};
	
	xhr.open("GET", url, true);
	xhr.send(null);
}

function afficherBox() {
	document.getElementById('lightbox').style.display='none';
    document.getElementById('filter').style.display='none';
}

function masquerBox() {
	document.getElementById('lightbox').style.display='block';
    document.getElementById('filter').style.display='block';
}

function changerBox(donnees) {
	document.getElementById('contenubox').innerHTML = donnees;
}

function agrandirCoffre(donnees) {
	document.getElementById('coffre_artisan').innerHTML = donnees;
}