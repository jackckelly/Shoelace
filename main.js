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

/*
 ********************************
 * Handles clicking link in the nav bar
 * 
 ******************************** 
 */
document.getElementById('clues_link').onclick = loadClues;
document.getElementById('scenes_link').onclick = loadAll;
document.getElementById('player_link').onclick = loadPlayerSheet;
document.getElementById('edges_link').onclick = loadEdges;
document.getElementById('problems_link').onclick = loadProblems;
document.getElementById('characters_link').onclick = loadCharacters;

loadAll()

function loadAll() {
  currentSceneText = []; 
  currentSceneClues = [];
  currentSceneCluesKnown = [];
  clear_output_area();
  loadScene();
  loadGraph();
}

function loadScene() {
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 5; i < 6; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < currentSceneCluesKnown.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 6; i < currentSceneText.length; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene="fullers_electrical_repair") {
    for (var i = 0; i < currentSceneText.length; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < currentSceneClues.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  }
}

function renderClue(clue, known) {
  var checkbox;
      if (known == "true") {
        checkbox = "<input type='checkbox' name='clue' checked>";
      } else {
        checkbox = "<input type='checkbox' name='clue'>";
      }
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + clue + "</p>";
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


function loadClues() {
  allClues = [];
  allCluesKnown = [];
  clear_output_area();
  var get_all_bindings = function(answers) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Clues</h2>";
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

function loadGraph() {
  var graphDefinition = "graph TD\nsadies_sob_story[<font color='white' class='node'>Sadie's Sob Story</font>]\nfullers_electrical_repair[Fuller's Electrical Repair]\ncharming_charlie[Charming Charlie]\nthe_psychical_investigator[The Psychical Investigator]\nthe_peculiar_death_of_myron_fink[The Peculiar Death of Myron Fink]\nfuller_himself[Fuller Himself]\ntemple_of_nepthys[Temple of Nepthys]\nthe_leg_breaker[The Leg Breaker]\ncharlie_comes_clean[Charlie Comes Clean]\nwhat_the_cops_know[What the Cops Know]\ninterviewing_the_neighbors[Interviewing the Neighbors]\ngeorges_apartment[George's Apartment]\naddie_needs_answers[Addie Needs Answers]\nmen_gone_missing[Men Gone Missing]\nbreaking_into_fullers[Breaking Into Fuller's]\nthe_thing_in_the_morgue[The Thing in the Morgue]\nquestioning_pearl[Questioning Pearl]\nmiracle_machine[Miracle Machine]\ngoing_on_the_grid[Going on the Grid]\nsadie_and_the_scoop[Sadie and the Scoop]\nsadies_sob_story --> fullers_electrical_repair\nsadies_sob_story --> the_peculiar_death_of_myron_fink\nsadies_sob_story --> what_the_cops_know\nfullers_electrical_repair --> fuller_himself\nfullers_electrical_repair --> charming_charlie\ncharming_charlie --> the_peculiar_death_of_myron_fink\ncharming_charlie --> fuller_himself\ncharming_charlie --> the_leg_breaker\ncharming_charlie --> temple_of_nepthys\nthe_psychical_investigator --> temple_of_nepthys\nthe_peculiar_death_of_myron_fink --> what_the_cops_know\nthe_peculiar_death_of_myron_fink --> interviewing_the_neighbors\nfuller_himself --> charming_charlie\nfuller_himself --> the_psychical_investigator\nfuller_himself --> temple_of_nepthys\nfuller_himself --> what_the_cops_know\nfuller_himself --> georges_apartment\ntemple_of_nepthys --> the_leg_breaker\ntemple_of_nepthys --> miracle_machine\ntemple_of_nepthys --> addie_needs_answers\nthe_leg_breaker --> charlie_comes_clean\nthe_leg_breaker --> breaking_into_fullers\ncharlie_comes_clean --> breaking_into_fullers\nwhat_the_cops_know --> the_peculiar_death_of_myron_fink\nwhat_the_cops_know --> the_thing_in_the_morgue\ninterviewing_the_neighbors --> georges_apartment\ngeorges_apartment --> questioning_pearl\ngeorges_apartment --> the_psychical_investigator\naddie_needs_answers --> men_gone_missing\nmen_gone_missing --> breaking_into_fullers\nbreaking_into_fullers --> sadie_and_the_scoop\nquestioning_pearl --> miracle_machine\nmiracle_machine --> going_on_the_grid\ngoing_on_the_grid --> breaking_into_fullers\n\nclassDef default fill:#333,stroke:#fff,color:white,stroke-width:4px;classDef completed fill:#f9f,stroke:#333,stroke-width:4px;";
  parseGraph(graphDefinition);
}

function parseGraph(graphDefinition) {
  $('#graphInfo').empty();
  var element = document.querySelector("#graphInfo");

  var insertSvg = function(svgCode, bindFunctions){
    element.innerHTML = svgCode;
  };
  mermaid.mermaidAPI.render('graphInfo', graphDefinition, insertSvg);
}

// When you click the node, load the appropriate page
$(document).on("click", "g[class='nodes'] g[class='node']", function () {
  currentScene = $(this).attr('id');
  var text = $(this).find('foreignObject div').html();
  loadAll(); 
});


// When you click the node, load the appropriate page
$(document).on("click", "g[class='nodes'] g[class='node completed']", function () {
  currentScene = $(this).attr('id');
  console.log("Current scene is " + currentScene);
  var text = $(this).find('foreignObject div').html();
  loadAll(); 
});

function loadPlayerSheet() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h1>Player Sheet</h1>";
  loadPlayerEdges(); 
}

function loadPlayerEdges() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Edges</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        var result_description = answer.lookup("Description");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>" + result_name + "</strong> -- " + result_description + "</p>";
        }
    }
    bindings = [];
    loadPlayerProblems();
  }

  session.query("player_edge(Edge), edge_name(Edge, Name), edge_description(Edge, Description).");
  session.answers(get_callback(get_all_bindings));
}

