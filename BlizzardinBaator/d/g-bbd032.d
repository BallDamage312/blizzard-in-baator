BEGIN g-bbD032
CHAIN IF~Dead("g-bb031")~THEN g-bbD032 g-bbD032.Start
@0 /*"Murderer!" The wererat turns and starts running away. */
END
IF~~THEN REPLY @2 /*Let him go. */ DO~EscapeArea()~ EXIT
IF~~THEN REPLY @3 /*Attack him. */ DO~Enemy() ForceAttack(Protagonist,Myself) EscapeArea() IncrementGlobal("GOOD","GLOBAL",-1)~ EXIT
CHAIN IF~!Dead("g-bb031")~THEN g-bbD032 g-bbD032.Start2
@5 /*The wererat is busy listening to his friend's argument. Seeing you approach him, he quickly whispers in your direction, trying not to distract the other one: "My friend is the talker. I mainly listen to his ramblings... But I warn you, he'll probably want to get you involved in something, stranger." */
==g-bbd031 @6 /*"Hey, pay attention!" */
END
IF~!Global("G-talkedtoZeno","GLOBAL",1)~THEN REPLY @8 /*Continue. */ DO~ActionOverride("G-bb031",StartDialogueNoSet("G-bbd031"))~ EXIT
IF~Global("G-talkedtoZeno","GLOBAL",1)~THEN REPLY @9 /*Leave. */ DO~~ EXIT