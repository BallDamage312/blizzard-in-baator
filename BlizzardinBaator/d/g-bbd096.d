BEGIN g-bbD096
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD096 g-bbD096.start
@0 /*You see a woman who could be considered beautiful among the other inhabitants of the Ditch. You see a woman who can be seen as beautiful among the other inhabitants of the Ditch. Her long black hair waves down her back and her piercing brown eyes tells you that despite her young age she has been through a lot. A provocative red dress hugs her emaciated body. */
=@1 /*She greedily devours a piece of questionable meat on a stick, as if it were her first proper meal in a long time. When you approach, she gives you an appraising look. "No way, berk. I've already worked hard today. I'm on a break. Pike off." */
END
IF~Global("g-redwomanquestline","GLOBAL",2)~THEN REPLY @3 /*"I came to talk about the clothes you stole." */ DO~~ + g-bbD096.D1
IF~~THEN REPLY @4 /*"Relax. I didn't want to buy your services, I just wanted to ask you a few questions." */ DO~SetGlobal("g-reddress","GLOBAL",1)~ + g-bbD096.A1
IF~~THEN REPLY @5 /*"You're not worth my copper anyway. Bye." */ DO~SetGlobal("g-reddress","GLOBAL",1)~ EXIT
IF~~THEN REPLY @6 /*Leave. */ DO~SetGlobal("g-reddress","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD096 g-bbD096.start2
@8 /*The woman is minding her own business, ignoring you. */
END
IF~Global("g-redwomanquestline","GLOBAL",2)~THEN REPLY @10 /*"I came to talk about the clothes you stole." */ DO~~ + g-bbD096.D1
IF~~THEN REPLY @12 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.A1
@14 /*"That's nice. But I'm not going to answer them. Go bother someone else." The woman ignores you completely. She finishes the meat, burps loudly without a hint of shame, and carelessly flicks the empty stick to the ground. She pulls a bun out of a bag you haven't noticed before and starts consuming it with the same fervor as the first course. Filling her stomach is definitely a bigger priority for her than anything you have to say. And that is not going to change anytime soon. */
END
IF~~THEN REPLY @16 /*"I'll pay for your time." */ DO~~ + g-bbD096.C1
IF~Global("g-redwomanquestline","GLOBAL",2)~THEN REPLY @17 /*"I actually came to talk about the clothes you stole." */ DO~~ + g-bbD096.D1
IF~~THEN REPLY @18 /*"Well. Maybe another time. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @19 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.C1
@21 /*Even the promise of financial rewards does not seem enticing enough to the woman to give you even a shred of her attention. She stubbornly keeps quiet and treats you like air. Perhaps she has already earned enough to cover her needs for the foreseeable future. */
END
IF~!Global("g-redwomanquestline","GLOBAL",2)~THEN REPLY @23 /*"You'll regret ignoring me!" */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) ~ + g-bbD096.E2
IF~Global("g-redwomanquestline","GLOBAL",2)~THEN REPLY @24 /*"I actually came to talk about the clothes you stole." */ DO~~ + g-bbD096.D1
IF~~THEN REPLY @25 /*"Hm. Bye." */ DO~~ EXIT
IF~~THEN REPLY @26 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.D1
@28 /*You would expect her to be terrified that someone has caught her, but she replies curtly. "Yeah? So what?" */
END
IF~~THEN REPLY @30 /*"I thought you might want to give them back to their owner." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1) SetGlobal("g-clothesthief2","GLOBAL",1)~ + g-bbD096.D2
IF~GlobalLT("Good","GLOBAL",1)~THEN REPLY @31 /*"I thought you might want to share the profits." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-clothesthief2","GLOBAL",1)~ + g-bbD096.D3
CHAIN IF~~THEN g-bbD096 g-bbD096.D2
@34 /*"Too late. He undressed willingly. Clothes turned into gold. Gold turned into food." */
END
IF~~THEN REPLY @36 /*"Who did you sell the clothes to?" */ DO~SetGlobal("g-redwomantip","GLOBAL",1)~ + g-bbD096.D2A
IF~~THEN REPLY @37 /*"Can you at least spare some change so he can buy some new clothes?" */ DO~~ + g-bbD096.D3
IF~~THEN REPLY @38 /*"You'll regret what you have done. I'll serve you justice here and now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1) ~ + g-bbD096.E2
IF~~THEN REPLY @40 /*"You transmute fabric into metal, and metal into food? I see you're quite the alchemist." */ DO~~ + g-bbD096.E4
CHAIN IF~~THEN g-bbD096 g-bbD096.D2A
@43 /*"Some woman at the market. They're really gone." */
END
IF~~THEN REPLY @45 /*"Can you at least spare some change so he can buy some new clothes?" */ DO~~ + g-bbD096.D3
IF~~THEN REPLY @46 /*"You'll regret what you have done. I'll serve you justice here and now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1) ~ + g-bbD096.E2
IF~~THEN REPLY @48 /*"You transmute fabric into metal, and metal into food? I see you're quite the alchemist." */ DO~~ + g-bbD096.E4
IF~~THEN REPLY @49 /*Leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",6)~ SOLVED_JOURNAL @20248 EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.D3
@51 /*"For what reason?" Her mouth is full of food, but you can still understand what she is saying. "I didn't do anything illegal. He gave me the clothes willingly. Harmonium can suck it. And since I'm not afraid even of them, I don't plan on sharing my profits with some random berk." */
END
IF~Global("g-redwomantip","GLOBAL",0)~THEN REPLY @53 /*"Who did you sell the clothes to?" */ DO~SetGlobal("g-redwomantip","GLOBAL",1)~ + g-bbD096.D2A
IF~~THEN REPLY @54 /*"You'll regret what you have done. I'll serve you justice here and now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",1) ~ + g-bbD096.E2
IF~Global("g-redwomantip","GLOBAL",1)~THEN REPLY @56 /*Leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",6)~ SOLVED_JOURNAL @20248 EXIT
IF~!Global("g-redwomantip","GLOBAL",1)~THEN REPLY @57 /*Leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",3)~ SOLVED_JOURNAL @20246 EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.E2
@59 /*"Should I be afraid? Would you strike a beautiful woman? Go ahead." */
END
IF~~THEN REPLY @61 /*Attack. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("g-redwomanquestline","GLOBAL",4)~ SOLVED_JOURNAL @20247 EXIT
IF~Global("g-redwomantip","GLOBAL",1)~THEN REPLY @62 /*"I've changed my mind. That's not my style. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",6)~ SOLVED_JOURNAL @20248 EXIT
IF~!Global("g-redwomantip","GLOBAL",1)~THEN REPLY @63 /*"I've changed my mind. That's not my style. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",3)~ SOLVED_JOURNAL @20246 EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.E3
@65 /*"Should I be afraid? Could you strike a beautiful woman? Go on." */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @66 /**Silence! Hold on.* Vhailor orders you. *Her testimony is clear and consistent with the boy's version. There was a verbal agreement. He agreed to take off his clothes and left them with the woman. She could do whatever she wanted with them. There is no NECESSITY to punish her...* He looks into the woman's eyes for a moment. *However, there are many other deeds on her conscience that COULD be taken into account for PUNISHMENT.* [VHA107] */
END
IF~~THEN REPLY @68 /*"Fantastic, now I have legal grounds." Attack. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("g-redwomanquestline","GLOBAL",4)~ SOLVED_JOURNAL @20247 EXIT
IF~~THEN REPLY @69 /*Attack without a word. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("g-redwomanquestline","GLOBAL",4)~ SOLVED_JOURNAL @20247 EXIT
IF~Global("g-redwomantip","GLOBAL",1)~THEN REPLY @70 /*"I've changed my mind. I don't do things like this. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",6)~ SOLVED_JOURNAL @20248 EXIT
IF~!Global("g-redwomantip","GLOBAL",1)~THEN REPLY @71 /*"I've changed my mind. I don't do things like this. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",3)~ SOLVED_JOURNAL @20246 EXIT
CHAIN IF~~THEN g-bbD096 g-bbD096.E4
@73 /*"What a numbskull..." The woman goes back to eating and ignores you. */
END
IF~~THEN REPLY @75 /*"You'll regret ignoring me!" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) ~ + g-bbD096.E2
IF~Global("g-redwomantip","GLOBAL",1)~THEN REPLY @76 /*Leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",6)~ SOLVED_JOURNAL @20248 EXIT
IF~!Global("g-redwomantip","GLOBAL",1)~THEN REPLY @77 /*Leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",3)~ SOLVED_JOURNAL @20246 EXIT