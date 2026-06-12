BEGIN g-bbDDKK
CHAIN IF~Global("g-fakedkkdialogue","GLOBAL",0)~THEN g-bbDDKK g-bbDDKK.q
@0 /*Dak'kon turns to you, his eyes like polished coal. "What is your will?" [DAK205] */
END
IF~~THEN REPLY @2 /*"I just want to know if you're okay, Dak'kon." */ DO~~ + g-bbDDKK.q1
IF~~THEN REPLY @3 /*"What's our current path, Dak'kon? Remind me." */ DO~~ + g-bbDDKK.q2
IF~~THEN REPLY @4 /*"Wait for me here. I'll come back for you." */ DO~~ + g-bbDDKK.dropoff
IF~~THEN REPLY @5 /*"Nothing. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDDKK g-bbDDKK.dropoff
@7 /*"If that is your will, I will stay here, but whether I am able to leave here by myself... This I do not *know.*" */
END
IF~~THEN REPLY @9 /*"That's not my problem. You'll have to wait for me here." */ DO~LeaveParty()~ EXIT
IF~~THEN REPLY @10 /*"You're right. Never mind, then. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDDKK g-bbDDKK.q1
@12 /*Dak'kon seems to consider your situation for a moment. */
==g-bbddkk IF~AreaCheck("arg-10")~THEN @13 /*"We are exposed. Staying here would be unwise. I don't *know* if we are safe." */
END
IF~~THEN REPLY @15 /*"I wish to speak about other matters." */ DO~~ + g-bbDDKK.q
IF~~THEN REPLY @16 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDDKK g-bbDDKK.q2
@18 /*Dak'kon gives you a puzzled look. */
==g-bbddkk IF~Global("G-BBmain","GLOBAL",21)~THEN @19 /*"We are to find the abishai, Gemariel. He is to be our guide here." */
==g-bbddkk IF~Global("G-BBmain","GLOBAL",22)~THEN @20 /*"We are to find the abishai, Gemariel. He is to be our guide here. We should not linger. If the bard found us, others may be near." */
END
IF~~THEN REPLY @22 /*"I wish to speak about other matters." */ DO~~ + g-bbDDKK.q
IF~~THEN REPLY @23 /*"Fine. Let's go." */ DO~~ EXIT