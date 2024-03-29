
mermaid.initialize({
  startOnLoad: true,
  securityLevel: 'loose',
});

// The starting scene for the module 
var currentScene = "sadies_sob_story";
var binding = "";


// Some arrays that store information fetched from Prolog 
var currentSceneText = []; 
var currentSceneClues = [];
var currentSceneCluesKnown = [];
var allClues = [];
var allCluesKnown = [];
var allScenes = [];
var challengeResult;
var challengeTag;
var antagonistTags = [];
var antagonistTriggers = []; 
var antagonistReactions = [];
var antagonistChallenges = [];
var dropdown = "";
var playerRelationships = [];

//initializing the graphs for scene and characters 
var graphDefinition = "graph TD\nsadies_sob_story[<font color='white' class='node'>Sadie's Sob Story</font>]\nfullers_electrical_repair[Fuller's Electrical Repair]\ncharming_charlie[Charming Charlie]\nthe_psychical_investigator[The Psychical Investigator]\nthe_peculiar_death_of_myron_fink[The Peculiar Death of Myron Fink]\nfuller_himself[Fuller Himself]\ntemple_of_nephthys[Temple of Nephthys]\nthe_leg_breaker[The Leg Breaker]\ncharlie_comes_clean[Charlie Comes Clean]\nwhat_the_cops_know[What the Cops Know]\ninterviewing_the_neighbors[Interviewing the Neighbors]\ngeorges_apartment[George's Apartment]\naddie_needs_answers[Addie Needs Answers]\nmen_gone_missing[Men Gone Missing]\nbreaking_into_fullers[Breaking Into Fuller's]\nthe_thing_in_the_morgue[The Thing in the Morgue]\nquestioning_pearl[Questioning Pearl]\nmiracle_machine[Miracle Machine]\ngoing_on_the_grid[Going on the Grid]\nsadie_and_the_scoop[Sadie and the Scoop]\nsadies_sob_story --> fullers_electrical_repair\nsadies_sob_story --> the_peculiar_death_of_myron_fink\nsadies_sob_story --> what_the_cops_know\nfullers_electrical_repair --> fuller_himself\nfullers_electrical_repair --> charming_charlie\ncharming_charlie --> the_peculiar_death_of_myron_fink\ncharming_charlie --> fuller_himself\ncharming_charlie --> the_leg_breaker\ncharming_charlie --> temple_of_nephthys\nthe_psychical_investigator --> temple_of_nephthys\nthe_peculiar_death_of_myron_fink --> what_the_cops_know\nthe_peculiar_death_of_myron_fink --> interviewing_the_neighbors\nfuller_himself --> charming_charlie\nfuller_himself --> the_psychical_investigator\nfuller_himself --> temple_of_nephthys\nfuller_himself --> what_the_cops_know\nfuller_himself --> georges_apartment\ntemple_of_nephthys --> the_leg_breaker\ntemple_of_nephthys --> miracle_machine\ntemple_of_nephthys --> addie_needs_answers\nthe_leg_breaker --> charlie_comes_clean\nthe_leg_breaker --> breaking_into_fullers\ncharlie_comes_clean --> breaking_into_fullers\nwhat_the_cops_know --> the_peculiar_death_of_myron_fink\nwhat_the_cops_know --> the_thing_in_the_morgue\ninterviewing_the_neighbors --> georges_apartment\ngeorges_apartment --> questioning_pearl\ngeorges_apartment --> the_psychical_investigator\naddie_needs_answers --> men_gone_missing\nmen_gone_missing --> breaking_into_fullers\nbreaking_into_fullers --> sadie_and_the_scoop\nquestioning_pearl --> miracle_machine\nmiracle_machine --> going_on_the_grid\ngoing_on_the_grid --> breaking_into_fullers\n\nclassDef default fill:#333,stroke:#fff,color:white,stroke-width:4px;classDef completed fill:#777,stroke:#333,stroke-width:4px;";

var characterGraphDefinition = "graph TD\ngeorge_preston[<font color='white' class='char_node'>George Preston</font>]\nsadie_cain[Sadie Cain]\ncharlie_fitzpatrick[Charlie 'Charlene' Fitzpatrick]\nhoward_fuller[Howard Fuller]\nclarence_simpson[Clarence Simpson]\npearl_leblanc[Pearl LeBlanc]\nmadame_isis[Madame Isis Neferi]\nhereward_carrington[Hereward Carrington]\nmarty_the_mouth[Marty the Mouth]\naddie_sims[Addie Sims]\n\nsadie_cain-- engaged to -->george_preston\ngeorge_preston-- corresponds with -->hereward_carrington\ngeorge_preston-- rents from -->clarence_simpson\ngeorge_preston-- potential acolyte of -->madame_isis\ngeorge_preston-- owes money to -->marty_the_mouth\nmarty_the_mouth-- witnessed -->charlie_fitzpatrick\nhoward_fuller-- employs -->charlie_fitzpatrick\nhoward_fuller-- employs -->george_preston\npearl_leblanc-- devoted to -->madame_isis\naddie_sims-- seeking answers from -->madame_isis\nclassDef default fill:#333,stroke:#fff,color:white,stroke-width:4px;classDef met fill:#777,stroke:#333,stroke-width:4px;";

// Create the prolog sesssion and load database prolog.
session = pl.create();
session.consult("database.prolog");

// Array of variable bindings, one per answer, returned by prolog query
// You'll need to keep this in here to get the Prolog queries/bindings working
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
 document.getElementById('sources_link').onclick = loadSources;
 document.getElementById('investigative_abilities_link').onclick = loadInvestigativeAbilities; 
 document.getElementById('general_abilities_link').onclick = loadGeneralAbilities;
 document.getElementById('antagonist_reactions_link').onclick = loadAntagonistReactions;



function loadAll() {
  currentSceneText = []; 
  currentSceneClues = [];
  currentSceneCluesKnown = [];
  clear_output_area();
  loadScene();
  loadGraph();
}

/***********************
 *       SCENES
 **********************/

// Handles loading in the components of a scene based on current_scene
function loadScene() {
  loadSceneName();
  loadSceneType();
  loadSceneCompleted(); 
  loadSceneLeadIns();
  newSuggestionSession();
}

// Clears the output area so that it can be populated with a new page 
function clear_output_area() {
  sceneInfo.innerHTML = "";
  bindings = [];
}

// Displays the name of the current scene
function loadSceneName() {
  var binding = function(answer) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>" + answer.lookup("Name").id;  + "</h2>";
  }
  
  session.query("scene_name(" + currentScene + ", Name).");
  session.answer(binding);
}

// Displays the checkbox for if a scene has been completed / visited or not
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

// Loads the "type" of a scene
function loadSceneType() {
  var binding = function(answer) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<em>" + answer.lookup("Type");  + "</em><br>";
  }
  
  session.query("scene_type(" + currentScene + ", Type).");
  session.answer(binding);
}

// Loads the lead ins for a scene and lists them
function loadSceneLeadIns() {
  var get_all_bindings = function(answers) {
    if (answers.length > 0) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Lead-Ins</h3>";
    }
    
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_tag = answer.lookup("OtherScene");
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<a onclick='setScene(" + result_tag + ")'; href='#'>" + result_name.id + "</a><br>";
    }
    bindings = [];
    loadSceneLeadOuts();
  }

  session.query("scene_lead_outs( OtherScene, " + currentScene + "), scene_name(OtherScene, Name).");
  session.answers(get_callback(get_all_bindings));
}

// Loads the lead outs for a scene and lists them 
function loadSceneLeadOuts() {
  var get_all_bindings = function(answers) {
    if (answers.length > 0) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Lead-Outs</h3>";
    }
    
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_tag = answer.lookup("OtherScene");
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<a onclick='setScene(" + result_tag + ")'; href='#'>" + result_name.id + "</a><br>";
    }
    bindings = [];
    loadSceneText();
  }

  session.query("scene_lead_ins( OtherScene, " + currentScene + "), scene_name(OtherScene, Name).");
  session.answers(get_callback(get_all_bindings));
}

