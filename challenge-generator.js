document.getElementById("generate").onclick = function () { 
	generateResult();
};

function generateResult() {
	var result = document.getElementById("result");
  	// clear the current thing in the div
  	$('#result').empty();

  	// get the vars you need from the form above 
  	var selectType = document.getElementById('type');
	var type = selectType.options[selectType.selectedIndex].value;
	var selectSignificance = document.getElementById('significance');
	var value = selectSignificance.options[selectSignificance.selectedIndex].value;
	var advance = value.charAt(0);
	var holdTop = value.charAt(1);
	var holdBottom = value.charAt(2); 
	var setback = value.charAt(3);

  	// print out the title scene and type
  	result.insertAdjacentHTML( 'beforeend', "<h1>Challenge:</h1>");
  	result.insertAdjacentHTML( 'beforeend', "<p>Type: " + type + "</p>");
  	result.insertAdjacentHTML( 'beforeend', "<p>Advance " +  advance + " or more:</p>");
  	result.insertAdjacentHTML( 'beforeend', "<p>Hold " +  holdBottom +"-" + holdTop + ":</p>");
  	result.insertAdjacentHTML( 'beforeend', "<p>Setback " + setback + " or less: Gain penalty, get a -1 to a future " + type + " check and then discard.</p>");
}