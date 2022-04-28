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
scene_text(charming_charlie, "Assess Honesty notices that any questions about what Charlie did that night make her nervous. Viv may use Reassurance to convince her she only cares about what happened to George, not what Charlie does with her free time. Charlie discloses that she sometimes does work for 'other clients' at night to earn a little cash. Bureaucracy guesses that at least some of it is home wiring - for which she would need an additional license she doesn't have, and which could cause her some trouble later on. Charlie gets defensive, claiming that Fuller keeps wages low by pointing out he could replace all of them tomorrow with unemployed men who'd be happy to get half what they make. 'The men here aren't the only ones with family to support!'").
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
scene_text(the_peculiar_death_of_myron_fink, "During their conversation, several other tenants of the building filter into the hall and doorway, clearly eager to share their own versions of what happened that night (core, 'Interviewing the Neighbors'). If she is not seeing the room with Simpson, Viv may knock on doors, or encounter them at the GM's discretion - such as after the encounter with Pearl, which draws them out of their rooms.").
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
scene_text(interviewing_the_neighbors, "A generous estimate puts Williams in his seventies, though his milky blue eyes still hold a canny light. Williams doesn't sleep very much anymore - 'Ain't no point at my age; I'll sleep soon enough' - and insists he was wide awake throughout the incident, although some people, with a sharp look at the others, accuse him of dreaming things.").
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
scene_visited(georges_apartment, false).
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
scene_visited(questioning_pearl, false).
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
scene_visited(the_psychical_investigator, false).
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
scene_visited(temple_of_nephthys, false).
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
scene_text(temple_of_nephthys, "Ask the player whether or not Viv has lost someone in her own life. If so, Madame Isis senses 'a spirit floats about you, my dear, wishing to speak' (a guess on her part, but she's a great cold-reader) and invites her to participate in a 'Communion with the Dead,' held nightly. Communions start at 8 p.m. and last around two hours - longer if the spirits feel especially communicative. Otherwise, she indicates that if Viv has any further questions, perhaps she'd like to attend a 'communion' tonight.").
scene_text(temple_of_nephthys, "Viv's canny journalist's eye identifies several different types at the communion: an older widow, a bereaved parent, an idly curious spectator, and a handful of obvious regulars who acknowledge each other before taking their seats. Cloyingly sweet incense fills the room from several braziers. Madame Isis begins the service by reading passages from the Book of the Dead. Some in the audience mutter, 'Amen,' probably from force of habit.").
scene_text(temple_of_nephthys, "Other than the reading, the séance consists of ordinary channeling. Should she have learned that Viv has lost someone, Madame passes on a 'message' telling Viv that this person has found peace in the afterlife but there's something they want Viv to do for them - but she can't make it out before losing the connection. 'Perhaps next time.' If Viv asks to contact the spirit of George Preston, Madame Isis stalls with some patter about not being able to sense George's spirit among them. Streetwise: Madame's reputation might survive channeling a living person to a few ordinary clients, but she never forgets Viv's profession and has no desire to end up on the wrong side of an exposé.").
scene_text(temple_of_nephthys, "Should Viv decide to question any of the clients before or after the communion, she ends up talking to Addie Sims (alternate, 'Addie Needs Answers'). Otherwise, Madame Isis catches Viv's eye and nods her head significantly in Addie's direction just as Addie is on the verge of slipping out the door.").
scene_text(temple_of_nephthys, "If Viv has encountered Pearl at the apartments and the girl escaped - with or without the schematics - Madame Isis calls her into the room and demands she apologize to Viv. Pearl looks shaken. Even if Madame Isis sent her to search Preston's apartment, she certainly didn't intend her to get caught while doing so. She returns any purloined schematics, and Madame Isis asks Viv to forgive the young woman's impetuosity.").
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
scene_visited(addie_needs_answers, false).
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
scene_visited(the_thing_in_the_morgue, false).
scene_name(the_thing_in_the_morgue, "The Thing in the Morgue").
scene_type(the_thing_in_the_morgue, pipe).
scene_lead_ins(the_thing_in_the_morgue, what_the_cops_know).
scene_lead_ins(the_thing_in_the_morgue, the_peculiar_death_of_myron_fink).
scene_lead_ins(the_thing_in_the_morgue, interviewing_the_neighbors).
scene_text(the_thing_in_the_morgue, "Besides answering questions about things which occurred before the story started, this scene serves as pipe to establish the horror that Viv will face if things go badly for her. She'll find the body at the official mortuary for the medical examiner, located in Bellevue Hospital's (see p. 173) Pathological Building on East 29th Street. The crowd of over a hundred thousand outpatients that flows in and out of the hospital daily provides her with some anonymity, although it thins out near the morgue.").
scene_text(the_thing_in_the_morgue, "If Viv spoke to Lt. O'Connor in 'What the Cops Know,' she may persuade him to pull some strings with the police coroner, Phil Lenz, for her to get in and see the body. If not, she'll need to come at night and break into the morgue's vault. Provided she passes a Stealth Quick Test to make it to the doors of the morgue, a simple use of the Locksmith ability lets Viv open the heavy metal doors.").
scene_text(the_thing_in_the_morgue, "Whether or not Lenz shows her the body, the scene follows a similar course. Viv must first walk through a room of sheet-covered wooden dissection tables and instruments to get to the mortuary's cold chamber. The mortuary handles the hospital's many dead, including victims of accidents and murder. During the day, medical students bend over a few corpses on the tables, bone saws, scalpels, and forceps in hand. At night, Viv moves through chilly silence and shadow.").
scene_text(the_thing_in_the_morgue, "Beyond the main dissection room, Viv comes to the vault where the bodies are stored. The building's subterranean stone construction provides a certain natural coolness which is augmented by a loud industrial refrigeration system, but they only do so much to hide the odor of death. Anyone who doesn't spend regular time down here initially chokes on the thick, sweet smell as they open the door. If present, Lenz offers Viv a scented handkerchief.").
scene_text(the_thing_in_the_morgue, "The shelves of the cold chamber make it resemble a grotesque bunk-house. Without Lenz's help, Viv takes a few minutes to locate the corpse. Using Evidence Collection to check ankles and toes for identification, she soon notes the bodies lie in a rough chronological order. Fink - what remains of him - rests in a top bunk. To get a good view of the body at night, Viv may pull up a small- but-sturdy stepladder which provides attendants adequate balance to move hundreds of pounds. During the day, Lenz calls in a single medical student to wrest Fink down.").
scene_text(the_thing_in_the_morgue, "By now, Fink's body has taken on the greenish- blue color of early decomposition. The coroner closed Fink's staring eyes, but his mouth continues to gape in horror. Round, purpling bruises score his torso and one arm. In the center of each bruise, Viv sees a puncture wound over a small, hard lump. Several lumps have been excised for analysis, leaving gouges. Below his torso? A bag holds in what intestines remain and below that - nothing. The ends of his flesh appear ragged, as if torn off with an act of extreme force.").
scene_text(the_thing_in_the_morgue, "Evidence Collection: Either through talking to Lenz or by reading the autopsy notes, Viv learns that Fink died of a 'massive coronary event.' In lay terms, his heart gave out. The bruising and mutila- tion to his body occurred immediately after death, leaving venom directly under the skin instead of filtering into his bloodstream. Give the player time to connect this venom to the puncture-marks Viv saw in the center of the bruises. The venom's composition doesn't match any known species, but it most closely resembles that of jellyfish. The autopsy notes include several photographs of the bruising. If visiting the morgue during the day, Viv may grab one on a Difficulty 4 Quick Filch Test.").
scene_text(the_thing_in_the_morgue, "Photography: If Viv shows photographs of Fink's corpse to her nurse Source, Louisa pulls down a book on animal attacks with a photograph of a leg with a similar coil of bruises around it. But how could a squid attack someone on dry land?").
scene_text(the_thing_in_the_morgue, "If the guards catch Viv attempting to break into the morgue, they'll hold her for Lt. MacAdams. The player certainly could try using a Fighting Quick Test to break free while one policeman phones the station, but this would result in a city-wide hunt for her. MacAdams picks her up in an unmarked car and drives her home. On the way, he lectures Viv about interfering with police investigations, emphasizes that a twisted killer remains on the loose, and warns her to keep her nose - and her notepad - out of the whole business. Possible responses to points she may raise:").
scene_text(the_thing_in_the_morgue, "When dropping her off at her apartment (or place of work, in the daytime), he notes that he won't escort her inside for the sake of her reputation, but vaguely threatens that he'll look her up if he hears about her interfering again in this case. See 'Antagonist Reactions.'").
scene_clues(the_thing_in_the_morgue, of_course_the).
scene_clues(the_thing_in_the_morgue, august_williams_clearly).
scene_clues(the_thing_in_the_morgue, murders_dont_always).
scene_clues(the_thing_in_the_morgue, yes_he_knows).
scene_characters(the_thing_in_the_morgue, joseph_oconnor).
scene_characters(the_thing_in_the_morgue, myron_fink).
scene(miracle_machine).
scene_visited(miracle_machine, false).
scene_name(miracle_machine, "Miracle Machine").
scene_type(miracle_machine, core).
scene_lead_ins(miracle_machine, georges_apartment).
scene_lead_ins(miracle_machine, questioning_pearl).
scene_lead_ins(miracle_machine, temple_of_nephthys).
scene_lead_outs(miracle_machine, going_on_the_grid).
scene_text(miracle_machine, "Viv may take the schematics for George's machine to either her scientific Source, Nettie Rice, or to Charlie for her electrical expertise. If the player holds the card 'Soft Spot' and doesn't consider the possibility of calling up Charlie on her own, the GM should prompt her. In keeping with Problem cards, the desire to see Charlie again sets up Viv for more trouble - this time with Fuller.").
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
scene_visited(the_leg_breaker, false).
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
scene_visited(going_on_the_grid, false).
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
scene_visited(men_gone_missing, false).
scene_name(men_gone_missing, "Men Gone Missing").
scene_type(men_gone_missing, alternate).
scene_lead_ins(men_gone_missing, addie_needs_answers).
scene_lead_outs(men_gone_missing, the_leg_breaker).
scene_lead_outs(men_gone_missing, breaking_into_fullers).
scene_text(men_gone_missing, "The crowd outside Fuller's has thinned since Viv first visited the shop. Perhaps with George's disappearance now a thing of the past, fewer men think they have a chance at his job. Perhaps the odd goings-on with the other men Fuller's brought in have made them change their minds. She still encounters five or six men having a smoke and shooting the breeze.").
scene_text(men_gone_missing, "It takes a while to get the men to warm up to her. A judicious use of Bargain might offer them some of her cigarettes or to buy anyone who'll talk to her a cup of coffee. Viv may even want to pull out Inspiration: two good (well, close enough) men have disappeared in a single week: wouldn't they want their families to have answers if it was them? One of the men, Herbert Roach, appears willing to talk, but he'd rather do it somewhere other than here. Viv can get answers out of him at a nearby diner or in an alley out of sight of the main door. Once sufficiently warmed by coffee, a cigarette, or the fire of Inspiration, Roach nervously reveals the following:").
scene_text(men_gone_missing, "If Viv visits Fuller, he gives her the same brush-off he would in 'Fuller Himself', that the men's work didn't pass muster. Pressing the issue of the men, or otherwise going inside on this er- rand, means Viv faces the Challenge 'Getting Past the Guards' in 'Breaking Into Fuller's.'").
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
scene_visited(charlie_comes_clean, false).
scene_name(charlie_comes_clean, "Charlie Comes Clean").
scene_type(charlie_comes_clean, alternate).
scene_lead_ins(charlie_comes_clean, the_leg_breaker).
scene_lead_outs(charlie_comes_clean, breaking_into_fullers).
scene_text(charlie_comes_clean, "Armed with the knowledge that Charlie's been holding out on her, Viv may wish to question her again. At first, Charlie vehemently insists that she told Viv everything she knows, taking great offense that Viv doubts her word. Once Viv reveals her new information, Charlie's resistance breaks down and she confesses her full knowledge of that night.").
scene_text(charlie_comes_clean, "As far as Charlie knows, George could have split. She came back late to drop off some equipment she'd... borrowed. Normally it was just George there, working on his machine. She wryly admits that she probably didn't have to return the equipment as long as she brought it into work the next day, but she liked to make sure George went home and got at least a little shut-eye.").
scene_text(charlie_comes_clean, "Viv may recognize Charlie's fear of having her name attached to this information. It takes Reassurance to convince Charlie that Viv won't name her as a source in print or go straight to Fuller with anything Charlie tells her. All she knows is she found Mr. Fuller at George's desk, looking over some of his schematics. The machine was there too, but no George. Fuller convinced her to help 'put it away' for safekeeping and said George must have forgotten when he left. That wasn't like George, but Charlie thought no harm would be done if they put it away at the shop. George had been worked up, after all - maybe he was frustrated. She figured George would come in the next day, same as always.").
scene_text(charlie_comes_clean, "But then George didn't come in, and eventually the police did. She tried talking to Mr. Fuller about it, only, the night before, Fuller saw the tools Charlie had borrowed. Now Fuller's threatening her into silence with the threat not just of losing her job ('I've got a mother at home and a kid sister. It took George pushing to get me this job. I'd have to go back to a waitress' salary and men pinching me') but of reporting her to the police for theft. If the police booked her for that, they'd probably find out she's been wiring houses too - off the books and without a license ('I want to put my sister through college so she can get out of this place'). Things could get real bad for her. She can't prove Fuller knows anything - what kind of evidence is finding him in his own shop at night? She's been keeping quiet, but it eats her up inside.").
scene_text(charlie_comes_clean, "If Viv makes the request while Pushing with Inspiration or Flattery, she may persuade Charlie to investigate Fuller's with her. Alternately, not bringing Charlie (or losing her if Viv gets knocked out) may provide a more satisfying horror ending in 'Breaking into Fuller's.' If the player wants more muscle, she may also consider bringing a Source, Esteban Manuel Aragon Gonzalez or even Lt. O'Connor, or Marty if he owes her a favor.").
scene_text(charlie_comes_clean, "As in 'Men Gone Missing,' if she bursts into Fuller's to question Charlie the second time, Viv faces the Challenge 'Getting Past the Guards' in 'Breaking into Fuller's.'").
scene_characters(charlie_comes_clean, charlie_fitzpatrick).
scene(breaking_into_fullers).
scene_visited(breaking_into_fullers, false).
scene_name(breaking_into_fullers, "Breaking Into Fuller's").
scene_type(breaking_into_fullers, conclusion).
scene_lead_ins(breaking_into_fullers, going_on_the_grid).
scene_lead_ins(breaking_into_fullers, men_gone_missing).
scene_lead_ins(breaking_into_fullers, charlie_comes_clean).
scene_lead_outs(breaking_into_fullers, sadie_and_the_scoop).
scene_text(breaking_into_fullers, "If Viv has re-questioned Fuller, come into the building to question Charlie a second time, or spent too much time talking to men outside his shop, Fuller gets wise to her line of thinking and hires some extra protection. The Keeper may also deploy them if Viv lets a night elapse between her conversation with Charlie and breaking in: Charlie's begun to think about going to the police, and Fuller can see it in her eyes. Otherwise skip 'Getting Past the Guards.'").
scene_text(breaking_into_fullers, "Outside the building, the streetlights begin to fritz. Assuming Viv gets safely past any guards, a use of Locksmith gets her through the back door, into a darkened storage room in the rear of the shop. Through the door she can see a crack of flickering light. She hears a non-mechanical hum: an eerie sound that makes her think of sailors' descriptions of the song of whales.").
scene_text(breaking_into_fullers, "Viv can glance through the door long enough to see a figure tied to a chair and strange beings floating in the harsh spotlight around him. The strange beings appear blobby and luminescent, but alien and disturbing. If Viv neither brought Charlie with her and the scene 'Charlie Comes Clean' didn't occur immediately previous to this, she recognizes the figure in the chair as Charlie. In this case, players holding 'Soft Spot' take a −2 to either of the following Challenges. Otherwise, it's one of the job-seekers she has seen massed outside Fuller's. Just then, a swirling mass of translucent tentacles moves in from the edge of the spotlight. She may choose to look away and examine the 'Body in the Chair' afterward; to watch and face the test 'Watching the Devourer;' or to burst in and interrupt, in which case the action skips to 'They Came from Beyond.' Examining the corpse after 'Watching the Devourer' does not trigger the 'Body in the Chair' test.").
scene_text(breaking_into_fullers, "The action is over in a matter of horrifying moments. A wise player would have Viv look away, in which case she hears squishing, snapping, and a muffled scream. If Viv keeps watching, she sees a writhing, iridescent mass of tentacles and claws swarm over the body, which lets out a muffled scream before being devoured. The tentacles wrap it tight, and pincers begin snipping off pieces of flesh and passing them into a dark maw, eventually devouring the flesh and organs, leaving parts of a skeleton with ragged ends of muscle and tissue hanging off. The body's clothes, neatly snipped by the pincers, lie on the floor at its feet. Once the beast ceases feeding, Viv can sense it looking for its next prey - at which point it suddenly vanishes.").
scene_text(breaking_into_fullers, "If Viv brought company, they pass out as Viv undergoes either of the next two tests. If Viv fails her run-ins with Fuller, she comes to with her companion tied up beside her. Otherwise, she can shake them back to a dazed consciousness and have them help her handle Fuller.").
scene_text(breaking_into_fullers, "Use the description of what happened to it to formulate an approximation of what she finds.").
scene_text(breaking_into_fullers, "Either way, if she examines the body and scrutinizes the seemingly empty warehouse, she must make the following test to 'Dodge the Chloroform.").
scene_text(breaking_into_fullers, "Whether he shouts it down from his darkened office with his hand on the switch that powers Preston's machine or mutters it while tied to the chair himself, Fuller can fill Viv in on the details of the situation. By now, she might be surprised to learn that he didn't kill George Preston, but he pushes the point, ignoring the collateral damage he has caused since.").
scene_text(breaking_into_fullers, "George Preston caused the first two deaths, Fink's and his own. The first was an accident. The light from Fink's room must have drawn the at- tention of the creature while it ignored Preston's lightless room. That night after work, with Charlie having slipped out, Preston broke down and con- fessed the whole thing to Fuller, begging the older man to destroy his device - but only after he let beasts from beyond kill him in the same way they had eaten Fink. To him, this seemed like the only way he could atone for Fink's death. Fuller didn't believe a word of it, instead thinking the kid had finally snapped from too many nights working late. Maybe he'd killed his neighbor, but nothing else made sense.").
scene_text(breaking_into_fullers, "Only after Fuller watched from his darkened office did he believe Preston's story. He threw the emergency switch to cut power to the kid's bench, but it was too late. Viv senses excitement, rather than horror in his voice. In Fuller's opinion Preston was a coward, afraid of his own success. If the world at the edge of our vision isn't made up of ghosts but of something much more horrible, that just makes his invention more valuable.").
scene_text(breaking_into_fullers, "All Fuller needs now are those damn schematics so he can reproduce the machine - as a weapon. With the news from Europe, he knows it'll be a seller's market soon enough and this could change things the way gas did in the Great War. And Charlie (if he killed or captured her)? He could tell it was only a matter of time before she went to the police - doesn't have the sense to keep her head down.").
scene_text(breaking_into_fullers, "The thing Viv saw? That isn't the only kind of beast out there, that's just his 'pet' - the one who's learned to come when Fuller switches on the device. He's seen far more than that: big, stupid, whale-like blobs and swarms of tiny creatures which pick over and devour the remains. You'd never know anyone had died. (Fuller isn't naïve about his 'pet.' He switches off the machine once it loses interest in a body, only switching it on a few minutes later to attract the scavengers who remove the corpse. If the 'pet' can see beyond the light, Fuller doesn't want to find out firsthand.)").
scene_text(breaking_into_fullers, "Her head splitting, Viv comes back to full con- sciousness to find herself tied to a chair (with any companions beside her) on the main floor of the repair shop. Lights from the workbenches, meant to illuminate detail work, encircle her in a painful glare. She has difficulty making out any details be- hind the brightness. Once Fuller sees she's woken up, he monologues details from 'Fuller Fesses Up' above as he switches on the machine, triggering the test 'They Came from Beyond.'").
scene_text(breaking_into_fullers, "Though Viv gets a chance to escape, the ma- chine begins to take effect, revealing sights and sounds from a plane of reality bordering on our own. It takes some time for the creature to realize Fuller has set out a second meal. In the meantime, other strange beasts walk or float by Viv as she takes fights for Stability and takes stock of her situation.").
scene_text(breaking_into_fullers, "After either rushing in to save the captive in the chair, or being captured by Fuller and making the Stability Challenge 'They Came from Beyond' (whether Advance or Setback), Viv may attempt to escape without being eaten. She may use Quick Tests (Advance 4+, but any failed test increases the Difficulty of the next Quick Test of any kind by 1) as proposed by the player. If tied up by Fuller, she can use Athletics to untie her hands or Preparedness to have a pocketknife Fuller didn't think to check for. A successful Quick Test of Athletics or Fleeing, if Fuller has spotted her, gets her into the darkness where she can pull the plug to the machine, flip the wall switch to the desk, smash the machine, shoot it (the canonical method of destruction), or even propose a way to switch on the light in Fuller's office, turning the creature's attention to him. If she fails the tests and the Difficulty gets too high? Move on to the coda and Viv's last thoughts.").
scene_text(breaking_into_fullers, "How Viv resolves the situation if she escapes the creatures depends entirely on the player and her goals. She may wish to hold Fuller at gunpoint, if she has a gun, and force him to confess to his crimes. She may knock him cold or shoot him in the legs, and leave him for the police. She may prefer to rely on her two dice in Fleeing and try to grab any schematics (appropriate on whatever the GM considers a high success) as she escapes, calling in a tip for MacAdams to check out the repair shop.").
scene_characters(breaking_into_fullers, howard_fuller).
scene_characters(breaking_into_fullers, charlie_fitzpatrick).
scene(sadie_and_the_scoop).
scene_visited(sadie_and_the_scoop, false).
scene_name(sadie_and_the_scoop, "Sadie and the Scoop").
scene_type(sadie_and_the_scoop, denouement).
scene_lead_ins(sadie_and_the_scoop, breaking_into_fullers).
scene_text(sadie_and_the_scoop, "After wrapping things up at Fuller's, Viv can report back to Preston's fiancée. How much she chooses to reveal is up to the player. Perhaps Sadie only needs to know that her fiancé's device backfired, killing him, and his boss covered it up. Sadie mourns, but accepts that sometimes brilliant inventors pay a price for their genius. Viv gets the sense that even if she moves on, Sadie will always canonize George in her mind. Viv may use Edges such as 'Good Citizen' or 'Marty's Respect' to talk someone into finding Sadie another job.").
scene_text(sadie_and_the_scoop, "Did Viv leave Fuller alive and not call the police? If so, Petunia Adams finds him the next morning, swinging from the iron walkway to his office. Viv hears about this when a fellow journalist covering the story remembers her interest in the place.").
scene_text(sadie_and_the_scoop, "If Viv retrieves the schematics but does not destroy them, she comes home several days later to find out from her landlady that the police raided her apartment and confiscated some drawings they said were stolen from their investigation. She can only imagine where they might end up.").
scene_text(sadie_and_the_scoop, "As for Charlie, if she somehow survived the ordeal, Viv may make overtures - but learns that she plans to take her mother and sister and leave the city. She wants to put as much distance between her and these horrors as she can - though she'll never be able to shake off her newfound knowledge.").
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
clue_description(george_didnt_have, "(Core, 'Charming Charlie') George didn't have a lot of friends, but he grew up with one of his coworkers - Charlie Fitzpatrick. As kids, they'd planned to travel the world together.").
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
clue_description(the_police_questioned, "(Alternate, 'What the Cops Know') The police questioned her several times, but all she knows is what they told her - someone in George's building got killed. And they insist George did it.").
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
clue_description(he_couldnt_find, "He couldn't find Simpson, as usual. When he had almost gotten back to his room, he saw the first... thing. It made him think of a living blimp, floating gently. He slammed and locked he door to his room, but it passed through the wall, almost as though it weren't made of real stuff. For a few minutes, he sat paralyzed on the bed, watching things like the blimp float or mosey by. Then, right before Fink screamed, he saw something else - like a soap bubble but with claws for arms and what looked like tentacles. He'd have screamed too, if he weren't too scared to breathe. Its hideous teeth opened - Fink screamed and it moved through the wall into Fink's room instead. A moment later, it vanished. Everything went back to normal.").
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
clue(george_had_called).
clue_description(george_had_called, "George had called Madame Isis the afternoon of his disappearance and made an appointment through Pearl to see Madame that evening after work. He sounded very shaky. When he didn’t show, Pearl became concerned something had happened.").
clue_known(george_had_called, false).
clue(pearl_went_to).
clue_description(pearl_went_to, "Pearl went to Fuller's on Saturday to find him, but the men there were very rude to her and wouldn’t tell her where he went.").
clue_known(pearl_went_to, false).
clue(as_far_as_pearl).
clue_description(as_far_as_pearl, "(Alternate lead-in, 'Miracle Machine') As far as Pearl knows, George's machine will let ordinary people see spirits. Of course very sensitive people like Madame Isis can already see spirits just like she’s heard of people hearing radio music in their fillings. Spirits surround us, like radio waves, if we only had a machine that would let us see them.").
clue_known(as_far_as_pearl, false).
clue_leads_to(as_far_as_pearl, miracle_machine).
clue(she_insists_that).
clue_description(she_insists_that, "(Alternate lead-in, 'Temple of Nephthys') She insists that she came here on her own initia- tive, though Assess Honesty suspects she's covering for someone who at least suggested it, to find the machine or at least the plans. If they had this machine at the temple, imagine the people it would draw in! (Knowing Pearl's history with the temple, Viv suspects a very personal motive in the girl's pursuit of the machine.)").
clue_known(she_insists_that, false).
clue_leads_to(she_insists_that, temple_of_nephthys).
clue(british_by_birth).
clue_description(british_by_birth, "British by birth, Carrington immigrated to the United States at the turn of the century.").
clue_known(british_by_birth, false).
clue(carrington_has_carried).
clue_description(carrington_has_carried, "Carrington has carried on psychical investigations since his late teens. Like many in the profession, he remains open to the idea of psychic phenomena existing. He divided his earliest book, The Physical Phenomena of Spiritualism, into two sections: 'The Fraudulent' and 'The Genuine' (much smaller)").
clue_known(carrington_has_carried, false).
clue(in_1924_he).
clue_description(in_1924_he, "In 1924, he served along with Harry Houdini on a committee of experts from the Scientific American evaluating medium Mina 'Margery' Crandon. Carrington remained the lone holdout convinced of the possible veracity of her powers. As a young man, he represented a medium debunked by others but whose phenomena he could not entirely explain.").
clue_known(in_1924_he, false).
clue(he_founded_his).
clue_description(he_founded_his, "He founded his own American Psychical Institute and Laboratory in the early '20s, but it closed after a few years. He recently restarted the institute.").
clue_known(he_founded_his, false).
clue(the_telephone_directory).
clue_description(the_telephone_directory, "The telephone directory lists an address and phone number for the American Psychical Institute. (Viv may also obtain this from the letter, if she filched it.)").
clue_known(the_telephone_directory, false).
clue(most_so_called).
clue_description(most_so_called, "Most so-called mediums are no more than charlatans. For such an interesting field, it is unfortunately rife with frauds and hucksters.").
clue_known(most_so_called, false).
clue(as_george_said).
clue_description(as_george_said, "As George said, he remains convinced of the possibility of psychic phenomena: more than a possibility at this point, as some recent experiments with a subject, Eileen Garrett, have settled his doubts.").
clue_known(as_george_said, false).
clue(if_viv_has).
clue_description(if_viv_has, "If Viv has spoken to George's neighbors and/or viewed the body, and asks about beings other than ghosts, Carrington looks shaken. He had considered the possibility, of course. His early theories about the existence of psychic phenomena derived from the belief that such widely recorded phenomena must have some basis in reality. Many scriptures speak of 'demons,' and he supposes they might exist as well.").
clue_known(if_viv_has, false).
clue(madame_isis_describes).
clue_description(madame_isis_describes, "Madame Isis describes George Preston as a 'seeker after truth.' He had questions for her about the afterlife and about how her talent worked. George showed remarkable insight into the nature of gifted individuals such as herself: that it came as naturally as sight or taste. Using Assess Honesty, Viv gets the sense that Madame Isis has natural talent - at telling people exactly what they want to hear.").
clue_known(madame_isis_describes, false).
clue(in_her_assessment).
clue_description(in_her_assessment, "(Alternate, 'The Leg-Breaker') In her assessment, 'and believe me, honey, I've met quite a few killers in my day,' George Preston wouldn't kill anyone. She only saw George raise his voice once - to a tough-looking man who stopped George outside the temple one night last week. While she didn't overhear the conversation, Madame Isis got a sense it had to do with money. She knows the type.").
clue_known(in_her_assessment, false).
clue(madame_isis_attributes).
clue_leads_to(in_her_assessment, the_leg_breaker).
clue_description(madame_isis_attributes, "Madame Isis attributes her ability to speak with the dead to a spiritual connection with the goddess Nephthys.").
clue_known(madame_isis_attributes, false).
clue(if_asked_why).
clue_description(if_asked_why, "If asked why she calls herself 'Isis,' not 'Nephthys,' she sense's Viv's Streetwise and gives her an honest answer, 'Nobody remembers Nephthys, dear. Besides, it would look funny if I had a temple to myself, now wouldn't it?'").
clue_known(if_asked_why, false).
clue(now_that_she).
clue_description(now_that_she,"(Alternate, 'Addie Needs Answers') Now that she thinks of it, there seems to have been a rash of disappearing electricians lately. Just last night, she had a woman in here - one of the type who doesn't know if the person's dead or alive - who said her husband hadn't come home in two days. Electrician too, if she remembers right. If Viv stays for a communion, the woman might come back.").
clue_known(now_that_she, false).
clue_leads_to(now_that_she, addie_needs_answers).
clue(madame_isis_hopes).
clue_description(madame_isis_hopes,"(Core, 'The Miracle Machine') Madame Isis hopes Viv can find George. His machine would change her line of work forever. She hasn't seen it in action, but George told her he will have it working this week. If it works, she might help him out with those money problems of his - as long as nobody else gets that machine for a few years. (Interactions with Pearl may change how this answer plays out, but the gist remains the same. She may call Pearl in at this point to return the schematics and offer to buy them from Viv if she can find the rest.)").
clue_known(madame_isis_hopes, false).
clue_leads_to(madame_isis_hopes, the_miracle_machine).
clue(if_asked_about).
clue_description(if_asked_about,"If asked about Carrington, Madame Isis sniffs derisively and makes remarks about people with nothing better to do with their time.").
clue_known(if_asked_about, false).
clue(max_her_husband).
clue_description(max_her_husband,"Max, her husband, hasn't been home in two days now. Half the time, she thinks he got paid for a job and bought a ticket to run off, leaving her and the kids. The other half, she fears someone jumped him for the money.").
clue_known(max_her_husband, false).
clue(as_far_as_she).
clue_description(as_far_as_she,"(Alternate, 'Men Going Missing') As far as she knows, Max tried for work at a lot of places. She remembers him saying Mr. Fuller had lost a man and he might get a permanent job, which would be a mercy. When she went down there the morning he didn't come home, the men told her Fuller had asked him to work on a per-day basis. Viv might ask them if they know more about it.").
clue_known(as_far_as_she, false).
clue_leads_to(as_far_as_she, men_gone_missing).
clue(she_tried_asking).
clue_description(she_tried_asking,"She tried asking Mr. Fuller, but he gave her the brush-off. 'Said my Max wasn't good enough but he hadn't stiffed him for the day, neither.'").
clue_known(she_tried_asking, false).
clue(addie_knows_about).
clue_description(addie_knows_about,"Addie knows about the Temple of Nephthys because her pastor has preached against its wickedness. Even though talking to spirits is a sin, 'like that witch in the Bible,' she believes it could work. 'Saul talked to the prophet Samuel, didn't he?' She wants answers badly enough she's willing to live under a curse to do so.").
clue_known(addie_knows_about, false).
clue(its_not_like).
clue_description(its_not_like,"It's not like Max not to come home. Some guys go on a bender when they get paid for a job, but not her Max. Addie squirms uncomfortably. Assess Honesty perceives she doesn't feel entirely convinced by her own words.").
clue_known(its_not_like, false).
clue(yes_shes_visited).
clue_description(yes_shes_visited,"Yes, she's visited the city morgue every day. Gruesome. And she has to get a neighbor to watch the children. The neighbor thinks she's there now. But there's ways to make a body disappear. It could be in the river with 'those cement shoes.'").
clue_known(yes_shes_visited, false).
clue(no_addie_hasnt).
clue_description(no_addie_hasnt,"No, Addie hasn't yet gotten a straight answer out of Madame Isis. She says Max's spirit will talk when he wants to. If he doesn't talk tonight (or didn't talk tonight), she thinks she won't come back. Streetwise: Just like she refuses to answer questions about George Preston, Madame has decided to play it safe in case Max comes home.").
clue_known(no_addie_hasnt, false).
clue(of_course_the).
clue_description(of_course_the,"Of course the girl thinks her fiancé didn't do it, but plenty of vicious killers seem perfectly ordinary to their family and friends.").
clue_known(of_course_the, false).
clue(august_williams_clearly).
clue_description(august_williams_clearly,"August Williams clearly hit the sauce that night before bed. He just saw something a little darker than pink elephants.").
clue_known(august_williams_clearly, false).
clue(murders_dont_always).
clue_description(murders_dont_always,"Murders don't always have a motive like they do in the pictures. Maybe Preston snapped because he didn't like the way Fink looked at him. Maybe Fink played his radio too loud while Preston was trying to sleep.").
clue_known(murders_dont_always, false).
clue(yes_he_knows).
clue_description(yes_he_knows,"Yes, he knows Lt. O'Connor, and he'll have a word with O'Connor's captain about the kind of company his man keeps (if Viv tries dropping O'Connor's name to get out of trouble.)").
clue_known(yes_he_knows, false).
clue(these_schematics_are).
clue_description(these_schematics_are,"These schematics are missing several pages. One couldn't build a complete machine from them.").
clue_known(these_schematics_are, false).
clue(from_what_she).
clue_description(from_what_she,"From what she can tell, this would be the center of the device. It resembles a radio receiver, receiving signals and passing them along to the missing part - logically an amplifier. But it doesn't look like any radio schematic she's seen. It's much more complex.").
clue_known(from_what_she, false).
clue(for_something_probably).
clue_description(for_something_probably,"(Core, 'Going on the Grid') For something probably the size of a small suitcase, this device draws a disproportionate amount of power. It would probably cause outages on the city's pieced-together system. If Viv mentions the problems with electricity at the apartment building, the contact affirms the connection. The contact knows Marie Lewis, a dispatcher at Consolidated Gas: either as a former student at the college (Nettie) or as a [deliberate look] friend (Charlie). If someone's using the device, Marie might help her figure out where it is.").
clue_known(for_something_probably, false).
clue_leads_to(for_something_probably, going_on_the_grid).
clue(marty_is_also).
clue_description(marty_is_also,"Marty is also trying to hunt down George. If Viv got an Advance on 'Spotting Marty the Mouth,' he's not surprised she made him and references a previous scene (e.g., 'George's Apartment,' 'Temple of Nephthys,' 'The Thing in the Morgue') in which he just barely made it around a corner. Otherwise he's watched her for some time. Either way, he realized she's on the same errand as he is.").
clue_known(marty_is_also, false).
clue(preston_had_borrowed).
clue_description(preston_had_borrowed,"Preston had borrowed money from a generous local businessman (Marty doesn't say a mob- backed loan shark, but Streetwise Viv reads into that). It came due last week, but that generous personality got squat. Now Marty needs to find him and explain the difference between a loan and fil-an-thro-pee, see?").
clue_known(preston_had_borrowed, false).
clue(yeah_he_waited).
clue_description(yeah_he_waited,"Yeah, he waited outside that crackpot Egyptian place to talk to Preston. Sometimes puts a bit more pressure on a guy when you have a nice little talk in front of his friends, see?").
clue_known(yeah_he_waited, false).
clue(hes_heard_the).
clue_description(hes_heard_the,"He's heard the kid's trying to dodge a murder rap. Didn't figure him for the type.").
clue_known(hes_heard_the, false).
clue(how_much_does).
clue_description(how_much_does,"How much does he owe? About $200.").
clue_known(how_much_does, false).
clue(hed_hoped_to).
clue_description(hed_hoped_to,"He'd hoped to compare notes, with a meaningful glance at her reporter's notebook (or flipping through it, if Viv holds Problem 17).").
clue_known(hed_hoped_to, false).
clue(marty_doesnt_know).
clue_description(marty_doesnt_know,"Marty doesn't know how Preston managed to give him the slip. The guy didn't seem like a slick operator. But he vamoosed, and if Marty can't find hide or hair of the guy, it'll be his own hide, if she knows what he means.").
clue_known(marty_doesnt_know, false).
clue(the_night_preston).
clue_description(the_night_preston,"(Alternate lead-in, 'Breaking into Fuller's') The night Preston disappeared, Marty was watching the door at Fuller's from 4 p.m. onward - planning to have 'a friendly chat, see?' - But Preston never came out. Marty figures he must've gotten a warning from one of the other fellows and scrammed out the back. There was a moment the streetlights went on the fritz, but he kept his eye on the door the whole time: thought it might be some kind of funny business.").
clue_known(the_night_preston, false).
clue_leads_to(the_night_preston, breaking_into_fullers).
clue(he_only_saw).
clue_description(he_only_saw,"(Alternate, 'Charlie Comes Clean') He only saw one person go in, a dame. That happened maybe ten minutes after the streetlights went on the fritz. Two people come out. The short, funny dame that works there (attempts to determine which dame lead him to provide clarifying descriptions of Charlie, not Petunia). And the Joe that owns the place. They came out together.").
clue_known(he_only_saw, false).
clue_leads_to(he_only_saw, charlie_comes_clean).
clue(viv_trades_the).
clue_description(viv_trades_the,"Bargain: Viv trades the notebook for some nonspecific favor in the future. Take on Problem 18 , 'I Owe You One.'").
clue_known(viv_trades_the, false).
clue(describe_how_viv).
clue_description(describe_how_viv,"Describe how Viv uses a Push to convince Marty that he won't learn more from the notebook.").
clue_known(describe_how_viv, false).
clue(viv_promises_to).
clue_description(viv_promises_to,"Reassurance: Viv promises to let Marty know when she finds George, or at least finds out what happened to him. Problem 19 , 'Two Masters.'").
clue_known(viv_promises_to, false).
clue(the_entry_for).
clue_description(the_entry_for,"The entry for the disturbance on the night of Fink's death shows multiple complaints from neighboring apartment buildings and one drugstore in a two-block radius around his apartment building.").
clue_known(the_entry_for, false).
clue(by_the_time).
clue_description(by_the_time,"By the time maintenance workers arrived, the power had returned to normal and they could find no problems in the system itself.").
clue_known(by_the_time, false).
clue(the_ledger_shows).
clue_description(the_ledger_shows,"The Ledger shows several similar entries from the night shift for calls in a five-block region north of Fulton. Same ambiguous resolution.").
clue_known(the_ledger_shows, false).
clue(the_calls_north).
clue_description(the_calls_north,"The calls north of Fulton have come in each night, starting on Thursday, May 2, around 10:30 p.m., with repair crews arriving as early as 11 p.m. to find no problems. If Viv visits at night, she may mention this to a night dispatcher who exasperatedly mutters 'we need to send out a pre-emptive team or just stop responding to those calls.'").
clue_known(the_calls_north, false).
clue(at_the_center).
clue_description(at_the_center,"(Core, 'Breaking Into Fuller's') Evidence Collection: At the center of those disturbances? Fuller's Electrical Repair.").
clue_known(at_the_center, false).
clue(hes_only_here).
clue_description(hes_only_here,"He's only here because his missus will get right sore if she doesn't think he's pounding the pavement every day. He has no desire to work for Fuller, 'anyways, not anymore.'").
clue_known(hes_only_here, false).
clue(far_as_he).
clue_description(far_as_he,"(Alternate, 'The Leg-Breaker') Far as he knows, George was an OK guy, but he was making bad decisions. Like borrowing money from a guy everyone knows works for, well, all he can say is... people. And you don't want to be in debt to people. If he could guess, that'd be what happened to George... except for the strange matter of his replacements.").
clue_known(far_as_he, false).
clue_leads_to(far_as_he, the_leg_breaker).
clue(why_doesnt_he).
clue_description(why_doesnt_he,"Why doesn't he want to work for Fuller? The man's been hiring day-rate replacements and it strikes Herbert as funny that he never asks them to work a second day. Could be like he says every morning, he's looking for men who meets his standards. But after Addie Sims came 'round asking about her husband, he realized he hasn't heard from any of the other fellows Fuller hired.").
clue_known(why_doesnt_he, false).
clue(no_he_hasnt).
clue_description(no_he_hasnt,"No, he hasn't looked them up. That's not really his business.").
clue_known(no_he_hasnt, false).
clue(the_really_strange).
clue_description(the_really_strange,"(Alternate lead-in, 'Breaking into Fuller's') The really strange thing is those fellows Fuller hired never came out at the end of the day. Neither did Fuller. He asked about it yesterday because Jim O'Hara is a buddy of his. One of the guys said the boss promised Jim more if he stayed late to work on a 'special project.' With five little ones, Jim can't exactly say no, can he?").
clue_known(the_really_strange, false).
clue_leads_to(the_really_strange, breaking_into_fullers).
clue(wife_rose_hasnt).
clue_description(wife_rose_hasnt,"Jim O'Hara: wife Rose hasn't seen him since yesterday, assumes he's hiding at his brother's after drinking his earnings.").
clue_known(wife_rose_hasnt, false).
clue(no_his_wife).
clue_description(no_his_wife,"Mike Deaton: no, his wife Ida doesn't know where he's gone. She's almost frantic enough to telephone the police, but 'they never help people like us.' Viv knows through her source Lt. O'Connor that the Missing Persons department rarely follows up on men who leave their families.").
clue_known(no_his_wife, false).
clue(no_wife_if).
clue_description(no_wife_if,"Danny Mallory: no wife. If Viv checks with his landlord, she'll find he hasn't seen Danny in several days. Possible he got a job that took him out of town; that happens sometimes.").
clue_known(no_wife_if, false).