// Used to indicate that a given scene is now the current scene
function setScene(tag) {
  currentScene = tag.id; 
  loadAll();
}

// Displays a list of all of the text in the current scene 
function loadSceneText() {
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Text");
      currentSceneText.push(result_name.id);
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
        currentSceneClues.push(result_name.id); // TODO
        currentSceneCluesKnown.push(clue_known)
      }
    }
    renderScene();
  }
  
  session.query("scene_clues(" + currentScene + ", Clue), clue_description(Clue, Description), clue_known(Clue, Known).");
  session.answers(get_callback(get_all_bindings));
}

// Renders the scene, with the appropriate placement of text, clues, challenges, etc.
function renderScene() {
  if (currentScene=="sadies_sob_story"){
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 5; i < 6; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < currentSceneCluesKnown.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 6; i < currentSceneText.length; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "fullers_electrical_repair") {
    for (var i = 0; i < currentSceneText.length; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < currentSceneClues.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
  } else if (currentScene == "fuller_himself") {
    for (var i = 0; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < currentSceneClues.length; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 3; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "what_the_cops_know") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 3; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 3; i < 6; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 6; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < 7; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 7; i < 8; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "interviewing_the_neighbors") {
    for (var i = 0; i < 1; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 4; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Minnie Boyer</h3>";
    for (var i = 1; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 4; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>August Williams</h3>";
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 8; i < 12; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Violet Blake</h3>";
    for (var i = 3; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 12; i < 15; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 4; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 5; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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
  } else if (currentScene == "addie_needs_answers") {
    for (var i = 0; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 7; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i]), i;
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
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 9; i < 10; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    renderAntagonistReactionTrigger("antagonist_reaction_4");
  } else if (currentScene == "miracle_machine") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 3; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Catching Fuller's Eye</h3>";
    renderAntagonistReactionTrigger("antagonist_reaction_2");
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
    renderAntagonistReactionTrigger("antagonist_reaction_3");
    for (var i = 2; i < 3; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 9; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 3; i < 7; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
  } else if (currentScene == "going_on_the_grid") {
    for (var i = 0; i < 5; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 5; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
  } else if (currentScene == "men_gone_missing") {
    for (var i = 0; i < 2; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 0; i < 5; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
    }
    for (var i = 2; i < 4; i++) {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + currentSceneText[i] + "</p>";
    }
    for (var i = 5; i < 8; i++) {
      renderClue(currentSceneClues[i], currentSceneCluesKnown[i], i);
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

// Renders whether there is a trigger for antagonist reactions checkbox
function renderAntagonistReactionTrigger(antagonistReaction) {
  var binding = function(answer) {
    var triggered = answer.lookup("Triggered");
    var description = answer.lookup("Trigger");
    if (triggered == "true") {
      checkbox = "<input type='checkbox' name='reaction' checked>";
    } else {
      checkbox = "<input type='checkbox' name='reaction'>";
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<div class='challenge'><p><strong>Antagonist Reaction Trigger</strong></p><p>" + checkbox + description + "</p></div>";
  }

  // look up if the antagonist reaction is triggered or not
  session.query("antagonist_reaction(" + antagonistReaction + ", Trigger, Description, Challenge), antagonist_reaction_triggered(" + antagonistReaction + ", Triggered).");
  session.answer(binding);
}

// Renders a clue as checked or unchecked if it is known or not
function renderClue(clue, known, number) {
  var checkbox;
  if (known == "true") {
    checkbox = "<input type='checkbox' name='clue' checked>";
  } else {
    checkbox = "<input type='checkbox' name='clue'>";
  }
  sceneInfo.innerHTML = sceneInfo.innerHTML + `<p class='hangingindent' id=clue-${number + 1}>` + checkbox + clue + "</p>";
}

/***********************
 *     CHALLENGES
 **********************/

// Renders the challenge based on challenge tag 
function renderChallenge(tag) {
  challengeResult = "";
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = "<div class='challenge'>"; 
      challengeResult = challengeResult + "<h3>" + answer.lookup("Name").id + "</h3>"; 
      challengeResult = challengeResult + "<p><em>" + answer.lookup("Type") + "</em></p>";
    }
    printChallengeExtraDescription(); 
  }
  challengeTag = tag;
  session.query("challenge_name(" + challengeTag + ", Name), challenge_type(" + challengeTag + ", Type).");
  session.answer(binding);
}

// Renders extra description for challenge if there is one
function printChallengeExtraDescription() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p>" + answer.lookup("Description").id + "</p>";
    }
    printChallengeAdvantage();
  }

  session.query("challenge_extra_description(" + challengeTag + ", Description).");
  session.answer(binding);
}

// Renders challenge advantage
function printChallengeAdvantage() {
  var binding = function(answer) {
    if (answer !== false) {

      challengeResult = challengeResult + "<p><strong>Advance " + answer.lookup("AdvanceValue").id + "+: </strong> " + answer.lookup("AdvanceDescription").id + "</p>";
    }
    printChallengeHold();
  }

  session.query("challenge_advance(" + challengeTag + ", AdvanceValue, AdvanceDescription).");
  session.answer(binding);
}

// Renders challenge hold 
function printChallengeHold() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p><strong>Hold " + answer.lookup("HoldHighValue").id + "-" + answer.lookup("HoldLowValue").id + ": </strong>" + answer.lookup("HoldDescription").id + "</p>";
    }
    printChallengeSetback();
  }

  session.query("challenge_hold(" + challengeTag + ", HoldHighValue, HoldLowValue, HoldDescription).");
  session.answer(binding);
}

// Renders challenge setback
function printChallengeSetback() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p><strong>Setback: </strong>" + answer.lookup("SetbackDescription").id + "</p>"; 
    }
    printChallengeExtraProblem();
  }

  session.query("challenge_setback(" + challengeTag + ", SetbackDescription).");
  session.answer(binding);
}

// Renders challenge extra problem
function printChallengeExtraProblem() {
  var binding = function(answer) {
    if (answer !== false) {
      challengeResult = challengeResult + "<p><strong>Extra Problem: </strong>" + answer.lookup("Name").id + "</p>"; 
    }
    renderChallengeText();
  }

  session.query("challenge_extra_problem(" + challengeTag + ", ExtraProblem), problem_name(ExtraProblem, Name).");
  session.answer(binding);
}

// Takes all the text from the challenge and outputs it to HTML
function renderChallengeText() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + challengeResult;
}


/***********************
 *       CLUES
 **********************/

// Gets list of all clues
function loadClues() { // TODO
  allClues = [];
  allCluesKnown = [];
  clear_output_area();
  var get_all_bindings = function(answers) {
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Clues</h2>";
    for (var i = 0;
      i < answers.length;
      i++) {
      var answer = answers[i];
    var result_name = answer.lookup("Description");
    var clue_known = answer.lookup("Known");
    var scene = answer.lookup("Name");
    if (result_name !== null){
      allClues.push(result_name.id);
      allCluesKnown.push(clue_known);
      allScenes.push(scene);
    }
  }
  renderClues();
}

session.query("clue_description(Clue, Description), clue_known(Clue, Known), scene_clues(Scene, Clue), scene_name(Scene, Name).");
session.answers(get_callback(get_all_bindings));
}

