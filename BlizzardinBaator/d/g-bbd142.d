BEGIN g-bbD142
CHAIN IF~NumTimesTalkedTo(0) !Dead("g-bb017")~THEN g-bbD142 g-bbD142.start1
@0 /*This is one of the men who argued with the bariaur. His armor, including his helmet, is studded with spikes. He is missing one sleeve, and he is wearing leather gloves. */
=@1 /*"Yes? Clausius of the Doomguard. Do you have any business with me?" */
END
IF~~THEN REPLY @3 /*"Greetings. I have some questions. Can you answer them?" */ DO~~ + g-bbD142.questions
IF~CheckStatGT(Protagonist,11,CHR)~THEN REPLY @4 /*"Greetings. I've noticed that the argument on the stairs was about a faction conflict. Maybe I could help?" */ DO~~ + g-bbD142.questions
IF~~THEN REPLY @5 /*Leave. */ DO~~ EXIT
CHAIN IF~OR(2) !Dead("g-bb017") Global("G-hitmanD","GLOBAL",3)~THEN g-bbD142 g-bbD142.start2
@7 /*"Do you have any business with me?" */
END
IF~Global("g-142que","GLOBAL",0)~THEN REPLY @9 /*"I have some questions. Can you answer them?" */ DO~~ + g-bbD142.questions
IF~GlobalGT("g-142que","GLOBAL",0)~THEN REPLY @10 /*"I have some questions." */ DO~~ + g-bbD142.questions1
IF~~THEN REPLY @11 /*"I'm gone." */ DO~~ + g-bbD142.going
CHAIN IF~Global("G-hitmanD","GLOBAL",4)~THEN g-bbD142 g-bbD142.start3
@13 /*The man is not happy to see you approach him. "I really don't have time to talk to you, cutter. I have to get ready to get going." */
END
IF~~THEN REPLY @15 /*"What happened?" */ DO~~ + g-bbD142.haedeadreact
IF~~THEN REPLY @16 /*Leave. */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.questions
@18 /*"Maybe... But only if you have the faction's trust. Otherwise, we don't really have anything to talk about." */
END
IF~GlobalGT("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @20 /*"The pale woman on the cliff can vouch for me. She's a friend of mine." */ DO~SetGlobal("g-142que","GLOBAL",1)
~ + g-bbD142.questions1
IF~GlobalGT("G-scriptgood","GLOBAL",0)~THEN REPLY @21 /*"I worked with Raelis." */ DO~SetGlobal("g-142que","GLOBAL",1)
~ + g-bbD142.questions1
IF~GlobalGT("G-scriptbad","GLOBAL",0)~THEN REPLY @22 /*"I worked with Raelis." */ DO~SetGlobal("g-142que","GLOBAL",1)
~ + g-bbD142.questions1
IF~Global("G-knowhaer","GLOBAL",1)~THEN REPLY @23 /*"I've already spoken with Haer'Dalis. We're on the same side." */ DO~SetGlobal("g-142que","GLOBAL",1)

~ + g-bbD142.questions1
IF~~THEN REPLY @24 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.going
@26 /*"You're a weird guy." [NAM033A] */
END
IF~~THEN REPLY @28 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.questions1
@30 /*"Well, if so, then ask." */
END
IF~~THEN REPLY @32 /*"What was going on with that bariaur?" */ DO~~ + g-bbD142.conflict
IF~~THEN REPLY @33 /*"What do you know about the Ditch?" */ DO~~ + g-bbD142.ditch
IF~~THEN REPLY @34 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.conflict
@36 /*"So, the Fated... though we usually call them the Takers because they take everything... Or the Heartless, because they're... well, I guess that's obvious... Anyway, they're looking for Haer'Dalis because he insulted their factol, Darkwood. It's funny because I don't even remember that. But they're certain that's what happened," the man explains. "But you know what? That Darkwood *fully* deserves it. Apparently, he's recently taken a fancy to that underage Mercykiller factol, I don't remember what her name was... Alisohn something or other. Can you imagine what it would be like if the two factions joined forces? I don't want that." */
END
IF~~THEN REPLY @38 /*"Maybe I could help?" */ DO~~ + g-bbD142.conflict1
IF~~THEN REPLY @39 /*"I've got other questions." */ DO~~ + g-bbD142.questions1
IF~~THEN REPLY @40 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.conflict1
@42 /*"That's something you'll have to discuss directly with Haer'Dalis. The Armory is far away... and he's the highest-ranking officer around, so he'll be the one to settle any issues. Besides, it's mostly about him anyway..." */
END
IF~~THEN REPLY @44 /*"I've got other questions." */ DO~~ + g-bbD142.questions1
IF~~THEN REPLY @45 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.ditch
@47 /*"What can I say? Tourists flock here to see the Suicide Falls or the Vertical Sea. Plus, fiends like to hang around here because of the Styx Oarsman. But other than that, it's not a great neighborhood," he shrugs resignedly. "All I know is that the only friendly place you have here is right here, in our backyard." */
END
IF~~THEN REPLY @49 /*"I've got other questions." */ DO~~ + g-bbD142.questions1
IF~~THEN REPLY @50 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD142 g-bbD142.haedeadreact
@52 /*"Haer'Dalis is dead. We're getting out of here and heading to Citadel Alluvius. Maybe the chaos of Darkwood won't reach us there. I have a bad feeling about this..." */
END
IF~~THEN REPLY @54 /*"Good luck. Farewell." */ DO~ActionOverride("g-bb142",EscapeArea())~ EXIT
IF~~THEN REPLY @55 /*"Oh yeah. I killed him." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD142.ikilledhim
CHAIN IF~~THEN g-bbD142 g-bbD142.ikilledhim
@57 /*"Y-you? Doomguard, to arms!" */
END
IF~~THEN REPLY @59 /*Defend yourself. */ DO~Enemy() Help() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT