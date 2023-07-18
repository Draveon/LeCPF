function debutConseiller()
{
	window.document.getElementById('conseiller').style.display = 'inline';
	window.document.getElementById('conseiller').style.visibility = 'visible';
	window.document.getElementById('conseiller').innerHTML = 'Bonjour sire, je suis votre conseiller diplomatique.<br />En tant que tel, je dois vous informer que vous pouvez utiliser certaines <span onClick="conseillerBBcode();" style="text-decoration:underline;">mises en forme</span> de votre texte et demander à votre scribe de retranscrire <br /><span onClick="conseillerSmilies();" style="text-decoration:underline;">l\'expression de votre visage</span>.<br /><br />Enfin, vous pouvez <span style="text-decoration:underline;" onClick="insererTag(\'\', \'\', \'message\', \'citer\');" >citer un texte</span>,<br />renvoyer votre interlocuteur vers un <span style="text-decoration:underline;" onClick="insererTag(\'\', \'\', \'message\', \'lier\');" >autre texte</span> ou<br />choisir votre <a href="http://www.destinee-online.com/messagerie_palette.php" style="color:black;text-decoration:underline;" onclick="NewWindow(this.href, \'name\',\'383\',\'370\',\'yes\');return false;" >couleur d\'écriture</a>.'
}

function finConseiller()
{
	window.document.getElementById('conseiller').style.display = 'none';
}

function conseillerBBcode()
{
	window.document.getElementById('conseiller').style.display = 'inline';
	window.document.getElementById('conseiller').style.visibility = 'visible';
	window.document.getElementById('conseiller').innerHTML = 'Vous pouvez utiliser différents styles :<br /> - <span style="font-style:italic;" onClick="insererTag(\'[i]\', \'[/i]\', \'message\');" >L\'italique</span><br /> - <span style="font-weight:bold;" onClick="insererTag(\'[b]\', \'[/b]\', \'message\');" >Le gras</span><br /> - <span style="text-decoration:underline;" onClick="insererTag(\'[u]\', \'[/u]\', \'message\');" >Le souligné</span><br /><br /><span onClick="debutConseiller();" style="text-decoration:underline;">Vous désirez connaître autre chose ?</span>';
}

function conseillerSmilies()
{
	window.document.getElementById('conseiller').style.display = 'inline';
	window.document.getElementById('conseiller').style.visibility = 'visible';
	window.document.getElementById('conseiller').innerHTML = 'Votre scribe sait dessiner les expressions suivantes :<p><table><tr style="height:20px;"><td style="width:70px;text-align:center;"><img src="images/smilies/icon_biggrin.gif" onClick="insererTag(\':D\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_smile.gif" onClick="insererTag(\':)\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_sad.gif" onClick="insererTag(\':(\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_surprised.gif" onClick="insererTag(\':o\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_eek.gif" onClick="insererTag(\':shock:\', \'\', \'message\');" /></td></tr><tr style="height:20px;"><td style="width:70px;text-align:center;"><img src="images/smilies/icon_question.gif" onClick="insererTag(\':?:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_confused.gif" onClick="insererTag(\':?\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_cool.gif" onClick="insererTag(\'8)\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_lol.gif" onClick="insererTag(\':lol:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_mad.gif" onClick="insererTag(\':x\', \'\', \'message\');" /></tr><tr style="height:20px;"><td style="width:70px;text-align:center;"><img src="images/smilies/icon_razz.gif" onClick="insererTag(\':P\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_redface.gif" onClick="insererTag(\':oops:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_cry.gif" onClick="insererTag(\':cry:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_evil.gif" onClick="insererTag(\':evil:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_twisted.gif" onClick="insererTag(\':twisted:\', \'\', \'message\');" /></td></tr><tr style="height:20px;"><td style="width:70px;text-align:center;"><img src="images/smilies/icon_rolleyes.gif" onClick="insererTag(\':roll:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_wink.gif" onClick="insererTag(\':wink:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_exclaim.gif" onClick="insererTag(\':!:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_idea.gif" onClick="insererTag(\':idea:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_arrow.gif" onClick="insererTag(\':arrow:\', \'\', \'message\');" /></td></tr><tr style="height:20px;"><td style="width:70px;text-align:center;"><img src="images/smilies/icon_neutral.gif" onClick="insererTag(\':|\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_mrgreen.gif" onClick="insererTag(\':mrgreen:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/fresse.png" onClick="insererTag(\':face:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/icon_tongue.png" onClick="insererTag(\':tongue:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/suspect.gif" onClick="insererTag(\':suspect:\', \'\', \'message\');" /></td></tr><tr style="height:20px;"><td style="width:70px;text-align:center;"><img src="images/smilies/icon_cheers.png" onClick="insererTag(\':cheers:\', \'\', \'message\');" /></td><td style="width:70px;text-align:center;"><img src="images/smilies/lol.gif" onClick="insererTag(\':lol!:\', \'\', \'message\');" /></td></tr></table></p><span onClick="debutConseiller();" style="text-decoration:underline;">Vous désirez connaître autre chose ?</span>';
}

