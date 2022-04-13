:- set_prolog_flag(double_quotes, atom).
current_prolog_flag(character_escapes, true).


:- dynamic(scene/1).
:- dynamic(scene_name/2).
:- dynamic(scene_type/2).
:- dynamic(scene_visited/2).
:- dynamic(scene_lead_outs/2).
:- dynamic(scene_description/2).
:- dynamic(scene_clues/2).
:- dynamic(scene_characters/2).
:- dynamic(scene_challenges/2).

scene(sadies_sob_story).
scene_name(sadies_sob_story, "Sadie's Sob Story").
scene_type(sadies_sob_story, introduction).
scene_visited(sadies_sob_story, false).
scene_lead_outs(sadies_sob_story, what_the_cops_know).
scene_lead_outs(sadies_sob_story, fullers_electrical_repair).
scene_lead_outs(sadies_sob_story, the_peculiar_death_of_myron_fink).
scene_text(sadies_sob_story, "The scenario starts off for Vivian Sinclair on a Monday morning after she's turned in her most recent story. Invite the player to describe it, if she likes. She may rest on her laurels and joke around with the guys in the Herald Tribune's newsroom, or she may already be scouring a pile of newspaper clippings and notes for her next lead. Around 9 a.m., she gets a telephone call from downstairs.").
scene_text(sadies_sob_story, "Use this as an opportunity to establish Viv's newsroom and how she meets with interested parties. Does she have the receptionist send them up to her desk in a smoky room full of (mostly) men bent over typewriters and paper-strewn desks? Or does she meet with her Sources and sometime- clients in another location, such as a restaurant across the street? Have the player take a moment to describe something important that Viv keeps at her desk in the newsroom, or her regular order at the restaurant.").
scene_text(sadies_sob_story, "The player begins with one Problem card in hand ('Sucker for a Pretty Face,' 'Hand-to- Mouth,' 'Anything for a Story,' or 'Hot-Tempered'). If this is the player's first One-2- One session, explain how the acquisition and Countering of Problem cards works.").
scene_text(sadies_sob_story, "Viv's visitor is a fragile, waif-like girl. Sadie Cain speaks in the soft, defensive tone of someone who has gone through her story several times already. She's cried too long to have any tears left. Instead, her eyes reflect a quiet blankness.").
scene_text(sadies_sob_story, "Sadie's fiancé, George Preston, disappeared three days ago under mysterious circumstances. She thinks the police are framing him for a murder, just like those articles Viv wrote about police frame-ups a few years ago. She wants Viv to find him and to prove him innocent. She explains the situation as follows:").
scene_text(sadies_sob_story, "In response to specific questions, Sadie responds with the following information:").
scene_text(sadies_sob_story, "Sadie gives a Brooklyn address on the seedier side of Prospect Park where she can be reached.").
scene_text(sadies_sob_story, "Research: In the newsroom's archives, the only stories Viv can find about Fuller involve a 1929 lawsuit in which a competitor charged him with monopolistic practices. The competitor folded in the aftermath of the Crash, and dropped the suit.").
scene_clues(sadies_sob_story, someone_in_georges).
scene_clues(sadies_sob_story, george_went_to).
scene_clues(sadies_sob_story, she_didnt_learn).
scene_clues(sadies_sob_story, as_nobody_important).
scene_clues(sadies_sob_story, vivs_encountered_types).
scene_clues(sadies_sob_story, the_police_rarely).
scene_clues(sadies_sob_story, she_met_george).
scene_clues(sadies_sob_story, george_works_as).
scene_clues(sadies_sob_story, sadie_admits_she).
scene_clues(sadies_sob_story, george_was_on).
scene_clues(sadies_sob_story, george_didnt_have).
scene_clues(sadies_sob_story, george_rents_a).
scene_clues(sadies_sob_story, everyone_persecuted_george).
scene_clues(sadies_sob_story, if_asked_she).
scene_clues(sadies_sob_story, the_police_questioned).
scene_characters(sadies_sob_story, sadie_cain).
scene(fullers_electrical_repair).
scene_name(fullers_electrical_repair, "Fuller's Electrical Repair").
scene_type(fullers_electrical_repair, core).
scene_visited(fullers_electrical_repair, false).
scene_lead_ins(fullers_electrical_repair, sadies_sob_story).
scene_lead_outs(fullers_electrical_repair, fuller_himself).
scene_lead_outs(fullers_electrical_repair, charming_charlie).
scene_text(fullers_electrical_repair, "Several blocks north of Fulton, the main business street of downtown Brooklyn, Fuller's Electrical Repair occupies a two-story brick warehouse. Whether visiting Fuller or Fitzpatrick first, when Viv approaches Fuller's, she sees a small crowd of men waiting outside. Even in the city, work for electricians comes in piecemeal and more infrequently as the Depression worsens. A job with Fuller's guarantees a steady meal ticket. Once word got out that one of Fuller's employees has gone AWOL, several dozen men began lingering outside the shop in hopes of catching the big man's attention when he steps outside. If Viv stops to listen to the men talk, she learns that, the last few days, Fuller has asked one or two men to show him their skills. He must have high standards, however, as those men haven't come back.").
scene_text(fullers_electrical_repair, "Apart from a tidy desk in the front, the inside of Fuller's reflects its warehouse origins. A small mezzanine office, accessible by iron staircase and walkway, sits on top of a storage room at the back. On the high-ceilinged main floor, a dozen men work at individual benches over an assortment of smaller items (radios, sewing machines, irons) and a few large appliances (refrigerators, vacuum cleaners, washing machines). Most don't look up, but one or two glance her way. If Viv asks about Charlie Fitzpatrick immediately, a nearby worker indicates a shorter, broad-shouldered figure in a cap working near the back of the room. Otherwise, Mr. Fuller's secretary, Petunia Adams, comes bustling forward to meet her. A well-scrubbed young woman of about 25 in a sensible cotton print frock, Petunia maintains an immaculate bun and an all-business attitude 'to keep the boys at bay.' She considers herself a kind of 'den mother' to the 'boys' in the shop, even those a decade older than herself.").
scene_clues(fullers_electrical_repair, she_always_thought).
scene_clues(fullers_electrical_repair, yes_george_worked).
scene_clues(fullers_electrical_repair, she_doesnt_know).
scene_clues(fullers_electrical_repair, georges_looked_more).
scene_clues(fullers_electrical_repair, no_he_must).
scene_characters(fullers_electrical_repair, petunia_adams).
scene(fuller_himself).
scene_name(fuller_himself, "Fuller Himself").
scene_type(fuller_himself, core).
scene_visited(fuller_himself, false).
scene_lead_ins(fuller_himself, sadies_sob_story).
scene_lead_ins(fuller_himself, fullers_electrical_repair).
scene_lead_ins(fuller_himself, charming_charlie).
scene_lead_outs(fuller_himself, charming_charlie).
scene_lead_outs(fuller_himself, temple_of_nephthys).
scene_lead_outs(fuller_himself, georges_apartment).
scene_lead_outs(fuller_himself, what_the_cops_know).
scene_lead_outs(fuller_himself, the_psychical_investigator).
scene_text(fuller_himself, "Like many of those he now employs, Howard Fuller once dreamed of inventing something as revolutionary as the electric icebox or razor. Once he realized the insufficiency of his genius, he focused on something only slightly easier to achieve: making his business a success. He hires only the best, keeps them working from eight to six, and guarantees repaired items 'as good as new or your money back.'").
scene_text(fuller_himself, "The window of Fuller's office gives him a full view of the goings-on below. A set of large switches above duplicates those on the floor below, each with a surname written on tape under them. Viv may learn, or deduce, that these control the power to an electrician's desk in case of electrocution. A microphone and switch on Fuller's desk allow him to broadcast to the electricians downstairs. Fuller varies his posture between overlooking his domain, arms akimbo, and smoking a pipe with his feet on the desk.").
scene_text(fuller_himself, "When she enters the room, Fuller assumes Viv has come with a concern or to find out whether his shop could take an unusual repair job. Before she can get out her first question, he boasts about the quality of work his men provide and assures her that, no matter how big or small, they'll have it back to her in a week or her money back. 'Fuller [chuckle] quality than your everyday repairman. Tell a friend, save 15% on your next repair!'").
scene_text(fuller_himself, "Whether or not he respects Viv's work as an investigative journalist, Howard Fuller respects the power of the press. Prompted by questions, he provides the following information:").
scene_text(fuller_himself, "His statements about the machine, if he's asked, set off Viv's Assess Honesty mildly, but rather than expand on them further, he encourages her to talk to Charlie. 'Maybe there's another dame in his life. She'd know. She always knew about George's dames.'").
scene_text(fuller_himself, "If Viv brings up the question of George's replacement and what she heard from the men outside, he launches into a speech on the standards of Fuller's repair. These men may have met some people's standards, but not Howard Fuller's.").
scene_text(fuller_himself, "Despite the best efforts of Petunia Adams, Fuller litters his desk with letters, receipts, invoices, and newspapers. Viv notices an opened envelope addressed to George Preston, with 'Personal' written across the top in a neat hand (if the player asks, Evidence Collection notices that neat hand on other envelopes, suggesting Petunia opens and sorts the mail). She may make a Filch test to slip the letter off his desk and into her purse while Fuller enjoys the sound of his own voice, or Push Bargain to suggest that George's fiancée should have the letter.").
scene_clues(fuller_himself, he_last_saw).
scene_clues(fuller_himself, he_locks_up).
scene_clues(fuller_himself, if_she_wants).
scene_clues(fuller_himself, had_he_thought).
scene_clues(fuller_himself, george_never_leaves).
scene_clues(fuller_himself, he_thinks_the).
scene_clues(fuller_himself, either_prompted_by).
scene(charming_charlie).
scene_name(charming_charlie, "Charming Charlie").
scene_type(charming_charlie, core).
scene_visited(charming_charlie, false).
scene_text(charming_charlie, "Short and practical, Charlie (Charlene) Fitzpatrick always threw the dreamer George into relief From early in the morning until 6 p.m. or so, Monday through Saturday, Viv can find Charlie hunkered down at her workbench working on a radio set, sewing machine, or other problem of the day. She puts in longer hours than any of the men in the shop, except George, whose work on his own device doesn't count toward his paycheck. Like the men, she wears a shapeless, many-pocketed smock, but it doesn't protect her from the perpetual grease smudges she gets wiping her forehead. Charlie cuts her hair in a 'mannish' short style and ironically tips her cap and winks when Viv approaches, cheekily anticipating any surprise her gender creates").
scene_text(charming_charlie, "Once Charlie learns Viv's mission, she shows eagerness to help, though with an undercurrent of guilt. She reveals the basics of George's request and her own need to 'keep a date':").
scene_text(charming_charlie, "She also discloses the following in response to specific questions:").
scene_text(charming_charlie, "Assess Honesty notices that any questions about what Charlie did that night make her nervous. Viv may use Reassurance to convince her she only cares about what happened to George, not what Charlie does with her free time. Charlie discloses that she sometimes does work for 'other clients' at night to earn a little cash. Bureaucracy guesses that at least some of it is home wiring — for which she would need an additional license she doesn't have, and which could cause her some trouble later on. Charlie gets defensive, claiming that Fuller keeps wages low by pointing out he could replace all of them tomorrow with unemployed men who'd be happy to get half what they make. 'The men here aren't the only ones with family to support!'").
scene_clues(charming_charlie, george_asked_her).
scene_clues(charming_charlie, mr_fuller_would).
scene_clues(charming_charlie, she_has_known).
scene_clues(charming_charlie, charlie_evades_pinning).
scene_clues(charming_charlie, she_thinks_george).
scene_clues(charming_charlie, no_george_wouldnt).
scene_clues(charming_charlie, she_tried_taking).
scene_clues(charming_charlie, viv_isnt_the).
scene_characters(charming_charlie, charlie_fitzpatrick).
scene(what_the_cops_know).
scene_name(what_the_cops_know, "What the Cops Know").
scene_type(what_the_cops_know, alternate).
scene_visited(what_the_cops_know, false).
scene_lead_ins(what_the_cops_know, sadies_sob_story).
scene_lead_ins(what_the_cops_know, the_peculiar_death_of_myron_fink).
scene_lead_ins(what_the_cops_know, fuller_himself).
scene_lead_outs(what_the_cops_know, the_thing_in_the_morgue).
scene_lead_outs(what_the_cops_know, the_peculiar_death_of_myron_fink).
scene_text(what_the_cops_know, "Between police distrust of journalists as a type and of Viv in particular, Viv knows better than to approach the investigating officer for information. Instead, when she wants to know what the police know, she approaches her Source, Lt. O'Connor. The two rarely meet at the station, preferring instead to get burned coffee at one of the nearby diners which specialize in helping beat cops burn the midnight oil. If the player wants to establish further backstory of her relationship with O'Connor, invite her to describe the last case where the detective lent Viv a hand.").
scene_text(what_the_cops_know, "Despite his twenty years on the force, O'Connor blanches when Viv mentions the name of the man she's looking for. He's seen some shocking murders, but he's glad that this case didn't happen in his precinct. He tells Viv the basics he knows of the case:").
scene_text(what_the_cops_know, "And in response to specific questions:").
scene_clues(what_the_cops_know, the_original_call).
scene_clues(what_the_cops_know, because_nobody_could).
scene_clues(what_the_cops_know, as_far_as).
scene_clues(what_the_cops_know, oconnor_describes_the).
scene_clues(what_the_cops_know, this_preston_fellow).
scene_clues(what_the_cops_know, he_hasnt_seen).
scene_characters(what_the_cops_know, joseph_oconnor).
scene(the_peculiar_death_of_myron_fink).
scene_name(the_peculiar_death_of_myron_fink, "The Peculiar Death of Myron Fink").
scene_type(the_peculiar_death_of_myron_fink, core).
scene_visited(the_peculiar_death_of_myron_fink, false).
scene_lead_ins(the_peculiar_death_of_myron_fink, sadies_sob_story).
scene_lead_ins(the_peculiar_death_of_myron_fink, charming_charlie).
scene_lead_ins(the_peculiar_death_of_myron_fink, what_the_cops_know).
scene_lead_outs(the_peculiar_death_of_myron_fink, georges_apartment).
scene_lead_outs(the_peculiar_death_of_myron_fink, interviewing_the_neighbors).
scene_lead_outs(the_peculiar_death_of_myron_fink, the_thing_in_the_morgue).
scene_lead_outs(the_peculiar_death_of_myron_fink, what_the_cops_know).
scene_text(the_peculiar_death_of_myron_fink, "Preston's apartment building near the Brooklyn Navy Yard stands among a mixture of tenements and whitewashed, 'modernized' buildings. It had done service in the 18th century as a large rooming-house for factory workers. Around the turn of the century, new owners transformed it into multi-room apartments with makeshift kitchens, and studio apartments without. Preston could have walked to work and paid a fairly low price without living in one of the slummier buildings.").
scene_text(the_peculiar_death_of_myron_fink, "A thin, craggy man holding his handkerchief to his beaked nose, '[sniff ] allergies,' Clarence Simpson has managed the apartment building for the last seven years. He likes tenants who keep themselves to themselves. He had prided himself on his ability to weed out bad apples, and finds this whole business very upsetting. The recent unpleasantness in his building has him on high alert, so no matter when Viv arrives at the building, he pops his head out of the door to see whether she's a tenant or an intruder.").
scene_text(the_peculiar_death_of_myron_fink, "When he learns George's fiancée hired her, Simpson tells Viv that she can tell that Preston when she finds him that even if he beats the murder rap, he can't live here anymore. He can't tell her anything more than he's told the police (Alternate, 'What the Cops Know') and as for what the other tenants report seeing and hearing (Alternate, 'Interviewing the Neighbors'), Simpson chalks it up to mass hysteria from hearing Fink's death-scream and whatever fight preceded it.").
scene_text(the_peculiar_death_of_myron_fink, "Viv may Push Bargain to persuade Simpson to show her up to the apartments in question. When doing so, he hangs around, watching her and sniffing disapprovingly. Viv may also use a Cool Quick Test (Advance 4) to talk him into it or a Stealth Quick Test (Advance 4) to make her way unseen to Fink's or Preston's apartment door.").
scene_text(the_peculiar_death_of_myron_fink, "If Simpson guides her, he leads Viv to Fink's room on the building's third story. 'Cops finished with the place, but somebody's got to clean it.' Otherwise, Viv knows that Fink's apartment was next door to the number she has for George. If she chooses the apartment to the right, she gets a rather disgruntled housewife who informs her that she does not want to contribute to any charities or convert to any new religions, and slams the door on her. Fink's apartment, on the left, may be entered using Locksmith. The previously made Stealth Quick Test still applies unless the Keeper decides Viv has caused enough fuss to call for a new one.").
scene_text(the_peculiar_death_of_myron_fink, "The room contains nothing of note other than an enormous bloodstain on the floor and some splatter on the walls and bed. Streetwise tells Viv that the cops have torn it apart (alternate, 'What the Cops Know'). As Viv looks around the room, Simpson, if with her, volunteers the following:").
scene_text(the_peculiar_death_of_myron_fink, "Assess Honesty can tell he lies by omission here, hoping she won't ask. He provides more information below in response to specific questions:").
scene_text(the_peculiar_death_of_myron_fink, "During their conversation, several other tenants of the building filter into the hall and doorway, clearly eager to share their own versions of what happened that night (core, 'Interviewing the Neighbors'). If she is not seeing the room with Simpson, Viv may knock on doors, or encounter them at the GM's discretion — such as after the encounter with Pearl, which draws them out of their rooms.").
scene_clues(the_peculiar_death_of_myron_fink, on_that_fateful).
scene_clues(the_peculiar_death_of_myron_fink, other_tenants_in).
scene_clues(the_peculiar_death_of_myron_fink, nobody_could_get).
scene_clues(the_peculiar_death_of_myron_fink, he_had_to).
scene_clues(the_peculiar_death_of_myron_fink, simpson_reluctantly_admits).
scene_clues(the_peculiar_death_of_myron_fink, preston_wouldnt_answer).
scene_clues(the_peculiar_death_of_myron_fink, as_far_as_he).
scene_characters(the_peculiar_death_of_myron_fink, clarence_simpson).
scene(interviewing_the_neighbors).
scene_name(interviewing_the_neighbors, "Interviewing the Neighbors").
scene_type(interviewing_the_neighbors, core).
scene_visited(interviewing_the_neighbors, false).
scene_lead_ins(interviewing_the_neighbors, the_peculiar_death_of_myron_fink).
scene_lead_ins(interviewing_the_neighbors, georges_apartment).
scene_lead_outs(interviewing_the_neighbors, the_thing_in_the_morgue).
scene_text(interviewing_the_neighbors, "Like witnesses to even a minor event, Myron Fink's neighbors recount differing versions of what happened that night. Viv gathers the same main elements from any of the three of them (although you need not have each GMC repeat the same facts and may note the similarities instead):").
scene_text(interviewing_the_neighbors, "A middle-aged woman trying to hold onto the look of her youth in a faded, low-waisted dress, Minnie has lived in the building for about four years. She moved here from Albany with her husband Morris. Morris works nights as a bank guard, so Minnie normally sleeps days and tries to have a dinner ready for him when he gets home.").
scene_text(interviewing_the_neighbors, "A generous estimate puts Williams in his seventies, though his milky blue eyes still hold a canny light. Williams doesn't sleep very much anymore — 'Ain't no point at my age; I'll sleep soon enough' — and insists he was wide awake throughout the incident, although some people, with a sharp look at the others, accuse him of dreaming things.").
scene_text(interviewing_the_neighbors, "Williams feels embarrassed if Viv expresses any skepticism, and mutters something about magic lantern shows and practical jokes and how George probably frightened that Fink boy to death and ran away.").
scene_text(interviewing_the_neighbors, "Viv first spotted Violet Blake early in her conversation with Mr. Simpson, apparently on her way out of the building. Since then, Violet's changed her dress and put on a smarter hat: Viv has to admit, the girl looks good. The young woman approaches Viv with a hesitation that wouldn't appear so affected if she didn't quickly ask whether Viv had brought one of those newspaper photographers with her.").
scene_clues(interviewing_the_neighbors, at_first_they).
scene_clues(interviewing_the_neighbors, the_sound_might).
scene_clues(interviewing_the_neighbors, everything_stopped_a).
scene_clues(interviewing_the_neighbors, anyone_telling_her).
scene_clues(interviewing_the_neighbors, minnie_lives_in).
scene_clues(interviewing_the_neighbors, until_mr_fink).
scene_clues(interviewing_the_neighbors, strangely_once_the).
scene_clues(interviewing_the_neighbors, the_sound_made).
scene_clues(interviewing_the_neighbors, williams_lives_across).
scene_clues(interviewing_the_neighbors, he_heard_the).
scene_clues(interviewing_the_neighbors, after_a_few).
scene_clues(interviewing_the_neighbors, he_couldnt_find).
scene_clues(interviewing_the_neighbors, violet_lives_at).
scene_clues(interviewing_the_neighbors, violet_always_had).
scene_clues(interviewing_the_neighbors, growing_serious_violet).
scene_characters(interviewing_the_neighbors, minnie_boyer).
scene_characters(interviewing_the_neighbors, august_williams).
scene_characters(interviewing_the_neighbors, violet_blake).
scene(georges_apartment).
scene_name(georges_apartment, "George's Apartment").
scene_type(georges_apartment, core).
scene_lead_ins(georges_apartment, the_peculiar_death_of_myron_fink).
scene_lead_ins(georges_apartment, fuller_himself).
scene_lead_outs(georges_apartment, questioning_pearl).
scene_lead_outs(georges_apartment, temple_of_nephthys).
scene_lead_outs(georges_apartment, miracle_machine).
scene_lead_outs(georges_apartment, interviewing_the_neighbors).
scene_lead_outs(georges_apartment, the_psychical_investigator).
scene_text(georges_apartment, "If Simpson accompanies Viv, he leans against the closed door: arms folded, sniffing, watching. Preston's clothes hang neatly in the closet, but the police detectives who tossed this place left several desk drawers slightly ajar and forced the lock on the center desk drawer.").
scene_text(georges_apartment, "Viv's Evidence Collection skills lead her to check under the mattress. Clearly whoever did this hadn't worked crime scenes very long, or something about the case kept them from focusing. Taped to the bottom of the mattress, Viv finds a large folder full of schematics. Viv can tell that she's found designs for an electrical device, almost definitely George's mysterious machine. She could ask her Source Dr. Rice to help her decipher them (core, 'Miracle Machine'). If Simpson gives her trouble, Viv may fib that they belong to Fuller and she's retrieving them for him.").
scene_text(georges_apartment, "On the bookshelf, Viv finds a selection of engineering reference books and works on spiritualism and psychic phenomena. Even if she hasn't found the letter, Research recognizes titles by local author Hereward Carrington, Your Psychic Powers, and How to Develop Them and The Physical Phenomena of Spiritualism (alternate, 'The Psychical Investigator')").
scene_text(georges_apartment, "As Viv leaves the apartment, she (and possibly Simpson) nearly collides with a young woman crouching to pick the lock. The young woman flees. If Viv has gotten Pearl's description from Fuller or Charlie, she realizes that the woman matches it. If Pearl gets away and Viv visits or revisits the temple, you should use the 'Temple of Nephthys' sub-scene 'The Girl from the Apartment.' Her interactions with Pearl may lead into 'Interviewing the Neighbors,' who come into the hall to investigate the disturbance.").
scene_characters(georges_apartment, george_simpson).
scene_characters(georges_apartment, pearl_leblanc).
scene(questioning_pearl).
scene_name(questioning_pearl, "Questioning Pearl").
scene_type(questioning_pearl, alternate).
scene_lead_ins(questioning_pearl, georges_apartment).
scene_lead_ins(questioning_pearl, temple_of_nephthys).
scene_lead_outs(questioning_pearl, temple_of_nephthys).
scene_lead_outs(questioning_pearl, miracle_machine).
scene_text(questioning_pearl, "If Viv succeeds with Advantage in either of her interactions with Pearl, she drags the girl either back into the apartment or out onto the street (whichever seems narratively appropriate after the fight). She gets in a few questions before her frightened suspect clams up. Pearl LeBlanc appears to be in her late teens. She wears a simple suit, tailored to fit someone slightly larger and sagging slightly around her still-girlish body, and (if Viv caught her) she wobbles slightly in her heels.").
scene_text(questioning_pearl, "After a brief career as a stenographer, Pearl became a devotee and 'private secretary' to Madame Isis Neferi. It started ordinarily enough. Pearl's older sister (from whom she inherited the suit) died in childbirth, and the distraught young woman desperately sought any means of contacting her again. That was when she found the fliers for Madame Isis and the Temple of Nephthys. Madame Isis channeled her sister so convincingly that Pearl kept coming back. Now she works for Madame Isis and the temple, handling correspondence, managing private appointments, and running errands. With the right questions, Viv may learn the above as well as the following:").
scene_text(questioning_pearl, "Pearl willingly takes Viv to see Madame Isis, begging her not to reveal the actual details of their encounter. Viv may also threaten to use her police connections, drawing on Lt. O'Connor as an absent source of Intimidation, to bully Pearl into bringing her to the temple.").
scene_clues(questioning_pearl, george_had_called).
scene_clues(questioning_pearl, pearl_went_to).
scene_clues(questioning_pearl, as_far_as_pearl).
scene_clues(questioning_pearl, she_insists_that).
scene_characters(questioning_pearl, pearl_leblanc).
scene(the_psychical_investigator).
scene_name(the_psychical_investigator, "The Psychical Investigator").
scene_type(the_psychical_investigator, alternate).
scene_lead_ins(the_psychical_investigator, fuller_himself).
scene_lead_ins(the_psychical_investigator, georges_apartment).
scene_lead_outs(the_psychical_investigator, temple_of_nephthys).
scene_text(the_psychical_investigator, "The letter Viv may poach off Fuller's desk, or the books she finds in George's apartment, may lead her to consult Hereward Carrington, psychic investigator. That's investigator of psychics, not investigator who solves crime using psychic powers.").
scene_text(the_psychical_investigator, "Block letters spell out 'American Psychical Institute' at the top of the typewritten letter, dated the day of Preston's disappearance. Carrington thanks Preston for his kind letter. As Preston has deduced from his books, the investigator believes that some psychic phenomena cannot be explained away as mere illusion. He remains open to the possibility of scientific proof. Aren't scientists making new discoveries every year? Yes, Carrington would certainly like to see the invention once Preston finishes it.").
scene_text(the_psychical_investigator, "In the letter, Carrington pans a 'Temple of Nephthys you mention' and warns Preston against a certain type of predatory medium who has 'more in common with the sideshow than the spirit world.' He notes that while a medium might well speak to the dead, the kind of séance Preston describes Madame Isis performing relies primarily on theatrical elements and knowledge of the participants. As it does not involve other forms of psychic phenomena such as raps or telekinesis or even ghostly fingers, he cannot investigate it.").
scene_text(the_psychical_investigator, "Research: Viv may find out the following things about Carrington by making a short visit to the New York Public Library or going through the Herald Tribune's archives:").
scene_text(the_psychical_investigator, "Viv may either arrange to meet Carrington or choose to drop in at the address listed. He receives her graciously, as he hopes she might decide to feature the institute in one of her columns. Despite three-and-a-half decades in the United States, Carrington speaks with a trace of a British accent. His salt-and-pepper hair still waves as jauntily as it did in the author's photograph on books Viv may have seen. He has the eyes of a magician, deep set and penetrating.").
scene_text(the_psychical_investigator, "Carrington had not heard of his correspondent's disappearance or the incident at the apartment building. If Viv tells him of the death at George's building, the strange sights described by the neighbors, or even George's disappearance, he expresses unfeigned distress at levels appropriate to information received (e.g., concern if George has simply disappeared, great distress if he learns the neighbors' stories or a description of the body). Excusing himself a moment, he digs through a folder of letters before extracting one and presenting it to Viv as his only interaction with the young man. He encourages Viv to take the letter with her and wishes her the best in locating the young man.").
scene_text(the_psychical_investigator, "This scene primarily provides Viv the opportunity to 'hear' Preston describing his project in his own words. However, Carrington will answer any questions she puts to him, if he can. Information he may provide:").
scene_clues(the_psychical_investigator, british_by_birth).
scene_clues(the_psychical_investigator, carrington_has_carried).
scene_clues(the_psychical_investigator, in_1924_he).
scene_clues(the_psychical_investigator, he_founded_his).
scene_clues(the_psychical_investigator, the_telephone_directory).
scene_clues(the_psychical_investigator, most_so_called).
scene_clues(the_psychical_investigator, as_george_said).
scene_clues(the_psychical_investigator, if_viv_has).
scene_characters(the_psychical_investigator, hereward_carrington).
scene(temple_of_nephthys).
scene_name(temple_of_nephthys, "Temple of Nephthys").
scene_type(temple_of_nephthys, core).
scene_lead_ins(temple_of_nephthys, fuller_himself).
scene_lead_ins(temple_of_nephthys, questioning_pearl).
scene_lead_ins(temple_of_nephthys, the_psychical_investigator).
scene_lead_outs(temple_of_nephthys, miracle_machine).
scene_lead_outs(temple_of_nephthys, addie_needs_answers).
scene_lead_outs(temple_of_nephthys, the_leg_breaker).
scene_lead_outs(temple_of_nephthys, questioning_pearl).
scene_text(temple_of_nephthys, "After Viv first hears about the Temple of Nephthys, she may want to phone up or visit her occult Source, Stella Abrams. Stella has attended several of Madame Isis' 'communions' with the dead. While Madame Isis always starts by reading from the Book of the Dead, the communion soon devolves into a fairly ordinary séance with Egyptian trappings. Stella gives Viv directions to 'what used to be a café' in an artistic neighborhood of Brooklyn Heights.").
scene_text(temple_of_nephthys, "Either when talking to Stella or drawing on a memory of Esteban Manuel Aragon Gonzalez giving a lecture on archaeology, Viv recalls the famous story of Isis, Osiris, and Set. The goddess Nephthys, while Set's sister-consort, assisted her sister Isis in retrieving the fourteen missing pieces of her brother Osiris. Some paintings depict her as a hawk, flying above the Nile on the hunt for parts of Osiris' body.").
scene_text(temple_of_nephthys, "The Temple of Nephthys sits among small businesses and neat apartment buildings in a much better area of Brooklyn than George's apartment building. From the street, it looks like one of the storefront churches popping up in black communities throughout the city. Stenciled letters spell out its name over the door, and decorative ankhs and cartouches on its whitewashed façade ensure even casual passers-by don't mistake it for an ordinary church. Heavy curtains block any view of the interior, although one can see the word Café in light relief despite someone's best attempts to scrape it off the windows.").
scene_text(temple_of_nephthys, "If Viv arrives during the day, the temple is locked, although Madame Isis can still be found inside. When she knocks, Madame Isis herself opens it. If the player instead chooses to use Locksmith to open it, it requires a Difficulty 5 Stealth test to do so in broad daylight. On failure, Madame Isis hears her fumbling in the lock and jerks the door open, starting the interaction on a hostile footing.").
scene_text(temple_of_nephthys, "If Viv arrives at night, she discovers a 'communion' already under way and may slip into the back (see 'Communion with the Dead').").
scene_text(temple_of_nephthys, "In a film, Madame Isis Neferi (née Bertha Cook) might be played by an aging Louise Fletcher. Rather than spend her hard-grifted money on the exotic robes and turbans favored by some mediums, she cultivates a simple aesthetic of black dresses accented by a heavy silver ankh necklace. When imparting wisdom, she speaks in what she'd call a 'resonant' voice, steeples her fingers, and stares at the supplicant from under her heavy brows.").
scene_text(temple_of_nephthys, "Though essentially a con artist, Madame has bought enough into her own shtick that she remains open to the existence of spirits: and if a machine really could do what George claims? That would set her up for life, especially if she could convince George to allow her exclusive use of it. A use of Oral History in combination with specific questions gets Madame Isis to reveal the following:").
scene_text(temple_of_nephthys, "Ask the player whether or not Viv has lost someone in her own life. If so, Madame Isis senses 'a spirit floats about you, my dear, wishing to speak' (a guess on her part, but she's a great cold-reader) and invites her to participate in a 'Communion with the Dead,' held nightly. Communions start at 8 p.m. and last around two hours — longer if the spirits feel especially communicative. Otherwise, she indicates that if Viv has any further questions, perhaps she'd like to attend a 'communion' tonight.").
scene_text(temple_of_nephthys, "Viv's canny journalist's eye identifies several different types at the communion: an older widow, a bereaved parent, an idly curious spectator, and a handful of obvious regulars who acknowledge each other before taking their seats. Cloyingly sweet incense fills the room from several braziers. Madame Isis begins the service by reading passages from the Book of the Dead. Some in the audience mutter, 'Amen,' probably from force of habit.").
scene_text(temple_of_nephthys, "Other than the reading, the séance consists of ordinary channeling. Should she have learned that Viv has lost someone, Madame passes on a 'message' telling Viv that this person has found peace in the afterlife but there's something they want Viv to do for them — but she can't make it out before losing the connection. 'Perhaps next time.' If Viv asks to contact the spirit of George Preston, Madame Isis stalls with some patter about not being able to sense George's spirit among them. Streetwise: Madame's reputation might survive channeling a living person to a few ordinary clients, but she never forgets Viv's profession and has no desire to end up on the wrong side of an exposé.").
scene_text(temple_of_nephthys, "Should Viv decide to question any of the clients before or after the communion, she ends up talking to Addie Sims (alternate, 'Addie Needs Answers'). Otherwise, Madame Isis catches Viv's eye and nods her head significantly in Addie's direction just as Addie is on the verge of slipping out the door.").
scene_text(temple_of_nephthys, "If Viv has encountered Pearl at the apartments and the girl escaped — with or without the schematics — Madame Isis calls her into the room and demands she apologize to Viv. Pearl looks shaken. Even if Madame Isis sent her to search Preston's apartment, she certainly didn't intend her to get caught while doing so. She returns any purloined schematics, and Madame Isis asks Viv to forgive the young woman's impetuosity.").
scene_text(temple_of_nephthys, "Viv may ask the questions from 'Questioning Pearl,' under the watchful gaze of Madame Isis. She may have already gleaned some information from her conversations with the medium.").
scene_clues(temple_of_nephthys, madame_isis_describes).
scene_clues(temple_of_nephthys, in_her_assessment).
scene_clues(temple_of_nephthys, madame_isis_attributes).
scene_clues(temple_of_nephthys, if_asked_why).
scene_clues(temple_of_nephthys, now_that_she).
scene_clues(temple_of_nephthys, madame_isis_hopes).
scene_clues(temple_of_nephthys, if_asked_about).
scene_characters(temple_of_nephthys, madame_isis).
scene_characters(temple_of_nephthys, pearl_leblanc).
scene(addie_needs_answers).
scene_name(addie_needs_answers, "Addie Needs Answers").
scene_type(addie_needs_answers, alternate).
scene_lead_ins(addie_needs_answers, temple_of_nephthys).
scene_lead_outs(addie_needs_answers, men_gone_missing).
scene_text(addie_needs_answers, "Time hasn't treated Addie Sims kindly. Her shabby clothes hang around her thin frame, as though she's lost weight and hasn't had the money to buy anything new or the time and energy to take in her old clothes. Viv has seen her type before: women shepherding three children in a breadline while looking as though they never ate enough of the bread themselves. Play Addie as fidgeting, ready to bolt at any instant if she sees someone who knows her and might tell her minister. She's only come because nobody else could give her answers.").
scene_text(addie_needs_answers, "Viv finds her at the Temple of Nephthys, although she doesn't need to attend a 'communion' to do so. Viv can use Reassurance, telling her about her investigation into the disappearance of another electrician or simply approach Addie as another seeker after the spiritual. In response to the right questions about her husband's disappearance, Addie provides the following:").
scene_text(addie_needs_answers, "When Viv leaves, Addie tells her the address of the tenement where she lives, and begs Viv to tell her if she hears anything about Max. If Viv does so during the denouement, she earns Edge 11, 'Good Citizen.'").
scene_clues(addie_needs_answers, max_her_husband).
scene_clues(addie_needs_answers, as_far_as_she).
scene_clues(addie_needs_answers, she_tried_asking).
scene_clues(addie_needs_answers, addie_knows_about).
scene_clues(addie_needs_answers, its_not_like).
scene_clues(addie_needs_answers, yes_shes_visited).
scene_clues(addie_needs_answers, no_addie_hasnt).
scene_characters(addie_needs_answers, addie_sims).
scene(the_thing_in_the_morgue).
scene_name(the_thing_in_the_morgue, "The Thing in the Morgue").
scene_type(the_thing_in_the_morgue, pipe).
scene_lead_ins(the_thing_in_the_morgue, what_the_cops_know).
scene_lead_ins(the_thing_in_the_morgue, the_peculiar_death_of_myron_fink).
scene_lead_ins(the_thing_in_the_morgue, interviewing_the_neighbors).
scene_text(the_thing_in_the_morgue, "Besides answering questions about things which occurred before the story started, this scene serves as pipe to establish the horror that Viv will face if things go badly for her. She'll find the body at the official mortuary for the medical examiner, located in Bellevue Hospital's (see p. 173) Pathological Building on East 29th Street. The crowd of over a hundred thousand outpatients that flows in and out of the hospital daily provides her with some anonymity, although it thins out near the morgue.").
scene_text(the_thing_in_the_morgue, "If Viv spoke to Lt. O'Connor in 'What the Cops Know,' she may persuade him to pull some strings with the police coroner, Phil Lenz, for her to get in and see the body. If not, she'll need to come at night and break into the morgue's vault. Provided she passes a Stealth Quick Test to make it to the doors of the morgue, a simple use of the Locksmith ability lets Viv open the heavy metal doors.").
scene_text(the_thing_in_the_morgue, "Whether or not Lenz shows her the body, the scene follows a similar course. Viv must first walk through a room of sheet-covered wooden dissection tables and instruments to get to the mortuary's cold chamber. The mortuary handles the hospital's many dead, including victims of accidents and murder. During the day, medical students bend over a few corpses on the tables, bone saws, scalpels, and forceps in hand. At night, Viv moves through chilly silence and shadow.").
scene_text(the_thing_in_the_morgue, "Beyond the main dissection room, Viv comes to the vault where the bodies are stored. The building's subterranean stone construction provides a certain natural coolness which is augmented by a loud industrial refrigeration system, but they only do so much to hide the odor of death. Anyone who doesn't spend regular time down here initially chokes on the thick, sweet smell as they open the door. If present, Lenz offers Viv a scented handkerchief.").
scene_text(the_thing_in_the_morgue, "The shelves of the cold chamber make it resemble a grotesque bunk-house. Without Lenz's help, Viv takes a few minutes to locate the corpse. Using Evidence Collection to check ankles and toes for identification, she soon notes the bodies lie in a rough chronological order. Fink — what remains of him — rests in a top bunk. To get a good view of the body at night, Viv may pull up a small- but-sturdy stepladder which provides attendants adequate balance to move hundreds of pounds. During the day, Lenz calls in a single medical student to wrest Fink down.").
scene_text(the_thing_in_the_morgue, "By now, Fink's body has taken on the greenish- blue color of early decomposition. The coroner closed Fink's staring eyes, but his mouth continues to gape in horror. Round, purpling bruises score his torso and one arm. In the center of each bruise, Viv sees a puncture wound over a small, hard lump. Several lumps have been excised for analysis, leaving gouges. Below his torso? A bag holds in what intestines remain and below that — nothing. The ends of his flesh appear ragged, as if torn off with an act of extreme force.").
scene_text(the_thing_in_the_morgue, "Evidence Collection: Either through talking to Lenz or by reading the autopsy notes, Viv learns that Fink died of a 'massive coronary event.' In lay terms, his heart gave out. The bruising and mutila- tion to his body occurred immediately after death, leaving venom directly under the skin instead of filtering into his bloodstream. Give the player time to connect this venom to the puncture-marks Viv saw in the center of the bruises. The venom's composition doesn't match any known species, but it most closely resembles that of jellyfish. The autopsy notes include several photographs of the bruising. If visiting the morgue during the day, Viv may grab one on a Difficulty 4 Quick Filch Test.").
scene_text(the_thing_in_the_morgue, "Photography: If Viv shows photographs of Fink's corpse to her nurse Source, Louisa pulls down a book on animal attacks with a photograph of a leg with a similar coil of bruises around it. But how could a squid attack someone on dry land?").
scene_text(the_thing_in_the_morgue, "If the guards catch Viv attempting to break into the morgue, they'll hold her for Lt. MacAdams. The player certainly could try using a Fighting Quick Test to break free while one policeman phones the station, but this would result in a city-wide hunt for her. MacAdams picks her up in an unmarked car and drives her home. On the way, he lectures Viv about interfering with police investigations, emphasizes that a twisted killer remains on the loose, and warns her to keep her nose — and her notepad — out of the whole business. Possible responses to points she may raise:").
scene_text(the_thing_in_the_morgue, "When dropping her off at her apartment (or place of work, in the daytime), he notes that he won't escort her inside for the sake of her reputation, but vaguely threatens that he'll look her up if he hears about her interfering again in this case. See 'Antagonist Reactions.'").
scene_clues(the_thing_in_the_morgue, of_course_the).
scene_clues(the_thing_in_the_morgue, august_williams_clearly).
scene_clues(the_thing_in_the_morgue, murders_dont_always).
scene_clues(the_thing_in_the_morgue, yes_he_knows).
scene_characters(the_thing_in_the_morgue, joseph_oconnor).
scene_characters(the_thing_in_the_morgue, myron_fink).
scene(miracle_machine).
scene_type(miracle_machine, core).
scene_lead_ins(miracle_machine, georges_apartment).
scene_lead_ins(miracle_machine, questioning_pearl).
scene_lead_ins(miracle_machine, temple_of_nephthys).
scene_lead_outs(miracle_machine, going_on_the_grid).
scene_text(miracle_machine, "Viv may take the schematics for George's machine to either her scientific Source, Nettie Rice, or to Charlie for her electrical expertise. If the player holds the card 'Soft Spot' and doesn't consider the possibility of calling up Charlie on her own, the GM should prompt her. In keeping with Problem cards, the desire to see Charlie again sets up Viv for more trouble — this time with Fuller.").
scene_text(miracle_machine, "Nettie moves stacks of papers to the floor in order to create enough desk space to look at the schematics. If Viv takes them to Charlie, see 'Catching Fuller's Eye' below. Either way, Viv learns the following facts about the schematics from her contact:").
scene_text(miracle_machine, "If Madame Isis had the schematics briefly, their incompleteness explains why she gave them back without any reticence.").
scene_text(miracle_machine, "If Viv brings the schematics to Charlie at work, she attracts the attention of Mr. Fuller, who attempts to buy them from her: 'No good to you, might as well see what my boys... and Charlie... can make of 'em.' Turning him down may lead to an Antagonist Reaction later on.").
scene_clues(miracle_machine, these_schematics_are).
scene_clues(miracle_machine, from_what_she).
scene_clues(miracle_machine, for_something_probably).
scene_characters(miracle_machine, nettie_rice).
scene_characters(miracle_machine, charlie_fitzpatrick).
scene_characters(miracle_machine, howard_fuller).
scene(the_leg_breaker).
scene_name(the_leg_breaker, "The Leg-Breaker").
scene_type(the_leg_breaker, alternate).
scene_lead_ins(the_leg_breaker, temple_of_nephthys).
scene_lead_ins(the_leg_breaker, men_gone_missing).
scene_lead_outs(the_leg_breaker, charlie_comes_clean).
scene_lead_outs(the_leg_breaker, breaking_into_fullers).
scene_text(the_leg_breaker, "Like an Antagonist Reaction, this scene may occur at several points in the adventure. Logically, it takes place sometime after Viv visits the 'Temple of Nephthys' or investigates 'Men Gone Missing' and learns that a mob loan enforcer might have it out for Preston. However, if the player visits the temple early in the adventure, the GM may choose to hold this scene until Viv has also visited 'George's Apartment' or after she's seen 'The Thing in the Morgue.'").
scene_text(the_leg_breaker, "When leaving the temple, apartment building, or morgue (as described above), Viv must make the following test to realize that someone's shadowing her.").
scene_text(the_leg_breaker, "The man identifies himself as 'Marty.' Streetwise: Combining the name and profession, Viv can make an educated guess that this is 'Marty the Mouth,' a low-level enforcer for the Luciano crime family. Once Viv and Marty have squared off and she secures his cooperation, he reveals the following in response to questions:").
scene_text(the_leg_breaker, "After talking to Marty, Viv may attempt to resolve Problem 17. Possible solutions:").
scene_text(the_leg_breaker, "Bargain: Viv trades the notebook for some nonspecific favor in the future. Take on Problem 18 , 'I Owe You One.'").
scene_text(the_leg_breaker, "Describe how Viv uses a Push to convince Marty that he won't learn more from the notebook.").
scene_text(the_leg_breaker, "Reassurance: Viv promises to let Marty know when she finds George, or at least finds out what happened to him. Problem 19 , 'Two Masters.'").
scene_clues(the_leg_breaker, marty_is_also).
scene_clues(the_leg_breaker, preston_had_borrowed).
scene_clues(the_leg_breaker, yeah_he_waited).
scene_clues(the_leg_breaker, hes_heard_the).
scene_clues(the_leg_breaker, how_much_does).
scene_clues(the_leg_breaker, hed_hoped_to).
scene_clues(the_leg_breaker, marty_doesnt_know).
scene_clues(the_leg_breaker, the_night_preston).
scene_clues(the_leg_breaker, he_only_saw).
scene_characters(the_leg_breaker, marty_the_mouth).
scene(going_on_the_grid).
scene_name(going_on_the_grid, "Going on the Grid").
scene_type(going_on_the_grid, core).
scene_lead_ins(going_on_the_grid, miracle_machine).
scene_lead_ins(going_on_the_grid, interviewing_the_neighbors).
scene_lead_outs(going_on_the_grid, breaking_into_fullers).
scene_text(going_on_the_grid, "Just east of Union Square, the 26-story Consolidated Gas building stands out less for its giant clock than for the miniature temple and enormous bronze lantern at its pinnacle. Even if Viv has never gone inside the building before, she's used its nighttime illumination as a landmark.").
scene_text(going_on_the_grid, "Viv's contact, Marie Lewis, works in an open, overcrowded office on one of the middle floors. She and her fellow dispatchers take phone calls, map the locations and types of complaint, and relay the messages to teams of repairmen. The process involves a great deal of bustle, internal phone calls, and notes.").
scene_text(going_on_the_grid, "Bureaucracy: A quick observation of the dispatchers at work leads Viv to notice the im- portance of 'The Ledger,' a central book in which they record all incoming calls and resolutions. If Viv gets time to go through The Ledger, she may be able to find out if any similar disturbances have been reported. When she mentions it to Marie or the other women, they'll complain that their man- ager, Mr. Goddell, often takes the women to task over the number of open calls, entirely unjustly, as they can't control the speed or number of repair crews.").
scene_text(going_on_the_grid, "Viv may make any kind of Bargain with Marie for a chance to take notes on The Ledger. An obvious solution would be to offer to keep it updated for the rest of the dispatchers as she copies out relevant entries.").
scene_text(going_on_the_grid, "From The Ledger, Viv may piece together the following:").
scene_clues(going_on_the_grid, the_entry_for).
scene_clues(going_on_the_grid, by_the_time).
scene_clues(going_on_the_grid, the_ledger_shows).
scene_clues(going_on_the_grid, the_calls_north).
scene_clues(going_on_the_grid, at_the_center).
scene_characters(going_on_the_grid, marie_lewis).
scene(men_gone_missing).
scene_name(men_gone_missing, "Men Gone Missing").
scene_type(men_gone_missing, alternate).
scene_lead_ins(men_gone_missing, addie_needs_answers).
scene_lead_outs(men_gone_missing, the_leg_breaker).
scene_lead_outs(men_gone_missing, breaking_into_fullers).
scene_text(men_gone_missing, "The crowd outside Fuller's has thinned since Viv first visited the shop. Perhaps with George's disappearance now a thing of the past, fewer men think they have a chance at his job. Perhaps the odd goings-on with the other men Fuller's brought in have made them change their minds. She still encounters five or six men having a smoke and shooting the breeze.").
scene_text(men_gone_missing, "It takes a while to get the men to warm up to her. A judicious use of Bargain might offer them some of her cigarettes or to buy anyone who'll talk to her a cup of coffee. Viv may even want to pull out Inspiration: two good (well, close enough) men have disappeared in a single week: wouldn't they want their families to have answers if it was them? One of the men, Herbert Roach, appears willing to talk, but he'd rather do it somewhere other than here. Viv can get answers out of him at a nearby diner or in an alley out of sight of the main door. Once sufficiently warmed by coffee, a cigarette, or the fire of Inspiration, Roach nervously reveals the following:").
scene_text(men_gone_missing, "If Viv visits Fuller, he gives her the same brush- off he would in 'Fuller Himself' (p. 183), that the men's work didn't pass muster. Pressing the issue of the men, or otherwise going inside on this er- rand, means Viv faces the Challenge 'Getting Past the Guards' in 'Breaking Into Fuller's.'").
scene_text(men_gone_missing, "Viv may decide to make especially sure about the missing men, in which case Roach gives her names and buildings of three he can think of, and she gets the attached responses from wives:").
scene_clues(men_gone_missing, hes_only_here).
scene_clues(men_gone_missing, far_as_he).
scene_clues(men_gone_missing, why_doesnt_he).
scene_clues(men_gone_missing, no_he_hasnt).
scene_clues(men_gone_missing, the_really_strange).
scene_clues(men_gone_missing, wife_rose_hasnt).
scene_clues(men_gone_missing, no_his_wife).
scene_clues(men_gone_missing, no_wife_if).
scene_characters(men_gone_missing, herbert_roach).
scene(charlie_comes_clean).
scene_name(charlie_comes_clean, "Charlie Comes Clean").
scene_type(charlie_comes_clean, alternate).
scene_lead_ins(charlie_comes_clean, the_leg_breaker).
scene_lead_outs(charlie_comes_clean, breaking_into_fullers).
scene_text(charlie_comes_clean, "Armed with the knowledge that Charlie's been holding out on her, Viv may wish to question her again. At first, Charlie vehemently insists that she told Viv everything she knows, taking great offense that Viv doubts her word. Once Viv reveals her new information, Charlie's resistance breaks down and she confesses her full knowledge of that night.").
scene_text(charlie_comes_clean, "As far as Charlie knows, George could have split. She came back late to drop off some equipment she'd... borrowed. Normally it was just George there, working on his machine. She wryly admits that she probably didn't have to return the equipment as long as she brought it into work the next day, but she liked to make sure George went home and got at least a little shut-eye.").
scene_text(charlie_comes_clean, "Viv may recognize Charlie's fear of having her name attached to this information. It takes Reassurance to convince Charlie that Viv won't name her as a source in print or go straight to Fuller with anything Charlie tells her. All she knows is she found Mr. Fuller at George's desk, looking over some of his schematics. The machine was there too, but no George. Fuller convinced her to help 'put it away' for safekeeping and said George must have forgotten when he left. That wasn't like George, but Charlie thought no harm would be done if they put it away at the shop. George had been worked up, after all — maybe he was frustrated. She figured George would come in the next day, same as always.").
scene_text(charlie_comes_clean, "But then George didn't come in, and eventually the police did. She tried talking to Mr. Fuller about it, only, the night before, Fuller saw the tools Charlie had borrowed. Now Fuller's threatening her into silence with the threat not just of losing her job ('I've got a mother at home and a kid sister. It took George pushing to get me this job. I'd have to go back to a waitress' salary and men pinching me') but of reporting her to the police for theft. If the police booked her for that, they'd probably find out she's been wiring houses too — off the books and without a license ('I want to put my sister through college so she can get out of this place'). Things could get real bad for her. She can't prove Fuller knows anything — what kind of evidence is finding him in his own shop at night? She's been keeping quiet, but it eats her up inside.").
scene_text(charlie_comes_clean, "If Viv makes the request while Pushing with Inspiration or Flattery, she may persuade Charlie to investigate Fuller's with her. Alternately, not bringing Charlie (or losing her if Viv gets knocked out) may provide a more satisfying horror ending in 'Breaking into Fuller's.' If the player wants more muscle, she may also consider bringing a Source, Esteban Manuel Aragon Gonzalez or even Lt. O'Connor, or Marty if he owes her a favor.").
scene_text(charlie_comes_clean, "As in 'Men Gone Missing,' if she bursts into Fuller's to question Charlie the second time, Viv faces the Challenge 'Getting Past the Guards' in 'Breaking into Fuller's.'").
scene_characters(charlie_comes_clean, charlie_fitzpatrick).
scene(breaking_into_fullers).
scene_name(breaking_into_fullers, "Breaking Into Fuller's").
scene_type(breaking_into_fullers, conclusion).
scene_lead_ins(breaking_into_fullers, going_on_the_grid).
scene_lead_ins(breaking_into_fullers, men_gone_missing).
scene_lead_ins(breaking_into_fullers, charlie_comes_clean).
scene_lead_outs(breaking_into_fullers, sadie_and_the_scoop).
scene_text(breaking_into_fullers, "If Viv has re-questioned Fuller, come into the building to question Charlie a second time, or spent too much time talking to men outside his shop, Fuller gets wise to her line of thinking and hires some extra protection. The Keeper may also deploy them if Viv lets a night elapse between her conversation with Charlie and breaking in: Charlie's begun to think about going to the police, and Fuller can see it in her eyes. Otherwise skip 'Getting Past the Guards.'").
scene_text(breaking_into_fullers, "Outside the building, the streetlights begin to fritz. Assuming Viv gets safely past any guards, a use of Locksmith gets her through the back door, into a darkened storage room in the rear of the shop. Through the door she can see a crack of flickering light. She hears a non-mechanical hum: an eerie sound that makes her think of sailors' descriptions of the song of whales.").
scene_text(breaking_into_fullers, "Viv can glance through the door long enough to see a figure tied to a chair and strange beings floating in the harsh spotlight around him. The strange beings appear blobby and luminescent, but alien and disturbing. If Viv neither brought Charlie with her and the scene 'Charlie Comes Clean' didn't occur immediately previous to this, she recognizes the figure in the chair as Charlie. In this case, players holding 'Soft Spot' take a −2 to either of the following Challenges. Otherwise, it's one of the job-seekers she has seen massed outside Fuller's. Just then, a swirling mass of translucent tentacles moves in from the edge of the spotlight. She may choose to look away and examine the 'Body in the Chair' afterward; to watch and face the test 'Watching the Devourer;' or to burst in and interrupt, in which case the action skips to 'They Came from Beyond.' Examining the corpse after 'Watching the Devourer' does not trigger the 'Body in the Chair' test.").
scene_text(breaking_into_fullers, "The action is over in a matter of horrifying moments. A wise player would have Viv look away, in which case she hears squishing, snapping, and a muffled scream. If Viv keeps watching, she sees a writhing, iridescent mass of tentacles and claws swarm over the body, which lets out a muffled scream before being devoured. The tentacles wrap it tight, and pincers begin snipping off pieces of flesh and passing them into a dark maw, eventually devouring the flesh and organs, leaving parts of a skeleton with ragged ends of muscle and tissue hanging off. The body's clothes, neatly snipped by the pincers, lie on the floor at its feet. Once the beast ceases feeding, Viv can sense it looking for its next prey — at which point it suddenly vanishes.").
scene_text(breaking_into_fullers, "If Viv brought company, they pass out as Viv undergoes either of the next two tests. If Viv fails her run-ins with Fuller, she comes to with her companion tied up beside her. Otherwise, she can shake them back to a dazed consciousness and have them help her handle Fuller.").
scene_text(breaking_into_fullers, "Use the description of what happened to it to formulate an approximation of what she finds.").
scene_text(breaking_into_fullers, "Either way, if she examines the body and scrutinizes the seemingly empty warehouse, she must make the following test to 'Dodge the Chloroform.").
scene_text(breaking_into_fullers, "Whether he shouts it down from his darkened office with his hand on the switch that powers Preston's machine or mutters it while tied to the chair himself, Fuller can fill Viv in on the details of the situation. By now, she might be surprised to learn that he didn't kill George Preston, but he pushes the point, ignoring the collateral damage he has caused since.").
scene_text(breaking_into_fullers, "George Preston caused the first two deaths, Fink's and his own. The first was an accident. The light from Fink's room must have drawn the at- tention of the creature while it ignored Preston's lightless room. That night after work, with Charlie having slipped out, Preston broke down and con- fessed the whole thing to Fuller, begging the older man to destroy his device — but only after he let beasts from beyond kill him in the same way they had eaten Fink. To him, this seemed like the only way he could atone for Fink's death. Fuller didn't believe a word of it, instead thinking the kid had finally snapped from too many nights working late. Maybe he'd killed his neighbor, but nothing else made sense.").
scene_text(breaking_into_fullers, "Only after Fuller watched from his darkened office did he believe Preston's story. He threw the emergency switch to cut power to the kid's bench, but it was too late. Viv senses excitement, rather than horror in his voice. In Fuller's opinion Preston was a coward, afraid of his own success. If the world at the edge of our vision isn't made up of ghosts but of something much more horrible, that just makes his invention more valuable.").
scene_text(breaking_into_fullers, "All Fuller needs now are those damn schematics so he can reproduce the machine — as a weapon. With the news from Europe, he knows it'll be a seller's market soon enough and this could change things the way gas did in the Great War. And Charlie (if he killed or captured her)? He could tell it was only a matter of time before she went to the police — doesn't have the sense to keep her head down.").
scene_text(breaking_into_fullers, "The thing Viv saw? That isn't the only kind of beast out there, that's just his 'pet' — the one who's learned to come when Fuller switches on the device. He's seen far more than that: big, stupid, whale-like blobs and swarms of tiny creatures which pick over and devour the remains. You'd never know anyone had died. (Fuller isn't naïve about his 'pet.' He switches off the machine once it loses interest in a body, only switching it on a few minutes later to attract the scavengers who remove the corpse. If the 'pet' can see beyond the light, Fuller doesn't want to find out firsthand.)").
scene_text(breaking_into_fullers, "Her head splitting, Viv comes back to full con- sciousness to find herself tied to a chair (with any companions beside her) on the main floor of the repair shop. Lights from the workbenches, meant to illuminate detail work, encircle her in a painful glare. She has difficulty making out any details be- hind the brightness. Once Fuller sees she's woken up, he monologues details from 'Fuller Fesses Up' above as he switches on the machine, triggering the test 'They Came from Beyond.'").
scene_text(breaking_into_fullers, "Though Viv gets a chance to escape, the ma- chine begins to take effect, revealing sights and sounds from a plane of reality bordering on our own. It takes some time for the creature to realize Fuller has set out a second meal. In the meantime, other strange beasts walk or float by Viv as she takes fights for Stability and takes stock of her situation.").
scene_text(breaking_into_fullers, "After either rushing in to save the captive in the chair, or being captured by Fuller and making the Stability Challenge 'They Came from Beyond' (whether Advance or Setback), Viv may attempt to escape without being eaten. She may use Quick Tests (Advance 4+, but any failed test increases the Difficulty of the next Quick Test of any kind by 1) as proposed by the player. If tied up by Fuller, she can use Athletics to untie her hands or Preparedness to have a pocketknife Fuller didn't think to check for. A successful Quick Test of Athletics or Fleeing, if Fuller has spotted her, gets her into the darkness where she can pull the plug to the machine, flip the wall switch to the desk, smash the machine, shoot it (the canonical method of destruction), or even propose a way to switch on the light in Fuller's office, turning the creature's attention to him. If she fails the tests and the Difficulty gets too high? Move on to the coda and Viv's last thoughts.").
scene_text(breaking_into_fullers, "How Viv resolves the situation if she escapes the creatures depends entirely on the player and her goals. She may wish to hold Fuller at gunpoint, if she has a gun, and force him to confess to his crimes. She may knock him cold or shoot him in the legs, and leave him for the police. She may prefer to rely on her two dice in Fleeing and try to grab any schematics (appropriate on whatever the GM considers a high success) as she escapes, calling in a tip for MacAdams to check out the repair shop.").
scene_characters(breaking_into_fullers, howard_fuller).
scene_characters(breaking_into_fullers, charlie_fitzpatrick).
scene(sadie_and_the_scoop).
scene_name(sadie_and_the_scoop, "Sadie and the Scoop").
scene_type(sadie_and_the_scoop, denouement).
scene_lead_ins(sadie_and_the_scoop, breaking_into_fullers).
scene_text(sadie_and_the_scoop, "After wrapping things up at Fuller's, Viv can report back to Preston's fiancée. How much she chooses to reveal is up to the player. Perhaps Sadie only needs to know that her fiancé's device backfired, killing him, and his boss covered it up. Sadie mourns, but accepts that sometimes brilliant inventors pay a price for their genius. Viv gets the sense that even if she moves on, Sadie will always canonize George in her mind. Viv may use Edges such as 'Good Citizen' or 'Marty's Respect' to talk someone into finding Sadie another job.").
scene_text(sadie_and_the_scoop, "Did Viv leave Fuller alive and not call the police? If so, Petunia Adams finds him the next morning, swinging from the iron walkway to his office. Viv hears about this when a fellow journalist covering the story remembers her interest in the place.").
scene_text(sadie_and_the_scoop, "If Viv retrieves the schematics but does not destroy them, she comes home several days later to find out from her landlady that the police raided her apartment and confiscated some drawings they said were stolen from their investigation. She can only imagine where they might end up.").
scene_text(sadie_and_the_scoop, "As for Charlie, if she somehow survived the ordeal, Viv may make overtures — but learns that she plans to take her mother and sister and leave the city. She wants to put as much distance between her and these horrors as she can — though she'll never be able to shake off her newfound knowledge.").
scene_text(sadie_and_the_scoop, "Use these possible endings to help the player craft a suitable coda for the story.").


