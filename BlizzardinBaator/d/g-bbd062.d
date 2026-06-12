BEGIN g-bbD062
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD062 g-bbD062.start1
@0 /*You see a stocky man wearing an absurdly thick jacket, paired with heavy boots and gloves. All these items of clothing are damp, suggesting that he was submerged in the Ditch's water up to at least his chest just a short while ago. Currently, however, the man is strolling along the waterfront, scrutinizing the ground. From time to time, he jots something down in a journal tied with a string to the inside of one of the many pockets in his outfit. Their shapes suggest a multitude of strange devices arranged within reach of his short arms. */
=@1 /*When he notices you, he just offers a polite "good morning." His accent stands out from that of the other residents of the Hive, as if you were dealing with someone so well-educated that you can tell it just from a brief greeting. */
END
IF~~THEN REPLY @3 /*"Good day. I have some questions." */ DO~~ + g-bbD062.questions
IF~Global("G-plsnoslimeloop","GLOBAL",0)~THEN REPLY @4 /*"Were you taking a walk... in the Ditch?" */ DO~SetGlobal("G-plsnoslimeloop","GLOBAL",1)~ + g-bbD062.exterminator
IF~~THEN REPLY @5 /*Leave without a word. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-slimefight","GLOBAL",0)~THEN g-bbD062 g-bbD062.start2
@7 /*The man continues to wander around the area, taking notes. "Hello again! Do you have a business?" */
END
IF~Global("g-slimequestline","GLOBAL",2)~THEN REPLY @9 /*"Maybe I changed my mind about helping you. Where did you say a golem you might need was?" */ DO~~ + g-bbD062.stonerquest4
IF~GlobalGT("G-stonerquest","GLOBAL",0) PartyHasItem("g-bbi032")~THEN REPLY @10 /*"I have what you asked for." */ DO~DestroyPartyItem("g-bbi032",TRUE) AddexperienceParty(60000)~ + g-bbD062.stonerquest5
IF~~THEN REPLY @11 /*"I have some questions." */ DO~~ + g-bbD062.questions
IF~Global("G-plsnoslimeloop","GLOBAL",0)~THEN REPLY @12 /*"Were you taking a walk... in the Ditch?" */ DO~SetGlobal("G-plsnoslimeloop","GLOBAL",1)~ + g-bbD062.exterminator
IF~~THEN REPLY @13 /*"I'll be going now. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.questions
@15 /*"What would you like to know?" */
END
IF~~THEN REPLY @17 /*"Who are you?" */ DO~~ + g-bbD062.name
IF~Global("G-plsnoslimeloop","GLOBAL",0)~THEN REPLY @18 /*"Were you taking a walk... in the Ditch?" */ DO~SetGlobal("G-plsnoslimeloop","GLOBAL",1)~ + g-bbD062.exterminator
IF~GlobalGT("G-stonerquest","GLOBAL",0) PartyHasItem("g-bbi032")~THEN REPLY @19 /*"I have what you asked for." */ DO~DestroyPartyItem("g-bbi032",TRUE) AddexperienceParty(25000)~ + g-bbD062.stonerquest5
IF~GlobalGT("G-stonerquest","GLOBAL",0) !PartyHasItem("g-bbi032")~THEN REPLY @20 /*"Where can I find a golem shard you need?" */ DO~~ + g-bbD062.stonerquest4
IF~~THEN REPLY @21 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.name
@23 /*"My name is Pabeshts and I work for the Office of Vermin and Disease Control," he introduces himself formally. */
END
IF~~THEN REPLY @25 /*"What kind of a name is that?" */ DO~~ + g-bbD062.name1
IF~GlobalGT("Sold_Rat","GLOBAL",0)~THEN REPLY @26 /*"I've been in this office. I happened to sell cranium rat tails there." */ DO~~ + g-bbD062.phineas
IF~Global("G-plsnoslimeloop","GLOBAL",0)~THEN REPLY @27 /*"So what do you do? Is there any vermin here?" */ DO~SetGlobal("G-plsnoslimeloop","GLOBAL",1)~ + g-bbD062.exterminator
IF~~THEN REPLY @28 /*"I have some questions." */ DO~~ + g-bbD062.questions
IF~~THEN REPLY @29 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.name1
@31 /*"I do not know what you are talking about. Perhaps you mean the foreign sound of this name? I am not from Sigil but hail from Automata. This name was found the most effective for me." */
END
IF~GlobalGT("Sold_Rat","GLOBAL",0)~THEN REPLY @33 /*"I've been in the office. I happened to sell cranium rat tails." */ DO~~ + g-bbD062.phineas
IF~Global("G-plsnoslimeloop","GLOBAL",0)~THEN REPLY @34 /*"So what do you do? Are there any vermin around here?" */ DO~SetGlobal("G-plsnoslimeloop","GLOBAL",1)~ + g-bbD062.exterminator
IF~~THEN REPLY @35 /*"I have some questions." */ DO~~ + g-bbD062.questions
IF~~THEN REPLY @36 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.phineas
@38 /*"Oh, so you've met my employer, Phineas T. Lort XXXIX... What a decent old man. Since he was having trouble with a larger rat, he thought it would be a good idea to invest in a real exterminator." */
END
IF~Global("G-BB_GGOLEM","GLOBAL",0) Global("G-plsnoslimeloop","GLOBAL",0)~THEN REPLY @40 /*"So you exterminate vermin? Are there any around?" */ DO~SetGlobal("G-plsnoslimeloop","GLOBAL",1)~ + g-bbD062.exterminator
IF~~THEN REPLY @41 /*"I have some questions." */ DO~~ + g-bbD062.questions
IF~~THEN REPLY @42 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.exterminator
@44 /*"It just so happens that there are slimes living in this area, and my job is to count them. If there were too many of them, they could really make life miserable for the residents. So I'm taking measurements and studying their living conditions to determine how many there are and what factors influence their population size." */
END
IF~~THEN REPLY @46 /*"It sounds like a difficult task." */ DO~~ + g-bbD062.work1
IF~~THEN REPLY @47 /*"It sounds boring." */ DO~~ + g-bbD062.work1
IF~~THEN REPLY @48 /*Don't say anything, keep listening. */ DO~~ + g-bbD062.work1
CHAIN IF~~THEN g-bbD062 g-bbD062.work1
@50 /*"It may not seem very interesting, but *it is* difficult. Just look at what I have to wear. Without a protective layer, I'd catch some disease in no time. But regardless of the conditions, the job has to get done. Phineas won't pay me unless I keep very precise records, and with all these numbers, it's easy to make a mistake... That's why I have this magical box..." The man pulls a small cube made of clay or something similar out of one of his pockets. It is a little scratched up and looks like it is about to fall apart. */
END
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @52 /*"Looks like a device for storing creatures in a compressed form. Pretty worn out." */ DO~~ + g-bbD062.work2
IF~CheckStatGT(Protagonist,9,INT) CheckStatLT(Protagonist,16,INT)~THEN REPLY @53 /*"It actually looks like some kind of magical device, but I'm not sure about its purpose." */ DO~~ + g-bbD062.work2
IF~CheckStatLT(Protagonist,10,INT)~THEN REPLY @54 /*"I have no idea what it could be." */ DO~~ + g-bbD062.work2
CHAIN IF~~THEN g-bbD062 g-bbD062.work2
@56 /*"Thanks to this cube, I can transport the slimes to our laboratory to examine them more closely and mark them, which helps us control the population. Slimes reproduce asexually and the offspring develop from parts of the parent's body, so in theory, they can multiply very quickly. We cannot allow their plague to flood the entire Ditch." */
END
IF~~THEN REPLY @58 /*"How does it work?" */ DO~~ + g-bbD062.slimegeddon1
IF~~THEN REPLY @59 /*"I don't need a demonstration right now, I'll go now..." */ DO~~ + g-bbD062.slimegeddon2
CHAIN IF~~THEN g-bbD062 g-bbD062.slimegeddon1
@61 /*"It's very simple!" The man, with a wide smile, presses a small button on one of the sides, and suddenly, with a blinding flash, a swarm of slimes bursts out of the box. Judging by the look on the man's face, you think that he intended to do something completely different. */
END
IF~~THEN REPLY @63 /*"Oh, great." */ DO~SetGlobal("G-slimefight","GLOBAL",1) SetGlobal("g-slimequestline","GLOBAL",1) CreateCreature("g-bb061",[2070.1835],6) CreateCreature("g-bb061",[2170.1617],4) CreateCreature("g-bb061",[2222.1540],2) CreateCreature("g-bb061",[1958.1556],10) CreateCreature("g-bb061",[2110.1458],2) CreateCreature("g-bb061",[2100.1690],6) ActionOVerride("g-bb061",StickySinisterPoof("SE11SMKY","g-bb061",1))~ SOLVED_JOURNAL @20256 EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.slimegeddon2
@65 /*"No! Please wait, this is really fascinating!" The man, with a wide smile, presses a small button on one of the sides, and suddenly, with a blinding flash, a swarm of slimes bursts out of the box. Judging by the look on the man's face, you think that he intended to do something completely different. */
END
IF~~THEN REPLY @67 /*"Oh, great." */ DO~SetGlobal("G-slimefight","GLOBAL",1) SetGlobal("g-slimequestline","GLOBAL",1) CreateCreature("g-bb061",[2070.1835],6) CreateCreature("g-bb061",[2170.1617],4) CreateCreature("g-bb061",[2222.1540],2) CreateCreature("g-bb061",[1958.1556],10) CreateCreature("g-bb061",[2110.1458],2) CreateCreature("g-bb061",[2100.1690],6) ActionOVerride("g-bb061",StickySinisterPoof("SE11SMKY","g-bb061",1))~ SOLVED_JOURNAL @20256 EXIT
CHAIN IF~Global("G-slimefight","GLOBAL",1)~THEN g-bbD062 g-bbD062.afterslimefight
@69 /*The man gestures wildly. "I am sorry, this should not have happened. It looks like the cube is damaged..." */
END
IF~~THEN REPLY @71 /*"I see. Maybe it can be repaired somehow?" */ DO~IncrementGlobal("G-slimefight","GLOBAL",-1) SetGlobal("G-BB_GGOLEM","GLOBAL",1)~ + g-bbD062.stonerquest1
IF~Global("Know_Cube_Puzzle","GLOBAL",1)~THEN REPLY @72 /*"Could be worse. We could have been transported to the Para-Elemental Plane of Ooze. Apparently, this *is* possible." */ DO~IncrementGlobal("G-slimefight","GLOBAL",-1) SetGlobal("G-BB_GGOLEM","GLOBAL",1)~ + g-bbD062.stonerquest1
IF~~THEN REPLY @73 /*"Are you mad? We could have died!" */ DO~IncrementGlobal("G-slimefight","GLOBAL",-1) SetGlobal("G-BB_GGOLEM","GLOBAL",1)~ + g-bbD062.stonerquest2
IF~~THEN REPLY @74 /*"I'm not interested in this. I'll be going." */ DO~IncrementGlobal("G-slimefight","GLOBAL",-1) SetGlobal("G-BB_GGOLEM","GLOBAL",1)~ + g-bbD062.stonerquest3
IF~~THEN REPLY @75 /*"You'll die for this, vermin." */ DO~Enemy() EscapeArea() IncrementGlobal("GOOD","GLOBAL",-2) IncrementGlobal("G-slimefight","GLOBAL",-1) SetGlobal("G-BB_GGOLEM","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest1
@77 /*"This box was made from the body fragment of a golem, donated to our office by Lothar, the mage. It possesses a small measure of intelligence necessary for it to function properly... But I see that a piece of material has broken off one of the sides. If only I had a spare piece of that golem, even a small one..." */
END
IF~PartyHasItem("g-bbi032")~THEN REPLY @79 /*"I happen to have such a shard already." */ DO~DestroyPartyItem("g-bbi034",TRUE) AddexperienceParty(25000) SetGlobal("g-slimequestline","GLOBAL",5)~ SOLVED_JOURNAL @20260 + g-bbD062.stonerquest5
IF~~THEN REPLY @80 /*"Maybe Lothar could simply donate another piece?" */ DO~~ + g-bbD062.stonerquest4
IF~GlobalGT("Coaxmetal","GLOBAL",0)~THEN REPLY @81 /*"Maybe a fragment of Coaxmetal from the Siege Tower would work?" */ DO~~ + g-bbD062.coax
IF~~THEN REPLY @83 /*"I'm not interested in this. I'll be going." */ DO~~ + g-bbD062.stonerquest3
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest2
@85 /*"I am sorry, I am sorry! I am so sorry!" The man begins to panic. "Let me explain how to fix this." */
END
IF~~THEN REPLY @87 /*"Well, all right. I'm listening." */ DO~~ + g-bbD062.stonerquest1
IF~~THEN REPLY @88 /*"I'm not interested in this. I'll be going." */ DO~~ + g-bbD062.stonerquest3
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest3
@90 /*"Please wait! Please do not leave me with this!" */
END
IF~~THEN REPLY @92 /*"Well, all right. I'm listening." */ DO~~ + g-bbD062.stonerquest1
IF~~THEN REPLY @93 /*Leave. */ DO~SetGlobal("g-slimequestline","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.coax
@95 /*"I was thinking of something much smaller. I know which golem you're talking about, but I'm afraid Coaxmetal won't work. I can see you're ambitious, but I'll have to use a part of the original golem." */
END
IF~~THEN REPLY @97 /*"Maybe Lothar could simply donate another piece?" */ DO~~ + g-bbD062.stonerquest4
IF~~THEN REPLY @98 /*"I'm not interested in this. I'll be going." */ DO~~ + g-bbD062.stonerquest3
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest4
@100 /*"Oh... unfortunately not. That golem went missing a long time ago. Lothar once sent it below the water to chip off and bring him a piece of the Knife in the River, but the golem never resurfaced. It's probably still stuck down there." */
=@101 /*"Lotar won't make another one, since he didn't create *this* one. Apparently, it was a gift from some mage-traveler from Krynn. He's not exactly eager to retrieve it either, since he clearly doesn't need it that much... When it comes to me, I'm afraid to dive down there, it's too dangerous..." */
END
IF~~THEN REPLY @103 /*"A Knife in the River?" */ DO~SetGlobal("g-slimequestline","GLOBAL",3) SetGlobal("g-knowknifeintheriver","GLOBAL",1)~ SOLVED_JOURNAL @20258 + g-bbD062.stonerquest4b
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest4b
@105 /*"It's a huge chunk of metal sticking out of the Ditch. Legend has it that it's a fragment of the crown of Lady of Pain herself, but that's obviously nonsense. I think... To get to it, you'd need a boat and a good navigator, since it's surrounded by dangerous rocks." */
END
IF~~THEN REPLY @107 /*"All right, I'm going to get a shard from this golem." */ DO~SetGlobal("G-stonerquest","GLOBAL",1) SetGlobal("g-slimequestline","GLOBAL",4)~ SOLVED_JOURNAL @20298 EXIT
IF~~THEN REPLY @108 /*"I'll think about it. Goodbye." */ DO~SetGlobal("G-stonerquest","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest5
@110 /*"That is wonderful! Thank you very much! This will allow me to collect and catalog slimes again... You have done the society of Sigil a great service, Mr. Thane." */
END
IF~~THEN REPLY @112 /*"Thane? You must have mistaken me for someone else." */ DO~SetGlobal("G-stonerquest","GLOBAL",2)~ + g-bbD062.stonerquest6
CHAIN IF~~THEN g-bbD062 g-bbD062.stonerquest6
@114 /*"Oh?" He reflects for a moment and squints. "Yes, yes, indeed, sorry. Anyway, whoever you are, you've made your mark in the annals of pest control... You deserve a decent reward." The man rummages in one of his pockets, reaching deeper than seems possible. After a moment, he pulls out a sack that is far too large to fit in there. "Please open it." */
END
IF~~THEN REPLY @116 /*Open the bag. */ DO~GiveItemCreate("vermin",Protagonist,0,0,0) SetGlobal("g-slimequestline","GLOBAL",10)~ SOLVED_JOURNAL @20260 + g-bbD062.newreward
CHAIN IF~~THEN g-bbD062 g-bbD062.newreward
@118 /*Before your eyes appears a leather vest, devoid of any metal fastenings, stitched with white thread. To the touch, it feels impenetrable. The cut is distinctly feminine. "Here you go. This is armor crafted from various pests of the Abyss. A masterpiece from the Lower Planes. I once received it from a postman friend who found a package that had been undelivered for thirty years. It was supposed to reach the city of Plague-Mort on Slipperyoffal Street, but between the time the package was sent and when it was supposed to be delivered, the city was sucked into the Abyss and changed its name. In the new Plague-Mort, there's no longer such a street. So... the package was no longer eligible for delivery...  Instead of a return address, it just said 'Baenre cok diemrey nochtero.' No one claimed it. After all these years, I doubt it would be of any use to anyone else." */
==g-bbd062 IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN @119 /*He looks at Annah and adds in a whisper. "It could make a wonderful gift for your chosen one." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @120 /*"I'm not...! Ahh!" Annah blushes and looks away, but after a moment she walks over to take a closer look at the vest. "Good work indeed. Better than anythin' I've ever worn, aye." */
==DMorte IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN @121 /*The skull looks at the outfit *very* closely. "As a renowned reviewer of Annah's outfits, I approve of this armor and look forward to the fashion show." */
==DAnnah IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN @122 /*"Who asked for yer opinion, skull?" */
==DMorte IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN @123 /*"The Chief is always curious abut what I think, right?" */
==DGrace IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN @124 /*"Is it really from abyssal pests? Now that is an interesting idea. It shows that even the most annoying creatures can be of use to someone. The lack of metal elements could make our Annah even more stealthy. It is really something fitting for her." */
==g-bbD062 IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN @125 /*"Oh, Lady Grace, I would rather you did not see me in such dirty clothes... Please forgive me." */
==DGrace IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN @126 /*"Experience shows that even the dirtiest professions are needed, and the people who perform them deserve more respect than elegantly dressed noblemen." */
END
IF~~THEN REPLY @128 /*"In that case, thank you, good man. Goodbye." */ DO~~ EXIT