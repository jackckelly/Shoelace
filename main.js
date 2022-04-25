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
var allScenes = [];
var challengeResult;
var challengeTag;
var graphDefinition = "graph TD\nsadies_sob_story[<font color='white' class='node'>Sadie's Sob Story</font>]\nfullers_electrical_repair[Fuller's Electrical Repair]\ncharming_charlie[Charming Charlie]\nthe_psychical_investigator[The Psychical Investigator]\nthe_peculiar_death_of_myron_fink[The Peculiar Death of Myron Fink]\nfuller_himself[Fuller Himself]\ntemple_of_nephthys[Temple of Nephthys]\nthe_leg_breaker[The Leg Breaker]\ncharlie_comes_clean[Charlie Comes Clean]\nwhat_the_cops_know[What the Cops Know]\ninterviewing_the_neighbors[Interviewing the Neighbors]\ngeorges_apartment[George's Apartment]\naddie_needs_answers[Addie Needs Answers]\nmen_gone_missing[Men Gone Missing]\nbreaking_into_fullers[Breaking Into Fuller's]\nthe_thing_in_the_morgue[The Thing in the Morgue]\nquestioning_pearl[Questioning Pearl]\nmiracle_machine[Miracle Machine]\ngoing_on_the_grid[Going on the Grid]\nsadie_and_the_scoop[Sadie and the Scoop]\nsadies_sob_story --> fullers_electrical_repair\nsadies_sob_story --> the_peculiar_death_of_myron_fink\nsadies_sob_story --> what_the_cops_know\nfullers_electrical_repair --> fuller_himself\nfullers_electrical_repair --> charming_charlie\ncharming_charlie --> the_peculiar_death_of_myron_fink\ncharming_charlie --> fuller_himself\ncharming_charlie --> the_leg_breaker\ncharming_charlie --> temple_of_nephthys\nthe_psychical_investigator --> temple_of_nephthys\nthe_peculiar_death_of_myron_fink --> what_the_cops_know\nthe_peculiar_death_of_myron_fink --> interviewing_the_neighbors\nfuller_himself --> charming_charlie\nfuller_himself --> the_psychical_investigator\nfuller_himself --> temple_of_nephthys\nfuller_himself --> what_the_cops_know\nfuller_himself --> georges_apartment\ntemple_of_nephthys --> the_leg_breaker\ntemple_of_nephthys --> miracle_machine\ntemple_of_nephthys --> addie_needs_answers\nthe_leg_breaker --> charlie_comes_clean\nthe_leg_breaker --> breaking_into_fullers\ncharlie_comes_clean --> breaking_into_fullers\nwhat_the_cops_know --> the_peculiar_death_of_myron_fink\nwhat_the_cops_know --> the_thing_in_the_morgue\ninterviewing_the_neighbors --> georges_apartment\ngeorges_apartment --> questioning_pearl\ngeorges_apartment --> the_psychical_investigator\naddie_needs_answers --> men_gone_missing\nmen_gone_missing --> breaking_into_fullers\nbreaking_into_fullers --> sadie_and_the_scoop\nquestioning_pearl --> miracle_machine\nmiracle_machine --> going_on_the_grid\ngoing_on_the_grid --> breaking_into_fullers\n\nclassDef default fill:#333,stroke:#fff,color:white,stroke-width:4px;classDef completed fill:#777,stroke:#333,stroke-width:4px;";

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
 document.getElementById('suggestions_link').onclick = loadSuggestions;
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
  loadSceneCompleted(); 
  loadSceneLeadIns();
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

function loadSceneCompleted() {
  var binding = function(answer) {
    var visited = answer.lookup("Visited");
    if (visited == "true") {
      checkbox = "<input type='checkbox' name='scene' checked>";
    } else {
      checkbox = "<input type='checkbox' name='scene'>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox  + " Visited</p>";
  }
  
  session.query("scene_visited(" + currentScene + ", Visited).");
  session.answer(binding);
}

function loadSceneType() {
  var binding = function(answer) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<em>" + answer.lookup("Type");  + "</em><br>";
  }
  
  session.query("scene_type(" + currentScene + ", Type).");
  session.answer(binding);
}