:- dynamic(source/1).
:- dynamic(source_name/2).
:- dynamic(source_profession/2).
:- dynamic(source_description/2).
:- dynamic(source_investigative_abilities/2).

source(annette_rice).
source_description(annette_rice, "If, during her time at Hunter College, someone had asked Viv which professor she'd be closest friends with in a decade, she'd never have named Nettie Rice. The kindly, tweed-clad woman who taught her Natural Science course managed to make the subjects interesting but didn't woo her into the sciences. Viv had nearly forgotten her until she found herself in need of scientific assistance in one of her investigations. Viv admires Nettie's energy — as the new chair of the Department of Natural Sciences at Hunter College, she's always buried in paperwork, yet she always manages to teach the introductory classes and spend time meeting with students. The constant activity takes a toll, though, and there's no secret to the source of her energy: empty coffee cans litter Nettie's office and apartment. Viv may notice her friend's hands shaking from over-caffeination, or Nettie may suddenly exclaim that she'd entirely forgotten dinner; she made a cup of coffee at 4 p.m. so she could wait, then another at 6 , and now it's 9:30. From Nettie's point of view, Viv's investigations could benefit from a better application of the scientific method, and she's happy to teach it. Because her position keeps her out of the lab, she jumps at chances to answer Viv's questions, particularly if it gives her a chance to look at specimens or do some actual science. Nettie knows a lot about a particular field of science and a little about the rest. Consider assigning her a specialty and having her use her authority as chair to know the rest — by chance, she was just talking with Dr. McIntyre about the very thing Viv mentions, and can supply the broad outlines easily.").
source_name(annette_rice, "Annette (Nettie) Rice").
source_profession(annette_rice, "Professor").
source_investigative_abilities(annette_rice, astronomy).
source_investigative_abilities(annette_rice, biology).
source_investigative_abilities(annette_rice, chemistry).
source_investigative_abilities(annette_rice, languages).
source_investigative_abilities(annette_rice, physics).
source(stella_abrams).
source_description(stella_abrams, "Astelle 'My spirit is more of a Stella' Abrams flits between mediums and mediums. Whether deciding to focus on sculpting or join the Hermetic Order of the Golden Dawn, she's passionate about it — until she isn't. Despite her apparent religious frivolity, she never discards books the way she does beliefs and can be called upon for theological as well as occult questions. At night, her heavy kohl makeup, bangles, and robe-like dresses quickly identify her as an acolyte with aspirations. By day, she works as a low-level draftswoman in her father's architectural firm. In return, her father funds summer-long artists' retreats and tolerates her forays into occultism. He's waiting for her to give up her wild streak and put her obvious talent to use in the family trade. If you catch her in the studio, she's likely got paint, iron filings, or plaster in her tousled brown curls, depending on her current 'period.' Viv fell for Stella during an undercover investigation of a drug-smuggling ring passing itself off as a yogic sect. Even after their fling ended, Vivian stayed close with the vivacious bohemian, who will happily expound on current and former passions, or on architecture if she must. Stella's ebullient personality doesn't lend itself to limiting the flow of information, but her earnest, schoolchild's manner when explaining Mythos matters means that hearing about Cthulhu's eventual rise doesn't scare Viv as much as it might, coming from someone else.").
source_name(stella_abrams, "Astelle 'Stella' Abrams").
source_profession(stella_abrams, "Amateur Occultist").
source_investigative_abilities(stella_abrams, architecture).
source_investigative_abilities(stella_abrams, craft).
source_investigative_abilities(stella_abrams, cthulhu_mythos).
source_investigative_abilities(stella_abrams, occult).
source_investigative_abilities(stella_abrams, theology).
source(joseph_oconnor).
source_description(joseph_oconnor, "Viv first saw police lieutenant Joseph O'Connor in 1931's Seabury Hearings (see p. 166 ), as he testified about the corrupt judicial system along with over a thousand victims, lawyers, judges, and even a few other honest police officers. He stood out to Viv as an honest man trying to do the right thing even if it jeopardized his future with the department, or even his life. When, shortly afterward, she ran across him during one of her own investigations, Viv impressed the bulb-nosed, middle-aged detective with her determination to get to the truth. They sometimes meet in the field as they investigate the same crimes, but Lt. O'Connor also welcomes Viv's visits or calls to his cramped 7th Precinct office on the Lower East Side. He understands your average street criminal's motivations and methods, but appreciates Viv's journalistic insights on big business or the rich and famous. In return, he may shake up one of her suspects or even bring them in for questioning if she makes a good enough argument. He slept better at night after the hearings, but made plenty of enemies on the force and in the judicial system. They sometimes meet in the field as they investigate the same crimes, but Lt. O'Connor also welcomes Viv's visits or calls to his cramped 7th Precinct office on the Lower East Side. He understands your average street criminal's motivations and methods, but appreciates Viv's journalistic insights on big business or the rich and famous. In return, he may shake up one of her suspects or even bring them in for questioning if she makes a good enough argument. He slept better at night after the hearings, but made plenty of enemies on the force and in the judicial system.").
source_name(joseph_oconnor, "Lt. Joseph O'Connor").
source_profession(joseph_oconnor, "Detective").
source_investigative_abilities(joseph_oconnor, cop_talk).
source_investigative_abilities(joseph_oconnor, forensics).
source_investigative_abilities(joseph_oconnor, intimidation).
source_investigative_abilities(joseph_oconnor, law).
source_investigative_abilities(joseph_oconnor, streetwise).
source(esteban_gonzalez).
source_description(esteban_gonzalez, "The son of Cuban immigrants who arrived in New York City after the Spanish-American war, Esteban Manuel Aragon Gonzalez discovered a passion for archaeology in his 20s, when he took a summer off from his work blazing trails and fighting fires in Yellowstone to take a trip to the American Southwest. Returning to New York, he found night work and studied Art History and Archaeology at Columbia College. Now he hangs out his shingle as guide for amateur archaeological expeditions, which he leads to places such as Egypt, China, Peru, and the American Southwest. Between treks, Esteban provides curatorial guidance at the American Museum of Natural History. There, he specializes in pre-Columbian artifacts of Western, Central, and South America. With his free time, Esteban hikes the Long Trail in Vermont or blazes segments of New York's newly- proposed Long Path toward Albany. A man can never get too much fresh air, sunshine, or exercise. Esteban met Viv several years ago on an expedition he led for the National Geographic Society — he came for the archaeology, Viv for the story. They developed the friendship of kindred spirits who choose a never-ending quest for adventure over white picket fences or dinners at six-thirty sharp. When in the city, he enjoys dining out with Viv to share stories of their latest exploits. He's happy to hazard the cultural history of a peculiar idol she's discovered, or identify a strange set of tracks.").
source_name(esteban_gonzalez, "Esteban Manuel Aragon Gonzalez").
source_profession(esteban_gonzalez, "Explorer").
source_investigative_abilities(esteban_gonzalez, anthropology).
source_investigative_abilities(esteban_gonzalez, archaeology).
source_investigative_abilities(esteban_gonzalez, art_history).
source_investigative_abilities(esteban_gonzalez, geology).
source_investigative_abilities(esteban_gonzalez, outdoorsman).
source(louisa_reynolds).
source_description(louisa_reynolds, "Louisa Reynolds was born a Sinclair, third cousin to Vivian on a wealthier branch of the family tree: the kind of branch that keeps track of its third cousins. Inspired by stories of Florence Nightingale and Edith Cavell, she rejected a 'proper' lady's education and entered nursing school instead. When she married prominent psychologist Arthur Reynolds, everyone expected Louisa to retire from her hospital position and hold fundraisers for his sanitarium, join a few boards of charitable institutions, and finally start behaving like the Sinclair she was born to be. Instead, her husband hired her as the sanitarium's chief nurse and she used his library as a starting point for an extensive study of psychiatry. Ten years younger than her distant cousin, Viv first sought out Louisa while working on one of her first stories, investigating conditions at sanitariums and asylums around the city. She found Reynolds' methods refreshingly modern and humane (albeit from her 1930s perspective) and formed a friendship with the older Louisa. Now a stern, no-nonsense woman in her mid-40s, Louisa disapproves of the risks Viv takes in her work, but can't argue with the results. While neither a psychiatrist nor a doctor, she's absorbed a vast practical knowledge of medicine, pharmacy, and psychology through her work and self-education. If she doesn't have an answer for Viv, she consults her husband's library and matter-of-factly dispenses more information than Viv ever cared to know on a topic.").
source_name(louisa_reynolds, "Louisa Reynolds").
source_profession(louisa_reynolds, "Nurse").
source_investigative_abilities(louisa_reynolds, medicine).
source_investigative_abilities(louisa_reynolds, pharmacy).
source_investigative_abilities(louisa_reynolds, psychology).


