BEGIN g-bbD085
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD085 g-bbD085.start
@0 /*In an alley between buildings you see a frail but well-groomed young man with a fashionable haircut, although it is not easy to spot him in the shadows. He is hiding behind a pile of junk. For some reason, he is missing a shirt, and perhaps other garments as well. His expression is gloomy. */
=@1 /*"Um, excuse me?" He says haltingly. "Have you seen a girl with long black hair around here? She's wearing a red dress." */
END
IF~~THEN REPLY @3 /*"No, I haven't. Why?" */ DO~SetGlobal("g-clothesthief","GLOBAL",1)~ + g-bbD085.A1
IF~Global("g-reddress","GLOBAL",1)~THEN REPLY @4 /*"Actually, I have. By the Suicide Falls. Why?" */ DO~SetGlobal("g-clothesthief","GLOBAL",1)~ + g-bbD085.A1a
IF~~THEN REPLY @5 /*Lie: "Yes, I have. Two streets over. I think she was going that way." */ DO~SetGlobal("g-clothesthief","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD085.B1
IF~~THEN REPLY @6 /*"Sorry, I don't have time for this. Goodbye." */ DO~SetGlobal("g-clothesthief","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) ~THEN g-bbD085 g-bbD085.start2
@8 /*The embarrassed young man hides behind a pile of garbage. */
END
IF~Global("g-redwomanquestline","GLOBAL",0)~THEN REPLY @10 /*"So, what's your story? Why are you naked? And what's the deal with the woman in red? */ DO~~ + g-bbD085.reA1
IF~OR(2) Global("g-redwomanquestline","GLOBAL",6) Global("g-redwomanquestline","GLOBAL",7)~THEN REPLY @11 /*"I'm hot on the trail of your clothes. Hang in there, naked guy." */ DO~~ + g-bbD085.trail
IF~PartyHasItem("g-bbi116") Global("g-redwomanquestline","GLOBAL",8)~THEN REPLY @12 /*"I got your clothes back, kid. Here you go." */ DO~~ + g-bbD085.finish
IF~Global("g-redwomanquestline","GLOBAL",3)~THEN REPLY @13 /*"Nothing will come of it. That woman robbed you and she spent the profit on food. Lots of food." */ DO~~ + g-bbD085.F1
IF~Global("g-redwomanquestline","GLOBAL",4)~THEN REPLY @14 /*"Nothing will come of it. That woman robbed you and she spent the profit on food. She paid for her crime, but your clothes are gone." */ DO~~ + g-bbD085.F1
IF~~THEN REPLY @15 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.reA1
@17 /*The young man hesitates for a moment before he finally decides to talk. He blushes to the tips of his ears. "She took my clothes. After *that*. They got dirty, so she said she'd launder them. And now I'm waiting for her to come back. It's taking her a while, though..." */
END
IF~~THEN REPLY @19 /*"I don't want to worry you, but I think the young lady robbed you. Find yourself some makeshift clothing and go home before something worse happens to you." */ DO~~ + g-bbD085.D1
IF~~THEN REPLY @20 /*"I don't want to worry you, but I think the young lady robbed you. She was not laundering anything, except maybe for stolen goods. I guess I can go find her and talk to her... */ DO~SetGlobal("g-redwomanquestline","GLOBAL",2)~ SOLVED_JOURNAL @20245 + g-bbD085.D1a
IF~~THEN REPLY @21 /*"She took your clothes? How stupid and naive do you have to be to let that happen?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD085.E1
IF~~THEN REPLY @22 /*"Well, good luck waiting. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",1)~ SOLVED_JOURNAL @20244 EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.A1
@24 /*Your answer clearly worries the young man. He hesitates for a moment before he finally decides to talk. He blushes to the tips of his ears. "Because... Because she took my clothes. After *that*. They got dirty, so she said she'd launder them. And now I'm waiting for her to come back. It's taking her a while, though..." */
END
IF~~THEN REPLY @26 /*"I don't want to worry you, but I think the young lady robbed you. Find yourself some makeshift clothing and go home before something worse happens to you." */ DO~~ + g-bbD085.D1
IF~~THEN REPLY @27 /*"I don't want to worry you, but I think the young lady robbed you. She was not laundering anything, except maybe for stolen goods. I guess I can go find her and talk to her... */ DO~SetGlobal("g-redwomanquestline","GLOBAL",2)~ SOLVED_JOURNAL @20245 + g-bbD085.D1a
IF~~THEN REPLY @28 /*"She took your clothes? How stupid and naive do you have to be to let that happen?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD085.E1
IF~~THEN REPLY @29 /*"Well, good luck waiting. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",1)~ SOLVED_JOURNAL @20244 EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.A1a
@31 /*The young man's face shows relief. He gives you a grateful smile. "I knew it! She had such a gentle gaze, I knew she wouldn't deceive me! She is laundering the clothes after all. Thank you, stranger." The boy stops paying attention to you. He just stares ahead with the doe-like look of first love. */
END
IF~~THEN REPLY @33 /*"I don't want to worry you, but I think the young lady robbed you. Find yourself some makeshift clothing and go home before something worse happens to you." */ DO~~ + g-bbD085.D1
IF~~THEN REPLY @34 /*"I don't want to worry you, but I think the young lady robbed you. She was not laundering anything, except maybe for stolen goods. I guess I can go find her and talk to her... */ DO~SetGlobal("g-redwomanquestline","GLOBAL",2)~ SOLVED_JOURNAL @20245 + g-bbD085.D1a
IF~~THEN REPLY @35 /*"Well, good luck waiting. Goodbye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",1)~ SOLVED_JOURNAL @20244 EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.D1a
@37 /*"Oh. Could you? Please, stranger. I think this is all a misunderstanding, but I can't go anywhere like this." */
END
IF~~THEN REPLY @39 /*"I'll be back. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.B1
@41 /*The young man's face shows relief. He gives you a grateful smile. "I knew it! She had such a gentle gaze, I knew she wouldn't deceive me! She is laundering the clothes after all. Thank you, stranger." The boy stops paying attention to you. He just stares ahead with the doe-like look of first love. You do not have to be a prophet to foresee a cruel heartbreak in his future. */
END
IF~~THEN REPLY @43 /*"Well. Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.D1
@45 /*The young man sighs heavily. His face shows sorrow. "That's what I thought, even though I was still deluding myself. Thank you, stranger. You're right. I'm a fool." He starts to rummage through the trash, looking for the largest and least smelly piece of rag. He no longer pays any attention to you. You hear him whispering to himself: "Mother will kill me..." */
END
IF~~THEN REPLY @47 /*"Let's hope not. Bye." */ DO~SetGlobal("g-redwomanquestline","GLOBAL",10) EscapeArea()~ SOLVED_JOURNAL @20252 EXIT
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @48 /*Laugh at him. "Look, people! A woman took his clothes!" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD085.E1
CHAIN IF~~THEN g-bbD085 g-bbD085.E1
@50 /*"No, shut your trap! What are you...?!" Before you know it, several passersby point and laugh at the young man. He is paralyzed with shame and does not know what to do. People start to hurl insults at him. Stupid berk. Cony. Gully. After a moment, he lowers his head and sinks into the garbage. This is without a doubt the most humiliating moment of his life. */
END
IF~!InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @52 /*Pleased with yourself, leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",11) EscapeArea()~ SOLVED_JOURNAL @20253 EXIT
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @53 /*Pleased with yourself, leave. */ DO~IncrementGlobal("BD_GRACE_MORALE","GLOBAL",-1) SetGlobal("g-redwomanquestline","GLOBAL",11)~ SOLVED_JOURNAL @20253 + g-bbD085.E2
CHAIN IF~~THEN g-bbD085 g-bbD085.E2
@55 /*Suddenly, Fall-from-Grace approaches the boy. From her bag, she produces a beautifully decorated shawl, which she uses to cover him.  */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @56 /*The show is over. The crowd quiets down and disperses. Fall-from-Grace gives you a look of great disappointment. "Hmph. Simple minds, simple pleasures." [FFG120]  */
==g-bbd085 @57 /*"T-thank you, mistress," the young man says and leaves. */
END
IF~~THEN REPLY @59 /*Leave. */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.F1
@61 /*The young man sighs heavily. He has managed to find some rag to cover himself and begins his walk of shame home.   */
END
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @63 /*Laugh at him. "Look, people! A woman took his clothes!" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD085.E1
IF~~THEN REPLY @64 /*Leave. */ DO~SetGlobal("g-redwomanquestline","GLOBAL",10) EscapeArea()~ SOLVED_JOURNAL @20252 EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.finish
@66 /*"Oh the powers, you actually did it! Thank you *so much*." He quickly dresses up and now fully clad, grins at you. "I wish I could repay you, but I have nothing... short of the clothes on my back." He laughs nervously. */
END
IF~~THEN REPLY @68 /*"I'm just glad I could help, kid." */ DO~AddexperienceParty(10000) IncrementGlobal("GOOD","GLOBAL",1) DestroyPartyItem("g-bbi116",0) SetGlobal("g-redwomanquestline","GLOBAL",9) EscapeArea() ~ SOLVED_JOURNAL @20251 + g-bbD085.finishG
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @69 /*"Yeah, actually that will do nicely. Strip down." */ DO~AddexperienceParty(20000) IncrementGlobal("GOOD","GLOBAL",-1)  SetGlobal("g-redwomanquestline","GLOBAL",12) EscapeArea()~ SOLVED_JOURNAL @20254 + g-bbD085.finishE
CHAIN IF~~THEN g-bbD085 g-bbD085.finishG
@71 /*He shakes your hand, and runs off. */
EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.finishE
@74 /*"Oh..." His demeanor shifts entirely. Defeated, he strips down and hand his clothes back to you. He covers himself with a rag he has found in the garbage and begins his walk of shame home. */
EXIT
CHAIN IF~~THEN g-bbD085 g-bbD085.trail
@77 /*The young man smiles awkwardly and gives you a thumbs up from behind the pile of trash. */
EXIT