function loadSceneLeadIns() {
  var get_all_bindings = function(answers) {
    if (answers.length > 0) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Lead-Ins</h3>";
    }
    
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_tag = answer.lookup("OtherScene");
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<a onclick='setScene(" + result_tag + ")'; href='#'>" + result_name + "</a><br>";
    }
    bindings = [];
    loadSceneLeadOuts();
  }

  session.query("scene_lead_outs( OtherScene, " + currentScene + "), scene_name(OtherScene, Name).");
  session.answers(get_callback(get_all_bindings));
}

function loadSceneLeadOuts() {
  var get_all_bindings = function(answers) {
    if (answers.length > 0) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Lead-Outs</h3>";
    }
    
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_tag = answer.lookup("OtherScene");
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<a onclick='setScene(" + result_tag + ")'; href='#'>" + result_name + "</a><br>";
    }
    bindings = [];
    loadSceneText();
  }

  session.query("scene_lead_ins( OtherScene, " + currentScene + "), scene_name(OtherScene, Name).");
  session.answers(get_callback(get_all_bindings));
}

function setScene(tag) {
  currentScene = tag.id; 
  loadAll();
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
  } else if (currentScene == "fullers_electrical_repair") {
    for (var i = 0; i < currentSceneText.length; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < currentSceneClues.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  } else if (currentScene == "fuller_himself") {
    for (var i = 0; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < currentSceneClues.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 4; i < currentSceneText.length; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("other_peoples_mail"); 
  } else if (currentScene == "charming_charlie") {
    renderChallenge("focus_on_the_story_not_the_smile"); 
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 3; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "what_the_cops_know") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 3; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 3; i < 6; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  } else if (currentScene == "the_peculiar_death_of_myron_fink") {
    for (var i = 0; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Fink's Apartment</h3>"; 
    for (var i = 4; i < 6; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 6; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < 7; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 7; i < 8; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "interviewing_the_neighbors") {
    for (var i = 0; i < 1; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Minnie Boyer</h3>";
    for (var i = 1; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>August Williams</h3>";
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 8; i < 12; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Violet Blake</h3>";
    for (var i = 3; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 12; i < 15; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  } else if (currentScene == "georges_apartment") {
    for (var i = 0; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("catching_the_would_be_intruder"); 
    renderChallenge("hang_onto_the_clue"); 
  } else if (currentScene == "questioning_pearl") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "the_psychical_investigator") {
    for (var i = 0; i < 1; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>The Letter</h3>";
    for (var i = 1; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Hereward Carrington</h3>";
    for (var i = 3; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 5; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 4; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 5; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  } else if (currentScene == "temple_of_nephthys") {
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Madame Isis Neferi</h3>";
    for (var i = 5; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 7; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 7; i < 8; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Communion with the Dead</h3>";
    for (var i = 8; i < 11; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>The Girl from the Apartment</h3>";
    for (var i = 11; i < 13; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "the_thing_in_the_morgue") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("getting_into_the_morgue");
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Viewing the Body</h3>";
    for (var i = 2; i < 6; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("seeing_finks_remains");
    for (var i = 6; i < 8; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Chewed Out</h3>";
    for (var i = 8; i < 9; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 9; i < 10; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "miracle_machine") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 3; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Catching Fuller's Eye</h3>";
    for (var i = 3; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("cash_in_hand");
  } else if (currentScene == "the_leg_breaker") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("spotting_marty_the_mouth");
    renderChallenge("pinning_marty");
    renderChallenge("jumped_by_marty");
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Marty Runs His Mouth</h3>";
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 9; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 3; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "going_on_the_grid") {
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 5; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  } else if (currentScene == "men_gone_missing") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 5; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
    for (var i = 2; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 5; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]);
    }
  } else if (currentScene == "charlie_comes_clean") {
    for (var i = 0; i < 6; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "breaking_into_fullers") {
    for (var i = 0; i < 1; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("getting_past_the_guards");
    for (var i = 1; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("watching_the_devourer");
    for (var i = 5; i < 6; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("body_in_the_chair");
    for (var i = 6; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("dodge_the_chloroform");
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Fuller Fesses Up</h3>";
    for (var i = 7; i < 12; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Tied to the Chair</h3>";
    for (var i = 12; i < 14; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderChallenge("they_came_from_beyond");
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Confronting the 'Pet'</h3>";
    for (var i = 14; i < 16; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "sadie_and_the_scoop") {
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
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
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<p class='hangingindent'>" + checkbox + clue + "</p>";
}

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
      var scene = answer.lookup("Name");
      if (result_name !== null){
        allClues.push(result_name);
        allCluesKnown.push(clue_known);
        allScenes.push(scene);
      }
    }
    renderClues();
  }
  
  session.query("clue_description(Clue, Description), clue_known(Clue, Known), scene_clues(Scene, Clue), scene_name(Scene, Name).");
  session.answers(get_callback(get_all_bindings));
}

function renderChallenge(tag) {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = "<div class='challenge'>"; 
      challengeResult = challengeResult + "<h3>" + answer.lookup("Name") + "</h3>"; 
      challengeResult = challengeResult + "<p><em>" + answer.lookup("Type") + "</em></p>";
    }
    printChallengeExtraDescription(); 
  }
  challengeTag = tag;
  session.query("challenge_name(" + challengeTag + ", Name), challenge_type(" + challengeTag + ", Type).");
  session.answer(binding);
}

function printChallengeExtraDescription() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p>" + answer.lookup("Description") + "</p>";
    }
    printChallengeAdvantage();
  }

  session.query("challenge_extra_description(" + challengeTag + ", Description).");
  session.answer(binding);
}

function printChallengeAdvantage() {
  var binding = function(answer) {
    if (answer !== false) {

      challengeResult = challengeResult + "<p><strong>Advance " + answer.lookup("AdvanceValue") + "+:</strong> " + answer.lookup("AdvanceDescription") + "</p>";
    }
    printChallengeHold();
  }

  session.query("challenge_advance(" + challengeTag + ", AdvanceValue, AdvanceDescription).");
  session.answer(binding);
}

function printChallengeHold() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p><strong>Hold " + answer.lookup("HoldHighValue") + "-" + answer.lookup("HoldLowValue") + ":</strong>" + answer.lookup("HoldDescription") + "</p>";
    }
    printChallengeSetback();
  }

  session.query("challenge_hold(" + challengeTag + ", HoldHighValue, HoldLowValue, HoldDescription).");
  session.answer(binding);
}

function printChallengeSetback() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p><strong>Setback: </strong>" + answer.lookup("SetbackDescription") + "</p>"; 
    }
    printChallengeExtraProblem();
  }

  session.query("challenge_setback(" + challengeTag + ", SetbackDescription).");
  session.answer(binding);
}

function printChallengeExtraProblem() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p><strong>Extra Problem: </strong>" + answer.lookup("Name") + "</p>"; 
    }
    renderChallengeText();
  }

  session.query("challenge_extra_problem(" + challengeTag + ", ExtraProblem), problem_name(ExtraProblem, Name).");
  session.answer(binding);
}

function renderChallengeText() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + challengeResult;
}


