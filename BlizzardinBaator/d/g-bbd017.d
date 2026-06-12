BEGIN g-bbD017
CHAIN IF~ActuallyInCombat() !Global("G-ulfbrandlostraid","GLOBAL",1) !Global("g-trapvictoryloop","GLOBAL",3) ~THEN g-bbD017 g-bbD017.combatdial
@0 /*"Now? Now you want to talk, phoenix?" */
EXIT
CHAIN IF~NumTimesTalkedTo(0) !Global("G-doomvsfatevsKEY","GLOBAL",10) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandlostraid","GLOBAL",1)~THEN g-bbD017 g-bbD017.start1
@3 /*You see a long-haired, extravagantly dressed tiefling. He has long ears adorned with numerous earrings. His long, decorated braids cascade over his leather armor. He has marks on his face and two short swords on both the left and right sides of his belt. On his back he has a case with an oblong instrument the length of a butcher's knife. */
=@4 /*"Ah! Behold! Isn't that my friendly phoenix, the scarred hand of fate? And he's decided to pass through the gates of our wonderful theater! Welcome!" */
END
IF~~THEN REPLY @6 /*"Do we know each other?" */ DO~SetGlobal("G-knowhaer","GLOBAL",1)~ + g-bbD017.know1
IF~CheckStatGT(Protagonist,14,CHR)~THEN REPLY @7 /*"Of course it's me. I always come back." */ DO~~ + g-bbD017.know2
IF~CheckStatLT(Protagonist,12,INT)~THEN REPLY @8 /*"A phoenix? Where?" */ DO~SetGlobal("G-knowhaer","GLOBAL",1)~ + g-bbD017.phoenix
IF~GlobalLT("Good","GLOBAL",1) CheckStatLT(Protagonist,12,INT)~THEN REPLY @9 /*"You won't distract me. I'd use your swords. Die." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-3) IncrementGlobal("LAW","GLOBAL",-3) SetGlobal("G-knowhaer","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) !Global("G-doomvsfatevsKEY","GLOBAL",8) !Global("g-trapvictoryloop","GLOBAL",3) !Global("G-ulfbrandlostraid","GLOBAL",1) Global("G-hitmanD","GLOBAL",0)~THEN g-bbD017 g-bbD017.start2
@11 /*"Ah, look who has yet again stepped through the gates of our theater! Welcome back, my phoenix. 'Tis a pleasure to see you. I presume you come here for a reason, yes?" */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",15)~THEN REPLY @13 /*Think about how you could get rid of Haer'Dalis without making the people around suspicious. */ DO~~ + g-bbD017.hitman1
IF~Global("G-doomvsfatevsKEY","GLOBAL",15)~THEN REPLY @14 /*"I promised Ulfbrand your head, so I came to collect. Stand still, please." */ DO~Help() Enemy() IncrementGlobal("GOOD","GLOBAL",-1) ForceAttack(Protagonist,Myself)~ EXIT
IF~Global("G-doomvsfatevsKEY","GLOBAL",5)~THEN REPLY @15 /*"I faced off against Ulfbrand in battle, but... he can't be killed in Ysgard. We need to set some kind of a trap for him in Sigil." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",8) SetGlobal("G-ambushaltini","GLOBAL",1) AddexperienceParty(25000)~ SOLVED_JOURNAL @20104 + g-bbD017.trap
IF~~THEN REPLY @16 /*"I have some questions." */ DO~~ + g-bbD017.questions
IF~CheckStatLT(Protagonist,12,INT)~THEN REPLY @17 /*"A phoenix? Where?" */ DO~~ + g-bbD017.phoenix
IF~~THEN REPLY @18 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-doomvsfatevsKEY","GLOBAL",8) !Global("g-trapvictoryloop","GLOBAL",3) Global("G-hitmanD","GLOBAL",0)~THEN g-bbD017 g-bbD017.retrap
@20 /*"Hmm? What are you doing here, my phoenix? Fly now! Fly to heroic domains, and deliver the 'news' to Ulfbrand." */
EXIT
CHAIN IF~Global("g-trapvictoryloop","GLOBAL",3) OR(2) NumTimesTalkedToGT(0) NumTimesTalkedTo(0)~THEN g-bbD017 g-bbD017.trapvictory
@23 /*"Yes! Victory! Ulfbrand and his goons are one with oblivion, and you know what that means, don't you? Aye, we can go now and arrange for our passage out of Sigil, before that volatile lunatic Darkwood sends some other tormentor. We need to make haste! Thank you, my friend. As a reward, accept this humble package. It contains a few useful trinkets that may aid you on your own path out of misery." */
END
IF~~THEN REPLY @25 /*"You're welcome... and thank you." */ DO~SetGlobal("g-trapvictoryloop","GLOBAL",1) SetGlobal("G-doomvsfatevsKEY","GLOBAL",10)~ SOLVED_JOURNAL @20106 + g-bbD017.reward
CHAIN IF~ Global("G-ulfbrandlostraid","GLOBAL",1) OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) ~THEN g-bbD017 g-bbD017.raidfailure
@27 /*"Yes! Victory! Ulfbrand and his goons are one with oblivion, and you know what that means, don't you? Aye, we can go now and arrange for our passage out of Sigil, before that volatile lunatic Darkwood sends some other tormentor. We need to make haste!" Haer'Dalis notices you are still around and give you a look of disgust. "But none of this is thanks to your help, traitorous thing, but in spite of you! 'Tis time to decide what happens next: shall we dance, too?" */
END
IF~!Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @29 /*"No. Things turned out exactly the way I wanted them to. Good luck out there." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",19)  SetGlobal("G-ulfbrandlostraid","GLOBAL",2) StartCutSceneMode() StartCutScene("g-bbC020") AddexperienceParty(50000) TriggerActivation("g-down",TRUE) TriggerActivation("g-up",TRUE)~ SOLVED_JOURNAL @20115 EXIT
IF~Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @30 /*"No. Things turned out exactly the way I wanted them to. Good luck out there." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",20) SetGlobal("G-ulfbrandlostraid","GLOBAL",2) StartCutSceneMode() StartCutScene("g-bbC020") AddexperienceParty(50000) TriggerActivation("g-down",TRUE) TriggerActivation("g-up",TRUE)~ SOLVED_JOURNAL @20116 EXIT
IF~!Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @31 /*"Yes. Let's see which one of us will be there for the curtain call!" */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",19) SetGlobal("G-ulfbrandlostraid","GLOBAL",2) StartCutSceneMode() StartCutScene("g-bbC020") TriggerActivation("g-down",TRUE) TriggerActivation("g-up",TRUE)~ + g-bbD017.overdeadbody
IF~Global("G-ulfbrandrobbed","GLOBAL",1)~THEN REPLY @32 /*"Yes. Let's see which one of us will be there for the curtain call!" */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",20) SetGlobal("G-ulfbrandlostraid","GLOBAL",2) StartCutSceneMode() StartCutScene("g-bbC020") TriggerActivation("g-down",TRUE) TriggerActivation("g-up",TRUE)~ + g-bbD017.overdeadbody
CHAIN IF~~THEN g-bbD017 g-bbD017.overdeadbody
@34 /*"You would need to catch us first! But nay, that is not going to happen!" */
EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.questions
@37 /*"I always knew you were a curious bird. Ask me your questions, and we shall see if I have answers you seek!" */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",15)~THEN REPLY @39 /*Think about how you could get rid of Haer'Dalis without making the people around suspicious. */ DO~~ + g-bbD017.hitman1
IF~GlobalLT("G-doomvsfate","GLOBAL",3) ~THEN REPLY @40 /*"I saw two people arguing with a bariaur. He mentioned an actor. Do you know anything about that?" */ DO~SetGlobal("G-knowRowan","GLOBAL",1)~ + g-bbD017.ulf1
IF~Global("G-doomvsfate","GLOBAL",3) Global("G-keyquest","GLOBAL",3)~THEN REPLY @41 /*"Do you still need help with the Fated? I changed my mind. I agree to help." */ DO~SetGlobal("G-doomvsfate","GLOBAL",4) SetGlobal("G-keyquest","GLOBAL",4)~ SOLVED_JOURNAL @20093 + g-bbD017.quest3a
IF~GlobalGT("G-doomvsfatevsKEY","GLOBAL",2)~THEN REPLY @42 /*"Let's talk about your problem with the Fated." */ DO~~ + g-bbD017.factionwar
IF~~THEN REPLY @43 /*"Tell me more about yourself." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD017.name
IF~~THEN REPLY @44 /*"What are you doing here?" */ DO~~ + g-bbD017.doing
IF~~THEN REPLY @45 /*"Tell me more about your troupe." */ DO~~ + g-bbD017.troupe
IF~~THEN REPLY @46 /*"Interesting daggers." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD017.weapon
IF~Global("G-doomattention","GLOBAL",1)~THEN REPLY @47 /*"Do you know the Doomguard woman from the cliff?" */ DO~~ + g-bbD017.haersin
IF~GlobalGT("G-knowpent","GLOBAL",0) GlobalGT("G-haedoom","GLOBAL",0)~THEN REPLY @48 /*"What do you think of Pentar, the Doomguard's factol?" */ DO~~ + g-bbD017.pentar
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) GlobalLT("G-haerann","GLOBAL",1)~THEN REPLY @49 /*"Wait, you're a tiefling just like Annah, aren't you?" */ DO~SetGlobal("G-haerann","GLOBAL",1)~ + g-bbD017.tiefling
IF~GlobalGT("G-knowcania","GLOBAL",0)~THEN REPLY @50 /*"What do you know about Cania? Any particular dangers to look out for?" */ DO~~ + g-bbD017.cania
IF~~THEN REPLY @51 /*"Why do you call me a phoenix?" */ DO~~ + g-bbD017.phoenix
IF~~THEN REPLY @52 /*"I feel like you know me. Have we met before?" */ DO~~ + g-bbD017.haenam
IF~~THEN REPLY @53 /*"Besides the theater, there's a residence in this part of the Ditch. What do you know about it?" */ DO~~ + g-bbD017.kabatum
IF~~THEN REPLY @55 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.factionwar
@57 /*"Oh?" Haer'Dalis raises his eyebrows. He seems hopeful. */
END
IF~Global("G-doomvsfatevsKEY","GLOBAL",15)~THEN REPLY @59 /*"I actually came to kill you. I was going to see if I could do it quietly, but I think Ulfbrand would appreciate a more direct approach. So... die." */ DO~Help() Enemy() IncrementGlobal("GOOD","GLOBAL",-1) ForceAttack(Protagonist,Myself)~ EXIT
IF~Global("G-doomvsfatevsKEY","GLOBAL",7)~THEN REPLY @60 /*"Ulfbrand wouldn't have peace. He forced me to find you and kill you. I didn't plan on it but... I changed my mind. Die." */ DO~Help() Enemy() IncrementGlobal("GOOD","GLOBAL",-1) ForceAttack(Protagonist,Myself)~ EXIT
IF~Global("G-doomvsfatevsKEY","GLOBAL",3)~THEN REPLY @61 /*"Ulfbrand won't bother you any more, but Darkwood will likely send someone else soon." */ DO~AddexperienceParty(50000)~ + g-bbD017.bestending
IF~Global("G-doomvsfatevsKEY","GLOBAL",5)~THEN REPLY @62 /*"I faced off against Ulfbrand in battle, but... he can't be killed in Ysgard. We need to set some kind of a trap for him in Sigil." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",8) SetGlobal("G-ambushaltini","GLOBAL",1) AddexperienceParty(25000)~ SOLVED_JOURNAL @20104 + g-bbD017.trap
IF~Global("G-doomvsfatevsKEY","GLOBAL",6)~THEN REPLY @63 /*"Ulfbrand wouldn't have peace. He sent me to find you and report where you are. We need to set some kind of a trap for him in Sigil." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",8) AddexperienceParty(25000)~ SOLVED_JOURNAL @20104 + g-bbD017.trap
IF~Global("G-doomvsfatevsKEY","GLOBAL",7)~THEN REPLY @64 /*"Ulfbrand wouldn't have peace. He forced me to find you and kill you. We need to set some kind of a trap for him in Sigil." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",8) AddexperienceParty(25000)~ SOLVED_JOURNAL @20104 + g-bbD017.trap
IF~Dead("g-bb156")~THEN REPLY @65 /*"Ulfbrand is dead." */ DO~~ + g-bbD017.ulfdead
IF~~THEN REPLY @66 /*"I've actually got other questions..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @67 /*"Never mind. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.trap
@69 /*"Well, my phoenix, it could have been worse! The cards are in our hands. 'Tis the time to ask ourselves a question: how should we play them? Let me quickly consult with someone... keen on the art of strategy." */
END
IF~~THEN REPLY @71 /*Wait. */ DO~FadeToColor([20.0],0)~ + g-bbD017.trap2
CHAIN IF~~THEN g-bbD017 g-bbD017.bestending
@73 /*"Oh? Is the search off? That means we may now go and arrange our sweet escape out of Sigil! Quickly, before that volatile lunatic Darkwood sends some other tormentor. We need to make haste! Thank you so much, my good friend. As a reward, accept this humble package. It contains a few useful trinkets that may aid you on your own path out of misery." */
END
IF~~THEN REPLY @75 /*"You're welcome and thank you." */ DO~SetGlobal("G-ulfbrandgaveup","GLOBAL",1)~ + g-bbD017.reward
CHAIN IF~~THEN g-bbD017 g-bbD017.trap2
@77 /*Haer'Dalis gathers some of the other troupe members, the theater's bouncer and a couple of Doomguards present at the scene and they carry out a quick huddle at the very center of the stage. A handful of overly enthusiastic spectators clap, thinking that maybe a spectacle is starting, but the claps quickly fade as it becomes apparent that this a real meeting. The group seems to reach an agreement rather quickly, and soon the blue-haired actor is heading back your way. */
END
IF~~THEN REPLY @79 /*Wait for Haer'Dalis to come back. */ DO~FadeFromColor([20.0],0)~ + g-bbD017.trap3
CHAIN IF~~THEN g-bbD017 g-bbD017.trap3
@81 /*"So, my friends and I agreed it would be unreasonable to doom the theater with the dance of blades and the swirls of deadly magic. Thus, we should let the fight happen somewhere else! 'Twas Clausius who suggested the dark alley between the Great Foundry and the Ditch, and thus it shall become our battleground! Will you, our dear phoenix, lead the Fated into the traps that are being set there? Hopefully, such a display of power shall prove that even with their positions of power, the Takers cannot just execute justice on other factions on a whim!" */
END
IF~Class(Protagonist,Fighter) CheckStatGT(Protagonist,11,INT) !Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @83 /*"As a fighter myself, I would like to suggest some defensive formations to the boys. Entropy is all well and good, but organized defensive tactics can be very effective." */ DO~IncrementGlobal("G-FatedPower","GLOBAL",-2)~ + g-bbD017.trap4
IF~Class(Protagonist,Fighter) !CheckStatGT(Protagonist,11,INT) !Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @84 /*"As an excellent fighter, I would like to suggest some offensive manoeuvres. Strategy is all well and good, but the boys need to use their anger too." */ DO~IncrementGlobal("G-FatedPower","GLOBAL",2)~ + g-bbD017.trap4
IF~!Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @85 /*"I wouldn't bet on Darkwood giving up so easily, but the trap sounds good. You'd better be ready when they come." */ DO~~ + g-bbD017.trap4
IF~!Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @86 /*"We can only hope so. I'll lead them to the alley." */ DO~~ + g-bbD017.trap4
IF~Class(Protagonist,Fighter) CheckStatGT(Protagonist,11,INT) Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @87 /*"As a fighter myself, I would like to suggest some defensive formations to the boys. Entropy is all well and good, but organized defensive tactics can be very effective." */ DO~IncrementGlobal("G-FatedPower","GLOBAL",-2)~ + g-bbD017.trap4a
IF~Class(Protagonist,Fighter) !CheckStatGT(Protagonist,11,INT) Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @88 /*"As an excellent fighter, I would like to suggest some offensive maneuvers. Strategy is all well and good, but the boys need to use their anger too." */ DO~IncrementGlobal("G-FatedPower","GLOBAL",2)~ + g-bbD017.trap4a
IF~Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @89 /*"I wouldn't bet on Darkwood giving up so easily, but the trap sounds good. You'd better be ready when they come." */ DO~~ + g-bbD017.trap4a
IF~Global("G-ambushaltini","GLOBAL",1)~THEN REPLY @90 /*"We can only hope. I'll lead them to the alley." */ DO~~ + g-bbD017.trap4a
CHAIN IF~~THEN g-bbD017 g-bbD017.trap4
@92 /*"Very well, my phoenix. I will likely be there too, to sing songs of encouragement and maybe kiss someone who may break our defences with my sword. You go and take the word to Ulfbrand." */
END
IF~~THEN REPLY @94 /*"Good luck with your preparations." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",8)~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.trap4a
@96 /*"Very well, my phoenix! I shall be there, too, to sing the songs of doom, and mayhap let Chaos and Entropy spin among our enemies! Here: hold onto these letters, and call upon your allies. Then sneak into Ulfbrand's legion. 'Tis unlikely he will notice you. Meanwhile, we shall spread rumors about our whereabouts." */
END
IF~~THEN REPLY @98 /*"Good luck with your preparations." */ DO~SetGlobal("G-doomvsfatevsKEY","GLOBAL",8) GiveItemCreate("g-bbi057",Protagonist,0,0,0) GiveItemCreate("CPENCIL",Protagonist,0,0,0) SetGlobal("G-RaidTheaterDG","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.haenam
@100 /*"You're a phoenix because you come back to your life over and over again - just like that mythical bird! And... yes, I've seen you before, in the Hive. And while we hadn't spoken back then, 'tis hard to forget someone with so many scars, wading through the crowd, asking everyone around about his journal and Pharod." He smiles. "I must admit, though: you wear those scars with great finesse!" */
END
IF~~THEN REPLY @102 /*"I've got more questions..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @103 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.name
@105 /*"I'm Haer'Dalis, a sparrow that has been flying across various planes of existence throughout their length and breadth, and a member of Raelis Shai's theater troupe. However, I am also a member of the Doomguard. 'Tis quite a wonderful contradiction, isn't it? That makes me both an actor of both delight and destruction through entropy." */
END
IF~~THEN REPLY @107 /*"I've got more questions..." */ DO~~ + g-bbD017.questions
IF~GlobalGT("G-haedoom","GLOBAL",0)~THEN REPLY @108 /*"What does the Doomguard believe in?" */ DO~~ + g-bbD017.doomguard
IF~Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @109 /*"You belong to the Doomguard? I'm a Dustman; our factions are allied." */ DO~~ + g-bbD017.dustman
IF~Global("Join_Godsmen","GLOBAL",6)~THEN REPLY @110 /*"You belong to the Doomguard? I'm a Godsman; our factions tend to ally from time to time." */ DO~~ + g-bbD017.godsman
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @111 /*"You belong to the Doomguard? I'm a Xaositect, our factions are allied. Or maybe they aren't? Or maybe I'm a Chaositect. Speak as you will. You know how it works." */ DO~~ + g-bbD017.chaosman
IF~~THEN REPLY @112 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.weapon
@114 /*Haer'Dalis laughs. "I guess you haven't seen many swords in your long life, have you, my phoenix? These are swords, not daggers. And they have names: Entropy and Chaos. Made of abyssal steel. One poisons the foes and the other one hinders their movement. These blades define me as a Doomguard." */
END
IF~~THEN REPLY @116 /*"I've got more questions..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @117 /*"What does the Doomguard believe in?" */ DO~~ + g-bbD017.doomguard
IF~Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @118 /*"You belong to the Doomguard? I'm a Dustman, our factions are allied." */ DO~~ + g-bbD017.dustman
IF~Global("Join_Godsmen","GLOBAL",6)~THEN REPLY @119 /*"You belong to the Doomguard? I'm a Godsman, our factions tend to ally from time to time." */ DO~~ + g-bbD017.godsman
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @120 /*"You belong to the Doomguard? I'm a Xaositect, our factions are allied. Or a Chaositect. Speak as you will. You know how it works." */ DO~~ + g-bbD017.chaosman
IF~~THEN REPLY @121 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.applaud
@123 /*"Thank you... Thank you." */
END
IF~~THEN REPLY @125 /*"I've got more questions..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @126 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.doomguard
@128 /*"As factol Pentar says, 'Everything falls. We are only here to maintain this process.' Sinkers - another name for members of the Guard, believe in entropy. In other words, the multiverse tends toward disorder. Everything is falling apart. Everything is receding. There is no return to its former state. This is how it is supposed to be. You've certainly seen evidence of this on your journey, have you not, my friend?" */
END
IF~~THEN REPLY @130 /*"I've got more questions..." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD017.questions
IF~~THEN REPLY @131 /*"What do you think of Pentar?" */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD017.pentar
IF~Global("Coaxmetal","GLOBAL",1) Global("G-haercoax","GLOBAL",0)~THEN REPLY @132 /*"In Sigil I met a golem called Coaxmetal, who was forging weapons to destroy the multiverse. I understand you support this." */ DO~AddexperienceParty(5000) SetGlobal("G-haercoax","GLOBAL",1) SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD017.coaxmetal
IF~Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @133 /*"I'm a Dustman; our factions are allied." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD017.dustman
IF~Global("Join_Godsmen","GLOBAL",6)~THEN REPLY @134 /*"I'm a Godsman; our factions tend to ally from time to time." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD017.godsman
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @135 /*"I'm a Xaositect; our factions are allied. Or a Chaositect. Speak as you will. You know how it works." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD017.chaosman
IF~~THEN REPLY @136 /*"Never mind, goodbye." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.dustman
@138 /*"So, you're a Dustman. I should have guessed, considering your view on True Death. I cannot say I'm surprised! The Dustmen also contribute to entropy, but they also lack enthusiasm. They don't want to watch the world burn. Their stoic calm is somewhat unique, isn't it? At least, thanks to the Pact, you can look at what entropy does to people, and you can do it without much risk." */
END
IF~~THEN REPLY @140 /*"Let's get back to Doomguard..." */ DO~~ + g-bbD017.doomguard
IF~~THEN REPLY @141 /*"I've got other questions unrelated to Doomguard." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @142 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.godsman
@144 /*"So you're a Godsman, hmm? Hah! You must see this journey as just another test, then, aye? Before it ends, look at what it does to you. How many scars, wounds, and bruises you are left with...!" He laughs to himself. "I just hope you'll see some meaning in them. And in what you have done." */
END
IF~~THEN REPLY @146 /*"Let's get back to Doomguard..." */ DO~~ + g-bbD017.doomguard
IF~~THEN REPLY @147 /*"I've got other questions unrelated to Doomguard." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @148 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.chaosman
@150 /*"Chaos. We understand each other, my friend." */
END
IF~~THEN REPLY @152 /*"Let's get back to Doomguard..." */ DO~~ + g-bbD017.doomguard
IF~~THEN REPLY @153 /*"I've got other questions unrelated to Doomguard." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @154 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.coaxmetal
@156 /*"A beautiful work of entropy! 'Tis still standing in the Lower Ward, is it not? 'Tis a beautiful coincidence too! Didn't you like the way you got in? To enter, you have to not want to enter. I think it works as a splendid metaphor! The golem is akin to the unstoppable force of engineering! I wonder, however, in a hypothetical scenario, if he managed to annihilate everything... Who would annihilate *him*? Would it be the time? Hmm, I suppose time has more power than we want to admit, my phoenix. It will affect you too... Someday." */
END
IF~~THEN REPLY @158 /*"Yes. Let's get back to Doomguard..." */ DO~~ + g-bbD017.doomguard
IF~~THEN REPLY @159 /*"I've got other questions unrelated to Doomguard." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @160 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.phoenix
@162 /*Haer'Dalis laughs. "Forgive me, my friend, but I adore naming people after animals - in a poetic manner. There is a beast, or a beautiful creature in each of us; a symbol of our hopes, fears, desires, or our very personal nature! I have a particular soft spot for birds..." He looks at you for a moment. "I think you can guess why I call you phoenix?" */
END
IF~~THEN REPLY @164 /*"That's quite telling. What do you know about me?" */ DO~~ + g-bbD017.haenam
IF~~THEN REPLY @165 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @166 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.haersin
@168 /*"Ah, the pelican. A good friend of mine - but you don't need to know more than that. Mostly for your own sake." He smiles knowingly. "But perhaps I shall reveal one more detail, a little secret told in confidence: she loves talking about the end of existence. She believes that the journey to our ultimate destiny - to the slow decay of the multiverse - defines us as individuals. I believe you know my opinion on this." */
END
IF~~THEN REPLY @170 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @171 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.pentar
@173 /*"She is quite beautiful, nay? She wears long raven-black tresses. Rumor is she sleeps in her armor, always ready for battle. Despite over three decades on her back, she still bursts with youthful energy like that volcano she drank by in her teenage years. Once she finishes her work and stops the Modron March, I'll write a play about her. I think I even know someone who'd be a perfect fit for that role...!" */
END
IF~GlobalGT("G-pent2","GLOBAL",0)~THEN REPLY @175 /*"I guess she really is devoted to chaos and entropy. A truly free person. This is what impresses me." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-pent2","GLOBAL",1)~ + g-bbD017.pentar1
IF~GlobalGT("G-pent2","GLOBAL",0)~THEN REPLY @176 /*"Long hair getting in the way of a fight, yet she's ready to fight even in her sleep? Reckless behavior? Unrealistic goals? She's full of contradictions. Too much for my liking." */ DO~IncrementGlobal("LAW","GLOBAL",1) SetGlobal("G-pent2","GLOBAL",1)~ + g-bbD017.pentar2
IF~~THEN REPLY @177 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @178 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.pentar1
@180 /*He smiles. "That's the point, phoenix." */
END
IF~~THEN REPLY @182 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @183 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.pentar2
@185 /*A grimace shows on his face. "We all have our opinions, right? At least this hasn't been banned by the Guvners." */
END
IF~~THEN REPLY @187 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @188 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.tiefling
@190 /*Haer'Dalis flips his blue hair. "Ah, 'tis not that obvious, is it? Not everyone can notice it so easily." He tactfully ignores the fact that Annah's demonic ancestry is much more noticeable because of her tail. The actor has neither a tail, nor horns, nor hooves. "We cannot choose what kind of family we are born into, so in the lottery of births there will also be families that are somewhat... blood-wise complicated. But who knows, mayhap your friend and I are related? Will you introduce us?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @191 /*"Annah." She introduces herself. You expected a more lively reaction. Haer'Dalis seems to have given her something to think about. "I hope ye're right, cos I heard that all it takes is for a chit is to look at ye and she gets pregnant. Maybe yer forgivin' to family, tho." */
==g-bbD017 @192 /*"You hurt my feelings, fiery magpie. I'm much more subtle than that." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @193 /*"Aye, I hear ya." */
END
IF~~THEN REPLY @195 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @196 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.cania
@198 /*"The bards sing of this place, colder than nightmares themselves and teeming with peril! A place roamed by legions of gelugons and other baatezu! Surprisingly, there are also those who have seen some githzerai pilgrims in the blizzard. I wonder why there, though..." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @199 /*"Githzerai must spend their life training their mind and body. However, their homeland of Limbo is unlike any other place in the planes. By venturing to different places that are difficult to survive, githzerai can expose themselves to tests they might not otherwise have the opportunity to face in Limbo. There are numerous places in the planes where you can meet githzerai. But among them there are no places where living is easy." */
==g-bbD017 IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN @200 /*"Thank you for enlightening me, Dak'kon." */
END
IF~~THEN REPLY @202 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @203 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.know1
@205 /*"Oh? Can it be? Have you really forgotten me, my phoenix? Or is it my memory that is trying to trick me?" He seems to be disappointed. "Fine! I shall introduce myself once more: I am Haer'Dalis, and I am many things: a wandering sparrow, a blade, and an actor; a member of a troupe of wonderful tieflings, planetouched and other misfits, who put on masterful productions to amuse both cambions and commoners alike! A Doomguard by heart, and a wielder of Entropy and Chaos - by choice. 'Tis a short version, though." */
END
IF~~THEN REPLY @207 /*"I've got more questions..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @208 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.know2
@210 /*"I never had a moment's doubt about it." */
END
IF~~THEN REPLY @212 /*"However, I won't be offended if you refresh my memory and tell me something about yourself." */ DO~SetGlobal("G-haedoom","GLOBAL",1)~ + g-bbD017.name
IF~~THEN REPLY @213 /*"What are you doing here?" */ DO~~ + g-bbD017.doing
IF~~THEN REPLY @214 /*"I've got more questions..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @215 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.doing
@217 /*"We're preparing a set of plays. Well, we - my friends and I - are entertainers, after all! You have to come over sometime, phoenix, and see us perform! I'm quite sure you'd appreciate the nuances of the script, the interaction between the characters, and the synesthesia of sensations about which the Sensates tenderly whisper in each other's ears at night." */
END
IF~~THEN REPLY @219 /*"Tell me more about your troupe." */ DO~~ + g-bbD017.troupe
IF~Global("G-scriptgood","GLOBAL",1)~THEN REPLY @220 /*"I've helped Miss Raelis with a script." */ DO~~ + g-bbD017.reviewgood
IF~Global("G-scriptbad","GLOBAL",1)~THEN REPLY @221 /*"I've helped Miss Raelis with a script." */ DO~~ + g-bbD017.reviewbad
IF~~THEN REPLY @222 /*"For sure. I've got more questions, though..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @223 /*"Surely. Forgive me but I have to go. Fare thee well." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.troupe
@225 /*"We are migratory birds - we fly from one place to another, perform our plays. They are all friends here: Raelis Shai, Kirinaldo, Lunisia, and Biff the Understudy. Not all of us are currently here, but if you want to know more about each of our troupe members, ask Raelis. No one can describe them as beautifully as she can! 'Tis one of her many talents." */
END
IF~~THEN REPLY @227 /*"I've got more questions, though..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @228 /*"I have to go. Fare thee well." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.reviewgood
@230 /*"Yes, 'tis a very good story, my phoenix. I am proud of you." */
END
IF~~THEN REPLY @232 /*"I've got more questions, though..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @233 /*"I have to go. Fare thee well." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.reviewbad
@235 /*"Oh. Well..." He is clearly embarrassed. "Yes, I've heard of that. Keep writing, you'll definitely improve your craft with time!" */
END
IF~~THEN REPLY @237 /*"I've got more questions, though..." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @238 /*"I have to go. Fare thee well." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.ulf1
@240 /*"What you saw, my phoenix: 'twas an assault on art itself! The Fated, led by a head of the Debt Collection Division, Ulfbrand, claim I insulted their factol, Rowan Darkwood! Wouldn't you agree that's absurd? Perhaps I *planned* on doing so, but isn't that somewhat allowed under licentia poetica? One cannot be punished for what art is supposed to do, which is commenting on reality around us!" */
END
IF~~THEN REPLY @242 /*"Wait, so it *hasn't* happened yet?" */ DO~~ + g-bbD017.quest1
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @243 /*"Actually, it already happened. I helped Raelis a bit with a new screenplay, remember?" */ DO~~ + g-bbD017.quest2
IF~~THEN REPLY @244 /*"You're right. No one should be punished for art." */ DO~~ + g-bbD017.quest3
IF~~THEN REPLY @245 /*"You should have been more careful. There are things you can't insult, even in the name of art." */ DO~~ + g-bbD017.quest4
CHAIN IF~~THEN g-bbD017 g-bbD017.quest1
@247 /*"Perhaps it happened, perhaps not... It's hard to say for sure. We've parodied many famous people, but *that one* felt offended like a priest of Heironeous in a dark boudoir?" */
END
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @249 /*"Actually, it already happened. I helped Raelis a bit, remember?" */ DO~~ + g-bbD017.quest2
IF~~THEN REPLY @250 /*"Art can't be punished!" */ DO~~ + g-bbD017.quest3
IF~~THEN REPLY @251 /*"You should have been more careful. There are things you can't insult, even in the name of art." */ DO~~ + g-bbD017.quest4
CHAIN IF~~THEN g-bbD017 g-bbD017.quest2
@253 /*"I don't blame you. That power-hungry berk deserves some strong criticism. He's a stirrer who wants to divide all the factions, and on top of that, he recently seduced that young Mercykiller girl, Alisohn - even though I can somewhat understand the urge. It'll end badly for her trusting him, though. But let's get to the point: we'll fight on our own terms, and we need allies. What do you say, my friend? Shall you stand on our side?" */
END
IF~~THEN REPLY @255 /*"What do you expect from me? I doubt any of us would be able to reason with the factol of the Fated." */ DO~~ + g-bbD017.quest3
IF~~THEN REPLY @256 /*"I have to think this over. Farewell." */ DO~SetGlobal("G-doomvsfate","GLOBAL",3)~ SOLVED_JOURNAL @20093 EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.quest3
@258 /*"Exactly! This is why I need you to find Ulfbrand, one of their factors. If possible, try and talk some reason into him. He resides safely outside Sigil, in Ysgard. There is a direct portal to his division somewhere near the beachside. Should you agree to help, we have the key that will open the way for you. We just can't send any of our own... they'd be stopped on sight." */
END
IF~Global("G-keyquest","GLOBAL",3)~THEN REPLY @261 /*"Ysgard would be a good destination for me, as I'm looking for frost giants... fine. I'll do it." */ DO~SetGlobal("G-doomvsfate","GLOBAL",4) SetGlobal("G-keyquest","GLOBAL",4)~ SOLVED_JOURNAL @20094 + g-bbD017.quest3a
IF~Global("G-keyquest","GLOBAL",3)~THEN REPLY @263 /*"Ysgard would be a good destination for me, as I'm looking for frost giants, but I have to think it over. */ DO~SetGlobal("G-doomvsfate","GLOBAL",3) SetGlobal("G-keyquest","GLOBAL",4)~ SOLVED_JOURNAL @20093 + g-bbD017.q3denied
IF~!Global("G-keyquest","GLOBAL",3)~THEN REPLY @264 /*"I should not interfere in faction business." */ DO~SetGlobal("G-doomvsfate","GLOBAL",3)~ SOLVED_JOURNAL @20093 + g-bbD017.q3denieda
CHAIN IF~~THEN g-bbD017 g-bbD017.quest3a
@266 /*"Wonderful, my phoenix!" Haer'Dalis raises his voice enough to attract the attention of others in his troupe, who are now discreetly looking in your direction. "Here's the key. The gate to the Heroic Domains of Ysgard, like I said, is somewhere by the beachside. Find Ulfbrand and do whatever you must to fix this!" */
END
IF~~THEN REPLY @268 /*"I'll do it. See you soon." */ DO~GiveItemCreate("g-bbi078",Protagonist,0,0,0) GiveExperience(Protagonist,6000)~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.q3denied
@270 /*"My phoenix... how can it be? You have to travel there anyway and you won't even try to help us?" Haer'Dalis sighs deeply and his eyes begin to flow with tears. If you did not know he was an actor, this would have been very dramatic. */
END
IF~~THEN REPLY @272 /**sigh* "Fine, I'll do it." */ DO~SetGlobal("G-doomvsfate","GLOBAL",4)~ SOLVED_JOURNAL @20094 + g-bbD017.quest3a
IF~~THEN REPLY @273 /*"I may change my mind, but for now, farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.q3denieda
@275 /*"My phoenix... how could you?" Haer'Dalis sighs deeply, yet a vivid fire burns in his eyes. "What do you need right now? Mayhap we can help you with something in exchange, hmm?" */
END
IF~Global("G-haer_kok","GLOBAL",0)~THEN REPLY @277 /*"I am looking for a kocrachon by the name of Elvra Syne." */ DO~SetGlobal("G-keyquest","GLOBAL",2) SetGlobal("G-haer_kok","GLOBAL",1)~ SOLVED_JOURNAL @20088 + g-bbD017.q3denieda1
IF~Global("G-haer_port","GLOBAL",0)~THEN REPLY @278 /*"I am looking for a portal to Cania." */ DO~SetGlobal("G-haer_port","GLOBAL",1)~ + g-bbD017.q3denieda2
IF~~THEN REPLY @279 /*"I may change my mind, but for now, farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.q3denieda1
@281 /*"Elvra... Elvra...." Haer'Dalis seems to be delving deep into his memory. He has surely met a number of interesting characters and the fiend you are looking for may be one of them. */
=@282 /*"Elvra... Syne! Yes! He's a shifty fellow, frequents the Styx Oarsman tavern on the other side of the settlement." He bows lightly and smiles playfully. "How about it then, will you help us now?" */
END
IF~Global("G-haer_port","GLOBAL",0)~THEN REPLY @284 /*"I am also looking for a portal to Cania." */ DO~SetGlobal("G-haer_port","GLOBAL",1)~ + g-bbD017.q3denieda2
IF~~THEN REPLY @285 /*"I need to meet this Elvra. If your information is good, I'll be back." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.q3denieda2
@287 /*"To Cania? Oh, phoenix. I don't know anything about it. I was never particularly drawn to such cold places." */
END
IF~Global("G-haer_kok","GLOBAL",0)~THEN REPLY @289 /*"I am also looking for a kocrachon by the name of Elvra Syne." */ DO~SetGlobal("G-keyquest","GLOBAL",2) SetGlobal("G-haer_kok","GLOBAL",1)~ SOLVED_JOURNAL @20088 + g-bbD017.q3denieda1
IF~Global("G-haer_kok","GLOBAL",1)~THEN REPLY @290 /*"I need to meet this Elvra. If your information is good, I'll be back." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.quest4
@292 /*"But - an execution for something that hasn't even happened yet? 'Tis absurd! Listen to me carefully, phoenix: I need you to find factor Ulfbrand. If possible, be our miracle-worker and try to talk some reason into him! He resides safely outside Sigil, in Ysgard. There is a direct portal to his division somewhere near the beachside. If you agree to help, we shall give you this key. We just can't send any of our own... they'd be stopped on sight." */
END
IF~Global("G-keyquest","GLOBAL",3)~THEN REPLY @294 /*"Ysgard would be a good destination for me, as I'm looking for frost giants... I'll go there and see what this is about." */ DO~SetGlobal("G-doomvsfate","GLOBAL",4) SetGlobal("G-keyquest","GLOBAL",4)~ SOLVED_JOURNAL @20094 + g-bbD017.quest3a
IF~Global("G-keyquest","GLOBAL",3)~THEN REPLY @295 /*"Ysgard would be a good destination for me, as I'm looking for frost giants, but I have to think it over. */ DO~SetGlobal("G-doomvsfate","GLOBAL",3) SetGlobal("G-keyquest","GLOBAL",4)~ SOLVED_JOURNAL @20093 + g-bbD017.q3denied
IF~!Global("G-keyquest","GLOBAL",3)~THEN REPLY @296 /*"No, I should not interfere in faction business if it doesn't concern me." */ DO~SetGlobal("G-doomvsfate","GLOBAL",3)~ SOLVED_JOURNAL @20093 + g-bbD017.q3denieda
CHAIN IF~~THEN g-bbD017 g-bbD017.kabatum
@298 /*"This is Kabatum's residence. I thought he was some strange celestial, but he could just as easily be a different kind of being. No one ventures there, because Kabatum isn't one of those good-natured angels who help the sick and the poor. And this is his impenetrable retreat, the angel in the slums... if he even is an angel? There is more, though, as there are rumors that a few thieves who tried to break into his residence never returned. I suspect they had heard rumors of some unimaginable treasure hidden within those walls. But as things usually are, a celestial's treasure is unlikely to be one of those material ones. Perhaps 'tis something much more inconspicuous. But you can't deny the residence's grandeur. From the outside, it looks like a home of some Lady's Ward higher-up!" */
END
IF~~THEN REPLY @300 /*"What kind of treasure could he keep?" */ DO~~ + g-bbD017.kabatum1
IF~~THEN REPLY @301 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @302 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.kabatum1
@304 /*"Perhaps some secret knowledge or powerful magic? Ha! There are so many options! I'd be careful if I were you, my phoenix. He's a true bird of prey." */
END
IF~~THEN REPLY @306 /*"I've got other questions." */ DO~~ + g-bbD017.questions
IF~~THEN REPLY @307 /*"I have to go, see you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.ulfdead
@309 /*You feel as if, somewhere in the distance, something intangible has changed. As if your actions had altered the course of history. */
=@310 /*"'Tis a shame this senseless conflict had to lead to someone's death, but isn't that what life is like? And isn't that how entropy works?" */
END
IF~~THEN REPLY @312 /*"True. Every murder is wrong. But we have to live with it and think about what to do next." */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("g-haerend","GLOBAL",1)~ + g-bbD017.ulfdead1
IF~~THEN REPLY @313 /*"You wanted him dead yourself. Where is the sudden shame coming from? Also, what about my reward?" */ DO~SetGlobal("g-haerend","GLOBAL",1)~ + g-bbD017.ulfdead2
IF~~THEN REPLY @314 /*"Every reason is good to kill someone." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)  SetGlobal("g-haerend","GLOBAL",1)~ + g-bbD017.ulfdead3
CHAIN IF~~THEN g-bbD017 g-bbD017.ulfdead1
@316 /*He nods sadly and when he manages to gather his thoughts, he speaks. "As a reward, accept this humble package. It contains a few wonderful trinkets you may find quite useful, my friend. As for us: we need to use the moment of silence to secure our way out of Sigil - while it's still an option!" */
END
IF~~THEN REPLY @318 /*"Thank you, Haer'Dalis. Good luck. Farewell." */ DO~~ + g-bbD017.reward
CHAIN IF~~THEN g-bbD017 g-bbD017.ulfdead2
@320 /*Haer'Dalis frowns. "I'll make it quick then." He sighs. "Accept this humble package. It contains a few wonderful trinkets you may find quite useful. As for us: we need to use the moment of silence to secure our way out of Sigil - while it's still an option!" */
END
IF~~THEN REPLY @322 /*"I'll be going. Farewell." */ DO~~ + g-bbD017.reward
CHAIN IF~~THEN g-bbD017 g-bbD017.ulfdead3
@324 /*Haer'Dalis frowns and looks at you carefully. He seems more aware than before that he's made a big mistake in trusting you. "This is the last time we talk, we shall fly away and you - you shall not search for us, not ever." */
END
IF~~THEN REPLY @326 /*"I'll be going. Farewell." */ DO~StartCutSceneMode() StartCutScene("g-bbC020")~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.reward
@328 /*You open the package which turns out to contain several items. There is also a letter detailing what you are dealing with.

"Dear Phoenix,

In one of the few spare moments we have had lately, I decided to prepare a special package for you. A little set of trinkets, that shall let you dance alongside chaos itself! My other friends, both from the troupe and regulars, also left something for you to enjoy:

- a mace from the Doomguard's Armory
- Spell scrolls (to sow entropy among enemies and to protect yourself from their attacks)
- Shina-Tsu-Hiko Milk (a wonderful potion, its effects should be a surprise; use it before a fight)

We all wish you exciting travels, and remember - do not let anyone clip your wings!

Signed
Haer'Dalis, Raelis Shai, Kirinaldo, Lunisia, and Biff the Understudy

Footnote: 'That was a wonderful show, for which I sincerely thank you. I cannot wait to see what choices you make next.'
- Æ" */
END
IF~~THEN REPLY @330 /*Take the items and leave. */ DO~GivePartyGold(5000) AddexperienceParty(50000) GiveItemCreate("SPWI603",Protagonist,0,0,0) GiveItemCreate("SPWI704",Protagonist,0,0,0) GiveItemCreate("g-bbi037",Protagonist,0,0,0) GiveItemCreate("g-bbi027",Protagonist,0,0,0) GiveItemCreate("g-bbi029",Protagonist,0,0,0) GiveItemCreate("g-bbi059",Protagonist,0,0,0) StartCutSceneMode() ActionOverride("g-bb054",EscapeArea()) StartCutScene("g-bbC020") EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.hitman1
@332 /*Before you take any action, you must consider the circumstances. Haer'Dalis is on stage. There are potential witnesses both around him and in the audience. */
END
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) PartyHasItem("g-bbi081")~THEN REPLY @334 /*Instruct Annah to hide in the shadows backstage and use the razorvine garrote when you lure Haer'Dalis there. */ DO~~ + g-bbD017.hitman2
IF~Class(Protagonist,Thief) PartyHasItem("g-bbi081")~THEN REPLY @335 /*Lure Haer'Dalis backstage and murder him using the razorvine garrote. */ DO~~ + g-bbD017.hitman3
IF~!Class(Protagonist,Thief) PartyHasItem("g-bbi081")
~THEN REPLY @336 /*Try to murder Haer'Dalis using the razorvine garrote. */ DO~~ + g-bbD017.hitman4
IF~!PartyHasItem("g-bbi081")~THEN REPLY @337 /*Check if you have anything that would be useful. */ DO~~ + g-bbD017.nohitman
IF~~THEN REPLY @338 /*Give up, this is too risky. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.nohitman
@340 /*You do not have any item that would be useful in a discrete assassination. You can as well attack him in front of everyone. But it will have its consequences. */
END
IF~~THEN REPLY @342 /*Give up... For now. */ DO~~ EXIT
IF~~THEN REPLY @343 /*Attack him directly. */ DO~Enemy() Help() ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.hitman2
~~ ==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @345 /*"Like a shadow, I am." As you instructed her, Annah hides away from Haer'Dalis' sight. [ANA421C] */
==g-bbd017
 @346 /*"Do you need anything, my phoenix?" Haer'Dalis asks you. */
