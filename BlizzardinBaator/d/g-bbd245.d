BEGIN g-bbD245
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD245 g-bbD245.start
@0 /*A cranium rat is scurrying among the rubbish. It is not aggressive, nor does it act particularly like a cranium rat. It seems to be giggling, excited by its discoveries, and sometimes talks to itself. With telepathy. */
END
IF~~THEN REPLY @2 /*"Are you alright, rat?" */ DO~SetGlobal("g-gigglyrattalk","GLOBAL",1)~ + g-bbD245.cont
IF~~THEN REPLY @3 /*Leave the cranium rat alone. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD245 g-bbD245.start2
@5 /*The giggly cranium rat is still scurrying around. */
END
IF~Global("g-gigglyratmany","GLOBAL",0) Global("g-gigglyrattalk","GLOBAL",1)~THEN REPLY @7 /*"Are you part of Many-as-One?" */ DO~SetGlobal("g-gigglyratmany","GLOBAL",1)~ + g-bbD245.many
IF~Global("g-gigglyratmany","GLOBAL",1)~THEN REPLY @8 /*"You mentioned a master of the pipe last time?" */ DO~SetGlobal("g-gigglyratmany","GLOBAL",2)~ + g-bbD245.master
IF~Global("g-gigglyrattalk","GLOBAL",1) OR(2) Global("g-slimequestline","GLOBAL",3) Global("g-slimequestline","GLOBAL",4)~THEN REPLY @9 /*"Have you seen a stone golem around here?" */ DO~SetGlobal("g-slimequestline","GLOBAL",5)~ JOURNAL @20299 + g-bbD245.golem
IF~Global("g-gigglyrattalkdebug","GLOBAL",1)~THEN REPLY @10 /*"Have you seen a stone golem around here?" */ DO~SetGlobal("g-slimequestline","GLOBAL",5)~ JOURNAL @20299 + g-bbD245.golem
IF~Global("g-gigglyrattalk","GLOBAL",0)~THEN REPLY @11 /*"Are you alright, rat?" */ DO~SetGlobal("g-gigglyrattalk","GLOBAL",1)~ + g-bbD245.cont
IF~~THEN REPLY @12 /*Leave the cranium rat alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD245 g-bbD245.cont
@14 /**Us? Sure! We are having a lot of fun down here, with all these pebbles.* */
END
IF~Global("g-gigglyratmany","GLOBAL",0) GlobalGT("CR_Vic","GLOBAL",0)~THEN REPLY @16 /*"Us? Are you part of Many-as-One?" */ DO~SetGlobal("g-gigglyratmany","GLOBAL",1)~ + g-bbD245.many
IF~~THEN REPLY @17 /*"What's so interesting about those... pebbles?" */ DO~~ + g-bbD245.pebbles
IF~OR(2) Global("g-slimequestline","GLOBAL",3) Global("g-slimequestline","GLOBAL",4)~THEN REPLY @18 /*"Have you seen a stone golem around here?" */ DO~SetGlobal("g-slimequestline","GLOBAL",5)~ SOLVED_JOURNAL @20299 + g-bbD245.golem
IF~~THEN REPLY @19 /*Leave the cranium rat alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD245 g-bbD245.many
@21 /*The rat laughs loudly inside its exposed mind. Its laughter sounds almost painful in your head. *No, no. We used to be, but now we're part of this pile of rocks. The master of the pipe set us free. Hee hee.* */
END
IF~Global("g-gigglyratmany","GLOBAL",1)~THEN REPLY @23 /*"Master of the pipe?" */ DO~SetGlobal("g-gigglyratmany","GLOBAL",2)~ + g-bbD245.master
IF~~THEN REPLY @24 /*"What's so interesting about those... pebbles?" */ DO~~ + g-bbD245.pebbles
IF~OR(2) Global("g-slimequestline","GLOBAL",3) Global("g-slimequestline","GLOBAL",4)~THEN REPLY @25 /*"Have you seen a stone golem around here?" */ DO~SetGlobal("g-slimequestline","GLOBAL",5)~ SOLVED_JOURNAL @20299 + g-bbD245.golem
IF~~THEN REPLY @26 /*Leave the cranium rat alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD245 g-bbD245.master
@28 /**He lives in the pipe. He flies out sometimes and flies back in at other times. He passes us by. We wave to him and he waves back at us. A great pebble, master of the pipe.* */
END
IF~Global("g-gigglyratmany","GLOBAL",0) GlobalGT("CR_Vic","GLOBAL",0)~THEN REPLY @30 /*"At us? Are you part of Many-as-One?" */ DO~~ + g-bbD245.many
IF~~THEN REPLY @31 /*"What's so interesting about those... pebbles?" */ DO~~ + g-bbD245.pebbles
IF~OR(2) Global("g-slimequestline","GLOBAL",3) Global("g-slimequestline","GLOBAL",4)~THEN REPLY @32 /*"Have you seen a stone golem around here?" */ DO~SetGlobal("g-slimequestline","GLOBAL",5)~ SOLVED_JOURNAL @20299 + g-bbD245.golem
IF~~THEN REPLY @33 /*Leave the cranium rat alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD245 g-bbD245.pebbles
@35 /**We are all pebbles. It is good to be among our people.* */
END
IF~Global("g-gigglyratmany","GLOBAL",0) Global("g-gigglyrattalk","GLOBAL",1) GlobalGT("CR_Vic","GLOBAL",0)~THEN REPLY @37 /*"Are you part of Many-as-One?" */ DO~SetGlobal("g-gigglyratmany","GLOBAL",1)~ + g-bbD245.many
IF~OR(2) Global("g-slimequestline","GLOBAL",3) Global("g-slimequestline","GLOBAL",4)~THEN REPLY @38 /*"Have you seen a stone golem around here?" */ DO~SetGlobal("g-slimequestline","GLOBAL",5)~ SOLVED_JOURNAL @20299 + g-bbD245.golem
IF~~THEN REPLY @39 /*Leave the cranium rat alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD245 g-bbD245.golem
@41 /**A big pebble, with arms and legs? There isn't one. There's no golem. The master fished it out of the water and took it back to his place, into the pipe. But you can't go in there, into the pipe. It's too steep. It would be handy to have a long, flexible pebble that you could tie around yourself and use to climb down.* */
END
IF~Global("g-gigglyratmany","GLOBAL",1)~THEN REPLY @43 /*"Master of the pipe?" */ DO~SetGlobal("g-gigglyratmany","GLOBAL",2)~ + g-bbD245.master
IF~~THEN REPLY @44 /*"Oh, right. So... a rope. I'll go look for a rope." */ DO~~ EXIT