:- dynamic(problem/5).
:- dynamic(problem_number/2).
:- dynamic(problem_name/2).
:- dynamic(problem_type/2).
:- dynamic(problem_description/2).

problem(sucker_for_a_pretty_face, 1, "Sucker for a Pretty Face", "You change lovers as frequently as clothes. Of course you try not to sleep with your story's subjects, but sometimes it's the best way to get new information, right?", true).
problem(hand_to_mouth, 2, "Hand-to-Mouth", "You got into this line of work to make a difference, not make dough. But even with the odd work you pick up around the office, you never know if you'll have next month's rent.", true).
problem(anything_for_the_story, 3, "Anything for the Story", "Every good reporter remembers the time their nose for a story put them in danger. You, on the other hand? You remember the time or two it didn't.", true).
problem(hot_tempered, 4, "Hot-Tempered", "You go from zero to boiling over in the blink of an eye. Whether it's for justice or personal dignity, it puts a strain on relationships and even employment.", true).
problem(fuller_becomes_suspicious, 5, "Fuller Becomes Suspicious", "Once Fuller notices the missing envelope, he puts two and two together (or, if he saw you take it, he starts to have second thoughts). He suspects you plan to target him in your next exposé. He requires Pushes when questioning him further.", false).
problem(soft_spot, 6, "Soft Spot", "Whatever you're feeling for Charlie, it's not entirely professional.", false).
problem(big_talker, continuity, "Big Talker", "You protested a little too strongly that you just want information about George, and got a bigger response than you bargained on. The GM brings foward men with random and conflicting theories until you either make a Stealth Quick Test to leave them arguing with each other or lose an hour or two listening to them all.", false).
problem(wrenched_ankle, 8, "Wrenched Ankle", "You pulled something in your foot. -2 on your next Athletics, Fighting, or other General/Physical test or Take Time and then discard this Problem", false).
problem(torn_dress, 9, "Torn Dress", "Pearl fights dirty. During the scuffle, she pulled one arm half off your dress. Until you Take Time to regroup and change your outfit, lose the ability to make Pushes and take a −2 to Cool tests", false).
problem(oconnor_isnt_happy, 10, "O'Connor Isn't Happy", "You've done it this time, Sinclair. O'Connor knows you don't always use the most orthodox means, but he's still angry you got caught. The strings he's had to pull for you...", true).
problem(easier_in_than_out, 11, "Easier in than Out", "Getting in's the easy part. You make it home safely, but reports of a snappily dressed woman filter back to MacAdams, who may put two and two together.", false).
problem(no_one_is_safe, 12, "No One Is Safe", "Mythos Shock: Nothing from this world could do that to a person. If this could happen in an ordinary apartment building, no one is safe.", false).
problem(jaded, 13, "Jaded", "Only someone with ice in her veins could hold her cool like that. Your next Push for Reassurance or Inspiration costs double as the words taste like ash in your mouth. Then discard this card. If you don't have two Pushes, you can't Push.", true).
problem(no_good_deed, 14, "No Good Deed", "Difficulties with money come to a head in Antagonist Reactions or the episode's coda. If you somehow manage to fail even with the extra die, a creditor immediately calls for the money Fuller paid you. You may Counter this card with Edge 7, 'Marty's Respect.'", false). 
problem(jumpy, 15, "Jumpy", "How long did he follow you before you noticed? Was he the man you saw walking away last night? You can't help looking over your shoulder for more. −2 on your next Cool or Stability test, then discard this card.", false).
problem(sprained_wrist, 16, "Sprained Wrist", "Trying to get free from Marty's hold really messed up your wrist. −2 on any Athletics test until you either Take Time to get it in a brace or wake up the next day.", false).
problem(martys_got_your_notebook, 17, "Marty's Got Your Notebook", "If you thought Marty wanted you, you've got another think coming, sister. Marty wants to know what you know... and not just about this case. Marty might be willing to give it back for money or information.", false).
problem(i_owe_you_one, 18, "I Owe You One", "Other reporters get in bed with the mob, but you always swore that'd never be you. You just hope when Marty calls in his favor he'll be gentleman enough to let up after that.", false).
problem(two_masters, 19, "Two Masters", "Now you've got a bona fide mob enforcer waiting for your call. Better not forget to clue him in when all this is over.", false).
problem(cocky, 20, "Cocky", "You feel really good about how well you did. Too good. Take a −2 to your next Sense Trouble test.", false).
problem(all_shook_up, 21, "All Shook Up", "You are not coping well at all. Until you Take Time to counter this card, take a −2 to Cool and Stability tests.", false).
problem(haunted, 22, "Haunted", "Mythos Shock: Neither alcohol nor drugs can erase the knowledge that such horrors exist or that their paths can cross ours.", false).
problem(evicted, 23, "Evicted", "Viv's landlady gives her and her roommate until the end of the month to get out.", false).
problem(on_probation, 24, "On Probation", "Your editor is keeping an extra close eye on your comings and goings. Better not put a foot out of line.", false).

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