:- dynamic(clue/1).
:- dynamic(clue_description/2).
:- dynamic(clue_known/2).
:- dynamic(clue_leads_to/2).

clue(someone_in_georges).
clue_description(someone_in_georges, "Someone in George's apartment building was murdered the day before he disappeared. She gives an address and third-story apartment number near the Brooklyn Navy Yard.").
clue_known(someone_in_georges, false).
clue(george_went_to).
clue_description(george_went_to, "George went to work the next day, but no one's seen him since. That was Thursday. He didn't come to work Friday and wasn't in his building.").
clue_known(george_went_to, false).
clue(she_didnt_learn).
clue_description(she_didnt_learn, "She didn't learn any of this until the police tore her place apart on Saturday, then came to her work and grilled her about George and where he might have gone. She's been looking for him ever since.").
clue_known(she_didnt_learn, false).
clue(as_nobody_important).
clue_description(as_nobody_important, "As 'nobody important, just a garment worker... or I was until the police told the floor manager my fiancé was a murderer' Sadie doesn't have the money to hire one of those private investigators.").
clue_known(as_nobody_important, false).
clue(vivs_encountered_types).
clue_description(vivs_encountered_types, "Assess Honesty: Viv's encountered types who try to get their loved ones a trial in the press before it ever goes to court. Most of the time, they know the guy did it. This girl seems utterly convinced of her fiancé's innocence.").
clue_known(vivs_encountered_types, false).
clue(the_police_rarely).
clue_description(the_police_rarely, "Streetwise: The police rarely care about getting the right guy when both victim and suspect come from the lower strata. If this case looks open and shut to them, they'll arrest George as soon as they find him and call it a day.").
clue_known(the_police_rarely, false).
clue(she_met_george).
clue_description(she_met_george, "She met George at the New York Public Library. She loves George because she found him entirely different from your ordinary Joe. He read books about the human brain and the spirit world and all kinds of things. He thought a lot. George would have gone to college, only his family couldn't afford it.").
clue_known(she_met_george, false).
clue(george_works_as).
clue_description(george_works_as, "(Core, 'Fuller's Electrical Repair') George works as an electrical repairman at Fuller's Electrical Repair, just a couple blocks north of Fulton Street in downtown Brooklyn.").
clue_known(george_works_as, false).
clue_leads_to(george_works_as, fullers_electrical_repair).
clue(sadie_admits_she).
clue_description(sadie_admits_she, "Sadie admits she doesn't see George every night, which the police took to mean he two- times her. They just don't understand George. Someday you'll hear about him as a famous inventor. At night, he works on building his machine and Mr. Fuller lets him use the workbench. Some nights, he comes by her place but others he works so late that he just sleeps at the shop. She mostly sees him on weekends.").
clue_known(sadie_admits_she, false).
clue(george_was_on).
clue_description(george_was_on, "George was on the verge of an amazing breakthrough: a machine that was going to change everything. If asked what the machine does, Sadie falters. George never actually told her; he said she'd have to see for herself.").
clue_known(george_was_on, false).
clue(george_didnt_have).
clue_description(george_didnt_have, "(Core, 'Charming Charlie') George didn't have a lot of friends, but he grew up with one of his coworkers — Charlie Fitzpatrick. As kids, they'd planned to travel the world together.").
clue_known(george_didnt_have, false).
clue_leads_to(george_didnt_have, charming_charlie).
clue(george_rents_a).
clue_description(george_rents_a, "Core, 'The Peculiar Death of Myron Fink') George rents a one-room apartment in one of the decrepit older buildings up by the Navy Yard. 'Just until we have enough money for one of the nicer new apartments.' The landlord, Mr. Simpson, won't let her into his room.").
clue_known(george_rents_a, false).
clue_leads_to(george_rents_a, the_peculiar_death_of_myron_fink).
clue(everyone_persecuted_george).
clue_description(everyone_persecuted_george, "Everyone persecuted George just for coming from a poor family, but he was going to make something of himself, Sadie knows it.").
clue_known(everyone_persecuted_george, false).
clue(if_asked_she).
clue_description(if_asked_she, "If asked, she produces a photograph of a gangling young man with light hair and eyes, but seems reluctant to let it go. He seems to look at something beyond the photographer.").
clue_known(if_asked_she, false).
clue(the_police_questioned).
clue_description(the_police_questioned, "(Alternate, 'What the Cops Know') The police questioned her several times, but all she knows is what they told her — someone in George's building got killed. And they insist George did it.").
clue_known(the_police_questioned, false).
clue_leads_to(the_police_questioned, what_the_cops_know).
clue(she_always_thought).
clue_description(she_always_thought, "She always thought George different from the other boys. Bit of a dreamer. Sometimes used to just stare off into space. Why, one time she thought she saw him squinting as though he were trying to see something just out of view.").
clue_known(she_always_thought, false).
clue(yes_george_worked).
clue_description(yes_george_worked, "Yes, George worked on a machine after hours. Several of the boys have pet projects, and Mr. Fuller kindly lets them use his space.").
clue_known(yes_george_worked, false).
clue(she_doesnt_know).
clue_description(she_doesnt_know, "She doesn't know about George's device. Oh, but Richard was trying to build a bicycle-powered electric washer because his mother's farm doesn't yet have electricity. Something about generators. She thought that sounded very practical.").
clue_known(she_doesnt_know, false).
clue(georges_looked_more).
clue_description(georges_looked_more, "George's looked more like a phonograph, or perhaps a projector like at the movies.").
clue_known(georges_looked_more, false).
clue(no_he_must).
clue_description(no_he_must, "No, he must have taken it with him because it's not here now.").
clue_known(no_he_must, false).
clue(he_last_saw).
clue_description(he_last_saw, "He last saw George four nights ago when he, Fuller, locked up. The boy stayed late to work on his device, same as always. But Fuller clarifies he doesn't play favorites: George supplies his own materials and must replace any tools he breaks.").
clue_known(he_last_saw, false).
clue(he_locks_up).
clue_description(he_locks_up, "He locks up around 8 p.m. But several of the boys have keys, including George.").
clue_known(he_locks_up, false).
clue(if_she_wants).
clue_description(if_she_wants, "(Core, 'Charming Charlie') If she wants to know more about George, she should talk to Charlie Fitzpatrick. Fuller indicates her on the floor below. Those two grew up together, and are still thick as thieves. It was George who talked him into hiring Charlie.").
clue_known(if_she_wants, false).
clue_leads_to(if_she_wants, charming_charlie).
clue(had_he_thought).
clue_description(had_he_thought, "(Alternate, 'What the Cops Know') Had he thought of George as a murderer? No, but you know those sensitive types and the police make a good case. Why else would he have run off ?").
clue_known(had_he_thought, false).
clue_leads_to(had_he_thought, what_the_cops_know).
clue(george_never_leaves).
clue_description(george_never_leaves, "(Core 'George's Apartment') George never leaves the device here; he must have taken it home to his apartment.").
clue_known(george_never_leaves, false).
clue_leads_to(george_never_leaves, georges_apartment).
clue(he_thinks_the).
clue_description(he_thinks_the, "He thinks the machine has something to do with radio waves, but doesn't know very much about it. George played his hand close to his chest. [Not entirely false. He's on the hunt for schematics.]").
clue_known(he_thinks_the, false).
clue(either_prompted_by).
clue_description(either_prompted_by, "(Core, 'Temple of Nephthys') Either prompted by Viv's questioning him about the dame Char- lie mentions, or remembering just as Viv turns to leave the office, Fuller brings up the other girl who came by on Saturday asking about George. 'Pearl something-or-other. She gave me a card. Ah, there it is.' From under a heap on his desk, he produces a card bearing the name Madame Isis Neferi, a phone number, a street address in Brooklyn Heights, and Temple of Nephthys. 'Madame Isis, that wasn't her, but she begged me to call her if George came back or I got a lead on what she called his ‘miracle machine.' Strange girl.'").
clue_known(either_prompted_by, false).
clue(george_asked_her).
clue_description(george_asked_her, "George asked her to stay late the last night anyone saw him, seemed down in the dumps, but Charlie had a date and figured on talking to him Friday morning. George's depressed mood came on suddenly. Just the day before, he had 'the same look he got when he first heard voices on his crystal radio set!' Charlie assumed the glum mug meant he had been on the wrong track after all.").
clue_known(george_asked_her, false).
clue(mr_fuller_would).
clue_description(mr_fuller_would, "(Core, 'Fuller Himself') Mr. Fuller would have seen George last, as far as she knows. George normally lets himself out with his own key, maybe around midnight? Surely Mr. Fuller would have said something if he'd seen him. Charlie chastises herself again for not coming in. - She shows her copy of the key and explains that sometimes she'd stop off after a date, just to make sure George had left.").
clue_known(mr_fuller_would, false).
clue_leads_to(mr_fuller_would, fuller_himself).
clue(she_has_known).
clue_description(she_has_known, "She has known George since they were kids together. He practically forced Fuller to hire her - she secretly did all George's repairs for a week, at least as fast and as well as any of the men. She and George worked here since before the Crash. They couldn't pull a stunt like that now, not with so many men looking for work. Charlie doesn't like Fuller much, but at least he's the one man to have the business sense to hire her and he hasn't used the Crash to lower wages (much) or replace them with cheaper unemployed workers.").
clue_known(she_has_known, false).
clue(charlie_evades_pinning).
clue_description(charlie_evades_pinning, "Charlie evades pinning down an alibi for the night of George's disappearance, simply saying she spent the evening out and got to bed early").
clue_known(charlie_evades_pinning, false).
clue(she_thinks_george).
clue_description(she_thinks_george, "She thinks George might have run off. Maybe he cracked when his machine wouldn't work and jumped off the Brooklyn Bridge.").
clue_known(she_thinks_george, false).
clue(no_george_wouldnt).
clue_description(no_george_wouldnt, "(Pipe, 'The Leg-Breaker') No, George wouldn't kill anyone, but he's sensitive. A murder would have upset him. Charlie reluctantly admits she would believe it more readily if George had robbed someone. Building his machine cost him a lot of money he doesn't have. She hints that George may have borrowed unwisely").
clue_known(no_george_wouldnt, false).
clue_leads_to(no_george_wouldnt, the_leg_breaker).
clue(she_tried_taking).
clue_description(she_tried_taking, "(Core, 'The Peculiar Death of Myron Fink') She tried taking Sadie, 'sweet kid,' by George's apartment, but the landlord has a bee in his bonnet about not letting anyone in. Charlie thinks this irrational, as the police stopped posting a guard there over a day ago.").
clue_known(she_tried_taking, false).
clue_leads_to(she_tried_taking, the_peculiar_death_of_myron_fink).
clue(viv_isnt_the).
clue_description(viv_isnt_the, "(Pipe, 'Temple of Nephthys') Viv isn't the first lady to come by asking questions about George, but she seems a lot more cool-headed than the other. 'Little, awkward girl, not more than 18 or 19' came by the shop Saturday looking for George. She'd seen this girl talking to George outside recently, but doesn't think George is the type to play around. When the girl heard no one had seen George that day or the day before, she became upset and asked to see his 'miracle machine.' Upon hearing the device had disappeared too, the girl turned frantic and accused them all of stealing it. Mr. Fuller took her up to his office and gave her some brandy to calm her nerves.").
clue_known(viv_isnt_the, false).
clue_leads_to(viv_isnt_the, temple_of_nephthys).
clue(the_original_call).
clue_description(the_original_call, "(Alternate lead-in, 'The Peculiar Death of Myron Fink') The original call reported a disturbance rather than a death. Several tenants of the same building reported strange sounds and seeing things.").
clue_known(the_original_call, false).
clue_leads_to(the_original_call, the_peculiar_death_of_myron_fink).
clue(because_nobody_could).
clue_description(because_nobody_could, "Because nobody could agree on what happened or whether or not the man screamed, the responding beat cop didn't break down the door, but it wouldn't have helped anyway.").
clue_known(because_nobody_could, false).
clue(as_far_as).
clue_description(as_far_as, "(Alternate lead-in, 'The Thing in the Morgue') As far as he knows, the body hasn't yet left Bellevue (Bureaucracy: the morgue at Bellevue Hospital, on 29th Street).").
clue_known(as_far_as, false).
clue_leads_to(as_far_as, the_thing_in_the_morgue).
clue(oconnor_describes_the).
clue_description(oconnor_describes_the, "O'Connor describes the officer in charge, James MacAdams, as a hard-liner. Does things by the book, but generally fair. Seems to be pushing for a quick closure on this case, and O'Connor can't blame him considering what he's heard.").
clue_known(oconnor_describes_the, false).
clue(this_preston_fellow).
clue_description(this_preston_fellow, "This Preston fellow is the natural suspect. From what he heard, they didn't have any leads until Preston flew the coop.").
clue_known(this_preston_fellow, false).
clue(he_hasnt_seen).
clue_description(he_hasnt_seen, "(Alternate lead-in, 'The Thing in the Morgue') He hasn't seen the body, and he doesn't plan on it. Several of the policemen on the case show signs of drinking harder than usual. One hasn't slept since: just keeps drinking coffee to stay awake. If Viv is sure she wants to see it, he might be able to pull some strings and get her in.").
clue_known(he_hasnt_seen, false).
clue(on_that_fateful).
clue_description(on_that_fateful, "On that fateful night, he had gone to the moving pictures. 'Normally, you wouldn't find a quieter convent. I haven't had to stay on the premises all day and night.'").
clue_known(on_that_fateful, false).
clue(other_tenants_in).
clue_description(other_tenants_in, "Other tenants in the building reported strange sounds. Then someone in Myron Fink's apartment screamed.").
clue_known(other_tenants_in, false).
clue(nobody_could_get).
clue_description(nobody_could_get, "(Pipe, 'The Thing in the Morgue') Nobody could get the door open until he came back from the pictures, which wasn't until after midnight. When he opened it, they found Fink dead. 'Couldn't have saved him, though, not in a condition that serious.' He immediately called the police. Police didn't even bother calling a doctor; coroner took him straight to the morgue.").
clue_known(nobody_could_get, false).
clue_leads_to(nobody_could_get, the_thing_in_the_morgue).
clue(he_had_to).
clue_description(he_had_to, "He had to check on all the tenants. Most inconvenient. Everyone else was accounted for, including Preston. Police didn't take him in that night, but told everyone not to try any funny business. Then Preston doesn't come home, so what's a man to think? Of course he called the police. That's the definition of funny business, after all. Now the police think Preston did it, and why should he contradict them?").
clue_known(he_had_to, false).
clue(simpson_reluctantly_admits).
clue_description(simpson_reluctantly_admits, "(Pipe, 'The Thing in the Morgue') Simpson reluctantly admits that nobody can tell yet ex- actly what killed Fink. Not an ordinary weapon, for sure. But even if Preston didn't shoot him, why would he have run if he didn't kill him somehow?").
clue_known(simpson_reluctantly_admits, false).
clue_leads_to(simpson_reluctantly_admits, the_thing_in_the_morgue).
clue(preston_wouldnt_answer).
clue_description(preston_wouldnt_answer, "Preston wouldn't answer his door, but when Simpson unlocked it they found him curled up in bed, shivering.").
clue_known(preston_wouldnt_answer, false).
clue(as_far_as_he).
clue_description(as_far_as_he, "As far as he knows, Fink and Preston had no bad blood between them. Fink worked as an accountant, paid his rent on time, and kept himself to himself. Until this week, Simpson considered them two of his easier tenants.").
clue_known(as_far_as_he, false).
clue(at_first_they).
clue_description(at_first_they, "(Pipe, 'Going on the Grid') At first they worried they were in for a blackout. The power kept flickering but never actually went off. The last time this happened, it was because a drugstore down the street had installed an entire refrigera- tion section in the back which overloaded the grid. (Violet describes this last with the most hand waving; Williams with the least.)").
clue_known(at_first_they, false).
clue_leads_to(at_first_they, going_on_the_grid).
clue(the_sound_might).
clue_description(the_sound_might, "The sound might have started as soon as the power began flickering, but they didn't notice it until they got used to the weird light.").
clue_known(the_sound_might, false).
clue(everything_stopped_a).
clue_description(everything_stopped_a, "Everything stopped a moment after Fink screamed. The lights came up to full brightness and the... things... vanished. See 'August Wil- liams' below.").
clue_known(everything_stopped_a, false).
clue(anyone_telling_her).
clue_description(anyone_telling_her, "(Core, 'The Thing in the Morgue') Anyone telling her about Fink's body first glances toward Mr. Simpson, if he is present, and lowers their voice to a conspiratorial whisper. Maybe George killed him, but they don't see how, because... he was bitten clean in half! Police couldn't find his midsection or legs anywhere.").
clue_known(anyone_telling_her, false).
clue_leads_to(anyone_telling_her, the_thing_in_the_morgue).
clue(minnie_lives_in).
clue_description(minnie_lives_in, "Minnie lives in the apartment across the hall and down one from Fink, on the other side from George Preston's place.").
clue_known(minnie_lives_in, false).
clue(until_mr_fink).
clue_description(until_mr_fink, "Until Mr. Fink screamed, she thought she was falling asleep. It gets lonely in the building at night, if she doesn't go out to the pictures or the diner, and sometimes she just dozes off.").
clue_known(until_mr_fink, false).
clue(strangely_once_the).
clue_description(strangely_once_the, "Strangely, once the power started going, Minnie felt like the whole world had gone silent. No noise of the city, just the buzzing of the electric light. It didn't feel bad, though, just peaceful, but then the sound started.").
clue_known(strangely_once_the, false).
clue(the_sound_made).
clue_description(the_sound_made, "The sound made her think of a piano that's gone out of tune. It wasn't like a piano's music, but that way something just feels off and you want to scream or pull out your hair rather than listen to it any more. She had a neighbor in Albany who played her piano day and night, and it grated at her nerves something awful.").
clue_known(the_sound_made, false).
clue(williams_lives_across).
clue_description(williams_lives_across, "Williams lives across from Minnie Boyer, right on the other side of Myron Fink.").
clue_known(williams_lives_across, false).
clue(he_heard_the).
clue_description(he_heard_the, "He heard the sound just like the others say, but that's not all that happened.").
clue_known(he_heard_the, false).
clue(after_a_few).
clue_description(after_a_few, "After a few minutes of it, he went out to find Simpson and complain about the problem with the power. People keep inventing all these newfangled devices without thinking about whether there's enough power to go around. Should be a law.").
clue_known(after_a_few, false).
clue(he_couldnt_find).
clue_description(he_couldnt_find, "He couldn't find Simpson, as usual. When he had almost gotten back to his room, he saw the first... thing. It made him think of a living blimp, floating gently. He slammed and locked he door to his room, but it passed through the wall, almost as though it weren't made of real stuff. For a few minutes, he sat paralyzed on the bed, watching things like the blimp float or mosey by. Then, right before Fink screamed, he saw something else — like a soap bubble but with claws for arms and what looked like tentacles. He'd have screamed too, if he weren't too scared to breathe. Its hideous teeth opened — Fink screamed and it moved through the wall into Fink's room instead. A moment later, it vanished. Everything went back to normal.").
clue_known(he_couldnt_find, false).
clue(violet_lives_at).
clue_description(violet_lives_at, "Violet lives at the far end of the hall, nearest the stairs. Assess Honesty gets the sense that, other than the problem with the power, she didn't experience much of what the others describe. Instead, she piggybacks off their statement so people will listen to her. Viv has encountered the type before in her work.").
clue_known(violet_lives_at, false).
clue(violet_always_had).
clue_description(violet_always_had, "Violet always had George figured for the screwy type. Too quiet, always lost in his own world, never really talked to the other tenants. Probably some sort of crazed sex killer, and that's why he took Fink's lower half with him. Viv hardly needs an Interpersonal ability to interpret this as 'he never paid attention to me.'").
clue_known(violet_always_had, false).
clue(growing_serious_violet).
clue_description(growing_serious_violet, "Growing serious, Violet remarks that she's never seen anything like the expression on Fink's face. Like something scared him to death before... you know. She couldn't sleep all that night just thinking about it.").
clue_known(growing_serious_violet, false).