// Prints out the page for All Clues
function renderClues() {
  var sceneHeading = allScenes[0];
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>" + sceneHeading + "</h3>";
  for (var i = 0; i < allClues.length; i++) {
    if (allScenes[i].id !== sceneHeading.id) {
      sceneHeading = allScenes[i];
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>" + sceneHeading + "</h3>";
    }
    var checkbox;
    var clue_known = allCluesKnown[i];
    if (clue_known == "true") {
      checkbox = "<input type='checkbox' name='clue' checked>";
    } else {
      checkbox = "<input type='checkbox' name='clue'>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<p class='hangingindent'>" + checkbox + allClues[i] + "</p>";
  } 
}

function loadGraph() {
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
  loadAll(); 
});


// When you click the node, load the appropriate page
$(document).on("click", "g[class='nodes'] g[class='node completed']", function () {
  currentScene = $(this).attr('id');
  loadAll(); 
});

function loadPlayerSheet() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Player Sheet</h2>";
  loadPlayerEdges(); 
}

function loadPlayerEdges() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Edges</h3>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><input type='checkbox' name='edge' checked><strong>" + result_name + "</strong> -- " + result_description + "</p>";
      }
    }
    bindings = [];
    loadPlayerProblems();
  }

  session.query("player_edge(Edge), edge_name(Edge, Name), edge_description(Edge, Description).");
  session.answers(get_callback(get_all_bindings));
}

