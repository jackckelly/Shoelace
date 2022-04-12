mermaid.initialize({
  startOnLoad: true,
  securityLevel: 'loose',
});

var currentScene = "sadies_sob_story";
var binding = "";

var currentSceneText = []; 
var currentSceneClues = [];
var currentSceneCluesKnown = [];

// Create the prolog sesssion and load mini_prom_week_example.prolog.
session = pl.create();
session.consult("database.prolog");

// Array of variable bindings, one per answer, returned by prolog query
var bindings = [];

/*
 * Returns a callback function to pass to session.answers(). 
 * The parameter is the function for the callback to call (with the bindings as parameter)
 * when prolog has found all the answers. 
*/
function get_callback(funcWhenDone) 
{
  var callbackFunc = function(answer) 
  {
    if (answer == false) 
    {
      // We're done finding answers. Execute funcWhenDone with the bindings.
      funcWhenDone(bindings);
    }
    else 
    {
      // We've gotten another non-false answer - add it to the bindings.
      bindings.push(answer);
    }
  }

  return callbackFunc;
} 


window.onload = function () {
  //loadSceneGraph();
  clear_output_area();
  loadSceneName();
  loadSceneType();
  loadSceneText();
  //loadSceneClues();
}

function clear_output_area() {
  sceneInfo.innerHTML = "";
  bindings = [];
}

// Displays the name of the current scene
function loadSceneName() {
  var binding = function(answer) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>" + answer.lookup("Name");  + "</h2>";
  }
  
  session.query("scene_name(" + currentScene + ", Name).");
  session.answer(binding);
}


// Displays the name of the current scene
function loadSceneType() {
  var binding = function(answer) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<em>" + answer.lookup("Type");  + "</em><br>";
  }
  
  session.query("scene_type(" + currentScene + ", Type).");
  session.answer(binding);
}

// Displays a list of all of the clues in the current scene 
function loadSceneText() {
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Text");
        currentSceneText.push(result_name);
        //sceneInfo.innerHTML = sceneInfo.innerHTML + result_name + "<br>";
    }
    loadSceneClues();
  }
  
  session.query("scene_text(" + currentScene + ", Text).");
  //session.answers(show(binding), 1000);
  session.answers(get_callback(get_all_bindings));
}


// Displays a list of all of the clues in the current scene 
function loadSceneClues() {
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Description");
        var clue_known = answer.lookup("Known");
        //console.log(result_name);
        if (result_name !== null){
          currentSceneClues.push(result_name);
          currentSceneCluesKnown.push(clue_known)
        }
    }
    renderScene();
  }
  
  session.query("scene_clues(" + currentScene + ", Clue), clue_description(Clue, Description), clue_known(Clue, Known).");
  session.answers(get_callback(get_all_bindings));
}

function renderScene() {
  console.log(currentSceneText)
  if (currentScene=="sadies_sob_story"){
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    console.log(currentSceneClues);
    for (var i = 0; i < 4; i++) {
      var checkbox;
      var clue_known = currentSceneCluesKnown[i];
      if (clue_known == "true") {
        checkbox = "<input type='checkbox' name='clue' checked>";
      } else {
        checkbox = "<input type='checkbox' name='clue'>";
      }
      //scene_output_area.innerHTML = scene_output_area.innerHTML + "<p>" + checkbox + clue_number + ") " + clue_name.replace(/^["'](.+(?=["']$))["']$/, '$1') + "</p>";
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + currentSceneClues[i] + "</p>";
    }
  }
}


// When you click the checkbox for a clue, have this update the result in the database
$(document).on("click", "input[name='clue']", function () {
  var checked = $(this).prop('checked');
  var clueText = this.nextSibling.data//.trim().substring(3);
  console.log(clueText);
  var change_clue_known = function(binding) {
  }

  var statement = "change_clue_known(Clue," + clueText + ", " + checked + ").";
  session.query(statement);
  session.answer(change_clue_known);
});