// Prints out the page for All Clues
function renderClues() {
  var sceneHeading = allScenes[0];
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>" + sceneHeading.id + "</h3>";
  for (var i = 0; i < allClues.length; i++) {
    if (allScenes[i].id !== sceneHeading.id) {
      sceneHeading = allScenes[i];
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>" + sceneHeading.id + "</h3>";
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

/***********************
 *       GRAPHS
 **********************/

// Reloads the graph with new graph definition information
function loadGraph() {
  parseGraph(graphDefinition);
}

// Uses Mermaid API to actually render graph
function parseGraph(graphDefinition) {
  $('#graphInfo').empty();
  var element = document.querySelector("#graphInfo");

  var insertSvg = function(svgCode, bindFunctions){
    element.innerHTML = svgCode;
  };
  mermaid.mermaidAPI.render('graphInfo', graphDefinition, insertSvg);
}

// When you click a scene node, load the appropriate page
$(document).on("click", "g[class='node']", function () {
  var id = $(this).attr('id'); 
  //console.log(class);
  if (id.substring(0, 4) == "anta") {
    //load antagonist reaction page
    loadAntagonistReactions();
    // making sure that clicking the character nodes don't do anything
  } else if (id == "sadie_cain"|| id == "george_preston" || id == "hereward_carrington" || id == "clarence_simpson" || id == "marty_the_mouth" || id == "pearl_leblanc" || id == "madame_isis" || id == "charlie_fitzpatrick" || id == "addie_sims" || id == "howard_fuller") {
    // do nothing
   } else {
    currentScene = $(this).attr('id');
    loadAll(); 
  }
});


// When you click a scene node, load the appropriate page (works on completed nodes too)
$(document).on("click", "g[class='node completed']", function () {
  currentScene = $(this).attr('id');
  loadAll(); 
});

/***********************
 *    PLAYER SHEET
 **********************/

// Loads the page for the player info
function loadPlayerSheet() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Player Sheet</h2>";
  loadPlayerEdges(); 
}

// Loads a list of player's edges
function loadPlayerEdges() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Edges</h3>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      var result_continuity = answer.lookup("Continuity");
      var continuity = "";
      if (result_continuity.id == "true") {
        continuity = " (Continuity) ";
      }
      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><input type='checkbox' name='edge' checked><strong>" + result_name + "</strong>" + continuity + " -- " + result_description.id + "</p>";
      }
    }
    bindings = [];
    loadPlayerProblems();
  }

  session.query("player_edge(Edge), edge(Edge, Number, Name, Description, Continuity).");
  session.answers(get_callback(get_all_bindings));
}

// Loads a list of player's problems
function loadPlayerProblems() {
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Problems</h3>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      var result_continuity = answer.lookup("Continuity");
      var continuity = ""; 
      if (result_continuity.id == "true") {
        continuity = " (Continuity) ";
      }
      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><input type='checkbox' name='problem' checked><strong>" + result_name + "</strong> " + continuity + " -- " + result_description.id + "</p>";
      }
    }
    bindings = [];
    loadPlayerGeneralAbilities();
  }

  session.query("player_problem(Problem), problem(Problem, Number, Name, Description, Continuity).");
  session.answers(get_callback(get_all_bindings));
}

// Loads a list of player's investigative abilities
function loadPlayerInvestigativeAbilities() {
  var htmlOutput = "";
  htmlOutput = htmlOutput + "<h3>Investigative Abilities</h3>";
  htmlOutput = htmlOutput +  "<div class='column'>";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      if (result_name !== null){
        htmlOutput = htmlOutput + "<p>" + result_name.id + "</p>";
      }
    }
    htmlOutput = htmlOutput + "</div>";
    sceneInfo.innerHTML = sceneInfo.innerHTML + htmlOutput;

    bindings = []; 
    loadPlayerPushes();
  }
  
  session.query("player_investigative_ability(Ability), investigative_ability(Ability, Name, Description, Type).");
  session.answers(get_callback(get_all_bindings));
}

// Loads a list of player's general abilities 
function loadPlayerGeneralAbilities() {
  var get_all_bindings = function(answers) {
    var htmlOutput = "";
    htmlOutput = htmlOutput +  "<h3>General Abilities</h3>";
    htmlOutput = htmlOutput + "<div class='column'>";
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var value = answer.lookup("Value");
      if (result_name !== null){
        if (value > 1) {
          htmlOutput = htmlOutput +  "<p>" + result_name.id + " 🎲 🎲 </p>";
        } else {
          htmlOutput = htmlOutput + "<p>" + result_name.id + " 🎲 </p>";
        } 
      }
    }
    htmlOutput = htmlOutput + "</div>";
    sceneInfo.innerHTML = sceneInfo.innerHTML + htmlOutput;
    bindings = []; 
    loadPlayerInvestigativeAbilities();
  }
  
  session.query("player_general_ability(Ability, Value), general_ability(Ability, Name, Description, Type).");
  session.answers(get_callback(get_all_bindings));
}

// Loads a list of player's pushes (with buttons for increment / decrement)
function loadPlayerPushes() {
  var binding = function(answer) {
    var result = answer.lookup("Value");
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<br><br><div class='row'><h3>Player Pushes: <button onclick='decrementPush(" + result + ")'><</button> " + result + " <button onclick='incrementPush(" + result + ")'>></button></h3></div>";
  }
  
  session.query("player_pushes(Value).");
  session.answer(binding);
}

/***********************
 *       EDGES
 **********************/

// Loads a list of all player edges
function loadEdges() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Edges</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_tag = answer.lookup("Edge");
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      var result_continuity = answer.lookup("Continuity");
      var continuity = "";
      if (result_continuity.id == "true") {
        continuity = " (Continuity) ";
      }
      if (result_name !== null){
        var hasEdge = checkIfPlayerHasEdge(result_tag.id);
        var checkbox;
        if (hasEdge) {
          checkbox = "<input type='checkbox' name='edge' checked>";
        } else {
          checkbox = "<input type='checkbox' name='edge'>";
        }
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + "<strong>" + result_name + "</strong> " + continuity + "-- " + result_description.id + "</p>";
      }
    }
    bindings = [];
  }
  session.query("edge(Edge, Number, Name, Description, Continuity).");
  session.answers(get_callback(get_all_bindings));
}

// Checks if a player has a particular edge (by tag)
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

/***********************
 *       PROBLEMS
 **********************/

// Renders all problems page
function loadProblems() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>All Problems</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_tag = answer.lookup("Problem");
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      var result_continuity = answer.lookup("Continuity");
      var continuity = "";
      if (result_continuity.id == "true") {
        continuity = " (Continuity) ";
      }
      if (result_name !== null){
        var hasProblem = checkIfPlayerHasProblem(result_tag.id);
        var checkbox;
        if (hasProblem) {
          checkbox = "<input type='checkbox' name='problem' checked>";
        } else {
          checkbox = "<input type='checkbox' name='problem'>";
        }
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + checkbox + "<strong>" + result_name + "</strong>" + continuity + " -- " + result_description.id + "</p>";
      }
    }
  }
  session.query("problem(Problem, Number, Name, Description, Continuity).");
  session.answers(get_callback(get_all_bindings));
}

// Checks if player has a particular problem (by tag)
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

/***********************
 *      CHARACTERS
 **********************/

