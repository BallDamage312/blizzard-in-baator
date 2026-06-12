BEGIN g-bbD220
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD220 g-bbD220.start1
@0 /*A wererat leans against a wooden post. He looks like the others in the area but keeps his distance from them. The creature sips beer from a mug, and though he tries very hard not to show it, his eyes dart around the room as if he is looking for something. His whiskers twitch quite rapidly. */
=@1 /*When your eyes meet, he does not look away, maintaining intense eye contact.  */
END
IF~~THEN REPLY @3 /*"Greetings... Looking for something?" */ DO~~ + g-bbD220.A1
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD220 g-bbD220.start2
@6 /*The lone wererat is still leaning against the pole. He sips his beer from a mug and continues to survey the area. Without breaking his surveillance, he asks: "Whaddaya want, biped?" */
END
IF~~THEN REPLY @8 /*"I have some questions." */ DO~~ + g-bbD220.questions
IF~GlobalGT("G-triplerquest","GLOBAL",9) PartyHasItem("g-bbi115")~THEN REPLY @9 /*"Mystery solved, Poirat." */ DO~~ + g-bbD220.post
IF~PartyHasItem("g-bbi091")~THEN REPLY @10 /*Show him the jade skull. "Look what I made with the thing from your pocket: a whole skull." */ DO~~ + g-bbD220.what
IF~GlobalGT("g-poiratresign","GLOBAL",0) Global("G-triplerquest","GLOBAL",0)~THEN REPLY @11 /*"I changed my mind. Can you tell me more about this assignment?" */ DO~SetGlobal("g-poiratresign","GLOBAL",0)~ + g-bbD220.C4
IF~Global("G-triplerquest","GLOBAL",1)~THEN REPLY @12 /*"I changed my mind. Can you tell me again about this assignment?" */ DO~~ + g-bbD220.C6
IF~~THEN REPLY @13 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.A1
@15 /*The wererat snorts. "Why would ya give a damn about it? Mind yar own business and don't stick yar nose in others' affairs." */
END
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @17 /*"How can you be sure it's not my affairs?" */ DO~~ + g-bbD220.A2
IF~CheckStatGT(Protagonist,15,STR)~THEN REPLY @18 /*"*Speak*. Don't make me repeat it once again." */ DO~~ + g-bbD220.A3
IF~~THEN REPLY @19 /*"I'm a collector of 'affairs.' Come on, tell me, what are you looking for?" */ DO~~ + g-bbD220.A4
IF~~THEN REPLY @20 /*"Alright then, I'll leave." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.A2
@22 /*"That's pretty clever, cutter... But what makes ya think I'm looking for something?" */
END
IF~~THEN REPLY @24 /*"It's obvious, no matter how hard you try to hide it." */ DO~~ + g-bbD220.C1
IF~CheckStatGT(Protagonist,15,STR)~THEN REPLY @25 /*"*Speak*. Don't make me repeat it once again." */ DO~~ + g-bbD220.A3
IF~~THEN REPLY @26 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.A3
@28 /*"Are ya threatening me? Ya must have a death wish to threaten me *here*." */
END
IF~GlobalLT("GOOD","GLOBAL",0)~THEN REPLY @30 /*"Yes. If you do not intend to follow my instructions, prepare for the consequences." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("g-ratalert","GLOBAL",1)~ EXIT
IF~~THEN REPLY @31 /*"I worded that wrong. I'm just dying to know." */ DO~~ + g-bbD220.A4
IF~~THEN REPLY @32 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.A4
@34 /*"That's not enough. But... what makes ya think I'm looking for something?" */
END
IF~~THEN REPLY @36 /*"I'm often looking for something myself. And I usually find it. It's kind of... my calling." */ DO~~ + g-bbD220.C1
IF~~THEN REPLY @37 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.C1
@39 /*"Interesting. Point for ya, stranger. But... can ya also keep a secret?" */
END
IF~~THEN REPLY @41 /*"Of course." */ DO~~ + g-bbD220.C4
IF~~THEN REPLY @42 /*"It depends on how much you're paying." */ DO~~ + g-bbD220.C2
IF~~THEN REPLY @43 /*"No." */ DO~SetGlobal("g-poiratresign","GLOBAL",1)~ + g-bbD220.C3
CHAIN IF~~THEN g-bbD220 g-bbD220.C2
@45 /*"Hmm," the wererat's ears twitch with interest. "Maybe there's a little jink to be had, but ya'll have to prove yarself first." */
END
IF~~THEN REPLY @47 /*"Wait, I'm still interested." */ DO~~ + g-bbD220.C4
IF~~THEN REPLY @48 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.C3
@50 /*The creature snorts angrily and swipes at you with its paw. "In that case, don't waste my time, biped." */
END
IF~~THEN REPLY @52 /*"Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.C4
@54 /*"Come closer so that no one hears it." */
END
IF~~THEN REPLY @56 /*"Is it that big of a secret?" */ DO~~ + g-bbD220.C5
IF~~THEN REPLY @57 /*Come closer. */ DO~~ + g-bbD220.C6
IF~~THEN REPLY @58 /*"In that case, thanks but no thanks." */ DO~SetGlobal("g-poiratresign","GLOBAL",1)~ + g-bbD220.C3
CHAIN IF~~THEN g-bbD220 g-bbD220.C5
@60 /*"Yes. I'd rather only you hear it and no one else." */
END
IF~~THEN REPLY @62 /*Come closer. */ DO~~ + g-bbD220.C6
IF~~THEN REPLY @63 /*"In that case, thanks but no thanks." */ DO~SetGlobal("g-poiratresign","GLOBAL",1)~ + g-bbD220.C3
CHAIN IF~~THEN g-bbD220 g-bbD220.C6
@65 /*"Let's start with the fact that my name is Poirat," your interlocutor says, tilting his head slightly downward. "The thing is, a few years ago, someone broke into the Fated Debt Collection Division and stole several valuable items. It was an incredibly audacious theft, referred to in certain circles as the 'heist of the decade.' As if it were some kind of competition..." */
=@66 /*"There was quite a hunt for the perpetrators, with many anglers looking for them. They found and killed one of them, took part of the loot, but it turned out that the item they were most eager to find was broken in half, and one half was missing, and without it, the item was completely useless. So they doubled the reward for the missing half. And ya know what?" */
END
IF~~THEN REPLY @68 /*"What?" */ DO~~ + g-bbD220.C7
IF~~THEN REPLY @69 /*"Don't keep me on tenterhooks." */ DO~~ + g-bbD220.C7
IF~~THEN REPLY @70 /*"I guess I'll find out soon." */ DO~~ + g-bbD220.C7
IF~Class(Protagonist,Thief) CheckStatGT(Protagonist,15,WIS)~THEN REPLY @71 /*"Heist of the decade? For some reason, it does sound familiar. Go on..." */ DO~~ + g-bbD220.C7
IF~GlobalGT("G-doomvsfate","GLOBAL",3)~THEN REPLY @72 /*"Debt Collection? So it was in Ysgard..." */ DO~~ + g-bbD220.C7
CHAIN IF~~THEN g-bbD220 g-bbD220.C7
@74 /*"And so far they haven't found anything. Whoever has it is a genius at hiding. Years have passed, and due to the lack of clues, many have suspended their search. Even the Fated probably don't count on recovering their lost items anymore. But ya know what?" */
=@75 /*"I intend to solve this case. Out of pure curiosity." */
END
IF~~THEN REPLY @77 /*"But why here?" */ DO~~ + g-bbD220.C8A
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @78 /*"Let me guess: this has to do with one of the patrons?" */ DO~~ + g-bbD220.C8B
CHAIN IF~~THEN g-bbD220 g-bbD220.C8A
@80 /*"That's quite an interesting story. Have ya heard of the plague of threes?" */
END
IF~~THEN REPLY @82 /*"No, I haven't" */ DO~SetGlobal("G-plagueof3","GLOBAL",1)~ + g-bbD220.C9
IF~~THEN REPLY @83 /*"I've heard of the *rule* of threes but not a plague..." */ DO~SetGlobal("G-plagueof3","GLOBAL",1)~ + g-bbD220.C9
CHAIN IF~~THEN g-bbD220 g-bbD220.C8B
@85 /*"Perhaps... But before ya start guessing, listen to this story. Have ya heard of the plague of threes?" */
END
IF~~THEN REPLY @87 /*"No, I haven't" */ DO~SetGlobal("G-plagueof3","GLOBAL",1)~ + g-bbD220.C9
IF~~THEN REPLY @88 /*"I've heard of the *rule* of threes but not a plague..." */ DO~SetGlobal("G-plagueof3","GLOBAL",1)~ + g-bbD220.C9
CHAIN IF~~THEN g-bbD220 g-bbD220.C9
@90 /*"A few months ago, a weird lunatic appeared in Sigil, claiming to have committed the heist. Naturally, the Harmonium officers began questioning him, but quickly determined he was just a headpike. In other words, a madman. A few days later, another one appeared, and then others. In total, there were a dozen or so perpetrators of the heist. Then, out of nowhere, they stopped showing up." */
=@91 /*"The patients were placed under observation, but their condition showed no signs of improvement. Nevertheless, when their statements were recorded, it turned out that they were all virtually identical. Setting aside their complete madness, linked to an omnipresent fixation on the number *three*, all of them had visited the Ditch before losing their minds." */
END
IF~~THEN REPLY @93 /*"So the thief may still be somewhere around here?" */ DO~~ + g-bbD220.C10
CHAIN IF~~THEN g-bbD220 g-bbD220.C10
@95 /*"I think so. But the Ditch is full of all sorts of weirdos, checking all these guys isn't easy, and my only lead is this theme of threes. It'll take me a while to figure everything out." */
=@96 /*"But ya... I can tell ya're not from around here... And ya're very observant. In a word, a perfect partner." */
=@97 /*"If ya conduct yar own parallel investigation and uncover something useful, I'll pay ya a hefty reward. What do ya say?" */
END
IF~~THEN REPLY @99 /*"I'll see what I can do." */ DO~SetGlobal("G-triplerquest","GLOBAL",2)~ SOLVED_JOURNAL @20229 + g-bbD220.C11C
IF~GlobalGT("LAW","GLOBAL",20)
~THEN REPLY @100 /*"To be precise, that wasn't *a* word but a full sentence." */ DO~~ + g-bbD220.C11B
IF~Global("G-triplerquest","GLOBAL",0)~THEN REPLY @101 /*"I'm not interested." */ DO~SetGlobal("G-triplerquest","GLOBAL",1)~ SOLVED_JOURNAL @20228 + g-bbD220.C3
IF~Global("G-triplerquest","GLOBAL",1)~THEN REPLY @102 /*"You know. I'm still not interested after all." */ DO~~ + g-bbD220.C3
CHAIN IF~~THEN g-bbD220 g-bbD220.C11B
@104 /*"What are ya, a modron? A box in the big city? Stop nitpicking, just tell me the nitty-gritty. Are ya in or out, biped?" */
END
IF~~THEN REPLY @106 /*"I'll see what I can do." */ DO~SetGlobal("G-triplerquest","GLOBAL",2)~ SOLVED_JOURNAL @20229 + g-bbD220.C11C
IF~~THEN REPLY @107 /*"I'm not interested." */ DO~SetGlobal("G-triplerquest","GLOBAL",1)~ SOLVED_JOURNAL @20228 + g-bbD220.C3
CHAIN IF~~THEN g-bbD220 g-bbD220.C11C
@109 /*"Great! So here's your first clue: that skeleton wandering around three local taverns. It seems to be affected by this whole plague of threes. I haven't been able to make contact with it, but ya're a little..." He looks you up and down. "A little... more in tune with its ways." */
END
IF~~THEN REPLY @111 /*"I'll talk to it. Can we talk about something else?" */ DO~~ + g-bbD220.questions
IF~~THEN REPLY @112 /*"I'll talk to it. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.questions
@114 /*"Don't sit here too long. Someone will think I'm making deals with a biped." */
END
IF~Global("G-rattemplequest","GLOBAL",1)~THEN REPLY @116 /*"Is there any temple to a wererat power around here?" */ DO~~ + g-bbD220.templequest
IF~Global("G-triplerquest","GLOBAL",0)~THEN REPLY @117 /*"But I do want to make deals. Will you tell me what you need or not?" */ DO~~ + g-bbD220.C4
IF~Global("G-triplerquest","GLOBAL",1)~THEN REPLY @118 /*"Can you remind me of the story of the plague of threes?" */ DO~~ + g-bbD220.repeatstory
IF~~THEN REPLY @119 /*"Alright. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.repeatstory
@121 /*"A few years ago, someone broke into the Fated building in Ysgard and stole several valuable items. It was an incredibly brazen heist, dubbed the 'heist of the decade' in certain circles. There was quite a manhunt for the culprits, with many anglers on their trail. They found and killed one of them, and recovered part of the loot, but it turned out that the item they were searching for most had been broken in half, and one half was missing; without it, the item was completely useless. So the reward for the rest was doubled." */
=@122 /*"And so far they haven't found anything. Whoever has it is a master at hiding. Years have passed, and due to the lack of clues, many have suspended their search. But a few months ago, a weird lunatic appeared in Sigil, claiming to have committed the heist. Naturally, the Harmonium officers began questioning him, but quickly determined he was just a headpike. In other words, a madman. A few days later, another one appeared, and then others. In total, there were a dozen or so perpetrators of the heist. Then, out of nowhere, they stopped showing up. That's the story... For now." */
END
IF~~THEN REPLY @124 /*"Thanks for reminding me the story. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.post
@126 /*"I'm all ears." */
END
IF~~THEN REPLY @128 /*"The culprit's helper was a skilled burglar Paw. After the heist, he fallen out with his partner and hid part of the loot. He soon died of grief over the loss of his daughter. His companion, furious, resurrected him to recover the item but to no avail. Paw was 'living' in the Ditch as an undead. He developed an obsession with threes, so they named him Tripler." */ DO~~ + g-bbD220.post1
CHAIN IF~~THEN g-bbD220 g-bbD220.post1
@130 /*"Incredulous. What about the missing item?" */
END
IF~~THEN REPLY @132 /*"Got it. Here." */ DO~TakePartyItem("g-bbi115")~ + g-bbD220.post2
CHAIN IF~~THEN g-bbD220 g-bbD220.post2
@134 /*Poirat picks up the jade jawbone with his left hand, while his right hand instinctively reaches into his pocket. For a moment, you catch a glimpse of a piece of jade that looks exactly like it. "Well, good job! I knew that Pa... that the thief didn't manage to get it out of Sigil. Now everything fits together nicely, yes..." */
END
IF~~THEN REPLY @136 /*"So... you knew everything." */ DO~~ + g-bbD220.post3
CHAIN IF~~THEN g-bbD220 g-bbD220.post3
@138 /*"Of course I knew. Do ya think I'm blind not to connect the plague of threes with Tripler? Not to learn about Krauss from Zegonz?" */
=@139 /*"Unfortunately, I was afraid to use the stone. But ya, a being of many incarnations, are made for this task, because I knew ya would resist the influence of madness." */
=@140 /*"And what ya saw... No one in Sigil, even Many-as-One, won't believe me! But I *must* write this down as a novel. Of course, I'll include yar participation. Tell me, what should I call ya?" */
END
IF~~THEN REPLY @142 /*"You deceived me. You took advantage of me. You put me at risk of being lost forever. You won't get away with this." */ DO~~ + g-bbD220.post4c
IF~~THEN REPLY @143 /*"Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD220.post4a
IF~~THEN REPLY @144 /*"I don't know my name." */ DO~~ + g-bbD220.post4b
CHAIN IF~~THEN g-bbD220 g-bbD220.post4a
@146 /*"Adahn! It was a pleasure working with ya. Of course, ya deserve a reward. Consider this jink as a share for finding the missing part of the key, as well as a percentage of the book's sales. Farewell!" */
END
IF~~THEN REPLY @148 /*"You deceived me. You took advantage of me. You put me at risk of being lost forever. You won't get away with this." */ DO~~ + g-bbD220.post4c
IF~~THEN REPLY @149 /*"Farewell." */ DO~SetGlobal("G-triplerquest","GLOBAL",11) AddexperienceParty(33333) GivePartyGold(3333) EscapeArea()~ SOLVED_JOURNAL @20238 EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.post4b
@151 /*"Fine, 'Nameless One'... It was a pleasure working with ya. Of course, ya deserve a reward. Consider this jink as a share for finding the missing part of the key, as well as a percentage of the book's sales. Farewell!" */
END
IF~~THEN REPLY @153 /*"You deceived me. You took advantage of me. You put me at risk of being lost forever. You won't get away with this." */ DO~~ + g-bbD220.post4c
IF~~THEN REPLY @154 /*"Farewell." */ DO~SetGlobal("G-triplerquest","GLOBAL",11) AddexperienceParty(33333) GivePartyGold(3333)  EscapeArea()~ SOLVED_JOURNAL @20238 EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.post4c
@156 /*"Uh... I don't think so!" A flash of steel gleams in the wererat's paw. */
END
IF~~THEN REPLY @158 /*Fight. */ DO~SetGlobal("G-triplerquest","GLOBAL",12) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) AddexperienceParty(33333)~ SOLVED_JOURNAL @20239 EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.templequest
@160 /*"Oh. I'm not religious. Ask Orville." */
END
IF~~THEN REPLY @162 /*"I have some other questions." */ DO~~ + g-bbD220.questions
IF~~THEN REPLY @163 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD220 g-bbD220.what
@165 /*"Uh... thief!" A flash of steel gleams in the wererat's paw. */
END
IF~~THEN REPLY @167 /*Fight. */ DO~SetGlobal("G-triplerquest","GLOBAL",12) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) AddexperienceParty(33333)~ SOLVED_JOURNAL @20239 EXIT