END
IF~~THEN REPLY @348 /*"I wanted to ask you something in private... Could we go backstage?" */ DO~SetGlobal("G-hitmanD","GLOBAL",2) MoveToPointNoInterrupt([1243.459]) MoveBetweenAreas("ARG-BS",[454.396],13)~ EXIT
IF~~THEN REPLY @349 /*Give up... For now. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.hitman3
@351 /*"Do you need anything, my phoenix?" Haer'Dalis asks you. */
END
IF~~THEN REPLY @353 /*"I wanted to ask you something in private... Could we go backstage?" */ DO~SetGlobal("G-hitmanD","GLOBAL",2) MoveToPointNoInterrupt([1243.459]) MoveBetweenAreas("ARG-BS",[454.396],13)~ EXIT
IF~~THEN REPLY @354 /*Give up... For now. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD017 g-bbD017.hitman4
@356 /*It is obvious you do not know what you are doing. You lack both planning and skill. In theory, it sounded perfect: a garrote around the neck from behind, a knee to press his back, and you are done. But in reality, you cannot do it right. Even if you were more agile, Haer'Dalis manages to avoid your assault, because he is clearly trained in how to avoid them. "I am disappointed, my phoenix. Now, let us dance! We shall see which of us is destined to keep his life!" [NAM062] */
END
IF~~THEN REPLY @358 /*"Damn." */ DO~Enemy() Help() ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ EXIT
CHAIN IF~Global("G-hitmanD","GLOBAL",1)~THEN g-bbD017 g-bbD017.hitman2a
@360 /*When you go backstage and start to talk, Annah is waiting with the garrote. At the right moment, she tightens the grip before he notices. She moves so swiftly that you yourself barely perceive her movements. [HIT_01G1] */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @361 /*"Left yerself exposed, ya eejit." Her efficiency and confidence are terrifying. You know she could do this to you if she wanted to. [ANA523B] */
==g-bbd017
 @362 /*Haer'Dalis falls lifeless to the ground. Annah softens his fall so as not to make any noise. How many times has he fallen like this as an actor? This is the last. */
