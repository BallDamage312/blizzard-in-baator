BEGIN g-bbD208
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD208 g-bbD208.start1
@0 /*At first, you feel like your eyes are playing tricks on you. In the distance, you see... A human-sized crab, walking upright on its hind legs, swaying awkwardly from side to side. The strange creature slowly approaches you. Your muscles tense involuntarily, but the creature does not seem aggressive. Standing almost face to face with it, you notice more details... and your mistake. */
=@1 /*It is not a true monster, but a person encased in a slightly fraying costume. Up close, the costume does not even seem that convincing, especially since you can see the sweaty face of a young woman behind the thin mesh around the creature's neck. Despite her obvious exhaustion, she smiles broadly at you with just her lips. Her voice radiates an energy belied by her resigned stance. */
==g-bbd208 IF~TimeOfDay(DAY)~THEN @2 /*"Good day, good day! You have a chance to become my client! How about it?" */
==g-bbd208 IF~TimeOfDay(NIGHT)~THEN @3 /*"Still up? Then you have a chance to become my client! How about it?" */
==g-bbd208 IF~TimeOfDay(DUSK)~THEN @4 /*"Good evening, good evening! You have a chance to become my last client today! I can maybe stop my calling!" */
==g-bbd208 IF~TimeOfDay(MORNING)~THEN @5 /*"Good morning, good morning! You have a chance to become my first client today! I haven't even started my calling yet!" */
END
IF~OR(2) TimeOfDay(MORNING) TimeOfDay(DUSK)~THEN REPLY @7 /*"Greetings. What calling?" */ DO~~ + g-bbD208.A1
IF~~THEN REPLY @8 /*"Greetings. Your client? What do you sell?" */ DO~~ + g-bbD208.A1
IF~~THEN REPLY @9 /*"Greetings. Why do you look... like this?" */ DO~~ + g-bbD208.C1
IF~~THEN REPLY @10 /*"Whatever you're selling, I'm not interested. Farewell." */ DO~~ EXIT
CHAIN IF~!GlobalGT("G-SNACK","GLOBAL",5)~THEN g-bbD208 g-bbD208.start2
@12 /*"CRAB PUFFS! CRAB PUFFS! IGNORE OVERTIME STUFF, BUY CRAB PUFFS!" The girl spots you and turns to you with a broad salesperson's smile. "So? Want a puff?" */
END
IF~PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",0) !GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @14 /*"I may regret this later, but I want to try. Here's a copper." */ DO~TakePartyGold(1)
~ + g-bbD208.J1
IF~PartyGoldGT(0) Global("G-SNACK","GLOBAL",0)~THEN REPLY @15 /*"I may regret this later, but I want to try. Here's a copper." */ DO~TakePartyGold(1)
~ + g-bbD208.G1
IF~PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @16 /*"Here's a copper." */ DO~TakePartyGold(1)
~ + g-bbD208.M
IF~PartyGoldLT(1)~THEN REPLY @17 /*"Maybe another time. I don't have any money right now." */ DO~~ + g-bbD208.F1
IF~~THEN REPLY @18 /*"No thanks. I don't want to spend my immortality in a privy." */ DO~~ + g-bbD208.F1
CHAIN IF~GlobalGT("G-SNACK","GLOBAL",5)~THEN g-bbD208 g-bbD208.start3
@20 /*"CRAB PUFFS! CRAB PUFFS! IGNORE OVERTIME STUFF, BUY CRAB PUFFS!" The girl spots you and turns to you with a broad salesperson's smile. "Oh, my favourite customer! Want a puff this time, too?"
 */