:- dynamic(source/1).
:- dynamic(source_name/2).
:- dynamic(source_profession/2).
:- dynamic(source_description/2).
:- dynamic(source_investigative_abilities/2).

source(annette_rice).
source_name(annette_rice, "Annette (Nettie) Rice").
source_profession(annette_rice, "Professor").
source_investigative_abilities(annette_rice, astronomy).
source_investigative_abilities(annette_rice, biology).
source_investigative_abilities(annette_rice, chemistry).
source_investigative_abilities(annette_rice, languages).
source_investigative_abilities(annette_rice, physics).
source(stella_abrams).
source_name(stella_abrams, "Astelle 'Stella' Abrams").
source_profession(stella_abrams, "Amateur Occultist").
source_investigative_abilities(stella_abrams, architecture).
source_investigative_abilities(stella_abrams, craft).
source_investigative_abilities(stella_abrams, cthulhu_mythos).
source_investigative_abilities(stella_abrams, occult).
source_investigative_abilities(stella_abrams, theology).
source(joseph_oconnor).
source_name(joseph_oconnor, "Lt. Joseph O'Connor").
source_profession(joseph_oconnor, "Detective").
source_investigative_abilities(joseph_oconnor, cop_talk).
source_investigative_abilities(joseph_oconnor, forensics).
source_investigative_abilities(joseph_oconnor, intimidation).
source_investigative_abilities(joseph_oconnor, law).
source_investigative_abilities(joseph_oconnor, streetwise).
source(esteban_gonzalez).
source_name(esteban_gonzalez, "Esteban Manuel Aragon Gonzalez").
source_profession(esteban_gonzalez, "Explorer").
source_investigative_abilities(esteban_gonzalez, anthropology).
source_investigative_abilities(esteban_gonzalez, archaeology).
source_investigative_abilities(esteban_gonzalez, art_history).
source_investigative_abilities(esteban_gonzalez, geology).
source_investigative_abilities(esteban_gonzalez, outdoorsman).
source(louisa_reynolds).
source_name(louisa_reynolds, "Louisa Reynolds").
source_profession(louisa_reynolds, "Nurse").
source_investigative_abilities(louisa_reynolds, medicine).
source_investigative_abilities(louisa_reynolds, pharmacy).
source_investigative_abilities(louisa_reynolds, psychology).


