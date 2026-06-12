BEGIN g-bbD202
CHAIN IF~Global("g-kuotoagone","GLOBAL",0)~THEN g-bbD202 g-bbD202.start
@0 /*This person shivers with fear, avoiding all eye contact with you for fear of being killed by the fish people. */
END
IF~~THEN REPLY @2 /*Leave them alone. */ DO~~ EXIT
CHAIN IF~RandomNum(4,1) OR(2) Global("g-kuotoagone","GLOBAL",1) Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN g-bbD202 g-bbD202.start2
@4 /*"Oh, thank you, thank you, thank you! My family must be so worried." */
END
IF~~THEN REPLY @6 /*"Farewell." */ DO~EscapeArea()~ EXIT
CHAIN IF~RandomNum(4,2) OR(2) Global("g-kuotoagone","GLOBAL",1) Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN g-bbD202 g-bbD202.start3
@8 /*"High time someone freed us. I think it was only a matter of hours before we we'd be sacrificed..." */
END
IF~~THEN REPLY @10 /*"Happy to help." */ DO~EscapeArea()~ EXIT
CHAIN IF~RandomNum(4,3) OR(2) Global("g-kuotoagone","GLOBAL",1) Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN g-bbD202 g-bbD202.start4
@12 /*"You could have come sooner! I think I'll lose a toe because of all this moisture." */
END
IF~~THEN REPLY @14 /*"You'll still have nine left." */ DO~EscapeArea()~ EXIT
CHAIN IF~RandomNum(4,4) OR(2) Global("g-kuotoagone","GLOBAL",1) Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN g-bbD202 g-bbD202.start5
@16 /*"I wish more people cared. Like me. Most of the time, I really don't care. Bye now." */
END
IF~~THEN REPLY @18 /*"Right..." */ DO~EscapeArea()~ EXIT
CHAIN IF~RandomNum(4,0) OR(2) Global("g-kuotoagone","GLOBAL",1) Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN g-bbD202 g-bbD202.start6
@20 /*"You have my thanks, strange man. Could you spare a copper while you're at it?" */
END
IF~~THEN REPLY @22 /*"Now is not the time. Get yourself to safety." */ DO~EscapeArea()~ EXIT
IF~PartyGoldGT(0)~THEN REPLY @23 /*"A hero's work is simply never done, huh? Here." */ DO~TakePartyGold(1) EscapeArea() AddexperienceParty(1)~ EXIT