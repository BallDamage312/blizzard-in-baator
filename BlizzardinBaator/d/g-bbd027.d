BEGIN g-bbD027
CHAIN IF~OR(3) Global("G-brill_quest","GLOBAL",12) Global("G-dakkon_vial","GLOBAL",1) Dead("g-bb029")~THEN g-bbD027 g-bbD027.angry
@0 /*Mare looks at you full of anger. "What are you still looking for, berk? You won't hear anything from me anymore!" */
EXIT
CHAIN IF~Global("G-brill_quest","GLOBAL",13) !Global("G-dakkon_vial","GLOBAL",1)~THEN g-bbD027 g-bbD027.thankful
@3 /*Mare looks at you and her made-up face blooms with a smile. "Thank you, nameless hero. May the Lady's shadow pass you by." */
EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD027 g-bbD027.start1
@6 /*This courtesan stands out from the rest, as she is a gith. Beneath the heavy makeup and ornate attire, you are not sure if she is a githzerai or a githyanki. The woman notices your eyes fixed on her. "Are you looking for something, cutter?" */
END
IF~PartyGoldGT(19)~THEN REPLY @8 /*"I would like to use your services." (20) */ DO~TakePartyGold(20)~ + g-bbD027.sleep
IF~Global("G-brill_quest","GLOBAL",3)~THEN REPLY @9 /*"Are you Mare? I have some questions." */ DO~SetGlobal("G-brill_quest","GLOBAL",4)~ SOLVED_JOURNAL @20072 + g-bbD027.ikks1
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @10 /*"Do you know a gith by the name of Ikss'odes?" */ DO~~ SOLVED_JOURNAL @20072 + g-bbD027.ikks2
IF~~THEN REPLY @11 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD027 g-bbD027.start1
@13 /*The made-up githzerai watches you carefully as you approach. */
END
IF~PartyGoldGT(19) Global("G-mare_inti","GLOBAL",0)~THEN REPLY @15 /*"I would like to use your services." (20) */ DO~TakePartyGold(20)~ + g-bbD027.sleep
IF~Global("G-brill_quest","GLOBAL",3)~THEN REPLY @16 /*"Are you Mare? I have some questions." */ DO~SetGlobal("G-brill_quest","GLOBAL",4)~ SOLVED_JOURNAL @20072 + g-bbD027.ikks1
IF~Global("G-brill_quest","GLOBAL",4)~THEN REPLY @17 /*"Mare... I really need to find your boyfriend." */ DO~~ + g-bbD027.ikks2
IF~Global("G-brill_quest","GLOBAL",5)~THEN REPLY @18 /*"Can you repeat where Ikss'odes is hiding?" */ DO~~ + g-bbD027.ikks_loc
IF~~THEN REPLY @19 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.sleep
@21 /*The githzerai smiles flirtatiously and grabs you by the belt, gently pulling you towards a darker alley. */
END
IF~~THEN REPLY @23 /*Let her lead you. */ DO~ FadeToColor([20.0],0) RestPartyEx(0, 0, true) AdvanceTime(360) IncrementGlobal("Banged_Harlot","GLOBAL",1) ~ EXIT
IF~~THEN REPLY @24 /*"You know what... I changed my mind." */ DO~~ + g-bbD027.nosleep
CHAIN IF~~THEN g-bbD027 g-bbD027.nosleep
@26 /*The githzerai seems confused, but after a moment she lets go of your belt and sends you a defiant grimace. "Unfortunately, I do no refunds." */
END
IF~~THEN REPLY @28 /*"Well... in that case, let's do it." */ DO~~ + g-bbD027.nosleep2
IF~Global("G-brill_quest","GLOBAL",3)~THEN REPLY @29 /*"Let it be a fee for information." */ DO~SetGlobal("G-brill_quest","GLOBAL",4)~ SOLVED_JOURNAL @20072 + g-bbD027.ikks1
IF~~THEN REPLY @30 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.nosleep2
@32 /*"Oh no, now it's too late. Now it will cost you another 20 coppers." */
END
IF~PartyGoldGT(19)~THEN REPLY @34 /*"Well... so be it." */ DO~TakePartyGold(20)~ + g-bbD027.sleep
IF~Global("G-brill_quest","GLOBAL",3)~THEN REPLY @35 /*"I just have some questions." */ DO~SetGlobal("G-brill_quest","GLOBAL",4)~ SOLVED_JOURNAL @20072 + g-bbD027.ikks1
IF~~THEN REPLY @36 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.ikks1
@38 /*"What do you want to know?" Mare smiles, fluttering her long eyelashes. */
END
IF~~THEN REPLY @40 /*"Where can I find your friend, Ikss'odes?" */ DO~~ + g-bbD027.ikks2
CHAIN IF~~THEN g-bbD027 g-bbD027.ikks2
@42 /*The woman immediately frowns. "I don't know where he is. I haven't seen him for many cycles." */
END
IF~~THEN REPLY @44 /*"Where did you last see him?" */ DO~~ + g-bbD027.ikks3
IF~OR(2) CheckStatGT(Protagonist,15,WIS) CheckStatGT(Protagonist,15,INT) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @45 /*Truth: "I can sense the uncertainty in your voice. He is not in danger, I just need to talk to him." */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("G-mare_pers","GLOBAL",1)~ + g-bbD027.ikks_see
IF~OR(2) CheckStatGT(Protagonist,15,WIS) CheckStatGT(Protagonist,15,INT) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @46 /*Lie: "I can sense the uncertainty in your voice. He is not in danger, I just need to talk to him." */ DO~IncrementGlobal("LAW","GLOBAL",-2) SetGlobal("G-mare_pers","GLOBAL",1)~ + g-bbD027.ikks_see
IF~CheckStatGT(Protagonist,15,STR) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @47 /*"You'd better tell me where he is or no one will ever use your services again." */ DO~SetGlobal("G-mare_pers","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-2)~ + g-bbD027.ikks_inti
IF~~THEN REPLY @48 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.ikks3
@50 /*"Around..." */
END
IF~CheckStatGT(Protagonist,15,CHR) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @52 /*"You can trust me, I want to help him. Please tell me where he might be." */ DO~SetGlobal("G-mare_pers","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-2)~ + g-bbD027.ikks_see
IF~OR(2) CheckStatGT(Protagonist,15,WIS) CheckStatGT(Protagonist,15,INT) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @53 /*Truth: "I can sense the uncertainty in your voice. He is not in danger, I just need to talk to him." */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("G-mare_pers","GLOBAL",1)~ + g-bbD027.ikks_see
IF~OR(2) CheckStatGT(Protagonist,15,WIS) CheckStatGT(Protagonist,15,INT) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @54 /*Lie: "I can sense the uncertainty in your voice. He is not in danger, I just need to talk to him." */ DO~IncrementGlobal("LAW","GLOBAL",-2) SetGlobal("G-mare_pers","GLOBAL",1)~ + g-bbD027.ikks_see
IF~CheckStatGT(Protagonist,15,STR) Global("G-mare_pers","GLOBAL",0)~THEN REPLY @55 /*"You'd better tell me where he is or no one will ever use your services again." */ DO~SetGlobal("G-mare_pers","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-2) SetGlobal("G-mare_inti","GLOBAL",1)~ + g-bbD027.ikks_inti
IF~~THEN REPLY @56 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.ikks_see
@58 /*The woman hesitates for another moment, but something in you convinces her of your intentions nonetheless. "He's in his kip, locked in... I have the key. I hope I won't regret it..."  */
END
IF~~THEN REPLY @60 /*Take the key. "Thank you, I have to go now." */ DO~SetGlobal("G-brill_quest","GLOBAL",5) GiveItem("g-bbi012",Protagonist) AddexperienceParty(10000)~ SOLVED_JOURNAL @20073 EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.ikks_inti
@62 /*Fright is painted on the githzerai's face. With a trembling hand, she reaches into her pocket and pulls out a small iron key. "H-h-he's at his place..." */
END
IF~~THEN REPLY @64 /*Take the key and walk away. */ DO~SetGlobal("G-brill_quest","GLOBAL",5) GiveItem("g-bbi012",Protagonist)~ SOLVED_JOURNAL @20073 EXIT
CHAIN IF~~THEN g-bbD027 g-bbD027.ikks_loc
@66 /*"He's at his place, in his kip..." */
EXIT