function maintenirConseiller()
{
	window.document.getElementById('conseiller').style.display = 'inline';
	window.document.getElementById('conseiller').style.visibility = 'visible';
}

function insererTag(startTag, endTag, textareaId, tagType) {
        var field  = document.getElementById(textareaId); 
        var scroll = field.scrollTop;
        field.focus();
        
        /* === Partie 1 : on récupère la sélection === */
        if (window.ActiveXObject) {
                var textRange = document.selection.createRange();            
                var currentSelection = textRange.text;
        } else {
                var startSelection   = field.value.substring(0, field.selectionStart);
                var currentSelection = field.value.substring(field.selectionStart, field.selectionEnd);
                var endSelection     = field.value.substring(field.selectionEnd);               
        }
		
		/* === Partie 2 : traitement du tagType === */
		switch(tagType)
		{
			case "citer" :
				if(currentSelection) { // Le joueur a sélectionné la citation
					var auteur = prompt("Qui est l'auteur de cette citation ?") || "";
					startTag = "[citer auteur=\""+auteur+"\"]";
					endTag = "[/citer]";
				}
				else {
					var auteur = prompt("Qui est l'auteur de cette citation ?") || "";
					var citation = prompt("Quelle est la citation ?") || "";
					startTag = "[citer auteur=\""+auteur+"\"]";
					currentSelection = citation;
					endTag = "[/citer]";
				}
			break;
			case "lier" :
				if(currentSelection) {
					if(currentSelection.indexOf("http://") == 0 || currentSelection.indexOf("https://") == 0 || currentSelection.indexOf("www.") == 0) { // C'est lien qui est sélectionné
						var label = prompt("Quel libellé souhaitez-vous pour votre lien ?") || "";
						startTag = "[lien cible=\""+currentSelection+"\"]";
						currentSelection = label;
						endTag = "[/lien]";
					}
					else { // C'est le libellé qu'on a sélectionné
						var lien = prompt("Quelle est l'adresse de votre lien ?") || "";
						startTag = "[lien cible=\""+lien+"\"]";
						endTag = "[/lien]";
					}
				}
				else {
					var label = prompt("Quel libellé souhaitez-vous pour votre lien ?") || "";
					var lien = prompt("Quelle est l'adresse de votre lien ?") || "";
					startTag = "[lien cible=\""+lien+"\"]";
					currentSelection = label;
					endTag = "[/lien]";
				}
		}
        
        /* === Partie 3 : on insère le tout === */
        if (window.ActiveXObject) {
                textRange.text = startTag + currentSelection + endTag;
                textRange.moveStart("character", -endTag.length - currentSelection.length);
                textRange.moveEnd("character", -endTag.length);
                textRange.select();     
        } else {
                field.value = startSelection + startTag + currentSelection + endTag + endSelection;
                field.focus();
                field.setSelectionRange(startSelection.length + startTag.length, startSelection.length + startTag.length + currentSelection.length);
        } 

        field.scrollTop = scroll;     
}
