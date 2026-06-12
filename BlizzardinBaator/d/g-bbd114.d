BEGIN g-bbD114
CHAIN IF~GlobalGT("G-ishtarquest","GLOBAL",10) NumTimesTalkedToGT(0)~THEN g-bbD114 g-bbD114.epilogue
@0 /*The archaeologist is still here, now paying close attention to a tiny lion sculpture hidden in the corner. */
END
IF~~THEN REPLY @2 /*"I have returned from Mephistar, Vinrogé. Kind of..." */ DO~~ + g-bbD114.return
IF~~THEN REPLY @3 /*"Hello again. I have a few questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @4 /*Leave the man alone. */ DO~~ EXIT
CHAIN IF~GlobalGT("G-ishtarquest","GLOBAL",4) NumTimesTalkedToGT(0)~THEN g-bbD114 g-bbD114.finalafter
@6 /*You see the archaeologist studying the uncovered relief with the utmost care and meticulously copying the cuneiform writing into his journal. */
END
IF~~THEN REPLY @8 /*"Hello again, I have a few questions." */ DO~~ + g-bbD114.q
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @9 /*"I'm going to Mephistar soon. I may be on the lookout for these ancient tablets that you need." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
IF~~THEN REPLY @11 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~Global("G-ishtarquest","GLOBAL",3) NumTimesTalkedToGT(0) !ActuallyInCombat()~THEN g-bbD114 g-bbD114.rightafter
@13 /*"It's clear! May the protector of Murghôm bless this day, look at this magnificence!" The heavyset man shuffles toward the now visible artwork. [g-11401] */
END
IF~~THEN REPLY @15 /*Observe. */ DO~GiveObjectGoldGlobal("G-grotefendmoney","GLOBAL",Protagonist) ~ + g-bbD114.rightafter1
CHAIN IF~Global("G-ishtarquest","GLOBAL",3) NumTimesTalkedToGT(0) ActuallyInCombat()~THEN g-bbD114 g-bbD114.combatstart
@17 /*"Monsters are attacking us! Why are you talking to me now?" */
EXIT
CHAIN IF~Global("G-ishtarquest","GLOBAL",2) NumTimesTalkedToGT(0)~THEN g-bbD114 g-bbD114.getonwithit
@20 /*"Are you not going to help?" The archaeologist seems a little confused. */
END
IF~~THEN REPLY @22 /*"Oh, no, no. I will. I just need to hear what I need to do again." */ DO~~ + g-bbD114.todo2
IF~~THEN REPLY @23 /*"I'm getting to it. Be right back." */ DO~~ EXIT
IF~~THEN REPLY @24 /*"I'll think about it. Goodbye." */ DO~~ EXIT
CHAIN IF~GlobalLT("G-ishtarquest","GLOBAL",2) NumTimesTalkedToGT(0)~THEN g-bbD114 g-bbD114.comeback
@26 /*The researcher is still trying to study the stone, which is covered in an impenetrable shield of razorvine. With no success. */
END
IF~~THEN REPLY @28 /*"Hello again." */ DO~~ + g-bbD114.hello
IF~Global("G-ishtarquest","GLOBAL",1)~THEN REPLY @29 /*"Tell me about your problem again? Maybe I can help you." */ DO~~ + g-bbD114.reconsider
IF~~THEN REPLY @30 /*"I have a few questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @31 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD114 g-bbD114.start
@33 /*A small, round man is shuffling about by a large boulder covered almost entirely by razorvine. There is an air of academia about him, and the way he wields a fat tome with multiple bookmarks sticking out of it serves as the cherry on top. Every now and then, he reaches out to move a bit of the sharp, invasive plant out of the way to see the stone underneath, but he cuts his finger. He swears in a very polite fashion and pulls his hand back. */
END
IF~~THEN REPLY @35 /*"Hello." */ DO~~ + g-bbD114.firsthello
IF~~THEN REPLY @36 /*Observe the man work. */ DO~~ + g-bbD114.observework
IF~~THEN REPLY @37 /*"Goodbye." */ DO~~ + g-bbD114.goodbye
CHAIN IF~~THEN g-bbD114 g-bbD114.goodbye
@39 /*The man straightens up, startled. "Oh, for the secrets of Thalatos! I didn't see you there. Fare thee well, stranger," he politely says in a posh accent one would not expect around the Ditch. He is clearly confused as to why a complete stranger would come up to him and say "Goodbye." [g-11404] */
END
IF~~THEN REPLY @41 /*"Hello." */ DO~~ + g-bbD114.firsthelloalt
IF~~THEN REPLY @42 /*Say nothing. Just watch. */ DO~~ + g-bbD114.observework
IF~~THEN REPLY @43 /*Be true to your words. Walk away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.observework
@45 /*The man is clearly trying to study a portion of a rock face, covered by vines. Under the thick growth, there appears to be a sculpture or relief. However, it is impossible to see through the thick growth of the pesky plant. The book in the man's hand is titled "The Coming of Interloper Powers". */
END
IF~~THEN REPLY @47 /*"Hello." */ DO~~ + g-bbD114.firsthello
IF~~THEN REPLY @48 /*Walk away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.return
@50 /*"Impossible! Mephistar is not yet implemented!" */
EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.firsthello
@53 /*"Oh." The researcher seems surprised by anything outside his area of study. "Yes, hello indeed. I am so terribly sorry. I'm deeply invested in this project and as such cannot be present for a conversation. And now, you will excuse me." He turns away to face the stone wall. [g-11405] */
END
IF~~THEN REPLY @55 /*"What are you working on?" */ DO~~ + g-bbD114.work
IF~~THEN REPLY @56 /*Walk away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.firsthelloalt
@58 /*The researcher turns back to you. "A little bit backwards, aren't we? Start with goodbye and end with hello. That's very extravagant. Hello indeed. I am so terribly sorry. I'm deeply invested in this project at the moment and consequently unable to have a conversation. Excuse me." He turns away to face the stone wall. */
END
IF~~THEN REPLY @60 /*"What are you working on?" */ DO~~ + g-bbD114.work
IF~~THEN REPLY @61 /*Walk away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.hello
@63 /*The researcher sighs deeply. "Hello. Is there a point to yet another intrusion? Have you come to torment me?" */
END
IF~~THEN REPLY @65 /*"What are you working on?" */ DO~~ + g-bbD114.work
IF~~THEN REPLY @66 /*"I have a few questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @67 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.work
@69 /*As if a light turned on behind his eyes, the man lifts his tome and opens his mouth in excitement. "You're interested in my work? How unexpected! You may be the first person in this godsforsaken city to be interested in my work, other than the Fraternity. I..." He pauses to compose himself. [g-11402] */
=@70 /*"My name is Vinrogé. I am a scribe and a scholar from Thebestys. I specialize in Interloper powers, and this stone is potentially a groundbreaking discovery." [g-11403] */
END
IF~~THEN REPLY @72 /*"So you're not local. Where is Thebestys?" */ DO~~ + g-bbD114.thebestys
IF~~THEN REPLY @73 /*"You mean the Fraternity of Order?" */ DO~~ + g-bbD114.guvners
IF~~THEN REPLY @74 /*"What are interloper powers?" */ DO~~ + g-bbD114.interloper
IF~Global("G-Ishtarquest","GLOBAL",0)~THEN REPLY @75 /*"What's so special about this cliff?" */ DO~~ + g-bbD114.quest
IF~~THEN REPLY @76 /*"It was great talking to you, but I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.q
@78 /*"Ask away, my friend. Sharing knowledge is my duty." */
END
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @80 /*"I'm going to Mephistar soon. I may be on the lookout for these ancient tablets that you need." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
IF~GlobalGT("G-Ishtarquest","GLOBAL",10)~THEN REPLY @81 /*"I have returned, Vinrogé." */ DO~~ + g-bbD114.return
IF~Global("g-grotetamed","GLOBAL",1)~THEN REPLY @82 /*"Can you tell me again about the City of The Star?" */ DO~~ + g-bbD114.qstar
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @83 /*"Can you tell me again about the collection of tablets?" */ DO~~ + g-bbD114.qmephistar
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @84 /*"Can you tell me again about the museum in Mephistar?" */ DO~~ + g-bbD114.qmephistar2
IF~Global("g-groteunth","GLOBAL",1)~THEN REPLY @85 /*"Can you tell me again about the Anunnaki?" */ DO~~ + g-bbD114.quntehric
IF~Global("g-groteimpo","GLOBAL",1)~THEN REPLY @86 /*"Can you explain again why this relief is impossible?" */ DO~~ + g-bbD114.qimpossible
IF~Global("g-grotetamed","GLOBAL",1)~THEN REPLY @87 /*"Could you remind me why Ishtar is considered untamed?" */ DO~~ + g-bbD114.quntamed
IF~~THEN REPLY @88 /*"So, you're not local. Where is Thebestys again?" */ DO~~ + g-bbD114.thebestys
IF~~THEN REPLY @89 /*"Are you friends with the Fraternity of Order?" */ DO~~ + g-bbD114.guvners
IF~~THEN REPLY @90 /*"Your book... What are interloper powers?" */ DO~~ + g-bbD114.interloper
IF~Global("G-knowennead","GLOBAL",1)~THEN REPLY @91 /*"You mentioned you follow the Ennead. Who are they?" */ DO~SetGlobal("G-knowennead","GLOBAL",2)~ + g-bbD114.ennead
IF~Global("G-knowennead","GLOBAL",2)~THEN REPLY @92 /*"Can you tell me about the Ennead again?" */ DO~~ + g-bbD114.ennead
IF~Global("G-Ishtarquest","GLOBAL",0)~THEN REPLY @93 /*"What's so special about this cliff?" */ DO~~ + g-bbD114.quest
IF~~THEN REPLY @94 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.thebestys
@96 /*Vinrogé takes in a deep breath, as if recalling his home has brought him immediate relief from the filth of the Ditch. */
=@97 /*"Beset on the coast of the sweet river Ma'at, Thebestys is the divine realm of Thoth, the Enneadic patron god of knowledge and history, and my patron. I am a devoted historian, serving him by filling in the blank pages of his History of the Multiverse, which he is writing in the Great Library. He knows much of it, but there are some places where he can't go. Like Sigil." */
=@98 /*He looks at the slow, thick stream nearby. "This is certainly no Ma'at." */
END
IF~~THEN REPLY @100 /*"Thoth is an Enneadic deity? What does it mean?" */ DO~SetGlobal("G-knowennead","GLOBAL",2)~ + g-bbD114.ennead
IF~~THEN REPLY @101 /*"I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @102 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.guvners
@104 /*"Ah, yes, the Fraternity of Order. They're useful, but I wouldn't call them friends or peers. Their motivation for gathering information differs slightly from that of my patron." */
END
IF~~THEN REPLY @106 /*"I have a few more questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @107 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.interloper
@109 /*Vinrogé reacts instantly. "Oh, it's one of my favorite subjects. It's quite complex, especially from the planar point of view." [g-11407] */
=@110 /*"As the name suggests, these are deities coming from another plane, but in the context of the taxonomy of the planes, this concept is meaningless. All powers belong to the Outer Planes, and it makes no difference on which material worlds they manifest." */
=@111 /*"One could argue that a few of these gods don't belong. Some of them hold their realms in the transitive or inner planes. The pantheon of my patron, the Ennead, is especially wanderlusty. Anubis resides in the Astral Plane, Tefnut in the Plane of Water, Shu in the Plane of Air, and Geb in the Plane of Earth. A demigod, Sebek, even resides in a Prime Material crystal sphere. Not even the one where his worship originated." */
==g-bbd114 IF~Global("G-understandcosmology","GLOBAL",1)~THEN @112 /*You recall the connections between all the planes mentioned in Æ's tale. The scope of this pantheon is impressive. From what you remember, even the Prime Material Plane contains vast numbers of worlds, called crystal spheres, and each one may contain an infinite number of planets, with hundreds of countries and billions of beings. */
==g-bbd114 @113 /*He smiles haplessly. "Very much an interloper pantheon, I guess." */
==g-bbd114 @114 /*His demeanor turns academic again, and he continues. "But, from a purely Prime Material perspective, which, lest we forget, is a very important perspective for deities, the term 'interloper god' has a rather different meaning. You see, prime worlds are a deity's fuel, delivering belief and making their powers divine. A small deity could potentially be sustained solely by worshipers among plane-dwelling mortals, but that would give them only limited powers. Continents full of poor, innocent humanoids are where the real power is." */
END
IF~Global("G-knowennead","GLOBAL",0)~THEN REPLY @116 /*"You mentioned the Ennead. What is it?" */ DO~SetGlobal("G-knowennead","GLOBAL",2)~ + g-bbD114.ennead
IF~Global("G-knowennead","GLOBAL",0)~THEN REPLY @117 /*Allow him to continue. */ DO~SetGlobal("G-knowennead","GLOBAL",1)~ + g-bbD114.interloper2
IF~Global("G-knowennead","GLOBAL",0)~THEN REPLY @118 /*"That sounds like a scam." */ DO~SetGlobal("G-knowennead","GLOBAL",1)~ + g-bbD114.interinter
IF~!Global("G-knowennead","GLOBAL",0)~THEN REPLY @119 /*Allow him to continue. */ DO~~ + g-bbD114.interloper2
IF~!Global("G-knowennead","GLOBAL",0)~THEN REPLY @120 /*"That sounds like a scam." */ DO~~ + g-bbD114.interinter
CHAIN IF~~THEN g-bbD114 g-bbD114.interinter
@122 /*Vinrogé opens his mouth and lets out a sigh. "Well, that's one point of view. The local Athar faction has been trying to prove that this is the right way forward. I admit that it sounds feasible from a technical standpoint, but I disagree with it in general. If we stop 'supporting' the scam, entities that don't feed on belief will have the upper hand. While the likes of the Lady of Pain can seemingly handle power well, fiends, fey, and elementals could wreak havoc in the multiverse...." */
END
IF~~THEN REPLY @124 /*"All right. Continue, please." */ DO~~ + g-bbD114.interloper2
CHAIN IF~~THEN g-bbD114 g-bbD114.interloper2
@126 /*"So, the whole system works differently from the perspective of the Prime Material Plane. Those poor fellows are barely aware of the construction of the multiverse or how any of this works. Any old inhabitant of this city has a grasp of cosmography equal to that of the Prime Material's professors and sages." */
=@127 /*"Therefore, interloper deities of one particular crystal sphere are deities whose belief and worship migrated from another crystal sphere. That means any deity may be an interloper to some and a native deity to others. It's a complicated system that still requires systematizing." */
==g-bbd114 IF~Global("G-understandcosmology","GLOBAL",0)~THEN @128 /*Seeing the look on your face, Vinrogé hastens to offer a further explanation. "Ah, yes, the crystal spheres... The Prime Material Plane is divided into them. It works a little differently than the Inner or Outer Planes. Travel between the crystal spheres is much more complicated and usually requires special machines that traverse a kind of transitive plane in its own right, the phlogiston... I am sure that didn't clarify much for you... Well, I have been studying this issue for over 25 years. it is quite a vast subject." */
==g-bbd114 IF~Global("G-understandcosmology","GLOBAL",1)~THEN @129 /*"The Prime Material Plane is divided into these spheres. It works a little differently than the Inner or Outer Planes. Travel between the crystal spheres is much more complicated and usually requires special machines that traverse a kind of transitive plane in its own right, the phlogiston... I am sure that didn't clarify much for you... Well, I have been studying this issue for over 25 years. it is quite a vast subject." */
END
IF~Global("G-understandcosmology","GLOBAL",1)~THEN REPLY @131 /*"No, I got it. I am not unfamiliar with the cosmology; I had a pretty good teacher. Now, I have questions, though." */ DO~~ + g-bbD114.q
IF~Global("G-understandcosmology","GLOBAL",0)~THEN REPLY @132 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @133 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.quest
@135 /*Vinrogé turns to the cliff with anticipation. "Ah, this one. It is possibly a groundbreaking discovery. My magic tells me that there is a sculpture here, placed by a divine being, but it also dates the stone at four and a half thousand years old. Which is...well...impossible. Of course, the Lady had already banned all divine powers from Sigil by then. I would love to study what it depicts, but the razorvine is obstructing my progress." */
=@136 /*He looks back at you, sizing you up and scratching his chin. */
==g-bbd114 IF~Class(Protagonist,Mage)~THEN @137 /*"My magic is almost entirely divination-based, but you seem to be quite well-versed in the Art. Do you have any more destructive powers? Do you have something that could destroy these pesky vines?" */
==g-bbd114 IF~Class(Protagonist,Fighter)~THEN @138 /*"You seem to have no shortage of muscles and weapons. Do you have something that could destroy these pesky vines?" */
==g-bbd114 IF~Class(Protagonist,Thief)~THEN @139 /*"You look like an agile and clever fellow. Can you do some precise gardening and destroy these vines?" */
==g-bbd114 IF~!Class(Protagonist,Fighter) !Class(Protagonist,Mage) !Class(Protagonist,Thief)~THEN @140 /*"I am not quite sure what your specialty is, but you seem capable. Could you destroy these pesky vines?" */
END
IF~~THEN REPLY @142 /*"Sure, I can help you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",2)~ SOLVED_JOURNAL @20137 + g-bbD114.yes
IF~~THEN REPLY @143 /*"I can help you... for a price." */ DO~~ + g-bbD114.aks
IF~~THEN REPLY @144 /*"I'm not interested. Goodbye." */ DO~SetGlobal("G-ishtarquest","GLOBAL",1)~ SOLVED_JOURNAL @20136 EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.yes
@146 /*"Extraordinary!" Vinrogé seems ecstatic and waves his hands and the book around. "Please hurry! I am eager to start my work!" */
EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.aks
@149 /*"Oh, of course. I forget that I am no longer in Thebestys, where the pursuit of knowledge itself is payment enough. I am willing to pay, of course. Five hundred copper pieces for you, my friend." */
END
IF~~THEN REPLY @151 /*"Sure, it's a deal." */ DO~SetGlobal("G-ishtarquest","GLOBAL",2) SetGlobal("G-grotefendmoney","GLOBAL",500)~ SOLVED_JOURNAL @20137 + g-bbD114.yes
IF~CheckStatGT(Protagonist,17,CHR)~THEN REPLY @152 /*"Make it a thousand, and we have a deal." */ DO~SetGlobal("G-ishtarquest","GLOBAL",2) SetGlobal("G-grotefendmoney","GLOBAL",1000)~ SOLVED_JOURNAL @20137 + g-bbD114.yes2
IF~~THEN REPLY @153 /*"I'm not interested. Goodbye." */ DO~SetGlobal("G-ishtarquest","GLOBAL",1)~ SOLVED_JOURNAL @20136 EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.yes2
@155 /*"Yes, sure. I can do that." Vinrogé seems ecstatic and waves his hands and the book around. "Please hurry. I'm eager to start my work!" */
EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.todo2
@158 /*"Oh, well, Just get rid of the razorvine. I'm sure a capable lad like you can do it without much trouble. Vinrogé points at the cliff face covered in the ravenous plant." */
EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.rightafter1
@161 /*"Incredible! I suspected as much, but seeing it materialize before my very eyes is incredible. Fascinating!" The man inspects the ancient relief of a woman. [g-11406] */
=@162 /*"This symbol here proves it." He points at an eight-pointed star. "This is one of the Anunnaki, goddess of love and war, the magnificent Ishtar. She is known to be a very crafty and untamed deity, but sneaking this under the Lady's watch is entirely unbelievable." */
END
IF~Global("g-groteknowuntheirc","GLOBAL",0)~THEN REPLY @164 /*"Anunnaki?" */ DO~SetGlobal("g-groteknowuntheirc","GLOBAL",1)~ + g-bbD114.untheric
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @165 /*"Why is she untamed?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @166 /*"How is this possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
CHAIN IF~~THEN g-bbD114 g-bbD114.ennead
@168 /*"Ah, yes, the Ennead." Vinrogé smiles broadly at the mention of his faith. "The Ennead is the name of my pantheon, sometimes known as the Mulhorandi pantheon. It is an ancient religion, perhaps not as old as the Anunnaki but one of the oldest in all the planes. It is actually composed of *two* Enneads: the Great Ennead and the Small Ennead." */
=@169 /*"The Great Ennead is the 'royal nine' of our faith. In the divine city of Heliopolis, in Arcadia, Horus-Re, Osiris, and Isis reside, although... Isis is not bound there. Besides, Nephthys, Nut, Shu, and Tefnut hold high positions in the pantheon, just like my own patron, Thoth." */
=@170 /*Vinrogé pauses for a moment. "And so, the Great Ennead is completed by Set, the god of evil. May he protect us from an *even worse* evil." */
=@171 /*"The Small Ennead consists of equally influential deities, though they are somewhat more scattered across the planes, even within the Material Plane. They have no official leader, unlike the Great Ennead, which is led by Horus-Re, although some of these lesser deities look to Ptah for guidance. Generally speaking, the Small Ennead consists of Ptah, Bast, Geb, Seker, Anhur, Bes, Geb, and the demigods Sebek and Apshai." */
=@172 /*"Then there is Anubis, who serves the multiverse in a completely different way. Many believe that, because of his role, he ranks higher in the hierarchy of deities than all the rest. He is the god of deities and their guide after death. He watches over their peace on the Astral Plane." */
=@173 /*The archaeologist is clearly out of breath from his lengthy explanation. "As I mentioned, this is an ancient pantheon, full of serenity and wisdom," he smiles at the end. */
END
IF~~THEN REPLY @175 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @176 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.untheric
@178 /*"A lot will call them 'the Untheric pantheon,' but it is an unfortunate name because it does not reflect the pantheon's actual origin. Unther is a country in one crystal sphere that was inhabited by slave refugees from another crystal sphere. The faith in the Anunnaki died out in their original world, but these gods and goddesses survived as interloper deities through these slaves." */
=@179 /*"Their history parallels that of the Ennead, the pantheon of my patron. The slaves who arrived through these portals brought both of these religions to two neighboring countries. My gods ended up in Mulhorand. These religions share many similarities, and even common deities, such as Hathor, who is the reincarnation of Sekhmet. However, while I have access to many books and sources regarding my pantheon from before the extinction of their original followers, those concerning the Anunnaki are much harder to come by." */
=@180 /*"There are two generations of the Anunnaki - stemming from two separate systems, whose names are lost to time. Some of it is described in this book." He waves his fat tome around. "But it is one of the most obscure pantheons out there and the real story of these two generations becoming one is largely unclear. I know of a great collection of ancient tablets that could shine some light on this, but they are out of my reach." */
END
IF~!PartyHasItem("g-bbi026") GlobalGT("G-alviroquest","GLOBAL",1) ~THEN REPLY @182 /*"I heard about the Anunnaki god of fire, Girru. A deva here by the Ditch was looking for a sword forged in his realm." */ DO~~ + g-bbD114.girru1
IF~PartyHasItem("g-bbi026") GlobalGT("G-alviroquest","GLOBAL",1)~THEN REPLY @183 /*"I have a sword forged by the Anunnaki god of fire, Girru." */ DO~~ + g-bbD114.girru2
IF~Global("g-groteunth","GLOBAL",0) Global("g-groteknowuntheirc","GLOBAL",1)~THEN REPLY @184 /*"Great collection?" */ DO~SetGlobal("g-groteunth","GLOBAL",1) SetGlobal("G-ishtarquest","GLOBAL",5)~ SOLVED_JOURNAL @20140 + g-bbD114.mephistar
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @185 /*"You said Ishtar was untamed before, why?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @186 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @187 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @188 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @189 /*"I am going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
CHAIN IF~~THEN g-bbD114 g-bbD114.untamed
@191 /*"The old myths always portray her as a bit of a rebel and a huge risk taker. Realistically, it wouldn't be out of character for her to try something as crazy as this. She had been inactive in her city in Elysium for a while. Maybe she found trouble here..." */
END
IF~Global("g-groteunth","GLOBAL",0) Global("g-groteknowuntheirc","GLOBAL",1)~THEN REPLY @193 /*"You mentioned a great collection before. What was that about?" */ DO~SetGlobal("g-groteunth","GLOBAL",1) SetGlobal("G-ishtarquest","GLOBAL",5)~ SOLVED_JOURNAL @20140 + g-bbD114.mephistar
IF~Global("g-grotetamed","GLOBAL",0)~THEN REPLY @194 /*"City in Elysium?" */ DO~SetGlobal("g-grotetamed","GLOBAL",1)~ + g-bbD114.cityofstar
IF~Global("g-groteknowuntheirc","GLOBAL",0)~THEN REPLY @195 /*"You said she belonged to the Anunnaki? Can you tell me about them?" */ DO~SetGlobal("g-groteknowuntheirc","GLOBAL",1)~ + g-bbD114.untheric
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @196 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @197 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @198 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @199 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
CHAIN IF~~THEN g-bbD114 g-bbD114.impossible
@201 /*The man pouts his mouth in confusion. "That's just the thing, it's not possible. There were unsubstantiated rumors about a deity residing in Sigil about a hundred years ago. It was supposedly a former suitor of the Lady, but I never found any concrete evidence to support that claim. Gods are not welcome here. Ishtar would certainly face consequences..." */
END
IF~Global("g-groteunth","GLOBAL",0) Global("g-groteknowuntheirc","GLOBAL",1)~THEN REPLY @203 /*"You mentioned a great collection before. What was that about?" */ DO~SetGlobal("g-groteunth","GLOBAL",1) SetGlobal("G-ishtarquest","GLOBAL",5)~ SOLVED_JOURNAL @20140 + g-bbD114.mephistar
IF~Global("g-groteknowuntheirc","GLOBAL",0)~THEN REPLY @204 /*"You said she belonged to the Anunnaki? Can you tell me about them?" */ DO~SetGlobal("g-groteknowuntheirc","GLOBAL",1)~ + g-bbD114.untheric
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @205 /*"You said she was untamed before, why?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @206 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @207 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @208 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
CHAIN IF~~THEN g-bbD114 g-bbD114.mephistar
@210 /*"Yes, a great collection of ancient tablets was apparently stolen from Inanna's realm in the Nine Hells. Mephistopheles stole them centuries ago, looking for some ancient power to rewrite the planes. He didn't find any power, but now all of these precious tablets full of knowledge sit in Mephistar, not even locked away. The problem is that people cannot simply walk into Mephistar..." */
END
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @212 /*"You said Ishtar was untamed before, why?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @213 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @214 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @215 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @216 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
CHAIN IF~~THEN g-bbD114 g-bbD114.cityofstar
@218 /*"Oh, indeed. The City of the Star sits on the second layer of Elysium, alongside the coast of River Oceanus, nestled in a meadow between two breathtaking peaks. It used to be Ishtar's kingdom in the Outer Planes. But like I said, she doesn't sit on that throne any more. She was absent for a while, and our own deity of love, Isis, took over the city and its subjects." */
END
IF~Global("g-groteunth","GLOBAL",0) Global("g-groteknowuntheirc","GLOBAL",1)~THEN REPLY @220 /*"You mentioned a great collection before. What was that about?" */ DO~SetGlobal("g-groteunth","GLOBAL",1) SetGlobal("G-ishtarquest","GLOBAL",5)~ SOLVED_JOURNAL @20140 + g-bbD114.mephistar
IF~Global("g-groteknowuntheirc","GLOBAL",0)~THEN REPLY @221 /*"You said she belonged to the Anunnaki? Can you tell me about them?" */ DO~SetGlobal("g-groteknowuntheirc","GLOBAL",1)~ + g-bbD114.untheric
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @222 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @223 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @224 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @225 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
CHAIN IF~~THEN g-bbD114 g-bbD114.helphell
@227 /*The man throws his arms up in surprise with enough force to actually throw his book into the air. Even before it hits the ground, he almost shouts, "You?! Heading for Mephistar? Oh, sweet revelation! You have fallen straight from Heliopolis into my lap. You could be the key to it all!" [g-11408] */
=@228 /*"So, listen. In the heart of the city is a renowned hellish academy: The Hellfire School. It's an edifice made entirely out of green Baatorian steel. It's well guarded, and their secrets are unobtainable. But adjacent to that dreadnought of a building, they keep a publicly open museum where they store things they deem useless. As far as I know, these tablets are just sitting there. If you could copy their scripture or even purchase them, it would be invaluable, and you'd be well compensated! I can send to Thebestys for a statue made of solid gold for such treasure." */
END
IF~Global("g-groteknowuntheirc","GLOBAL",0)~THEN REPLY @230 /*"You said she belonged to the Anunnaki? Can you tell me about them?" */ DO~SetGlobal("g-groteknowuntheirc","GLOBAL",1)~ + g-bbD114.untheric
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @231 /*"You said Ishtar was untamed before, why?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @232 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @234 /*"Right. I'll see what I can do. So what now?" */ DO~~ + g-bbD114.contALT
CHAIN IF~~THEN g-bbD114 g-bbD114.cont
@236 /*"Well, thanks to you, I have a lot of details to study. I wish I had more material because the relief itself may not provide all the answers, but this is daily bread for archaeologists. Thank you again for your help, friend, and here is your reward." */
END
IF~Global("G-grotefendmoney","GLOBAL",1)~THEN REPLY @238 /*"Thank you. Good luck in your studies." */ DO~AddexperienceParty(15000) GiveGoldForce(500)~ EXIT
IF~Global("G-grotefendmoney","GLOBAL",0)~THEN REPLY @239 /*"Thank you. Good luck in your studies." */ DO~AddexperienceParty(15000) GiveItemCreate("SPWI105",Protagonist,1,1,0)~ EXIT
IF~Global("G-grotefendmoney","GLOBAL",2)~THEN REPLY @240 /*"Thank you. Good luck in your studies." */ DO~AddexperienceParty(15000) GiveGoldForce(1000)~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.contALT
@242 /*"Well, thanks to you, I have a lot of details to study. But I am also looking forward to your return from Mephistar. This is an amazing opportunity - I simply cannot wait. Thank you again for your help, my friend. Here's your reward so far." */
END
IF~Global("G-grotefendmoney","GLOBAL",1)~THEN REPLY @244 /*"Thank you. Good luck in your studies." */ DO~AddexperienceParty(15000) GiveGoldForce(500)~ EXIT
IF~Global("G-grotefendmoney","GLOBAL",0)~THEN REPLY @245 /*"Thank you. Good luck in your studies." */ DO~AddexperienceParty(15000) GiveItemCreate("SPWI105",Protagonist,1,1,0)~ EXIT
IF~Global("G-grotefendmoney","GLOBAL",2)~THEN REPLY @246 /*"Thank you. Good luck in your studies." */ DO~AddexperienceParty(15000) GiveGoldForce(1000)~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.qstar
@248 /*"The City of the Star sits on the second layer of Elysium, alongside the coast of River Oceanus, nestled in a meadow between two breathtaking peaks. It used to be Ishtar's kingdom in the Outer Planes. But like I said, she doesn't really sit on that throne. She was absent for a while, and the Enneadic deity of love, Isis, took over the city and its subjects." */
END
IF~~THEN REPLY @250 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @251 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.qmephistar
@253 /*"A great collection of ancient tablets was apparently stolen from Inanna's realm in the Nine Hells. Mephistopheles stole them centuries ago, looking for some ancient power to rewrite the planes. He didn't find any power, but now all of these precious tablets full of knowledge sit in Mephistar, not even locked away. The problem is that people just do not get to go to Mephistar...." */
END
IF~Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @255 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell2
IF~~THEN REPLY @256 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @257 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.qmephistar2
@259 /*"In the heart of the city is a renowned hellish academy: The Hellfire School. It's an edifice made entirely out of green Baatorian steel. It's well guarded, and their secrets are unobtainable. But adjacent to that dreadnought of a building, they keep a publicly open museum where they store things they deem useless. As far as I know, these tablets are just sitting there." */
END
IF~~THEN REPLY @261 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @262 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.quntehric
@264 /*"A lot will call them 'the Untheric pantheon,' but it is an unfortunate name because it does not reflect the pantheon's actual origin. Unther is a country in one crystal sphere that was inhabited by slave refugees from another crystal sphere. The faith in the Anunnaki died out in their original world, but these gods and goddesses survived as interloper deities through these slaves." */
=@265 /*"Their history parallels that of the Ennead, the pantheon of my patron. The slaves who arrived through these portals brought both of these religions to two neighboring countries. My gods ended up in Mulhorand. These religions share many similarities, and even common deities, such as Hathor, who is the reincarnation of Sekhmet. However, while I have access to many books and sources regarding my pantheon from before the extinction of their original followers, those concerning the Anunnaki are much harder to come by." */
=@266 /*"There are two generations of the Anunnaki - stemming from two separate systems, whose names are lost to time. Some of it is described in this book." He waves his fat tome around. "But it is one of the most obscure pantheons out there and the real story of these two generations becoming one is largely unclear. I know of a great collection of ancient tablets that could shine some light on this, but they are out of my reach." */
END
IF~!PartyHasItem("g-bbi026") GlobalGT("G-alviroquest","GLOBAL",1) ~THEN REPLY @268 /*"I heard about the Anunnaki god of fire, Girru. A deva here by the Ditch was looking for a sword forged in his realm." */ DO~~ + g-bbD114.girru1
IF~PartyHasItem("g-bbi026") GlobalGT("G-alviroquest","GLOBAL",1)~THEN REPLY @269 /*"I have a sword forged by the Anunnaki god of fire, Girru." */ DO~~ + g-bbD114.girru2
IF~~THEN REPLY @270 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @271 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.qimpossible
@273 /*The man pouts his mouth in confusion. "Gods are not welcome in Sigil. Ishtar would certainly face consequences for placing a holy symbol here with her own hands...." */
END
IF~~THEN REPLY @275 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @276 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.quntamed
@278 /*"The original myths always portray her as a bit of a rebel and a huge risk taker. Realistically, it wouldn't be out of character for her to try something as crazy as this." */
END
IF~~THEN REPLY @280 /*"I see. I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @281 /*"I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.helphell2
@283 /*The man throws his arms up in surprise with enough force to actually throw his book into the air. Even before it hits the ground, he almost shouts, "You?! Heading for Mephistar? Oh, sweet revelation! You've fallen straight from Heliopolis into my lap. You could be the key to it all!"  [g-11408] */
=@284 /*"So, listen. In the heart of the city is a renowned hellish academy: The Hellfire School. It's an edifice made entirely out of green Baatorian steel. It's well guarded, and their secrets are unobtainable. But adjacent to that dreadnought of a building, they keep a publicly open museum where they store things they deem useless. As far as I know, these tablets are just sitting there. If you could copy their scripture or even purchase them, it would be invaluable, and you'd be well compensated! I can send to Thebestys for a statue made of solid gold for such treasure." */
END
IF~~THEN REPLY @286 /*"I will keep a look out. In the meantime I have a few other questions." */ DO~~ + g-bbD114.q
IF~~THEN REPLY @287 /*"I will keep a look out. In the meantime I need to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.reconsider
@289 /*"Ah yes. I still haven't managed to get to the relief." */
=@290 /*He looks back at you, sizing you up and scratching his chin. */
==g-bbd114 IF~Class(Protagonist,Mage)~THEN @291 /*"My magic is almost entirely divination-based, but you seem to be quite well-versed in the Art. Do you have any more destructive powers? Do you have something that could destroy these pesky vines?" */
==g-bbd114 IF~Class(Protagonist,Fighter)~THEN @292 /*"You seem to have no shortage of muscles and weapons. Do you have something that could destroy these pesky vines?" */
==g-bbd114 IF~Class(Protagonist,Thief)~THEN @293 /*"You look like an agile and clever fellow. Can you do some precise gardening and destroy these vines?" */
==g-bbd114 IF~!Class(Protagonist,Fighter) !Class(Protagonist,Mage) !Class(Protagonist,Thief)~THEN @294 /*"I am not quite sure what your specialty is, but you seem capable. Could you destroy these pesky vines?" */
END
IF~~THEN REPLY @296 /*"Sure, I can help you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",2)~ SOLVED_JOURNAL @20137 + g-bbD114.yes
IF~~THEN REPLY @297 /*"I can help you... for a price." */ DO~~ + g-bbD114.aks
IF~~THEN REPLY @298 /*"I'm not interested. Goodbye." */ DO~SetGlobal("G-ishtarquest","GLOBAL",1)~ SOLVED_JOURNAL @20136 EXIT
CHAIN IF~~THEN g-bbD114 g-bbD114.girru1
@300 /*"Oh, indeed? Girru is a lesser deity, cut off from his worshipers in Unther. There was a terrible chapter in the history of one material world: Realmspace. The Anunnaki and the Ennead actually descended upon the Prime Material to defend their people during what is now remembered as the Orcgate Wars. Orcs invaded that world and their gods came with them in person. Humans could not fight gods, so some of these powers, including Girru, came to help." */
=@301 /*"Orcish deities proved tough as nails and a lot of our deities fell in battle. Of course the gods can only really be killed in their own domains, but dying in a Prime Material world severs the connection to that world. Girru was one of the fallen, slain by Luthic, the orcish goddess of... healing and homestead... ironically. His powers diminished and he no longer has connection to the country of Unther." */
END
IF~Global("G-ishtarquest","GLOBAL",4)~THEN REPLY @303 /*"You mentioned a great collection?" */ DO~SetGlobal("g-groteunth","GLOBAL",1) SetGlobal("G-ishtarquest","GLOBAL",5)~ SOLVED_JOURNAL @20140 + g-bbD114.mephistar
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @304 /*"You said Ishtar was untamed before, why?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @305 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @306 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @307 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @308 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell
CHAIN IF~~THEN g-bbD114 g-bbD114.girru2
@310 /*"Oh, indeed? Can I see?" Upon seeing the blade unsheathed he ponders for a while and eventually starts talking as if in a lecture hall. "Girru is a lesser deity, cut off from his worshipers in Unther. There was a terrible chapter in the history of one material world: Realmspace. The Anunnaki and the Ennead actually descended upon the Prime Material to defend their people during what is now remembered as the Orcgate Wars. Orcs invaded that world and their gods came with them in person. Humans could not fight gods, so some of these powers, including Girru, came to help." */
=@311 /*"Orcish deities proved tough as nails and a lot of our deities fell in battle. Of course the gods can only really be killed in their own domains, but dying in a Prime Material world severs the connection to that world. Girru was one of the fallen, slain by Luthic, the orcish goddess of... healing and homestead... ironically. His powers diminished and he no longer has connection to the country of Unther." */
END
IF~Global("G-ishtarquest","GLOBAL",4)~THEN REPLY @313 /*"You mentioned a great collection?" */ DO~SetGlobal("g-groteunth","GLOBAL",1) SetGlobal("G-ishtarquest","GLOBAL",5)~ SOLVED_JOURNAL @20140 + g-bbD114.mephistar
IF~Global("g-groteknowuntamed","GLOBAL",0)~THEN REPLY @314 /*"You said Ishtar was untamed before, why?" */ DO~SetGlobal("g-groteknowuntamed","GLOBAL",1)~ + g-bbD114.untamed
IF~Global("g-groteimpo","GLOBAL",0)~THEN REPLY @315 /*"How is a breach of the Lady's rules, like this relief, possible?" */ DO~SetGlobal("g-groteimpo","GLOBAL",1)~ + g-bbD114.impossible
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) !Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @316 /*"Right. So what now?" */ DO~~ + g-bbD114.cont
IF~Global("g-groteunth","GLOBAL",1) Global("g-grotetamed","GLOBAL",1)
 Global("g-groteimpo","GLOBAL",1) Global("G-ishtarquest","GLOBAL",6)~THEN REPLY @317 /*"Right. So what now?" */ DO~~ + g-bbD114.contALT
IF~Global("g-groteunth","GLOBAL",1) Global("G-ishtarquest","GLOBAL",5)~THEN REPLY @318 /*"I'm going to Mephistar soon. I may be on the lookout for these tablets for you." */ DO~SetGlobal("G-ishtarquest","GLOBAL",6) AddexperienceParty(15000)~ SOLVED_JOURNAL @20141 + g-bbD114.helphell