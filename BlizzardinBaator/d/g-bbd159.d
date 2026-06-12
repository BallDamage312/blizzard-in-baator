BEGIN g-bbD159
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD159 g-bbD159.start1
@0 /*Your feet carry you forward through the marble structure towards a figure with their back turned to you. Two spectacular streams of parchment shoot out from their collarbone like mighty wings. The being, who looks like a rather petite woman, wields a massive hammer in one hand with apparent ease and pointedly does not turn to face you until you are right behind her.  */
=@1 /*When she finally turns, you see a countenance more beautiful and flawless than any human has a right to be. Her smooth skin reminds you of a bronze statue, and her luminous eyes still do not meet yours; instead, they are fixed on some distant point in space.  */
=@2 /*Her lost gaze finally meets yours. She raises her eyebrows and begins to whisper something in an incomprehensible language. */
END
IF~Class(Protagonist,Mage)~THEN REPLY @4 /*Try to figure out what spell the woman standing in front of you is casting.  */ DO~~ + g-bbD159.testmage
IF~~THEN REPLY @5 /*"Greetings..." */ DO~~ + g-bbD159.test1
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD159 g-bbD159.start2
@7 /*"You return. What will your return *mean* to me?" [g-15901] */
END
IF~~THEN REPLY @9 /*"I seek answers." */ DO~~ + g-bbD159.questions
IF~~THEN REPLY @10 /*"It means death." */ DO~~ + g-bbD159.attack
IF~~THEN REPLY @11 /*"Nothing. I'm just passing by." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD159 g-bbD159.testmage
@13 /*You recognize it as a variant of Detect Evil, a low-level clerical spell that draws upon the power of a sovereign deity to reveal the nature of a person. The spell discloses information to the caster in a manner dependent on their faith. You are unlikely to figure out what the woman in front of you will learn.  */
END
IF~CheckStatGT(Protagonist,19,WIS)~THEN REPLY @15 /*Use your willpower to distort the spell's effect on you. */ DO~SetGlobal("G-mindblock","GLOBAL",1)~ + g-bbD159.test1
IF~~THEN REPLY @16 /*"Greetings..." */ DO~~ + g-bbD159.test1
CHAIN IF~~THEN g-bbD159 g-bbD159.test1
@18 /*"Look who the planes dragged in. Someone good, someone bad, or perhaps someone in between?" She speaks in a clear, melodic voice with an aloof manner bordering on theatrical. [g-15902] */
END
IF~Global("G-mindblock","GLOBAL",1)~THEN REPLY @20 /*"What do you think?" */ DO~~ + g-bbD159.testblock
IF~GlobalGT("GOOD","GLOBAL",14) Global("G-mindblock","GLOBAL",0)~THEN REPLY @21 /*"What do you think?" */ DO~~ + g-bbD159.testgood
IF~GlobalLT("GOOD","GLOBAL",15) GlobalGT("GOOD","GLOBAL",-21) Global("G-mindblock","GLOBAL",0)~THEN REPLY @22 /*"What do you think?" */ DO~~ + g-bbD159.testneut
IF~GlobalLT("GOOD","GLOBAL",-20) Global("G-mindblock","GLOBAL",0)~THEN REPLY @23 /*"What do you think?" */ DO~~ + g-bbD159.testevil
CHAIN IF~~THEN g-bbD159 g-bbD159.testgood
@25 /*"Ah, welcome, my dear good man. Make yourself at home here. I am sure you have many questions. But before I answer them, please reflect on *my* query."  */
END
IF~~THEN REPLY @27 /*"Yes?" */ DO~~ + g-bbD159.test2
CHAIN IF~~THEN g-bbD159 g-bbD159.testneut
@29 /*"Whatever your intentions are, first, I have a question for you." */
END
IF~~THEN REPLY @31 /*"Yes?" */ DO~~ + g-bbD159.test2
CHAIN IF~~THEN g-bbD159 g-bbD159.testevil
@33 /*The woman tightens her grip on her weapon. She frowns in displeasure, yet no wrinkles appear on her face. Only the shape of her eyebrows changes, making you slightly uneasy. "So you come here, to the Upper Planes, with a black heart full of sins. Do not count on leniency, but first answer *my* question, villain."  */
END
IF~~THEN REPLY @35 /*"Yes?" */ DO~~ + g-bbD159.test2
CHAIN IF~~THEN g-bbD159 g-bbD159.testblock
@37 /*Your willpower was strong enough to disrupt her Detect Evil spell. She furrows her brow, yet no wrinkles appear on her face. Only the shape of her eyebrows changes, making you uneasy. You are uncertain whether she has discerned your true nature, but she appears to drop the matter, at least for now. "Whatever your intentions may be, I have a question for you."   */
END
IF~~THEN REPLY @39 /*"Yes?" */ DO~~ + g-bbD159.test2
CHAIN IF~~THEN g-bbD159 g-bbD159.test2
@41 /*"What do you think *good* means?" [g-15903] */
END
IF~~THEN REPLY @43 /*"Good is that which leads to the happiness of the greatest number of beings." */ DO~~ + g-bbD159.utilitarianism
IF~~THEN REPLY @44 /*"Good is action in accordance with reason and virtue." */ DO~~ + g-bbD159.virtueethics
IF~~THEN REPLY @45 /*"Good is the observance of duty, regardless of the consequences." */ DO~~ + g-bbD159.deontology
IF~~THEN REPLY @46 /*"Good is determined by the divine order and the will of the gods." */ DO~~ + g-bbD159.theology
IF~~THEN REPLY @47 /*"Good is what everyone desires for themselves." */ DO~~ + g-bbD159.plato
IF~~THEN REPLY @48 /*"Good is respect for the freedom and rights of every individual." */ DO~~ + g-bbD159.liberalism
IF~~THEN REPLY @49 /*"Good is what supports community and social harmony." */ DO~~ + g-bbD159.confucianism
IF~~THEN REPLY @50 /*"Good is balance and the absence of extremes." */ DO~~ + g-bbD159.goldenmean
IF~~THEN REPLY @51 /*"Good is the word we use to describe what is convenient for us." */ DO~~ + g-bbD159.cynicism
IF~~THEN REPLY @52 /*"Good is a mask behind which self-interest hides." */ DO~~ + g-bbD159.cynicism
IF~~THEN REPLY @53 /*"Good is a tool of the high-ups to maintain obedience among the people." */ DO~~ + g-bbD159.cynicism
IF~~THEN REPLY @54 /*"There is no good. Such pseudovalues are essentially empty words." */ DO~~ + g-bbD159.nihilism
IF~Global("G-mindblock","GLOBAL",1)~THEN REPLY @55 /*"I don't know, I've never thought about it." */ DO~~ + g-bbD159.think
IF~Global("G-mindblock","GLOBAL",0)~THEN REPLY @56 /*"I don't know, I've never thought about it." */ DO~~ + g-bbD159.thinkalt
IF~~THEN REPLY @57 /*"I won't answer this question." */ DO~~ + g-bbD159.attack
CHAIN IF~~THEN g-bbD159 g-bbD159.think
@59 /*"I need to hear this from you. Those who harbor evil in their hearts cannot stay here. So I will repeat my question once more..." */
END
IF~~THEN REPLY @61 /*"I'll try if I have to..." */ DO~~ + g-bbD159.test2
IF~~THEN REPLY @62 /*"I won't answer this question." */ DO~~ + g-bbD159.attack
CHAIN IF~~THEN g-bbD159 g-bbD159.thinkalt
@64 /*"I already know the answer, but I need to hear it from you. So I will repeat my question once again..." */
END
IF~~THEN REPLY @66 /*"I'll try if I have to..." */ DO~~ + g-bbD159.test2
IF~~THEN REPLY @67 /*"I won't answer this question." */ DO~~ + g-bbD159.attack
CHAIN IF~~THEN g-bbD159 g-bbD159.attack
@69 /*The woman looks you up and down with a stern expression on her face, as if she were making a final decision. "It is a real shame. It seems there is no good in you. That *means* one thing: You should be gotten rid of." [g-15904]  */
END
IF~~THEN REPLY @71 /*Defend yourself. */ DO~Enemy() ActionOverride(Protagonist,Attack("g-bb159"))~ EXIT
CHAIN IF~~THEN g-bbD159 g-bbD159.utilitarianism
@73 /*"Thus you believe that what is useful is good, and that the measure of the rightness of an action is the usefulness of its consequences... But does it not diminish the significance of the *motive* behind your actions? What led you to ascribe precisely that *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @75 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @76 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @77 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @78 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @79 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @80 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @81 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @82 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @83 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @84 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.virtueethics
@86 /*"This, however, raises a number of questions: What is virtue in and of itself? What kinds of virtues exist, and can we speak of a hierarchy among them? Is there a supreme virtue? Should virtues be defined in a eudemonistic way that takes into account the pursuit of happiness, a goal, or a motivation? What led you to ascribe precisely that *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @88 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @89 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @90 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @91 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @92 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @93 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @94 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @95 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @96 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @97 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.deontology
@99 /*"So you do not believe that the end justifies the means, but rather that a good outcome can be achieved *only* through good means. Where, then, lie the boundaries of this conception of good? Is the law sufficient to define good with precision? What led you to ascribe precisely that *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @101 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @102 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @103 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @104 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @105 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @106 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @107 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @108 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @109 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @110 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.theology
@112 /*"So you believe that good has been revealed by beings more powerful than us. Are you not afraid, then, that this absolves you of any responsibility? After all, if omnipotent beings are responsible for the good you do, do *you* even have a choice? Does your lack of involvement in the decision not imply that the 'good' you do is no longer good? What led you to ascribe precisely this *meaning* to good?" */
END
IF~!InParty("Grace")~THEN REPLY @114 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @115 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @116 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @117 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @118 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @119 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @120 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @121 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @122 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @123 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.plato
@125 /*"The theory of good, which posits that good is the highest idea, standing at the top of the hierarchy of ideas, and is the source of all being, truth, and beauty, just as light is the source of sight? What led you to ascribe precisely this *meaning* to good?" */
END
IF~!InParty("Grace")~THEN REPLY @127 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @128 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @129 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @130 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @131 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @132 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @133 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @134 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @135 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @136 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.liberalism
@138 /*"So it is the Indep's love of freedom speaking through you. You believe in the rights of the individual, equality and justice, and you certainly will not let anyone tell you what to do. But is that concept of good not too broad? Can freedom be equated with good if it can be used for evil purposes? What led you to ascribe precisely that *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @140 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @141 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @142 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @143 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @144 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @145 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @146 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @147 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @148 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @149 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.confucianism
@151 /*"So an approach not unlike the teachings of K'ung Fu Tzu... I wonder if this is the more idealistic version or the realistic one... Do you believe that building an ideal society and ending the Blood War are possible provided that the obligations arising from social hierarchy and tradition are respected? In your opinion, this 'society' whose spirit would last for centuries, embracing subsequent generations... Would that be the absolute? What led you to ascribe precisely that *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @153 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @154 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @155 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @156 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @157 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @158 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @159 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @160 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @161 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @162 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.goldenmean
@164 /*"You do not believe in completely devoting yourself to the greater good and ignoring your own selfish needs, because you know that suppressing them can have disastrous consequences. Nevertheless, you reject extreme acts such as theft and murder because you understand that in their case the breach of social contracts is irreversible. And that is what distinguishes 'higher' beings from 'inferior' ones, who are incapable of making that distinction... What led you to ascribe precisely this *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @166 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @167 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @168 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @169 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @170 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @171 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @172 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @173 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @174 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @175 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.cynicism
@177 /*"Where does this cynicism come from? Do you have a negative view of human nature?" She thinks for a moment, nervously tapping her hammer with her fingers. "Does pursuing good, for you, mean rejecting prevailing norms and values? Do you not believe in 'higher values' and 'lofty goals?' That is a very *practical* approach. What made you assign this particular *meaning* to good?"  */
END
IF~!InParty("Grace")~THEN REPLY @179 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @180 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @181 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @182 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @183 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @184 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @185 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @186 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @187 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @188 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.nihilism
@190 /*Your interlocutor is clearly shocked by this statement. She looks away for a moment and nervously taps her fingers on her hammer. "That is a nihilistic attitude. You reject all  purpose... all value of anything... Maybe even *meaning* itself." She sighs in disappointment. "What could have possibly made you completely deny the *meaning* of good?" */
END
IF~!InParty("Grace")~THEN REPLY @192 /*"Experience." */ DO~~ + g-bbD159.test3
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @193 /*"Experience." */ DO~~ + g-bbD159.test3ffg
IF~!InParty("Nordom")~THEN REPLY @194 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @195 /*"Logic." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3nor
IF~!InParty("Dakkon")~THEN REPLY @196 /*"Faith." */ DO~~ + g-bbD159.test3
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @197 /*"Faith." */ DO~~ + g-bbD159.test3dak
IF~!InParty("Vhail")~THEN REPLY @198 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @199 /*"Justice." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD159.test3vha
IF~~THEN REPLY @200 /*"The people I've met." */ DO~~ + g-bbD159.test3
IF~~THEN REPLY @201 /*"The results of my actions." */ DO~~ + g-bbD159.test3
CHAIN IF~~THEN g-bbD159 g-bbD159.test3
@203 /*The angelic being nods slowly and looks at you intently. "So it is. So be it." She averts her gaze and looks off into the distance. "I am sure you have questions as well. Although, I wonder if they matter as much as my question about the *meaning* of good. Is it worth talking about anything other than *meanings*?" [g-15906] */
END
IF~GlobalGT("GOOD","GLOBAL",-21)~THEN REPLY @205 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalLT("G-mindblock","GLOBAL",1)~THEN REPLY @206 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.attack
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalGT("G-mindblock","GLOBAL",0)~THEN REPLY @207 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.test3ffg
@209 /*The angelic being nods slowly and looks at you intently. "So experience it is. So be it." She averts her gaze and looks off into the distance. "I am sure you have questions as well. Although, I wonder if they matter as much as my question about the *meaning* of good. Is it worth talking about anything other than *meanings*?" [g-15906] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @210 /*As you mention experience, you notice that Fall-from-Grace gives you a gentle smile. You have invoked what she believes in most. It certainly warmed her heart to learn that you share her beliefs.  */
END
IF~GlobalGT("GOOD","GLOBAL",-21)~THEN REPLY @212 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalLT("G-mindblock","GLOBAL",1)~THEN REPLY @213 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.attack
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalGT("G-mindblock","GLOBAL",0)~THEN REPLY @214 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.test3nor
@216 /*The angelic being nods slowly and looks at you intently. "So logic it is. So be it." She averts her gaze and looks off into the distance. "I am sure you have questions as well. Although, I wonder if they matter as much as my question about the *meaning* of good. Is it worth talking about anything other than *meanings*?" [g-15906] */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @217 /*When you mention logic, you notice that Nordom listens to you very attentively. You always have his 'ear', but this time you feel like you have impressed him. It seems you have appealed to his deepest convictions.  */
END
IF~GlobalGT("GOOD","GLOBAL",-21)~THEN REPLY @219 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalLT("G-mindblock","GLOBAL",1)~THEN REPLY @220 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.attack
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalGT("G-mindblock","GLOBAL",0)~THEN REPLY @221 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.test3dak
@223 /*The angelic being nods slowly and looks at you intently. "So faith it is. So be it." She averts her gaze and looks off into the distance. "I am sure you have questions as well. Although, I wonder if they matter as much as my question about the *meaning* of good. Is it worth talking about anything other than *meanings*?" [g-15906] */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @224 /*Dak'kon lowers his head. You probably gave him something to think about with your answer. You notice he seems to be silently praying. "In Zerthimon's name..." [DAK054B] */
END
CHAIN IF~~THEN g-bbD159 g-bbD159.test3vha
@230 /*The angelic being nods slowly and looks at you intently. "So justice it is. So be it." She averts her gaze and looks off into the distance. "I am sure you have questions as well. Although, I wonder if they matter as much as the question about the *meaning* of good. Is it worth talking about anything other than *meanings*?" [g-15906] */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @231 /*You get the impression that Vhailor is watching you with pride. In your conversation with the angelic being, you invoked the value that is most important to him. His eyes burn with fervor. *Justice is eternal.* [VHA043] */
END
IF~GlobalGT("GOOD","GLOBAL",-21)~THEN REPLY @233 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalLT("G-mindblock","GLOBAL",1)~THEN REPLY @234 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.attack
IF~GlobalLT("GOOD","GLOBAL",-20) GlobalGT("G-mindblock","GLOBAL",0)~THEN REPLY @235 /*"Yes. There are things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.questions
@238 /*"What do you want to know?" [g-15907] */
END
IF~~THEN REPLY @240 /*"I want to know more about you, personally. Who are you?" */ DO~~ + g-bbD159.self
IF~~THEN REPLY @241 /*"What are you?" */ DO~SetGlobal("g-knowarchon","GLOBAL",1)~ + g-bbD159.archon
IF~Global("g-languagetalk","GLOBAL",0)~THEN REPLY @242 /*"Why do you attach so much importance to meanings?" */ DO~~ + g-bbD159.meaning
IF~~THEN REPLY @243 /*"Where are we?" */ DO~~ + g-bbD159.place
IF~~THEN REPLY @244 /*"What is your weapon?" */ DO~~ + g-bbD159.hammer
IF~~THEN REPLY @245 /*"What is that pedestal behind you?" */ DO~~ + g-bbD159.pedestal
IF~Global("G-knowkabatum","GLOBAL",1)~THEN REPLY @246 /*"Does Kabatum know he has an angel in his closet?" */ DO~~ + g-bbD159.kabatum
IF~GlobalGT("G-virtuestalk","GLOBAL",0)~THEN REPLY @247 /*"Let's get back to discussing the meaning of love." */ DO~~ + g-bbD159.love
IF~Global("g-knowarchon","GLOBAL",1) GlobalGT("g-languagetalk","GLOBAL",2) Global("G-virtuestalk","GLOBAL",0)~THEN REPLY @248 /*"You said before that archons protect values such as love. What did you mean?" */ DO~~ + g-bbD159.virtues
IF~GlobalGT("GOOD","GLOBAL",-21)~THEN REPLY @249 /*"Nothing. I'll go now." */ DO~~ EXIT
IF~GlobalLT("GOOD","GLOBAL",-20)~THEN REPLY @250 /*"Nothing. I'll go now." */ DO~~ + g-bbD159.attack
CHAIN IF~~THEN g-bbD159 g-bbD159.self
@253 /*"I am a word archon. Regardless of your motives, I have no intention of revealing my name to you. I suspect you would not reveal yours to me either."  */
END
IF~~THEN REPLY @255 /*"But what does it mean that you are a word archon?" */ DO~SetGlobal("g-knowarchon","GLOBAL",1)~ + g-bbD159.archon
IF~~THEN REPLY @256 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.archon
@258 /*"Word archons are celestial guardians of concepts. Goodness, love and other virtues. This is what matters to us. We carry that truth to the planes. By understanding Truespeech, there are no things whose nature we cannot know." [g-15908] */
END
IF~~THEN REPLY @260 /*"So that's where your extraordinary wings come from?" */ DO~~ + g-bbD159.wings
IF~~THEN REPLY @261 /*"Truespeech?" */ DO~~ + g-bbD159.truespeech
IF~~THEN REPLY @262 /*"Could you tell me more about you?" */ DO~~ + g-bbD159.self
IF~~THEN REPLY @263 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.wings
@265 /*"Each parchment is a scroll containing a dangerous spell, written in Truespeech. Each one is imbued with power." */
END
IF~~THEN REPLY @267 /*"Truespeech?" */ DO~~ + g-bbD159.truespeech
IF~~THEN REPLY @268 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.truespeech
@270 /*"Truespeech is a language that describes the nature of all things. Everything in the multiverse has its true name, and knowing something's name means having power over it. The Metatext itself is written in this language, and although it is dangerous for most, it allows one to uncover the secrets of the multiverse. There are many concepts related to this issue. I do not expect you to understand them all."  */
END
IF~GlobalGT("Story_Reekwind_Curse","GLOBAL",0)~THEN REPLY @272 /*"I met a man who was cursed in a very cruel way, after revealing his name. Could this be the result of someone using this unfortunate man's truename?" */ DO~SetGlobal("g-knowtruespeech","GLOBAL",1)~ + g-bbD159.reek
IF~~THEN REPLY @273 /*"Is this a kind of magic?" */ DO~SetGlobal("g-knowtruespeech","GLOBAL",1)~ + g-bbD159.weave
IF~~THEN REPLY @274 /*"There are other things I want to know." */ DO~SetGlobal("g-knowtruespeech","GLOBAL",1)~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.weave
@276 /*"Truespeech is magical in nature, but it is not part of the Weave. It is something entirely different, comprehensible only to some. You are not one of them. I suspect that trying to learn it, even by analyzing the Metatext... could end *very* badly for you. Mortals usually go mad, spend their entire lives repeating what little knowledge they have learned... or experience issues with existence." */
END
IF~Global("G-knowaestory","GLOBAL",1)~THEN REPLY @278 /*"Could it be that this is what Æ meant by simultaneous existence and non-existence?" */ DO~~ + g-bbD159.ae
IF~~THEN REPLY @279 /*"I am not a mortal." */ DO~~ + g-bbD159.immortal
IF~~THEN REPLY @280 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.immortal
@282 /*"Is that so? Then you are merely an immortal mortal. You are no match for truly immortal beings. Your imitation of immortality does not matter." */
END
IF~~THEN REPLY @284 /*"Funny. This state defines my entire identity, and yet from your perspective... it doesn't matter. There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.reek
@286 /*"Yes. Names are dangerous. It seems you already know the risk they carry." */
END
IF~~THEN REPLY @288 /*"Is this a kind of magic?" */ DO~~ + g-bbD159.weave
IF~~THEN REPLY @289 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.kabatum
@292 /*"As a summoner, he wanted easy access to the Upper Planes. He commissioned some Gondians to modify a musical instrument so that it would resonate with the Glass Tarn. I am not in any 'closet.'" */
END
IF~~THEN REPLY @294 /*"Doesn't that bother you?" */ DO~~ + g-bbD159.kabatum1
IF~~THEN REPLY @295 /*"Glass Tarn? Where are we?" */ DO~~ + g-bbD159.place
IF~~THEN REPLY @296 /*"Does he come here sometimes?" */ DO~~ + g-bbD159.kabatum2
IF~~THEN REPLY @297 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.kabatum1
@299 /*"Does it bother me that *you* came here? We praise the virtue of hospitality here, unless someone has a heart blackened by sin. Then we do not allow them to leave." */
END
IF~~THEN REPLY @301 /*"Does he come here sometimes?" */ DO~~ + g-bbD159.kabatum2
IF~~THEN REPLY @302 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.kabatum2
@304 /*"Sometimes, if the need arises. However, I get the impression that he feels most at home in a place of neutrality, since his understanding of good is all about balance. That is why Sigil has become his true home."  */
END
IF~~THEN REPLY @306 /*"Doesn't the fact that he has a 'shortcut' to here bother you?" */ DO~~ + g-bbD159.kabatum1
IF~~THEN REPLY @307 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.place
@310 /*"You are in the Pearly Heaven of Venya, the third layer of Mount Celestia. Nearby, you can perceive the beauty of the Glass Tarn. This extraordinary body of water contains conduits to many planes, including the Astral. Those who come here with sincere intentions may be blessed with a vision or prophecy." */
END
IF~!Dead("Trias")~THEN REPLY @312 /*"Do you know Trias? He hails from around here." */ DO~~ + g-bbD159.trias1
IF~Dead("Trias")~THEN REPLY @313 /*"Do you know Trias? He hailed from around here." */ DO~~ + g-bbD159.trias2
IF~~THEN REPLY @314 /*"Is there anything else in the area?" */ DO~~ + g-bbD159.venya
IF~~THEN REPLY @315 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.trias1
@317 /*"Yes. Someone saved him from falling into perdition. He was forgiven. Perhaps you will encounter him again someday as a symbol of goodness once lost, but still eternal. That is the beauty of good, that it can be reborn when not completely annihilated."  */
END
IF~~THEN REPLY @319 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.trias2
@321 /*"In Celestia, it was hard not to hear about such a spectacular betrayal. But his crusade was too much for him. He did not know what he was signing up for. It is a shame, because he had a chance for forgiveness until the very end."  */
END
IF~~THEN REPLY @323 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.venya
@325 /*"Of course, but you will not get there without wings. Not far from here, you can find Green Fields, the place where halflings go after death to join their gods. The Nurturing Matriarch Yondalla, The Wary Sword Arvoreen, and the Hand of Fellowship, the Hearthkeeper Cyrrollalee. There are also the Fields of Glory some distance away. They are the realm of the Archpaladin Heironeous, the archetype of chivalry, justice and honor. In fact, this chapel used to be his." She points towards a symbol of a hand clenching a thunderpoint on the wall. */
END
IF~~THEN REPLY @327 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.hammer
@329 /*"A discussion, by its very nature, is a kind of conflict between ideas. The resolution of such conflict could be: a consensus, a compromise, a stalemate, or one side backing down. But sometimes... a discussion cannot be resolved peacefully. Sometimes rhetorical sparring and an exchange of arguments are needed, and the one who has the Last Word wins. That is the name of my weapon. I do not use it often, but when I am forced to... it is a very powerful argument."  */
END
IF~~THEN REPLY @331 /*"Truly meaningful. There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.pedestal
@333 /*"You may look, but do not touch. It contains my sacred signet ring, on which are written short fragments of the words of the Metatext. A *narrative* that empowers the wearer in a way otherwise unattainable." */
END
IF~PartyHasItem("g-bbi044")~THEN REPLY @335 /*Show her the stolen ring. "Are you talking about this sacred signet ring?" */ DO~~ + g-bbD159.attack
IF~~THEN REPLY @336 /*"I am not sure if I understand it correctly..." */ DO~~ + g-bbD159.truespeech
IF~~THEN REPLY @337 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.ae
@339 /*"So you have met Æ. Indeed, she learned the Metatext and has been able to enter the Metaverse. She was able to understand the multiverse from a perspective *beyond* it. But she is an exception to the rule, so do not bother. Even if you reached your maximum potential, this knowledge is not meant for you, child of man." */
END
IF~~THEN REPLY @341 /*"Maybe this text is what was written on her robe." */ DO~~ + g-bbD159.ae1
IF~~THEN REPLY @342 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.ae1
@344 /*"I have not met her in person, but it is possible. Be careful around her. The power of understanding the nature of reality surpasses even the most advanced magic." */
END
IF~~THEN REPLY @346 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.meaning
@349 /*"I explore the nature of *meaning* and language, and their relationship to reality. Is language divine in and of itself, or is there nothing divine about it? I repeatedly break down its underlying logic into the smallest components, and then try to understand its elements as a whole."  */
END
IF~~THEN REPLY @351 /*"Let's talk about it." */ DO~~ + g-bbD159.language
IF~~THEN REPLY @352 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language
@354 /*The archon smiles slightly. "It will be my pleasure. To avoid a pointless discussion, let us start by defining *meaning*."  */
=@355 /*"What is meaning, really, if not a mental representation of something that manifests itself in reality? Even if that reality is expressed only through words or symbols. But... a slight change in the arrangement of symbols, and we have something completely different in terms of meaning." */
END
IF~CheckStatGT(Protagonist,12,INT)~THEN REPLY @358 /*Nod your head in understanding. */ DO~~ + g-bbD159.language1alt
IF~CheckStatGT(Protagonist,13,INT)~THEN REPLY @359 /*"Of course. What matters is the context that shapes the meanings of individual 'symbols.'" */ DO~~ + g-bbD159.language1alt
IF~CheckStatGT(Protagonist,12,INT)~THEN REPLY @360 /*"We can divide it even deeper. 'Lass' and 'tar' are legitimate words as well. Or, by combining fragments of them we get 'salt.'" */ DO~~ + g-bbD159.language1
IF~CheckStatLT(Protagonist,13,INT)~THEN REPLY @361 /*"I don't quite understand what you mean." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @362 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language0
@364 /*"Just as I expected," she admits with obvious disappointment. */
END
IF~~THEN REPLY @366 /*"But there are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language1alt
@368 /*"Each sign can have its own meanings, depending on the context. However, some simple signs only have a 'function,' which is somewhat less flexible." */
END
IF~CheckStatGT(Protagonist,13,INT)~THEN REPLY @370 /*"So can 'meaning' and 'function' be the same?" */ DO~AddexperienceParty(32000) SetGlobal("g-languagetalk","GLOBAL",1)~ + g-bbD159.language2
IF~CheckStatLT(Protagonist,14,INT)~THEN REPLY @371 /*"I don't quite understand what you mean." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @372 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language1
@374 /*"Thinking this way, we eventually reach a point where breaking down a word results in nothing more than random clusters of letters. Some of these letters may indeed have a certain kind of meaning, like 'a'... Though perhaps a more appropriate term for this would be 'function'." */
END
IF~CheckStatGT(Protagonist,13,INT)~THEN REPLY @376 /*"So can 'meaning' and 'function' be the same?" */ DO~AddexperienceParty(32000) SetGlobal("g-languagetalk","GLOBAL",1)~ + g-bbD159.language2
IF~CheckStatLT(Protagonist,14,INT)~THEN REPLY @377 /*"I don't quite understand what you mean." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @378 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language2
@380 /*"Not exactly. We have already discussed the meaning of 'meaning.' 'Function,' on the other hand, refers to the role something plays in a specific context or system, without carrying any meaning itself, merely establishing relationships between meanings. So?"  */
END
IF~CheckStatGT(Protagonist,14,INT)~THEN REPLY @382 /*"Meaning encompasses both the message and its significance. Function helps to clarify these aspects in the case of more complex intention." */ DO~AddexperienceParty(32000) SetGlobal("g-languagetalk","GLOBAL",2)~ + g-bbD159.language3
IF~CheckStatLT(Protagonist,15,INT)~THEN REPLY @383 /*"I don't quite understand what you mean." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @384 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language3
@386 /*A broad smile appears on the archon's face for the first time. "By understanding the parts, we are thus able to understand the whole. These wholes can expand into sentences, paragraphs, parables, speeches, and even entire tomes," she says, as her fingers straighten one by one with each new construct of meaning. A moment later, she closes her hand into a fist again and continues: "The next aspect to consider is the subjectivity of concepts such as 'true' and 'false.' The correspondence theory maintains that true beliefs correspond to the actual state of affairs, but... what constitutes that actual state of affairs?" */
END
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @388 /*"Since everyone views the actual state of affairs through the lens of their own interpretation of meaning... there is, therefore, an infinite number of actual states of affairs..." */ DO~AddexperienceParty(64000) SetGlobal("g-languagetalk","GLOBAL",3)~ + g-bbD159.language4
IF~CheckStatLT(Protagonist,16,INT)~THEN REPLY @389 /*"I don't quite understand what you mean. The state of affairs is...  the state of affairs." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @390 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language4
@392 /*"Yes! This brings us to subsequent, competing definitions such as semantic inferentialism, which posits that objective meaning arises from the internal relations of expressions, and semantic externalism, which extracts meaning from the context of the utterance, giving it a subjective dimension in the external environment." The archon is clearly excited by your understanding of the issues she is raising. Her radiant eyes are wide open, and her face is lit up with satisfaction. "Added to this is the whole messy concept of verificationism, which defines meaning as a *method* of verifying or falsifying reality. There are scholars who call it the *ability* to recognize the mathematical or empirical objective truth of a statement."  */
=@393 /*A sudden silence descends over the Glass Tarn, broken only by the rustling of scrolls shooting from your interlocutor's collarbones, disintegrating into dust in the air above you. For a moment, no one speaks, as if this time were meant for reflection. Finally, the woman's resonant voice breaks the silence. "So? Which definition makes the most sense to *you*?" */
END
IF~~THEN REPLY @395 /*"I find the basic definition most appealing. Meaning is a mental representation evoked by signs. Further levels are a matter of interpretation, and thus involve transforming the original meaning into something else." */ DO~~ + g-bbD159.language5a
IF~~THEN REPLY @396 /*"The relationship of the meaning of an expression to other expressions should be its main determinant." */ DO~~ + g-bbD159.language5b
IF~~THEN REPLY @397 /*"Meaning is largely determined by external factors. Two people with different experiences will have two different things in mind when they say the same words." */ DO~~ + g-bbD159.language5c
IF~~THEN REPLY @398 /*"I like the idea of ​​meaning as a method of verifying or falsifying something." */ DO~~ + g-bbD159.language5d
IF~~THEN REPLY @399 /*"Meaning is understanding, that is, the ability to recognize the truth of a sentence." */ DO~~ + g-bbD159.language5d
IF~~THEN REPLY @400 /*"Meaning comes from the consequences of its application." */ DO~~ + g-bbD159.language5f
IF~~THEN REPLY @401 /*"These definitions are not mutually exclusive, they can all be true at the same time" */ DO~~ + g-bbD159.language5g
IF~~THEN REPLY @402 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language5a
@404 /*"So the philosophers of Polykeptolon did speak to you after all. Perhaps we should not go beyond their simple but logical definitions... Truth is indeed the equation of things and intellect... As simple as that... Hmm..." */
END
IF~~THEN REPLY @406 /*"And what do you think, archon?" */ DO~~ + g-bbD159.language6a
IF~~THEN REPLY @407 /*"This is what I think." */ DO~~ + g-bbD159.language6b
CHAIN IF~~THEN g-bbD159 g-bbD159.language5b
@409 /*"Semantic inferentialism... Basing semantics on assertion conditions avoids a number of difficulties with truth-conditional semantics... Hmm..." */
END
IF~~THEN REPLY @411 /*"And what do you think, archon?" */ DO~~ + g-bbD159.language6a
IF~~THEN REPLY @412 /*"This is what I think." */ DO~~ + g-bbD159.language6b
CHAIN IF~~THEN g-bbD159 g-bbD159.language5c
@414 /*"Semantic externalism, hmm... There is a thought experiment called 'Twin Oerth.' It describes a theoretical planet that would be identical to Oerth in everything except for one thing: the composition of its water. Would a doppelgänger of a particular Oerth resident on Twin Oerth, talking about water, mean the same thing as that Oerth resident? Hmm..." */
END
IF~~THEN REPLY @416 /*"And what do you think, archon?" */ DO~~ + g-bbD159.language6a
IF~~THEN REPLY @417 /*"This is what I think." */ DO~~ + g-bbD159.language6b
CHAIN IF~~THEN g-bbD159 g-bbD159.language5d
@419 /*"Verificationism... A statement must be meaningful only if it is either empirically verifiable or a tautology. It excludes fiction as senseless, but... Hmm..." */
END
IF~~THEN REPLY @421 /*"And what do you think, archon?" */ DO~~ + g-bbD159.language6a
IF~~THEN REPLY @422 /*"This is what I think." */ DO~~ + g-bbD159.language6b
CHAIN IF~~THEN g-bbD159 g-bbD159.language5f
@424 /*"Pragmatism... So you perceive language as a tool for prediction, problem solving, and action, rather than describing, representing, or mirroring reality... Hmm..." */
END
IF~~THEN REPLY @426 /*"And what do you think, archon?" */ DO~~ + g-bbD159.language6a
IF~~THEN REPLY @427 /*"This is what I think." */ DO~~ + g-bbD159.language6b
CHAIN IF~~THEN g-bbD159 g-bbD159.language5g
@429 /*"All of them? Is this actually possible? Hmm..." */
END
IF~~THEN REPLY @431 /*"And what do you think, archon?" */ DO~~ + g-bbD159.language6a
IF~~THEN REPLY @432 /*"This is what I think." */ DO~~ + g-bbD159.language6b
CHAIN IF~~THEN g-bbD159 g-bbD159.language6a
@434 /*The archon touches her shapely chin with her finger and narrows her bright eyes slightly. "I do not think about it at all, because I know what the truth is. I know that every definition has something to it, and that is beautiful. We can endlessly ponder the meaning of every sign, because there are so many factors influencing them. We can ponder until the end of the planes whether a lie has the same meaning as the truth if it has the same effect. We could spend the entire Blood War discussing how we would interpret meaning if we had never known the gift of speech." */
END
IF~~THEN REPLY @436 /*"You're an interesting conversationalist. Who knew pressing down on teeth of a wooden clam would lead me to a discussion about meaning?" */ DO~~ + g-bbD159.language7a
IF~~THEN REPLY @437 /*"Thanks for the conversation. It really got me thinking." */ DO~~ + g-bbD159.language7b
IF~~THEN REPLY @438 /*"Actually... I'm not sure if it makes sense. All things considered, I think it was a waste of time." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @439 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language6b
@441 /*The archon touches her shapely chin with her finger and narrows her bright eyes slightly. "Every definition has something to it, and that is beautiful. We can endlessly ponder the meaning of every sign, because there are so many factors influencing them. We can ponder until the end of the planes whether a lie has the same meaning as the truth if it has the same effect. We could spend the entire Blood War discussing how we would interpret meaning if we had never known the gift of speech." */
END
IF~~THEN REPLY @443 /*"You're an interesting conversationalist. Who knew pressing down on teeth of a wooden clam would lead me to a discussion about meaning?" */ DO~~ + g-bbD159.language7a
IF~~THEN REPLY @444 /*"Thanks for the conversation. It really got me thinking." */ DO~~ + g-bbD159.language7b
IF~~THEN REPLY @445 /*"Actually... I'm not sure if it makes sense. All things considered, I think it was a waste of time." */ DO~~ + g-bbD159.language0
IF~~THEN REPLY @446 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language7a
@448 /*The woman lets out a soft laugh. "Teeth have many meanings, but yours is quite unusual. What you were pressing are called 'keys'. Thank you, you're an interesting conversationalist, too." She raises her eyebrows and takes a deep breath. "I did not expect that from a human, but maybe you are the exception to the rule." */
END
IF~~THEN REPLY @450 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.language7b
@452 /*She raises her eyebrows and takes a deep breath. "It is not because of me, but because of philosophy. Generally speaking, I would not expect this from a human, but maybe you are the exception to the rule." */
END
IF~~THEN REPLY @454 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.virtues
@456 /*"The archons guard the idea of love. We consider its various forms: familial, friendly, romantic, self-love, hospitable, and divine. Just like the different forms of goodness, the different forms of love have certain *meanings*, but their boundaries are quite subtle. Mortals so often get lost in them..." */
END
IF~~THEN REPLY @458 /*"What is familial love?" */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.love1
IF~~THEN REPLY @459 /*"What is friendly love?" */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.love2
IF~~THEN REPLY @460 /*"What is romantic love?" */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.love3
IF~~THEN REPLY @461 /*"What is self-love?"  */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.love4
IF~~THEN REPLY @462 /*"What is hospitable love?" */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.love5
IF~~THEN REPLY @463 /*"What is divine love?" */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.love6
IF~~THEN REPLY @464 /*"There are other things I want to know." */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love1
@466 /*"It is the most natural and instinctive form of love. It is what parents feel for their children and children for their parents. It is a beautiful, pure, innocent form of love. If you still remember your family, you know exactly what I am talking about."  */
END
IF~~THEN REPLY @468 /*"I have no family. At least not that I know of." */ DO~~ + g-bbD159.love1a
IF~~THEN REPLY @469 /*"What is friendly love?" */ DO~~ + g-bbD159.love2
IF~~THEN REPLY @470 /*"What is romantic love?" */ DO~~ + g-bbD159.love3
IF~~THEN REPLY @471 /*"What is self-love?"  */ DO~~ + g-bbD159.love4
IF~~THEN REPLY @472 /*"What is hospitable love?" */ DO~~ + g-bbD159.love5
IF~~THEN REPLY @473 /*"What is divine love?" */ DO~~ + g-bbD159.love6
IF~~THEN REPLY @474 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love2
@476 /*"It is a pure bond between unrelated individuals, devoid of any romantic undertones. It is more than just friendship. It is, in essence, a unity that only truly ethical individuals are capable of. 'Two bodies, one spirit.' Something completely unattainable to beings devoid of empathy, which serves as proof that empathy is in fact the right path." */
END
IF~NumInPartyGT(1) GlobalGT("GOOD","GLOBAL",14) ~THEN REPLY @478 /*"I think I do have such friends. They're with me." */ DO~~ + g-bbD159.love2a
IF~OR(2) NumInParty(1) GlobalLT("GOOD","GLOBAL",5) ~THEN REPLY @479 /*"I don't have any friends." */ DO~~ + g-bbD159.love2b
IF~~THEN REPLY @480 /*"What is familial love?" */ DO~~ + g-bbD159.love1
IF~~THEN REPLY @481 /*"What is romantic love?" */ DO~~ + g-bbD159.love3
IF~~THEN REPLY @482 /*"What is self-love?"  */ DO~~ + g-bbD159.love4
IF~~THEN REPLY @483 /*"What is hospitable love?" */ DO~~ + g-bbD159.love5
IF~~THEN REPLY @484 /*"What is divine love?" */ DO~~ + g-bbD159.love6
IF~~THEN REPLY @485 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love3
@487 /*"It is a feeling that is perhaps the most difficult to define unambiguously, as its 'purity' can vary greatly. It differs from friendly love primarily in that it introduces the elements of desire and intimacy." */
END
IF~~THEN REPLY @489 /*"What is familial love?" */ DO~~ + g-bbD159.love1
IF~~THEN REPLY @490 /*"What is friendly love?" */ DO~~ + g-bbD159.love2
IF~~THEN REPLY @491 /*"What is self-love?"  */ DO~~ + g-bbD159.love4
IF~~THEN REPLY @492 /*"What is hospitable love?" */ DO~~ + g-bbD159.love5
IF~~THEN REPLY @493 /*"What is divine love?" */ DO~~ + g-bbD159.love6
IF~~THEN REPLY @494 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love4
@496 /*"The often-overlooked concept of love for oneself, caring for one's own happiness and well-being. It is not, however, the same as selfishness. Various philosophies approach this issue differently, as some place greater emphasis on society, which is supposedly more important than the individual." The archon touches the spot where a mortal would have a heart. "But here, in the Upper Planes, we know that self-acceptance and self-love cannot be neglected. It is part of a healthy relationship with one's essence and with the entire multiverse."  */
END
IF~~THEN REPLY @498 /*"I try to love myself." */ DO~~ + g-bbD159.love4a
IF~~THEN REPLY @499 /*"I couldn't love myself." */ DO~~ + g-bbD159.love4b
IF~~THEN REPLY @500 /*"What is familial love?" */ DO~~ + g-bbD159.love1
IF~~THEN REPLY @501 /*"What is friendly love?" */ DO~~ + g-bbD159.love2
IF~~THEN REPLY @502 /*"What is romantic love?" */ DO~~ + g-bbD159.love3
IF~~THEN REPLY @503 /*"What is hospitable love?" */ DO~~ + g-bbD159.love5
IF~~THEN REPLY @504 /*"What is divine love?" */ DO~~ + g-bbD159.love6
IF~~THEN REPLY @505 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love5
@507 /*"It is a concept you may know as hospitality. In the Upper Planes, it is important to us, so we do not lock our doors here. The unwritten agreement between the host and the guests they welcome is sacred, and those who do not honor it are cursed. The love of hospitality is a virtue of the great ones who care for *the entire* multiverse." */
END
IF~~THEN REPLY @509 /*"I have no home where I can show hospitality." */ DO~~ + g-bbD159.love5a
IF~~THEN REPLY @510 /*"What is familial love?" */ DO~~ + g-bbD159.love1
IF~~THEN REPLY @511 /*"What is friendly love?" */ DO~~ + g-bbD159.love2
IF~~THEN REPLY @512 /*"What is romantic love?" */ DO~~ + g-bbD159.love3
IF~~THEN REPLY @513 /*"What is self-love?"  */ DO~~ + g-bbD159.love4
IF~~THEN REPLY @514 /*"What is divine love?" */ DO~~ + g-bbD159.love6
IF~~THEN REPLY @515 /*"There are other things I want to know." */ DO~SetGlobal("G-virtuestalk","GLOBAL",1)~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love6
@517 /*"It is an unchanging love, without conditions, judgment, or boundaries. An immortal feeling that we learn from the deities, the benevolent ones at least. Whether this love is woven by Aphrodite, Freya, Isis, Sune, Chih-Nii, Hanali Celanil, or one of the countless other goddesses of love throughout the planes, it is this love that allows caring gods to love their followers even when they stray. Agape is always ready to forgive, and other kinds of love strive to emulate this... yet it will always remain an unattainable ideal." */
==g-bbd159 IF~Global("G-kiaransaleefollower","GLOBAL",1)~THEN @518 /*Deep within your being, a voice stirs. It is dry, pained, yet full of concern. It is your queen, trying to reach you even here, in the Upper Planes. It does not form into words, only into a shapeless, primal whisper. What an enormous effort this must be for her, and at the same time proof of the truth of the archon's words. Kiaransalee loves you, and you love her in return, with the help of agape, perfect love.  */
END
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @520 /*"As for the gods, they've all pretty much turned their backs on me. I've had to test even their divine patience." */ DO~~ + g-bbD159.love6a
IF~Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @521 /*"I understand. I feel that my queen, Kiaransalee, gifts me with infinite love." */ DO~IncrementGlobal("G-kiaransaleeworship","GLOBAL",10000) SetGlobal("G-kiaranagape","GLOBAL",1)~ + g-bbD159.attack
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @522 /*"What is familial love?" */ DO~~ + g-bbD159.love1
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @523 /*"What is friendly love?" */ DO~~ + g-bbD159.love2
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @524 /*"What is romantic love?" */ DO~~ + g-bbD159.love3
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @525 /*"What is self-love?"  */ DO~~ + g-bbD159.love4
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @526 /*"What is hospitable love?" */ DO~~ + g-bbD159.love5
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @527 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love
@529 /*"What meaning of love did you want to ask about?" */
END
IF~~THEN REPLY @531 /*"What is familial love?" */ DO~~ + g-bbD159.love1
IF~~THEN REPLY @532 /*"What is friendly love?" */ DO~~ + g-bbD159.love2
IF~~THEN REPLY @533 /*"What is romantic love?" */ DO~~ + g-bbD159.love3
IF~~THEN REPLY @534 /*"What is self-love?"  */ DO~~ + g-bbD159.love4
IF~~THEN REPLY @535 /*"What is hospitable love?" */ DO~~ + g-bbD159.love5
IF~~THEN REPLY @536 /*"What is divine love?" */ DO~~ + g-bbD159.love6
IF~~THEN REPLY @537 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love1a
@539 /*"Oh, I am so sorry. You have been deprived of something very precious. I fear nothing can compensate for this." */
END
IF~~THEN REPLY @541 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @542 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love2a
@544 /*"That is wonderful! So you know what an exhilarating feeling it is when you gain companions you can fully trust... who become like family to you." */
END
IF~~THEN REPLY @546 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @547 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love2b
@549 /*She nods seriously. "That is so unfortunate. Many believe that without friendship, life loses its meaning." */
END
IF~~THEN REPLY @551 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @552 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love4a
@554 /*"Very good. Keep at it." */
END
IF~~THEN REPLY @556 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @557 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love4b
@559 /*Her face darkens. "Why?" */
END
IF~GlobalGT("GOOD","GLOBAL",14) Global("G-mindblock","GLOBAL",0)~THEN REPLY @561 /*"I have done a lot of evil. I couldn't possibly accept myself." */ DO~~ + g-bbD159.love4c
IF~GlobalLT("GOOD","GLOBAL",15) GlobalGT("GOOD","GLOBAL",-21) Global("G-mindblock","GLOBAL",0)~THEN REPLY @562 /*"I have done a lot of evil. I couldn't possibly accept myself." */ DO~~ + g-bbD159.love4d
IF~GlobalLT("GOOD","GLOBAL",-20) Global("G-mindblock","GLOBAL",0)~THEN REPLY @563 /*"I have done a lot of evil. I couldn't possibly accept myself." */ DO~~ + g-bbD159.love4e
IF~~THEN REPLY @564 /*"Why not?" */ DO~~ + g-bbD159.love4d
CHAIN IF~~THEN g-bbD159 g-bbD159.love4c
@566 /*"Nonsense. I *see* you and I can accept you, so you can accept yourself as well. Try to love yourself, and you will feel the difference." */
END
IF~~THEN REPLY @568 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @569 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love4d
@571 /*"Well. Either way, it is worth showing yourself a little love. Try loving yourself, and you will feel the difference." */
END
IF~~THEN REPLY @573 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @574 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love4e
@576 /*"Indeed, your conscience looms as dark as storm clouds over a barren desert. I should not take any satisfaction in this, but it is good to hear that you do feel some remorse after all. Perhaps this is the beginning of a path to redemption." */
END
IF~~THEN REPLY @578 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @579 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love5a
@581 /*"You do not need a home to care for those in need. You can welcome someone merely into your heart." */
END
IF~~THEN REPLY @583 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @584 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions
CHAIN IF~~THEN g-bbD159 g-bbD159.love6a
@586 /*"Impossible," the woman rejects this notion with a laugh. "There are hundreds of gods, and many of them are capable of forgiving *a great deal*." */
END
IF~~THEN REPLY @588 /*"I've had a lot of time." */ DO~~ + g-bbD159.love6b
CHAIN IF~~THEN g-bbD159 g-bbD159.love6b
@590 /*"Well, I will not pursue this topic further, then." */
END
IF~~THEN REPLY @592 /*"What about other kinds of love?" */ DO~~ + g-bbD159.love
IF~~THEN REPLY @593 /*"There are other things I want to know." */ DO~~ + g-bbD159.questions