function loadPlayerProblems() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Problems</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        var result_description = answer.lookup("Description");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>" + result_name + "</strong> -- " + result_description + "</p>";
        }
    }
    bindings = [];
    loadPlayerInvestigativeAbilities();
  }

  session.query("player_problem(Problem), problem_name(Problem, Name), problem_description(Problem, Description).");
  session.answers(get_callback(get_all_bindings));
}

function loadPlayerInvestigativeAbilities() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Investigative Abilities</h2>";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + result_name + "</p>";
        }
    }
    bindings = []; 
    loadPlayerGeneralAbilities();
  }
  
  session.query("player_investigative_ability(Ability), investigative_ability(Ability, Name, Description, Type).");
  session.answers(get_callback(get_all_bindings));
}

function loadPlayerGeneralAbilities() {
  var get_all_bindings = function(answers) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>General Abilities</h2>";
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + result_name + "</p>";
        }
    }
    bindings = []; 
    loadPlayerPushes();
  }
  
  session.query("player_general_ability(Ability, Value), general_ability(Ability, Name, Description, Type).");
  session.answers(get_callback(get_all_bindings));
}

function loadPlayerPushes() {
  var binding = function(answer) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>Player Pushes: </strong>" + answer.lookup("Value"); + "</p>";
  }
  
  session.query("player_pushes(Value).");
  session.answer(binding);
}

function loadEdges() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Edges</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        var result_description = answer.lookup("Description");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>" + result_name + "</strong> -- " + result_description + "</p>";
        }
    }
    bindings = [];
  }
  session.query("edge_name(Edge, Name), edge_description(Edge, Description).");
  session.answers(get_callback(get_all_bindings));
}

function loadProblems() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Problems</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        var result_description = answer.lookup("Description");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>" + result_name + "</strong> -- " + result_description + "</p>";
        }
    }
    bindings = [];
  }
  session.query("problem_name(Problem, Name), problem_description(Problem, Description).");
  session.answers(get_callback(get_all_bindings));
}

function loadCharacters() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Characters</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Name");
        //var result_description = answer.lookup("Description");
        if (result_name !== null){
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>" + result_name + "</strong></p>";
        }
    }
    bindings = [];
  }
  session.query("character_name(Character, Name).");
  session.answers(get_callback(get_all_bindings));
}