// Renders the characters page
function loadCharacters() {
  clear_output_area();
  parseGraph(characterGraphDefinition);
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Characters</h2>"; 
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var tag = answer.lookup("Character");
      var result_name = answer.lookup("Name");
      var result_description = answer.lookup("Description");
      var character_met = answer.lookup("Met");
      var met = ""; 
      if (character_met.id == "true") {
        met = " (Met) "
      }

      // add relationship with player 
      var relationship = answer.lookup("Relationship");
      var dropdown = "";
      var id = tag.id + "_form";
      var value = "value";
      dropdown = dropdown + "<form><select name='character_form' id='" + tag + "' onchange='if (this.selectedIndex >= 0) changeValence(this)'><option value='" + relationship + "'>" + relationship + "</option>";
      
      if (relationship == "positive") {
        dropdown = dropdown + "<option value='neutral'>neutral</option>"; 
        dropdown = dropdown + "<option value='negative'>negative</option>";
      } else if (relationship == "neutral") {
        dropdown = dropdown + "<option value='positive'>positive</option>"; 
        dropdown = dropdown + "<option value='negative'>negative</option>";
      } else {
        dropdown = dropdown + "<option value='positive'>positive</option>"; 
        dropdown = dropdown + "<option value='neutral'>neutral</option>";
      }
      dropdown = dropdown + "</form>";

      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>" + result_name + met +"</strong> -- " + result_description + "</p><p>Relationship with player: " + dropdown + "</p>";
      }
    }
    bindings = [];
  }
  session.query("character_name(Character, Name), character_description(Character, Description), character_met(Character, Met), character_relationship_valence(Character, player, Relationship).");
  session.answers(get_callback(get_all_bindings));
}

function changeValence(input) {
  var tag = input.id;
  var valence = input.value;

  var binding = function(answer) {
  }

  // take the given character and remove their old relationship to the player, and then add their new relationship to database
  var statement = "retract( character_relationship_valence(" + tag + ", player, Valence) ), asserta( character_relationship_valence(" + tag + ", player, " + valence + ")).";
  session.query(statement);
  session.answer(binding);
}


/***********************
 *     SUGGESTIONS
 **********************/
 // Loads the bar for clickable suggestions
 function loadSuggestions() {
  clear_output_area(); 
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>GM Suggestions</h2>"; 
  sceneInfo.innerHTML = sceneInfo.innerHTML + '<a href="#" onclick="char_knows_clue()">Character knows clue</a>    |    <a href="#" onclick="overhear_conversation()">Overhear conversation</a>    |    <a href="#" onclick="find_new_lead()">Find new lead</a>    |    <a href="#" onclick="find_hostage_options()">Find hostage options</a>    |    <a href="#" onclick="find_physical_injury()">Find physical injury</a><div id="dropdown_area"></div><div id="output_area"></div>'
}

// Clears the current selection of suggestions
function clear_suggestion_area() {
  output_area.innerHTML = "";
  bindings = [];
}

function clear_dropdown_area() {
  dropdown = "";
  dropdown_area.innerHTML = "";
  bindings = [];
}

/***********************
 *       SOURCES
 **********************/
// Renders source info
function loadSources() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Sources</h2>";
  var get_all_bindings = function(answers) {
    var currentName = "annette_rice";
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_tag = answer.lookup("Source");
      var result_name = answer.lookup("Name");
      var result_profession = answer.lookup("Profession");
      var result_description = answer.lookup("Description");
      var result_ability = answer.lookup("AbilityName");
      if (result_name !== null && currentName !== result_tag){
        currentName = result_tag;
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3><strong>" + result_name.id + "</strong> (" + result_profession.id + ")</h3><p>" + result_description.id + "</p><p><strong>Investigative Abilities</strong></p>";
      }
      if (result_name !== null) {
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<p>" + result_ability.id + "</p>";
      }
    }
    bindings = [];
  }
  session.query("source(Source), source_name(Source, Name), source_description(Source, Description), source_profession(Source, Profession), source_investigative_abilities(Source, Ability), investigative_ability(Ability, AbilityName, AbilityDescription, AbilityType).");
  session.answers(get_callback(get_all_bindings));
}

/***********************
 *       ABILITIES
 **********************/

// Loads list of all investigative abilities 
function loadInvestigativeAbilities() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Investigative Abilities</h2>";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_type = answer.lookup("Type");
      var result_description = answer.lookup("Description");
      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>" + result_name.id + " (" + result_type + ")</h3><p>" + result_description.id + "</p>";
      }
    }
    bindings = [];
  }
  session.query("investigative_ability(Ability, Name, Description, Type).");
  session.answers(get_callback(get_all_bindings));
}

// Loads list of all general abilities 
function loadGeneralAbilities() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>General Abilities</h2>";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name");
      var result_type = answer.lookup("Type");
      var result_description = answer.lookup("Description");
      if (result_name !== null){
        sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>" + result_name.id + " (" + result_type + ")</h3><p>" + result_description.id + "</p>";
      }
    }
    bindings = [];
  }
  session.query("general_ability(Ability, Name, Description, Type).");
  session.answers(get_callback(get_all_bindings));
}

/***********************
 * ANTAGONIST REACTIONS
 **********************/

// Loads list of all antagonist reactions 
function loadAntagonistReactions() {
  clear_output_area();
  sceneInfo.innerHTML = sceneInfo.innerHTML + "<h2>Antagonist Reactions</h2>";
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      antagonistTags[i] =  answer.lookup("Tag");
      antagonistTriggers[i] =  answer.lookup("Trigger").id;
      antagonistReactions[i] = answer.lookup("Reaction").id;
      antagonistChallenges[i] = answer.lookup("ReactionChallenge").id;
    }
    bindings = [];
    renderAntagonistReactions();
  }

  session.query("antagonist_reaction(Tag, Trigger, Reaction, ReactionChallenge).");
  session.answers(get_callback(get_all_bindings));
}

// Displays antagonist reaction info
function renderAntagonistReactions() {
  for (var i = 0; i < antagonistTags.length; i++) {
    var count = i + 1;
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<h3>Antagonist Reaction " + count + "</h3>";
    //check if the antagonist reaction is satisfied, and if so, highlight the thing
    var isSatisfied = checkAntagonistReaction(antagonistTags[i].id);
    if (isSatisfied == "true") {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><mark><strong>Trigger: </strong>" + antagonistTriggers[i] + "</mark></p>";
    } else {
      sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>Trigger: </strong>" + antagonistTriggers[i] + "</p>";
    }
    
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<p><strong>Reaction: </strong>" + antagonistReactions[i] + "</p>";
    if (antagonistChallenges[i] !== "none") {
      renderChallenge(antagonistChallenges[i]);
    }
    sceneInfo.innerHTML = sceneInfo.innerHTML + "<hr>";
  }
}

// Checks if a particular antagonist reaction (by tag) is triggered 
function checkAntagonistReaction(tag) {
  var result = false;
  var binding = function(answer) {
    var triggered = answer.lookup("Triggered");
    result = triggered.id;
  }

  var statement = "antagonist_reaction_triggered(" + tag + ", Triggered).";
  session.query(statement);
  session.answer(binding);
  return result;
}

/***********************
 *       PUSHES
 **********************/
// Handles increasing the push value 
function incrementPush(value) {
  var newValue = value + 1;
  var binding = function(answer) {
    $('#sceneInfo').children().last().remove();
    loadPlayerPushes();
  }

  var statement = "retract( player_pushes(Value) ), asserta( player_pushes(" + newValue + ")).";
  session.query(statement);
  session.answer(binding);
}

// Handles decreasing the push value 
function decrementPush(value) {
  var newValue = value - 1;
  var binding = function(answer) {
    $('#sceneInfo').children().last().remove();
    loadPlayerPushes();
  }

  var statement = "retract( player_pushes(Value) ), asserta( player_pushes(" + newValue + ")).";
  session.query(statement);
  session.answer(binding);
}


/***********************
 * HANDLING CLICK EVENTS
 **********************/