:- dynamic(edge/5).
edge(ice_queen, 1, "Ice Queen", "You're getting better at prioritizing things that matter. Spend to get an extra die on Cool or Stability or a +2 on a General/Mental test, then discard", false).
edge(sure_footed, 2, "Sure-Footed", "You know exactly where to put your feet, even if that's in someone else's path. Spend for an extra die in an Athletics test.", false).
edge(pulled_it_together, 3, "Pulled it Together", "It didn't start pretty, but you finished with a flair. Spend for +2 on any Athletics or Fighting test.", false).
edge(cat_burglar, 4, "Cat Burglar", "It didn't start pretty, but you finished with a flair. Spend for +2 on any Athletics or Fighting test.", false).
edge(the_world_must_know, 5, "The World Must Know", "You've stumbled into the middle of a massive cover-up. No ordinary man could have done this, and police must know it. You have a cause. Discard to gain a Push.", false).
edge(professional_ethics, 6, "Professional Ethics", "You may end up sleeping on a friend's couch, but nobody can smear your sterling reputation. Spend for an extra die on Cool or Stability or a +2 on a General/ Mental test and discard.", false).
edge(martys_respect, 7, "Marty's Respect", "You've proven yourself one tough broad. Spend this card to get a favor from Marty — just be sure it's the kind of favor you can live with.", true).
edge(sharp_reflexes, 8, "Sharp Reflexes", "Spend for an extra die on any Athletics or Fighting test.", false).
edge(on_edge, 9, "On Edge", "You've pulled together the focus and control under pressure that make you an excellent investigative reporter. Spend to gain an extra die to Mental tests.", false).
edge(unflappable, 10, "Unflappable", "You've seen hell's gates open and still held it together. Spend to Counter a Mythos Shock Problem.", false).
edge(good_citizen, 11, "Good Citizen", "Doing what you can to make this world a better place. Spend this card for a Push.", true).
edge(still_a_castle, 12, "Still a Castle", "It may not be much, but it's yours and you can protect it. Spend for an extra die on any Athletics or Fighting test or a +2 on General/Physical tests.", false).
edge(hardship_pay, 13, "Hardship Pay", "You convince your editor that the paper's lucky to have such a dedicated a reporter as you on its staff. You not only turn the situation around but manage to talk him into a raise. Counters Problem 2, 'Hand-to-Mouth,' if held.", false).


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
challenge(getting_into_the_morgue).
challenge_name(getting_into_the_morgue, "Getting into the Morgue").
challenge_type(getting_into_the_morgue, "Stealth").
challenge_advance(getting_into_the_morgue, "6", "With practiced ease, you slip into the mortuary wing of the building. It appears deserted: just you and the shadows. Earn an Edge: Edge 4, 'Cat Burglar'"). 
challenge_hold(getting_into_the_morgue, "3", "5", "The police must have anticipated something like this. Two uniforms stand outside the door to the morgue. If you want access, you might have to go through channels. There’s still a chance to slip away quietly.").
challenge_setback(getting_into_the_morgue, "As above, but you turn a corner and walk headfirst into one of the uniforms. See 'Chewed Out' below and gain Problem 10, 'O'Connor Isn’t Happy.'").
challenge_extra_problem(getting_into_the_morgue, easier_in_than_out).
challenge(seeing_finks_remains).
challenge_name(seeing_finks_remains, "Seeing Fink's Remains").
challenge_type(seeing_finks_remains, "Stability").
challenge_advance(seeing_finks_remains, "9", "The overall condition of the body reminds you of the time you covered a train wreck. Not the sucker marks, of course, but there's a first time for everything. Earn an Edge: Earn Edge 5, 'The World Must Know'").
challenge_hold(seeing_finks_remains, "5", "8", "Your horror makes you go weak in the knees. If you don’t get out of here soon, you’ll lose the contents of your stomach - perhaps for the second time.").
challenge_setback(seeing_finks_remains, "See Hold, but also gain Problem 12, 'No One Is Safe'").
challenge_extra_problem(seeing_finks_remains, jaded).
challenge(cash_in_hand).
challenge_name(cash_in_hand, "Cash in Hand").
challenge_extra_description(cash_in_hand, "Penalty: -2 if Viv holds Problem 2, 'Hand to Mouth'").
challenge_type(cash_in_hand, "cool").
challenge_advance(cash_in_hand, "4", "You barely even consider it. Even though you need the money, you know how it would complicate things. Perhaps when this is over, your client can sell the plans herself. Earn an Edge: Edge 6, 'Professional Ethics'").
challenge_hold(cash_in_hand, "2", "3", "You don’t take the money, but it hurts.").
challenge_setback(cash_in_hand, "You take it, and keep all or give some to Sadie to ease your conscience. Invite the player to narrate what financial difficulty this solves for Viv: paying her rent, getting her typewriter out of hock, etc. But at what cost to her sense of professionalism, and to the case?").
challenge_extra_problem(cash_in_hand, no_good_deed).
challenge(spotting_marty_the_mouth).
challenge_name(spotting_marty_the_mouth, "Spotting Marty the Mouth").
challenge_type(spotting_marty_the_mouth, "Sense Trouble").
challenge_advance(spotting_marty_the_mouth, "5", "You realize you’ve picked up a tail... and may choose to confront him straight away or step into an alley and attempt to get him at a disadvantage; see the 'Pinning Marty' Challenge below. Viv’s advantage gets folded into the Challenge’s Difficulty").
challenge_setback(spotting_marty_the_mouth, "You don’t notice anything until you hear the sound of hurrying footsteps and a strong pair of hands steer you into an alley. Move to Challenge 'Jumped by Marty.'").
challenge_extra_problem(spotting_marty_the_mouth, jumpy).
challenge(pinning_marty).
challenge_name(pinning_marty, "Pinning Marty").
challenge_type(pinning_marty, "Fighting").
challenge_advance(pinning_marty, "3", "You surprise your shadow and get him off his feet or pinned against a wall. Secures his cooperation. Invite the player to describe how she does it. Earn an Edge: Edge 7, 'Marty’s Respect'").
challenge_hold(pinning_marty, "2", "or less", "Marty didn’t see it coming, but he’s been in the game long enough that he steps deftly aside and the two of you find yourselves facing off. Spend a Bargain Push to get him talking or give the Keeper a compelling description of how you win his cooperation, such as offering to share what you know.").
challenge_extra_problem(pinning_marty, sprained_wrist).
challenge(jumped_by_marty).
challenge_name(jumped_by_marty, "Jumped by Marty").
challenge_type(jumped_by_marty, "Fighting").
challenge_advance(jumped_by_marty, "4", "You extricate yourself from your attacker and put him at a disadvantage. Secures his cooperation. Invite the player to describe how she does it. Earn an Edge: Edge 8, 'Sharp Reflexes'").
challenge_hold(jumped_by_marty, "2", "3", "You manage to get free but he sidesteps your attempts to get him in a hold. Same results as Hold in 'Pinning Marty' Challenge above.").
challenge_setback(jumped_by_marty, "Once he’s got what he wants, Marty lets you go. The bad news is what he wants. Problem 17, 'Marty's Got Your Notebook.'").
challenge_extra_problem(jumped_by_marty, sprained_wrist).
challenge(getting_past_the_guards).
challenge_name(getting_past_the_guards, "Getting Past the Guards").
challenge_type(getting_past_the_guards, "Stealth").
challenge_advance(getting_past_the_guards, "6", "You move like a cat in the shadows and gain entrance to the warehouse without the men outside even spotting you. Earn an Edge: On an 8+, gain Edge 9, 'On Edge'").
challenge_setback(getting_past_the_guards, "Fuller’s guards hit you over the head and haul you inside to face the big man; move to 'Tied to the Chair.'").
challenge_extra_problem(getting_past_the_guards, cocky).
challenge_name(watching_the_devourer, "Watching the Devourer").
challenge(watching_the_devourer).
challenge_type(watching_the_devourer, "Stability").
challenge_extra_description(watching_the_devourer, "Spending Edges: Edge 5, 'The World Must Know,' for an extra die if Viv hasn't spent it on a Push, or any Edges that affect Stability or General/Mental.").
challenge_advance(watching_the_devourer, "9", "You’ve discovered what killed Myron Fink, and that’s a start, right? You can't let yourself get sidetracked by horrors. Earn an Edge: On an 11+, gain Edge 10, 'Unflappable'").
challenge_hold(watching_the_devourer, "5", "8", "You struggle to keep down the remains of your last meal. Either lose Edge 9, 'On Edge,' or lose a die in 'Dodge the Chloroform.'").
challenge_setback(watching_the_devourer, "Same as Hold but also gain Problem 21, 'All Shook Up.'").
challenge_extra_problem(watching_the_devourer, jaded).
challenge(body_in_the_chair).
challenge_name(body_in_the_chair, "Body in the Chair").
challenge_type(body_in_the_chair, "Stability").
challenge_extra_description(body_in_the_chair, "Spending Edges: Edge 5, 'The World Must Know,' for an extra die if Viv hasn’t spent it on a Push, or any Edges that affect Stability or General/Mental.").
challenge_advance(body_in_the_chair, "6", "You're closing on the answers; you just need to focus. Take a lot of deep breaths and keep going.").
challenge_hold(body_in_the_chair, "3", "5", "You’ve rarely seen a body in such a mangled state. The smell of blood and bowels causes you to retch. Either lose Edge 9, 'On Edge,' or take a −4 penalty to 'Dodge the Chloroform.'").
challenge_setback(body_in_the_chair, "Same as Hold but also gain Problem 21, 'All Shook Up.'").
challenge_extra_problem(body_in_the_chair, jaded).
challenge_name(dodge_the_chloroform, "Dodge the Chloroform").
challenge(dodge_the_chloroform).
challenge_type(dodge_the_chloroform, "Sense Trouble").
challenge_advance(dodge_the_chloroform, "12", "You sense movement in the darkness and duck out of the way just as Fuller, chloroform in hand, looms up behind you.").
challenge_hold(dodge_the_chloroform, "6", "11", "Fuller gets the chloroform over your mouth, but after the first inhalation, you have the sense to stop breathing. Head swimming, you can move to the test 'Fighting off Fuller.' Take 12 minus your result as a penalty to that test.").
challenge_setback(dodge_the_chloroform, "You take a deep breath of something sweet, and then everything blurs. You stay at the edge of consciousness as someone maneuvers your body into a chair and binds your hands. Move to 'Tied to the Chair.'").
challenge_extra_description(dodge_the_chloroform, "Spending Edges: Edge 9, 'On Edge,' or any Edges that affect Sense Trouble or General/Mental.").
challenge(fighting_off_fuller).
challenge_name(fighting_off_fuller, "Fighting off Fuller").
challenge_type(fighting_off_fuller, "Fighting").
challenge_advance(fighting_off_fuller, "4", "Whether it's righteous anger or self-preservation, you unleash everything you’ve got and either knock Fuller out or secure his cooperation. Move to 'Fuller Fesses Up.'").
challenge_extra_description(fighting_off_fuller, "Penalty: See 'Dodge the Chloroform' above.").
challenge_setback(fighting_off_fuller, "Fuller's right hook finishes the work the chloroform started. Move to 'Tied to a Chair.'").
challenge(they_came_from_beyond).
challenge_name(they_came_from_beyond, "They Came from Beyond").
challenge_type(they_came_from_beyond, "Stability").
challenge_advance(they_came_from_beyond, "10", "Sure, nobody else has escaped this situation, but they didn't have all the facts. Hold it together, girl, and you can pull through.").
challenge_setback(they_came_from_beyond, "Take on Problem 22, 'Haunted.'").
challenge(antagonist_reaction_1_challenge).
challenge_type(antagonist_reaction_1_challenge, "cool").
challenge_advance(antagonist_reaction_1_challenge, "6", "Gain Edge 11, 'Good Citizen'.").
challenge_hold(antagonist_reaction_1_challenge, "2", "5", "They accept her argument, but give her the cold shoulder for a few days").
challenge_setback(antagonist_reaction_1_challenge, "Gain Problem 23, 'Evicted'.").
challenge_extra_problem(antagonist_reaction_1_challenge, no_good_deed).
challenge(antagonist_reaction_2_challenge).
challenge_type(antagonist_reaction_2_challenge, "cool").
challenge_advance(antagonist_reaction_2_challenge, "10", "He gets away, but Viv did some damage. Edge 12, 'Still a Castle'").
challenge_hold(antagonist_reaction_2_challenge, "5", "9", "He gets away without the schematics").
challenge_setback(antagonist_reaction_2_challenge, "Viv loses the schematics").
challenge_extra_problem(antagonist_reaction_2_challenge, wrenched_ankle).