:- dynamic(problem/1).
:- dynamic(problem_number/2).
:- dynamic(problem_name/2).
:- dynamic(problem_type/2).
:- dynamic(problem_description/2).
:- dynamic(problem_effect/2).

problem(sucker_for_a_pretty_face).
problem_name(sucker_for_a_pretty_face, "Sucker for a Pretty Face").
problem_number(sucker_for_a_pretty_face, 1).
problem_type(sucker_for_a_pretty_face, continuity).
problem_description(sucker_for_a_pretty_face, "You change lovers as frequently as clothes.").
problem(soft_spot).
problem_number(soft_spot, 6).
problem_type(soft_spot, continuity).
problem_description(soft_spot, "Whatever you're feeling for Charlie, it's not entirely professional.").
problem(big_talker).
problem_number(big_talker, 7).
problem_type(big_talker, continuity).
problem_description(big_talker, "You protested a little too strongly that you just want information about George, and got a bigger response than you bargained on. The GM brings foward men with random and conflicting theories until you either make a Stealth Quick Test to leave them arguing with each other or lose an hour or two listening to them all.").
problem(wrenched_ankle).
problem_number(wrenched_ankle, 8).
problem_description(wrenched_ankle, "You pulled something in your foot. -2 on your next Athletics, Fighting, or other General/Physical test or Take Time and then discard this Problem").