function loadPlayerProblems() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Problems</h3>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><input type='checkbox' name='problem' checked><strong>" + result_name + "</strong> -- " + result_description + "</p>";
      }
    }
    bindings = [];
    loadPlayerInvestigativeAbilities();
  }

  session.query("player_problem(Problem), problem_name(Problem, Name), problem_description(Problem, Description).");
  session.answers(get_callback(get_all_bindings));
}

function loadPlayerInvestigativeAbilities() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Investigative Abilities</h3>";
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
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>General Abilities</h3>";
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var value = answer.lookup("Value");
      if (result_name !== null){
        if (value > 1) {
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + result_name + " 🎲 🎲 </p>";
        } else {
          sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + result_name + " 🎲 </p>";
        }
        
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
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><h3>Player Pushes: " + answer.lookup("Value"); + "</h3>";
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
      var result_tag = answer.lookup("Edge");
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      if (result_name !== null){
        var hasEdge = checkIfPlayerHasEdge(result_tag.id);
        var checkbox;
        if (hasEdge) {
          checkbox = "<input type='checkbox' name='edge' checked>";
        } else {
          checkbox = "<input type='checkbox' name='edge'>";
        }
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + "<strong>" + result_name + "</strong> -- " + result_description + "</p>";
      }
    }
    bindings = [];
  }
  session.query("edge_name(Edge, Name), edge_description(Edge, Description).");
  session.answers(get_callback(get_all_bindings));
}

function checkIfPlayerHasEdge(result_tag) {
  var result; 
  var binding = function(answer) {
    if (answer != false) {
      result = true;
    } else {
      result = false;
    }
  }

  session.query("player_edge(" + result_tag + ").");
  session.answer(binding);
  return result;
}

function loadProblems() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Problems</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_tag = answer.lookup("Problem");
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      if (result_name !== null){
        var hasProblem = checkIfPlayerHasProblem(result_tag.id);
        var checkbox;
        if (hasProblem) {
          checkbox = "<input type='checkbox' name='problem' checked>";
        } else {
          checkbox = "<input type='checkbox' name='problem'>";
        }
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + "<strong>" + result_name + "</strong> -- " + result_description + "</p>";
      }
    }
  }
  session.query("problem_name(Problem, Name), problem_description(Problem, Description).");
  session.answers(get_callback(get_all_bindings));
}

function checkIfPlayerHasProblem(result_tag) {
  var result; 
  var binding = function(answer) {
    if (answer != false) {
      result = true;
    } else {
      result = false;
    }
  }

  session.query("player_problem(" + result_tag + ").");
  session.answer(binding);
  return result;
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

  function loadSuggestions() {
    clear_output_area(); 
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>GM Suggestions</h2>"; 
    sceneInfo.innerHTML = sceneInfo.innerHTML + '<a href="#" onclick="char_knows_clue()">Character knows clue</a>    |    <a href="#" onclick="overhear_conversation()">Overhear conversation</a>    |    <a href="#" onclick="find_new_lead()">Find new lead</a>    |    <a href="#" onclick="find_hostage_options()">Find hostage options</a>    |    <a href="#" onclick="find_physical_injury()">Find physical injury</a><div id="output_area"></div>'
  }

  function clear_suggestion_area() {
    output_area.innerHTML = "";
    bindings = [];
  }

/***********************************
* Prolog suggestion functions
* 
************************************/

function print(answers) {
  for (var i = 0; i < answers.length; i++) {
    var answer = answers[i];
    output_area.innerHTML = output_area.innerHTML + answer + "\n";
  }
}

function char_knows_clue() {
  clear_suggestion_area();
  output_area.innerHTML = "";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("CharName");
      var result_clue = answer.lookup("ClueDesc");
      output_area.innerHTML = output_area.innerHTML + "<p>" + result_name + " knows the clue: " + result_clue + "</p>";
    } 
  }

  session.query("char_knows_clue(CharTag, CharName, ClueTag, ClueDesc, Scene).");
  session.answers(get_callback(get_all_bindings));
}