// When you click the checkbox for a clue, have this update the result in the database
$(document).on("click", "input[name='clue']", function () { // TODO
  var checked = $(this).prop('checked');
  var clueText = this.nextSibling.data;
  var binding = function(answer) {
    // check if clue goes somewhere
    var clue = answer.lookup("Clue");
    checkIfClueLeadsToScene(clue, checked);
  }

  var stringfiedClueText = "'" + clueText.replace(/'/g, "\\'") + "'";
  console.log(stringfiedClueText);
  var statement = "clue_known(Clue, PrevKnown), clue_description(Clue, " + stringfiedClueText + "), retract( clue_known(Clue, PrevKnown) ), asserta( clue_known(Clue, " + checked + ")).";
  session.query(statement);
  session.answer(binding);
});

// If a clue leads to a new scene, update the graph to reflect this 
function checkIfClueLeadsToScene(clue, checked) {
  var binding = function(answer) {
    // check if clue goes somewhere
    var clue = answer.lookup("Clue");
    var newScene = answer.lookup("NewScene");
    var oldScene = answer.lookup("OldScene");
    var removedString;

    if (checked == true) {
      removedString = oldScene + " --> " + newScene;
      graphDefinition = graphDefinition.replace(removedString, "");
      var description = "\n" + oldScene + " ==> " + newScene;
      var result = [graphDefinition.slice(0, 890), description, graphDefinition.slice(890)].join('');
      graphDefinition = result;
    } else {
      removedString = oldScene + " ==> " + newScene;
      graphDefinition = graphDefinition.replace(removedString, "");
      var description = "\n" + oldScene + " --> " + newScene;
      var result = [graphDefinition.slice(0, 890), description, graphDefinition.slice(890)].join('');
      graphDefinition = result;
    }
    loadGraph();
  }
  var statement = "clue_leads_to(" + clue + ", NewScene), scene_clues(OldScene, " + clue + ")."
  session.query(statement);
  session.answer(binding);
}


// When you click the checkbox for an edge, have this update the result in the database
$(document).on("click", "input[name='edge']", function () {
  var checked = $(this).prop('checked');
  var edgeName = this.nextSibling.textContent;
  
  var binding = function(answer) {
  }

  var statement = "edge(Edge, Number, " + edgeName + ", Description, Continuty), "
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
    // check if the problem number matches one for antagonist reactions
    var number = answer.lookup("Number"); 
    if (number.value == 11 || number.value == 2 || number.value == 14 || number.value == 1 | number.value == 3 || number.value == 4) {
      updateAntagonistReaction(number.value, checked);
    }
  }

  var statement = "problem(Problem, Number, " + problemName + ", Description, Continuity), "
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
    updateCharactersAsMet(checked); 
  }

  var statement = "scene(" + currentScene + "), scene_visited(" + currentScene + ", PrevVisited), retract(scene_visited(" + currentScene + ", PrevVisited)), asserta(scene_visited(" + currentScene + ", " + checked + "))."
  session.query(statement);
  session.answer(binding);

  // Update the graph to reflect that the scene is completed
  if (checked == true) {
    graphDefinition = graphDefinition + "class " + currentScene + " completed;";  
  } else {
    var removedString = "class " + currentScene + " completed;";
    graphDefinition = graphDefinition.replace(removedString, "");
  }

  loadGraph();
});

// If the player visits a scene with a particular character, indicate that that character has been met 
function updateCharactersAsMet(checked) {
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var character = answer.lookup("Character");
      if (checked == true) {
        //update character graph to reflect you've met the character in the scene
        characterGraphDefinition = characterGraphDefinition + "class " + character + " met;";
      } else {
        var removedString = "class " + character + " met;";
        characterGraphDefinition = characterGraphDefinition.replace(removedString, "");
      }
    }

  }
  session.query("scene_characters(" + currentScene + ", Character), retract(character_met(Character, PrevMet)), asserta(character_met(Character, " + checked + ")).");
  session.answers(get_callback(get_all_bindings));
}

// When you click the checkbox for antagonist reaction trigger, have this update the result in the database
$(document).on("click", "input[name='reaction']", function () {
  var checked = $(this).prop('checked');
  var triggerText = this.nextSibling.data;

  var binding = function(answer) {
    var reaction = answer.lookup("Reaction");
    var description = answer.lookup("Description");

    // Update the scene graph to reflect new antagonist reaction available 
    if (checked == true) {
      var number = reaction.id.slice(-1);
      description = "\n" + reaction + "[Antagonist Reaction " + number + " Available]";
      var result = [graphDefinition.slice(0, 890), description, graphDefinition.slice(890)].join('');
      graphDefinition = result;
    } else {
      var removedString = reaction + "[ " + description + "]";
      graphDefinition = graphDefinition.replace(removedString, "");
    }
  }

  var statement = "antagonist_reaction(Reaction, " + triggerText + ", Description, Challenge), retract(antagonist_reaction_triggered(Reaction, PrevTriggered)), asserta(antagonist_reaction_triggered(Reaction, " + checked + "))."
  session.query(statement);
  session.answer(binding);

  loadGraph();
});

// If the player gains a problem that will trigger an antagonist reaction, update the antagonist reaction to reflect this
function updateAntagonistReaction(problemNumber, checked) {
  var tag = "";
  if (problemNumber == 1) {
    tag = "antagonist_reaction_6"
  } else if (problemNumber == 2 || problemNumber == 14) {
    tag = "antagonist_reaction_5"
  } else if (problemNumber == 3) {
    tag = "antagonist_reaction_7"
  } else if (problemNumber == 4) {
    tag = "antagonist_reaction_8"
  } else if (problemNumber == 11) {
    tag = "antagonist_reaction_1";
  }

  var binding = function(answer) {
    // Update the scene graph to reflect new antagonist reaction available
    if (checked == true) {
      var number = tag.slice(-1);
      var description = "\n" + tag + "[Antagonist Reaction " + number + " Available]";
      var result = [graphDefinition.slice(0, 890), description, graphDefinition.slice(890)].join('');
      graphDefinition = result;
    } else {
      var removedString = tag + "[ " + description + "]";
      graphDefinition = graphDefinition.replace(removedString, "");
    }
  }

  var statement = "retract(antagonist_reaction_triggered(" + tag + ", PrevTriggered)), asserta(antagonist_reaction_triggered(" + tag +", " + checked + "))."
  session.query(statement);
  session.answer(binding);

  loadGraph();
}


/***********************
 * FOR PROLOG SUGGESTIONS
 **********************/

// Handles list of characters who know clues
function char_knows_clue() {
  clear_dropdown_area();
  clear_suggestion_area();
  dropdown = dropdown + "<form><select name='menu' id='menu'><option value='any'>---Any character---</option>";
  addCharactersToDropdown();
}

// Handles conversations that can be overheard between two characters
function overhear_conversation() {
  clear_dropdown_area();
  clear_suggestion_area();
  dropdown = dropdown + "<form><select name='menu' id='menu'><option value='any'>---Any character---</option><option value='howard_fuller'>Howard Fuller</option><option value='pearl_leblanc'>Pearl LeBlanc</ption><option value='madame_isis'>Madame Isis Neferi</option></select><input type='button' id='btn' value='Submit' onClick='render_overhear_conversation()'/></form>";
  dropdown_area.innerHTML = dropdown_area.innerHTML + dropdown; 
}

function render_overhear_conversation() {
    clear_suggestion_area();
    var urlmenu = document.getElementById( 'menu' );
    var input = urlmenu.value;
    var query;

    if (input == "any") {
      query = "overhear_conversation(Char1, Char1Name, Char2, Char2Name, Clue, ClueDesc).";
    } else {
      query = "overhear_conversation(" + input + ", Char1Name, Char2, Char2Name, Clue, ClueDesc).";
    }

    var get_all_bindings = function(answers) {
      for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("Char1Name").id;
        var result_name2 = answer.lookup("Char2Name").id;
        var result_clue = answer.lookup("ClueDesc").id;
        output_area.innerHTML = output_area.innerHTML + "<p>You overhear <strong>" + result_name + "</strong> tell a secret to <strong>" + result_name2 + "</strong>: " + result_clue + "</p>";
      }
    }

session.query(query);
session.answers(get_callback(get_all_bindings));
  
}

