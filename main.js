mermaid.initialize({
  startOnLoad: true,
  securityLevel: 'loose',
});

var currentScene = "sadies_sob_story";
var binding = "";

var currentSceneText = []; 
var currentSceneClues = [];
var currentSceneCluesKnown = [];
var allClues = [];
var allCluesKnown = [];

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

loadAll()

window.onload = function () {
  loadAll();
  
}

function loadAll() {
  currentSceneText = []; 
  currentSceneClues = [];
  currentSceneCluesKnown = [];
  clear_output_area();
  loadSceneName();
  loadSceneType();
  loadSceneText();
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
  if (currentScene=="sadies_sob_story"){
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
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
  var clueText = this.nextSibling.data;
  var binding = function(answer) {
    var tag = answer.lookup("Clue");
  }

  var statement = "clue_known(Clue, PrevKnown),clue_description(Clue, " + clueText + "), retract( clue_known(Clue, PrevKnown) ), asserta( clue_known(Clue, " + checked + ")).";
  session.query(statement);
  session.answer(binding);
});

// handles clicking link to show all clues
var el = document.getElementById('clues_link');
el.onclick = loadClues;

// handles clicking link to show all clues
var el2 = document.getElementById('scenes_link');
el2.onclick = loadAll;

function loadClues() {
  allClues = [];
  allCluesKnown = [];
  clear_output_area();
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Description");
        var clue_known = answer.lookup("Known");
        if (result_name !== null){
          allClues.push(result_name);
          allCluesKnown.push(clue_known)
        }
    }
    renderClues();
  }
  
  session.query("clue_description(Clue, Description), clue_known(Clue, Known).");
  session.answers(get_callback(get_all_bindings));
}

function renderClues() {
  for (var i = 0; i < allClues.length; i++) {
    var checkbox;
      var clue_known = allCluesKnown[i];
      if (clue_known == "true") {
        checkbox = "<input type='checkbox' name='clue' checked>";
      } else {
        checkbox = "<input type='checkbox' name='clue'>";
      }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + allClues[i] + "</p>";
  } 
}