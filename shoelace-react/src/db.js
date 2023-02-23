

class DB {
    constructor(){
        //this.session = pl.create()
       // this.session.consult("./src/database.prolog");
    
        // Array of variable bindings, one per answer, returned by prolog query
        // You'll need to keep this in here to get the Prolog queries/bindings working
        this.bindings = [];
    
    }

    /*
    * Returns a callback function to pass to session.answers(). 
    * The parameter is the function for the callback to call (with the bindings as parameter)
    * when prolog has found all the answers. 
    */
    get_callback(funcWhenDone) 
    {
        var callbackFunc = function(answer) 
        {
            if (answer == false) 
            {
            // We're done finding answers. Execute funcWhenDone with the bindings.
            funcWhenDone(this.bindings);
            }
            else 
            {
            // We've gotten another non-false answer - add it to the bindings.
            this.bindings.push(answer);
            }
        }
        return callbackFunc;
    }

    sceneName(scene) 
    {
        var binding = function(answer) {
            answer.lookup("Name").id;
        }
        
        //this.session.query("scene_name(" + scene + ", Name).");
        return this.session.answer(binding);
    }
}

export default DB