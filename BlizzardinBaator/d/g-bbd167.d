BEGIN g-bbD167
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD167 g-bbD167.start
@0 /*You come upon a creature like no other you have seen in recent memory. It is surely a fiend, and you would easily reach that conclusion even if this meeting was not taking place in the Styx Oarsman. The fiend has a bulky, segmented body covered in chitinous armor, similar to a beetle. Its head resembles that of a fly with large compound eyes, antennae, and multiple mandibles. In the center, there is a long, needle-like proboscis suggesting it might be parasitic, though currently it is stuck in a cup filled with some foul smelling concoction. The gaze of its compound eyes seems to pierce you. Or maybe not... It is difficult to tell. */
END
IF~~THEN REPLY @2 /*"Greetings?" */ DO~~ + g-bbD167.talk
IF~~THEN REPLY @3 /*Observe the creature. */ DO~~ + g-bbD167.observe
IF~~THEN REPLY @4 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD167 g-bbD167.start2
@6 /*The strange, insectoid creature is still standing at the tavern, its eyes motionless and ever-observing. It is sipping an awful smelling drink through its long and disturbing proboscis. */
END
IF~~THEN REPLY @8 /*"Greetings?" */ DO~~ + g-bbD167.talk
IF~~THEN REPLY @9 /*Observe the creature. */ DO~~ + g-bbD167.observe
IF~~THEN REPLY @10 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD167 g-bbD167.talk
@12 /*The creature's eyes do not shift. It does not seem to have a mouth that can produce language back at you. Yet, you hear a buzzing sound in your head - which, with surprising ease, turns into syllables in your mind.  */
=@13 /*"hell-o" */
END
IF~GlobalLT("G-keyquest","GLOBAL",3) Global("G-elvra","GLOBAL",0)~THEN REPLY @15 /*"You're Elvra? Elvra Syne? I have been looking for you." */ DO~SetGlobal("G-elvra","GLOBAL",1)~ + g-bbD167.quest
IF~~THEN REPLY @16 /*"I have some questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @17 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.q
@19 /*The buzzing in your head continues. It does not sound like a question in terms of intonation, but it clearly is one based on the context. */
=@20 /*"what-doezz-mor-tal want-with-elv-ra"  */
END
IF~PartyHasItem("g-bbi135") Global("G-ActualCannibal","GLOBAL",1)~THEN REPLY @22 /*Show Elvra Haer'Dalis' severed head. "What would be the best way to prepare this?" */ DO~~ + g-bbD167.headmeal
IF~GlobalLT("G-keyquest","GLOBAL",3) Global("G-elvra","GLOBAL",0)~THEN REPLY @23 /*"You're Elvra? Elvra Syne? I have been looking for you." */ DO~SetGlobal("G-elvra","GLOBAL",1)~ + g-bbD167.quest
IF~Global("G-knowKocrachon","GLOBAL",0)~THEN REPLY @24 /*"What are you?" */ DO~SetGlobal("G-knowKocrachon","GLOBAL",1)~ + g-bbD167.koc
IF~Global("G-KocDrink","GLOBAL",0)~THEN REPLY @25 /*"What are you drinking?" */ DO~SetGlobal("G-KocDrink","GLOBAL",1)~ + g-bbD167.drink
IF~Global("G-knowKocrachon","GLOBAL",1)~THEN REPLY @26 /*"What are you again?" */ DO~~ + g-bbD167.koc
IF~Global("G-KocDrink","GLOBAL",1)~THEN REPLY @27 /*"What are you drinking again?" */ DO~~ + g-bbD167.drink
IF~Global("G-ActualCannibal","GLOBAL",1) GlobalGT("G-keyquest","GLOBAL",1)~THEN REPLY @28 /*"Hey... where did you get this liquefied human?" */ DO~~ + g-bbD167.descent
IF~~THEN REPLY @29 /*"You are one ugly bastard." */ DO~~ + g-bbD167.offend
IF~~THEN REPLY @30 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.going
@32 /*The fiend does not acknowledge that you said anything. It sips ever so disturbingly until you leave its side and can witness it no more. */
EXIT
CHAIN IF~~THEN g-bbD167 g-bbD167.drink
@35 /*The fiend stops sipping for a moment and takes its proboscis out of the cup. You hear the buzzing again. */
=@36 /*"li-qui-fied-hu-man from-prime-ma-ter-ial" */
END
IF~~THEN REPLY @38 /*"Liquefied human? That's disgusting." */ DO~~ + g-bbD167.offend
IF~Global("G-KocTry","GLOBAL",0)~THEN REPLY @39 /*"Liquefied human? May I have a sip?" */ DO~SetGlobal("G-KocTry","GLOBAL",1)~ + g-bbD167.try
IF~~THEN REPLY @40 /*"Right... I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @41 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.try
@43 /*The fiend happily hands you the cup. The cup contains a thick, viscous mixture of reds and browns. It looks truly unappetizing. The fiend does not have the means to smile yet its buzzing makes it sound like it is grinning. Somehow. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @44 /*"Chief, I love the macabre as much as the next floating skull, but this is pretty extreme." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @45 /*"I should hope this is some kind of a ploy. Do not drink this." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @46 /*"This is not a course of action one should follow." */
==G-bbD167 @47 /*"go-a-head-mor-tal tazzte-flezzh-of-your-e-qualzz feel-what-it-meanzz" */
END
IF~~THEN REPLY @49 /*"On second thought... That's disgusting." */ DO~~ + g-bbD167.offend
IF~!GlobalGT("GOOD","GLOBAL",1)~THEN REPLY @50 /*Drink from the cup. */ DO~IncrementGlobal("GOOD","GLOBAL",-5) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-3) IncrementGlobal("BD_GRACE_MORALE","GLOBAL",-2) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1) IncrementGlobal("BD_VHAIL_MORALE","GLOBAL",-2) IncrementGlobal("LAW","GLOBAL",-5) SetGlobal("G-ActualCannibal","GLOBAL",1) AddexperienceParty(100000)~ JOURNAL @10009 + g-bbD167.cannibal
CHAIN IF~~THEN g-bbD167 g-bbD167.cannibal
@52 /*The experience profoundly transforms you. The taste is insignificant, but the very act means parting. Parting with your humanity. Regardless of any actions you have taken in the past, this feels like a point of no return. *What* have you done? What *have* you done? What have *you* done? What have you *done*? */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @53 /*"Oh chief..." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @54 /*Fall-from-Grace looks mortified. She slowly backs away towards the door. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @55 /*Dak'kon sighs deeply and seems unsure how to react. */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @56 /**"Massster! I would have brought it to a BOIL firsssst."* */
==G-bbD167 @57 /*"wel-come-to the-o-ther-zzide" */
END
IF~~THEN REPLY @59 /*"That was disgusting." */ DO~~ + g-bbD167.offend
IF~~THEN REPLY @60 /*"I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @61 /*"I... need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.offend
@63 /*"yezz-yezz-thank-you" The fiend seems very happy about this remark. */
END
IF~~THEN REPLY @65 /*"I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @66 /*"I... need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.koc
@68 /*The creature sets the cup aside and seemingly gets ready for a long tirade of buzzing words into your brain. */
=@69 /*"elv-ra-zzyne izz-a-koc-rach-on baa-te-zzu-from-i-ron-zzity-of-dizz our-be-lo-ved-lea-derzz dizz-pa-terzz-re-known-tor-tu-rer." */
END
IF~~THEN REPLY @71 /*"The Iron City of Dis?" */ DO~~ + g-bbD167.dis
IF~~THEN REPLY @72 /*"Dispater?" */ DO~~ + g-bbD167.dispater
IF~~THEN REPLY @73 /*"You are a torturer?" */ DO~~ + g-bbD167.torture
IF~~THEN REPLY @74 /*"I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @75 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.dis
@77 /*"the-e-ver-bla-zzin-for-tress on-the zze-cond-lay-er zzhroud-of-zzmoke azz-far-azz-eye-can-zzee" */
END
IF~~THEN REPLY @79 /*"You mentioned Dispater?" */ DO~~ + g-bbD167.dispater
IF~~THEN REPLY @80 /*"You are a torturer?" */ DO~~ + g-bbD167.torture
IF~~THEN REPLY @81 /*"I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @82 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.dispater
@84 /*"glo-riouzz-lea-der e-ver-ob-zzer-ving from-hizz-i-ron-to-wer at-the-zzenter-of-the-zzity." */
END
IF~~THEN REPLY @86 /*"The Iron City of Dis?" */ DO~~ + g-bbD167.dis
IF~~THEN REPLY @87 /*"You are a torturer?" */ DO~~ + g-bbD167.torture
IF~~THEN REPLY @88 /*"I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @89 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.torture
@91 /*"koc-rach-onzz are-bezzt-tor-tu-rerzz in-the-planezz we-can-keep-vic-tim-a-live for-yearzz-in-con-zztant-a-go-ny" */
END
IF~~THEN REPLY @93 /*"What is the Iron City of Dis?" */ DO~~ + g-bbD167.dis
IF~~THEN REPLY @94 /*"Dispater?" */ DO~~ + g-bbD167.dispater
IF~~THEN REPLY @95 /*"Right... I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @96 /*"That's horrific." */ DO~~ + g-bbD167.offend
IF~~THEN REPLY @97 /*"I... need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.observe
@99 /*You stand and look at the creature for a very long time. It sips. And sips. The cup does not seem to run out. It otherwise makes no movement; the sound of sipping is the only evidence that it is alive at all. */
END
IF~~THEN REPLY @101 /*"Greetings?" */ DO~~ + g-bbD167.talk
IF~~THEN REPLY @102 /*Leave the creature alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD167 g-bbD167.quest
@104 /*The sipping stops. The long proboscis shivers for a moment and carefully slides out of the cup as the creature turns its head towards you. */
=@105 /*"loo-king-for-me-why" */
END
IF~~THEN REPLY @107 /*"I need to talk about Manohae, your friend. Mawu from the Society of Sensation told me he must have eaten something unusual before he disappeared." */ DO~~ + g-bbD167.quest2
CHAIN IF~~THEN g-bbD167 g-bbD167.quest2
@109 /*The proboscis finds its way back into the cup, and any form of tension that Elvra could exhibit is gone. However, it seems that there never was any, for its features are far removed from capability to express anything. */
=@110 /*"ma-no-hae-good-friend not-ma-ny-like-him-in-zzi-gil" */
END
IF~~THEN REPLY @112 /*"Yes, and he's gone. I think it had something to do with what he ate." */ DO~~ + g-bbD167.quest3
IF~~THEN REPLY @113 /*"Did he eat anything unusual the last time you saw him?" */ DO~~ + g-bbD167.quest3
CHAIN IF~~THEN g-bbD167 g-bbD167.quest3
@115 /*"fort-night-a-go there-wazz-a-vizz-i-tor from-jo-tun-heim in-the-for-tunezz-wheel ma-no-hae-won-a-bet-and-bit-off zzome-fin-gerzz" */
END
IF~~THEN REPLY @117 /*"Jotunheim? Who was the visitor?" */ DO~~ + g-bbD167.quest5
CHAIN IF~~THEN g-bbD167 g-bbD167.quest5
@119 /*"frozzt-gi-ant-zzkjarn-the-ice-bound gone-now-back-to-yzz-gard" */
END
IF~~THEN REPLY @121 /*"Frost giant? That actually makes some sense, with all the cold involved... Are there any other frost giants around?" */ DO~~ + g-bbD167.quest6
CHAIN IF~~THEN g-bbD167 g-bbD167.quest6
@123 /*"how-would-i-know azzk-in-hall-of-re-cordzz they-know-all-a-bout-whozze-in-zzi-gil" */
END
IF~~THEN REPLY @125 /*"And where do I find someone from the Hall of Records?" */ DO~~ + g-bbD167.quest7
CHAIN IF~~THEN g-bbD167 g-bbD167.quest7
@127 /*"near-by?-try-yzz-gard I-hear-of-near-por-tal fay-ted-love-yzz-gard" */
END
IF~~THEN REPLY @129 /*"Alright. Then I'll find someone from the Hall of Records. But I have other questions." */ DO~SetGlobal("G-keyquest","GLOBAL",3) AddexperienceParty(15000)~ SOLVED_JOURNAL @20089 + g-bbD167.q
IF~~THEN REPLY @130 /*"All right. Then I'll find someone from the Hall of Records. I need to be going." */ DO~SetGlobal("G-keyquest","GLOBAL",3) AddexperienceParty(15000)~ SOLVED_JOURNAL @20089 EXIT
CHAIN IF~~THEN g-bbD167 g-bbD167.descent
@132 /*"im-por-ted ea-zzier-to-find-in-baa-tor" */
END
IF~~THEN REPLY @134 /*"Right... I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @135 /*"I need to be going." */ DO~~ + g-bbD167.going
CHAIN IF~~THEN g-bbD167 g-bbD167.headmeal
@137 /*Elvra grasps the blue-haired head eagerly. "brain-full-of-poetry tazz-ty-zznack-indeed I-can-zzhip-home have-exzz-e-lent pick-le-mazz-ter" */
END
IF~~THEN REPLY @139 /*"Exzzelent... Take it then. I entrust this precious delicacy to you. I have other questions." */ DO~SetGlobal("G-pickequest","GLOBAL",1) DestroyPartyItem("g-bbi135",1)~ SOLVED_JOURNAL @20305 + g-bbD167.q
IF~~THEN REPLY @140 /*"On second thought, I may find a better use for it, but I have other questions." */ DO~~ + g-bbD167.q
IF~~THEN REPLY @141 /*"On second thought, I may find a better use for it. I need to be going." */ DO~~ + g-bbD167.going