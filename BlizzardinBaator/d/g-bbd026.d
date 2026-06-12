BEGIN g-bbD026
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD026 g-bbD026.start1
@0 /*This fiend is tall and frighteningly thin, with skin looking as if coated in tar, rich in cuts and scars. He crouches next to the entrance and peers warily at any newcomers. */
=@1 /*The gehreleth has nothing to say. "Talk to Zegonz and order something so I don't have to ask you to leave, meat." */
END
IF~~THEN REPLY @3 /*"I'll do that, then." */ DO~~ EXIT
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-regretcannibal","GLOBAL",1) ~THEN g-bbD026 g-bbD026.startregret
@6 /*"I got nothing to say to you, wuss." */
END
IF~~THEN REPLY @8 /*Leave. */ DO~~ EXIT
IF~~THEN REPLY @9 /*"I don't like the way you talk to me. I think I'll kill you." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-styxhostile","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Dead("g-bb024") Dead("g-bb025") Global("G-gehrcomment","GLOBAL",1)~THEN g-bbD026 g-bbD026.start2
@11 /*"Well, I was right," says the bouncer. "It'll be quiet for some time, until they reform and crawl right back here... it wouldn't be the first time..." */
END
IF~~THEN REPLY @13 /*Leave. */ DO~SetGlobal("G-gehrcomment","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-ActualCannibal","GLOBAL",0)~THEN g-bbD026 g-bbD026.start3
@15 /*The gehreleth has nothing more to say. "Talk to Zegonz, meat." */
END
IF~~THEN REPLY @17 /*Leave. */ DO~~ EXIT
IF~~THEN REPLY @18 /*"I don't like the way you talk to me. I think I'll kill you." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-styxhostile","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("G-ActualCannibal","GLOBAL",0) Global("G-regretcannibal","GLOBAL",0) ~THEN g-bbD026 g-bbD026.start4
@20 /*The gehreleth looks at you curiously. You feel something shift in his gaze. As if you have gained his respect? He is not looking down on you anymore, not as if you were meat, but as someone almost his equal. "Greetings, gourmet." */
END
IF~GlobalLT("G-gehrquestion","GLOBAL",1)~THEN REPLY @22 /*"Excuse me?" */ DO~SetGlobal("G-gehrquestion","GLOBAL",1)
~ + g-bbD026.gourmet1
IF~GlobalGT("G-gehrquestion","GLOBAL",0)~THEN REPLY @23 /*"I've some questions." */ DO~~ + g-bbD026.questions
IF~~THEN REPLY @24 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("G-ActualCannibal","GLOBAL",0) Global("G-regretcannibal","GLOBAL",0) Global("G-gehrcomment","GLOBAL",0) Dead("g-bb024") Dead("g-bb025")~THEN g-bbD026 g-bbD026.start5
@26 /*The gehreleth who observed your encounter with the abishai and the glabrezu looks at you curiously. You feel something shift in his gaze. As if you have gained his respect? He is not looking down on you anymore, not as if you were meat, but as someone almost his equal. "Greetings, gourmet." */
END
IF~GlobalLT("G-gehrquestion","GLOBAL",1)~THEN REPLY @28 /*"Excuse me?" */ DO~SetGlobal("G-gehrquestion","GLOBAL",1) SetGlobal("G-gehrcomment","GLOBAL",1)~ + g-bbD026.gourmet1
IF~GlobalGT("G-gehrquestion","GLOBAL",0)~THEN REPLY @29 /*"I've some questions." */ DO~SetGlobal("G-gehrcomment","GLOBAL",1)~ + g-bbD026.questions
IF~~THEN REPLY @30 /*Leave. */ DO~SetGlobal("G-gehrcomment","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD026 g-bbD026.gourmet1
@32 /*"You've tasted Elvra Syne's drink, haven't you, gourmet? You've crossed what I call the ultimate frontier. In Carceri, sometimes meat chooses to eat their own because of the extreme conditions. Hunger and the will to survive force them to do what is, as you call it, my daily bread. *You* did it willingly. Why, I ask you?" */
END
IF~~THEN REPLY @34 /*"Curiosity." */ DO~~ + g-bbD026.gourmet2
IF~~THEN REPLY @35 /*"Why not? I want to experience different things." */ DO~~ + g-bbD026.gourmet2
IF~~THEN REPLY @36 /*"Practicality. I wanted to gain respect among the fiends. Few would dare to do that." */ DO~~ + g-bbD026.gourmet2
IF~~THEN REPLY @37 /*"Coincidence. I rarely think about what I do." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD026.gourmet2
IF~~THEN REPLY @38 /*"I've fallen so low, cannibalism won't make any difference." */ DO~~ + g-bbD026.gourmet2
IF~~THEN REPLY @39 /*"Where I come from they say: when opportunity knocks, answer. When trouble comes, run. And Elvra Syne was very nice to me. I didn't want to offend anyone, so I accepted the offer." */ DO~~ + g-bbD026.gourmet2
CHAIN IF~~THEN g-bbD026 g-bbD026.gourmet2
@41 /*"Is that so, gourmet..." The gehreleth licks his lips. "Did you enjoy it? Do you think you'll want more in the future? Stupid question. Of course you will..." */
END
IF~~THEN REPLY @43 /*"Yes, certainly." */ DO~~ + g-bbD026.gourmet4b
IF~~THEN REPLY @44 /*"No, I regret this now..." */ DO~~ + g-bbD026.gourmet4a
CHAIN IF~~THEN g-bbD026 g-bbD026.gourmet4a
@46 /*"Pah. You're still meat after all. Nothing will come of you... Too bad." */
END
IF~~THEN REPLY @48 /*Leave. */ DO~SetGlobal("G-regretcannibal","GLOBAL",1)~ EXIT
IF~~THEN REPLY @49 /*"I don't like the way you talk to me. I think I'll kill you." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-styxhostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD026 g-bbD026.gourmet4b
@51 /*"Sigil has its drawbacks, you know? I can't just go and take what's rightfully mine. I'd like to give you a nice dwarf steak or bariaur sausage, but as you can see..." He gestures with his thin arms at his slimy, naked body as if to show that he does not have many pockets hidden in it. "It's hard for me to hide anything that substantial. But I'll still give you something to send you off." */
END
IF~~THEN REPLY @53 /*Wait. */ DO~~ + g-bbD026.gourmet5b
CHAIN IF~~THEN g-bbD026 g-bbD026.gourmet5b
@55 /*It turns out he had a small pocket in his tough shoulder skin after all. He takes out two items: a teardrop-shaped charm and a bright piece of cloth. "This is a symbolic start to your journey after crossing the frontier. Eat whatever you want. Chew whatever you want." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @56 /**"I alwaysss tell him that! Heat with the sweet flamesss... Without fire, even life is tasteless!"* */
END
IF~~THEN REPLY @58 /*Take the drop and the... bib. "Thanks." */ DO~GiveItemCreate("g-bbi061",Protagonist,0,0,0) GiveItemCreate("g-bbi086",Protagonist,0,0,0)~ + g-bbD026.questions
CHAIN IF~~THEN g-bbD026 g-bbD026.questions
@60 /*"Ask, gourmet." */
END
IF~GlobalGT("G-ActualCannibal","GLOBAL",0)~THEN REPLY @62 /*"Do you know any good recipes?" */ DO~~ + g-bbD026.recipes
IF~~THEN REPLY @63 /*"How did you end up in this bar?" */ DO~~ + g-bbD026.bar
IF~Dead("Vrschka") Global("G-knowfarvrschka","GLOBAL",1)~THEN REPLY @64 /*"You must hate Vrischika the Importer. So maybe you'll be glad to hear she's dead." */ DO~SetGlobal("G-farastuvrschka","GLOBAL",1)~ + g-bbD026.monjug1
IF~~THEN REPLY @65 /*"Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD026 g-bbD026.recipes
@67 /*The fiend bursts into a short laugh, sounding like someone shaking a bag full of refuse from a slaughterhouse. "A word of warning: berks like you have weak stomachs. It's best you heat the meat first. Otherwise, you risk poisoning. You should also think about freezing the pieces you won't be eating right away. I like raw human meat. So no, I don't know recipes." */
END
IF~GlobalGT("G-gehrquestion","GLOBAL",0)~THEN REPLY @69 /*"I've got other questions." */ DO~~ + g-bbD026.questions
IF~~THEN REPLY @70 /*"Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD026 g-bbD026.bar
@72 /*"I was transported from Carceri in a metal jug. Probably as a minion for a spellslinger to summon. Over my dead body. I set myself free and killed the carrier of the jug. After that, I was offered a job here. And it isn't that bad. Zegonz pays well." */
END
IF~GlobalGT("Vris_Buy_09","AR0609",0) GlobalLT("G-farastuvrschka","GLOBAL",1)~THEN REPLY @74 /*"I've seen a jug like that in Vrischika the Importer's shop." */ DO~~ + g-bbD026.monjug
IF~~THEN REPLY @75 /*"I've got other questions." */ DO~~ + g-bbD026.questions
IF~~THEN REPLY @76 /*"Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD026 g-bbD026.monjug
@78 /*"May the next jug break at her feet. Only lawlies treat those below them this way. She does exactly what they do." */
END
IF~Dead("Vrschka")~THEN REPLY @80 /*"So maybe you'll be glad to hear she's dead." */ DO~SetGlobal("G-farastuvrschka","GLOBAL",1)~ + g-bbD026.monjug1
IF~~THEN REPLY @81 /*"Yeah... I've got other questions." */ DO~SetGlobal("G-knowfarvrschka","GLOBAL",1)~ + g-bbD026.questions
IF~~THEN REPLY @82 /*"You're right. Farewell." */ DO~SetGlobal("G-knowfarvrschka","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD026 g-bbD026.monjug1
@84 /*The gehreleth looks at you, seemingly baffled. "I didn't ask for it, but I won't say it wasn't beneficial. Don't expect much gratitude from a fiend, but..." He rummages in one of the pockets on his skin and finally hands you a shiny drop. "Here. You'll taste better when the time comes." He licks his chops. */
END
IF~~THEN REPLY @86 /*"Thanks...? I've got other questions." */ DO~GiveItemCreate("g-bbi061",Protagonist,0,0,0) AddexperienceParty(10000)~ + g-bbD026.questions
IF~~THEN REPLY @87 /*"Thanks...? I'll be going now." */ DO~GiveItemCreate("g-bbi061",Protagonist,0,0,0) AddexperienceParty(10000)~ EXIT
IF~~THEN REPLY @88 /*"I don't like the way you talk to me. I think I'll kill you." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-styxhostile","GLOBAL",1) GiveItemCreate("g-bbi061",Protagonist,0,0,0) AddexperienceParty(10000)~ EXIT