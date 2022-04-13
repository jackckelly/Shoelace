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

var allClues = [];
var allCluesKnown = [];

loadClues();

function loadClues() {
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
  console.log(allCluesKnown);
  for (var i = 0; i < allClues.length; i++) {
    var checkbox;
      var clue_known = allCluesKnown[i];
      if (clue_known == "true") {
        checkbox = "<input type='checkbox' name='clue' checked>";
      } else {
        checkbox = "<input type='checkbox' name='clue'>";
      }
    clueInfo.innerHTML = clueInfo.innerHTML + "<p>" + checkbox + allClues[i] + "</p>";
  }
  
}


// When you click the checkbox for a clue, have this update the result in the database
$(document).on("click", "input[name='clue']", function () {
  console.log("clicking box");
  var checked = $(this).prop('checked');
  var clueText = this.nextSibling.data;//.trim().substring(3);
  //console.log(clueText);
  var binding = function(answer) {
    console.log(answer.lookup("PrevKnown"));
    var tag = answer.lookup("Clue");
    checkIfClueKnown(tag); 
  }

  var statement = "clue_known(Clue, PrevKnown),clue_description(Clue, " + clueText + "), retract( clue_known(Clue, PrevKnown) ), asserta( clue_known(Clue, " + checked + ")).";
  session.query(statement);
  session.answer(binding);
});

/*var binding = function(answer) {
      scene_output_area.innerHTML = scene_output_area.innerHTML + "<h2>" + answer.lookup("Name");  + "</h2>";
  }*/
function checkIfClueKnown(tag) {
  var binding = function(answer) {
    console.log("Checking if known...");
    console.log(answer.lookup("Known"));
  }
  console.log(tag);
  session.query("clue_known(" + tag + ", Known).");
  session.answer(binding);
}