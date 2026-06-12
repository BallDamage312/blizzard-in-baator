BEGIN g-bbD181
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD181 g-bbD181.start
@0 /*You see a well-dressed man, obviously out of place. His attire is halfway between a robe and some kind of a smart garment, and it stands out a like sore thumb among the raw, natural style of the earthberg. He is leaning back slightly, arms placed on his hips and eyes closed, as if meditating. As you approach, he jumps a bit, opening his eyes and turning to face you. "Oh, you startled me, stranger." Upon a closer look at you, he adds: "And startling me still. What are you?" */
END
IF~~THEN REPLY @2 /*"What kind of a 'hello' is that?" */ DO~SetGlobal("knowTasslewick","GLOBAL",1)~ + g-bbD181.scold
IF~~THEN REPLY @3 /*"What are *you*?" */ DO~SetGlobal("knowTasslewick","GLOBAL",1)~ + g-bbD181.scold2
IF~~THEN REPLY @4 /*"I think I was a human." */ DO~SetGlobal("knowTasslewick","GLOBAL",1)~ + g-bbD181.human
IF~~THEN REPLY @5 /*"I am... leaving. Farewell." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("knowTasslewick","GLOBAL",1)~THEN g-bbD181 g-bbD181.start2
@7 /*Tasslewick Drohm is still enjoying the clean, mountain air of Ysgard. This time, he notices you much more quickly. "You are back! How can I help you?" */
END
IF~~THEN REPLY @9 /*"I have some questions." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @10 /*"I was just checking on you. I'll be on my way." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) NumTimesTalkedToLT(6) Global("knowTasslewick","GLOBAL",0)~THEN g-bbD181 g-bbD181.start3
@12 /*The man is still enjoying the clean, mountain air of Ysgard. This time, he notices you much more quickly. "You are back! And I still don't know who you are. How can I help you?" */
END
IF~~THEN REPLY @14 /*"I think we got off on the wrong foot. Don't you?" */ DO~~ + g-bbD181.reknow
IF~~THEN REPLY @15 /*"I was just checking on you. You're still a twat. I'll be on my way." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(5) Global("knowTasslewick","GLOBAL",0)~THEN g-bbD181 g-bbD181.start4
@17 /*"Alright, alright. I get it," the man yells. He then bows down and announces loudly: "Good day, sir. My name is Tasslewick Drohm. I work for the Census Archive at the Hall of Records. And who might *you* be, fine gentleman?" */
END
IF~~THEN REPLY @19 /*"That's better! However... I don't know my name..." */ DO~SetGlobal("G-knowTasslewick","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD181.name
IF~~THEN REPLY @20 /*Lie: "That's better! I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-knowTasslewick","GLOBAL",1) AddexperienceParty(10000)~ + g-bbD181.adahn
CHAIN IF~~THEN g-bbD181 g-bbD181.scold
@22 /*"Oh, my bad." The man bows down and announces: "Good day, sir. My name is Tasslewick Drohm. I work for the Census Archive at the Hall of Records. And who might *you* be, fine gentleman?" */
END
IF~~THEN REPLY @24 /*"That's better! However... I don't know my name..." */ DO~~ + g-bbD181.name
IF~~THEN REPLY @25 /*Lie: "That's better! I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-knowTasslewick","GLOBAL",1)~ + g-bbD181.adahn
CHAIN IF~~THEN g-bbD181 g-bbD181.scold2
@27 /*"Excuse me?" The man blinks in surprise. "I am Tasslewick Drohm. I work for the Census Archive at the Hall of Records, but... ah... I see. I apologize if I was rude, it's my work speaking through me, I reckon. And you, fine gentleman? Who might you be?" */
END
IF~~THEN REPLY @29 /*"That's better! However... I don't know my name..." */ DO~~ + g-bbD181.name
IF~~THEN REPLY @30 /*Lie: "That's better! I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.adahn
CHAIN IF~~THEN g-bbD181 g-bbD181.human
@32 /*"Interesting. And what happened to you, if I may ask? You barely look human, no offense intended." */
END
IF~~THEN REPLY @34 /*"I don't really remember." */ DO~~ + g-bbD181.namealt
IF~~THEN REPLY @35 /*Joke: "I briefly dated a night hag." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.hagjoke
CHAIN IF~~THEN g-bbD181 g-bbD181.hagjoke
@37 /*The man coughs in surprise. "That's... *cough* umm... quite extraordinary..." He composes himself after a moment, but the expression of shock still lingers. "I am Tasslewick Drohm. I work for the Census Archive at the Hall of Records. And who might *you* be, fine gentleman?" */
END
IF~~THEN REPLY @39 /*"I don't know my name..." */ DO~~ + g-bbD181.name
IF~~THEN REPLY @40 /*Lie: "I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.adahn
CHAIN IF~~THEN g-bbD181 g-bbD181.reknow
@42 /*"Yes. I suppose so. I guess it is my fault." The man bows down and announces: "Good day, sir. My name is Tasslewick Drohm. I work for the Census Archive at the Hall of Records. And who might *you* be?" */
END
IF~~THEN REPLY @44 /*"I don't know my name..." */ DO~~ + g-bbD181.name
IF~~THEN REPLY @45 /*Lie: "I am Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.adahn
CHAIN IF~~THEN g-bbD181 g-bbD181.namealt
@47 /*"Oh. Amnesia? It just so happens that I work for the Census Archive at the Hall of Records. I can look up your information. Are you a citizen of Sigil?" He seems revitalized by the prospect. "Ah, where are my manners! Tasslewick Drohm, at your service." */
END
IF~~THEN REPLY @49 /*"I don't think that you'll find much... but I do have some questions." */ DO~~ + g-bbD181.q
CHAIN IF~~THEN g-bbD181 g-bbD181.name
@51 /*"Oh. Amnesia? Is this why you came to me? So I can look up records of you? Are you a citizen of Sigil?" He seems revitalized by the prospect. */
END
IF~~THEN REPLY @53 /*"I don't think that you'll find much... but I do have some questions." */ DO~~ + g-bbD181.q
CHAIN IF~~THEN g-bbD181 g-bbD181.adahn
@55 /*"Well, hello Adahn. How can I help you?" */
END
IF~~THEN REPLY @57 /*"I have some questions for you, Tasslewick." */ DO~~ + g-bbD181.q
CHAIN IF~~THEN g-bbD181 g-bbD181.q
@59 /*"Go ahead and ask." Tasslewick seems pleased with the concept of providing information. */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",1)~THEN REPLY @61 /*"Tell me more about yourself." */ DO~~ + g-bbD181.self
IF~Global("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @62 /*"You work for the Hall of Records? Do you know about any frost giants in Sigil?" */ DO~~ + g-bbD181.quest
IF~~THEN REPLY @63 /*"What are you doing here in Ysgard?" */ DO~~ + g-bbD181.ysgard
IF~!Global("g-TassleGuest","GLOBAL",1) !Global("g-TassleMember","GLOBAL",1)~THEN REPLY @64 /*"Are you a member of the Fated faction?" */ DO~~ + g-bbD181.fated
IF~Global("g-TassleGuest","GLOBAL",1)~THEN REPLY @65 /*"Can you tell me more about the Fated faction again?" */ DO~~ + g-bbD181.fatedalt
IF~Global("g-TassleMember","GLOBAL",1)~THEN REPLY @66 /*"Can we talk about our faction?" */ DO~~ + g-bbD181.fatedlie
IF~!Global("g-TassleMember","GLOBAL",1)~THEN REPLY @67 /*"Can you tell me about the Hall of Records?" */ DO~~ + g-bbD181.records
IF~Global("g-TassleMember","GLOBAL",1)~THEN REPLY @68 /*"Can you tell me about the Hall of Records?" */ DO~~ + g-bbD181.recordsalt
IF~Global("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @69 /*"Can you tell me about Ulfbrand?" */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",1)~ + g-bbD181.ulfbrand
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @70 /*"Can you tell me about Ulfbrand?" */ DO~~ + g-bbD181.ulfbrand
IF~~THEN REPLY @71 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.ysgard
@73 /*"Well, isn't it obvious?" He takes a deep breath. "Breathe in. Can you not tell the striking difference from even the best smelling places in The Cage? My tower is surrounded by gardens, and it's located in Clerk's Ward, pretty clean compared to the other Wards, and the air there is still not even remotely as fresh as here." */
=@74 /*"Members of the Fated faction are free to travel here, or to Himinborg without a proper reason. Himinborg is a place of commerce and its portal is right in the Hall of Records proper, so more of my peers go to relax there... but I prefer it up here. The views are much nicer." He looks over the edge at the other, much larger earthbergs gently floating in space, many of them covered in scenic mountains and thick forests." */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @76 /*"You work for the Hall of Records? Do you know about any frost giants in Sigil?" */ DO~~ + g-bbD181.quest
IF~~THEN REPLY @77 /*"What is this place, exactly?" */ DO~~ + g-bbD181.summerhouse
IF~~THEN REPLY @78 /*"What's Himinborg?" */ DO~~ + g-bbD181.himinborg
IF~~THEN REPLY @79 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @80 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.summerhouse
@82 /*"This is sort of... " He stops to think, as if looking for the proper word. "... a summerhouse for our factol, Duke Darkwood. It's a nice place, out of the way of the crowds and the trouble. It also serves as the headquarters of the Debt Collections Department, with Baunaætari at the helm." */
END
IF~~THEN REPLY @84 /*"What's Himinborg?" */ DO~~ + g-bbD181.himinborg
IF~~THEN REPLY @85 /*"Baunaætari?" */ DO~SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD181.preulfbrand
IF~~THEN REPLY @86 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @87 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.himinborg
@89 /*"Himinborg is a city in Asgard. A bustling, lively port and the divine realm of Heimdall, our factol's patron." He points down, over the edge. "It's below us. The Fated have a very large hall in the city. The one behind us is much more humble in comparison." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @90 /*"I heard of Himinborg. It's a place where mortals and their gods can find themselves drinking at a tavern together. I always wondered if such familiarity of the objects of your worship diminish their potency." */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @92 /*"You work for the Hall of Records? Do you know about any frost giants in Sigil?" */ DO~~ + g-bbD181.quest
IF~~THEN REPLY @93 /*"What is this place, exactly?" */ DO~~ + g-bbD181.summerhouse
IF~~THEN REPLY @94 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @95 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fated
@97 /*"Well. Yes, of course. Are you... not? I rarely see people from outside the faction up here." He suddenly gets a little bit uneasy at the realization. */
END
IF~Global("g-knowulfbrand1","GLOBAL",1)~THEN REPLY @99 /*"No, I'm a guest. I talked to Ulfbrand" */ DO~SetGlobal("g-TassleGuest","GLOBAL",1)~ + g-bbD181.guestU
IF~!Global("g-knowulfbrand1","GLOBAL",1)~THEN REPLY @100 /*"No, I'm a guest." */ DO~SetGlobal("g-TassleGuest","GLOBAL",1)~ + g-bbD181.guest
IF~CheckStatGT(Protagonist,12,CHR)~THEN REPLY @101 /*Lie. "Oh, of course. I just never met you, is all." */ DO~SetGlobal("g-TassleMember","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.impersonateS
IF~!CheckStatGT(Protagonist,12,CHR)~THEN REPLY @102 /*Lie. "Oh, of course. I just never met you, is all." */ DO~SetGlobal("g-TassleGuest","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.impersonateF
IF~~THEN REPLY @103 /*"Why did you join the Fated?" */ DO~~ + g-bbD181.fated2
IF~~THEN REPLY @104 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @105 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.guest
@107 /*"Oh. That is unusual. You should go talk to Ulfbrand then. Announce your arrival." */
END
IF~~THEN REPLY @109 /*"I will. Can you tell me why you joined the Fated?" */ DO~~ + g-bbD181.fated2
IF~~THEN REPLY @110 /*"I will. I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @111 /*"I will. I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.guestU
@113 /*"Oh. That 's okay then..." He seems relieved. */
END
IF~~THEN REPLY @115 /*"Why did you join the Fated?" */ DO~~ + g-bbD181.fated2
IF~~THEN REPLY @116 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @117 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.impersonateS
@119 /*"Oh. Great. Always happy to meet other faction members!" He seems relieved. */
END
IF~~THEN REPLY @121 /*"Why did you join the Fated?" */ DO~~ + g-bbD181.fated2
IF~~THEN REPLY @122 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @123 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.impersonateF
@125 /*"I don't think you are... It is fine, you don't have to hide. It is not illegal to be here... just unusual." */
END
IF~~THEN REPLY @127 /*"I see. Why did you join the Fated?" */ DO~~ + g-bbD181.fated2
IF~~THEN REPLY @128 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @129 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fatedalt
@131 /*"Sure. What else do you wish to know?" */
END
IF~~THEN REPLY @133 /*"Why did you join the Fated?" */ DO~~ + g-bbD181.fated2
IF~~THEN REPLY @134 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @135 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fatedlie
@137 /*"Always! What's on your mind?" */
END
IF~~THEN REPLY @139 /*"Why did you join the Fated?" */ DO~~ + g-bbD181.fated2
IF~Global("g-TassleMember","GLOBAL",1) !Global("g-TassleDoubt","GLOBAL",1) ~THEN REPLY @140 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~~ + g-bbD181.fated3
IF~Global("g-TassleMember","GLOBAL",1) Global("g-TassleDoubt","GLOBAL",1) !Global("g-TassleQuit","GLOBAL",1) ~THEN REPLY @141 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~IncrementGlobal("g-FatedPower","GLOBAL",-2) SetGlobal("g-TassleQuit","GLOBAL",1) AddexperienceParty(12000)~ + g-bbD181.fateddone
IF~~THEN REPLY @142 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @143 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fated2
@145 /*"Hmm." Tasslewick seems to need to think for a second. "Well, I used to be a member of the Fraternity of Order. I always liked arranging documents and keeping track of things. The Fated do pretty much the same... but pay a lot better. So, here I am!"  */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @146 /*"Function: Sorting; is among the most satisfying in terms of EFFORT to EFFECT ratio. Conclusion: Reaction to; sorting; estimated within *parameters*." */
END
IF~Global("g-TassleDoubt","GLOBAL",0)  ~THEN REPLY @148 /*"It's good to have order. You're doing important things." */ DO~SetGlobal("g-TassleDoubt","GLOBAL",2) IncrementGlobal("g-FatedPower","GLOBAL",1)~ + g-bbD181.fated8
IF~Global("g-TassleDoubt","GLOBAL",0)  ~THEN REPLY @149 /*"So it's... greed?" */ DO~~ + g-bbD181.fated4
IF~Global("g-TassleMember","GLOBAL",1) !Global("g-TassleDoubt","GLOBAL",1) ~THEN REPLY @150 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~~ + g-bbD181.fated3
IF~Global("g-TassleMember","GLOBAL",1) Global("g-TassleDoubt","GLOBAL",1) !Global("g-TassleQuit","GLOBAL",1) ~THEN REPLY @151 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~IncrementGlobal("g-FatedPower","GLOBAL",-2) SetGlobal("g-TassleQuit","GLOBAL",1) AddexperienceParty(12000)~ + g-bbD181.fateddone
IF~~THEN REPLY @152 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @153 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fated4
@155 /*"Yes... if you think about it... That's the Fated main motivation, so I am right at home, paradoxically." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @156 /*"Ugh. Rich lice-ridden dogs." */
END
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @158 /*"That barely sounds like philosophy, more like... forcing different people into the same mold thanks to a single, common feature: the need for survival." */ DO~IncrementGlobal("g-FatedPower","GLOBAL",-1) SetGlobal("g-TassleDoubt","GLOBAL",1) AddexperienceParty(7000)~ + g-bbD181.fated5
IF~Global("g-TassleMember","GLOBAL",1) !Global("g-TassleDoubt","GLOBAL",1) ~THEN REPLY @159 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~~ + g-bbD181.fated3
IF~Global("g-TassleMember","GLOBAL",1) Global("g-TassleDoubt","GLOBAL",1) !Global("g-TassleQuit","GLOBAL",1) ~THEN REPLY @160 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~IncrementGlobal("g-FatedPower","GLOBAL",-2) SetGlobal("g-TassleQuit","GLOBAL",1) AddexperienceParty(12000)~ + g-bbD181.fateddone
IF~~THEN REPLY @161 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @162 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fated5
@164 /*"It's... well. It's not *NOT* true..." Tasslewick seems a bit lost in thought. */
END
IF~Global("g-TassleMember","GLOBAL",1) !Global("g-TassleDoubt","GLOBAL",1) ~THEN REPLY @166 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~~ + g-bbD181.fated3
IF~Global("g-TassleMember","GLOBAL",1) Global("g-TassleDoubt","GLOBAL",1) !Global("g-TassleQuit","GLOBAL",1) ~THEN REPLY @167 /*"Just between us, I hate this faction. Aren't we all just selfish berks?" */ DO~IncrementGlobal("g-FatedPower","GLOBAL",-2) SetGlobal("g-TassleQuit","GLOBAL",1) AddexperienceParty(12000)~ + g-bbD181.fateddone
IF~~THEN REPLY @168 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @169 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fated3
@171 /*"No, of course not! How can you say this?" he whispers, strongly and indignantly.  */
END
IF~~THEN REPLY @173 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @174 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fated8
@176 /*Tasslewick smiles. He clearly needed to hear this.  */
END
IF~~THEN REPLY @178 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @179 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.fateddone
@181 /*The man hangs his head in shame. "Gods, yes. We certainly are... What have I done with my life? When I get back to the office, I will pack my things... and make some pamphlets too. I know at least a couple cutters who would see that..." Tasslewick seems miserable but also somewhat happy to discover a newfound purpose in life. */
END
IF~~THEN REPLY @183 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @184 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.records
@186 /*"The Hall of Records is of course the headquarters of my faction. It's a complex made out of six towers, the largest being of course the actual Hall of Records. I work in one of the smaller ones, The Census Archive, where we keep track of the population in Sigil. An interesting fact about the complex is that it used to be a magical university a couple centuries ago - Bigby's College of Academic Arts - but the Fated took it over and turned it into a base of operation for the benefit of the city. There also used to be seven towers, but the old Library was sold off for a hefty profit right after the takeover." */
END
IF~Global("G-keyquest","GLOBAL",2)~THEN REPLY @188 /*"You keep track of the population? Do you know about any frost giants in Sigil?" */ DO~~ + g-bbD181.quest
IF~ Global("g-TassleDoubt","GLOBAL",0) CheckStatGT(Protagonist,13,INT)~THEN REPLY @189 /*"I really can't see how shutting down a university can be 'for the benefit of the city.'" */ DO~~ + g-bbD181.education
IF~~THEN REPLY @190 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @191 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.education
@193 /*"Well... it was necessary that we have the proper offices to run our administrative processes. Taxation is important, it funds most of the services here in Sigil..." Tasslewick says, his confidence wavering. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @194 /*"As a teacher, I find this quite upsetting." */
END
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @196 /*"Services like... education? Which you took away from the people of Sigil? Were there no alternative locations in the whole city?" */ DO~IncrementGlobal("g-FatedPower","GLOBAL",-1) SetGlobal("g-TassleDoubt","GLOBAL",1) AddexperienceParty(7000)~ + g-bbD181.education2
IF~~THEN REPLY @197 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @198 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.education2
@200 /*"This one was cheap, because it was co-owned, the factol must have..." He pauses. "I... don't know..." He looks gripped by a sudden realization of the futility of following this line of thought. */
END
IF~~THEN REPLY @202 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @203 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.recordsalt
@205 /*"Do you mean the history of the place? Surely, as a member, you know what it is at the moment... Well then, the complex used to be a magical university a couple centuries ago - Bigby's College of Academic Arts, but the Fated took it over and turned it into a base of operations for the benefit of the city. There were seven towers back then, but the old Library was sold off for a hefty profit right after the takeover." */
END
IF~ Global("g-TassleDoubt","GLOBAL",0) CheckStatGT(Protagonist,13,INT)~THEN REPLY @207 /*"I really can't see how shutting down a university can be 'for the benefit of the city.'" */ DO~~ + g-bbD181.education
IF~~THEN REPLY @208 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @209 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.ulfbrand
@211 /*"Ulfbrand Völgarsson Baunaætari is a high-standing officer of the Fated. He is an einheri, a kind of Ysgardian petitioner. Duke Rowan uses him mostly for debt recovery, as he is large and quite terrifying. He is especially effective here, in Asgard, as he cannot be killed." */
END
IF~~THEN REPLY @213 /*"Let me get one thing straight: he will be revived after dying or can he not be killed at all?" */ DO~~ + g-bbD181.ulfbrandkill
IF~~THEN REPLY @214 /*"But outside Asgard, he should be fallible?" */ DO~~ + g-bbD181.ulfbrandsigil
IF~~THEN REPLY @215 /*"Do you know about his quest to kill an actor?" */ DO~~ + g-bbD181.heardalis
IF~Global("G-TassleEarring","GLOBAL",1)~THEN REPLY @216 /*"Can you tell me about his earrings?" */ DO~~ + g-bbD181.earringsre
IF~~THEN REPLY @217 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @218 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.ulfbrandkill
@220 /*"You know, I am not sure. I have never seen him destroyed, so it's likely that he has some additional protections beyond his abilities as a petitioner." Tasslewick ponders for a moment, tapping his foot on the grass. "I have no clue what that would be, though." */
END
IF~~THEN REPLY @222 /*"But outside Asgard, he should be fallible?" */ DO~SetGlobal("G-TassleEarring","GLOBAL",1)~ + g-bbD181.ulfbrandsigil
IF~~THEN REPLY @223 /*"Do you know about his quest to kill an actor?" */ DO~~ + g-bbD181.heardalis
IF~Global("G-TassleEarring","GLOBAL",1)~THEN REPLY @224 /*"Can you tell me about his earrings?" */ DO~~ + g-bbD181.earringsre
IF~~THEN REPLY @225 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @226 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.ulfbrandsigil
@228 /*"All points to... yes. He will be unlikely to leave for... let's say... Sigil. Last time he was there, someone stole one of his prized earrings." */
END
IF~~THEN REPLY @230 /*"Let me get one thing straight: he will be revived after dying or can he not be killed at all?" */ DO~~ + g-bbD181.ulfbrandkill
IF~~THEN REPLY @231 /*"Do you know about his quest to kill an actor?" */ DO~~ + g-bbD181.heardalis
IF~Global("G-TassleEarring","GLOBAL",1)~THEN REPLY @232 /*"Can you tell me about his earrings?" */ DO~~ + g-bbD181.earringsre
IF~~THEN REPLY @233 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @234 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.heardalis
@236 /*Tasslewick seems a bit put off by this question. "I..." he laughs nervously, "I do not deal with debt collection. I merely work in the Census Archive. If you wish to talk about his business, he is inside." */
END
IF~~THEN REPLY @238 /*"Let me get one thing straight: he will be revived after dying or can he not be killed at all?" */ DO~~ + g-bbD181.ulfbrandkill
IF~~THEN REPLY @239 /*"But outside Asgard, he should be fallible?" */ DO~~ + g-bbD181.ulfbrandsigil
IF~Global("G-TassleEarring","GLOBAL",1)~THEN REPLY @240 /*"Can you tell me again about his earrings?" */ DO~~ + g-bbD181.earringsre
IF~~THEN REPLY @241 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @242 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.earringsre
@244 /*"His prized earrings... well *an* earring now... are very famous. They are actual belongings of the original, living Ulfbrand. His connection to his lineage was so strong, that he managed to keep some memories about them and seek them out. They are supposedly made out of bones of his frost giant ancestor. A petitioner retrieving belongings from his past life is a rare and admirable deed." */
END
IF~GlobalGT("G-BBmain","GLOBAL",6)~THEN REPLY @246 /*"So someone stole one of the earrings?" */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD181.thieves
IF~~THEN REPLY @247 /*"The earrings are made out of frost giant bone?" */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",1)~ + g-bbD181.frostgiantbone
IF~~THEN REPLY @248 /*"Let me get one thing straight: he will be revived after dying or can he not be killed at all?" */ DO~~ + g-bbD181.ulfbrandkill
IF~~THEN REPLY @249 /*"But outside Asgard, he should be fallible?" */ DO~~ + g-bbD181.ulfbrandsigil
IF~~THEN REPLY @250 /*"Do you know about his quest to kill an actor?" */ DO~~ + g-bbD181.heardalis
IF~~THEN REPLY @251 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @252 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.preulfbrand
@254 /*"Ulfbrand Völgarsson Baunaætari, big guy in the chair." He points towards the only building on this earthberg. */
END
IF~Global("g-knowulfbrand","GLOBAL",1)~THEN REPLY @256 /*"Can you tell me more about this Ulfbrand?" */ DO~~ + g-bbD181.ulfbrand
IF~~THEN REPLY @257 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @258 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.thieves
@260 /*"Yes, in Sigil. He claims he doesn't remember how it happened." */
==g-bbd006 @261 /*There is a whisper from the depths of your inventory. "Prod bets the earring was stolen by the same rats who robbed the oarsman, and that's how they got *blasted* with cold!" */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @263 /*"The earrings are made out of frost giant bone?" */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",1) ActionOverride("g-bb006",DestroySelf())~ + g-bbD181.frostgiantbone
IF~~THEN REPLY @264 /*"Let me get one thing straight: he will be revived after dying or can he not be killed at all?" */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD181.ulfbrandkill
IF~~THEN REPLY @265 /*"But outside Asgard, he should be fallible?" */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD181.ulfbrandsigil
IF~~THEN REPLY @266 /*"Do you know about his quest to kill an actor?" */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD181.heardalis
IF~~THEN REPLY @268 /*"I have another question." */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD181.q
IF~~THEN REPLY @269 /*"I have no more questions. Farewell." */ DO~ActionOverride("g-bb006",DestroySelf())~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.frostgiantbone
@271 /*"Well, he claims as much, but yes, it appears so. Is it important?" Tassleknot perks up with a sudden interest. */
END
IF~~THEN REPLY @273 /*"I was looking for a frost giant. Their bones are a key to a portal I need opened." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",1)~ + g-bbD181.portal
IF~~THEN REPLY @274 /*"Maybe, I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @275 /*"Maybe, I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.quest
@277 /*"Oh. There are not many of those with permanent residence. There's Bærgson Dunn, but he's traveled to Pandemonium to heed some winter goddess' call. There's Hluti Skærjang... well... was. She fell in love with a dark elf and moved to a prime material. And of course there is our own Brigitte Gunnarsmoon, a historian from the Hall, but she is also out, visiting an aunt in Jotunheim. So... currently no permanent frost giants in Sigil. Why do you ask?" */
END
IF~~THEN REPLY @279 /*"I need one's help. Their bones are a key to a portal I need opened." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",1)~ + g-bbD181.portal
IF~~THEN REPLY @280 /*"Never mind, I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @281 /*"Never mind, I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.portal
@283 /*"Oh. Interesting." He pauses for a moment before shyly continuing: "Did you mean to ask one to come open it, or... were you hoping to extract a piece of bone out of their body?" */
END
IF~~THEN REPLY @285 /*Truth: "Oh, of course I wanted them to help. I'm not a butcher." */ DO~~ + g-bbD181.good
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @286 /*Lie: "Oh, of course I wanted them to help. I'm not a butcher." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.good
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @287 /*Lie: "Oh, of course I wanted them to help. I'm not a butcher." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.bad
IF~~THEN REPLY @288 /*Truth: "Frost giants are way too big to carry around, and probably have a lot of bones they don't really need, right?" */ DO~~ + g-bbD181.bad
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @289 /*Lie: "Frost giants are way too big to carry around, and probably have a lot of bones they don't really need, right?" */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.bad
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @290 /*Lie: "Frost giants are way too big to carry around, and probably have a lot of bones they don't really need, right?" */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD181.joke
IF~~THEN REPLY @291 /*"Never mind, I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @292 /*"Never mind, I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.good
@294 /*"Of course." Tasslewick smiles. "What was I thinking? Well, there are no frost giants in Sigil at the moment, but Ulfbrand's earring is certainly a frost giant bone. He probably wouldn't part with it though..." */
END
IF~~THEN REPLY @296 /*"Then I better talk to him about it. In the meantime, I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @297 /*"Then I better talk to him about it. I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.bad
@299 /*Tasslewick laughs nervously, visibly happy to *not* be a frost giant. "Well, there are no frost giants in Sigil at the moment, but Ulfbrand's earring is certainly a frost giant bone. He probably wouldn't part with it though..." */
END
IF~~THEN REPLY @301 /*"Then I better talk to him about it. In the meantime, I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @302 /*"Then I better talk to him about it. I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.joke
@304 /*Tasslewick laughs nervously, unsure of your intentions. "Well, there are no frost giants in Sigil at the moment, but Ulfbrand's earring is certainly a frost giant bone. He probably wouldn't part with it though..." */
END
IF~~THEN REPLY @306 /*"Then I better talk to him about it. In the meantime, I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @307 /*"Then I better talk to him about it. I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.self
@309 /*"Me? I am just a... clerk, enjoying fresh air. There is nothing about me that could be interesting." */
END
IF~CheckStatGT(Protagonist,15,WIS) Global("G-TasslleSights","GLOBAL",0)~THEN REPLY @311 /*"You're standing on a flying rock in the realm of the gods, discussing life with a man who looks like he'd been dead for a century. Do you not think your life is interesting?" */ DO~SetGlobal("G-TasslleSights","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD181.sel2
IF~~THEN REPLY @313 /*"I have another question." */ DO~~ + g-bbD181.q
IF~~THEN REPLY @314 /*"I have no more questions. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.sel2
@316 /*Tasslewick does not say anything. He breathes in and takes a step towards the edge. The view in front of him is astonishing, and he seems to be trying to see it, as if it is the first time ever it has become visible to his mortal eyes. The high winds create visible waves in the fir canopies of the massive forests covering the sloped surfaces in front of you. You, too, are captured in the moment and stand there, alongside Tasslewick, in silence. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @317 /*The skull floats in the air, his expressive eyes, tracing the large birds piercing the sky in the distance. He does not say anything, even when the silence is prolonged. It is unusual for him. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @318 /*The tiefling seems intent, at first, to use this opportunity to steal the man's purse, but the charm of such an awesome sight is not lost, even on a child of hideous streets and shacks. She likes the waterfalls, you think. There is simply no comparison between their natural purity and the putrid stench of the Ditch she grew up with. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @319 /*The succubus was long captivated by the view before Tasslewick started admiring it anew. What memories and experiences from her rich and mysterious past did it conjure? Her beautiful face holds the delicate smile of deeper understanding.  */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @320 /*The githzerai stands to the side, enveloped more in apparent longing than awe. Could it be that Ysgard's floating earthbergs remind him a bit too much of his home realm, a neighboring plane in the grand order of things. He is most focused on the clouds collapsing into the mountains and dispersing into complex streams. Perhaps, in them he sees the chaos matter of his home.  */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @321 /*The armor stands motionless. His head is not even facing the landscape. He is watching you. Just you. */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @322 /*The wizard floats as usual, his face covered in flames. He has directed himself towards the view, but it is impossible to tell what he is thinking. You swear you can hear a whisper from his direction that just repeats *"Burn it.... burn it...."* but it may simply be the hypnotic sound produced by the the flames enveloping him.  */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @323 /*Nordom seems to study the terrain and run some errant calculations, disturbing the silence with his usual whirs and clicks. What is he calculating? Gravity, perhaps? Figuring it out for this scenery would likely take a lot more than what even a fully functioning quadrone can do. */
==g-bbd181 @324 /*"Thank you," he says, after a couple minutes. "I guess I have more than I thought I did. I don't have much to give in thanks, but take this book... at least." */
END
IF~~THEN REPLY @326 /*"Thanks. I have another question." */ DO~AddexperienceParty(10000) ActionOverride("g-bb181",GiveItem("g-bbi020",Protagonist) )~ + g-bbD181.q
IF~~THEN REPLY @327 /*"I have no more questions. Farewell." */ DO~AddexperienceParty(10000) ActionOverride("g-bb181",GiveItem("g-bbi020",Protagonist) )~ EXIT
CHAIN IF~~THEN g-bbD181 g-bbD181.sel2b
@329 /*Tasslewick does not say anything.  */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @330 /*"He did not mean that, dear Tasslewick!" Fall-from-Grace cuts in and holds his hand. She then turns to you with a stone cold neutral expression: "He is clearly out of his mind." */
==g-bbd181 @331 /*"I think you should go." */
END
IF~~THEN REPLY @333 /*"But wait, I have another question." */ DO~EscapeArea() IncrementGlobal("g-FatedPower","GLOBAL",1)~ EXIT
IF~~THEN REPLY @334 /*"Farewell." */ DO~EscapeArea() IncrementGlobal("g-FatedPower","GLOBAL",1)~ EXIT