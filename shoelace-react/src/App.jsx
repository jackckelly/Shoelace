import { useState, useEffect } from 'react'
import mermaid from 'mermaid'
import './App.css'
import DB from './db.js'


const Views = {
	Scenes: "scenes",
	Clues: "clues",
	PlayerSheet: "player_sheet",
	Edges: "edges",
  Problems: "problems",
	Characters: "characters",
	Sources: "sources",
	InvestigativeAbilities: "investigative_abilities",
  GeneralAbilities: "general_abilities",
  AntagonistReactions: "antagonist_reactions",
  GMSuggestions:"gm_suggestions",
}

function App() {
  const [currentScene, setCurrentScene] = useState("sadies_sob_story")
  const [currentView, setView] = useState("scenes")
  const db = {};

  return ( 
    <div className="App">
      <div className="row">
        <button onClick={() => setView(Views.Scenes)}>Scenes</button>
        <button onClick={() => setView(Views.Clues)}>Clues</button>
        <button onClick={() => setView(Views.PlayerSheet)}>Player Sheet</button>
        <button onClick={() => setView(Views.Edges)}>Edges</button>
        <button onClick={() => setView(Views.Problems)}>Problems</button>
        <button onClick={() => setView(Views.Characters)}>Characters</button>
        <button onClick={() => setView(Views.Sources)}>Sources</button>
        <button onClick={() => setView(Views.InvestigativeAbilities)}>Investigative Abilities</button>
        <button onClick={() => setView(Views.GeneralAbilities)}>General Abilities</button>
        <button onClick={() => setView(Views.AntagonistReactions)}>Antagonist Reactions</button>
        <button onClick={() => setView(Views.GMSuggestions)}>GM Suggestions</button>
      </div>
      <div className="row">
        <div className="column">
          { currentView !== Views.Characters ?
              <SceneGraph setCurrentScene={setCurrentScene}/> 
              : <CharacterGraph/>
          }
        </div>
        <div className="column">
          { currentView === Views.Scenes &&
            <Scenes sceneName={currentScene} db={db}/>
          }
          { currentView === Views.Clues &&
            <Clues/>
          }
          { currentView === Views.PlayerSheet &&
            <PlayerSheet/>
          }
          { currentView === Views.Edges &&
            <Edges/>
          }
          { currentView === Views.Problems &&
            <Problems/>
          }
          { currentView === Views.Characters &&
            <Characters/>
          }
          { currentView === Views.Sources &&
            <Sources/>
          }
          { currentView === Views.InvestigativeAbilities &&
            <InvestigativeAbilities/>
          }
          { currentView === Views.GeneralAbilities &&
            <GeneralAbilities/>
          }
          { currentView === Views.AntagonistReactions &&
            <AntagonistReactions/>
          }
          { currentView === Views.GMSuggestions &&
            <GMSuggestions/>
          }
        </div>
      </div>
    </div>
  )
}



function Scenes({ sceneName, db }) {
  return (
    <h3>CURRENT SCENE: {sceneName}</h3>
  )
}

function Clues() {
  return (
    <h3>CLUES not yet implemented</h3>
  )
}

function PlayerSheet() {
  return (
    <h3>PLAYER SHEET not yet implemented</h3>
  )
}

function Edges() {
  return (
    <h3>EDGES not yet implemented</h3>
  )
}

function Problems() {
  return (
    <h3>PROBLEMS not yet implemented</h3>
  )
}

function Characters() {
  return (
    <h3>CHARACTERS not yet implemented</h3>
  )
}


function Sources() {
  return (
    <h3> SOURCES not yet implemented</h3>
  )
}

function InvestigativeAbilities() {
  return (
    <h3>INVESTIGATIVE ABILITIES yet implemented</h3>
  )
}

function GeneralAbilities() {
  return (
    <h3>GENERAL ABILITIES yet implemented</h3>
  )
}

function AntagonistReactions() {
  return (
    <h3>ANTAGONIST REACTIONS not yet implemented</h3>
  )
}