END
IF~PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",0) !GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @22 /*"I may regret this later, but I want to try. Here's a copper." */ DO~TakePartyGold(1)
~ + g-bbD208.J1
IF~PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @23 /*"Here's a copper." */ DO~TakePartyGold(1)
~ + g-bbD208.M
IF~PartyGoldLT(1)~THEN REPLY @24 /*"Maybe another time. I don't have any money right now." */ DO~~ + g-bbD208.F1
IF~~THEN REPLY @25 /*"No thanks. I don't want to spend my immortality in a privy." */ DO~~ + g-bbD208.F1
CHAIN IF~~THEN g-bbD208 g-bbD208.A1
@27 /*The girl seems to have been waiting for this. She throws back her head and lets out a scream that would drown out even the winds of Pandemonium: "CRAB PUFFS! CRAB PUFFS! WHY DO YOU NEED FANCY BOEUFS WHEN YOU HAVE CRAB PUFFS? PACK A PUFF IN YOUR MOUTH! IN A JIFF!" */
=@28 /*With a crab claw, concealing her real limb, the girl reaches into the cubic bag strapped to her waist. You had not noticed it before because it was styled like a piece of crab shell. From within, a paper bag appears. "A puff? Only a copper for the package." */
END
IF~~THEN REPLY @30 /*"Maybe. Show me these puffs." */ DO~~ + g-bbD208.E1
IF~~THEN REPLY @31 /*"Erm, no, thanks. I'm not hungry." */ DO~~ + g-bbD208.F1
CHAIN IF~~THEN g-bbD208 g-bbD208.C1
@33 /*The girl's smile fades slightly, and a flicker of irritation flares in her eyes. But she quickly regains her composure, as befits someone who is neck-to-neck with a potential customer. "Oh, that's my boss's idea. If people see a crab, they'll be more inclined to eat crab cakes. Or at least that's what he says." */
=@34 /*With a crab claw, concealing her real limb, the girl reaches into the cubic bag strapped to her waist. You had not noticed it before because it was styled like a piece of crab shell. From within, a paper bag appears. "A puff? Only a copper for the package." */
END
IF~~THEN REPLY @36 /*"Maybe. Show me these puffs." */ DO~~ + g-bbD208.E1
IF~~THEN REPLY @37 /*"Erm, no, thanks. I'm not hungry." */ DO~~ + g-bbD208.F1
CHAIN IF~~THEN g-bbD208 g-bbD208.E1
@39 /*The girl's smile widens and she shoves the bag under your nose. You are faced with a handful of shell-shaped crackers, most of them broken and battered from being smashed together for so long. From what you can tell, they were originally white, but these have been dipped in a yellowish, sticky sauce with looks and smells like earwax, with a hint of rancid month-old fat and rotten fish thrown in. You feel the stomach juices rising in your throat, as if trying to escape the prospect of consuming this food-like abomination. */
END
IF~PartyGoldGT(0) !GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @41 /*"Maybe I'll regret this later but I want to try it. Here's a copper." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.G1
IF~PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @42 /*"Maybe I'll regret this later but I want to try it. Here's a copper." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.M
IF~PartyGoldLT(1)~THEN REPLY @43 /*"Maybe another time. I don't have any money right now." */ DO~~ + g-bbD208.F1
IF~~THEN REPLY @44 /*"No thanks. I don't want to spend my immortality in a privy." */ DO~~ + g-bbD208.F1
CHAIN IF~~THEN g-bbD208 g-bbD208.F1
@46 /*The girl shrugs all her crab shoulders. "Whatever. I'll hang around the beach until I sell everything." She walks away and resumes screaming at the top of her lungs. "WHO does not EAT A PUFF IS FULL OF GUFF! HEY! HEY!" */
EXIT
CHAIN IF~~THEN g-bbD208 g-bbD208.G1
@49 /*The girl snatches the coin from your hand with the skill of a professional diddler. The coin disappears somewhere in the depths of her costume. In return, she hands you a bag of what is undoubtedly a toxic delicacy. You rip open the package, driven by a pernicious, grisly curiosity. Nothing matters in that moment: neither the smell searing your mucous membranes nor the warning churning in your stomach. You take the crisp and carefully crush it between your teeth. */
=@50 /*It slowly dissolves on your tongue, as if trying to seep into your tissues like a refined poison. You wish it would numb your taste buds, but it does not. Slowly, almost agonizingly, taste sensations begin to reach you. You have eaten rats tastier than this, half-decomposed ones, too. You feel as if your body is turning inside out as the ground-up, crabby paste slowly slides down into your gut. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @51 /*"Bleh, chief. Better not blow in anyone's face now. I may not have a nose, but I still squirm." */
END
IF~PartyGoldGT(0) !GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @53 /*"That was the most disgusting thing I've eaten in my entire life. I want more." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.J1
IF~PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @54 /*"That was the most disgusting thing I've eaten in my entire life. I want more." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.M
IF~GlobalGT("Join_Sensates","GLOBAL",0) PartyGoldGT(0) !GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @55 /*"It may be disgusting, but it's a peculiar kind of experience. It is an ultimate test for my *taste*. I'd like another one, please." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.J1
IF~GlobalGT("Join_Sensates","GLOBAL",0) PartyGoldGT(0) GlobalGT("G-SNACK","GLOBAL",9)~THEN REPLY @56 /*"It may be disgusting, but it's a peculiar kind of experience. It is an ultimate test for my *taste*. I'd like another one, please." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.M
IF~PartyGoldLT(1)
~THEN REPLY @57 /*"I would buy more, but I don't have any money right now." */ DO~~ + g-bbD208.F1
IF~~THEN REPLY @58 /*"Never again." */ DO~~ + g-bbD208.F1
CHAIN IF~~THEN g-bbD208 g-bbD208.J1
@60 /*The girl gives you an enigmatic smile and quickly exchanges the coin for another package. You delude yourself that the next time you eat it, the olfactory and gustatory sensations will be more digestible, but they are not. These puffs have never even been close to digestible. You chew and devour another portion. With each bite, you feel less and less like yourself and more and more like a ground-up, trampled, and decayed crab. */
=@61 /*"And how is it?" she asks. "Do you want one more package?" */
==g-bbd208 IF~Global("G-SNACK","GLOBAL",1)~THEN @62 /*Before you answer, you can hear her muttering to herself: "I still have nine packs, I think...?" */
==g-bbd208 IF~Global("G-SNACK","GLOBAL",5)~THEN @63 /*Before you answer, you can hear her muttering to herself: "I still have some left... Oh, not so many! About five, I think!" */
==g-bbd208 IF~Global("G-SNACK","GLOBAL",7)~THEN @64 /*Before you answer, you can hear her muttering to herself: "Oh. Only three left!" */
==g-bbd208 IF~Global("G-SNACK","GLOBAL",8)~THEN @65 /*Before you answer, you can hear her muttering to herself: "Two to go..." */
==g-bbd208 IF~Global("G-SNACK","GLOBAL",9)~THEN @66 /*Before you answer, you can hear her muttering to herself: "This is my last pack!" */
END
IF~PartyGoldGT(0) GlobalLT("G-SNACK","GLOBAL",9)~THEN REPLY @68 /*"Of course. They will never bore me." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.J1
IF~PartyGoldGT(0) Global("G-SNACK","GLOBAL",9)~THEN REPLY @69 /*"Of course. They will never bore me." */ DO~TakePartyGold(1) IncrementGlobal("G-SNACK","GLOBAL",1)~ + g-bbD208.M
IF~PartyGoldLT(1)~THEN REPLY @70 /*"Maybe another time. I don't have any money right now." */ DO~~ + g-bbD208.F1
IF~~THEN REPLY @71 /*"No... Never again. Enough is enough." */ DO~~ + g-bbD208.F1
CHAIN IF~~THEN g-bbD208 g-bbD208.M
@73 /*The girl gives you an enigmatic smile and quickly exchanges the coin for another package. "Damn! You bought all the puffs I had! I can go home!" The last sentence sounds almost like a squeal of joy. "Thank you, stranger. You're a fine guy. Oh, and if you get a stomach ache, I recommend chamomile tea. It always helps." */
=@74 /*Without waiting for your answer, the girl turns on her heel and runs off so fast that the extra limbs of her crab suit flap behind her in the wind like pennants. You do not know what to think of this whole strange encounter, but judging by the searing heartburn in your gut, chamomile might not be such a bad idea. */
=@75 /*When you belch rotten fish for the tenth time in a sequence, people start to give you a wide berth. You realize that the serving of crab puffs has likely left a permanent mark on your body. */
END
IF~~THEN REPLY @77 /*Leave. */ DO~SetGlobal("G-SNACKALLl","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) PermanentStatChange(Protagonist,CHR,LOWER,1) PermanentStatChange(Protagonist,RESISTACID,RAISE,25) AddexperienceParty(10000) EscapeArea() ~ EXIT