challenge(antagonist_reaction_4_challenge).
challenge_type(antagonist_reaction_4_challenge, "cool").
challenge_advance(antagonist_reaction_4_challenge, "6", "Edge 13, 'Hardship Pay'").
challenge_hold(antagonist_reaction_4_challenge, "3", "5", "Viv wants a stiff drink after that conversation, but no harm done").
challenge_setback(antagonist_reaction_4_challenge, "Problem 24, 'On Probation'").
challenge_extra_problem(antagonist_reaction_4_challenge, cocky).

challenge(antagonist_reaction_5_challenge).
challenge_type(antagonist_reaction_5_challenge, "fighting").
challenge_advance(antagonist_reaction_5_challenge, "7", "Viv keeps her purse and her pride").
challenge_hold(antagonist_reaction_5_challenge, "3", "6", "Viv manages to hold onto her purse but still takes on Problem 8, 'Wrenched Ankle'").
challenge_setback(antagonist_reaction_5_challenge, "Viv loses her purse and takes on Problem 8, 'Wrenched Ankle'").

challenge(antagonist_reaction_6_challenge).
challenge_type(antagonist_reaction_6_challenge, "cool").
challenge_advance(antagonist_reaction_6_challenge, "6", "Viv suavely maneuvers the flame out the door").
challenge_hold(antagonist_reaction_6_challenge, "3", "5", "Viv manages to extract herself, but it's not smooth or polite").
challenge_setback(antagonist_reaction_6_challenge, "Viv yields to temptation, and it ends messily, as always. −2 on the next General/ Mental test").

challenge(antagonist_reaction_7_challenge).
challenge_type(antagonist_reaction_7_challenge, "stealth").
challenge_advance(antagonist_reaction_7_challenge, "5", "He doesn't see Viv at all and appears unsure she even lives there").
challenge_hold(antagonist_reaction_7_challenge, "2", "4", "Viv loses him in the alleys, but now knows he's located her address").
challenge_setback(antagonist_reaction_7_challenge, "It takes Viv 30 minutes to convince him to go away. −2 on the next General/ Mental test").

challenge(antagonist_reaction_8_challenge).
challenge_type(antagonist_reaction_8_challenge, "cool").
challenge_advance(antagonist_reaction_8_challenge, "9", " Viv bites back the urge to argue; +2 to the next Cool or Stability test").
challenge_hold(antagonist_reaction_8_challenge, "3", "8", "The argument puts Viv's nerves on edge; −2 to the next Cool or Stability test").
challenge_setback(antagonist_reaction_8_challenge, "Problem 24, 'On Probation'").


:- dynamic(character/1).
:- dynamic(character_is_alive/2).
:- dynamic(character_name/2).
:- dynamic(character_description/2).
:- dynamic(character_goal/2).
:- dynamic(character_relation_valence/3).
:- dynamic(character_relationship/3).

character(sadie_cain).
character_is_alive(sadie_cain, true).
character_name(sadie_cain, "Sadie Cain").
character_description(sadie_cain, "21, the client. A garment worker engaged to George Preston. She believes that while the course of true love may not always run smooth, love still prevails.").
character_goal(sadie_cain, "Find missing fiance").
character_relationship_valence(sadie_cain, george_preston, positive).
character_relationship(sadie_cain, george_preston, "married").
character_relationship_valence(sadie_cain, player, positive).
character(george_preston).
character_is_alive(george_preston, false).
character_name(george_preston, "George Preston").
character_description(george_preston, "23 (deceased), the victim/fiancé. Always a tinkerer, he sought to unlock the secrets of the human brain. Unfortunately, his 'sympathetic resonator' proved fatal in a way he never anticipated.").
character_relationship_valence(george_preston, marty_the_mouth, negative).
character_relationship_valence(george_preston, charlie_fitzpatrick, positive).
character_relationship_valence(george_preston, hereward_carrington, positive).
character_relationship_valence(george_preston, madame_isis, positive).
character_relationship_valence(george_preston, clarence_simpson, neutral).
character_relationship(george_preston, howard_fuller, "works for").
character_relationship(george_preston, charlie_fitzpatrick, "friends").
character(charlie_fitzpatrick).
character_is_alive(charlie_fitzpatrick, true).
character_relationship_valence(charlie_fitzpatrick, player, positive).
character_description(charlie_fitzpatrick, "23, the victim's best friend since childhood, a hard-eyed, talented woman working as an electrician alongside George. Charlie feels guilt and anxiety over having brushed off George the night he disappeared.").
character_name(charlie_fitzpatrick, "Charlie (Charlene) Fitzpatrick").
character_relationship_valence(charlie_fitzpatrick, howard_fuller, neutral).
character_relationship(charlie_fitzpatrick, howard_fuller, "works for").
character(howard_fuller).
character_is_alive(howard_fuller, true).
character_relationship_valence(howard_fuller, player, negative).
character_name(howard_fuller, "Howard Fuller").
character_description(howard_fuller, "47, owner of Fuller's Electrical Repair. Ruthlessly cut-throat in business mat- ters, Fuller spends his days in an upper-floor office overlooking his men's work. He could answer the riddle of Preston's disappearance, but doing so would force him to reveal the true creator of the machine he hopes to pass off as his own invention. It might also raise questions about subsequent disappearances.").
character_relationship_valence(howard_fuller, george_preston, negative).
character_relationship_valence(howard_fuller, charlie_fitzpatrick, neutral).
character_relationship_valence(howard_fuller, petunia_adams, positive).
character(clarence_simpson).
character_is_alive(clarence_simpson, true).
character_name(clarence_simpson, "Clarence Simpson").
character_relationship_valence(clarence_simpson, player, negative).
character_description(clarence_simpson, "68, George Preston's thin, beak-nosed landlord. Generally lazy, and can go for months without needing to do any real business for the apartment-house other than collecting monthly rents. Extremely put out by the death and by having the police in his building.").
character(pearl_leblanc).
character_is_alive(pearl_leblanc, true).
character_relationship_valence(pearl_leblanc, player, neutral).
character_description(pearl_leblanc, "18, a stenographer and devout acolyte of the Temple of Nephthys. Pearl would do anything for Madame Isis, who channels the ghost of her beloved elder sister Louisa any time Pearl's devotion seems to flag.").
character_name(pearl_leblanc, "Pearl LeBlanc").
character_relationship_valence(pearl_leblanc, madame_isis, positive).
character_relationship(pearl_leblanc, madame_isis, "works for").
character(madame_isis).
character_is_alive(madame_isis, true).
character_relationship_valence(madame_isis, player, negative).
character_description(madame_isis, "52, priestess of the Temple of Nephthys. A quick hand with a cold read, medium Bertha Cook formed her own church to add a veneer of respectability to her old sideshow act. Now, as Madame Isis Neferi, she holds public séances three nights a week and by private appointment along with a syncretic Sunday service combining pseudo-Egyptian mythology with American spiritualism").
character_name(madame_isis, "Madame Isis Neferi").
character_relationship_valence(madame_isis, addie_sims, positive).
character(hereward_carrington).
character_is_alive(hereward_carrington, true).
character_relationship_valence(hereward_carrington, player, neutral).
character_name(hereward_carrington, "Hereward Carrington").
character_description(hereward_carrington, "55 (1880–1958), investigator of psychic phenomena and frequent de- bunker of fraudulent mediums. Like Houdini, Carrington's researches and publications suggest that he wants to believe in the possibility of psychic phenomena. Some contemporaries criticize him for occasional credulity despite his many debunkings.").
character(marty_the_mouth).
character_is_alive(marty_the_mouth, true).
character_relationship_valence(marty_the_mouth, player, negative).
character_name(marty_the_mouth, "Marty the Mouth").
character_description(marty_the_mouth, "43, low-level enforcer for the Luciano crime family. Affable enough in a tough-guy way, unless you cross his boss or start poking your nose somewhere it doesn't belong.").
character(addie_sims).
character_is_alive(addie_sims, true).
character_relationship_valence(addie_sims, player, neutral).
character_description(addie_sims, "36, anxious client of Madame Isis and wife of one of Fuller's victims.").
character_name(addie_sims, "Addie Sims").
character(petunia_adams).
character_is_alive(petunia_adams, true).
character_relationship_valence(petunia_adams, player, neutral).
character_name(petunia_adams, "Petunia Adams").
character_description(petunia_adams, "Works as Fuller's secretary").
character(minnie_boyer).
character_is_alive(minnie_boyer, true).
character_relationship_valence(minnie_boyer, player, neutral).
character_description(minnie_boyer, "Lives in George's apartment building").
character_name(minnie_boyer, "Minnie Boyer").
character(august_williams).
character_is_alive(august_williams, true).
character_relationship_valence(august_williams, player, neutral).
character_description(august_williams, "Lives in George's apartment building").
character_name(august_williams, "August Williams").
character(violet_blake).
character_is_alive(violet_blake, true).
character_relationship_valence(violet_blake, player, neutral).
character_description(violet_blake, "Lives in George's apartment building").
character_name(violet_blake, "Violet Blake").
character(marie_lewis).
character_is_alive(marie_lewis, true).
character_name(marie_lewis, "Marie Lewis").
character_relationship_valence(marie_lewis, player, neutral).
character_description(marie_lewis, "Works at Consolidated Gas, and knows source Nettie or Charlie.").
character(herbert_roach).
character_is_alive(herbert_roach, true).
character_relationship_valence(herbert_roach, player, neutral).
character_name(herbert_roach, "Herbert Roach").
character_description(herbert_roach, "Looking for work from Fuller").
character(myron_fink).
character_is_alive(myron_fink, false).
character_name(myron_fink, "Myron Fink").
character_description(myron_fink, "The deceased. Lived in George's apartment building.").
character(james_macadams).
character_is_alive(james_macadams, true).
character_name(james_macadams, "James MacAdams").
character_description(james_macadams, "The cop in charge of the case").
character_relationship_valence(james_macadams, player, neutral).


:- dynamic(investigative_ability/4).