:- dynamic(item/1).
:- dynamic(item_name/2).
:- dynamic(item_description/2).
:- dynamic(item_type/2).

item(photo_of_george).
item_name(photo_of_george, "A photograph of George Preston").
item_description(photo_of_george, "A photograph of George Preston, a gangling young man with light hair and eyes").
item_type(photo_of_george, photograph).
item(letter_from_george_preston).
item_name(letter_from_george_preston, "Letter from George Preston to Hereward Carrington").
item_description(letter_from_george_preston, "A letter that reads: Dear Sir: I write as an admirer of your work. Though by trade an electrician, I consider myself an inventor in the tradition of Marconi, Morse, and Bell. For several years now, I have worked on a device, which I consider a successor to the radio and the television. Just as we walk daily through waves from a dozen radio stations and now television stations as well, so I believe we are constantly surrounded by the unseen spirits who exist at a frequency most humans cannot perceive. From my readings on psychic phenomena, I conclude that mediums are no different from others who possess such acute hearing that they cannot live in a house with others or such a strong sense of taste that they only eat the blandest of foods. And we average men are like the color-blind who cannot distinguish red from green, only our numbers are far greater. Machines, unlike men, face no such limitations. When complete, my device will amplify light and sound to make visible that which exists at the very edge of what you and I can see and hear. From your books, I gather that you possess a greater openness to scientific proof of psychic phenomena than many others in your line of work. I would be deeply indebted if you would be willing to discuss my theory with me further and attend the first public unveiling of the device, which I now believe to be in its final stages. I have recently begun attending psychic ceremonies at the Temple of Nephthys. From my observation, I believe the medium, Madame Isis, possesses a true connection to the spirit world. Unlike others whose séances I have attended, she does not elicit phantasmal raps, conjure glowing hands, or move objects with ghostly fingers as a magician might. Several of her regular attenders with whom I have spoken, including her secretary, attest to the veracity of statements they receive from the departed. I consider such testimonies better proof than showy phenomena. Despite my faith in my own observations, I hope I might ask whether you had visited her on one of your investigations and, if so, whether you observed any fraudulent behavior of the types you describe in your books. I remain yours sincerely, George Preston").
item_type(letter_from_george_preston, letter).


