BEGIN g-bbD175
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("G-agravalquest","GLOBAL",0) !Global("G-agravalquest","GLOBAL",2) !Global("G-agravalquest","GLOBAL",7) !Global("G-agravalquest","GLOBAL",10)~THEN g-bbD175 g-bbD175.start3
@0 /*You see a familiar modron in front of you. It seems that his search has been unsuccessful. He remains in the same place as before, whimpering pitifully. */
END
IF~~THEN REPLY @2 /*"Patch?" */ DO~~ + g-bbD175.pimpek
IF~~THEN REPLY @3 /*"Hello and goodbye. I don't have time for this right now." */ DO~~ EXIT
CHAIN IF~NearbyDialog("g-bbd101") OR(3) Global("G-agravalquest","GLOBAL",2) Global("G-agravalquest","GLOBAL",7) Global("G-agravalquest","GLOBAL",10)~THEN g-bbD175 g-bbD175.startfinal
@5 /*The modron rubs its cubic body against Agraval's thigh, who in turn strokes its head. They both look content. */
EXIT
CHAIN IF~NumTimesTalkedTo(0) GlobalGT("G-agravalquest","GLOBAL",0) !Global("G-agravalquest","GLOBAL",2) !Global("G-agravalquest","GLOBAL",7) !Global("G-agravalquest","GLOBAL",10)~THEN g-bbD175 g-bbD175.start4
@10 /*You recognize this creature as a modron, one of the constructs from the plane of Mechanus. However, this particular specimen seems to differ slightly from its purely logic-driven brethren. The modron hunches over, making sounds akin to an animal's whimpering, and paces around in circles as if searching for something. He occasionally makes furtive glances from side to side. A strong sense of sadness and loss emanates from his unimpressive form. If he had a tail, he would be dragging it mournfully along the ground. This is undoubtedly Agraval's 'dog' - Patch. */
END
IF~~THEN REPLY @12 /*"Patch?" */ DO~~ + g-bbD175.pimpek
IF~~THEN REPLY @13 /*"Hello and goodbye. I don't have time for this right now." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedTo(0) Global("G-agravalquest","GLOBAL",0)~THEN g-bbD175 g-bbD175.start1
@15 /*You recognize this creature as a modron, one of the constructs from the plane of Mechanus. However, this particular specimen seems to differ slightly from its purely logic-driven brethren. The modron hunches over, making sounds akin to an animal's whimpering, and paces around in circles as if searching for something. He occasionally makes furtive glances from side to side. A strong sense of sadness and loss emanates from his unimpressive form. If he had a tail, he would be dragging it mournfully along the ground. */
END
IF~~THEN REPLY @17 /*"Hello. Is everything alright?" */ DO~SetGlobal("g-agravalpimpek","GLOBAL",1)~ + g-bbD175.A1
IF~~THEN REPLY @18 /*"Are you lost, modron?" */ DO~SetGlobal("g-agravalpimpek","GLOBAL",1)~ + g-bbD175.A1
IF~~THEN REPLY @19 /*"Hello and goodbye. I don't have time for this right now." */ DO~SetGlobal("g-agravalpimpek","GLOBAL",1)~ JOURNAL @6003 EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-agravalquest","GLOBAL",0)~THEN g-bbD175 g-bbD175.start2
@21 /*The bizarre modron continues to hunch over, making sounds akin to an animal's whimpering, and paces around in circles as if searching for something. He occasionally makes furtive glances from side to side. A strong sense of sadness and loss emanates from his unimpressive figure. If he had a tail, he would be dragging it mournfully along the ground. */
END
IF~~THEN REPLY @23 /*"Hey, how are you? Did you find what you were looking for?"
 */ DO~~ + g-bbD175.A1
IF~~THEN REPLY @25 /*"Hello and goodbye. I don't have time for this right now."
 */ DO~~ EXIT
