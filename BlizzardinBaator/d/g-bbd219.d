BEGIN g-bbD219
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD219 g-bbD219.start
@0 /*A plump man is keeping watch in front of the shack. He appears engrossed in the thick, leather-bound ledger he is holding, but as soon as someone approaches, he pays them immediate attention. You are no exception. He smiles politely as you approach. */
=@1 /*"Be greeted! Are you here to make use of Praybast's Storage?" */
END
IF~~THEN REPLY @3 /*"Greetings. Maybe. What does your business offer?" */ DO~SetGlobal("g-storage-offer","GLOBAL",1)~ + g-bbD219.offer
IF~~THEN REPLY @4 /*"Greetings. Not right now. I just have some questions." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @5 /*"Greetings. Not right now. I just wanted to say hello." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-storage-paid","GLOBAL",1)~THEN g-bbD219 g-bbD219.start2
@7 /*"Ah, you're back! Your items should all be safe in my ware-shack." */
END
IF~~THEN REPLY @9 /*"Great. But I have some questions." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @10 /*"Great! I'll be off, then." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-storage-paid","GLOBAL",0)~THEN g-bbD219 g-bbD219.start2
@12 /*"Ah, you're back! Be greeted. Are you here to make use of Praybast's Storage?" */
END
IF~Global("g-storage-offer","GLOBAL",1) !PartyGoldLT(15) !Global("g-storage-paid","GLOBAL",1)~THEN REPLY @14 /*"Yes, actually. I would love to." */ DO~SetGlobal("g-storage-paid","GLOBAL",1) TakePartyGold(15)~ + g-bbD219.paid
IF~Global("g-storage-offer","GLOBAL",0)~THEN REPLY @15 /*"Maybe. What does your business offer?" */ DO~SetGlobal("g-storage-offer","GLOBAL",1)~ + g-bbD219.offer
IF~~THEN REPLY @16 /*"Not right now. I just have some questions." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @17 /*"I just wanted to say hello." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.offer
@19 /*"I keep your inventory safe while you're away. You can come back at any time and safely withdraw it. Some people come to the port with so much trash that the boats would capsize if we tried to load all of that on board. They can pay just 15 coppers here to store whatever they want. All of these chests in the shack will be at your disposal and under my protection, so you can organize your things neatly." */
END
IF~!PartyGoldLT(15)~THEN REPLY @21 /*"Actually, I would love to use your services." */ DO~SetGlobal("g-storage-paid","GLOBAL",1) TakePartyGold(15)~ + g-bbD219.paid
IF~~THEN REPLY @22 /*"Not right now. I just have some questions." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @23 /*"Right. I don't need this service right now. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.paid
@25 /*The burly man accepts your coins with a smile and gestures widely towards the chests behind him. "They're all yours, distinguished cutter." */
END
IF~~THEN REPLY @27 /*"Thank you. I just have a few questions before I go." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @28 /*"Thanks. That will be all." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.q
@30 /*"What would you like to know?" */
END
IF~Global("g-praybastnameorigin","GLOBAL",0) CheckStatGT(Protagonist,18,INT) GlobalGT("g-knowennead","GLOBAL",1)~THEN REPLY @32 /*"Is your name related to the Enneadic deity, Bast?" */ DO~SetGlobal("g-praybastnameorigin","GLOBAL",1) SetGlobal("g-knowbast","GLOBAL",1) AddexperienceParty(20000)~ + g-bbD219.bast
IF~Global("g-storage-smalltalk","GLOBAL",0)~THEN REPLY @33 /*"Who are you?" */ DO~SetGlobal("g-storage-smalltalk","GLOBAL",1)~ + g-bbD219.who
IF~Global("g-storage-paid","GLOBAL",1) Global("g-storage-rest","GLOBAL",0)~THEN REPLY @34 /*"Now that I've rented the ware-shack from you, can I rest in there?" */ DO~SetGlobal("g-storage-rest","GLOBAL",1)~ + g-bbD219.rest
IF~Global("g-storage-rest","GLOBAL",1)~THEN REPLY @35 /*"I need to rest." */ DO~StartStore("g-bb#009", Protagonist)~ EXIT
IF~~THEN REPLY @36 /*"Why do I need to take the boat to the Ditch settlement? Is there no land route? It doesn't make sense." */ DO~~ + g-bbD219.peninsula
IF~~THEN REPLY @37 /*"Can I travel back and forth from the Ditch settlement?" */ DO~~ + g-bbD219.travel
IF~~THEN REPLY @38 /*"What can you tell me about the location on the other side of the ferry?" */ DO~~ + g-bbD219.location
IF~Global("g-storage-auction","GLOBAL",1)~THEN REPLY @39 /*"So, what could actually be in that bag?" */ DO~~ + g-bbD219.box
IF~CheckStatGT(Protagonist,16,CHR) Global("g-storage-auction","GLOBAL",0)~THEN REPLY @40 /*"Do you have anything to sell?" */ DO~SetGlobal("g-storage-auction","GLOBAL",1)~ + g-bbD219.sellS
IF~!CheckStatGT(Protagonist,16,CHR) Global("g-storage-auction","GLOBAL",0)~THEN REPLY @41 /*"Do you have anything to sell?" */ DO~~ + g-bbD219.sellF
IF~Global("g-storage-offer","GLOBAL",1) !PartyGoldLT(15) !Global("g-storage-paid","GLOBAL",1)~THEN REPLY @42 /*"I would like to rent some storage from you." */ DO~SetGlobal("g-storage-paid","GLOBAL",1) TakePartyGold(15)~ + g-bbD219.paid
IF~Global("g-storage-offer","GLOBAL",0)~THEN REPLY @43 /*"I would like to hear what you're offering." */ DO~SetGlobal("g-storage-offer","GLOBAL",1)~ + g-bbD219.offer
IF~~THEN REPLY @44 /*"Right. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.who
@46 /*"I'm Praybast, the storage manager. I manage storage." His facial expression tells you that he is rarely asked about himself. "Why do you want to know?" */
END
IF~~THEN REPLY @48 /*"I'm just looking to make friends, I guess." */ DO~AddexperienceParty(6000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD219.friends
IF~~THEN REPLY @49 /*"You're right... Why am I even asking you? You're just a weak old man." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD219.enemies
IF~~THEN REPLY @50 /*"I don't know. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @51 /*"I don't know. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.bast
@53 /*He is visibly surprised by your question, but then a wide smile lights up his face. "Ha, indeed. My beloved mother, rest her spirit, was a devout worshiper of the goddess of cats. She gave me this name. I myself am not particularly religious, but Bast I will *always* respect, to honor my mom." A little tear builds up in the corner of his eye as he reaches the end of the sentence. */
END
IF~~THEN REPLY @55 /*"I'm sorry to hear about your mother. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @56 /*"Well... tough. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @57 /*"Right. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.friends
@59 /*He is surprised by your answer, but his expression of shock quickly turns into a kind, albeit slightly confused, smile. "Why, that's nice, cutter. Sure, we can be... 'friends'. So, what's your name?" */
END
IF~~THEN REPLY @61 /*Lie: "My name is Adahn." */ DO~IncrementGlobalOnceEx("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD219.preq
IF~~THEN REPLY @62 /*Truth: "I don't really know who I am." */ DO~~ + g-bbD219.rh
CHAIN IF~~THEN g-bbD219 g-bbD219.preq
@64 /*"Well, nice to meet you, Adahn, 'friend'. How can I help you?" */
END
IF~~THEN REPLY @66 /*"I have some questions." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @67 /*"Right. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.rh
@69 /*"Oh, well, that's okay. Nice to meet you, 'friend'. How can I help you?" */
END
IF~~THEN REPLY @71 /*"I have some questions." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @72 /*"Right. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.enemies
@74 /*He is taken aback by your answer, but his shock soon turns to sadness. He looks away from you and resumes reading his ledger. */
EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.peninsula
@77 /*"Keen observation. The settlement on the other side of the ferry is actually on a peninsula, but the shape of the city and the differences in elevation mean that it functions as an island. Unless you can walk on walls, of course. There *used* to be a staircase, you can still find its ruins, but most folk stick to the boats or portals, if they know where to look for them." */
END
IF~~THEN REPLY @79 /*"Do you know of any portals?" */ DO~~ + g-bbD219.portals
IF~~THEN REPLY @80 /*"I see. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @81 /*"I see. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.portals
@83 /*"No, sorry. I'm in the boat business, so people offering portals are my direct competition..." */
END
IF~~THEN REPLY @85 /*"I understand. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @86 /*"I understand. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.travel
@88 /*"Oh, sure. There are plenty of ferry captains available to take you. They cut one down and two more rise in his place. They're like the heads on a wyvern... or hydra... one of these two... I can never remember which is which. If there isn't anyone there, they'll probably appear within a couple of minutes. You should be able to travel easily, especially now with the whole beach craze. It's very good for business." */
END
IF~~THEN REPLY @90 /*"What's the story with this beach?" */ DO~~ + g-bbD219.beach
IF~~THEN REPLY @91 /*"I see. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @92 /*"I see. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.beach
@94 /*"Frankly? Some local gang brought a load of sand and dumped it on a rock containing an open portal. The portal probably leads to the Elemental Plane of Fire, which makes the sand really warm. It's a hit among the locals. I think it's a brilliant opportunity." */
END
IF~~THEN REPLY @96 /*"Sounds ingenious. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @97 /*"Sounds ingenious. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.location
@99 /*The man giggles. "I've only been there once and stuck to the beach. The area around it is a bit seedy. Not that this side is much better, to be honest..." */
=@100 /*"A famous fiend tavern, the Styx Oarsman, is located there, as well as two of Sigil's largest landmarks: the Suicide Falls and the Vertical Sea." */
END
IF~~THEN REPLY @102 /*"Tell me about the Styx Oarsman. Sounds like a place I might want to visit." */ DO~~ + g-bbD219.styx
IF~~THEN REPLY @103 /*"Tell me about the Suicide Falls." */ DO~~ + g-bbD219.falls
IF~~THEN REPLY @104 /*"Tell me about the Vertical Sea." */ DO~~ + g-bbD219.sea
IF~~THEN REPLY @105 /*"I see. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @106 /*"I see. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.styx
@108 /*"Never been. Humans are not welcome there... unless the patrons are in the mood for human meat." */
END
IF~~THEN REPLY @110 /*"Tell me about the Suicide Falls." */ DO~~ + g-bbD219.falls
IF~~THEN REPLY @111 /*"Tell me about the Vertical Sea." */ DO~~ + g-bbD219.sea
IF~~THEN REPLY @112 /*"I see. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @113 /*"I see. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.falls
@115 /*"It's where the Ditch falls off the edge of Sigil. It's a surefire way out of this city, but people who 'leave' through there never come back and are presumed to be in the dead-book." */
END
IF~~THEN REPLY @117 /*"Tell me about the Styx Oarsman. Sounds like a place I might want to visit." */ DO~~ + g-bbD219.styx
IF~~THEN REPLY @118 /*"Tell me about the Vertical Sea." */ DO~~ + g-bbD219.sea
IF~~THEN REPLY @119 /*"I see. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @120 /*"I see. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.sea
@122 /*"It's a strange construction, full of aquariums and water towers. Some mage designed it so that the people of the Cage could get fresh fish. But inadvertently, he created hundreds of frames for portals, so it has become a famous nexu..." The man pauses and laughs. "Ha! You almost tricked me into talking about portals, you sneaky bugger. I don't talk about portals." */
END
IF~~THEN REPLY @124 /*"Tell me about the Styx Oarsman. Sounds like a place I might want to visit." */ DO~~ + g-bbD219.styx
IF~~THEN REPLY @125 /*"Tell me about the Suicide Falls." */ DO~~ + g-bbD219.falls
IF~~THEN REPLY @126 /*"I see. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @127 /*"I see. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.sellF
@129 /*The man seems offended. "Sir, this is a storage facility, not a shop." */
END
IF~~THEN REPLY @131 /*"I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @132 /*"I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.sellS
@134 /*The man looks around with shifty eyes and lowers his voice to a whisper.  */
=@135 /*"I have a bag that belonged to a priestess. She left it here a while ago, and I've heard that she's gone missing, so she'll probably never come back for it. For ethical reasons, I cannot open such bags. That would be breaking the trust of a client. But... I could auction it off without knowing what's inside..." */
END
IF~~THEN REPLY @137 /*"A mysterious bag? What could be inside?" */ DO~~ + g-bbD219.box
IF~~THEN REPLY @138 /*"I'm not interested. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @139 /*"I'm not interested and I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.box
@141 /*"Artifacts? Gold? Magic scrolls? You won't know until you open it, but isn't that the most exciting part? I'll part with it for a thousand coppers." */
END
IF~!PartyGoldLT(1000)~THEN REPLY @143 /*"I'll take it." */ DO~SetGlobal("g-storage-auction","GLOBAL",2) TakePartyGold(1000) SetGlobalRandomPlus("g-lootbox","GLOBAL",1,8,0) GiveItemCreate("g-bbi114",Protagonist,1,1,0)~ + g-bbD219.box2
IF~CheckStatGT(Protagonist,19,CHR) !PartyGoldLT(750)~THEN REPLY @144 /*"I can give you 750 coppers. Final offer." */ DO~SetGlobal("g-storage-auction","GLOBAL",2) TakePartyGold(750) SetGlobalRandomPlus("g-lootbox","GLOBAL",1,8,0) GiveItemCreate("g-bbi114",Protagonist,1,1,0)~ + g-bbD219.box2
IF~~THEN REPLY @145 /*"I'm not interested. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @146 /*"I'm not interested and I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.box2
@148 /*"Sold! To the gentleman with tattoos." He reaches to a container behind his back and brings out a bag. He takes the coppers from you, bows, and gives you the bag. "Hope you get something useful." */
END
IF~~THEN REPLY @150 /*"Thanks. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @151 /*"Thanks. I don't have any more questions. I'll be off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD219 g-bbD219.rest
@153 /*"It's not going to be comfortable... but why the Hells not?" */
END
IF~~THEN REPLY @155 /*"Then I will rest right now." */ DO~StartStore("g-bb#009", Protagonist)~ EXIT
IF~~THEN REPLY @156 /*"Thanks. I have another question." */ DO~~ + g-bbD219.q
IF~~THEN REPLY @157 /*"Thanks. I don't have any more questions. I'll be off." */ DO~~ EXIT