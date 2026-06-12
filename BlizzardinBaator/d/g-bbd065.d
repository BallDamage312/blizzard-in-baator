BEGIN g-bbD065
CHAIN IF~InParty("Grace") Global("UzuthorGrace","GLOBAL",0)~THEN g-bbD065 g-bbD065.start1
@0 /*When you approach, the creature turns to you, visibly towering above. Though it is of considerable height, its silhouette does not appear as well-built. Though you have a feeling it might be misguided, because that, what you see before you, is surely a fiend. It resembles something between a reptile and an insect and its carapace has a matte, sky blue colouring. Because of its multifaceted eyes you cannot tell anything besides that it surveys you. */
=@1 /*What do you want?" The voice coming from between its mandibles resembles a low buzzing of a bug. */
==g-bbd065 IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @2 /*When fiend's gaze reaches Fall-from-Grace, the buzzing becomes lower in tone. "Bringing a tanar'ri to Baator may be the cause of a quick end to your journey, mortal." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @3 /*I was a slave to baatezu, once. Your masters gave me back my freedom." */
END
IF~~THEN REPLY @5 /*"Greetings. I have a few questions." */ DO~SetGlobal("G-UzuthorGrace","GLOBAL",1)~ + g-bbD065.q
IF~~THEN REPLY @6 /*Actually, I was just passing through. */ DO~SetGlobal("G-UzuthorGrace","GLOBAL",1)~ + g-bbD065.end
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD065 g-bbD065.start2
@8 /*When you approach, the creature turns to you, visibly towering above. Though it is of considerable height, its silhouette does not appear as well-built. Though you have a feeling it might be misguided, because that, what you see before you, is surely a fiend. It resembles something between a reptile and an insect and its carapace has a matte, sky blue colouring. Because of its multifaceted eyes you cannot tell anything besides that it surveys you. */
=@9 /*What do you want?" The voice coming from between its mandibles resembles a low buzzing of a bug. */
END
IF~~THEN REPLY @11 /*"Greetings. I have a few questions." */ DO~~ + g-bbD065.q
IF~~THEN REPLY @12 /*Actually, I was just passing through. */ DO~~ + g-bbD065.end
CHAIN IF~Global("G-UzuthorName","GLOBAL",1) NumTimesTalkedToGT(0)~THEN g-bbD065 g-bbD065.start3
@14 /*Uzuthor looks upon you while moving its mandibles. "The mortal returns. */
END
IF~~THEN REPLY @16 /*"I have a few questions." */ DO~~ + g-bbD065.q2
IF~~THEN REPLY @17 /*Actually, I was just passing through. */ DO~~ + g-bbD065.end
CHAIN IF~Global("G-UzuthorName","GLOBAL",0) NumTimesTalkedToGT(0)~THEN g-bbD065 g-bbD065.start3
@19 /*The fiend turns to you again and its multifaceted eyes observe you in silence. */
END
IF~~THEN REPLY @21 /*"I have a few questions." */ DO~~ + g-bbD065.q
CHAIN IF~~THEN g-bbD065 g-bbD065.q
@23 /*"Questions. This is a rarity lately" The fiend speaks the words slowly, as if he chooses them carefully or did not use Common in a long time. "This should not come as a surprise. Mortals rarely arrive in Cania. Living, that is." */
END
IF~CheckStatGT(Protagonist,14,WIS) Global("UzuthorWisChk","GLOBAL",0)~THEN REPLY @25 /*"You are a Gelugon, aren't you?" */ DO~AddexperienceParty(20000) SetGlobal("G-UzuthorWisChk","GLOBAL",1) SetGlobal("G-UzuthorName","GLOBAL",1)~ + g-bbD065.m3
IF~Global("G-UzuthorName","GLOBAL",0)~THEN REPLY @26 /*"Do you have a name?" */ DO~SetGlobal("G-UzuthorName","GLOBAL",1)~ + g-bbD065.m5
IF~~THEN REPLY @27 /*"All around there is only snow and wailing wind. Even in this place there must be more than that." */ DO~~ + g-bbD065.m13
IF~~THEN REPLY @28 /*"Have you been anywhere outside Cania?" */ DO~~ + g-bbD065.m11
IF~~THEN REPLY @29 /*"Are you not hostile to me?" */ DO~~ + g-bbD065.m10
IF~~THEN REPLY @30 /*"Have you seen a beautiful raven-haired erynies? */ DO~~ + g-bbD065.fury
IF~~THEN REPLY @31 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.q2
@33 /*"More questions" fiend's buzzing voice carried on the frigid wind. "So be it." */
END
IF~CheckStatGT(Protagonist,14,WIS) Global("G-UzuthorWisChk","GLOBAL",0)~THEN REPLY @35 /*"You are a Gelugon, aren't you?" */ DO~AddexperienceParty(20000) SetGlobal("G-UzuthorWisChk","GLOBAL",1)~ + g-bbD065.m4
IF~~THEN REPLY @36 /*"All around there is only snow and wailing wind. Even in this place there must be more than that." */ DO~~ + g-bbD065.m13
IF~~THEN REPLY @37 /*"Have you been anywhere outside Cania?" */ DO~~ + g-bbD065.m11
IF~~THEN REPLY @38 /*"Are you not hostile to me?" */ DO~~ + g-bbD065.m10
IF~~THEN REPLY @39 /*"Have you seen a beautiful raven-haired erynies? */ DO~~ + g-bbD065.fury
IF~~THEN REPLY @40 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.m3
@42 /*The fiend turns his head, like in a gesture of curiosity. "The mortal is perceptive. Have you come across one of us already?" */
=@43 /*"My name is Uzuthor and yes, I am a Gelugon." */
END
IF~Global("G-StygiaMemory","GLOBAL",0)~THEN REPLY @45 /*Try to recall where you could meet a Gelugon. */ DO~AddexperienceParty(35000) SetGlobal("G-StygiaMemory","GLOBAL",1) FadeToColor([20.0],0)~ + g-bbD065.m8
IF~~THEN REPLY @46 /*"I do not remember my name." */ DO~~ + g-bbD065.m6
IF~~THEN REPLY @47 /*"My name is Adahn." */ DO~IncrementGlobal("Adahn","GLOBAL",1) IncrementGlobalOnceEx("LAW","GLOBAL",-1)~ + g-bbD065.m7
IF~~THEN REPLY @48 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.m4
@50 /*The fiend turns his head, like in a gesture of curiosity. "The mortal is perceptive. Have you come across one of us already?" */
END
IF~Global("G-StygiaMemory","GLOBAL",0)~THEN REPLY @52 /*Try to recall where you could meet a Gelugon. */ DO~AddexperienceParty(35000) SetGlobal("G-StygiaMemory","GLOBAL",1) FadeToColor([20.0],0)~ + g-bbD065.m9
IF~Global("G-UzuthorName","GLOBAL",0)~THEN REPLY @53 /*"Do you have a name?" */ DO~SetGlobal("G-UzuthorName","GLOBAL",1)~ + g-bbD065.m5
IF~~THEN REPLY @54 /*"I have other questions." */ DO~~ + g-bbD065.q2
IF~~THEN REPLY @55 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.m5
@57 /*"Yes. My name is Uzuthor." An alien sound of insect-like buzzing reaches your ears. "And you are..." */
END
IF~~THEN REPLY @59 /*"I do not remember my name." */ DO~~ + g-bbD065.m6
IF~~THEN REPLY @60 /*"My name is Adahn." */ DO~~ + g-bbD065.m7
CHAIN IF~~THEN g-bbD065 g-bbD065.m6
@62 /*Uzuthor says nothing at first, only glances at with no expression. "You do not remember... Or maybe you do not want to tell? Names have power, that is true." the fiend leans over to you. "Know this, mortal, that despite your little games, my name will not give you any power over me." */
END
IF~~THEN REPLY @64 /*"Nothing of the sort. I *really* can't remember my name." */ DO~~ + g-bbD065.m7
IF~~THEN REPLY @65 /*"Get your arm off me or I will take it as a souvenir." */ DO~~ + g-bbD065.m10
CHAIN IF~~THEN g-bbD065 g-bbD065.m7
@67 /*The creature is moving its mandibles, as if thinking about your response, after which it speaks only a single: "I understand." */
END
IF~~THEN REPLY @69 /*"I have other questions." */ DO~~ + g-bbD065.q2
IF~~THEN REPLY @70 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.m8
@72 /*When you gaze upon the gelugon, a distant memory comes back to you. Ahead of you there is a sea of moving ice stretching itself as far as the eye can see. You are standing on a small ice sheet, floating on the water and before you lies a dying fiend. Its sky-blue carapace is broken and pierced in a few places and ichor seeps from its wounds. Insect-like eyes stare at you without expression and though the Gelugon is dying, it does not make any sound, as if it did not want to give you any satisfaction from its suffering. [SPTR_01] */
=@73 /*You sit on the frigid surface, watching as the creature that thought you an easy target has its life seeping away. The ice sheet floats further away from the glacier it had broken off. "It seems you and I are staying together a bit longer." you say and Gelugon only tilts its head backwards, staring into the dark clouds above you. */
END
IF~~THEN REPLY @75 /*"I do not remember my name." */ DO~~ + g-bbD065.m6
IF~~THEN REPLY @76 /*"My name is Adahn." */ DO~~ + g-bbD065.m7
IF~~THEN REPLY @77 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.m9
@79 /*When you gaze upon the Gelugon, a distant memory comes back to you. Ahead of you there is a sea of moving ice stretching itself as far as the eye can see. You are standing on a small ice sheet, floating on the water and before you lies a dying fiend. Its sky-blue carapace is broken and pierced in a few places and ichor seeps from its wounds. Insect-like eyes stare at you without expression and though the Gelugon is dying, it does not make any sound, as if it did not want to give you any satisfaction from its suffering. [SPTR_01] */
=@80 /*You sit on the frigid surface, watching as the creature that thought you an easy target has its life seeping away. The ice sheet floats further away from the glacier it had broken off. "It seems you and I are staying together a bit longer." you say and Gelugon only tilts its head backwards, staring into the dark clouds above you. */
END
IF~~THEN REPLY @82 /*"I have other questions." */ DO~~ + g-bbD065.q2
IF~~THEN REPLY @83 /*"That is all I wanted to know." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.m10
@85 /*Gelugon takes a step backwards, tilting his head and bursts into clattering laughter. "Why would I want to fight you?" The laughter ceases. "You are in Cania, the Eighth Circle of Baator. This means that you are either powerful enough to destroy me or you are here by mere chance, so you will not live long. Or you are mad. One way or the other, I gain nothing fighting with you, mortal." */
END
IF~~THEN REPLY @87 /*"Well, in that case let us get back to my questions..." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.m11
@89 /*"No... Although I knew some, who traversed beyond the Eighth Circle." The fiend runs his claw across the armor on his chest. "None have returned." */
END
IF~Global("G-StygiaMemory","GLOBAL",1)~THEN REPLY @91 /*"I have seen Gelugons on the sea of moving ice." */ DO~~ + g-bbD065.m12
IF~~THEN REPLY @92 /*"Well, in that case let us get back to my questions..." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.m12
@94 /*Uzuthor leans over you, visibly intrigued. "Then indeed you have met the ice devils on your path. The place you speak of is Stygia, Fifth Circle of Hell. We come there to test ourselves in battle." */
=@95 /*"Indeed, you were lucky enough that you survived." the Gelugon straightens up. "Though considering how you look, of the latter I am not so sure." */
END
IF~~THEN REPLY @97 /*"Well, in that case let us get back to my questions..." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.m13
@100 /*"There are Fiends, Tormented souls and lost travelers, misfortuned to be here." You feel multifaceted eyes staring at you. "But Cania is not only that, what you see. Under the thick layer of snow many things can be found. Ancient things. Things, that it is better not to wake from their icy tombs." */
END
IF~~THEN REPLY @102 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @103 /*"Tell me about the Fiends." */ DO~~ + g-bbD065.m15
IF~~THEN REPLY @104 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @105 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.m14
@107 /*"Wailing souls suffering cold. Surely, you have met some on your path. Those are the Tormented." The fiend runs his claws against his chitin. "Do not pity them. They, unlike you, are not here by mistake." */
END
IF~~THEN REPLY @110 /*"Tell me about the Fiends." */ DO~~ + g-bbD065.m15
IF~~THEN REPLY @111 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @112 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.m15
@114 /*"You can see one of them before you." The fiend laughs, clattering his mandibles, but says nothing more. */
END
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @116 /*"Are all of you one unit or are there many... camps?" */ DO~~ + g-bbD065.f1
IF~!CheckStatGT(Protagonist,18,CHR)~THEN REPLY @117 /*"Are all of you one unit or are there many... camps?" */ DO~~ + g-bbD065.f2
IF~~THEN REPLY @118 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @119 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @120 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.m16
@122 /*A low, menacing buzz comes out the creature's throat.  "Have you not listened to what I said? Do not seek anything buried under the ice of Cania. There are things worse and older than the fiends of Baator." */
END
IF~~THEN REPLY @124 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @125 /*"Tell me about the Fiends." */ DO~~ + g-bbD065.m15
IF~~THEN REPLY @127 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.end
@129 /*The creature turns away from you, like you were just a part of the icy landscape. */
EXIT
CHAIN IF~~THEN g-bbD065 g-bbD065.f2
@132 /*The creature laughs and gazes upon the city of Mephistar, looming in the distance. "You wish you knew, mortal." */
END
IF~~THEN REPLY @135 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @136 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @137 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.f1
@139 /*The creature hesitates for a moment but eventually responds. "We all serve under Mephisto..." Gelugon pauses and sight audibly. "Under Molikroth, but each has a more local commander. And then there are the refugees from Mount Nebulat." */
END
IF~~THEN REPLY @141 /*"Tell me about this Molikroth." */ DO~~ + g-bbD065.f3
IF~~THEN REPLY @142 /*"Who is your commander?" */ DO~~ + g-bbD065.f4
IF~~THEN REPLY @143 /*"Refugees?" */ DO~~ + g-bbD065.f5
IF~~THEN REPLY @144 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @145 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @146 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.f3
@148 /*"Molikroth is the new Lord of the Eights. We all serve under Molikroth now. For centuries, we served Mephistopheles so a lot of the fiends have issues with following the new hierarchy... */
=@149 /*Gelugon pauses, almost concerned "And hierarchy is the pillar of this entire plane." */
END
IF~~THEN REPLY @151 /*"Are you one of these fiends?" */ DO~~ + g-bbD065.f6
IF~~THEN REPLY @152 /*"Who is your commander?" */ DO~~ + g-bbD065.f4
IF~~THEN REPLY @153 /*"Refugees?" */ DO~~ + g-bbD065.f5
IF~~THEN REPLY @154 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @155 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @156 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.f6
@158 /*It is not easy to read the insectoid eyes of your interlocutor, but you think you are being given a freezing cold look. "I was and always will be loyal the the Lord of the Eights Circle of Hell" */
END
IF~~THEN REPLY @160 /*"Who is your direct commander?" */ DO~~ + g-bbD065.f4
IF~~THEN REPLY @161 /*"You mentioned some refugees?" */ DO~~ + g-bbD065.f5
IF~~THEN REPLY @162 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @163 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @164 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.f4
@166 /*Uzuthor stays silent. */
END
IF~~THEN REPLY @168 /*"Tell me about this Molikroth, then." */ DO~~ + g-bbD065.f3
IF~~THEN REPLY @169 /*"You mentioned some refugees?" */ DO~~ + g-bbD065.f5
IF~~THEN REPLY @170 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @171 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @172 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.f5
@174 /*Some gelugons are not satisfied with their position on the hierarchy and elope to a distant glacial mountain - Nebulat, to govern themselves." Uzuthor shakes his mandibles in irritation. "Mephistopheles would have crushed them like bugs under his boot." */
END
IF~~THEN REPLY @176 /*"Who is your direct commander?" */ DO~~ + g-bbD065.f4
IF~~THEN REPLY @177 /*"Tell me about this Molikroth, then." */ DO~~ + g-bbD065.f3
IF~~THEN REPLY @178 /*"Tell me about the Tormented." */ DO~~ + g-bbD065.m14
IF~~THEN REPLY @179 /*"Tell me about those buried things. */ DO~~ + g-bbD065.m16
IF~~THEN REPLY @180 /*"I have other questions." */ DO~~ + g-bbD065.q2
CHAIN IF~~THEN g-bbD065 g-bbD065.fury
@182 /*The gelugon sneers. "Be careful, mortal, she does not love you, she just wants your soul." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @183 /*Fall-from-Grace seems slightly affected by the gelugon's remark. "It seems to me that erynies can feel affection. If succubi can, it seems natural that fiends of other sorts should be no different in this regard." */
END
IF~~THEN REPLY @185 /*"So... you have seen her?" */ DO~~ + g-bbD065.fury2
CHAIN IF~~THEN g-bbD065 g-bbD065.fury2
@187 /*Thee gelugon shrugs. "I have seen hundreds of them, most of them beautiful, half of them had hair black as tar, and all of them were similarly cruel." */
END
IF~~THEN REPLY @189 /*"I see. I have other questions." */ DO~~ + g-bbD065.q2