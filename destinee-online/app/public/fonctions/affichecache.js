// this function show an element and hide another

function swapbonus (d1, d2)
{
	document.getElementById(d1).style.display = 'none';
	document.getElementById(d2).style.display = 'block';
}

function swapMultiple (d1, d2)
{
	for (var j=0; j<d1.length; j++)
	{
		document.getElementById(d1[j]).style.display = 'none';
	}
	for (var j=0; j<d2.length; j++)
	{
		document.getElementById(d2[j]).style.display = 'block';
	}
}
