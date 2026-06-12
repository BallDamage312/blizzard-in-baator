BEGIN g-bbD176
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD176 g-bbD176.start
@0 /*A modron leans against the wall with its wings, forming an almost nonchalant pose for one of its kind. The eyes in its square face dart from side to side, as if trying to gather as much information as possible from its surroundings and people passing by. As you approach, it greets you with a wide smile, the expression looking unnatural against its rigid, mechanical features. "Activating welcome protocol: Greetings!" */
END
IF~~THEN REPLY @2 /*"Hello. What are you doing here?" */ DO~SetGlobal("g-agravalothermodron1","GLOBAL",1)~ + g-bbD176.a1
IF~Global("G-agravalpimpek","GLOBAL",0) Global("G-agravalquest","GLOBAL",5) Global("G-agravalotherPIM","GLOBAL",0)~THEN REPLY @3 /*"Patch?" */ DO~SetGlobal("g-agravalothermodron1","GLOBAL",1) SetGlobal("G-agravalotherPIM","GLOBAL",1)~ + g-bbD176.b1
IF~~THEN REPLY @4 /*"Hello and goodbye. I don't have time right now." */ DO~SetGlobal("g-agravalothermodron1","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD176 g-bbD176.start2
@6 /*The slightly nonchalant Modron still leans against the wall, scanning its surroundings. It greets you with a wide smile, making a rather unsettling impression. "Activating welcome protocol: Greetings!" */
END
IF~~THEN REPLY @8 /*"Hello again. Will you tell me one more time what you're doing here?" */ DO~~ + g-bbD176.a1
IF~Global("G-agravalpimpek","GLOBAL",0) Global("G-agravalquest","GLOBAL",5) Global("G-agravalotherPIM","GLOBAL",0)~THEN REPLY @9 /*"Patch?" */ DO~SetGlobal("G-agravalotherPIM","GLOBAL",1)~ + g-bbD176.b1
IF~~THEN REPLY @10 /*"Hello and goodbye. I don't have time right now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD176 g-bbD176.a1
@12 /*"Question accepted. Searching database for optimal responses. Please wait." For a moment, the modron emits a series of squeaks and creaks as if it were about to explode. [MODRO02] */
END
IF~Global("G-agravalpimpek","GLOBAL",0) Global("G-agravalquest","GLOBAL",5) Global("G-agravalotherPIM","GLOBAL",0)~THEN REPLY @15 /*"Patch?" */ DO~SetGlobal("G-agravalotherPIM","GLOBAL",1)~ + g-bbD176.b1
IF~~THEN REPLY @16 /*"Good luck with your data collection." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD176 g-bbD176.b1
@18 /*"Patch. No patches available in current distribution. Further knowledge acquisition: recommended. Selected interface: enthusiastic. Returning to data collection and analysis." The same broad smile appears on the modron's face again and its eyes intensely scan the surroundings. It stops paying attention to you. Perhaps the line between logic and madness is finer than it might seem. */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @19 /*"Modron? Defective object? Hypothesis of cause: excessive knowledge parameters. Excessive surplus? Optimal functioning requires limitations? Curiosity necessary or undesirable? Hypothesis to be investigated." */
END
IF~~THEN REPLY @21 /*"All right, you're not him. I'll keep looking." */ DO~~ EXIT