investigative_ability(accounting, "Accounting", "You understand bookkeeping and accountancy procedures; you can read and keep financial records. You can: • tell legitimate businesses from criminal enterprises • reconstruct financial histories from old records (uncovering, say, slave-trading or smuggling) • spot the telltale signs of embezzlement, bribes, blackmail, or dummy companies • reel off the latest rumors from the world of business, finance and industry • track payments to their source", academic).
investigative_ability(anthropology, "Anthropology", "You are an expert in the study of human cultures, from the Stone Age to the Jazz Age. You can: • identify artifacts and rituals of living cultures • describe and predict the customs of a foreign group or local subculture • extrapolate the practices of an unknown culture from similar examples", academic).
investigative_ability(archaeology,"Archaeology","You excavate and study the structures and artifacts of historical cultures and civilizations. You can: • tell how long something has been buried and date its construction • identify artifacts by culture and usage • distinguish real artifacts from fakes • navigate inside ruins and catacombs, including finding secret doors and hidden construction • describe the customs of ancient or historical cultures • spot well-disguised graves and underground hiding places",academic).
investigative_ability(architecture,"Architecture","You know how buildings are designed and constructed. You can: • guess what lies around the corner while explor- ing an unknown structure • judge the relative strength of building materials • identify a building's age, architectural style, original use, and history of modifications • deduce the existence of hidden rooms, priest-holes, hyper-geometric witch-garrets, and other anomalies • construct stable makeshift structures • identify elements vital to a building's structural integrity • name the architectural firm responsible for any well-known building in your area, recounting any peculiarities involved in its construction",academic).
investigative_ability(art_history,"Art History","You're an expert on works of art (including the practical arts such as furniture and pottery) from an aesthetic and technical point of view. You can: • distinguish real works from fakes • tell when something has been retouched or altered • identify the age of an object by style and materials • accurately estimate the price of an objet d'art • call to mind historical details on artists and those around them • list the most recent films set in a given stylistic period and comment on their relative accuracy",academic).
investigative_ability(assess_honesty,"Assess Honesty","You can tell when someone's trying to play you for a sap. Not only does your gut tell you when a witness is lying, life's hard knocks have taught you to instinctively judge and sense motives and character. Not all lies are verbal. You can tell when a person is attempting to project a false impression through body language. Certain individuals - grifters, actors, professional gamblers, and similar - may be so adept at lying that they never set off your built-in lie detector, or overload it by being 'always on.' Some people believe their own falsehoods. Psychopathic and sociopathic personality types (like most sorcerers and/or politicians) and brainwashed cultists lie reflexively and without shame, depriving you of the telltale tics and gestures you use to sense when a person is deceiving you. Those who have communed excessively with the inhuman intelligences of the Mythos will occasionally 'read wrong,' but will similarly fail to send any useful signals to a sane watcher. Though you may know it to be false, utter hokum the speaker believes does not register as untruthful - just absurd. Use Assess Honesty to cold-read a mark for fortune-telling scams, phony séances or mentalist acts, and the like.",interpersonal).
investigative_ability(astronomy,"Astronomy","You study celestial objects, including the stars and planets. You can: • decipher astrological texts • use a telescope, including large reflectors • plot the movement of stars and planets, and know which ones are overhead at any given time • predict eclipses, comets, meteor showers, and other regular astronomical phenomena An L.A. Investigator with this ability enjoys research access to the Griffith Park Observatory.",technical).
investigative_ability(bargain,"Bargain","You are an expert in making deals with others, convincing them that the best arrangement for you is also the best for them. You can: • haggle for goods and services • gauge likely prices of items, including what someone else will pay for them • mediate hostage situations or diplomatic crises • swap favors or information with others • exchange cash for information Spends allow you to gain an advantage other than information in exchange for money or other considerations.",interpersonal).
investigative_ability(biology,"Biology","You study the evolution, behavior, and physical makeup of living organisms. You can: • tell when an animal is behaving strangely • tell whether an animal or plant is natural to a given area • identify an animal from samples of its hair, blood, bones, or other tissue • analyze unknown ichor, scales, or slime • identify a plant from a small sample • isolate or detect natural poisons or venoms",academic).
investigative_ability(bureaucracy,"Bureaucracy","You expertly navigate bureaucratic organization, from government offices to large private firms. From the hidden reasons behind a bureaucracy's opaque decisions to the arcane details of its paperwork, you can extract the information you seek smoothly and with a minimum of ruffled feathers. You can: • convince officials to provide sensitive information • gain credentials on false pretenses • find the person who really knows what's going on • develop and maintain contacts within a bureaucracy with which you have regular dealings • locate offices and files • borrow equipment or supplies In a noir setting you also know which government officials are honest and which are corrupt. In the latter case, you may know who's lining their pockets or is holding something over them. The same goes for members of private institutions. Bureaucracy is not a catch-all information- gathering ability. Bureaucrats wish to convey the impression that they are busy and harried, whether or not they actually are. Most take a profound, secret joy in directing inquiries elsewhere. When players attempt to use Bureaucracy to gain information that is more easily accessible via other abilities (such as Research), their contacts will snidely advise them to do their own damn legwork.",interpersonal).
investigative_ability(chemistry,"Chemistry","You're trained in the analysis of chemical sub- stances. Given lab facilities, you can: • identify drugs, pharmaceuticals, toxins, and viruses, among a wide variety of other materials • create simple explosives, poisons, gases, and acids • analyze unknown substances, alloys, compounds, etc. • perform ballistics and gunpowder analysis of bullets or other evidence • match samples of dirt or vegetation from a piece of evidence to a scene • perform chemical document analysis on ink or paper",technical).
investigative_ability(cop_talk,"Cop Talk","Despite the low regard in which cops hold private detectives, you know their lingo and needs well enough to extract information from them. You can: • prompt them to spill confidential information • get excused for minor infractions • read between the lines when a cop can't come out and tell you the whole truth • call in favors from law enforcement contacts - often the one cop on the force who genuinely likes and trusts you",interpersonal).
investigative_ability(craft,"Craft","You can create useful physical objects, working with materials like wood, metal, precious stones, leather, and so forth. This allows you a general background knowledge in handmade items of all kinds. You can: • discover a secret drawer in a wooden desk • tell roughly how old a craft object is • identify its famous maker, if applicable • sort fakes from authentic items • say whether an item was skillfully or crudely fashioned • know what kind of wood, stone, porcelain and so on an item is made of • in the case of gems and precious metals, tell whether the materials are genuine",technical).
investigative_ability(cryptography,"Cryptography","You can make or break codes and ciphers in any language you can read. Given some time and a dictionary, you may be able to puzzle out foreign alphabets, translating languages by brute force.",academic).
investigative_ability(cthulhu_mythos,"Cthulhu Mythos","You have begun to piece together the secret rules of the real world, rather than the ignorant scrim of physics and religion. You recognize the great names, and the truths they conceal. Have you read a Mythos tome, a rare, ancient book laying out in obscure detail the maddening secrets of Cthulhu and the Old Ones? This ability lets you recall any specific hints or facts from it relevant to your current situation. You can: • identify inhuman creatures and their spoor • translate pre-human tongues • read inscriptions of the far-distant past • predict what comes next when watching cult- ists perform an obscene rite • identify which alien god has incarnated itself inside the formless monster that is currently crushing the life out of you • distinguish a practitioner of an ordinary, ineffectual human occult tradition from a sorcerer able to call on the power of the Old Ones. Setbacks while using this ability may leave you with Mythos Shock Problem cards.",academic).
investigative_ability(evidence_collection,"Evidence Collection","You're adept at casing an investigation site and at finding important clues. You can: • spot hidden objects or objects of interest (such as bullet casings under a couch, or drops of blue ooze behind a desk) at a crime scene or other investigation site • note relationships between objects at a crime scene, reconstructing sequences of events • find, transfer, take, and compare fingerprints • match typewritten materials to a given machine • match handwriting to a known sample • store objects for forensic analysis without contaminating your samples",technical).
investigative_ability(flattery,"Flattery","You get people to help you by complimenting or playing up to them, as subtly or blatantly as they prefer. You can get them to: • reveal information • perform minor favors • regard you as trustworthy • date you (if applicable)",interpersonal).
investigative_ability(forensics,"Forensics","You study crime scenes and perform autopsies on deceased subjects to determine their cause and circumstances of death. You can use skeletal evidence to reconstruct the physical details (age, sex, medical condition, sometimes occupation) of the deceased. In the case of death by foul play, your examination can identify: • the nature of the weapon or weapons used • the approximate time of death • the presence of intoxicants or other foreign substances in the bloodstream or on the skin • the contents of the victim's last meal In many cases, you can reconstruct the sequence of events leading to the victim's death from the arrangement of wounds on the body. Though forensic science really only takes off in the postwar era, you can still lift and match fingerprints, make casts of tire tracks, and perform basic ballistics tests.",technical).
investigative_ability(geology,"Geology","As an expert on rocks, soils, minerals, and the primordial history of the Earth, you can: • analyze soil samples, crystals, minerals, and so forth • determine the age of a rock stratum • date and identify fossils • evaluate soil for agriculture or industry • identify promising sites for oil or water wells, mines, etc. • anticipate vulcanism, seismic events, avalanches, and other earth phenomena",academic).
investigative_ability(history,"History","A broad study of recorded human history, with an emphasis on political, military, economic, and technological developments, allows you to: • recognize obscure historical allusions • recall important or relevant events in a given country, city, or region • identify ancient languages and scripts (assuming they're of human origin) • perform textual analysis on a manuscript or book to date it or identify the author • determine the age of a document • tell where and when an object made during historical times was fashioned • identify the period of an article of dress or costume • (if based in L.A.) name Hollywood productions set in a particular historical period, supplemented with a list of their ludicrous inaccuracies",academic).
investigative_ability(inspiration,"Inspiration","You can convince reluctant witnesses to supply information by appealing to their better selves. After a few moments of interaction, you intuitively sense the positive values they hold dearest, then invoke them in a brief but stirring speech. Depend- ing on the person you're dealing with, you might call to mind their: • religious beliefs • love of friends, family, or community • sense of fairness • desire for justice • belief in a secular ideology, whether it be democracy, Marxism, or pacifism • pride in personal achievement",interpersonal).
investigative_ability(intimidation,"Intimidation","You get what you want from people by scaring them - physically, or with vividly detailed threats. You can: • gain information • inspire the subject to leave the area • quell a subject's desire to attempt violence against you or others • extract promises of future cooperation, secured by the threat of your later retaliation",interpersonal).
investigative_ability(languages,"Languages","Allows you to extract information from documents written in languages other than English. You may not be able to elegantly translate or win points for accuracy among true academics, but you find the clue you need. A scenario writer who cares about realism will not require your P.I. to explain his expertise in more than one unlikely tongue per case. Especially with obscure languages, this ability likely requires the use of an English-to- whatever-language-matters-here dictionary and some extended brow-furrowing.",academic).
investigative_ability(law,"Law","You are familiar with the criminal and civil laws that pertain in your noir city, as well as on the state and federal levels. You can bluff your way through dealings with foreign legal systems. With this knowledge you can: • assess the legal risks attendant on any course of action • understand lawyerly jargon • call on legal colleagues or contacts for favors and advice • convincingly dispute the legality of actions undertaken by police and prosecutors",academic).
investigative_ability(locksmith,"Locksmith","You can open doors and locks, and disarm alarms, without benefit of a key. Or maybe you have some universal passkeys with you. You can also find convenient windows to jimmy or coal-cellar doors to force, if need be. Many locks require specialized tools, possession of which without a locksmith's license is a criminal offense in most jurisdictions. Fortunately, your P.I.'s badge allows you to carry them. Very complex or tricky locks may require spends to open them speedily, to avoid noise or damage, or to relock afterward. Using Locksmith is, in other words, a way to gather clues. A lock that won't open is like a witness that won't talk or a bloodstain you can't find: antithetical to the mystery-solving, investigative-adventure design goals of GUMSHOE and Cthulhu Confidential. Opening a safe, bank vault, or other lock for a benefit other than information-gathering requires a Filch Challenge. You are presumed to be using your knowledge of locks as part of that attempt.",technical).
investigative_ability(medicine,"Medicine","You can diagnose human disease, injuries, poisonings, and physical frailties, and may be broadly acquainted with veterinary medicine as well. If past medical training makes sense as part of your backstory, you may still hold a medical license. You can: • diagnose diseases, poisonings, and other ailments • prescribe remedies for a treatable condition • deliver a baby • identify the extent and cause of an unconscious person's trauma • detect when a person is suffering from a physically debilitating condition such as drug addiction, pregnancy, or malnutrition • establish a person's general level of health • identify medical abnormalities • understand medical jargon",academic).
investigative_ability(occult,"Occult","You're an expert in the historical study of magic, superstition, and sorcery from the Stone Age to the present. From Theosophists to Voodoo to the Golden Dawn, you know the dates, the places, the controversies, and the legends. You can: • identify the cultural traditions informing a ritual by examining its physical remnants • supply historical facts and anecdotes concerning various occult traditions, demons, and legends • guess the intended effect of a ritual from its physical traces • identify occult activities as the work of informed practitioners or dilettante thrill-seekers • fake a fortune-telling session, séance, or other occult activity • read and cast a horoscope • identify occult paraphernalia, grimoires, symbols, and codes This ability does not allow you to work magic or summon supernatural entities. It grants only the most superficial hints about the Cthulhu Mythos. You may or may not believe that real supernatural entities and forces exist: the skill functions just as well in either case.",academic).
investigative_ability(oral_history,"Oral History","You can find sources willing to talk, win their confi- dence, and gather (usually lengthy) oral testimony about historical events, local traditions, folklore, family legend, or gossip. This is an excellent way to do research in illiterate or semi-literate societies, and in rural or small-town communities in general. This ability also covers taking shorthand notes or making recordings without spooking your sources.",interpersonal).
investigative_ability(outdoorsman,"Outdoorsman","Long hours of camping and exploration in the wild have made it as comfortable to you as life in the concrete jungle. You can: • tell when an animal is behaving strangely • tell whether an animal or plant is natural to a given area • find edible plants, hunt, and fish • make fire and survive outdoors at night or in bad weather • navigate overland, albeit more easily with a compass and a map • track people, animals, or vehicles across grass or through forests • hunt with dogs, including tracking with bloodhounds, assuming you have friendly dogs available Despite the period gender specificity of the term, nothing stops female characters from having this ability.",technical).
investigative_ability(pharmacy,"Pharmacy","You are able to identify and compound drugs and medicines. You can: • identify drugs and potions, and recognize their side-effects and contraindications • identify poisons and determine antidotes • secure or manufacture morphine, cocaine, and other controlled substances",technical).
investigative_ability(photography,"Photography","You're proficient in the use of cameras, including still and motion-picture photography. You can: • take useful visual records of crime scenes or expeditions • develop film or plates and enhance hidden details • use filters and lights to capture images only vis- ible in infrared or ultraviolet • spot manual retouching or camera trickery in a photographic image or negative • take trick photographs using double exposures and other methods • realistically retouch and manipulate photographic images • (Los Angeles) put cinematographers at ease by talking shop with them about the latest equipment • (Los Angeles) look at a movie or professionally taken still photo and identify the studio employee who lensed it",technical).
investigative_ability(physics,"Physics","You study the fundamental forces of the universe: pressure, electromagnetism, motion, gravity, op- tics, and radioactivity. You can: • design or refit experimental machinery to test, detect, or manipulate physical forces and energies • obtain and operate expensive or obscure pieces of laboratory equipment such as Crookes tubes, Geiger counters, or magnetometers • understand and apply advanced mathematics, including non-Euclidean geometries • (perhaps) understand advanced or alien technologies",academic).
investigative_ability(psychology,"Psychology","Your familiarity with the latest in the burgeoning field of human psychology grants you insight into the criminal mind. Based solely on their known modus operandi, you can make accurate guesses as to the upbringing and pathology of unidentified criminals. You can: • predict their upcoming actions based on their past behavior • distinguish an individual whose violence is deemed acceptable by his home culture from one who consciously defies cultural norms • distinguish subjects who can be successfully rehabilitated from the incorrigibly violent or deviant • tell whether a known individual's criminal behavior is in response to deep psychological impulses, or is driven primarily by greed",interpersonal).
investigative_ability(reassurance,"Reassurance","You can get people to do what you want by putting them at ease. This may involve fast talk, genuine sympathy, a rational accounting of risks, or just a calming presence. You can: • elicit information and minor favors • allay fear or panic in others • instill a sense of calm during a crisis • gain trust • present yourself as someone who successfully follows through on promises",interpersonal).
investigative_ability(research,"Research","You can ferret out information from collections of books, records, files, archives, newspaper morgues, or big piles of unsorted telegrams and correspondence. If the information lies within, and you have access to the collection, you can find it. You can also determine patterns: who wrote about what and to whom, what kinds of books an eccentric collector values, what might be missing from the official files, which records seem doctored and by whom, and so forth.",academic).
investigative_ability(streetwise,"Streetwise","You know how to behave among crooks, gangsters, dopers, hookers, grifters, and other habitués of the criminal underworld. You can: • use criminal etiquette to avoid fights and conflicts • identify unsafe locations and dangerous people • make and utilize criminal contacts - fences, black marketeers, drug dealers, gun runners, and so forth • successfully price illegal goods such as drugs, stolen items, or weapons • gather underworld rumors • identify your city's gangland players and understand their power relationships, even if these have recently changed",interpersonal).
investigative_ability(theology,"Theology","You study human religions in their various forms, both ancient and modern. You can: • supply information about religious practices and beliefs • quote relevant passages from the major scriptures • recognize the names and attributes of various saints, gods, and other figures of religious wor- ship and veneration • identify whether a given religious practice or ritual is orthodox or heretical • fake (or in some traditions, officiate at) a religious ceremony • know the prominent faiths and religious figures of your noir city - for example, the many wild new cults of the L.A. basin This ability does not allow you to work miracles, banish demons, commune with deities, or otherwise invoke supernatural power, even if the campaign admits the existence of a non-Mythos God or gods. You may believe in a given religion or not; the skill functions just as well in either case.",academic).




