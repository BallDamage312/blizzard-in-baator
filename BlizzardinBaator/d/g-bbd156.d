BEGIN g-bbD156
CHAIN IF~NumTimesTalkedTo(0) Global("G-ulfbrandwonraid","GLOBAL",0) !Global("g-trapvictoryloop","GLOBAL",3) Global("G-ulfbrandwonambush","GLOBAL",0)  Global("G-ulfbrandwonagainstus","GLOBAL",0)~THEN g-bbD156 g-bbD156.start1
@0 /*Seated on a stone throne at the far end of the vast hall of the Debt Collection division is a massive, powerful warrior. From a distance, you might think his size is an illusion, but up close, it becomes clear that the man is of unnatural proportions and stands over 10 feet tall. His face is covered by a helmet that reveals only the sides of his head, making it hard to tell whether he is sound asleep behind the metal mask or an alert guardian. In contrast to his hidden face, another part of his body is clearly on display: his gigantic, round belly.  */
=@1 /*"Who comes before Ulfbrand Völgarsson?" The giant speaks in a booming bass voice that is slightly distorted by a metallic echo. He takes his time pronouncing the words, but the way he articulates each syllable clearly indicates that he is not speaking his native language. [g-15605] */
END
IF~~THEN REPLY @3 /*"Greetings. I don't have a name. But I do have some questions." */ DO~SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @4 /*"Greetings. I don't know my name. But I have some questions." */ DO~SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @5 /*Lie: "Greetings. I'm Adahn. I have some questions." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobalOnceEx("LAW","GLOBAL",-1) SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @6 /*Leave while you still can. */ DO~SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.noyoucant
CHAIN IF~NumTimesTalkedToGT(0) Global("G-ulfbrandwonraid","GLOBAL",0) !Global("g-trapvictoryloop","GLOBAL",3) Global("G-ulfbrandwonambush","GLOBAL",0)  Global("G-ulfbrandwonagainstus","GLOBAL",0)~THEN g-bbD156 g-bbD156.start2
@8 /*"What do you want?" He sounds angry, but perhaps it is just his natural tone. Even sitting down, he towers well over you and watches you carefully through the tiny slits in his helmet. */
END
IF~~THEN REPLY @10 /*"I've got questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @11 /*"Just passing through. Farewell." */ DO~~ EXIT
CHAIN IF~AreaCheck("arg-p1") !Global("g-trapvictoryloop","GLOBAL",3) OR(3) GlobalGT("G-ulfbrandwonraid","GLOBAL",0) GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0) GlobalGT("G-ulfbrandwonambush","GLOBAL",0)~THEN g-bbD156 g-bbD156.start3
@13 /*"What do you want, little one?" For a change, Ulfbrand seems to be in a good mood. He is strolling slowly outdoors among the other Fated, savoring an enormous horn of mead and celebrating their recent victory. */
==g-bbd150 IF~NearbyDialog("g-bbd150")~THEN @14 /*His trusty wolf stands close to his master, visibly happy to be outside. */
END
IF~~THEN REPLY @16 /*"I've got questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @17 /*"Just passing through. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.noyoucant
@20 /*"No. Since you're already here, I'll decide whether you can leave," he replies menacingly. "Who are you?" */
END
IF~~THEN REPLY @22 /*"I don't have a name. But I do have some questions." */ DO~SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @23 /*"I don't know my name. But I have some questions." */ DO~SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @24 /*Lie: "I'm Adahn. I have some questions." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobalOnceEx("LAW","GLOBAL",-1) SetGlobal("g-knowulfbrand","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @25 /*"It is for me to decide when and with whom I speak." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD156.quest5
CHAIN IF~~THEN g-bbD156 g-bbD156.questions
@28 /*Ulfbrand is almost motionless, but you are certain he is watching you closely. He waits for your questions. */
==g-bbd156 IF~Global("G-RaidTheaterF","GLOBAL",1)~THEN @29 /*"You ready, little one? We can move out to the theater right now." */
END
IF~Global("G-RaidTheaterF","GLOBAL",1)~THEN REPLY @31 /*"It is time to bring down the Doomguard." ^0xff39bbe1Initiate the raid.^- */ DO~SetGlobal("g-FWRAID","GLOBAL",1)  StartMovie("g-raid") TeleportParty("arg-b1",[800.1024],0) SetGlobal("G-RaidTheaterF","GLOBAL",3)~ EXIT
IF~Global("G-triplerquest","GLOBAL",12) PartyHasItem("g-bbi091")~THEN REPLY @32 /*"I managed to recover the jade skull that was stolen from your faction years ago. I have come to return it." */ DO~~ + g-bbD156.jadeskull
IF~~THEN REPLY @33 /*"I've come to talk about the conflict between the Fated and the Doomguard." */ DO~~ + g-bbD156.factionwar
IF~!Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandwonambush","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1)~THEN REPLY @34 /*Take a closer look at Ulfbrand. */ DO~SetGlobal("g-ulfhilappearance","GLOBAL",1)~ + g-bbD156.appearance
IF~Global("g-ulfhilappearance","GLOBAL",1) Global("G-doomvsfatevsKEY","GLOBAL",1) !Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandwonambush","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1)~THEN REPLY @35 /*"Let's talk about your earring." */ DO~~ + g-bbD156.earring
IF~!Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandwonambush","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1)~THEN REPLY @36 /*"Who are you?" */ DO~~ + g-bbD156.ulfbrand
IF~!Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandwonambush","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1) Global("G-know_jotun","GLOBAL",0)~THEN REPLY @37 /*"I was wondering *what* you actually are?" */ DO~SetGlobal("G-know_jotun","GLOBAL",1)~ + g-bbD156.giant
IF~!Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandwonambush","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1)~THEN REPLY @38 /*"What is this place? Where are we exactly?" */ DO~~ + g-bbD156.ysgard
IF~Class(Protagonist,Mage) !Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandwonambush","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1)~THEN REPLY @39 /*"Why can't I cast spells here?" */ DO~~ + g-bbD156.magic
IF~~THEN REPLY @40 /*"Tell me about the Fated." */ DO~~ + g-bbD156.fated
IF~Class(Protagonist,Fighter) GlobalLT("g-ulftrain","GLOBAL",1)~THEN REPLY @41 /*"Is there any way I can train with you? I'd like to become a stronger warrior." */ DO~~ + g-bbD156.fighter
IF~~THEN REPLY @42 /*"Is that a sauna over there?" */ DO~~ + g-bbD156.sauna
IF~~THEN REPLY @43 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.factionwar
@45 /*"What about it?" */
END
IF~Global("G-RaidTheaterF","GLOBAL",1)~THEN REPLY @47 /*"It is time to bring down the Doomguard." ^0xff39bbe1Initiate the raid.^- */ DO~SetGlobal("g-FWRAID","GLOBAL",1)  StartMovie("g-raid") TeleportParty("arg-b1",[800.1024],0) SetGlobal("G-RaidTheaterF","GLOBAL",3)~ EXIT
IF~GlobalLT("G-doomvsfatevsKEY","GLOBAL",2) !Dead("g-bb017")~THEN REPLY @48 /*"I have come on behalf of the Doomguard to negotiate a peaceful resolution." */ DO~~ + g-bbD156.smallchoice
IF~GlobalGT("G-doomvsfatevsKEY","GLOBAL",5) GlobalLT("G-doomvsfatevsKEY","GLOBAL",9) !Dead("g-bb017")~THEN REPLY @49 /*^0xff39bbe1Side with the Fated.^-^0xff212eff Truth: "I have learned the troupe's location. They're in the theater by the Vertical Sea. We can organize a raid."^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",16) IncrementGlobal("G-FatedPower","GLOBAL",5)~ SOLVED_JOURNAL @20112 + g-bbD156.war16
IF~Global("G-doomvsfatevsKEY","GLOBAL",8) !Dead("g-bb017")~THEN REPLY @50 /*^0xff8c6b69Side with the Doomguard.^-^0xff212eff Lie: "I have learned the troupe's location. They're in a dark alley between the Ditch and The Great Foundry. We can organize a raid."^- */ DO~IncrementGlobalOnceEx("LAW","GLOBAL",-1) SetGlobal("G-doomvsfatevsKEY","GLOBAL",9) IncrementGlobal("G-FatedPower","GLOBAL",-3)~ SOLVED_JOURNAL @20105 + g-bbD156.war9
IF~Dead("g-bb017") !Global("g-raidendedwhendead","GLOBAL",1) Global("G-haerdeadreport","GLOBAL",0) !Global("G-ulfbrandwonraid","GLOBAL",1)  !Global("G-ulfbrandwonagainstus","GLOBAL",1) !Global("G-ulfbrandwonambush","GLOBAL",1) !PartyHasItem("g-bbi135")~THEN REPLY @51 /*"I've come to tell you that Haer'Dalis is dead." */ DO~SetGlobal("G-haerdeadreport","GLOBAL",1)~ + g-bbD156.haerdead
IF~Dead("g-bb017") !Global("g-raidendedwhendead","GLOBAL",1) Global("G-haerdeadreport","GLOBAL",0) Global("G-ulfbrandwonraid","GLOBAL",0) Global("G-ulfbrandwonagainstus","GLOBAL",0) Global("G-ulfbrandwonambush","GLOBAL",0) PartyHasItem("g-bbi135")~THEN REPLY @52 /*Present Haer'Dalis' severed head to Ulfbrand. */ DO~SetGlobal("G-haerdeadreport","GLOBAL",1)~ + g-bbD156.haerdead
IF~Global("G-doomvsfatevsKEY","GLOBAL",12) !PartyHasItem("g-bbi045") !Global("G-raidendedwhendead","GLOBAL",1)~THEN REPLY @53 /*"I know you emerged victorious, but I still want to talk about your earring." */ DO~~ + g-bbD156.earringnegotiator
IF~GlobalGT("G-raidendedwhendead","GLOBAL",0) !PartyHasItem("g-bbi045")~THEN REPLY @54 /*"I know you emerged victorious, but I still want to talk about your earring." */ DO~~ + g-bbD156.earringnegotiator
IF~~THEN REPLY @55 /*"Actually, I have other matters to attend to." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @56 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~Global("G-ulfbrandwonraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) AreaCheck("arg-b2")~THEN g-bbD156 g-bbD156.ulfbrandwonraid
@58 /*Ulfbrand bursts out laughing. "The day is ours!" he shouts, his joy unmistakable as he gives you a quick once-over. A moment later, he slaps his belly with a deafening thud and breaks into laughter again. "I'm in a great mood, so I'll trust you with my earring. I'm counting on you to come back with *the pair*. If you don't, the full force of the Debt Collection division will come down on you. You wouldn't want that, little one." His massive arm reaches toward his ear. */
END
IF~!Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @60 /*Observe. */ DO~~ + g-bbD156.ulfbrandwonraid2
IF~Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @61 /*"Oh. Of course..." */ DO~~ + g-bbD156.ulfbrandwonraid2B
CHAIN IF~~THEN g-bbD156 g-bbD156.ulfbrandwonraid2
@63 /*Ulfbrand carefully removes the earring and places it in your hand, bending down low as he does so. From his perspective, it likely looks as though he is handing something to a small child. "I expect you to return with its missing twin. It is time for us to go. I want to leave this lice-ridden city as soon as possible. You know where to find me, little one." */
END
IF~~THEN REPLY @65 /*"I will be back with the pair, I promise." */ DO~GiveItemCreate("g-bbi045",Protagonist,1,1,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",17) EscapeArea() SetGlobal("G-ulfbrandwonraid","GLOBAL",2) AddexperienceParty(50000) SetGlobal("G-ulfbrandquest","GLOBAL",1)~ SOLVED_JOURNAL @20113 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.ulfbrandwonraid2B
@67 /*For a few seconds, Ulfbrand pats his ear, and his face, barely visible under his heavy helmet, grows increasingly red. */
=@68 /*After a moment, he explodes: "THIS DIRTY CITY! A SECOND EARRING? A SECOND ONE?" The surviving berserkers raise their axes in case their leader turns on them, but his gaze locks onto you. [g-15606] */
=@69 /*"I'm sorry, little one. I have nothing to give you, because this city is verri than Loki. They robbed me again, probably more skítur ratmen. I shouldn't have stopped at the outhouse in the harbor. May Ragnarök consume it all. I'm not *ever* coming back here!" He turns on his heel and starts to walk away. */
END
IF~~THEN REPLY @71 /*"Farewell, then." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",18) EscapeArea() SetGlobal("G-ulfbrandwonraid","GLOBAL",2) AddexperienceParty(50000)~ SOLVED_JOURNAL @20114 EXIT
CHAIN IF~Global("G-ulfbrandwonagainstus","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3)~THEN g-bbD156 g-bbD156.ulfbrandwonraidwelost
@73 /*Ulfbrand approaches you with a brisk stride, his heavy footsteps echoing through the theater. You brace yourself for the worst, but soon notice confusion in the giant's movements, as though his memory and sense of direction have been damaged in the heat of battle. */
=@74 /*The Ysgardian stands motionless in front of you, staring at you, searching the depths of his memory for some information. */
=@75 /*Finally, he lets out a bellowing laugh. "The day is ours," he says as he slaps his belly with an astonishingly loud smack and bursts into laughter once more. "I am in a great mood. I will trust you with my earring. I expect you to return with a pair. If not, the full power of the Debt Collection division shall fall upon you." He reaches for his ear. */
END
IF~!Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @77 /*Observe. */ DO~~ + g-bbD156.1ulfbrandwonraid2
IF~Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @78 /*"Oh. Of course..." */ DO~~ + g-bbD156.1ulfbrandwonraid2B
CHAIN IF~~THEN g-bbD156 g-bbD156.1ulfbrandwonraid2
@80 /*Ulfbrand carefully removes the earring and places it in your hand, bending down low as he does so. From his perspective, it likely looks as though he is handing something to a small child. "I expect you to return with its missing twin. It is time for us to go. I want to leave this lice-ridden city as soon as possible. You know where to find me, little one." */
END
IF~~THEN REPLY @82 /*"I will be back with the pair, I promise." */ DO~GiveItemCreate("g-bbi045",Protagonist,1,1,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",13) EscapeArea() SetGlobal("G-ulfbrandwonagainstus","GLOBAL",2) AddexperienceParty(50000) SetGlobal("G-ulfbrandquest","GLOBAL",1)~ SOLVED_JOURNAL @20109 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.1ulfbrandwonraid2B
@84 /*For a few seconds, Ulfbrand pats his ear, and his face, barely visible under his heavy helmet, grows increasingly red. */
=@85 /*After a moment, he explodes: "THIS DIRTY CITY! A SECOND EARRING? A SECOND ONE?" The surviving berserkers raise their axes in case their leader turns on them, but his gaze locks onto you. [g-15606] */
=@86 /*"I'm sorry, little one. I have nothing to give you, because this city is verri than Loki. They robbed me again, probably more skítur ratmen. I shouldn't have stopped at the outhouse in the harbor. May Ragnarök consume it all. I'm not *ever* coming back here!" He turns on his heel and starts to walk away. */
END
IF~~THEN REPLY @88 /*"Farewell, then." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",18) EscapeArea() SetGlobal("G-ulfbrandwonagainstus","GLOBAL",2) AddexperienceParty(50000)~ SOLVED_JOURNAL @20114 EXIT
CHAIN IF~Global("g-trapvictoryloop","GLOBAL",3)~THEN g-bbD156 g-bbD156.ulfbrandlostbattle
@90 /*In the end, only a handful of the Fated remain alive on the battlefield. Those who were not consumed by decay magic or cut down by entropic swords and axes fled through gaps in the fortifications. The Doomguard keep their distance. Ulfbrand stands exhausted, covered in blood from the battle, breathing heavily. His spirit has not yet been broken. */
==g-bbd156 IF~Global("g-UlfBackstab","GLOBAL",1)~THEN @91 /*He is clutching his left side, still bleeding from the wound caused by your betrayal. */
=@92 /*"Well done, little one. You had me fooled. Well done. I shan't stand down, though." */
END
IF~~THEN REPLY @94 /*"There is no reason to battle. This is no place to die." */ DO~~ + g-bbD156.victory1
IF~~THEN REPLY @95 /*"Come on then, let's finish this." */ DO~ActionOverride(Player1,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player2,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player3,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player4,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player5,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player6,LeaveAreaLUA("arg-d1","",[163.1420],S))  Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
IF~~THEN REPLY @96 /*"It's over, Ulfbrand." */ DO~~ + g-bbD156.victory1
CHAIN IF~~THEN g-bbD156 g-bbD156.victory1
@98 /*"You gotta die someplace. Permanently. This is not a bad place." He speaks calmly, looking around, and then, all of a sudden, lunges toward you with his bare hands clenched into deadly fists. [g-15601] */
END
IF~~THEN REPLY @100 /*Defend yourself. */ DO~ActionOverride(Player1,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player2,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player3,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player4,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player5,LeaveAreaLUA("arg-d1","",[163.1420],S)) ActionOverride(Player6,LeaveAreaLUA("arg-d1","",[163.1420],S))  Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.appearance
@108 /*This massive man is built like a deadly war machine, to say the least. Despite his obvious layers of fat, his raw strength is undeniable. He looks as though he could easily snap a tree trunk in half with his thick arms. Despite his apparent immobility, he exudes an aura of alertness. */
=@109 /*His face is partially obscured by a majestic golden helmet, but his ears are exposed, revealing a large bone earring in his left ear. His right ear, however, is unadorned but clearly pierced, as though a matching earring had been there until recently. */
=@110 /*"You looking at my gut? Yes, you were." [g-15607] */
END
IF~~THEN REPLY @112 /*"I just took a little peek." */ DO~~ + g-bbD156.gut
IF~~THEN REPLY @113 /*"I've got some questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @114 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.gut
@116 /*"I saw you. What are you looking at my gut for?" the giant asks, though there is no irritation in his voice.  */
END
IF~GlobalGT("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @118 /*"I'm interested in your earring." */ DO~~ + g-bbD156.earring
IF~Global("G-know_jotun","GLOBAL",0)~THEN REPLY @119 /*"I was wondering *what* you actually are?" */ DO~SetGlobal("G-know_jotun","GLOBAL",1)~ + g-bbD156.giant
IF~~THEN REPLY @120 /*"I've got some questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @121 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.giant
@123 /*"My ancestors come from Jotunheim. I am a half-giant," he replies with pride, but his expression briefly grows more somber. "Or rather, I *was* a half-giant. I am now one of the einherjar." */
END
IF~~THEN REPLY @125 /*"Who are the einherjar?" */ DO~~ + g-bbD156.einherjar
IF~~THEN REPLY @126 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @127 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.einherjar
@129 /*"An einheri is a petitioner hailing from Ysgard. The word means 'the army of one' or 'he who fights alone.' I am the first among the einherjar, and I am indeed as strong as an entire army. The other petitioners in Ysgard are reborn every morning to plunge back into battle. I, however, *do not die* at all. I only feast, fight, and conquer. In my spare time, I collect debts for the Fated." */
END
IF~~THEN REPLY @131 /*"So you're immortal?" */ DO~~ + g-bbD156.immortal
IF~~THEN REPLY @132 /*"I know what that means. I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @133 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.immortal
@135 /*"Indeed. As long as I am in this corner of Ysgard, *no one* can kill me!" */
END
IF~~THEN REPLY @137 /*"I'm immortal too." */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",2)~ + g-bbD156.immortal2
IF~~THEN REPLY @138 /*"I've got other questions..." */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",2)~ + g-bbD156.questions
IF~~THEN REPLY @139 /*"I'll be going. Farewell." */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.immortal2
@141 /*The half-giant bellows with laughter. "Then you should join the eternal fight and feast with us every night." */
END
IF~~THEN REPLY @143 /*"Where are we?" */ DO~~ + g-bbD156.ysgard
IF~~THEN REPLY @144 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @145 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.ysgard
@147 /*"In Heimdall's divine realm in Ysgard, little one. Of course, our little island is just a tiny fragment of it. We are now in the Debt Collection Division on Rowan Darkwood's private earthberg on the first layer, Asgard. Far below us lies the beautiful city of Himinborg. The Heroic Domains of Ysgard is the best plane in the entire Great Wheel. *Anyone* can be a hero here and cover themselves in glory." */
END
IF~~THEN REPLY @149 /*"What is there to see in Ysgard?" */ DO~~ + g-bbD156.ysgard2
IF~~THEN REPLY @150 /*"Who's Rowan Darkwood?" */ DO~~ + g-bbD156.rowan
IF~Class(Protagonist,Mage)~THEN REPLY @151 /*"Why can't I cast spells here?" */ DO~~ + g-bbD156.magic
IF~~THEN REPLY @152 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @153 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.magic
@155 /*"Ysgard is known for its wild magic, but we do not appreciate that sort of unpredictability. The elven mages of Alfheim have shielded this patch of land from magic. Now, what counts here is real strength!" He flexes a muscle ostentatiously, which somehow shows through the layers of fat. "The last thing we need is a bunch of scrawny spellslingers waving their hands around and mumbling strange words. You have to admit this is more fair, don't you?" */
END
IF~Global("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @157 /*"You know what would be more fair? If you weren't reborn every morning." */ DO~~ + g-bbD156.magic2
IF~~THEN REPLY @158 /*"What is there to see in Ysgard?" */ DO~~ + g-bbD156.ysgard2
IF~~THEN REPLY @159 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @160 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.magic2
@162 /*From the tone of Ulfbrand's voice, you can tell a broad smile is hidden beneath his golden mask. "I'm not the one who makes these rules. But if I were, I wouldn't change a thing." */
END
IF~~THEN REPLY @164 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @165 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.ysgard2
@167 /*Ulfbrand sighs. "A lifetime isn't enough to explore the entire layer. It is beautiful and diverse. Where even to begin..." */
=@168 /*"There is the homeland of the giants, and mine: Jotunheim. Beautiful, icy mountains and an abandoned... algerlega fallegt, the *magnificent* crystal palace of Annam All-Father, the chief god of the jotuns. The palace has stood empty since the fall of Ostoria, Annam's realm in the Prime." */
=@169 /*"Other giants, fiery ones, dwell in Muspelheim. Their mountains flow with burning lava. This is Surtur's realm. I don't recommend visiting it unless you have a good reason." */
=@170 /*"We are in Asgard. The aesir deities, led by Odin, have their halls here. This is where Valhalla is located, among the other buildings of Valaskjalf. It is also here that the einherjar mainly wage their eternal battles. Himinborg, the city below us, is the largest city in the entire layer." */
=@171 /*"The famous Gates of the Moon are nearby, where the goddesses Selûne and Soma reside. You have probably heard of the Infinite Staircase, which leads almost everywhere. That is where it begins." */
=@172 /*"Not far from Asgard lies Vanaheim; you'll recognize it by the flocks of birds in the sky. It is the realm of the vanir gods. While there, be sure to visit the palace of the goddess Freyja, Sessrúmnir, located on the shore of a mighty ocean." */
=@173 /*"There is also the dwarven realm of Nidavellir and the dark elf realm of Svartalfheim. These are underground realms shrouded in darkness, but apparently both contain many wealthy cities." */
=@174 /*"And then there are the elves from Alfheim and their dense, paradise forest..." At the mention of Alfheim, a hint of nostalgia can be detected in his voice. */
=@175 /*"There are just too many places here. I could go on forever." */
END
IF~~THEN REPLY @177 /*"I'm immortal. We have all the time in the world." */ DO~~ + g-bbD156.immortal2
IF~~THEN REPLY @178 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @179 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.rowan
@181 /*"My friend, Rowan Darkwood, is the factol of the Fated. Small in stature, like any other man, but great in his achievements. Originally a nobleman from the Prime, he allowed himself to be banished to the Nine Hells to save his two boys. He never broke under torture. Not even Dispater's kocrachons could break him. When he regained his freedom, he traveled through the planes until he arrived here and began serving under Heimdall. That's when we met, during the campaign against the fire giants." */
=@182 /*"When he settled in Sigil, he joined the Fated. Within a year, he became the factol. Do you understand what that means?" */
END
IF~~THEN REPLY @184 /*"Tell me." */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ + g-bbD156.rowan2
IF~CheckStatGT(Protagonist,16,INT)~THEN REPLY @185 /*"That you got your job through nepotism?" */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ + g-bbD156.rowan2
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @186 /*"That growing legs is becoming a trend among some fish in the Ditch?" */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ + g-bbD156.rowan2
IF~~THEN REPLY @187 /*"He became the leader of the faction?" */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ + g-bbD156.rowan3
CHAIN IF~~THEN g-bbD156 g-bbD156.rowan2
@189 /*Ulfbrand lets out a scornful snort. "He became the leader of a Sigilite faction in just *one year.* That is no small feat." */
END
IF~~THEN REPLY @191 /*"What happened next?" */ DO~~ + g-bbD156.rowan3
IF~~THEN REPLY @192 /*"I think that's enough for me. I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @193 /*"I think that's enough for me. I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.rowan3
@195 /*"He gave other factols like Montgomery the laugh. And now some second-rate actors from the stinking Sinkers are insulting him..." */
END
IF~~THEN REPLY @197 /*"I actually did come to talk about the conflict between the Fated and the Doomguard." */ DO~~ + g-bbD156.factionwar
IF~~THEN REPLY @198 /*"I think that's enough for me. I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @199 /*"I think that's enough for me. I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.fated
@201 /*"Rowan Darkwood's faction. And mine. We believe that might makes right." The giant clenches his massive hand into a fist. "We have a saying: 'What's mine is mine. What's yours is mine too, unless you stop me.' It probably sounds ruthless to a little runt like you, but that's how life is in the planes. If you were able to take me down, then *you* would be sitting on this throne." */
END
IF~GlobalLT("g-fated3","GLOBAL",1)~THEN REPLY @203 /*"I agree. The strongest should make the law. Property should not be a free privilege." */ DO~SetGlobal("g-fated3","GLOBAL",1)
 IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("G-FatedPower","GLOBAL",1)~ + g-bbD156.fated1
IF~GlobalLT("g-fated3","GLOBAL",1)~THEN REPLY @204 /*"I disagree. We can't think only about ourselves and our property. There are those who are unable to fight for themselves, but that doesn't deprive them of their rights." */ DO~SetGlobal("g-fated3","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("G-FatedPower","GLOBAL",-1)~ + g-bbD156.fated2
IF~Global("G-knowRowan","GLOBAL",0)~THEN REPLY @205 /*"Who's Rowan Darkwood?" */ DO~~ + g-bbD156.rowan
IF~~THEN REPLY @206 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @207 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.fated1
@209 /*"So you already think like one of us. I am not a recruiter, though." */
END
IF~Global("G-knowRowan","GLOBAL",0)~THEN REPLY @211 /*"You've mentioned Rowan Darkwood." */ DO~~ + g-bbD156.rowan
IF~~THEN REPLY @212 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @213 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.fated2
@215 /*"So you're not one of the strong. Too bad. When you start giving away all your treasures to the weak, they will one day rise up against you. Then you'll remember our doctrine." */
END
IF~Global("G-knowRowan","GLOBAL",0)~THEN REPLY @217 /*"You've mentioned Rowan Darkwood." */ DO~~ + g-bbD156.rowan
IF~~THEN REPLY @218 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @219 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.sauna
@221 /*"Indeed. I go there myself every day. We have the best sauna masters and aromas that even the Sensates envy us for, mainly because we usually do not let them in." The giant lets out a quiet, malicious laugh. "But you do not have to ask me for permission. Talk to one of the sauna masters." */
END
IF~~THEN REPLY @223 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @224 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.ulfbrand
@226 /*"My name is Ulfbrand Völgarsson Baunaætari. Battle Wolf. My companion, Sharikira, reflects my given name. Among the Fated, I am the jarl of the Debt Collection Division of the Hall of Records." */
END
IF~~THEN REPLY @228 /*"I've got other questions..." */ DO~SetGlobal("g-knowsharikira","GLOBAL",1)
~ + g-bbD156.questions
IF~~THEN REPLY @229 /*"I'll be going. Farewell." */ DO~SetGlobal("g-knowsharikira","GLOBAL",1)
~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.fighter
@231 /*"Train with my bersërkers? Aren't there any real warriors left in Sigil, little one?" Ulfbrand bursts out laughing, and several other amused Ysgardians in the hall join in. "You know we don't offer anything for free around here, and certainly not training with elite cutters... Put up the copper and we'll talk. Ten thousand, or forget it." */
END
IF~!PartyGoldLT(10000)~THEN REPLY @233 /*"Sure. Help me become stronger." */ DO~TakePartyGold(10000) FadeToColor([20.0],0) Wait(7) AdvanceTime(6) FadeFromColor([20.0],0) PermanentStatChange(Protagonist,STR,RAISE,2) PermanentStatChange(Protagonist,RESISTCRUSHING,RAISE,20) AddexperienceParty(200000) 
SetGlobal("g-ulftrain","GLOBAL",1) IncrementGlobal("G-FatedPower","GLOBAL",1)~ + g-bbD156.train
IF~~THEN REPLY @234 /*"Ah. In that case, I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @235 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.train
@237 /*The next six hours are perhaps the most intense marathon of training and combat anyone has ever endured across the entire planes. Several times, as you are being tossed about by the surrounding berserkers, you get the sense that this is no longer training and that they have turned against you and are about to tear you to shreds. However, with each successive blow from a fist or a hammer, the pain seems to lessen, and after each fall, you get back to your feet more quickly. In addition to physical training, the experience teaches you to anticipate your opponents' moves and use your resources more wisely. By the end, you are completely exhausted. */
END
IF~~THEN REPLY @239 /*"It was... great... I'm going to head out now. I think I need to get some rest." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring
@241 /*"Don't piss me off, stranger, or I'll set Sharikira on you. You're not the only one interested in it. I had a *second* one, but... they stole it from me. Berks." He taps the remaining earring with his thick finger as if it were not obvious what he is referring to. It is a simple piece of bone with a wire for hanging and basic decorations. It is not the most beautiful piece of jewelry, but judging by the tone of Ulfbrand's voice, there is no doubt that it is very important to him. */
=@242 /*"These are the bones of one of my ancestors from Jotunheim. A family heirloom passed down from generation to generation, a reminder of my heritage. They belonged to me in life, but I've recovered them... I don't remember how it happened. There are a few songs about it, but each one tells a different story." */
END
IF~~THEN REPLY @244 /*"Someone stole an earring out of your ear? How did this even happen?" */ DO~SetGlobal("g-knowsharikira","GLOBAL",1)
~ + g-bbD156.earring1
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",0) CheckStatGT(Protagonist,13,INT) Global("g-HeritageLogic","GLOBAL",0) ~THEN REPLY @245 /*"If it was passed from generation to generation, did you not deny that heritage to your offspring by taking it back after death?" */ DO~~ + g-bbD156.earring2
IF~~THEN REPLY @246 /*"I've got other questions..." */ DO~SetGlobal("g-knowsharikira","GLOBAL",1)
~ + g-bbD156.questions
IF~~THEN REPLY @247 /*"I'll be going. Farewell." */ DO~SetGlobal("g-knowsharikira","GLOBAL",1)
~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring1
@249 /*Ulfbrand pauses for a moment, and his voice drops an octave, taking on a hint of embarrassment. "I do not know how it happened. But it was in that stinking City of Doors." */
END
IF~~THEN REPLY @251 /*"I'll be honest... I need to borrow your second earring." */ DO~~ + g-bbD156.earring3
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",0) CheckStatGT(Protagonist,13,INT) Global("g-HeritageLogic","GLOBAL",0) ~THEN REPLY @252 /*"If it was passed from generation to generation, did you not deny that heritage to your offspring by taking it back after death?" */ DO~~ + g-bbD156.earring2
IF~~THEN REPLY @253 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @254 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring2
@256 /*"I have no offspring, squirt. I am the last of my line. The earrings are mine." */
END
IF~GlobalGT("Deaths_Adv","GLOBAL",0) Global("g-HeritageLogic","GLOBAL",0) ~THEN REPLY @258 /*"In the Civic Festhall, I listened to a lecture on this topic. Petitioners lose their memories of their lives before death. Maybe you simply do not remember having any children. How long ago did you become a petitioner? How large could your 'temporal empire' actually be?" */ DO~AddexperienceParty(60000) SetGlobal("g-HeritageLogic","GLOBAL",1) IncrementGlobal("G-FatedPower","GLOBAL",-2)~ + g-bbD156.earring2a
IF~~THEN REPLY @259 /*"I will be honest... I need to borrow your second earring." */ DO~~ + g-bbD156.earring3
IF~~THEN REPLY @260 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @261 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring2a
@263 /*"I... don't know. But I will learn." */
END
IF~~THEN REPLY @265 /*"I will be honest... I need to borrow your second earring." */ DO~~ + g-bbD156.earring3
IF~~THEN REPLY @266 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @267 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring3
@269 /*"Not a chance. Why? What do you need it for?" Ulfbrand leans over you suspiciously. */
END
IF~~THEN REPLY @271 /*"It can be used as a key to a portal I must travel through." */ DO~~ + g-bbD156.earring4a
IF~~THEN REPLY @272 /*"I'd like to keep my reasons to myself." */ DO~~ + g-bbD156.earring4c
IF~~THEN REPLY @273 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @274 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring4a
@276 /*"Interesting. It must be important to you if you dare to ask *me* for my heirloom. But it doesn't matter. I don't really care about your reasons, because I'm not going to give it up." */
END
IF~~THEN REPLY @278 /*"There must be some way to convince you." */ DO~SetGlobal("g-EarringPressure","GLOBAL",1)
~ + g-bbD156.earring5
IF~~THEN REPLY @279 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @280 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring4c
@282 /*"You certainly won't get it arguing like that," the giant laughs. "But it doesn't matter. I don't really care about your reasons, because I'm not going to give it up." */
END
IF~~THEN REPLY @284 /*"There must be some way to convince you." */ DO~SetGlobal("g-EarringPressure","GLOBAL",1)
~ + g-bbD156.earring5
IF~~THEN REPLY @285 /*"I've got other questions..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @286 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earring5
@288 /*"It is my *heritage,* berk. I'm not giving it up." */
END
IF~~THEN REPLY @290 /*"I've got other questions then..." */ DO~~ + g-bbD156.questions
IF~~THEN REPLY @291 /*"I'll be going. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.smallchoice
@294 /*"Oh yeah? So what is their offer?" Ulfbrand straightens in the chair, his interest piqued. */
END
IF~~THEN REPLY @296 /*"They're calling for a ceasefire. There's no point in spilling blood." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",2)~ SOLVED_JOURNAL @20098 + g-bbD156.cont
IF~~THEN REPLY @297 /*"They say you can't punish someone for something that hasn't happened. All this persecution is baseless." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",2)~ SOLVED_JOURNAL @20098 + g-bbD156.cont
IF~~THEN REPLY @298 /*"Artists shouldn't be persecuted for their art. Art exists precisely to provoke." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",2)~ SOLVED_JOURNAL @20098 + g-bbD156.cont
IF~~THEN REPLY @299 /*"I was sent to ask for peace... But I think I'd rather make a deal with you than with them, Ulfbrand." */ DO~~ + g-bbD156.bigchoice
IF~Global("g-UlfbrandSecret","GLOBAL",3)~THEN REPLY @300 /*"Your faction is losing influence in Sigil, and your invincibility will soon come to an end. Spare yourself the humiliation and give up on politics. Return to Valhalla and be a warrior. Be reborn every morning to face an endless glorious battle, as your ancestors did. That is your destiny." */ DO~~ + g-bbD156.actualpeace
CHAIN IF~~THEN g-bbD156 g-bbD156.cont
@302 /*Ulfbrand bursts out laughing without holding back, and his ringing laughter echoes throughout the hall. "None other than the *Norns* have prophesied that a play will soon premiere in which Haer'Dalis will portray Duke Darkwood, spreading harmful lies about him and destroying his reputation. Urd, Verdandi, and Skuld are never wrong. For the *intent* alone, he must die. This is non-negotiable." He turns toward the shrine at the side of the hall as if to prove the Norns' infallibility. */
END
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @304 /*"It was me. I was the one who suggested this play. Punish me instead of the troupe." */ DO~~ + g-bbD156.quest5
IF~~THEN REPLY @305 /*"Non-negotiable? So what now?" */ DO~~ + g-bbD156.bigchoice
IF~Class(Protagonist,Thief) Global("g-ulfhilappearance","GLOBAL",1) !Global("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @306 /*You see an opportunity. Try to steal the earring. */ DO~~ + g-bbD156.theft1
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) Global("g-ulfhilappearance","GLOBAL",1) !Global("G-doomvsfatevsKEY","GLOBAL",0)~THEN REPLY @307 /*You see an opportunity and signal to Annah to try to steal the earring. */ DO~~ + g-bbD156.theft2
IF~~THEN REPLY @308 /*"I was told to use force if you refused a truce..." */ DO~~ + g-bbD156.quest5
CHAIN IF~~THEN g-bbD156 g-bbD156.contalt2
@310 /*Ulfbrand directs his eyes back at you and repeats: "Non-negotiable. That's right." */
END
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @312 /*"It was me. I was the one who suggested this play. Punish me instead of the troupe." */ DO~~ + g-bbD156.quest5
IF~~THEN REPLY @313 /*"So what now?" */ DO~~ + g-bbD156.bigchoice
IF~~THEN REPLY @314 /*"I was told to use force if you refused a truce..." */ DO~~ + g-bbD156.quest5
CHAIN IF~~THEN g-bbD156 g-bbD156.actualpeace
@316 /*The giant blinks beneath his magnificent golden helmet. His once overwhelming presence inexplicably fades, and suddenly all you see before you is simply an aging, overweight man. "You speak the truth, little one. I long for true glory, for there is none in a battle you cannot lose. You are also right that it is time for me to go. My only regret is the loss of one of my earrings in that stinking city." */
END
IF~~THEN REPLY @318 /*"I would like to help you reunite your heirlooms. While you are preparing to step down, lend me your remaining earring. I can use it to find the other one and return with the complete pair." */ DO~~ + g-bbD156.actualpeace2
CHAIN IF~~THEN g-bbD156 g-bbD156.actualpeace2
@320 /*Ulfbrand is silent for a moment, weighing your words. He sighs deeply and fixes his gaze on the ceiling, as if avoiding eye contact, while removing the bone earring from his left ear. "I agree. It pains me to part with it, but I feel it will land in trustworthy hands. I will wait here for your return, and the actors have nothing to fear from me. Duke Darkwood will likely find out about this soon and send someone else, so let them make wise use of this moment of peace." */
END
IF~~THEN REPLY @322 /*"Thank you for your trust, Ulfbrand. I'll tell them the news and go find your other earring. Farewell." */ DO~GiveItemCreate("g-bbi045",Protagonist,1,1,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",3) GiveExperience(Protagonist,20000) SetGlobal("G-ulfbrandquest","GLOBAL",1)~ SOLVED_JOURNAL @20099 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.bigchoice
@324 /*"Ah, so now you stand in front of a choice. You may work for me instead, or you may die. Give me the location of where the troupe hides, so me and my men can raid it and bathe it in blood." */
END
IF~~THEN REPLY @326 /*^0xff8c6b69Side with Doomguard.^-^0xff212eff "I was told to use force if peace was not an option, and I will do so."^- */ DO~~ + g-bbD156.quest5
IF~~THEN REPLY @327 /*^0xff8c6b69Side with Doomguard.^-^0xff212eff Lie: "I will do you one better. There is no need to risk an open battle under the Lady's eye. I will bring you the actor's head myself."^- */ DO~IncrementGlobalOnceEx("LAW","GLOBAL",-1) SetGlobal("G-doomvsfatevsKEY","GLOBAL",7)
IncrementGlobal("G-FatedPower","GLOBAL",-1)~ SOLVED_JOURNAL @20103 + g-bbD156.war7
IF~~THEN REPLY @328 /*^0xff39bbe1Side with Fated.^-^0xff212eff Truth: "I will do you one better. There is no need to risk an open battle under the Lady's eye. I will bring you the actor's head myself."^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",15) IncrementGlobal("G-FatedPower","GLOBAL",3)~ SOLVED_JOURNAL @20111 + g-bbD156.war7
IF~~THEN REPLY @329 /*^0xff39bbe1Side with Fated.^-^0xff212eff Truth: "They are hiding in the theater by the Vertical Sea. We can raid them easily."^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",16) IncrementGlobal("G-FatedPower","GLOBAL",5)~ SOLVED_JOURNAL @20112 + g-bbD156.war16
IF~~THEN REPLY @330 /*^0xff8c6b69Side with Doomguard.^-^0xff212eff Lie: "I guess I have no choice. I do not know where they are now, but they trust me enough to take me there. I will return with the location."^- */ DO~IncrementGlobalOnceEx("LAW","GLOBAL",-1) SetGlobal("G-doomvsfatevsKEY","GLOBAL",6)
IncrementGlobal("G-FatedPower","GLOBAL",-2)~ SOLVED_JOURNAL @20102 + g-bbD156.war7
CHAIN IF~~THEN g-bbD156 g-bbD156.war7
@332 /*"A fine decision. Go now and make me proud of your actions, my new soldier. Disappoint me, and you will feel the wrath of the entire Debt Collection Division and my own," Ulfbrand says in a confident tone. [g-15608] */
END
IF~!PartyHasItem("g-bbi045")~THEN REPLY @334 /*"One thing before I go. If I prove my worth here, will you lend me your earring? I can use it to find the other one and reunite them, then bring them back to you." */ DO~~ + g-bbD156.earringyes
IF~PartyHasItem("g-bbi045")~THEN REPLY @335 /*"I shall not fail. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earringyes
@337 /*Ulfbrand considers your words for a moment, scratching his belly. "Intriguing. Let's see how you handle this, little one. Maybe..." */
END
IF~~THEN REPLY @339 /*"I shall not fail. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.war16
@341 /*"A fine decision, squirt. Then I shall start preparing my men." [g-15608] */
=@342 /*Ulfbrand barks out a few short orders to the Ysgardians in the room in a language you do not understand, and a few of them rush outside. */
=@343 /*He then turns back to you. "The Fated owe you. Of course you're coming with us. I've got a few things to take care of right now. Get ready and come back soon. We're going to make Sigil remember the slaughter in this circus shack forever." */
END
IF~~THEN REPLY @345 /*"Right. I'll be back soon." */ DO~SetGlobal("G-RaidTheaterF","GLOBAL",1)~ EXIT
IF~~THEN REPLY @346 /*"Why wait? Let's go right now." */ DO~SetGlobal("g-FWRAID","GLOBAL",1)  StartMovie("g-raid") TeleportParty("arg-b1",[800.1024],0) SetGlobal("G-RaidTheaterF","GLOBAL",3)~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.war9
@348 /*"A fine decision, squirt. Then I shall start preparing my men." [g-15608] */
=@349 /*Ulfbrand barks out a few short orders to the Ysgardians in the room in a language you do not understand, and a few of them rush outside. */
=@350 /*He then turns back to you. "You! Make yourself useful too. Take these parchments and write letters to your allies. We're going to make Sigil remember the slaughter in that alleyway forever." */
END
IF~~THEN REPLY @352 /*"Will do. Farewell."  ^N(Use the "Call to Battle" item in your inventory to trigger the ambush.)^- */ DO~GiveItemCreate("g-bbi057",Protagonist,0,0,0) GiveItemCreate("CPENCIL",Protagonist,0,0,0) SetGlobal("G-RaidAlleyDG","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.earringnegotiator
@354 /*Slightly shaken, Ulfbrand squints as he scans your face. "Ah, it is you. I thought I saw you in the heat of battle. Which side were you fighting on, little one?" he asks, but before you can answer, he bursts into hearty laughter. */
=@355 /*"What am I even asking... you stand before me, alive! You must have been on our side. What is this about?" */
END
IF~~THEN REPLY @357 /*"I need to borrow your prized earring, factor Ulfbrand. I know a way to get the second one back, but I need this one to find it." */ DO~~ + g-bbD156.earringnegotiator1
CHAIN IF~~THEN g-bbD156 g-bbD156.earringnegotiator1
@359 /*Ulfbrand sizes you up for a moment, slaps his flabby belly with an incredibly loud smack, and once again bursts out laughing. "The day is ours, little one. I'm in a great mood, so I'll trust you with my earring. I'm counting on you to come back with *the pair*. If you don't, the full force of the Debt Collection division will come down on you. You wouldn't want that, little one." His massive arm reaches toward his ear. */
END
IF~~THEN REPLY @361 /*"I will be back with the pair, I promise." */ DO~GiveItemCreate("g-bbi045",Protagonist,1,1,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",13) AddexperienceParty(50000) SetGlobal("G-ulfbrandquest","GLOBAL",1)~ SOLVED_JOURNAL @20109 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.quest5
@363 /*"So, you will die too." [g-15609] */
END
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @365 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand while in Ysgard)^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",5) Help() Enemy() Attack(Protagonist)~ SOLVED_JOURNAL @20106 EXIT
IF~!GlobalGT("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @366 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",5) Help() Enemy() Attack(Protagonist)~ SOLVED_JOURNAL @20104 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead
@368 /*You get the feeling that something elusive has changed somewhere in the distance. As if, by your actions, you have altered the course of history, which was supposed to unfold differently.  */
==g-bbd156 IF~!PartyHasItem("g-bbi135")~THEN @369 /*Ulfbrand must have already heard the news, because he does not doubt it for a moment. "Yes..." He takes a long moment to gather his thoughts before saying anything more. "Perhaps it really was a somewhat trivial reason to hunt down an actor." */
==g-bbd156 IF~PartyHasItem("g-bbi135")~THEN @370 /*Ulfbrand takes a long look at the bloody offering you brought before him and pauses for a moment to gather his thoughts before speaking. "Perhaps it really was a somewhat trivial reason to hunt down an actor." */
END
IF~GlobalLT("g-gtaysgard","GLOBAL",1) !PartyHasItem("g-bbi045")~THEN REPLY @372 /*"It was. But there's no point in dwelling on it now." */ DO~SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead1
IF~GlobalLT("g-gtaysgard","GLOBAL",1) !PartyHasItem("g-bbi045")~THEN REPLY @373 /*Say nothing. */ DO~SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead1
IF~GlobalLT("g-gtaysgard","GLOBAL",1) !PartyHasItem("g-bbi045")~THEN REPLY @374 /*"I'm not interested in your after-the-fact dilemmas right now. What about my reward?" */ DO~SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead2
IF~GlobalLT("g-gtaysgard","GLOBAL",1) !PartyHasItem("g-bbi045")~THEN REPLY @375 /*"The actor brought this upon himself by offending those more powerful than himself." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead3
IF~GlobalLT("g-gtaysgard","GLOBAL",1) PartyHasItem("g-bbi045")~THEN REPLY @376 /*"It was. But there's no point in dwelling on it now." */ DO~SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead1er
IF~GlobalLT("g-gtaysgard","GLOBAL",1) PartyHasItem("g-bbi045")~THEN REPLY @377 /*Say nothing. */ DO~SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead1er
IF~GlobalLT("g-gtaysgard","GLOBAL",1) PartyHasItem("g-bbi045")~THEN REPLY @378 /*"I'm not interested in your after-the-fact dilemmas right now. What about my reward?" */ DO~SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead2er
IF~GlobalLT("g-gtaysgard","GLOBAL",1) PartyHasItem("g-bbi045")~THEN REPLY @379 /*"The actor brought this upon himself by offending those more powerful than himself." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-ulfend","GLOBAL",1)~ + g-bbD156.haerdead3er
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead1
@381 /*"Well, the important thing is that the fight was good. As requested, I will let you borrow my earring." He takes it from his ear. "I will hold you to your word that you will return with the matching pair, because if you do not, the wrath of the Debt Collection Division will fall upon you. Here is your payment for your help." Ulfbrand holds out his hand, and a nearby Ysgarian immediately places a bundle in it, which the giant promptly hands over to you. "Inside are valuables and a few trinkets. You can also stay with us as long as you like. Eat, have fun, use the sauna, but remember your new mission." */
END
IF~~THEN REPLY @383 /*"Thank you. I'll be back." */ DO~~ + g-bbD156.reward
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead2
@385 /*"Why are you such a hothead? As requested, I will let you borrow my earring." He takes it from his ear. "I will hold you to your word that you will return with the matching pair, because if you do not, the wrath of the Debt Collection Division will fall upon you. Here is your payment for your help." Ulfbrand holds out his hand, and a nearby Ysgarian immediately places a bundle in it, which the giant promptly hands over to you. "Inside are valuables and a few trinkets. You can also stay with us as long as you like. Eat, have fun, use the sauna, but remember your new mission." */
END
IF~~THEN REPLY @387 /*"Thank you. I'll be back." */ DO~~ + g-bbD156.reward
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead3
@389 /*Ulfbrand frowns and looks at you carefully. He seems more aware than before that he has made a grave mistake. "As requested, I will let you borrow my earring." He takes it from his ear. "I will hold you to your word that you will return with the matching pair, because if you do not, the wrath of the Debt Collection Division will fall upon you.  */
END
IF~~THEN REPLY @391 /*"I'll be back. Farewell." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",22)~ SOLVED_JOURNAL @20118 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.reward
@393 /*Inside the bundle, you find a pile of copper coins, weapons, a vial containing some kind of liquid, and a few magical scrolls that would be of little use to Ulfbrand. Most importantly, however, you are clutching a bone earring in your hand, the key to the portal to Cania. */
END
IF~~THEN REPLY @395 /*Leave. */ DO~GivePartyGold(5000) GiveItemCreate("g-bbi045",Protagonist,0,0,0) GiveItemCreate("SPWI601",Protagonist,0,0,0) GiveItemCreate("g-bbi037",Protagonist,0,0,0) GiveItemCreate("g-bbi027",Protagonist,0,0,0) GiveItemCreate("g-bbi060",Protagonist,0,0,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",22) AddexperienceParty(50000)~ SOLVED_JOURNAL @20118 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead1er
@397 /*"Well. The important thing is that the fight was good. Here is your payment for your help." Ulfbrand holds out his hand, and a nearby Ysgarian immediately places a bundle in it, which the giant promptly hands over to you. "Inside are valuables and a few trinkets. You can also stay with us as long as you like. Eat, have fun, and use the sauna." */
END
IF~~THEN REPLY @399 /*"Thank you. Farewell." */ DO~ DestroyPartyItem("g-bbbi135",1)~ + g-bbD156.rewarder
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead2er
@401 /*"Why are you such a hothead? Here is your payment for your help." Ulfbrand holds out his hand, and a nearby Ysgarian immediately places a bundle in it, which the giant promptly hands over to you. "Inside are valuables and a few trinkets. You can also stay with us as long as you like. Eat, have fun, and use the sauna." */
END
IF~~THEN REPLY @403 /*"Thank you. Farewell." */ DO~ DestroyPartyItem("g-bbbi135",1)~ + g-bbD156.rewarder
CHAIN IF~~THEN g-bbD156 g-bbD156.haerdead3er
@405 /*Ulfbrand frowns and looks at you carefully. He seems more aware than before that he has made a grave mistake. "You have our thanks. Now leave while you still have your life." */
END
IF~~THEN REPLY @407 /*"Farewell." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",23)  DestroyPartyItem("g-bbbi135",1)~ SOLVED_JOURNAL @20119 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.rewarder
@409 /*Inside the bundle, you find a pile of copper coins, weapons, a vial containing some kind of liquid, and a few magical scrolls that would be of little use to Ulfbrand. */
END
IF~~THEN REPLY @411 /*Leave. */ DO~GivePartyGold(5000) AddexperienceParty(50000) GiveItemCreate("SPWI601",Protagonist,0,0,0) GiveItemCreate("g-bbi037",Protagonist,0,0,0) GiveItemCreate("g-bbi027",Protagonist,0,0,0) GiveItemCreate("g-bbi060",Protagonist,0,0,0 ) SetGlobal("G-doomvsfatevsKEY","GLOBAL",23)~ SOLVED_JOURNAL @20119 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.theft1
@413 /*Ulfbrand is now looking toward the shrine. His flank is clear, and no one is watching. It might be possible. Perhaps you could steal the earring in the next few seconds. It would pose a challenge even to the best thieves across the planes, but... */
END
IF~CheckStat(Protagonist,25,DEX)~THEN REPLY @415 /*Steal the earring. */ DO~GiveItemCreate("g-bbi045",Protagonist,1,1,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",4) SetGlobal("G-ulfbrandrobbed","GLOBAL",1) AddexperienceParty(50000)~ SOLVED_JOURNAL @20100 + g-bbD156.contalt2
IF~CheckStatLT(Protagonist,25,DEX)~THEN REPLY @416 /*Try to steal the earring... */ DO~~ + g-bbD156.theftfail1
IF~~THEN REPLY @417 /*Give up. This is too risky. */ DO~~ + g-bbD156.contalt2
CHAIN IF~~THEN g-bbD156 g-bbD156.theft2
@419 /*Ulfbrand is now looking toward the shrine. His flank is clear, and no one is watching. It might be possible. Perhaps Annah could steal the earring in the next few seconds. It would pose a challenge even to the best thieves across the planes, but... */
END
IF~CheckStat("Annah",24,DEX)~THEN REPLY @421 /*Signal her to steal the earring. */ DO~GiveItemCreate("g-bbi045","Annah",0,0,0) SetGlobal("G-doomvsfatevsKEY","GLOBAL",4) SetGlobal("G-ulfbrandrobbed","GLOBAL",1) AddexperienceParty(50000)~ SOLVED_JOURNAL @20100 + g-bbD156.contalt2
IF~CheckStatLT("Annah",24,DEX)~THEN REPLY @422 /*Signal her to try to steal the earring... */ DO~~ + g-bbD156.theftfail2
IF~~THEN REPLY @423 /*Signal her to stand down. This is too risky. */ DO~~ + g-bbD156.contalt2
CHAIN IF~~THEN g-bbD156 g-bbD156.theftfail1
@425 /*Your hand barely reaches that high. You have to stand on your tiptoes and brace yourself against Ulfbrand's throne. You can already feel the rough, bony texture beneath your fingers, but suddenly the giant's head turns toward you. You were just not agile enough, and your would-be target rises and calmly declares, "You will die." [NAM108C] */
END
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @427 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand while in Ysgard)^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",5) Help() Enemy() Attack(Protagonist)~ SOLVED_JOURNAL @20106 EXIT
IF~!GlobalGT("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @428 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",5) Help() Enemy() Attack(Protagonist)~ SOLVED_JOURNAL @20104 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.theftfail2
~~ ==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @430 /*While you are distracting Ulfbrand, Annah sneaks up behind him. She stands on her tiptoes and discreetly reaches up. She has almost got the earring in her nimble hands when the giant suddenly turns his head toward her. She was not nimble enough. "Not this time..." [ANA555A] */
==g-bbd156 @431 /*Your would-be target rises and calmly declares: "You will both die." */
END
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @433 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand while in Ysgard)^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",5) Help() Enemy() Attack(Protagonist)~ SOLVED_JOURNAL @20106 EXIT
IF~!GlobalGT("g-UlfbrandSecret","GLOBAL",1)~THEN REPLY @434 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",5) Help() Enemy() Attack(Protagonist)~ SOLVED_JOURNAL @20104 EXIT
CHAIN IF~~THEN g-bbD156 g-bbD156.jadeskull
@436 /*Visibly taken aback, Ulfbrand freezes for a second, then leans toward you. "Are you serious, little one? After all these years? And you're just giving it back to us like that?" */
END
IF~~THEN REPLY @438 /*"Yes. The skull belongs to you. Justice demands that I return it to you." */ DO~DestroyPartyItem("g-bbi091",0) SetGlobalRandomPlus("g-jadereward","GLOBAL",1,4,0) SetGlobal("G-triplerquest","GLOBAL",16) IncrementGlobal("LAW","GLOBAL",5)~ SOLVED_JOURNAL @20265 + g-bbD156.jadereward
IF~~THEN REPLY @439 /*"I'm giving it back, sure, but of course I will expect payment. Finders keepers, and so on." */ DO~DestroyPartyItem("g-bbi091",0) SetGlobal("G-triplerquest","GLOBAL",16)~ SOLVED_JOURNAL @20265 + g-bbD156.jadepay
CHAIN IF~~THEN g-bbD156 g-bbD156.jadereward
@441 /*The giant slaps his belly loudly in an unusual gesture of joy. "This is unreasonable. But who am I to refuse such a wonderful gift?" */
=@442 /*He takes the small skull in his huge hand and gazes at it with admiration, then sighs deeply. "I suppose I should return the favor. It is far more valuable to us than you can imagine." He turns his head and roars into the hall: "Jørn! Bring one of our *good* axes!" */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",1)~THEN @443 /*A moment later, a stocky blond man with a scruffy beard bursts out of the back rooms, brandishing a magical battleaxe and leaving a trail of smoke in his wake. The axe feels really hot to the touch. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",2)~THEN @444 /*A moment later, a stocky blond man with a scruffy beard runs out of the back rooms, wielding a magical battleaxe. His breath is visible in the air as he approaches. The axe feels really cold to the touch. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",3)~THEN @445 /*A moment later, a stocky blond man with a scruffy beard runs out from the back rooms, brandishing a magical battleaxe. He holds it in one hand and covers his nose with the other. The axe gives off a decidedly unpleasant odor. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",4)~THEN @446 /*A moment later, a stocky blond man runs out from the back rooms, brandishing a magical battleaxe. All of his hair on his head and face are standing, straightened out by electric energy visibly radiating from the weapon. When he hands the axe to Ulfbrand, his hair slowly returns to normal. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",1)~THEN @447 /*"This is a fine axe, deeply rooted in our culture and given as a reward for the most accomplished warriors. You will be honored to have one yourself." Ulfbrand places the battle axe in your hands. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",2)~THEN @448 /*"This is a fine axe, deeply rooted in our culture and given as a reward for the most accomplished warriors. You will be honored to have one yourself." Ulfbrand places the battle axe in your hands. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",3)~THEN @449 /*"Well, Jørn. You certainly chose a perfect gift..." He turns back to you. "Do not get discouraged by the smell. You get used to it, and the axe is very powerful." Ulfbrand places the battle axe in your hands. */
==g-bbd156 IF~Global("G-jadereward","GLOBAL",4)~THEN @450 /*"This is a magnificent, truly ancient, indestructible battleaxe from the Elemental Plane of Air," Ulfbrand says as he hands the battleaxe to you. "This weapon was used during the raids on the Abyss nearly *a million* years ago. We have quite a few of these in our collection. Thousands were forged. Still, it is a great weapon." */
END
IF~Global("G-jadereward","GLOBAL",1)~THEN REPLY @452 /*Accept the battleaxe. */ DO~AddexperienceParty(100000) GiveItemCreate("g-bbi101",Protagonist,1,1,0)~ + g-bbD156.jadefinal
IF~Global("G-jadereward","GLOBAL",2)~THEN REPLY @453 /*Accept the battleaxe. */ DO~AddexperienceParty(100000) GiveItemCreate("g-bbi102",Protagonist,1,1,0)~ + g-bbD156.jadefinal
IF~Global("G-jadereward","GLOBAL",3)~THEN REPLY @454 /*Accept the battleaxe. */ DO~AddexperienceParty(100000) GiveItemCreate("g-bbi103",Protagonist,1,1,0)~ + g-bbD156.jadefinal
IF~Global("G-jadereward","GLOBAL",4)~THEN REPLY @455 /*Accept the battleaxe. */ DO~AddexperienceParty(100000) GiveItemCreate("g-bbi104",Protagonist,1,1,0)~ + g-bbD156.jadefinal
CHAIN IF~~THEN g-bbD156 g-bbD156.jadepay
@457 /*"I would not expect anything else. We can pay handsomely for it." The giant takes the small skull in his huge hand and gazes at it with admiration, then sighs deeply. "It is much more valuable to us than you can imagine." He turns his head and roars into the hall: "Jørn! Bring some coins for the little one!" */
=@458 /*A moment later, a stocky blond man with a scruffy beard rushes out from the back rooms, clutching a sack filled with jingling coins. He hands it to you immediately. */
END
IF~~THEN REPLY @460 /*"Thank you." */ DO~AddexperienceParty(10000) GiveGoldForce(20000)~ + g-bbD156.jadefinal
IF~~THEN REPLY @461 /*Accept the coppers. */ DO~AddexperienceParty(10000) GiveGoldForce(20000)~ + g-bbD156.jadefinal
CHAIN IF~~THEN g-bbD156 g-bbD156.jadefinal
@463 /*"Many thanks, little one." He hands the jade skull to Jørn and gives him hurried instructions in a language you cannot understand. As the burly man walks away, he turns to you. "Do you need anything else?" */
END
IF~~THEN REPLY @465 /*"I've got other questions..." */ DO~SetGlobal("G-ysgardadam","GLOBAL",1)~ + g-bbD156.questions
IF~~THEN REPLY @466 /*"I'll be going. Farewell." */ DO~SetGlobal("G-ysgardadam","GLOBAL",1)~ EXIT