END
IF~~THEN REPLY @364 /*"Exeunt. Time to evacuate." */ DO~ActionOverride("Annah",SetAnimState(Myself,ANIM_MIMEATTACK1)) SetAnimState(Myself,ANIM_MIMEDIE) Kill("g-bb017") IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-doomvsfatevsKEY","GLOBAL",21) SetGlobal("G-hitmanD","GLOBAL",3)~ SOLVED_JOURNAL @20117 EXIT
CHAIN IF~Global("G-hitmanD","GLOBAL",2)~THEN g-bbD017 g-bbD017.hitman3a
@366 /*When you go backstage and he turns his back to you, at the right moment, you quickly bring out the garrote and tighten the grip on his neck. [HIT_01G1] */
=@367 /*He trusted you, but you took advantage of the moment when he was exposed to your assault. [NAM167] */
=@368 /*Haer'Dalis, covered in blood, falls lifeless to the ground. You soften his fall so as not to make any noise. How many times has he fallen like this as an actor? This is the last. */
END
IF~~THEN REPLY @370 /*"Exeunt." */ DO~ActionOverride(Protagonist,SetAnimState(Myself,ANIM_MIMEATTACK1)) SetAnimState(Myself,ANIM_MIMEDIE) Kill("g-bb017") IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-doomvsfatevsKEY","GLOBAL",21) SetGlobal("G-hitmanD","GLOBAL",3)~ SOLVED_JOURNAL @20117 EXIT