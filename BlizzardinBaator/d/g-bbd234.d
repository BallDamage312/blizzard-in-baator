BEGIN g-bbD234
CHAIN IF~NumTimesTalkedTo(0) !Global("G-brill_quest","GLOBAL",2) !Global("g-slimequestline","GLOBAL",5) !Global("G-kuotoaquestline","GLOBAL",3) !Global("g-stolerope","GLOBAL",1)~THEN g-bbD234 g-bbD234.start
@0 /*This merchant's sales pitch is not as refined as the others'. He does not shout as often and his repertoire is more concise. He waits for a moment when everyone else is quiet, and then roars in a deep voice. */
=@1 /*"*STRIIINGS!*" */
EXIT
CHAIN IF~NumTimesTalkedTo(0) OR(4) Global("G-brill_quest","GLOBAL",2) Global("g-slimequestline","GLOBAL",5) Global("G-kuotoaquestline","GLOBAL",3) Global("g-stolerope","GLOBAL",1)~THEN g-bbD234 g-bbD234.startalt
@4 /*This merchant's sales pitch is not as refined as the others'. He does not shout as often and his repertoire is more concise. He waits for a moment when everyone else is quiet, and then roars in a deep voice. */
=@5 /*"*STRIIINGS!*" */
END
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @7 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD234.ikks
IF~Global("g-slimequestline","GLOBAL",5)~THEN REPLY @8 /*"Do you have a decent rope that could hold my weight?" */ DO~~ + g-bbD234.rope
IF~Global("G-kuotoaquestline","GLOBAL",3)~THEN REPLY @9 /*"Do you happen to know where this piece of string came from?" */ DO~~ + g-bbD234.kuo
IF~Global("g-stolerope","GLOBAL",1) Global("g-whysopoor","GLOBAL",0)~THEN REPLY @10 /*"Hey... my friend here 'borrowed' some rope from you and I came to make it up to you..." */ DO~IncrementGlobal("LAW","GLOBAL",2) SetGlobal("g-stolerope","GLOBAL",0)~ + g-bbD234.thief
IF~Global("g-stolerope","GLOBAL",1) Global("g-whysopoor","GLOBAL",1) !PartyGoldLT(250)~THEN REPLY @11 /*"I have the money for the rope. Here you go, take it." */ DO~SetGlobal("g-stolerope","GLOBAL",0) TakePartyGold(250)~ + g-bbD234.thief2
IF~~THEN REPLY @12 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) !Global("G-brill_quest","GLOBAL",2) !Global("g-slimequestline","GLOBAL",5) !Global("G-kuotoaquestline","GLOBAL",3) !Global("g-stolerope","GLOBAL",1)~THEN g-bbD234 g-bbD234.start2
@14 /*"*STRIIINGS!*" */
EXIT
CHAIN IF~OR(4) Global("G-brill_quest","GLOBAL",2) Global("g-slimequestline","GLOBAL",5) Global("G-kuotoaquestline","GLOBAL",3) Global("g-stolerope","GLOBAL",1)~THEN g-bbD234 g-bbD234.start2alt
@17 /*"*STRIIINGS!*" */
END
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @19 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD234.ikks
IF~Global("g-slimequestline","GLOBAL",5)~THEN REPLY @20 /*"Do you have a decent rope that could hold my weight?" */ DO~~ + g-bbD234.rope
IF~Global("G-kuotoaquestline","GLOBAL",3)~THEN REPLY @21 /*"Do you happen to know where this piece of string came form?" */ DO~~ + g-bbD234.kuo
IF~~THEN REPLY @22 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.ikks
@24 /*The merchant points to the buildings to the right of the chronometer. "The strange gith? This building here, but I haven't seen 'im a while. Ask his lady friend, Mare." */
END
IF~~THEN REPLY @26 /*"Alright, where can I find her?" */ DO~~ + g-bbD234.ikks2
CHAIN IF~~THEN g-bbD234 g-bbD234.ikks2
@29 /*"Usually around the Vertical Sea." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @31 /*"Where is that?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD234.ikks3
IF~~THEN REPLY @32 /*"Thank you. I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.ikks3
@34 /*"It's further away from the water, beyond the statue of Athena." */
END
IF~~THEN REPLY @36 /*"Thank you. I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.kuo
@38 /*The large merchant grabs the piece of string from your hand with such force that he almost pulls your arm off. He then inspects it closely. */
=@39 /*"Yes, it's mine. It's one of the good ones. I don't sell many of these. And I certainly don't sell them covered in some stinky slime," he growls, disgust etched on his face, and throws the piece of string back at you. */
END
IF~!Dead("g-bb028")~THEN REPLY @41 /*"Have you recently sold any? If so, to whom?" */ DO~~ + g-bbD234.kuo2
IF~Dead("g-bb028")~THEN REPLY @42 /*"Have you recently sold any? If so, to whom?" */ DO~~ + g-bbD234.kuo2s
CHAIN IF~~THEN g-bbD234 g-bbD234.kuo2
@44 /*"I only sold one to a woman in recent cycles. She was some kind of priestess, I think. Ask Adam. She bought a lot of junk from him." He points to the half-orc blacksmith. */
END
IF~~THEN REPLY @46 /*"Adam? All right, thanks. I'll go and talk to him." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",4)~ SOLVED_JOURNAL @20189 EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.kuo2s
@48 /*"I only sold one to a woman in recent cycles. She was some kind of priestess, I think. She bought a lot of junk from Adam, but of course he is dead-booked because of the mess *you* made." He shrugs and inhales. */
=@49 /*"*STRIIINGS!*" */
END
IF~~THEN REPLY @51 /*"Ah, yes... I'd better go, then." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",4)~ SOLVED_JOURNAL @20189 EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.rope
@53 /*The salesman's eyes widen and his mouth breaks into a slightly eerie grin. "I've got it! I've got a sturdy rope used for binding snakes in Karasuthra. It can be yours for 29 copper coins." */
END
IF~!PartyGoldLT(29)~THEN REPLY @55 /*"Binding... snakes? I'd rather not know. I'll take it." */ DO~SetGlobal("g-slimequestline","GLOBAL",6) TakePartyGold(29) GiveItemCreate("g-bbi130",Protagonist,1,1,0)~ SOLVED_JOURNAL @20300 EXIT
IF~PartyGoldLT(29)~THEN REPLY @56 /*"I can't afford it... but I'll be back." */ DO~~ EXIT
IF~~THEN REPLY @57 /*"Maybe another time. Thanks." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.thief
@59 /*The salesman's eyes widen and his mouth breaks into a slightly eerie grin. "Oh, right. That skull snatched my best rope, the one used to bind snakes in Karasuthra. And people told me I was making it up! You owe me 250 copper coins, stranger." */
==g-bbd028 @60 /*A half-orc standing nearby shouts at you. "A juist said ye werenae the brightest, no that ye were makin' things up." */
END
IF~!PartyGoldLT(250)~THEN REPLY @62 /*"I'm not sure who here is getting robbed now... but fine. Here you go." */ DO~TakePartyGold(250)~ + g-bbD234.thief2
IF~PartyGoldLT(250)~THEN REPLY @63 /*"I can't afford it... but I'll be back." */ DO~SetGlobal("g-stolerope","GLOBAL",1) SetGlobal("g-whysopoor","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD234 g-bbD234.thief2
@66 /*The merchant takes your coppers and gives you a nod. He opens his mouth and you expect to hear a lecture about honesty and law. The string merchant eventually yells: */
=@67 /*"*STRIIINGS!*" */
EXIT