:- dynamic(edge/1).
:- dynamic(edge_number/2).
:- dynamic(edge_name/2).
:- dynamic(edge_description/2).

edge(ice_queen).
edge_number(ice_queen, 1).
edge_name(ice_queen, "Ice Queen").
edge_description(ice_queen, "You're getting better at prioritizing things that matter. Spend to get an extra die on Cool or Stability or a +2 on a General/Mental test, then discard").


:- dynamic(challenge/1).
:- dynamic(challenge_name/2).
:- dynamic(challenge_type/2).
:- dynamic(challenge_advance/3).
:- dynamic(challenge_hold/4).
:- dynamic(challenge_setback/2).
:- dynamic(challenge_extra_problem/2).

challenge(other_peoples_mail).
challenge_name(other_peoples_mail, "Other People's Mail").
challenge_type(other_peoples_mail, "filch").
challenge_advance(other_peoples_mail, "4", "You successfully purloin the letter. Grants access to alternate scene 'The Psychical Investigator'.").
challenge_hold(other_peoples_mail, "2", "3", "As your fingers brush the edge of the letter, Fuller makes eye contact and his eyes begin to move downward. If you decide to play it off by deliberately noticing the letter's address, you may spend a Push to convince him you'll give the letter to Preston's fiancée. He demurs to this suggestion, but may later change his mind. Grants access to alternate scene 'The Psychical Investigator'.").
challenge_setback(other_peoples_mail, "Fuller sees you tip the letter into your handbag. After snatching it back, he roughly escorts you out of the building and threatens to call the police if you set foot inside again. If you have not yet spoken to Charlie Fitzpatrick, she follows you onto the street to see if you know something about George.").
challenge_extra_problem(other_peoples_mail, fuller_becomes_suspicious).
challenge(focus_on_the_story_not_the_smile).
challenge_name(focus_on_the_story_not_the_smile, "Focus On The Story, Not The Smile").
challenge_type(focus_on_the_story_not_the_smile, "cool").
challenge_advance(focus_on_the_story_not_the_smile, "4", "When you interview enough women with charm and grit, you develop immunity to the type. Earn an Edge: Edge 1, 'Ice Queen'").
challenge_hold(focus_on_the_story_not_the_smile, "2", "3", "Cute and you might even want to buy her a drink sometime, but you've got to treat Charlie like any other source - with a bit of distance and a grain of salt.").
challenge_setback(focus_on_the_story_not_the_smile, "She's someone special alright. Whether your heart's beating faster or you're just surprised and impressed by finding her here, you've sure got a soft spot for her. Gain Problem 6, 'Soft Spot'").
challenge_extra_problem(focus_on_the_story_not_the_smile, big_talker).
challenge(catching_the_would_be_intruder).
challenge_name(catching_the_would_be_intruder, "Catching the Would-Be Intruder").
challenge_type(catching_the_would_be_intruder, "athletics").
challenge_advance(catching_the_would_be_intruder, "6", "You easily get to the stairs before her and force her to talk to you. Invite the player to describe how she gets the jump on Pearl so easily. Move to 'Questioning Pearl.' Earn an Edge: Edge 2, 'Sure-Footed'").
challenge_hold(catching_the_would_be_intruder, "3", "5", "By the time you catch up to her on the stairs, she's pulled herself together and attempts to grab the schematics you retrieved from Preston's apartment. This may mean snatching your capacious purse or simply wresting the schematics from your hand. Challenge: 'Hang onto the Clue.'").
challenge_setback(catching_the_would_be_intruder, "She runs like a gazelle, and you've had a few too many cigarettes lately. She's out the door, and you know you'll never catch her in the maze of alleys.").
challenge_extra_problem(catching_the_would_be_intruder, wrenched_ankle).
challenge(hang_onto_the_clue).
challenge_name(hang_onto_the_clue, "Hang Onto the Clue").
challenge_type(hang_onto_the_clue, "fighting").
challenge_advance(hang_onto_the_clue, "7", "Not today, sister! You twist away the schematics while keeping an iron grip on the young woman's wrist. Move to 'Questioning Pearl.' Earn an Edge: Edge 3, 'Pulled it Together'").
challenge_hold(hang_onto_the_clue, "3", "6", "By the time you catch up to her on the stairs, she's pulled herself together and attempts to grab the schematics you retrieved from Preston's apartment. This may mean snatching your capacious purse or simply wresting the schematics from your hand. Challenge: 'Hang onto the Clue.'").
challenge_setback(hang_onto_the_clue, "She runs like a gazelle, and you've had a few too many cigarettes lately. She's out the door, and you know you'll never catch her in the maze of alleys.").
challenge_extra_problem(hang_onto_the_clue, wrenched_ankle).
challenge(antagonist_reaction_1_challenge).
challenge_type(antagonist_reaction_1_challenge, "cool").
challenge_advance(antagonist_reaction_1_challenge, "6", "Gain Edge 11, 'Good Citizen'.").
challenge_hold(antagonist_reaction_1_challenge, "2", "5", "They accept her argument, but give her the cold shoulder for a few days").
challenge_setback(antagonist_reaction_1_challenge, "Gain Problem 23, 'Evicted'.").
challenge_extra_problem(antagonist_reaction_1_challenge, no_good_deed).
challenge(antagonist_reaction_1_challenge).
challenge_type(antagonist_reaction_1_challenge, "cool").
challenge_advance(antagonist_reaction_1_challenge, "6", "Gain Edge 11, 'Good Citizen'.").
challenge_hold(antagonist_reaction_1_challenge, "2", "5", "They accept her argument, but give her the cold shoulder for a few days").
challenge_setback(antagonist_reaction_1_challenge, "Gain Problem 23, 'Evicted'.").
challenge_extra_problem(antagonist_reaction_1_challenge, no_good_deed).


