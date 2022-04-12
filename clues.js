 


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
  for (var i = 0; i < allClues.length; i++) {
    clueInfo.innerHTML = clueInfo.innerHTML + "<p>" + allClues[i] + "</p>";
  }
  
}