function GMSuggestions() {
  return (
    <h3>GM SUGGESTIONS not yet implemented</h3>
  )
}

function SceneGraph({setCurrentScene}) {
  

  var graphDefinition = "graph TD\nsadies_sob_story[<font color='white' class='node'>Sadie's Sob Story</font>]\nfullers_electrical_repair[Fuller's Electrical Repair]\ncharming_charlie[Charming Charlie]\nthe_psychical_investigator[The Psychical Investigator]\nthe_peculiar_death_of_myron_fink[The Peculiar Death of Myron Fink]\nfuller_himself[Fuller Himself]\ntemple_of_nephthys[Temple of Nephthys]\nthe_leg_breaker[The Leg Breaker]\ncharlie_comes_clean[Charlie Comes Clean]\nwhat_the_cops_know[What the Cops Know]\ninterviewing_the_neighbors[Interviewing the Neighbors]\ngeorges_apartment[George's Apartment]\naddie_needs_answers[Addie Needs Answers]\nmen_gone_missing[Men Gone Missing]\nbreaking_into_fullers[Breaking Into Fuller's]\nthe_thing_in_the_morgue[The Thing in the Morgue]\nquestioning_pearl[Questioning Pearl]\nmiracle_machine[Miracle Machine]\ngoing_on_the_grid[Going on the Grid]\nsadie_and_the_scoop[Sadie and the Scoop]\nsadies_sob_story --> fullers_electrical_repair\nsadies_sob_story --> the_peculiar_death_of_myron_fink\nsadies_sob_story --> what_the_cops_know\nfullers_electrical_repair --> fuller_himself\nfullers_electrical_repair --> charming_charlie\ncharming_charlie --> the_peculiar_death_of_myron_fink\ncharming_charlie --> fuller_himself\ncharming_charlie --> the_leg_breaker\ncharming_charlie --> temple_of_nephthys\nthe_psychical_investigator --> temple_of_nephthys\nthe_peculiar_death_of_myron_fink --> what_the_cops_know\nthe_peculiar_death_of_myron_fink --> interviewing_the_neighbors\nfuller_himself --> charming_charlie\nfuller_himself --> the_psychical_investigator\nfuller_himself --> temple_of_nephthys\nfuller_himself --> what_the_cops_know\nfuller_himself --> georges_apartment\ntemple_of_nephthys --> the_leg_breaker\ntemple_of_nephthys --> miracle_machine\ntemple_of_nephthys --> addie_needs_answers\nthe_leg_breaker --> charlie_comes_clean\nthe_leg_breaker --> breaking_into_fullers\ncharlie_comes_clean --> breaking_into_fullers\nwhat_the_cops_know --> the_peculiar_death_of_myron_fink\nwhat_the_cops_know --> the_thing_in_the_morgue\ninterviewing_the_neighbors --> georges_apartment\ngeorges_apartment --> questioning_pearl\ngeorges_apartment --> the_psychical_investigator\naddie_needs_answers --> men_gone_missing\nmen_gone_missing --> breaking_into_fullers\nbreaking_into_fullers --> sadie_and_the_scoop\nquestioning_pearl --> miracle_machine\nmiracle_machine --> going_on_the_grid\ngoing_on_the_grid --> breaking_into_fullers\n\nclassDef default fill:#333,stroke:#fff,color:white,stroke-width:4px;classDef completed fill:#777,stroke:#333,stroke-width:4px;";

  mermaid.initialize({
    startOnLoad: true,
    securityLevel: 'loose',
  });


  useEffect(() => {
    mermaid.contentLoaded();
    Array.from(document.getElementsByClassName("node default")).forEach((element) => {
      element.addEventListener("click", (e) => {
        let sceneName = element.getAttribute("id").split("-")[1];
        setCurrentScene(sceneName);
      })
    });
  })
  
  return (
    <div className="mermaid">{graphDefinition}</div>
  )

}

function CharacterGraph() {
}




export default App