CHAIN IF~~THEN g-bbD175 g-bbD175.A1
@27 /*When you address him directly, the modron looks up at you. After a moment of hesitation, he approaches you on bent legs. He circles around you, sniffing you loudly and snorting like a pig. Apparently, you do not have what he is looking for. He warns you with a growl to leave him alone, then returns to his search. */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @28 /*"Modron? Anomaly. Hypothesis: exposure to the planes or deliberate interference in default programming by third parties. Purpose? Unknown. Current psychophysical state of the target: far from optimal. Assumption: loss of an important object or a superior. Proposed new parameter for the leader: assistance in search." */
END
IF~~THEN REPLY @30 /*"I don't know what you're looking for, but I'll try to help you somehow." */ DO~~ JOURNAL @6003 EXIT
IF~~THEN REPLY @31 /*"Well, good luck." */ DO~~ JOURNAL @6003 EXIT
CHAIN IF~~THEN g-bbD175 g-bbD175.pimpek
@33 /*At the sound of that name, the modron perks up and turns toward you, flapping his wings. He scurries over to you almost gleefully and sits on his haunches, as if waiting orders. He pants with an unsettling loudness all the while. You are not sure if modrons have tongues, but the thought of being licked feels uncomfortably plausible. */
END
IF~PartyHasItem("g-bbi073") Global("G-agravalquest","GLOBAL",5)~THEN REPLY @35 /*Hold out the fang you got from Agraval. "Come on, little guy. Look for your master." */ DO~~ + g-bbD175.C1
IF~!PartyHasItem("g-bbi073") Global("G-agravalquest","GLOBAL",5)~THEN REPLY @36 /*"Come on, little guy. Look for your master. He gave me his tooth, but I lost it somewhere. I'm sure his scent still lingers on me." */ DO~~ + g-bbD175.C1
IF~Or(2) Global("G-agravalquest","GLOBAL",3) Global("G-agravalquest","GLOBAL",4)~THEN REPLY @37 /*"So you're Patch... Well, your owner is looking for you elsewhere..." */ DO~~ + g-bbD175.ups
IF~CheckStatGT(Protagonist,19,INT)~THEN REPLY @38 /*"I wonder if you've always been a dog. Maybe I could restore your original personality? It's worth a try." */ DO~~ + g-bbD175.D1
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @39 /*"I wonder if 'Patch' has always been a dog. Nordom, maybe you could restore his original personality?" */ DO~~ + g-bbD175.E1
IF~Global("G-agravalambush2","GLOBAL",1)~THEN REPLY @40 /*"Your owner was slain. He probably returned to Hades, but you're free for now." */ DO~~ + g-bbD175.ups
IF~~THEN REPLY @41 /*"I just wanted to see if that was your name. See you around." */ DO~SetGlobal("g-sendagravaldown","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD175 g-bbD175.ups
@43 /*The modron looks at you helplessly, tilting his body slightly to the left. */
END
IF~CheckStatGT(Protagonist,19,INT)~THEN REPLY @45 /*"I wonder if you've always been a dog. Maybe I could restore your original personality? It's worth a try." */ DO~~ + g-bbD175.D1
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @46 /*"I wonder if 'Patch' has always been a dog. Nordom, maybe you could restore his original personality?" */ DO~~ + g-bbD175.E1
IF~~THEN REPLY @47 /*"I don't have time for this right now. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD175 g-bbD175.C1
@49 /*The modron lunges at your hand, frantically sniffing it. He lets out a series of squeaks and short barks of varying tone and volume. In his excitement, he scratches the ground with his *paws*, kicking up a cloud of dust and dirt. You need not repeat the command. As soon as he picks up the scent, he shoots forward like a stone from a slingshot and rushes toward the tavern without looking back. */
END
IF~~THEN REPLY @51 /*"I wonder if he'll find Agraval. I should visit the tavern and see for myself." */ DO~EscapeArea() AddexperienceParty(16000) SetGlobal("G-agravalquest","GLOBAL",7)~ SOLVED_JOURNAL @20127 EXIT
CHAIN IF~~THEN g-bbD175 g-bbD175.D1
@53 /*The conversation is long and initially unproductive. Patch stares at you with eyes untainted by reason. The first breakthrough comes when you start giving him commands and telling him to do little tricks: sit, roll over, shake paws. You ask him: "Who's a good doggie?" An enthusiastic bark confirms that, of course, he is a good doggie! */
=@54 /*Then, you throw a philosophical right hook: what does it mean to be good anyway? Slowly, you dispel the darkness of confusion, diving deeper into the meanders of ontological inquiry. You can almost see the thought processes slowly awakening in the modron, at first timidly, like a muscle in a state of atrophy that needs deliberate exercise. When you feel ready, you deliver the final blow: */
END
IF~~THEN REPLY @56 /*"What if you're not a dog after all?" */ DO~AddexperienceParty(10000)~ + g-bbD175.D1A
CHAIN IF~~THEN g-bbD175 g-bbD175.D1A
@58 /*The modron straightens up and stands at attention. "We are modron. Diagnostics initiated." Ex-Patch emits loud buzzes and screeches, disturbingly similar to the moans of damned souls. [MODRO07] */
=@59 /*"Diagnostics complete. Numerous memory module failures detected. Recommended technical inspection and maintenance. Objective: return to Mechanus." The modron turns on his heel. A portal appears in front of him out of nowhere. You have no idea if it was always there or if ex-Patch somehow created it himself. Before you can react, the modron disappears into its depths. The portal closes behind him with a quiet pop. */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @60 /*"Decision made. Result: positive? Hypothesis: there will be consequences. Nordom shall follow." */
END
IF~~THEN REPLY @62 /*"I don't know if I gave you your freedom back or put new shackles on you. Either way, good luck." */ DO~AddexperienceParty(50000) SetGlobal("G-agravalquest","GLOBAL",6) PlaySound("AM_VORTX")   StickySinisterPoof("EF01TPRT","G-bb175",1) ActionOverride("g-bb175",DestroySelf())~ SOLVED_JOURNAL @20126 EXIT
CHAIN IF~~THEN g-bbD175 g-bbD175.E1
@64 /*As you turn to your modron companion, you see that he is already studying the other construct. */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @65 /*Nordom dispassionately looks at you, but notes of determination ring from his mechanical voice. "Nordom designated. Performing calibration test. Please wait." Two beings, so similar, yet so fundamentally different, stand facing each other as if preparing for a duel. However, no violence ensues. For a long moment... Even longer... And a little more drawn out... Nordom beeps at his interlocutor, creating a strange symphony of short and long tones that grates on your ears like fingernails on a blackboard. [NOR054] */
==g-bbd175 @66 /*Patch's reaction is more positive. He joins Nordom in a duet of beeps, at first timidly, but in time with verve and confidence. The exchange ends as it began - with a taut, uneasy silence. */
END
IF~~THEN REPLY @68 /*Watch. */ DO~AddexperienceParty(10000)~ + g-bbD175.D1A