:- dynamic(character/1).
:- dynamic(character_name/2).
:- dynamic(character_goal/2).
:- dynamic(character_knows/2).
:- dynamic(character_relationships/4).

character(sadie_cain).
character_name(sadie_cain, "Sadie Cain").
character_goal(sadie_cain, "Find missing fiance").
character_knows(sadie_cain, george_preston).
character_relationships(sadie_cain, george_preston, "engaged", positive).
character_relationships(sadie_cain, player, "client", positive).
character(george_preston).
character_name(george_preston, "George Preston").
character_knows(george_preston, sadie_cain).
character_knows(george_preston, howard_fuller).
character_knows(george_preston, charlie_fitzpatrick).
character_relationships(george_preston, marty_the_mouth, "owes money to", negative).
character_relationships(george_preston, charlie_fitzpatrick, "friends", positive).
character_relationships(george_preston, hereward_carrington, "corresponds with", positive).
character_relationships(george_preston, madame_isis, "potential acolyte of", positive).
character_relationships(george_preston, clarence_simpson, "rents from", neutral).
character(charlie_fitzpatrick).
character_name(charlie_fitzpatrick, "Charlie (Charlene) Fitzpatrick").
character_knows(charlie_fitzpatrick, george_preston).
character_knows(charlie_fitzpatrick, howard_fuller).
character(howard_fuller).
character_name(howard_fuller, "Howard Fuller").
character_knows(howard_fuller, george_preston).
character_knows(howard_fuller, charlie_fitzpatrick).
character_knows(howard_fuller, petunia_adams).
character_relationships(howard_fuller, george_preston, "boss of, killer of", negative).
character_relationships(howard_fuller, charlie_fitzpatrick, "boss of", neutral).
character_relationships(howard_fuller, petunia_adams, "boss of", neutral).
character(clarence_simpson).
character_name(clarence_simpson, "Clarence Simpson").
character_knows(clarence_simpson, george_preston).
character(pearl_leblanc).
character_name(pearl_leblanc, "Pearl LeBlanc").
character_knows(pearl_leblanc, madame_isis).
character_relationships(pearl_leblanc, madame_isis, "devotee of", positive).
character(madame_isis).
character_name(madame_isis, "Madame Isis Neferi").
character_knows(madame_isis, pearl_leblanc).
character_knows(madame_isis, addie_sims).
character(hereward_carrington).
character_name(hereward_carrington, "Hereward Carrington").
character_knows(hereward_carrington, george_preston).
character(marty_the_mouth).
character_name(marty_the_mouth, "Marty the Mouth").
character_knows(marty_the_mouth, george_preston).
character(addie_sims).
character_name(addie_sims, "Addie Sims").
character_knows(addie_sims, madame_isis).
character_relationships(addie_sims, madame_isis, "seeking answers from", positive).
character(petunia_adams).
character_name(petunia_adams, "Petunia Adams").
character_knows(petunia_adams, howard_fuller).
character_knows(petunia_adams, george_preston).
character(minnie_boyer).
character_name(minnie_boyer, "Minnie Boyer").
character_knows(minnie_boyer, george_preston).
character(august_williams).
character_name(august_williams, "August Williams").
character_knows(august_williams, george_preston).
character(violet_blake).
character_name(violet_blake, "Violet Blake").
character_knows(violet_blake, george_preston).
character(marie_lewis).
character_name(marie_lewis, "Marie Lewis").
character_knows(marie_lewis, nettie_rice).
character(herbert_roach).
character_name(herbert_roach, "Herbert Roach").
character_knows(herbert_roach, howard_fuller).
character_knows(herbert_roach, george_preston).
character(myron_fink).
character_name(myron_fink, "Myron Fink").
character_knows(myron_fink, george_preston).


