BEGIN g-bbD241
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD241 g-bbD241.start
@0 /*Two kids are sitting on the edge of the platform overlooking the Suicide Falls. You can hear them discussing their future mischief. They are facing away from you, but as you get closer, they both become aware of your presence and stand up alertly. */
=@1 /*"Sir! We're not doing anything, sir!" */
END
IF~~THEN REPLY @3 /*"Relax. I'm looking for information about a hidden wererat temple. I was told local kids knew something about it." */ DO~~ + g-bbD241.A1
IF~~THEN REPLY @4 /*"I don't have time for you, brats." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD241 g-bbD241.restart
@6 /*The kids are much more alert now and visibly get nervous when you approach again. */
=@7 /*"Sir, We're behaving! It's true!" */
END
IF~~THEN REPLY @9 /*"Relax. I'm looking for information about a hidden wererat temple. I was told local kids knew something about it." */ DO~~ + g-bbD241.A1
IF~~THEN REPLY @10 /*"I don't have time for you, brats." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD241 g-bbD241.A1
@12 /*"If we tell you, can we go home? We're very sorry..." */
END
IF~~THEN REPLY @14 /*"Of course. Last time was a... misunderstanding. You're safe." */ DO~~ + g-bbD241.B1
IF~~THEN REPLY @15 /*"If I have to ask you again, you *will* be sorry." */ DO~~ + g-bbD241.B2
CHAIN IF~~THEN g-bbD241 g-bbD241.B1
@17 /*"I've never been there myself, but my friend's brother's cousin pinkie promised it exists. But getting there isn't that easy, 'cause there's monsters roaming around. But if you're not afraid, you have to go find the pipe-gate on the cliff, wear a necklace made out of 15 rat tails from those sewers, then turn on your heel five times to the left and thirteen times to the right, and finally sing something in the highest voice you can. If you do everything right, a portal to the temple will open..." */
END
IF~~THEN REPLY @19 /*"All right. I can probably do that... Thanks." */ DO~SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @20205 EXIT
IF~~THEN REPLY @20 /*"Good. Now scram." */ DO~SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @20205 EXIT
CHAIN IF~~THEN g-bbD241 g-bbD241.B2
@22 /*Both kids shiver in fear. One of them starts sniffling and the other opens his mouth, ready to tell you everything. */
=@23 /*"I've never been there myself, but my friend's brother's cousin pinkie promised it exists. But getting there isn't that easy, 'cause there's monsters roaming around. But if you're not afraid, you have to go find the pipe-gate on the cliff, wear a necklace made out of 15 rat tails from those sewers, then turn on your heel five times to the left and thirteen times to the right, and finally sing something in the highest voice you can. If you do everything right, a portal to the temple will open..." */
END
IF~~THEN REPLY @25 /*"All right. I can probably do that... Thanks." */ DO~SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @20205 EXIT
IF~~THEN REPLY @26 /*"Good. Now scram." */ DO~SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3) EscapeArea()~ SOLVED_JOURNAL @20205 EXIT