BEGIN g-bbD087
CHAIN IF~Global("G-alviroavailable","GLOBAL",0) !PartyHasItem("g-bbi026")~THEN g-bbD087 g-bbD087.start
@0 /*Although you have to force your way through the throng of onlookers and paupers, the sight that meets your eyes was worth the effort. Now you understand why this crowd has assembled without riots or violence.  */
=@1 /*The purity of this beautiful male figure contrasts starkly with the poverty of the Ditch, and his feathered wings clearly indicate his celestial identity. As you gaze, awestruck, at his angelic body, he is busy moving about the hospital. */
==g-bbd087 IF~GlobalGT("G-patientHelp","GLOBAL",2) !Global("G-patientHelp","GLOBAL",4)~THEN @2 /*With fewer patients to look after, he pauses briefly to look at you. */
==g-bbd087 IF~Global("G-patientHelp","GLOBAL",4)~THEN @3 /*With no more patients to care for, he pauses to look at you. */
==g-bbd087 IF~Global("G-alviroban","GLOBAL",1)~THEN @4 /*He recognizes you and... frowns. */
END
IF~Global("G-alviroban","GLOBAL",1)~THEN REPLY @6 /*"Hello, celestial. What made you descend from the Heavens to this dirty and unfriendly place?" */ DO~~ + g-bbD087.rage
IF~!GlobalGT("G-patientHelp","GLOBAL",2)~THEN REPLY @7 /*"Hello, celestial." */ DO~~ + g-bbD087.toobusy
IF~GlobalGT("G-patientHelp","GLOBAL",2) Global("G-alviroban","GLOBAL",0)~THEN REPLY @8 /*"Hello, celestial. What made you descend from the Heavens to this dirty and unfriendly place?" */ DO~SetGlobal("G-alviroavailable","GLOBAL",1) SetGlobal("G-alviroprequest","GLOBAL",10) AddexperienceParty(60000)~ SOLVED_JOURNAL @20183 + g-bbD087.A1
CHAIN IF~Global("G-alviroavailable","GLOBAL",1) Global("G-alviroquest","GLOBAL",0) !PartyHasItem("g-bbi026")~THEN g-bbD087 g-bbD087.start2
@10 /*"Yes, mortal? Do you need anything?" */
END
IF~~THEN REPLY @12 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~Global("G-knowanunnaki","GLOBAL",1)~THEN REPLY @13 /*"What are the Anunnaki?" */ DO~~ + g-bbD087.anunnaki
IF~~THEN REPLY @14 /*"Actually, I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @15 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~~THEN REPLY @16 /*"What are you doing here?" */ DO~~ + g-bbD087.doing
IF~GlobalGT("LAW","GLOBAL",-5) GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @17 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~~ + g-bbD087.mission
IF~!GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @18 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~SetGlobal("G-tooevilforalviro","GLOBAL",1)~ + g-bbD087.missionF
IF~!GlobalGT("LAW","GLOBAL",-5)  GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @19 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~SetGlobal("G-tooevilforalviro","GLOBAL",1)~ + g-bbD087.missionFalt
IF~~THEN REPLY @20 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go my way. See you around." */ DO~~ EXIT
CHAIN IF~Global("G-alviroavailable","GLOBAL",1) Global("G-alviroquest","GLOBAL",1) !PartyHasItem("g-bbi026")~THEN g-bbD087 g-bbD087.start2alt
@22 /*"Yes, mortal? Do you need anything?" */
END
IF~~THEN REPLY @24 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~Global("G-knowanunnaki","GLOBAL",1)~THEN REPLY @25 /*"What are the Anunnaki?" */ DO~~ + g-bbD087.anunnaki
IF~~THEN REPLY @26 /*"Actually, I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @27 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~~THEN REPLY @28 /*"What are you doing here?" */ DO~~ + g-bbD087.doing
IF~Global("G-alviroquest","GLOBAL",1) GlobalGT("LAW","GLOBAL",0) GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @29 /*"I've decided to help you after all." */ DO~~ + g-bbD087.missioncont
IF~~THEN REPLY @30 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go my way. See you around." */ DO~~ EXIT
CHAIN IF~Global("G-alviroavailable","GLOBAL",1) Global("G-alviroquest","GLOBAL",2) !PartyHasItem("g-bbi026")~THEN g-bbD087 g-bbD087.start3
@32 /*"Yes, mortal? Have you completed your task, or do you need something?" */
END
IF~~THEN REPLY @34 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~Global("G-knowanunnaki","GLOBAL",1)~THEN REPLY @35 /*"What are the Anunnaki?" */ DO~~ + g-bbD087.anunnaki
IF~~THEN REPLY @36 /*"I need healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @37 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.redeva
IF~~THEN REPLY @38 /*"Tell me about the sword we are looking for." */ DO~~ + g-bbD087.resword
IF~~THEN REPLY @39 /*"Who is this Kabatum the Summoner, who managed to kill a planetar?" */ DO~~ + g-bbD087.rekabatum
IF~~THEN REPLY @40 /*"Why is Kabatum called 'the Summoner'? Is he some kind of wizard?" */ DO~~ + g-bbD087.wizard
IF~~THEN REPLY @41 /*"I have nothing for you or against you, for now. Farewell." */ DO~~ EXIT
CHAIN IF~Global("G-alviroquest","GLOBAL",0) PartyHasItem("g-bbi026") OR(2) NumTimesTalkedToGT(0) NumTimesTalkedTo(0) ~THEN g-bbD087 g-bbD087.start8
@43 /*"Praise be to the Heavens! I recognize the Flame of Order at your side, the work of the god Girru! You have fulfilled my task... on accident!" */
=@44 /*"You will be rewarded handsomely for your pious deed. But first, satisfy my curiosity: how did you manage to wrest this holy weapon from the hands of the concordant killer? What argument did you use to convince him?" */
END
IF~~THEN REPLY @46 /*"I defeated him in open combat, ending his life once and for all." */ DO~SetGlobal("G-alviroquest","GLOBAL",3)~ SOLVED_JOURNAL @20169 + g-bbD087.freekilling
CHAIN IF~Global("G-alviroquest","GLOBAL",1) PartyHasItem("g-bbi026") NumTimesTalkedToGT(0)~THEN g-bbD087 g-bbD087.start9
@48 /*"Praise be to the Heavens! I recognize the Flame of Order, the work of the god Girru, at your side! You have fulfilled my task, even though you refused to accept it!" */
=@49 /*"You will be rewarded handsomely for your pious deed. But first, satisfy my curiosity: how did you manage to wrest this holy weapon from the hands of the concordant killer? What argument did you use to convince him?" */
END
IF~~THEN REPLY @51 /*"I defeated him in open combat, ending his life once and for all." */ DO~SetGlobal("G-alviroquest","GLOBAL",3)~ SOLVED_JOURNAL @20169 + g-bbD087.freekilling
CHAIN IF~NumTimesTalkedToGT(0) Global("G-alviroquest","GLOBAL",5) PartyHasItem("g-bbi026")~THEN g-bbD087 g-bbD087.start4
@53 /*The angel smiles when he sees you approaching with the holy sword strapped to your belt. However, he only speaks when you stop in front of him. */
=@54 /*"Praise be to the Heavens! I recognize the Flame of Order at your side, the work of the god Girru! You have fulfilled your task!" */
=@55 /*The celestial pauses for a moment and corrects himself, speaking with less enthusiasm and more respect. "No. You have fulfilled *my* task, for which I am deeply grateful." */
=@56 /*"You will be rewarded handsomely for your pious deed. But first, satisfy my curiosity: how did you manage to wrest this holy weapon from the hands of the concordant killer? What argument did you use to convince him?" */
END
IF~~THEN REPLY @58 /*Lie: "I broke into his house unnoticed and stole the sword from the center of his trophy gallery." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD087.steal
IF~!Dead("g-bb091") CheckStatGT(Protagonist,15,CHR)~THEN REPLY @59 /*Lie: "I fought Kabatum in a harrowing battle until, with great effort, I wrested the holy sword from his dead body." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD087.battlelieS
IF~!Dead("g-bb091") !CheckStatGT(Protagonist,15,CHR)~THEN REPLY @60 /*Lie: "I fought Kabatum in a harrowing battle until, with great effort, I wrested the holy sword from his dead body." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD087.battlelieF
IF~Dead("g-bb091")~THEN REPLY @61 /*"I defeated him in open combat, ending his life once and for all." */ DO~~ + g-bbD087.battlelieS
IF~!Dead("g-bb091")~THEN REPLY @62 /*"The concordant killer had to be convinced that I understood the concept of harmony and was working for it. You would not have succeeded, because as a celestial being you have a different concept of order than he does." */ DO~SetGlobal("G-alviroharmony","GLOBAL",1)~ + g-bbD087.harmony
IF~~THEN REPLY @63 /*"It is none of your business. However, I can assure you that the sword is coming into your possession in a legal and morally correct manner. I have made sure not to tarnish your honor, which is so important to you." */ DO~~ + g-bbD087.legal
CHAIN IF~~THEN g-bbD087 g-bbD087.A1
@65 /*The celestial focuses his attention on you and suddenly the entire surroundings seem brighter and cleaner. He responds in a gentle but firm voice. */
=@66 /*"I was sent on a mission. *sighs* But my nature prevents me from idly watching all the misery and suffering that surround me. I welcome you, mortal. Welcome." */
=@67 /*"I am Alviro of Mercuria, at your service. May I know your name?" */
END
IF~~THEN REPLY @69 /*"I don't remember my name." */ DO~~ + g-bbD087.name
IF~~THEN REPLY @70 /*"My memory is poor, but... call me Adahn." */ DO~IncrementGlobalOnceEx("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD087.adahn
CHAIN IF~~THEN g-bbD087 g-bbD087.name
@72 /*Your answer momentarily confuses the angel. "Amnesia? That is quite a problem. Unfortunately, I do not know any quick remedies for a sick mind." */
=@73 /*The angel looks at you closely, analyzing your scars, as if concerned about your appearance. "Can I help you in any way?" */
END
IF~~THEN REPLY @75 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @76 /*"Actually, I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @77 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~~THEN REPLY @78 /*"What are you doing here?" */ DO~~ + g-bbD087.doing
IF~GlobalGT("LAW","GLOBAL",-5) GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @79 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~~ + g-bbD087.mission
IF~~THEN REPLY @80 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go my way. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.adahn
@82 /*The angel looks at you closely, analyzing your scars, as if concerned about your appearance. "Can I help you in any way?" */
END
IF~~THEN REPLY @84 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @85 /*"Actually, I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @86 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~~THEN REPLY @87 /*"What are you doing here?" */ DO~~ + g-bbD087.doing
IF~GlobalGT("LAW","GLOBAL",-5) GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @88 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~~ + g-bbD087.mission
IF~~THEN REPLY @89 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go my way. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.heal
@91 /*"As many others do, although I can see you are not seriously injured. Please sit down, I will take care of you in a moment..." */
END
IF~~THEN REPLY @93 /*Sit down and wait. */ DO~FadeToColor([20.0],0)~ + g-bbD087.heal2
IF~~THEN REPLY @94 /*"I decided I don't need help, there are others who are more seriously injured than me. Take care." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.heal2
@96 /*When your time finally comes, the very presence of the angel puts you at ease. He skillfully and dispassionately dresses each wound, giving you the impression that such deeds are normal everyday occurrence to him. */
=@97 /*It does not take long, and all your wounds are healed. */
END
IF~~THEN REPLY @99 /*"Thank you. I feel much better." */ DO~FadeFromColor([20.0],0) RestNoSpells()~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.deva
@101 /*"I am a deva. A minor representative of the aasimon family, also known as angels. I came from Mount Celestia to spread order and peace everywhere I go, as you can see here." */
END
IF~~THEN REPLY @103 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @104 /*"I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @105 /*"What are you doing here?" */ DO~~ + g-bbD087.doing
IF~GlobalGT("LAW","GLOBAL",-5) GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @106 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~~ + g-bbD087.mission
IF~!GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @107 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~SetGlobal("G-tooevilforalviro","GLOBAL",1)~ + g-bbD087.missionF
IF~!GlobalGT("LAW","GLOBAL",-5)  GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @108 /*"Maybe it's you who needs help with that mission... or whatever it is you're doing here?" */ DO~SetGlobal("G-tooevilforalviro","GLOBAL",1)~ + g-bbD087.missionFalt
IF~~THEN REPLY @109 /*"Such crowds are not conducive to long conversations. Do your thing, and I'll go my way. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.doing
@111 /*"I heal wounds and diseases. I clean to rid the world of filth. I do all the little things that can help the poor and unfortunate, even if only a little." */
=@112 /*The expression of sadness disappears from the angel's face for a moment as he gives a pale smile. "It is a good way to spend my time. Besides, while working I can still wonder how to best fulfill the true purpose of my visit to Sigil." */
END
IF~~THEN REPLY @114 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @115 /*"I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @116 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~GlobalGT("LAW","GLOBAL",-5) GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @117 /*"And what is that 'true purpose'? Maybe I could help you fulfill it?" */ DO~~ + g-bbD087.mission
IF~!GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @118 /*"And what is that 'true purpose'? Maybe I could help you fulfill it?" */ DO~SetGlobal("G-tooevilforalviro","GLOBAL",1)~ + g-bbD087.missionF
IF~!GlobalGT("LAW","GLOBAL",-5)  GlobalGT("GOOD","GLOBAL",0)~THEN REPLY @119 /*"And what is that 'true purpose'? Maybe I could help you fulfill it?" */ DO~SetGlobal("G-tooevilforalviro","GLOBAL",1)~ + g-bbD087.missionFalt
IF~~THEN REPLY @120 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go my way. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.missionF
@122 /*The angel falls silent and looks deep into your eyes. You feel that Alviro is judging you, but not in terms of power. He is assessing your character. */
=@123 /*"I am sorry. I cannot tell you. Your empathy is insufficient." */
END
IF~~THEN REPLY @125 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @126 /*"I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @127 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~~THEN REPLY @128 /*"Will you tell me what you're doing here?" */ DO~~ + g-bbD087.doing
IF~~THEN REPLY @129 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go mine. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.missionFalt
@131 /*The angel falls silent and looks deep into your eyes. You feel that Alviro is judging you, but not in terms of power. He is assessing your character. */
=@132 /*"I am sorry. I cannot tell you. You are far too unpredictable." */
END
IF~~THEN REPLY @134 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @135 /*"I could use some healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @136 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.deva
IF~~THEN REPLY @137 /*"Will you tell me what you're doing here?" */ DO~~ + g-bbD087.doing
IF~~THEN REPLY @138 /*"Crowds like this aren't conducive to long conversations. You do your thing, and I'll go mine. See you around." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.mission
@140 /*The angel falls silent and looks deep into your eyes. You feel that Alviro is judging you, but not in terms of power. He is assessing your character. */
=@141 /*"I am ashamed to even consider entrusting my mission to someone else, but you might be able to actually help me. It is better to rely on others than to be stuck in a bind alone, is it not?" */
=@142 /*"I came here on a mission to retrieve the sacred sword of Nite-Sun, a noble servant of the god Girru. It was crafted by the Anunnaki deity of fire, whom he served."  */
=@143 /*"Unfortunately, Nite-Sun recently fell at the hands of a formidable opponent, who took the noble planetar's sword as a trophy and brought it to his home in Sigil." */
=@144 /*"I have come here to recover this weapon, this *relic*, and to ensure that it reaches the hands of someone worthy to wield it." */
END
IF~~THEN REPLY @146 /*"A weapon forged by a god? Tell me more about this sword." */ DO~SetGlobal("G-knowanunnaki","GLOBAL",1)~ + g-bbD087.sword
IF~~THEN REPLY @147 /*"I know that planetars are formidable warriors in their own right. Who is this killer of Nite-Sun?" */ DO~SetGlobal("G-knowconcordant","GLOBAL",1) SetGlobal("G-knowanunnaki","GLOBAL",1)~ + g-bbD087.kabatum1
IF~~THEN REPLY @148 /*"I'll try to recover that sword." */ DO~SetGlobal("G-knowanunnaki","GLOBAL",1)~ + g-bbD087.missioncont
IF~~THEN REPLY @149 /*"I'm sorry, but I don't think I'm up for hunting down a planetar killer. Goodbye." */ DO~SetGlobal("G-alviroquest","GLOBAL",1) SetGlobal("G-knowanunnaki","GLOBAL",1)~ SOLVED_JOURNAL @20167 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.sword
@151 /*The angel's voice becomes serious. You can tell that this mission is of the utmost importance to him. */
=@152 /*"The Flame of Order. This weapon was forged from the pure iron of Mount Celestia by the fire god Girru himself in his divine realm, Undying Flame." */
=@153 /*"The Flame of Order was more than a weapon, it was a symbol proclaiming Girru's domain. It has a long history; many unworthy opponents have fallen to its sharpness." */
=@154 /*"I knew Nite-Sun personally and saw him in action. I respected him and admired him greatly, which is why I volunteered to recover his sword." */
=@155 /*"Perhaps now you understand why reclaiming the Flame of Order and placing it in worthy hands is a personal matter to me." */
=@156 /*"And yet now I am stuck, unsure whether reclaiming this sacred weapon is worth risking my life.  I doubt Nite-Sun's killer will be pleased to face a follower of his last victim..." */
END
IF~~THEN REPLY @158 /*"I know that planetars are formidable warriors in their own right. Who is this killer of Nite-Sun?" */ DO~~ + g-bbD087.kabatum1
IF~~THEN REPLY @159 /*"I'll try to recover that sword." */ DO~~ + g-bbD087.missioncont
IF~~THEN REPLY @160 /*"I'm sorry, but I don't think I'm up for hunting down a planetar killer. Goodbye." */ DO~SetGlobal("G-alviroquest","GLOBAL",1)~ SOLVED_JOURNAL @20167 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.kabatum1
@162 /*"His name is Kabatum the Summoner. He is indeed a formidable opponent, which is why I plan to settle the matter through negotiation. I have a better chance of succeeding that way than in combat, as Kabatum is a concordant killer." */
END
IF~~THEN REPLY @164 /*"A concordant killer? Who is that?" */ DO~SetGlobal("G-knowconcordant","GLOBAL",1)~ + g-bbD087.kabatum1a
CHAIN IF~~THEN g-bbD087 g-bbD087.kabatum1a
@166 /*The serious expression on the angel's face becomes somewhat grim. The person you are talking about evokes obvious, personal enmity. */
=@167 /*"He is the spawn of the most blasphemous union known to the multiverse: that of a fiend and a celestial. A creature carrying the burden of holiness and sacrilege." */
END
IF~~THEN REPLY @169 /*"Can fiends and celestials even have children?" */ DO~~ + g-bbD087.kabatum1b
CHAIN IF~~THEN g-bbD087 g-bbD087.kabatum1b
@171 /*"Indeed. Celestials sometimes father children with mortals; these are called nephilim. Fiends, on the other hand, leave behind foul offspring called cambions." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @172 /*"Yeah. As if I haven't heard a hundred times as a child why I have a tail!"  */
==g-bbd087 @173 /*"Concordant killers are both half-fiends and half-celestials. Torn between the two extremes, they act according to their own whims, unable to find their place." */
==g-bbd087 @174 /*"There are very few of them in the multiverse. I have never met a concordant killer, so I do not know what to expect." */
END
IF~~THEN REPLY @176 /*"Tell me more about the sword that Nite-Sun wielded." */ DO~~ + g-bbD087.sword
IF~~THEN REPLY @177 /*"I'll try to recover that sword." */ DO~~ + g-bbD087.missioncont
IF~~THEN REPLY @178 /*"I'm sorry, but I don't think I'm up for hunting down a planetar killer. Goodbye." */ DO~SetGlobal("G-alviroquest","GLOBAL",1)~ SOLVED_JOURNAL @20167 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.missioncont
@180 /*The celestial thinks for a moment. "That is a good suggestion. As a mortal, your way of thinking is closer than mine to that of a concordant killer. Perhaps you will be able to communicate with him better." */
=@181 /*"I will trust your wisdom. Retrieve the sword of Nite-Sun, the blade of the Anunnaki, and bring it to me, and I will reward you with everything I brought with me on this journey." */
=@182 /*"Kabatum the Summoner resides in a marble mansion hidden behind the Vertical Sea. But keep my words in mind: the concordant killer is no ordinary opponent." */
=@183 /*"I am not sending you there because of your fighting skills, but because I trust your eloquence, hoping that you will get through to Kabatum's heart." */
END
IF~~THEN REPLY @185 /*"I won't disappoint you. I'll find common ground with the concordant killer and return here with the sword." */ DO~SetGlobal("G-alviroquest","GLOBAL",2) SetGlobal("G-knowconcordant","GLOBAL",1) SetGlobal("G-knowanunnaki","GLOBAL",1)~ SOLVED_JOURNAL @20168 EXIT
IF~~THEN REPLY @186 /*Look at Alviro. Does the celestial really trust you enough to charge you with retrieving the relic, without fearing that you will claim it for yourself? */ DO~SetGlobal("G-alviroquest","GLOBAL",2) SetGlobal("G-knowconcordant","GLOBAL",1) SetGlobal("G-knowanunnaki","GLOBAL",1)~ SOLVED_JOURNAL @20168 + g-bbD087.missioncont2
CHAIN IF~~THEN g-bbD087 g-bbD087.missioncont2
@188 /*Before you leave, the angel returns your gaze and assesses you again. It is clear that he does not trust you completely. But in his eyes, you also notice a hint of... disregard, perhaps? He believes that if you deceive him, it will be easier for him to track you down than the concordant killer. */
END
IF~~THEN REPLY @190 /*"In that case, I will set out to recover the weapon, by word or by deed." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.resword
@192 /*The angel's voice becomes serious. You can tell that this mission is of the utmost importance to him. */
=@193 /*"The Flame of Order. This weapon was forged from the pure iron of Mount Celestia by the fire god Girru himself in his divine realm, Undying Flame." */
=@194 /*"The Flame of Order was more than a weapon, it was a symbol proclaiming Girru's domain. It has a long history; many unworthy opponents have fallen to its sharpness." */
=@195 /*"I knew Nite-Sun personally and saw him in action. I respected him and admired him greatly, which is why I volunteered to recover his sword." */
=@196 /*"Perhaps now you understand why reclaiming the Flame of Order and placing it in worthy hands is a personal matter to me." */
=@197 /*"And yet now I am stuck, unsure whether reclaiming this sacred weapon is worth risking my life.  I doubt Nite-Sun's killer will be pleased to face a follower of his last victim..." */
END
IF~~THEN REPLY @199 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @200 /*"I need healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @201 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.redeva
IF~~THEN REPLY @203 /*"Who is this Kabatum the Summoner that managed to kill a planetar?" */ DO~~ + g-bbD087.rekabatum
IF~~THEN REPLY @204 /*"Why do they call this Kabatum a Summoner? Is he some kind of wizard?" */ DO~~ + g-bbD087.wizard
IF~~THEN REPLY @205 /*"I don't need anything from you at the moment. Take care." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.rekabatum
@207 /*"He is indeed a formidable opponent, which is why I intend to settle the matter through negotiation. In contrast to me, you are not a celestial. As a mortal, you might have a better chance of reaching an understanding with him." */
=@208 /*"And as to his nature..." The serious expression on the celestial's face becomes somewhat grim. The person you are talking about evokes obvious, personal enmity. */
=@209 /*"He is the spawn of the most blasphemous union known to the multiverse: that of a fiend and a celestial. A creature carrying the burden of holiness and sacrilege." */
=@210 /*"Celestials sometimes father children with mortals; these are called nephilim. Fiends, on the other hand, leave behind foul offspring called cambions." */
=@211 /*"Concordant killers are both half-fiends and half-celestials. Torn between the two extremes, they act according to their own whims, unable to find their place." */
=@212 /*"There are very few of them in the multiverse. I have never met a concordant killer, so I do not know what to expect." */
END
IF~~THEN REPLY @214 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @215 /*"I need healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @216 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.redeva
IF~~THEN REPLY @217 /*"Tell me about the sword we're looking for." */ DO~~ + g-bbD087.resword
IF~~THEN REPLY @218 /*"Why do they call this Kabatum a Summoner? Is he some kind of wizard?" */ DO~~ + g-bbD087.wizard
IF~~THEN REPLY @219 /*"I don't need anything from you at the moment. Take care." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.wizard
@221 /*"From what I have heard about Kabatum's household, you can find there are various creatures that serve him. He sometimes sends them out on minor missions." */
END
IF~~THEN REPLY @223 /*Don't say anything. */ DO~~ + g-bbD087.wizardinter
IF~~THEN REPLY @224 /*"What kind of creatures?" */ DO~~ + g-bbD087.wizardinter
CHAIN IF~~THEN g-bbD087 g-bbD087.wizardinter
@226 /*"Lower-ranking rilmani. Minor elementals. A few weaker fiends. I also spoke with a celestial, a musteval, who supplied him with provisions." */
=@227 /*The angel pauses for a moment. "However, in the accounts I have heard, Kabatum's main weapon is his magic. It does not seem likely then that he relies on outside help in combat." */
=@228 /*"In his fight with Nite-Sun, he had an ally in the form of an arrow demon... a dangerous tanar'ri. It is possible that he uses the protection of the creatures he summons." */
END
IF~~THEN REPLY @230 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @231 /*"I need healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @232 /*"I don't mean to be rude, but... what *are* you?" */ DO~~ + g-bbD087.redeva
IF~~THEN REPLY @233 /*"Tell me about the sword we're looking for." */ DO~~ + g-bbD087.resword
IF~~THEN REPLY @234 /*"Who is this Kabatum the Summoner that managed to kill a planetar?" */ DO~~ + g-bbD087.rekabatum
IF~~THEN REPLY @236 /*"I don't need anything from you at the moment. Take care." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.redeva
@238 /*"I am a deva. A minor representative of the aasimon family, also known as angels. I came from Mount Celestia to spread order and peace everywhere I go, as you can see here." */
END
IF~~THEN REPLY @240 /*"Do you have anything to sell?" */ DO~StartStore("g-bb#004",Protagonist)~ EXIT
IF~~THEN REPLY @241 /*"I need healing." */ DO~~ + g-bbD087.heal
IF~~THEN REPLY @242 /*"Tell me about the sword we're looking for." */ DO~~ + g-bbD087.wizard
IF~~THEN REPLY @243 /*"Who is this Kabatum the Summoner that managed to kill a planetar?" */ DO~~ + g-bbD087.resword
IF~~THEN REPLY @244 /*"Why to they call this Kabatum a Summoner? Is he some kind of wizard?" */ DO~~ + g-bbD087.rekabatum
IF~~THEN REPLY @245 /*"I don't need anything from you at the moment. Take care." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.steal
@247 /*The celestial's face contorts when he hears this response. "A holy weapon recovered through theft? How unworthy. This is how the eladrin act, not the devas. But let this disgrace fall on me, not on you. I gave you this mission, and you have fulfilled it." */
=@248 /*The angel bites his lip. "I will atone for this defilement. Deservedly so, since I have succumbed to fear and laziness by entrusting my mission to someone else." */
END
IF~GlobalGT("LAW","GLOBAL",10) GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @250 /*"And so..." */ DO~~ + g-bbD087.conclusionLG
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @251 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.battlelieF
@253 /*"Is that so?" the angel asks, looking down at you. "You do not look strong enough to face the concordant killer. Even Nite-Sun was not powerful enough to do that. It seems to me that you have made a deal with the concordant killer... or found even stronger allies." */
=@254 /*"It does not matter. I wash my hands of your deeds. What matters is that you have managed to recover the holy sword." */
END
IF~GlobalGT("LAW","GLOBAL",10) GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @257 /*"And so..." */ DO~~ + g-bbD087.conclusionLG
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @258 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.battlelieS
@260 /*"You defeated the concordant killer in battle?" the angel asks with surprise on his face. "In open combat? I have heard much about the power of these beings, and Kabatum was an experienced and battle-hardened opponent!" */
=@261 /*The celestial bows his head slightly, respect evident in his voice and gaze. "I clearly underestimated the ingenuity and zeal of mortals. You have accomplished a great feat by defeating Kabatum the Summoner." */
=@262 /*"...Although I am not sure if he was an individual who deserved to die for his deeds. Even if he killed those like me, many a terrible fiend also fell at his hands." */
END
IF~~THEN REPLY @264 /*"Perhaps Kabatum wasn't evil to the bone. However, he left me no choice, and I had to respond with an attack to protect my own life. I regret that this situation arose, but what is done is done." */ DO~~ + g-bbD087.diss1
IF~~THEN REPLY @265 /*"It's not for me to judge. I used force when there was no other option, and the effort I put into it deserves to be rewarded." */ DO~~ + g-bbD087.diss2
IF~~THEN REPLY @266 /*"Kabatum certainly deserved to die. Despite his neutrality, he killed solely on a whim, calling it 'balance'." */ DO~~ + g-bbD087.diss3
CHAIN IF~~THEN g-bbD087 g-bbD087.diss1
@268 /*"Compassion for a concordant killer? Few would show such understanding... and nobility. Although as a celestial and a mortal we perceive the destruction of such a being differently, I am not free of the feelings you describe." */
=@269 /*"I join you in your grief over the defeated rival, for mourning what could have been avoided is an inevitable trait of celestials. Such is the price of goodness. And you... you have good in you." */
END
IF~GlobalGT("LAW","GLOBAL",10) GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @271 /*"And so..." */ DO~~ + g-bbD087.conclusionLG
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @272 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.diss2
@274 /*"Is that so? Every being should be aware of the consequences of their actions, especially ones as momentous as the taking of a life. Kabatum certainly was not. I see he met his match." */
END
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @277 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.diss3
@279 /*"Yes. Your words are wise. It is astounding how some people confound neutrality with indifference, and bringing balance with chaos, when both inevitably lead to evil. Kabatum thought he was maintaining balance in the Great Wheel, but in fact he succumbed to the whispers of his fiendish blood." */
END
IF~GlobalGT("LAW","GLOBAL",10) GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @281 /*"And so..." */ DO~~ + g-bbD087.conclusionLG
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @282 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.harmony
@284 /*The angel contemplates your words for a few moments. "Interesting. Many highly intelligent individuals I know treat the adaptability of mortals as a weakness. Now, however, you prove to me that it can be a strength. I shall reflect upon this." */
END
IF~~THEN REPLY @286 /*"This is one of the principles of harmony that Kabatum adheres to. Not everything is as certain as it seems, and what is considered a weakness can be made into strength." */ DO~~ + g-bbD087.harmony1
CHAIN IF~~THEN g-bbD087 g-bbD087.harmony1
@288 /*"I do not know if I can agree with that. Your words sound like a rebellion against the natural laws of the multiverse." */
=@289 /*"But never mind. Let us put philosophical disputes aside. I came here for the planetar's sword, not as some proselytizing missionary. Although I do hope you will convert one day." */
END
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @292 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.legal
@294 /*The angel looks at you suspiciously. "Very well," he finally replies. "I will take your word for it. I see that you have not tarnished my honor with wickedness. And if I am wrong, my mistake will bring me shame." */
END
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @297 /*"And so..." */ DO~~ + g-bbD087.conclusion
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusionLG
@299 /*"And so it is done. The Flame of Order returns to the Heavens once more. I know it is disgraceful, but the only reward I can offer you is the money I brought with me..." */
=@300 /*"Although..." The angel pauses for a moment and then whispers one incomprehensible word, examining you intently. His eyes emit a soft glow. You feel as if someone is peering into your thoughts and your soul.  */
END
IF~~THEN REPLY @302 /*"I don't know what you're doing to me, but stop it at once!"  */ DO~~ + g-bbD087.conclusionLGa
IF~~THEN REPLY @303 /*Let him continue. */ DO~~ + g-bbD087.conclusionLGa
IF~Class(Protagonist,Mage)~THEN REPLY @304 /*The celestial is definitely using some kind of magic. Focus and try to recognize what kind. */ DO~~ + g-bbD087.conclusionLGb
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusionLGb
@306 /*You identify the spell - it is alignment detection, which probes the psyche of living beings. The celestial is screening you for some purpose and he finishes just as you have realized it. */
END
IF~~THEN REPLY @308 /*Continue. */ DO~~ + g-bbD087.conclusionLGa
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusionLGa
@310 /*"Forgive me for this test, mortal. I thought you deserved a better reward than gold, but I was not sure... Now I am." */
=@311 /*"You bear many scars. You have gone through much chaos and temptation... and yet I see that in all this physical and spiritual filth that surrounds us, even though your appearance suggests terrible experiences, you are guided by law and virtue." */
=@312 /*"That is why I want to offer you something more valuable these soulless copper disks." */
END
IF~~THEN REPLY @314 /*"You honor me. I am listening." */ DO~~ + g-bbD087.conclusionLGa1
IF~~THEN REPLY @315 /*"I am open to suggestions, but do not try to make me an errand boy exploring the alleys of Sigil on noble missions..." */ DO~~ + g-bbD087.conclusionLGa1
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusionLGa1
@317 /*"The Flame of Order, the holy sword I was supposed to recover... I did not really receive any specific instructions to whom I should give it. I just had to make sure it ended up in worthy hands..." */
=@318 /*"... And I think that has already happened, the moment you took it from the concordant killer." */
=@319 /*"I want to say that the Flame of Order should be your reward... as long as you swear to use it for noble purposes." As he utters the words, Alviro straightens up. His expression grows serious, and his voice sounds almost binding. */
END
IF~~THEN REPLY @321 /*"I can't promise you that. Although it is difficult to explain, my nature... is changing. I am not always the same person I am now." */ DO~~ + g-bbD087.conclusionLGa1a
IF~~THEN REPLY @322 /*"Very well, then. I swear to use this holy weapon only against the forces of evil and chaos, for the purpose of bringing order to the multiverse." */ DO~~ + g-bbD087.conclusionLGa1b
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusionLGa1a
@324 /*The celestial looks at you with surprise and disappointment... but also with understanding. "Very well, then. I have already learned today that appearances can be deceiving. However, after your admission of such weakness, I see that my judgment was correct. Your... current personality is indeed noble. May it remain so." */
=@325 /*"In that case, I can do nothing more than give you all the gold I have... and the supplies I have left from my journey. Take them. May they support you in your own mission." */
=@326 /*Having taken the Flame of Order and handed you the bag unfastened from his belt, the celestial spreads his wings for flight. "Farewell, mortal. May you not stray from the path you have chosen." */
END
IF~~THEN REPLY @328 /*"Farewell. May the winds be favorable to you." */ DO~SetGlobal("G-alviroquest","GLOBAL",6) GiveGoldForce(7777) GiveItemCreate("HEARCHRM",Protagonist,5,0,0) TakePartyItem("g-bbi026") PlaySound("SPIRI05")  StickySinisterPoof("S095CAST",Myself,1) DestroySelf() AddexperienceParty(50000)~ SOLVED_JOURNAL @20172 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusionLGa1b
@330 /*The angel nods with a satisfied smile. "Very well, wield the Flame of Order. May it serve you well, keeping the lesser evils at bay and putting the greater evils down, as was foretold when it was forged." */
=@331 /*Leaving the Flame of Order at your side, the angel speaks his last words amiably and with a smile. "Farewell, mortal. May you succeed in your own mission, whether alone or with the help from kind souls, as I was able to do." */
END
IF~~THEN REPLY @333 /*"Farewell. May the winds be favorable to you." */ DO~SetGlobal("G-alviroquest","GLOBAL",7) PlaySound("SPIRI05")  StickySinisterPoof("S095CAST",Myself,1) DestroySelf() AddexperienceParty(80000)~ SOLVED_JOURNAL @20173 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion
@335 /*"And so it is done. The Flame of Order returns to the Heavens once more. I know it is disgraceful, but the only reward I can offer you is the money I brought with me..." */
END
IF~~THEN REPLY @337 /*"I don't need payment. I have enough money already, and the satisfaction of doing a good deed is much more precious these days." */ DO~~ + g-bbD087.conclusion1
IF~~THEN REPLY @338 /*"What sounds disgraceful to you may mean *life* in Sigil. I will accept the money, especially in such decent quantity."    */ DO~~ + g-bbD087.conclusion2
IF~~THEN REPLY @339 /*"Really? I'm sure you will find something more to honor the recovery of this sacred relic, as well as my effort and time." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD087.conclusion3
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion1
@341 /*The angel looks at you with surprise, then nods his head in respect. His movement smoothly transitions into a bow as he divests you of Flame of Order. */
=@342 /*"Your attitude is very noble. The inhabitants of Sigil could, and *should*, learn from you. Truly, it is a great honor to meet a person who not only selflessly devotes their time to others, but also appreciates the value of such behavior..." */
=@343 /*"...and I would also add that it is a beautiful moment for me personally. I have missed those since I left the Heavens." He smiles. */
=@344 /*"Thank you, mortal. My companions in the Heavens will hear of your honesty and kindness. And I am sure that it will be counted in your favor." */
END
IF~~THEN REPLY @346 /*"Farewell. May the winds be favorable to you." */ DO~SetGlobal("G-alviroquest","GLOBAL",6) TakePartyItem("g-bbi026") IncrementGlobal("GOOD","GLOBAL",3) PlaySound("SPIRI05")  StickySinisterPoof("S095CAST",Myself,1) DestroySelf() AddexperienceParty(50000)~ SOLVED_JOURNAL @20172 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion2
@348 /*"It is sad that shiny metal determines the quality of life. But I will not question the rules of mortals. Take the money, then." */
=@349 /*"Farewell, mortal. May you fulfill your mission, whether alone or with those willing to support you in it." */
END
IF~~THEN REPLY @351 /*"Farewell. May the winds be favorable to you." */ DO~SetGlobal("G-alviroquest","GLOBAL",6) GiveGoldForce(7777) TakePartyItem("g-bbi026") PlaySound("SPIRI05")  StickySinisterPoof("S095CAST",Myself,1) DestroySelf()~ SOLVED_JOURNAL @20172 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion3
@353 /*The celestial bows his head, frowning. His voice loses its optimism and kindness as he speaks to himself. "This is what I feared while dealing with mortals..." */
=@354 /*"All right, so be it. I will give you the supplies I took to Sigil. They were supposed to last me longer, but since I chose to rely on mortals, let that be a lesson to me." */
END
IF~~THEN REPLY @356 /*"Oh, that sounds better. I will certainly put them to good use.  You have my blessing for your journey." */ DO~~ + g-bbD087.conclusion3a
IF~~THEN REPLY @357 /*"You should definitely learn that such things can be obtained in Sigil. I wouldn't have gone to meet a concordant killer without a full backpack. I want something unique... Like that magnificent sword I've recovered." */ DO~~ + g-bbD087.conclusion3b
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion3a
@359 /*"Farewell, mortal. It is time for me to go, especially since I no longer have supplies for my stay here." */
END
IF~~THEN REPLY @361 /*"Farewell."' */ DO~SetGlobal("G-alviroquest","GLOBAL",6) GiveGoldForce(7777) GiveItemCreate("HEARCHRM",Protagonist,5,0,0) TakePartyItem("g-bbi026") PlaySound("SPIRI05")  StickySinisterPoof("S095CAST",Myself,1) DestroySelf()~ SOLVED_JOURNAL @20172 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion3b
@363 /*"You want to lay claim to the Flame of Order?! You must be jesting. Know that I will not let you take it for yourself. You are not worthy of a weapon forged by the gods!" The angel raises his voice. Fighting Kabatum was too risky for him, but mortals are another matter. */
END
IF~~THEN REPLY @365 /*"Slow down... If you're that serious about it, I'll just take the money." */ DO~~ + g-bbD087.conclusion3b1
IF~~THEN REPLY @366 /*"Are you threatening me, celestial? I'm not afraid; I've already faced the concordant killer. And if that divine sword was meant to fall into worthy hands, I'll gladly make sure it does... in my own way!" */ DO~IncrementGlobal("GOOD","GLOBAL",-2)~ + g-bbD087.conclusion3b2
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion3b1
@368 /*The angel calms down somewhat. "A wise decision, although I do not know if you have seen the folly of your greed or if you are simply afraid. Here, have your gold." */
=@369 /*"Now be on your way. Celestia awaits my return as well as the radiance of the Flame of Order." */
END
IF~~THEN REPLY @371 /*"Farewell."' */ DO~SetGlobal("G-alviroquest","GLOBAL",6) GiveGoldForce(7777) TakePartyItem("g-bbi026") PlaySound("SPIRI05")  StickySinisterPoof("S095CAST",Myself,1) DestroySelf()~ SOLVED_JOURNAL @20172 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.conclusion3b2
@373 /*Anger flares in the celestial's eyes, anger you know all too well... this is not the first time you have faced the wrath of an angel. But when you return your thoughts to the present, you see a different angel, one who is terrifying in his light and dignity. */
END
IF~~THEN REPLY @375 /*Defend yourself. */ DO~SetGlobal("G-alviroquest","GLOBAL",8) Enemy() ~ SOLVED_JOURNAL @20174 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.freekilling
@377 /*"So you defeated the concordant killer in battle?" the celestial asks with surprise on his face. "In open combat? I have heard much about the power of these beings, and Kabatum was an experienced and battle-hardened opponent!" */
=@378 /*The celestial bows his head slightly, respect evident in his voice and gaze. "I clearly underestimated the ingenuity and zeal of mortals. You have accomplished a great feat by defeating Kabatum the Summoner." */
=@379 /*"...Although I am not sure if he was an individual who deserved to die for his deeds. Even if he killed those like me, many a terrible fiend also fell at his hands." */
=@380 /*"Nevertheless, I thank you, mortal, for returning this sword to me." */
END
IF~GlobalGT("LAW","GLOBAL",10) GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @382 /*"And so..." */ DO~~ + g-bbD087.conclusionLG
IF~OR(2) !GlobalGT("LAW","GLOBAL",10) !GlobalGT("GOOD","GLOBAL",10)~THEN REPLY @383 /*"And so..." */ DO~~ + g-bbD087.conclusion
IF~~THEN REPLY @384 /*"Wait. I just came to brag. I didn't accept your quest, so the sword is mine." */ DO~~ + g-bbD087.conclusion3b
CHAIN IF~~THEN g-bbD087 g-bbD087.rage
@386 /*He speaks calmly, without emotion, but still hostile. "You assaulted one of my patients. I will not talk to you, unless it is to pass judgement." */
END
IF~~THEN REPLY @388 /*"I will leave you alone, then." */ DO~~ EXIT
IF~GlobalGT("GOOD","GLOBAL",10) Global("G-alviroredeem","GLOBAL",0)~THEN REPLY @389 /*"I'm not an evil man, look inside me. This was just a big misunderstanding." */ DO~SetGlobal("G-alviroban","GLOBAL",0) SetGlobal("G-alviroredeem","GLOBAL",1)~ + g-bbD087.fixrage
IF~!GlobalGT("G-alviroquest","GLOBAL",1) ~THEN REPLY @390 /*"I will not let anyone talk to me like this." */ DO~ Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-alviroprequest","GLOBAL",11) ~ SOLVED_JOURNAL @20184 EXIT
IF~GlobalGT("G-alviroquest","GLOBAL",1) ~THEN REPLY @391 /*"I will not let anyone talk to me like this." */ DO~ Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-alviroquest","GLOBAL",9) ~ SOLVED_JOURNAL @20175 EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.fixrage
@393 /*He stares at you for a good quarter of a minute. "Yes. You speak the truth. A single rash decision does not counter good deeds that came before... Fine, it is forgiven. Come back later, though... I have others to attend to." */
EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.toobusy
@396 /*He is too busy with his patients to pay any attention to you.  */
EXIT
CHAIN IF~~THEN g-bbD087 g-bbD087.anunnaki
@399 /*"I do not have much time for a lecture, as I am busy saving lives here. Just know that the Anunnaki are among the oldest of the gods. They do not seem to have many followers, but their power is unquestionable. If you help recover the sword forged by one of them, you may earn a favor that is extremely rare. But now, if you will excuse me, I have patients to attend to." */
EXIT