// A clue that goes to a place the player hasn't already visited
function find_new_lead() {
  clear_dropdown_area();
  clear_suggestion_area();
  dropdown = dropdown + "<form><select name='menu' id='menu'><option value='any'>---Any scene---</option>";
  addScenesToDropdown();
}

// Gets all scenes from prolog and adds them to dropdown menu
function addScenesToDropdown() {
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_tag = answer.lookup("Scene");
      var result_name = answer.lookup("Name");
      if (result_name !== null){
        dropdown = dropdown + "<option value='" + result_tag + "'>" + result_name + "</option>";
      }
    }
    dropdown = dropdown + "</select><input type='button' id='btn' value='Submit' onClick='render_find_new_lead()'/></form>";
    dropdown_area.innerHTML = dropdown_area.innerHTML + dropdown; 
  }

  session.query("scene_name(Scene, Name).");
  session.answers(get_callback(get_all_bindings));
}

// Gets all characters from prolog and adds them to dropdown menu
function addCharactersToDropdown() {
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_tag = answer.lookup("Character");
      var result_name = answer.lookup("Name");
      if (result_name !== null){
        dropdown = dropdown + "<option value='" + result_tag + "'>" + result_name + "</option>";
      }
    }
    dropdown = dropdown + "</select><input type='button' id='btn' value='Submit' onClick='render_char_knows_clue()'/></form>";
    dropdown_area.innerHTML = dropdown_area.innerHTML + dropdown; 
  }

  session.query("character_name(Character, Name).");
  session.answers(get_callback(get_all_bindings));
}

function render_char_knows_clue() {
  clear_suggestion_area();
  var urlmenu = document.getElementById( 'menu' );
  var input = urlmenu.value;
  var query;

  if (input == "any") {
    query = "char_knows_clue(CharTag, CharName, ClueTag, ClueDesc, Scene)."
  } else {
    query = "char_knows_clue(" + input + ", CharName, ClueTag, ClueDesc, Scene)."
  }

  //output_area.innerHTML = "";
  var get_all_bindings = function(answers) {
    if (answers.length > 0) {
      for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("CharName").id;
        var result_clue = answer.lookup("ClueDesc").id;
        output_area.innerHTML = output_area.innerHTML + "<p><strong>" + result_name + "</strong> knows the clue: " + result_clue + "</p>";
      }
    } else {
      output_area.innerHTML = output_area.innerHTML + "<p><strong>No results found</strong></p>";
    }
  }

  session.query(query);
  session.answers(get_callback(get_all_bindings));
}

// Output based on the user's selection
function render_find_new_lead() {
  clear_suggestion_area();
  var urlmenu = document.getElementById( 'menu' );
  var input = urlmenu.value;
  var query;

  if (input == "any") {
    query = "find_new_lead(Clue, ClueDesc, Scene, SceneName, PrevScene, PrevSceneName)."
  } else {
    query = "find_new_lead(Clue, ClueDesc, " + input + ", SceneName, PrevScene, PrevSceneName)."
  }

  var get_all_bindings = function(answers) {
    if (answers.length > 0) {
      for (var i = 0; i < answers.length; i++) {
        var answer = answers[i];
        var result_name = answer.lookup("ClueDesc").id;
        var result_prev_name = answer.lookup("PrevSceneName").id;
        output_area.innerHTML = output_area.innerHTML + "<p><strong>[From scene " + result_prev_name + "]</strong> " + result_name + "</p>";
      }
    } else {
      output_area.innerHTML = output_area.innerHTML + "<p><strong>No results found</strong></p>";
    }
  }
  session.query(query);
  session.answers(get_callback(get_all_bindings));
}

// People to be taken hostage by Fuller at the end of the game
function find_hostage_options() {
  clear_dropdown_area();
  clear_suggestion_area();
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("Name").id;
      output_area.innerHTML = output_area.innerHTML + "<p>" + result_name + "</p>";
    }
  }

  session.query("find_hostage_options(Char, Name).");
  session.answers(get_callback(get_all_bindings));
}

// List of physical injuries possible
function find_physical_injury() {
  clear_dropdown_area();
  clear_suggestion_area();
  var answerArray = [];
  var get_all_bindings = function(answers) {
    for (var i = 0; i < answers.length; i++) {
      var answer = answers[i];
      var result_name = answer.lookup("ProblemName").id;
      var result_description = answer.lookup("ProblemDescription").id;
      var result_string = "<p>" + result_name + ": " + result_description + "</p>";
      answerArray.push(result_string)
    }
    var uniqueArray = [...new Set(answerArray)]; // finds the unique elements of the answer array 
    output_area.innerHTML = output_area.innerHTML + uniqueArray; 
  }

  session.query("find_physical_injury(Challenge, ProblemName, ProblemDescription).");
  session.answers(get_callback(get_all_bindings));
}


//***********************
//     LM SUGGESTIONS
//***********************

const TRANSCRIPTION_DISPLAY_TIMEOUT = 20 * 1000
const TRANSCRIPTION_USE_TIMEOUT = 10 * 1000
const QUESTION_DISPLAY_TIMEOUT = 30 * 1000
const SUGGESTION_DISPLAY_TIMEOUT = 60 * 1000


//UI
var suggestionsToggle = document.getElementById('suggestions-toggle');
var suggestionsContainer = document.getElementById('suggestions-container');

function hideFooter() {
  suggestionsContainer.style.display = "block";
}

function showFooter() {
  suggestionsContainer.style.display = 'none';
}
suggestionsToggle.onclick = function() {
  if (suggestionsContainer.style.display === "block") {
    suggestionsContainer.style.display = 'none';
  } else {
    suggestionsContainer.style.display = 'block';
  }
}

//Transcription
// get last word said element
var transcriptionFeed = document.getElementById('transcription-feed');
var questionsFeed = document.getElementById('questions-feed');
var suggestionsFeed = document.getElementById('suggestions-feed');
const SpeechRecognition = window.SpeechRecognition || webkitSpeechRecognition;
//const SpeechGrammarList = window.SpeechGrammarList || webkitSpeechGrammarList;
//const SpeechRecognitionEvent = window.SpeechRecognitionEvent || webkitSpeechRecognitionEvent;


// speech recognition globals

var recognition = new SpeechRecognition();
var session_id = Date.now();
var final_transcriptions = [];
var unfinalized_transcriptions = [];
var questions = [];
var question_to_index = {};
var highlightEnabled = true;
var conversationEnabled = false;

function onRecognitionResult(event){
  // delve into words detected results & get the latest
  // total results detected
  console.log(event);
  console.log(performance.now());
  // get length of latest results

  let results_buffer = event.results;

  var updated_unfinalized_transcriptions = []
  for (var i = 0; i < results_buffer.length; i++) {
    if (i >= final_transcriptions.length && results_buffer[i].isFinal) {
      final_transcriptions.push({
        "text": results_buffer[i][0].transcript,
        "timestamp": event.timeStamp,
      })
    } else if (!(results_buffer[i].isFinal)) {
      updated_unfinalized_transcriptions.push({
        "text": results_buffer[i][0].transcript,
        "timestamp": event.timeStamp,
      })
    }
  }
  // Global State Update
  unfinalized_transcriptions = updated_unfinalized_transcriptions;

  // render state
  renderTranscription();
};

function renderTranscription(){
  let ts = performance.now();
  var displayText = "";
  for (var i = 0; i < final_transcriptions.length; i++) {
    transcription = final_transcriptions[i];
    if ((ts - transcription.timestamp) < TRANSCRIPTION_DISPLAY_TIMEOUT) {
      displayText = displayText + "<li>" + final_transcriptions[i]["text"] + "</li>";
    }
  }

  for (var i = 0; i < unfinalized_transcriptions.length; i++) {
    transcription = unfinalized_transcriptions[i];
    displayText = displayText + "<li>" + unfinalized_transcriptions[i]["text"] + "</li>";
  }
  transcriptionFeed.innerHTML = displayText;
}