:- dynamic(investigative_ability/4).

investigative_ability(accounting, "Accounting", "You understand bookkeeping and accountancy procedures; you can read and keep financial records.", academic).


:- dynamic(general_ability/4).

general_ability(athletics, "Athletics", "Athletics allows you to perform general acts of physical derring-do, from running to jumping to throwing bundles of dynamite to dodging oncoming objects.", physical).


:- dynamic(player_edge/1).
:- dynamic(player_problem/1).
:- dynamic(player_investigative_ability/1).
:- dynamic(player_general_ability/2).
:- dynamic(player_pushes/1).
:- dynamic(player_item/1).

player_edge(ice_queen).
player_problem(sucker_for_a_pretty_face).
player_investigative_ability(accounting).
player_investigative_ability(assess_honesty).
player_general_ability(athletics, 1).
player_pushes(4).


:- dynamic(antagonist_reaction/1).
:- dynamic(challenge_name/2).
:- dynamic(challenge_type/2).
:- dynamic(challenge_advance/3).
:- dynamic(challenge_hold/4).
:- dynamic(challenge_setback/2).
:- dynamic(challenge_extra_problem/2).

antagonist_reaction(antagonist_reaction_1).

overhear_conversation(Char1, Char1Name, Char2, Char2Name, Clue, ClueDesc) :-
	character_relationships(Char1, Char2, Relationship, positive),
	character_name(Char1, Char1Name),
	character_name(Char2, Char2Name),
    char_knows_clue(Char1, Char1Name, ClueTag, ClueDesc, Scene). 

char_knows_clue(CharTag, CharName, ClueTag, ClueDesc, Scene) :-
	clue_description(ClueTag, ClueDesc),
	character_name(CharTag, CharName),
    scene_clues(Scene, ClueTag),
    scene_characters(Scene, CharTag).

find_new_lead(Clue, ClueDesc, Scene, SceneName) :- 
    clue_known(Clue, false),
    clue_description(Clue, ClueDesc),
    clue_leads_to(Clue, Scene),
    scene_name(Scene, SceneName),
    scene_visited(Scene, false).

find_hostage_options(Char) :- 
    character_relationships(Char, player, Relationship, positive).

find_physical_injury(Challenge, ExtraProblem) :- 
    challenge_type(Challenge, Type),
    general_ability(Type, Name, Description, physical),
    challenge_extra_problem(Challenge, ExtraProblem).

change_clue_known(Clue, Description, Known) :-
	clue_known(Clue, PrevKnown),
	clue_description(Clue, Description), 
	retract( clue_known(Clue, PrevKnown) ),
	asserta( clue_known(Clue, Known) ).