function overhear_conversation() {
  clear_suggestion_area();
  output_area.innerHTML = "";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Char1Name");
      var result_name2 = answer.lookup("Char2Name");
      var result_clue = answer.lookup("ClueDesc");
      output_area.innerHTML = output_area.innerHTML + "<p>" + result_name + " tells secret to " + result_name2 + ": " + result_clue + "</p>";
    } 
  }

  session.query("overhear_conversation(Char1, Char1Name, Char2, Char2Name, Clue, ClueDesc).");
  session.answers(get_callback(get_all_bindings));
}

function find_new_lead() {
  clear_suggestion_area();
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("ClueDesc");
      output_area.innerHTML = output_area.innerHTML + "<p>" + result_name + "</p>";
    } 
  }

  session.query("find_new_lead(Clue, ClueDesc, Scene, SceneName).");
  session.answers(get_callback(get_all_bindings));
}

function find_hostage_options() {
  clear_suggestion_area();
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Char");
      output_area.innerHTML = output_area.innerHTML + "<p>" + result_name + "</p>";
    } 
  }

  session.query("find_hostage_options(Char).");
  session.answers(get_callback(get_all_bindings));
}

function find_physical_injury() {
  clear_suggestion_area();
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("ExtraProblem");
      output_area.innerHTML = output_area.innerHTML + "<p>" + result_name + "</p>";
    } 
  }

  session.query("find_physical_injury(Challenge, ExtraProblem).");
  session.answers(get_callback(get_all_bindings));
}


/****************************************
* Handling click events 
*
****************************************/

// When you click the checkbox for a clue, have this update the result in the database
$(document).on("click", "input[name='clue']", function () {
  var checked = $(this).prop('checked');
  var clueText = this.nextSibling.data;
  var binding = function(answer) {
  }

  var statement = "clue_known(Clue, PrevKnown), clue_description(Clue, " + clueText + "), retract( clue_known(Clue, PrevKnown) ), asserta( clue_known(Clue, " + checked + ")).";
  session.query(statement);
  session.answer(binding);
});


// When you click the checkbox for an edge, have this update the result in the database
$(document).on("click", "input[name='edge']", function () {
  var checked = $(this).prop('checked');
  var edgeName = this.nextSibling.textContent;
  
  var binding = function(answer) {
  }

  var statement = "edge_name(Edge, " + edgeName + "), "
  if (checked == true) {
    statement = statement + "asserta(player_edge(Edge))."
  } else {
    statement = statement + "retract(player_edge(Edge))."
  }
  session.query(statement);
  session.answer(binding);
});

// When you click the checkbox for a problem, have this update the result in the database
$(document).on("click", "input[name='problem']", function () {
  var checked = $(this).prop('checked');
  var problemName = this.nextSibling.textContent;
  
  var binding = function(answer) {
  }

  var statement = "problem_name(Problem, " + problemName + "), "
  if (checked == true) {
    statement = statement + "asserta(player_problem(Problem))."
  } else {
    statement = statement + "retract(player_problem(Problem))."
  }
  session.query(statement);
  session.answer(binding);
});

// When you click the checkbox for scene visited, have this update the result in the database
$(document).on("click", "input[name='scene']", function () {
  var checked = $(this).prop('checked');

  var binding = function(answer) {
  }

  var statement = "scene(" + currentScene + "), scene_visited(" + currentScene + ", PrevVisited), retract(scene_visited(" + currentScene + ", PrevVisited)), asserta(scene_visited(" + currentScene + ", " + checked + "))."
  session.query(statement);
  session.answer(binding);

  //Update the graph to reflect that the scene is completed
  if (checked == true) {
    graphDefinition = graphDefinition + "class " + currentScene + " completed;"; 
  } else {
    var removedString = "class " + currentScene + " completed;";
    graphDefinition = graphDefinition.replace(removedString, "");
  }
   
  loadGraph();
});
