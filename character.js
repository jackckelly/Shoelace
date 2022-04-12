var drake = dragula([document.querySelector('#character-list'), document.querySelector('#problems-list'), document.querySelector('#edges-list')]);

var problemsJSON;
var edgesJSON;

window.onload = function () {
	$('#character-list').empty();
	loadProblems();
	loadEdges();
}

function loadProblems() {
	if (localStorage.getItem("problemsData") === null) {
		console.log("no problems found");
		var url = "https://www.devi-a.com/CthulhuConfidentialVis/data/problems.json";
    	// use AJAX to fetch the appropriate JSON data
	    $.ajax({
	      url: url,
	      dataType: 'json',
	      error: function(){
	        console.log('JSON FAILED for data');
	      },
	      success:function(results){
	      	problemsJSON = results;
	        parseProblems(results);
	      } 
	    }) 
	} else {
		problemsJSON = JSON.parse(localStorage.getItem("problemsData"));
		parseProblems(problemsJSON);
	}
	
}

function parseProblems(results) {
	var problemsList = document.getElementById("problems-list");
	var characterList = document.getElementById("character-list");
  	// clear the current thing in the div
	$('#problems-list').empty();
	// iterate through the JSON list of problems and display them
	for (var i = 0; i < results.length; i++) {
		var html = generateString(results[i], "problem-card");
		//if the character has this problem, add it to the character list
		if (results[i].obtained == false) {
			problemsList.insertAdjacentHTML( 'beforeend', html);
		} else { 
			characterList.insertAdjacentHTML( 'beforeend', html);
		}
	}
}

function loadEdges() {
	if (localStorage.getItem("problemsData") === null) {
		var url = "https://www.devi-a.com/CthulhuConfidentialVis/data/edges.json";
	    // use AJAX to fetch the appropriate JSON data
	    $.ajax({
	      url: url,
	      dataType: 'json',
	      error: function(){
	        console.log('JSON FAILED for data');
	      },
	      success:function(results){
	      	edgesJSON = results;
	        parseEdges(results);
	      } 
	    }) 
	} else {
		edgesJSON = JSON.parse(localStorage.getItem("edgesData"));
		parseEdges(edgesJSON);
	}
}

function parseEdges(results) {
	var edgesList = document.getElementById("edges-list");
	var characterList = document.getElementById("character-list");
  	// clear the current thing in the div
	$('#edges-list').empty();
	// iterate through the JSON list of problems and display them
	for (var i = 0; i < results.length; i++) {
		var html = generateString(results[i], "edge-card");
		if (results[i].obtained == false) {
			edgesList.insertAdjacentHTML( 'beforeend', html);
		} else {
			characterList.insertAdjacentHTML( 'beforeend', html);
		}
	}
}

function generateString(result, classType) {
	var string = "<div class='" + classType + "'><h1>" + result.id + "  |  <strong>" + result.name + "</strong> " + result.type + "</h1><p>" + result.description + "</p></div>"
	return string;
}

// on dropping a card, change the JSON to reflect that that card is now given to the player / taken from the player
drake.on('drop', function (el, target, source, sibling) {
	console.log(problemsJSON);
	// if moving out of the character list, remove the "obtained" bool from the JSON
	if ((target.id == "edges-list" && source.id == "character-list") || (target.id == "problems-list" && source.id == "character-list")) {
		problemsJSON.forEach(function(element) {
		//console.log("id is: " + element.id);
			if (el.innerHTML.includes(element.id)) {
				element.obtained = false;
				console.log(element);
			}
		});
		edgesJSON.forEach(function(element) {
		//console.log("id is: " + element.id);
			if (el.innerHTML.includes(element.id)) {
				element.obtained = false;
				console.log(element);
			}
		});
	}

	// if adding to the character list, mark as obtained
	if (target.id == "character-list") {
		problemsJSON.forEach(function(element) {
			if (el.innerHTML.includes(element.id)) {
				element.obtained = true;
				console.log(element);
			}
		});
		edgesJSON.forEach(function(element) {
			if (el.innerHTML.includes(element.id)) {
				element.obtained = true;
				console.log(element);
			}
		});
	}
	localStorage.setItem("problemsData", JSON.stringify(problemsJSON));
	localStorage.setItem("edgesData", JSON.stringify(edgesJSON));
});

function reset() {
	localStorage.clear();
	$('#character-list').empty();
	loadProblems();
	loadEdges();
}