:- dynamic(general_ability/4).

general_ability(athletics, "Athletics", "Athletics allows you to: • perform general acts of physical derring-do, from running to jumping to throwing bundles of dynamite to dodging oncoming objects • resist the effects of disease, poisoning, and intoxicants • resist the effects of exposure, such as hypothermia, frostbite, and sunstroke Any big physical action not covered by another ability probably goes here.", physical).
general_ability(fighting, "Fighting", "Whether duking it out with fists and the occasional kick, defending against an incoming shovel with an opportunistically grabbed two-by-four, or trading pistol shots with hot-tempered gangsters, your Fighting ability dictates the result of the scrap. When facing impossible odds, an Advance or Hold might allow you to engage your enemies favorably enough to launch a successful escape. This covers all forms of combat, from scuffling to shooting to hand-to-hand weapons.", physical).
general_ability(conceal,"Conceal","You can hide things from view and conceal them from searchers. Methods might include camouflage, holding items out on your person, sneaking things into drawers unobserved, building secret compartments, or even altering an object's visual signature with paint or plaster. To discover items others have concealed, use the Investigative Ability Evidence Collection. In odd instances where finding the item grants you an advantage other than information - let's say locating the small Mauser in the false compartment just as Horgan's torpedoes come through the door - use a Conceal Challenge.",manual).
general_ability(cool,"Cool","Measures your ability to make the smart play, instead of the impulsive one, in response to emotional temptation. Cool saves you from such standard errors of the private dick game as: • falling for the wrong kind of dame • showing a tell that warns the killer that you know he did it • smart-mouthing the cop who's itching to club you • hitting the roulette wheel when you know you shouldn't • attempting a futile grand gesture to wring real justice from a rigged system • resist supernatural forces attempting to influence your behavior",mental).
general_ability(devices,"Devices","You build, repair, and operate electrical or mechanical devices. And what you can put together, you can take apart, disabling equipment either unnoticeably or completely. You know the workings of electrical devices from simple alarm systems to the most advanced radios. You can also hot-wire a car with an electrical ignition, which is most of those built since 1920. Given the right components, you can create jury-rigged devices from odd bits of scrap. This expertise also encompasses machines from simple stick traps to the most complex adding machines or steam turbines. (With the exception of simple latches; working with locks is covered by the Locksmith ability). Given the right components, you can create jury-rigged devices and booby-traps from odd bits of scrap. This doubles as an Investigative Ability when used to: • determine the function of a given piece of equipment • evaluate the quality of workmanship used to create an item • make high-quality audio recordings on records, Dictaphone cylinders, or wire • read Morse Code • tap telephone or telegraph lines • use a device in good repair as intended Once per case, you may specify that you can operate and (where relevant) drive a new type of heavy machinery, such as: back-hoe, steam roller, construction crane, or steam shovel. Your GM may ask you to supply a line of dialogue explaining where you picked this up.",manual).
general_ability(disguise,"Disguise","You can become someone else: clothes, voice, mannerisms, and posture. You can: • impersonate someone on the phone • blend into a crowd in the street • mingle at a party with those outside your social station • hold an entire conversation with an unwitting friend or suspect Expect to have to beat a high number in order to Advance while impersonating a real person to their friends or acquaintances. Depending on the situation, impersonating a plausible and even fictitious stranger ('oh, I'm his cousin from upstate New York') to people one has never met might require only a Difficulty 4 Quick Test.",manual).
general_ability(driving,"Driving","Anyone who's been taught can drive a car down the road without this ability. You, on the other hand, are a skilled defensive driver, capable of wringing high performance from even the most recalcitrant automobile, pickup truck, or bus. You can: • evade or conduct pursuit • avoid collisions, or minimize damage from collisions • navigate, read maps, and maintain a sense of direction The ability assumes you can drive cars, trucks, motorcycles and small motor boats. Once per case, you may reveal that you can drive another type of vehicle requiring specialized training, such as a bus, yacht, plane, tank, or gyrocopter. Where this seems unlikely, the GM may invite you to improvise a line describing the circumstances under which you learned this.",manual).
general_ability(explosives,"Explosives","As an expert in bombs and booby-traps, you can: • defuse bombs and traps • handle nitroglycerin or other dangerously unstable materials with relative safety • given time, blow open safes or vaults without damaging the contents • mix explosive compounds from common chemicals • safely construct and detonate explosive devices or booby-traps of your own Explosives doubles as an Investigative Ability when used to: • figure out the configuration of a bomb from its blast effect and shrapnel • for any bomb (exploded or unexploded), determine the method and materials of the bomb-maker, and deduce his sophistication, background, and skill",manual).
general_ability(filch,"Filch","Your nimble fingers allow you to unobtrusively manipulate small objects. You can: • pilfer clues from (or plant clues at) a crime scene under the very noses of unsuspecting authorities • pick pockets • plant objects on unsuspecting subjects",manual).
general_ability(first_aid,"First Aid","You can perform first aid on sick or injured individuals, including yourself. Depending on how the GM structures the Challenge, an Advance or Hold might stabilize the patient, keep him alive just long enough to hear a whispered confession, or fix him up entirely. Injuries the GM describes as relatively minor will be easier to score Advances and Holds on than ones he describes as serious or life-threatening.",manual).
general_ability(fleeing,"Fleeing","This ability governs how speedily you run away from impending danger, whether it comes from a gambler's gun, cops intent on locking you up, or a formless entity from beyond space. Used for characters who aren't otherwise Athletic, to give them some chance of avoiding physical harm. If you don't have Fleeing, because you instead use the better, all-around ability of Athletics, such Challenges instead default to Athletics.",physical).
general_ability(hypnosis,"Hypnosis","You can hypnotize a willing subject, recovering lost memories, suppressing unwanted ones, or removing destructive compulsions. Your technique likely involves the use of narcosynthesis, in which you administer a small dose of sodium pentothal to your subject. Treat as an Investigative Ability when gaining information useful to your case. The Investigator may submit to narcosynthesis under a supporting character's care in hopes of Countering Mythos Shocks.",mental).
general_ability(magic,"Magic","Your GM may decide that his version of Cthulhu Confidential allows the Investigator to eventually learn and practice efficacious magic. This might be used to summon Mythos entities, or bind them once summoned (a crucial step, yet all too often overlooked!). A few spells allow sorcerers to harm their opponents directly, or to subject them to mental influence. Use Athletics to resist the former, and Cool for the latter. If your Magic dice exceed your dice in the ability used to resist magic, use Magic instead. (To my taste, giving a noir detective sorcerous powers veers too far from noir horror into the tongue-in-cheek urban fantasy of the film Cast a Deadly Spell. But once you start playing, it's your game, not mine, so if that's what you want, do it).",mental).
general_ability(preparedness,"Preparedness","You expertly anticipate the needs of any investigation by packing a kit efficiently arranged with necessary gear. Assuming you have immediate access to it, you may be able to produce an object needed to overcome an impediment to your progress. A Quick Test simply determines whether you have the item in question. A Challenge allows you to not only have the object, but also overcome an associated obstacle. Equipment standard to the private investigation racket does not require a test. This includes but are not limited to: notebooks or paper, writing implements and ink, flashlights, candles and matches, colored chalk, pen-knives, magnifying glasses, pocket mirrors, string, sandwiches, and a flask of middling whiskey. Other abilities imply the possession of basic gear suitable to their core tasks. Characters with First Aid or Medicine have their own first aid kits or medical bags; Photographers arrive on the scene with cameras, film, and flash bulbs. Narrative credibility constrains the sorts of items you might have brought with you. If the GM determines that your possession of an item would seem ludicrous, anachronistic, or out of genre, you don't get to test for it. You simply don't have it. When in doubt as to allow an item, the GM imagines the film version of your adventure. If the detective's suddenly having the desired object on hand without prior setup would earn a derisive laugh from moviegoers, the GM disallows the attempt.",manual).
general_ability(psychoanalysis,"Psychoanalysis","You can provide comfort, perspective, and solace to the mentally troubled. You may be a Freudian alienist, a priest or pastor, or just an empathetic and intuitive individual. Unlike Reassurance spends, your counsel can aid supporting characters mentally scorched by confrontation with the Mythos. You can't use your own Psychoanalysis ability to counter your own Mythos Shocks.",mental).
general_ability(sense_trouble,"Sense Trouble","This ability allows you to perceive (either with sight or other senses) potential hazards to yourself or others. For example, you can: • hear the splash of a Deep One dropping into the sewer behind you • see a flittering shape cross the moon • have a bad feeling about that eerily hunchbacked priest at the seemingly deserted cathedral • notice that those two palookas in the dark corner of the bar have been intently watching you all night long • realize that anyone up in that lighthouse will have seen you coming a mile away You always make Sense Trouble Challenges, even if you get a Hold or Setback and have to play your character as unaware of impending trouble. GMs should never require the use of this General Ability to find clues to the mystery at hand. Instead, use Investigative Abilities, defaulting to Evidence Collection when no ability seems more appropriate. Sense Trouble applies during a scenario's action and suspense sequences. In short, if not seeing something will get you attacked or confront you with some other practical ill- consequence, it's Sense Trouble.",mental).
general_ability(shadowing,"Shadowing","You follow suspects without revealing your presence. You can: • use binoculars or telescopes to keep watch on a target from a distance • find undetectable vantage points • hide in plain sight • anticipate blind spots in your coverage and plan for them, or use them to lose your own shadowers",physical).
general_ability(stability,"Stability","Remain in control of your thoughts and actions when confronted with frightening or traumatic sights, sounds, or other sensory input. Stability allows you to: • move toward danger a self-protective person would avoid • avoid or suppress physical symptoms of terror and disgust, from nausea to adrenaline rush • appear calm to others, even when terrified inside • file a weird sight deep in your memory, keeping your mind intact by refusing to entertain its true significance Encounters with the especially destabilizing forces and entities of the Mythos may leave you with a Mythos Shock Problem. If you fail to counter it during play, you may suffer a mental breakdown during the story's denouement.",mental).
general_ability(stealth,"Stealth","You're good at moving (and standing still) without being noticed. You can: • move silently • hide in shadows or cover • evade visual security, whether guards (usual) or cameras (unusual) • listen at doors or windows without being overheard yourself Use Stealth when you are creeping around unnoticed. If you are trying to lose a pursuer, use Shadowing. Outrunning a pursuer is Athletics or Fleeing.",physical).


:- dynamic(player_edge/1).
:- dynamic(player_problem/1).
:- dynamic(player_investigative_ability/1).
:- dynamic(player_general_ability/2).
:- dynamic(player_pushes/1).
:- dynamic(player_item/1).

player_investigative_ability(accounting).
player_investigative_ability(assess_honesty).
player_investigative_ability(bargain).
player_investigative_ability(bureaucracy).
player_investigative_ability(cryptography).
player_investigative_ability(evidence_collection).
player_investigative_ability(flattery).
player_investigative_ability(history).
player_investigative_ability(inspiration).
player_investigative_ability(locksmith).
player_investigative_ability(oral_history).
player_investigative_ability(photography).
player_investigative_ability(reassurance).
player_investigative_ability(research).
player_investigative_ability(streetwise).
player_general_ability(athletics, 1).
player_general_ability(fighting, 2).
player_general_ability(cool, 1).
player_general_ability(disguise, 1).
player_general_ability(driving, 1).
player_general_ability(filch, 1).
player_general_ability(first_aid, 1).
player_general_ability(fleeing, 2).
player_general_ability(preparedness, 1).
player_general_ability(sense_trouble, 2).
player_general_ability(shadowing, 1).
player_general_ability(stability, 2).
player_general_ability(stealth, 1).
player_pushes(4).


:- dynamic(antagonist_reaction/1).
:- dynamic(challenge_name/2).
:- dynamic(challenge_type/2).
:- dynamic(challenge_advance/3).
:- dynamic(challenge_hold/4).
:- dynamic(challenge_setback/2).
:- dynamic(challenge_extra_problem/2).

antagonist_reaction(antagonist_reaction_1, "Holds Problem 11, 'Easier in Than Out'", "MacAdams' cops toss Viv's place, causing conflict with her landlady and roommate.", antagonist_reaction_1_challenge).
antagonist_reaction(antagonist_reaction_2, "Fuller tried and failed to buy the schematics from Viv", "A man (one of Fuller's out-of- work electricians) breaks into Viv's apartment to steal the schematics.", antagonist_reaction_2_challenge).
antagonist_reaction(antagonist_reaction_3, "Viv got a Hold in her tussle with Marty the Mouth, leaving him feeling sore", "A couple men in suits and fedoras come by Viv's place to make vague threats about what happens to Nosey Nellies", none).
antagonist_reaction(antagonist_reaction_4, "Lt. MacAdams escorted Viv home from the morgue building", "When Viv next shows up at work, her editor calls her in for a chat about the detective who just dropped by", antagonist_reaction_4_challenge).
antagonist_reaction(antagonist_reaction_5, "Viv has Problem 'Hand- to-Mouth' or Problem 14, 'No Good Deed'", "A young man tries to snatch Viv's purse, which has everything she's got left for the month in it", antagonist_reaction_5_challenge).
antagonist_reaction(antagonist_reaction_6,"Viv has Problem 'Sucker for a Pretty Face'","An old flame who's bad news drops by",antagonist_reaction_6_challenge).
antagonist_reaction(antagonist_reaction_7,"Viv has Problem 'Anything for the Story'","Sees a business owner whose corrupt employment practices she exposed lurking outside her building.",antagonist_reaction_7_challenge).
antagonist_reaction(antagonist_reaction_8,"Viv has problem 'Hot- Tempered'","Takes an offhand comment from a fellow journalist very personally.",antagonist_reaction_8_challenge).


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