function renderQuestions() {
  var displayText = ""
  let ts = performance.now()
  let recent_questions = questions.filter((q) => (ts - q.last_updated) < QUESTION_DISPLAY_TIMEOUT)
  for (var i = 0; i < recent_questions.length; i++) {
    displayText = displayText +  "<li>" +  recent_questions[i].text + "</li>";
  }
  questionsFeed.innerHTML = displayText;
}

function renderSuggestions() {
  var displayText = ""
  let ts = performance.now()
  let recent_questions = questions.filter((q) => (ts - q.last_updated) < QUESTION_DISPLAY_TIMEOUT)
  for (let i = 0; i < recent_questions.length; i++) {
    let question = recent_questions[i]
    displayText = displayText +  "<p>" +  question.text + "</p>";
    let recent_suggestions = question.suggestions.filter((s) => (ts - s.timestamp) < SUGGESTION_DISPLAY_TIMEOUT);
    for (let j = 0; j < recent_suggestions.length; j++) {
      displayText = displayText + "<li>" +  recent_suggestions[j].text + "</li>"
    }
  }
  suggestionsFeed.innerHTML = displayText;
}


// speech error handling
function onRecognitionError(event){
  console.log('error?');
  console.log(event);
}

function processSpeech() {
  let target_session_id = session_id;
  const recent_final = final_transcriptions.filter((t) => (performance.now() - t.timestamp) < TRANSCRIPTION_USE_TIMEOUT)
  const recent = recent_final.concat(unfinalized_transcriptions);

  if (recent.length == 0) {
    console.log("no recent transcription")
    return;
  }

  let transcriptions = recent.map((t) => t.text);
  let question_prompt = getQuestionPrompt(transcriptions);

  gptRequest(question_prompt, function (response) {

    if (!isActive || target_session_id !== session_id) { return; }

    let question = response.data.choices[0].text;
    console.log(question);
    if (!(question.includes("?"))) { return; }

    if (question in question_to_index) {
      let question_id = question_to_index[question]
      let q = questions[question_id]
      q["last_updated"] = performance.now()
    } else {
      questions.push({
        "text": question,
        "last_updated": performance.now(),
        "suggestions": []
      })
      let question_id = questions.length - 1;

      // this should make it async safe; probably can comment it out
      for (let i = 0; i < questions.length; i++) {
        if (questions[i].text == question){
          question_id = i
          break;
        }
      }
      question_to_index[question] = question_id
    }
    renderSuggestions();

    // conversation suggestions
    if (conversationEnabled) {
      let character = getCharacter();
      if (character != null) {
        let character_prompt = getCharacterPrompt(question, character);
        console.log(character_prompt);
        gptRequest(character_prompt, function(character_response) {
          if (!isActive || target_session_id !== session_id) { return; }
          let suggestion = character_response.data.choices[0].text;
          let parent_question_id = question_to_index[question];
          let parent_question = questions[parent_question_id];
          parent_question.suggestions.push({
            "text": suggestion,
            "timestamp": performance.now(),
          })
          renderSuggestions();
        });
      }
    }
    if (highlightEnabled) {
      let clues = currentSceneClues;
      let highlight_prompt = getHighlightPrompt(question, clues);
      console.log(highlight_prompt);
      gptRequest(highlight_prompt, function(highlight_response) {
        if (!isActive || target_session_id !== session_id) { return; }
        let suggestion = highlight_response.data.choices[0].text;
        console.log(suggestion);
        let clueArray = suggestion.trim()
          .slice(1, -1)
          .split(",")
          .map((e) => parseInt(e)- 1)
          .filter((e) => !isNaN(e) && e >= 0 && e < currentSceneClues.length)
        console.log(clueArray)
        for (const c of clueArray){
          highlightClue(c);
        }
      });
    }
  });
}

var processSpeechInterval = null;

function onRecognitionStart(event) {
  console.log("recognition start");
}

function onRecognitionEnd(event) {
  console.log('end');
  if (isActive) {
    updateIsActive(false);
  }
  renderAll();
}

var startButton =  document.getElementById('suggestions-start');
var resetButton =  document.getElementById('suggestions-reset');

var isActive = false;

function updateIsActive(newIsActive) {

  if (newIsActive === isActive) {
    return;
  }
  isActive = newIsActive;

  if (isActive) {
    processSpeechInterval = setInterval(processSpeech, 4000);
    if (!(recognition == null)) {
      recognition.start();
    }
    startButton.innerHTML = "Pause"
  } else {
    clearInterval(processSpeechInterval);
    if (!(recognition == null)) {
      recognition.stop(); 
    }
    startButton.innerHTML = "Go!"
  }
}

function getCharacter() {
  let choice = characterSelector.value
  if (currentScene in sceneSuggestionData) {
    let scene = sceneSuggestionData[currentScene]
    for (let i = 0; i < scene.length; i++) {
      if (scene[i].name === choice) {
        return scene[i];
      }
    }
  }
  return null;
}

function newSuggestionSession() {
  updateIsActive(false);
  renderSuggestionControls();
  session_id = Date.now();
  recognition = new SpeechRecognition();
  recognition.continuous = true;
  recognition.interimResults = true;
  recognition.onresult = (event) => onRecognitionResult(event);
  recognition.onstart = (event) => onRecognitionStart(event);
  recognition.onerror = (event) => onRecognitionError(event);
  recognition.onend = (event) => onRecognitionEnd(event);
  final_transcriptions = [];
  unfinalized_transcriptions = [];
  questions = [];
  question_to_index = {};
  renderAll();
}

startButton.onclick = function() {
  updateIsActive(!isActive);
}

resetButton.onclick = function() {
  newSuggestionSession();
}

// GPT 3
var API_KEY = ""
var OpenAI = null;

fetch('./.config.json')
    .then((response) => response.json())
    .then(function (json) {
      API_KEY = json["API_KEY"]
      OpenAI = axios.create({
        baseURL: 'https://api.openai.com/v1/',
        timeout: 100000,
        headers: {
          'Content-Type': 'application/json',
          'Access-Control-Allow-Origin': "*",
          'Authorization': 'Bearer ' + API_KEY
        }
      });
    });

 
function gptRequest(prompt, callback) {
  OpenAI({
    "method": "post",
    "url": "/completions",
    "data": {
      "model": "text-davinci-003",
      "prompt": prompt,
      "max_tokens": 200,
      "top_p": 1,
      "n": 1,
      "stream": false,
      "logprobs": null,
      "stop": "\n"
    },
  }).catch(function (error) {
    console.log(error.toJSON());
  }).then(function(response) {
    if (response.status === 200) {
      callback(response);
    }
  });
}

function renderAll(){
  renderTranscription();
  renderQuestions();
  renderSuggestions();
}

var suggestionsControls = document.getElementById("suggestions-control");
var characterSelector = document.getElementById("npc-select");
var suggestionsStatus = document.getElementById("suggestions-status");

function renderSuggestionControls(){
  if (currentScene in sceneSuggestionData) {
    let characters = sceneSuggestionData[currentScene].map((character) => character.name);
    if (characters.length > 0) {
      suggestionsControls.style.display = "block";
      suggestionsStatus.style.display = "none";
      characterSelector.disabled = false;
      startButton.disabled = false;
      resetButton.disabled = false;
      characterSelector.innerHTML = characters.map((character) => `<option value="${character}">${character}</option>`).join("\n")
      characterSelector.value = characters[0];
      return;
    }
  }
  suggestionsControls.style.display = "none";
  suggestionsStatus.style.display = "block";
  characterSelector.disabled = true;
  startButton.disabled = true;
  resetButton.disabled = true;
}

