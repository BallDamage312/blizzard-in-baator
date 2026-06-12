BEGIN g-bbD068
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~THEN g-bbD068 g-bbD068.start
@0 /*You see a strange creature in front of you. It stands at almost two meters tall, but has a disproportionately small head topped with a pair of small, goat-like horns. It has childlike facial features that seem to indicate a young boy with pit fiend's blood flowing in his veins. The creature wears a coarse, floor-length coat, which it has buttoned up to its neck. He moves forward slowly, unsteadily, strugging to coordinate all the parts of his body. */
=@1 /*As you approach, he turns toward you, his torso much faster than his legs. The kid bares his teeth and says, "I am the mighty abishai! Be afraid! RAWR!!!" From deep within his cloak, you hear the muffled chuckles of at least two other people. */
END
IF~Global("g-kid","GLOBAL",0)~THEN REPLY @3 /*Pretend to be terrified. "Oh no! Please don't hurt me, o mighty abishai!" */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD068.A1
IF~Global("g-kid","GLOBAL",0)~THEN REPLY @4 /*If the kid wants fear, he'll get it. Make a scary face and growl: "Get out of the way, fiend, or I'll send you back to the Nine Hells. In pieces." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD068.B1
IF~Global("g-kid","GLOBAL",0)~THEN REPLY @5 /*"Aren't you too old for this kind of play?" */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD068.C1
IF~~THEN REPLY @6 /*"I don't have time for this. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.A1
@8 /*The young tiefling's face lights up. The kid is delighted with your reaction. He assumes the pose of a gracious king who has decided on a whim to spare the life of a condemned man. "You know your place. Fine. I'll listen to you." */
END
IF~Global("G-rattemplequest","GLOBAL",2)~THEN REPLY @10 /*"Thank you. You certainly know a lot about this area, o mighty abishai. Perhaps you could share a secret with me? Maybe about... a rat temple?" */ DO~~ + g-bbD068.E1
IF~~THEN REPLY @11 /*"It was nice meeting you, but I don't have time right now. See you soon." */ DO~~ EXIT
IF~~THEN REPLY @12 /*"I've changed my mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.B1
@14 /*The kid instinctively pulls his head back, causing his entire being to wobble chaotically as he desperately tries to keep its balance. Finally, he leans his shoulder against the wall, stopping the catastrophe. When the boy speaks, his voice trembles slightly. "Oh, you don't have to be so mean. It's just a joke!" */
END
IF~Global("G-rattemplequest","GLOBAL",2)~THEN REPLY @16 /*"Be careful. One day someone might really get angry and hurt you.  Perhaps you could share a secret with me? Maybe about... a rat temple?" */ DO~~ + g-bbD068.E1
IF~~THEN REPLY @17 /*"I haven't shown you my mean side yet. Defend yourself, you hellspawn!" */ DO~Enemy() ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1) ~ EXIT
IF~~THEN REPLY @18 /*"I don't want to waste my time on you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.C1
@20 /*The boy purses his lips like an offended prima donna. "You're a terrible bore." */
END
IF~Global("G-rattemplequest","GLOBAL",2)~THEN REPLY @22 /*"Life is not a game, remember that. Perhaps you could share a secret with me? Maybe about... a rat temple?" */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD068.E1
IF~~THEN REPLY @23 /*"I don't have time for jokes. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.E1
@25 /*The boy tilts his head, thinking deeply. "Hmm... that is one juicy secret. I do know about the temple... Give me a copper in each hand and I'll tell you!" */
END
IF~PartyGoldGT(49)~THEN REPLY @27 /*"A copper in each hand? Might as well. Here." */ DO~~ + g-bbD068.L1
IF~PartyGoldLT(50)~THEN REPLY @28 /*"I think I don't have enough jink." */ DO~~ + g-bbD068.L2
IF~CheckStatGT(Protagonist,14,STR)~THEN REPLY @29 /*"You tell me for free or you'll regret it." */ DO~~ + g-bbD068.M1
IF~~THEN REPLY @30 /*"You've got to be kidding, I'm not paying a tatterdemalion. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @31 /*"Maybe another time. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.L1
@33 /*You reach into your purse and pull out two copper coins. When you look up at the creature, in addition to the kid's outstretched hands, there's an additional pair of hands with a paler skin tone sticking out from under the cloak, as well as several dozen semi-transparent tentacles covered in greenish slime with pseudo-fingers formed at the ends. The boy grins broadly. "Come on. In *each* hand!" */
END
IF~PartyGoldGT(47)~THEN REPLY @35 /*"A deal is a deal. By the Lady's grace, let it be lost." You put a copper into each of the exposed appendages. */ DO~TakePartyGold(48)~ + g-bbD068.P1
IF~CheckStatGT(Protagonist,14,STR)~THEN REPLY @36 /*"You'll tell me for free or you'll regret it." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD068.M1
IF~~THEN REPLY @37 /*"You're cheating. I don't like that. No deal. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @38 /*"You've got to be kidding, I'm not paying a tatterdemalion. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @39 /*"Maybe another time. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.L2
@41 /*The boy snorts contemptuously. "Nothing comes for free." */
END
IF~~THEN REPLY @43 /*"Maybe another time. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.P1
@45 /*The coppers disappear under the lapels of his coat with surprising speed, as if they had dissolved into thin air. The boy nods seriously. "A deal's a deal. Okay, listen." The boy lowers his voice and leans forward, making his entire being wobble. "By the way, you didn't hear this from me. There's an old temple to the rat god hidden in the sewers." */
=@46 /*"I've never been there myself, but my friend's brother's cousin pinkie promised it was true! And there's supposedly some treasure there! But getting there isn't that easy, 'cause there's monsters roaming around. But if you're not afraid, you have to go find the pipe-gate on the cliff, wear a necklace made out of 15 rat tails from those sewers, then turn on your heel five times to the left and thirteen times to the right, and finally sing something in the highest voice you can. If you do everything right, a portal to the temple will open! Great, innit?" The boy's eyes light up. You don't know if it's because of the treasures hidden there or at the thought of adventure. */
END
IF~~THEN REPLY @48 /*"Thanks, kid. Farewell." */ DO~SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3)~ SOLVED_JOURNAL @20205 EXIT
IF~~THEN REPLY @49 /*"I hope you didn't lie, because in that case, I'll find you and break all of your bones." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3)~ SOLVED_JOURNAL @20205 EXIT
CHAIN IF~~THEN g-bbD068 g-bbD068.M1
@51 /*The boy looks at you in fear. His whole being begins to shake, you don't know if from fear or anger. "Okay, okay! I'll tell you! Supposedly there's a temple of the rat god hidden in the sewers. You can only get to it through a portal." */
=@52 /*"I've never been there myself, but my friend's brother's cousin pinkie promised it was true! And there's supposedly some treasure there! But getting there isn't that easy, 'cause there's monsters roaming around. But if you're not afraid, you have to go find the pipe-gate on the cliff, wear a necklace made out of 15 rat tails from those sewers, then turn on your heel five times to the left and thirteen times to the right, and finally sing something in the highest voice you can. If you do everything right, a portal to the temple will open! Great, innit?" The boy's eyes light up. You don't know if it's because of the treasures hidden there or at the thought of adventure. */
END
IF~~THEN REPLY @54 /*"I hope you didn't lie, because in that case, I'll find you and break all of your bones." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3)~ SOLVED_JOURNAL @20205 EXIT
IF~~THEN REPLY @55 /*"Thanks, kid. Farewell." */ DO~SetGlobal("g-kid","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",3)~ SOLVED_JOURNAL @20205 EXIT