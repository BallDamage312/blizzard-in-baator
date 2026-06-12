BEGIN g-bbDDKN
CHAIN IF~Global("g-fakedkndialogue","GLOBAL",1)~THEN g-bbDDKN g-bbDDKN.d001start
@0 /*As you are entering the tavern, Dak'kon stops you. He does not do that very often. */
=@1 /*"I have something I must say to you." [DAK110A] */
END
IF~~THEN REPLY @3 /*"Yes? Is everything alright, my friend?" */ DO~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)~ + g-bbDDKN.A1
IF~~THEN REPLY @4 /*"What's the matter?" */ DO~~ + g-bbDDKN.A1
IF~~THEN REPLY @5 /*"Not now, Dak'kon. We've got more important things to do." */ DO~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ + g-bbDDKN.notalk
IF~GlobalLT("GOOD","GLOBAL",0) Global("Dakkon_Slave","GLOBAL",1)~THEN REPLY @6 /*"Not now, slave. We've got more important things to do." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ + g-bbDDKN.notalk
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.notalk
@8 /*Dak'kon closes his eyes and nods politely. He remains silent. */
END
IF~~THEN REPLY @10 /*Enter the tavern. */ DO~DestroySelf() SetGlobal("g-fakedkndialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.A1
@12 /*"Two issues need to be addressed. First, *know* that this is not the first time I have visited the ward by the Ditch." */
END
IF~~THEN REPLY @14 /*"That isn't an issue, is it? Maybe you could advise me where to go to move the investigation forward." */ DO~~ + g-bbDDKN.A2
IF~~THEN REPLY @15 /*"So...?" */ DO~~ + g-bbDDKN.A2
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.A2
@17 /*"This is one of three taverns in the area. Their names are Rivergate, The Styx Oarsman, and Rat And Splat. *None* of them are as... *friendly* as The Smoldering Corpse Bar. There, devils and demons coexisted side by side, representatives of at least three or four different factions, and a domesticated mage capable of destroying an entire city. The taverns here are much more... *Homogeneous*, if you understand my words." */
END
IF~~THEN REPLY @19 /*"Rivergate?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B1
IF~~THEN REPLY @20 /*"The Styx Oarsman?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B2
IF~~THEN REPLY @21 /*"Rat and... Splat?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B3
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.B1
@23 /*"Rivergate is the inn that is the closest to the beach. This is not a place I would wish you to seek knowledge, though I fear it will be necessary. I find it abhorrent for two reasons. Local thugs often come there, plotting to rob someone. Secondly, the bartender is a slaad. They are creatures of Chaos from Limbo. It is not my wish for you to speak with him. But risky as it may be, if you have to draw your blade on him, I will support your cause." */
END
IF~~THEN REPLY @25 /*"The Styx Oarsman?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B2
IF~~THEN REPLY @26 /*"Rat and... Splat?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B3
IF~GlobalGT("g-daktavern","GLOBAL",2)~THEN REPLY @27 /*"So these are the three taverns... I'll remember that." */ DO~~ + g-bbDDKN.B4
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.B2
@29 /*"The Styx Oarsman in the western Residential Area is a tavern for fiends where the bartender is a githzerai. It may seem unusual, but he is a githzerai corrupted by evil. Gambling and fights to the death are commonplace at this tavern. It is not difficult when one is hosting large groups of baatezu, tanar'ri, yugoloths, and demodands all at once. I *know* what I said - you saw fiends at The Smoldering Corpse Bar, too. But not in such numbers. I have been there before. If you want to visit there, you must be able to distinguish between the fiends of Law and Chaos, so as not to incur their wild wrath with careless remarks. If you need a reminder, there is a library nearby with a book on fiends. Furthermore, never accept food or drink offered by fiends. Do not wonder why." */
END
IF~~THEN REPLY @31 /*"Rivergate?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B1
IF~~THEN REPLY @32 /*"Rat and... Splat?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B3
IF~GlobalGT("g-daktavern","GLOBAL",2)~THEN REPLY @33 /*"So these are the three taverns... I'll remember that." */ DO~~ + g-bbDDKN.B4
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.B3
@35 /*"That awful name hides an inn for wererats. You surely remember those who took the form of human rats. There were plenty of them in the Weeping Stone Catacombs, some even serve Lothar in the Lower Ward. The thing is, you cannot just walk in there. If you want to search for information there, you first have to know the password, and it changes from time to time. So I cannot help you get there. This inn is the northernmost one. *Know*, however, that non-wererats are usually not welcome there. You have to be careful." */
END
IF~~THEN REPLY @37 /*"Rivergate?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B1
IF~~THEN REPLY @38 /*"The Styx Oarsman?" */ DO~IncrementGlobal("g-daktavern","GLOBAL",1)~ + g-bbDDKN.B2
IF~GlobalGT("g-daktavern","GLOBAL",2)~THEN REPLY @39 /*"So these are the three taverns... I'll remember that." */ DO~~ + g-bbDDKN.B4
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.B4
@41 /*"Now you understand why these are not friendly places. But even they pale in comparison to what you intend to do next. Tell me, why did you agree to go to Cania?" */
END
IF~~THEN REPLY @43 /*"This could be a vital lead in my quest to regain my mortality. If this alternative might be safer than heading to the Fortress of Regrets immediately, I'm willing to try." */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @44 /*"Someone needs my help. Could I ignore it?" */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @45 /*"Think of all the riches we could seize. The devils have promised a generous reward." */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @46 /*"I'm not very assertive. It was hard for me to say no... They were very persuasive." */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @47 /*"I want to know what connected me to this 'friend'. Is it possible that she was something more to me?" */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @48 /*"Fate. That's the only answer I can think of." */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @49 /*"The end is near. I want to visit new places before I close my eyes forever." */ DO~~ + g-bbDDKN.C1
IF~~THEN REPLY @50 /*"I sense great power lurking there. It can enhance my potential." */ DO~~ + g-bbDDKN.C1
IF~Class(Protagonist,Fighter)~THEN REPLY @51 /*"Perhaps I can find there a worthy opponent. I need the ultimate challenge before I leave this world." */ DO~~ + g-bbDDKN.C1
IF~Class(Protagonist,Mage)
~THEN REPLY @52 /*"In my flickering memories I associate Cania as a place from which many mages draw power through agreements with devils. Perhaps I will find knowledge there that will increase my abilities." */ DO~~ + g-bbDDKN.C1
IF~Class(Protagonist,Thief)
~THEN REPLY @53 /*"Money... And the opportunity to test my abilities. It's not often that you get the chance to escape the traps of Hells and free a prisoner held there, which, if I remember correctly, is an option." */ DO~~ + g-bbDDKN.C1
IF~GlobalGT("Join_Godsmen","GLOBAL",0)
~THEN REPLY @54 /*"The Multiverse is a chain of tests. Cania can be one of the hardest ones. I feel this is the right way." */ DO~~ + g-bbDDKN.C1
IF~GlobalGT("Join_Sensates","GLOBAL",0)
~THEN REPLY @55 /*"I want to experience as much as I can. I haven't been in Cania during this lifetime." */ DO~~ + g-bbDDKN.C1
IF~GlobalGT("Join_Chaosmen","GLOBAL",0)
~THEN REPLY @56 /*"I always wanted an apple but everything I got is the lack of void." */ DO~~ + g-bbDDKN.C1
IF~GlobalGT("Join_Dustmen","GLOBAL",0)
~THEN REPLY @57 /*"I feel that I've got still too much passion in me. I can't die the True Death while feeling it. I sense a visit in Cania may help." */ DO~~ + g-bbDDKN.C1
IF~GlobalGT("Join_Anarchists","GLOBAL",0)
~THEN REPLY @58 /*"Baator is a plane of Law. Perhaps I can sow some seeds of rebellion among the lower rank fiends. They'll finally be able to overthrow their masters, and perhaps we can even disrupt the Blood War. That would be good for everyone." */ DO~~ + g-bbDDKN.C1
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.C1
@60 /*"You have spoken. So that is your motivation. Remember that your path is mine. You have a choice. I do not." [DAK206] */
END
IF~~THEN REPLY @62 /*"Don't worry, old friend. I need you, but I will also do my best not to betray your trust." */ DO~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)~ + g-bbDDKN.D1
IF~~THEN REPLY @63 /*"You can stay if it's too much for you. I won't hold a grudge against you. It's a difficult journey, I know." */ DO~~ + g-bbDDKN.D2
IF~~THEN REPLY @64 /*"Period. Let's go." */ DO~IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1)
~ + g-bbDDKN.notalk
IF~GlobalLT("GOOD","GLOBAL",0) Global("Dakkon_Slave","GLOBAL",1)~THEN REPLY @65 /*"That's right, slave. You'll go where I want. Let's go." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2)
~ + g-bbDDKN.notalk
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.D1
@67 /*"I put my trust in you. I regret nothing." Dak'kon places a hand on your shoulder and looks into your eyes with his tiny little coals. It is the face of a lifelong friend. He looks like he wants to say something more, but he lowers his gaze and pats you. [DAK027B] */
END
IF~~THEN REPLY @69 /*"You don't have to say anything. Maybe we should go to the bar? Let's have a drink." */ DO~DestroySelf() SetGlobal("g-fakedkndialogue","GLOBAL",0)
 IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ EXIT
IF~~THEN REPLY @70 /*"You don't have to say anything. Let's see what the patrons have to say." */ DO~DestroySelf() SetGlobal("g-fakedkndialogue","GLOBAL",0)
 IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",2)
~ EXIT
CHAIN IF~~THEN g-bbDDKN g-bbDDKN.D2
@72 /*"You misunderstood my words. I am not giving up, and it is not my wish to leave. I just want to make sure you understand what you have agreed to." He looks towards the bar. "Time is precious. Let us not squander it here. Let us do what ours and get going." [DAK011] */
END
IF~~THEN REPLY @74 /*"Maybe we should go to the bar? Let's have a drink and sound out the bartender." */ DO~DestroySelf() SetGlobal("g-fakedkndialogue","GLOBAL",0)
~ EXIT
IF~~THEN REPLY @75 /*"Then, let's see what the patrons have to say." */ DO~DestroySelf() SetGlobal("g-fakedkndialogue","GLOBAL",0)
~ EXIT