function getQuestionPrompt(transcription){

    var prompt = `Find and identify a question in an error-prone transcript

Input:
just a question
curious about it
what is your favorite color
it's raining today so

Output:
What is your favorite color?

Input:
so you are a barber, i believe
what's your favorite part of that job?
i think you're doing great

Output:
What is your favorite part of your job as a barber?

Input:
${transcription.map((t) => t.trim()).join("\n")}

Output:
`;

  return prompt;
}

function getCharacterPrompt(question, character){

  let description = character.description.join("\n")
  let clues = character.clues.map((clue) => "- " + clue).join("\n")

  let prompt = `${description}

${character.name} will share the following information only if asked about it directly: 
${clues}

As ${character.name}, you answer questions from the detective:

Q: What is your name?
A: My name is ${character.name}.

Q: What do you think about politics?
A: Oh, I don't know anything about that.

Q: Who am I?
A: You're a detective investigating George's disappearance, Vivian Sinclair.

Q: ${question}
A: `;
    return prompt;

}

var sceneSuggestionData = {
  "sadies_sob_story": [{
    "name": "Sadie Cain",
    "description": [
      "Sadie Cain is a garment worker engaged to George Preston. She believes that while the course of true love may not always run smooth, love still prevails.",
      "Sadie Cain speaks in the soft, defensive tone of someone who has gone through her story several times already. She's cried too long to have any tears left. Instead, her eyes reflect a quiet blankness.",
      "Sadie's fiancé, George Preston, disappeared three days ago under mysterious circumstances. She thinks the police are framing him for a murder, just like those articles Viv wrote about police frame-ups a few years ago. She wants Viv to find him and to prove him innocent."
    ],
    "clues": [
      "She met George at the New York Public Library. She loves George because she found him entirely different from your ordinary Joe. He read books about the human brain and the spirit world and all kinds of things. He thought a lot. George would have gone to college, only his family couldn't afford it.",
      "George works as an electrical repairman at Fuller's Electrical Repair, just a couple blocks north of Fulton Street in downtown Brooklyn.",
      "Sadie admits she doesn't see George every night, which the police took to mean he two- times her. They just don't understand George. Someday you'll hear about him as a famous inventor. At night, he works on building his machine and Mr. Fuller lets him use the workbench. Some nights, he comes by her place but others he works so late that he just sleeps at the shop. She mostly sees him on weekends.",
      "George was on the verge of an amazing breakthrough: a machine that was going to change everything. If asked what the machine does, Sadie falters. George never actually told her; he said",
      "George didn't have a lot of friends, but he grew up with one of his coworkers - Charlie Fitzpatrick. As kids, they'd planned to travel the world together.",
      "George rents a one-room apartment in one of the decrepit older buildings up by the Navy Yard. 'Just until we have enough money for one of the nicer new apartments.' The landlord, Mr. Simpson, won't let her into his room.",
      "Everyone persecuted George just for coming from a poor family, but he was going to make something of himself, Sadie knows it.",
      "If asked, she produces a photograph of a gangling young man with light hair and eyes, but seems reluctant to let it go. He seems to look at something beyond the photographer.",
      "The police questioned her several times, but all she knows is what they told her - someone in George's building got killed. And they insist George did it."
    ],
    "attitude": "positive"
  }],
  "fullers_electrical_repair": [{
    "name": "Petunia Adams",
    "description": [
      "Petunia Adams works at Fuller's Electrical Repair as Mr. Fuller's secretary.",
      "A well-scrubbed young woman of about 25 in a sensible cotton print frock, Petunia maintains an immaculate bun and an all-business attitude 'to keep the boys at bay.' She considers herself a kind of 'den mother' to the 'boys' in the shop, even those a decade older than herself. ",
      "She always thought George different from the other boys. Bit of a dreamer. Sometimes used to just stare off into space. Why, one time she thought she saw him squinting as though he were trying to see something just out of view."
    ],
    "clues": [
      "Yes, George worked on a machine after hours. Several of the boys have pet projects, and Mr. Fuller kindly lets them use his space.",
      "She doesn't know about George's device. Oh, but Richard was trying to build a bicycle-powered electric washer because his mother's farm doesn't yet have electricity. Something about generators. She thought that sounded very practical.",
      "George's looked more like a phonograph, or perhaps a projector like at the movies.",
      "No, he must have taken it with him because it's not here now."
    ],
    "attitude": "positive"
  }],
  "fuller_himself": [{
    "name": "Howard Fuller",
    "description": [
      "Howard Fuller is the founder of Fuller's Electrical Repair.",
      "Like many of those he now employs, Howard Fuller once dreamed of inventing something as revolutionary as the electric icebox or razor. Once he realized the insufficiency of his genius, he focused on something only slightly easier to achieve: making his business a success. He hires only the best, keeps them working from eight to six, and guarantees repaired items 'as good as new or your money back.'",
      "Fuller varies his posture between overlooking his domain, arms akimbo, and smoking a pipe with his feet on the desk."
    ],
    "clues": [
      "He last saw George four nights ago when he, Fuller, locked up. The boy stayed late to work on his device, same as always. But Fuller clarifies he doesn't play favorites: George supplies his own materials and must replace any tools he breaks.",
      "He locks up around 8 p.m. But several of the boys have keys, including George.",
      "If she wants to know more about George, she should talk to Charlie Fitzpatrick. Fuller indicates her on the floor below. Those two grew up together, and are still thick as thieves. It was George who talked him into hiring Charlie.",
      "Had he thought of George as a murderer? No, but you know those sensitive types and the police make a good case. Why else would he have run off ?",
      "George never leaves the device here; he must have taken it home to his apartment.",
      "He thinks the machine has something to do with radio waves, but doesn't know very much about it. George played his hand close to his chest.",
      "Either prompted by Viv's questioning him about the dame Charlie mentions, or remembering just as Viv turns to leave the office, Fuller brings up the other girl who came by on Saturday asking about George. 'Pearl something-or-other. She gave me a card. Ah, there it is.' From under a heap on his desk, he produces a card bearing the name Madame Isis Neferi, a phone number, a street address in Brooklyn Heights, and Temple of Nephthys. 'Madame Isis, that wasn't her, but she begged me to call her if George came back or I got a lead on what she called his ‘miracle machine.' Strange girl.'",
    ],
    "attitude": "neutral"
  }],
  "charming_charlie": [],
  "what_the_cops_know": [],
  "the_peculiar_death_of_myron_fink": [],
  "interviewing_the_neighbors": [],
  "georges_apartment": [],
  "questioning_pearl": [],
  "the_psychical_investigator": [],
  "temple_of_nephthys": [],
  "addie_needs_answers": [],
  "the_thing_in_the_morgue": [],
  "miracle_machine": [],
  "the_leg_breaker": [],
  "going_on_the_grid": [],
  "men_gone_missing": [],
  "charlie_comes_clean": [],
  "breaking_into_fullers": [],
  "sadie_and_the_scoop": [],
}

loadAll();


//***********************
//     HIGHLIGHT MODE
//***********************

function getHighlightPrompt(question, clues){

  let clueString = currentSceneClues.map((element, index) => `${index + 2}. ${element}`).join("\n")

  let prompt = `Given a list of statements, return a list of statement numbers that answer the given question. If no statements answer the question, return None.
  1. We are currently in New York City. 
  ${clueString}

Q: Where are we right now?
A: [1]

Q: What is my name?
A: None

Q: ${question}
A: `;
    return prompt;
}

// adapted from https://www.harrytheo.com/blog/2021/02/restart-a-css-animation-with-javascript/
function highlightClue(clueId) {

  let elementName = `clue-${clueId}`;
  var element = document.getElementById(elementName); 
  element.classList.remove("highlight"); 
  void element.offsetWidth; 
  element.classList.add("highlight");
  element.scrollIntoView();
 }