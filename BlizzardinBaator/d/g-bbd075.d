BEGIN g-bbD075
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD075 g-bbD075.start
@0 /*You see a middle-aged woman, dressed in rags, kneeling motionless in the mud. In one hand she's holding a rusty dagger, with the other she scatters chunks of cheese in front of a hole in the wall. She stares at it with the intensity of a cat on the prowl. When you approach, she hisses at you. "Bar that, berk. You're scaring the rats." */
END
IF~~THEN REPLY @2 /*"What in the Nine Hells are you doing down here?" */ DO~~ + g-bbD075.A1
IF~~THEN REPLY @5 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD075 g-bbD075.start2
@7 /*The middle-aged woman, dressed in rags, is still kneeling in the mud. When you approach, she hisses at you. "Hey! What did I tell you abut sneaking up on me? You're scaring the rats." */
END
IF~Global("g-ratcatchershop","GLOBAL",1)~THEN REPLY @9 /*"I just want to buy some more rat tails from you." */ DO~~ + g-bbD075.D1
IF~~THEN REPLY @10 /*"Let me ask once again... What are you doing?" */ DO~~ + g-bbD075.A1
IF~~THEN REPLY @13 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD075 g-bbD075.A1
@15 /*"I'm embroidering roses on the perfumed handkerchiefs of noblewomen." The woman rolls her eyes. "Pike off, I'm busy." */
END
IF~PartyGoldGT(4)~THEN REPLY @17 /*"Easy now. I just want to buy some rat tails from you." */ DO~SetGlobal("g-ratcatchershop","GLOBAL",1)~ + g-bbD075.D1
IF~PartyGoldLT(5)~THEN REPLY @18 /*"Easy now. I just want to buy some rat tails from you." */ DO~SetGlobal("g-ratcatchershop","GLOBAL",1)~ + g-bbD075.D2
IF~~THEN REPLY @21 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD075 g-bbD075.D1
@23 /*The woman looks at you suspiciously, but after a moment of hesitation, she shows you the contents of her purse. You give her a few copper coins and receive five rat tails in return. */
END
IF~~THEN REPLY @25 /*"Thanks." */ DO~TakePartyGold(5) GiveItemCreate("TAIL",Protagonist,1,1,0) GiveItemCreate("TAIL",Protagonist,1,1,0) GiveItemCreate("TAIL",Protagonist,1,1,0) GiveItemCreate("TAIL",Protagonist,1,1,0) GiveItemCreate("TAIL",Protagonist,1,1,0)~ JOURNAL @6002 EXIT
CHAIN IF~~THEN g-bbD075 g-bbD075.D2
@27 /*Seeing how you struggle to produce any money from your bag, the woman gives you a contemptuous look. "Come back when you get jink." */
END
IF~~THEN REPLY @29 /*Leave. */ DO~~ JOURNAL @6002 EXIT
CHAIN IF~~THEN g-bbD075 g-bbD075.D3
@31 /*"Now leave me alone. The rats won't catch themselves and I've got a family to feed." The woman goes back to hunting and stops paying attention to you. */
END
IF~~THEN REPLY @33 /*Leave. */ DO~~ JOURNAL @6002 EXIT