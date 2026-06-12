BEGIN g-bbD093
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD093 g-bbD093.start
@0 /*You see a neglected woman ruined by many hardships of life. A network of protruding veins spreads across her wrinkled, lesion-covered skin. She sits directly on the ground, unconcerned by dirt or moisture. She is focusing all her attention on a semi-transparent stone the size of a fist in her hand. She stares at it with an almost mystical rapture. */
END
IF~Global("AR0601_Visited","GLOBAL",1) Global("G-093exp","GLOBAL",0)~THEN REPLY @3 /*Look at the stone. */ DO~~ + g-bbD093.A1A
IF~Global("AR0601_Visited","GLOBAL",0) Global("G-093exp","GLOBAL",0)~THEN REPLY @4 /*Look at the stone. */ DO~~ + g-bbD093.A1B
IF~~THEN REPLY @5 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD093 g-bbD093.start2
@7 /*The woman sits directly on the ground, unconcerned by dirt or moisture. She is focusing all her attention on a semi-transparent stone the size of a fist in her hand. She stares at it with an almost mystical rapture. */
END
IF~Global("AR0601_Visited","GLOBAL",1) Global("G-knowstones","GLOBAL",1)~THEN REPLY @9 /*Look at the stone. */ DO~~ + g-bbD093.A1C
IF~Global("AR0601_Visited","GLOBAL",1) Global("G-knowstones","GLOBAL",0)~THEN REPLY @10 /*Look at the stone. */ DO~~ + g-bbD093.A1A
IF~Global("AR0601_Visited","GLOBAL",0)~THEN REPLY @11 /*Look at the stone. */ DO~~ + g-bbD093.A1B
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @12 /*"Where did you get that stone?" */ DO~~ + g-bbD093.A1
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @13 /*"I'll buy this stone from you. How much do you want?" */ DO~~ + g-bbD093.A1
IF~~THEN REPLY @14 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.A1A
@16 /*You recognize it for what it is immediately. It is a sensory stone with someone's memory stored inside. */
END
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @18 /*"Where did you get that stone?" */ DO~~ + g-bbD093.A1
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @19 /*"I'll buy this stone from you. How much do you want?" */ DO~~ + g-bbD093.A1
IF~~THEN REPLY @20 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.A1B
@22 /*The stone looks valuable. It may be enchanted. */
END
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @24 /*"Where did you get that stone?" */ DO~~ + g-bbD093.A1
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @25 /*"I'll buy this stone from you. How much do you want?" */ DO~~ + g-bbD093.A1
IF~~THEN REPLY @26 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.A1C
@28 /*You recognize it for what it is immediately. It is a sensory stone with someone's memory stored inside. What is more, you know perfectly well that in this district you can find people who are severely addicted to the stones, using them like stimulants, and unable to stop gazing into them. */
END
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @30 /*"Where did you get that stone?" */ DO~~ + g-bbD093.A1
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @31 /*"I'll buy this stone from you. How much do you want?" */ DO~~ + g-bbD093.A1
IF~~THEN REPLY @32 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.A1
@34 /*The woman spits, not even sparing you a glance. Whatever she is watching right now must be a lot more interesting than you are. */
END
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @36 /*"I understand that this stone is very important to you. Maybe you can tell me what it shows you? It must be something beautiful." */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ + g-bbD093.D1
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @37 /*"Give me that stone or you'll regret it!" */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ + g-bbD093.E1
IF~Global("g-dialog13","GLOBAL",0)~THEN REPLY @38 /*"If you don't want to talk, then don't. Bye." */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ EXIT
IF~~THEN REPLY @39 /*Leave. */ DO~SetGlobal("G-knowstones","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.D1
@41 /*The woman finally looks in your direction. Her lined face shows reluctance, but, surprisingly, she starts talking. "Ha! You have no idea. The most beautiful place in the entire multiverse. So beautiful that it's almost unreal. Maybe it doesn't really exist and was just dreamt up by someone? I wouldn't be surprised. There's no such thing as perfection. Only the stench and pain are real. Like here, in the Ditch. I prefer to live in my beautiful illusion." */
END
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @43 /*"I've traveled far and wide across the multiverse. Lend me this stone for a moment, and I'll tell you if the image it shows is real. And if so, where to find it." */ DO~SetGlobal("g-dialog13","GLOBAL",1)~ + g-bbD093.G1
IF~~THEN REPLY @44 /*"I'd like to look at this stone. Could you give it to me for a moment?" */ DO~SetGlobal("g-dialog13","GLOBAL",1)~ + g-bbD093.E1
IF~~THEN REPLY @45 /*"Ridiculous. You're addicted to staring at a pebble." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-dialog13","GLOBAL",1)~ + g-bbD093.E2
IF~Class(Protagonist,Thief)
~THEN REPLY @46 /*Try to steal the stone. */ DO~~ + g-bbD093.S1
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @47 /*Suggest Annah to steal the stone. */ DO~~ + g-bbD093.S2
IF~~THEN REPLY @48 /*"Who knows? Bye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.E1
@50 /*The woman bares her teeth and growls at you like a wild animal ready to defend her territory. It is clear that she will not give up the stone willingly. */
END
IF~~THEN REPLY @52 /*Snatch the stone from her hands by force. */ DO~~ + g-bbD093.R1
IF~~THEN REPLY @53 /*"All right, all right. I understand. Keep the stone. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.E2
@55 /*The woman, sensing the danger, bares her teeth and growls at you like a wild animal ready to defend her territory. */
END
IF~~THEN REPLY @57 /*Snatch the stone from her hands by force. */ DO~~ + g-bbD093.R1
IF~Class(Protagonist,Thief)
~THEN REPLY @58 /*Try to steal the stone. */ DO~~ + g-bbD093.S1
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @59 /*Suggest Annah to steal the stone. */ DO~~ + g-bbD093.S2
IF~~THEN REPLY @60 /*Leave her. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.G1
@62 /*The woman considers your offer for a long moment, eyeing you warily. You must have somehow awoken a spark of trust in her because she finally reaches out to you with the stone. In this, she resembles a timid animal that could flee at any moment, startled by a rapid gesture or a louder noise. */
=@63 /*Carefully, you take the stone into your hands. A wave of memory washes over you immediately. */
END
IF~~THEN REPLY @65 /*Accept the memory. */ DO~PlaySoundNotRanged("SPTR_01") GiveExperience(Protagonist,32000) SetGlobal("G-093exp","GLOBAL",1)~ + g-bbD093.G2
IF~CheckStatGT(Protagonist,12,WIS)~THEN REPLY @66 /*Repress it. */ DO~~ + g-bbD093.G3
CHAIN IF~~THEN g-bbD093 g-bbD093.G2
@68 /*You are strolling lazily through a garden. Flowers of all shapes and colors enchant you with their heavenly scents. In the treetops, birds chirp merrily. In the distance, the calm surface of a lake sparkles gently, painted gold by sunrays. Peace and harmony reign everywhere. You are not alone in this garden. The most beautiful being you have ever seen in your life is walking arm in arm with you. Light hair, golden eyes, delicate complexion, a pair of snow-white wings on their back. They smile at you. You feel perfect love and happiness in your heart. Beautiful moment, do not pass away! */
=@69 /*The vision ends, leaving sadness and emptiness behind. You now understand why the woman values this stone so much. */
END
IF~CheckStatGT(Protagonist,15,WIS)~THEN REPLY @71 /*You feel the memory of that place coming through. "A beautiful vision. I think it must be from Elysium." Give the stone back to the woman. */ DO~~ + g-bbD093.J1
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @72 /*Deduce that the memory must be of the Upper Plane, a place close to nature, not leaning either towards Law nor Chaos.  "A beautiful vision. I think it must be from Elysium." Give the stone back to the woman. */ DO~~ + g-bbD093.J1
IF~~THEN REPLY @73 /*"It's a beautiful vision, but I have no idea where it could be from." Give the stone back to the woman. */ DO~~ + g-bbD093.L1
IF~~THEN REPLY @74 /*"This vision is too beautiful for someone like you." Smash the stone on the ground. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) ~ + g-bbD093.K1
IF~~THEN REPLY @75 /*"You know what, I think I'll keep this stone after all." */ DO~~ + g-bbD093.LA1
CHAIN IF~~THEN g-bbD093 g-bbD093.G3
@77 /*You do not let the memory surface, but the woman does not know that. She thinks you are experiencing something beautiful, and she stares at you like someone who has shared their most prized possession. Wary, but also proud that you are experiencing something important to her. */
END
IF~~THEN REPLY @79 /*Lie: "It's one of the Upper Planes. Maybe Elysium?" */ DO~IncrementGlobal("Law","GLOBAL",-1) ~ + g-bbD093.J1
IF~~THEN REPLY @80 /*Lie: "It's one of the Upper Planes. Maybe Beastlands?" */ DO~IncrementGlobal("Law","GLOBAL",-1)~ + g-bbD093.J2
IF~~THEN REPLY @81 /*Lie: "It's one of the Upper Planes. Maybe Ysgard?" */ DO~IncrementGlobal("Law","GLOBAL",-1)~ + g-bbD093.J2
IF~~THEN REPLY @82 /*Lie: "It must be somewhere on the Prime Material Plane, for sure." */ DO~IncrementGlobal("Law","GLOBAL",-1)~ + g-bbD093.J3
IF~~THEN REPLY @83 /*"I have no idea where it could be from." Give the stone back to the woman. */ DO~~ + g-bbD093.L1
IF~~THEN REPLY @84 /*"This vision is too beautiful for someone like you." Smash the stone on the ground. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) ~ + g-bbD093.K1
IF~~THEN REPLY @85 /*"You know what, I think I'll keep this stone after all." */ DO~~ + g-bbD093.LA1
CHAIN IF~~THEN g-bbD093 g-bbD093.J1
@87 /*Greedily, the woman grabs the stone and hugs it to her chest like a newborn baby. "Elysium? Ha! People like me don't end up there anyway. Pike off, leave me alone." */
END
IF~CheckStatGT(Protagonist,16,WIS) GlobalGT("Good","GLOBAL",-1)~THEN REPLY @89 /*"You're wrong. Anyone can get there if they decide to reevaluate their life. You just have to find the goodness within yourself and share it with others. That's all you need to do to walk the Blessed Fields of Elysium." */ DO~IncrementGlobal("GOOD","GLOBAL",1) GiveExperience(Protagonist,32000) SetGlobal("G-093exp","GLOBAL",1)~ + g-bbD093.M1
IF~~THEN REPLY @90 /*"Well, true. So enjoy your vision, it doesn't get any better than this." */ DO~~ EXIT
IF~~THEN REPLY @91 /*"Well, true. You'll probably end up in the Lower Planes. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.J2
@93 /*Greedily, the woman grabs the stone and hugs it to her chest like a newborn. "Upper Planes? Ha! People like me don't end up there anyway. Pike off, leave me alone." */
END
IF~CheckStatGT(Protagonist,16,WIS) GlobalGT("Good","GLOBAL",-1)~THEN REPLY @95 /*"You're wrong. Anyone can get there if they decide to reevaluate their life. You just have to find the goodness within yourself and share it with others. That's all you need to do to walk the Blessed Fields of Elysium." */ DO~IncrementGlobal("GOOD","GLOBAL",1) GiveExperience(Protagonist,32000) SetGlobal("G-093exp","GLOBAL",1)~ + g-bbD093.M1
IF~~THEN REPLY @96 /*"Well, true. So enjoy your vision, it doesn't get any better than this." */ DO~~ EXIT
IF~~THEN REPLY @97 /*"Well, true. You'll probably end up in the Lower Planes. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.J3
@99 /*"Nah, not true." She waves her hand in resignation. "You're no expert. Even a little tiefling knows that there are no views like that on Prime. You just wasted my time. Goodbye." */
=@100 /*The woman practically snatches the stone from your hands and hugs it to her chest like a beloved child she has missed so much. "Never mind. It's mine. Now, pike off and leave me alone." The woman no longer pays attention to you, completely absorbed in the vision of the stone. */
END
IF~~THEN REPLY @102 /*Leave her. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.K1
@104 /*A wild, primal howl erupts from the woman's throat, raising the hair on the back of your neck. She lunges at you with fury and mad despair in her eyes. Only one of you will make it out of the Ditch alive today. */
END
IF~~THEN REPLY @108 /*Defend yourself. */ DO~Enemy()
Attack(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.L1
@110 /*The woman practically snatches the stone from your hands and hugs it to her chest like a beloved child she has missed so much. "Never mind. It's mine. Now, pike off and leave me alone." The woman no longer pays attention to you, completely absorbed in the vision of the stone. */
END
IF~~THEN REPLY @112 /*Leave her. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.LA1
@114 /*A wild, primal howl erupts from the woman's throat, raising the hair on the back of your neck. She lunges at you with fury and mad despair in her eyes. You struggle for a moment, but the stone remains in your hands. Finally, with superhuman effort, the woman manages to wrestle it from you. Unfortunately, it slips through her fingers. You can only watch as the stone shatters into a fountain of fragments. The woman screams, glaring at you with hatred. Only one of you will make it out of the Ditch alive today. */
END
IF~~THEN REPLY @118 /*Defend yourself. */ DO~Enemy()
Attack(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.M1
@120 /*You see that despite her initial reluctance, the woman is looking at you now with greater attention. Your words must have hit a fertile, though long-forgotten, patch of soil deep in her heart and bloomed into something new. She ponders something for a moment, then hesitantly puts the stone in her pocket. She nods to you, then walks away without a word. You do not know if she will actually manage to change her life in the end, but you have a feeling that she will at least try. */
END
IF~~THEN REPLY @122 /*"Goodbye." */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.R1
@124 /*The woman looks frail and fragile, but her will to fight is greater than that of many a fiend. You struggle for a moment, but the stone remains in her hands. Eventually, however, you pull it out with a powerful tug. Perhaps too powerful, because the stone slips from between your fingers and hits the ground with a bang. You can only watch as it shatters into a fountain of shards. */
END
IF~~THEN REPLY @128 /*Defend yourself. */ DO~Enemy()
Attack(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.S1
@130 /*It is not easy, because the woman guards the stone as if it was her child... although you suspect she would not protect her own child with such ferocity. However, the thief's luck is on your side. When you walk a little further away, the woman decides that you no longer pose a threat and lies down next to her treasure. */
END
IF~~THEN REPLY @132 /*Seize the moment. */ DO~PlaySoundNotRanged("SPTR_01") GiveExperience(Protagonist,32000) SetGlobal("G-093exp","GLOBAL",1)~ + g-bbD093.S3
IF~~THEN REPLY @133 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.S2
~~ ==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @135 /*Annah nonverbally lets you know that you are barmy; even a layman would tell you that you are not able to imperceptibly steal something from someone who is holding the object in question and looking at it constantly. After a moment, however, Annah gives in and agrees to do what you say. */
==g-bbD093 @136 /*It is not easy, because the woman guards the stone as if it was her child... although you suspect she would not protect her own child with such ferocity. However, the thief's luck is on Annah's side. When your group walks a little further away, the woman decides that you no longer pose a threat and lies down next to her treasure. */
END
IF~~THEN REPLY @138 /*Let Annah act. */ DO~PlaySoundNotRanged("SPTR_01") GiveExperience(Protagonist,32000) SetGlobal("G-093exp","GLOBAL",1)~ + g-bbD093.S3
IF~~THEN REPLY @139 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.S3
@141 /*Eventually, it works. The stone is taken from the sleeping addict, and you have a chance to see its contents. */
=@142 /*You are strolling lazily through a garden. Flowers of all shapes and colors enchant you with their heavenly scents. In the treetops, birds chirp merrily. In the distance, the calm surface of a lake sparkles gently, painted gold by sunrays. Peace and harmony reign everywhere. You are not alone in this garden. The most beautiful being you have ever seen in your life is walking arm in arm with you. Light hair, golden eyes, delicate complexion, a pair of snow-white wings on their back. They smile at you. You feel perfect love and happiness in your heart. Beautiful moment, do not pass away! */
=@143 /*The vision ends, leaving sadness and emptiness behind. You now understand why the woman values this stone so much. */
END
IF~CheckStatLT(Protagonist,22,DEX)~THEN REPLY @145 /*Put the stone away... */ DO~~ + g-bbD093.T1
IF~CheckStatGT(Protagonist,21,DEX)~THEN REPLY @146 /*Put the stone away... */ DO~~ + g-bbD093.T2
CHAIN IF~~THEN g-bbD093 g-bbD093.T1
@148 /*The stone, as if on its own volition, slips from between your fingers and hits the ground with a bang. You can only watch as it shatters in a fountain of shards. A wild, primal howl erupts from the woman's throat, raising the hair on the back of your neck. She gets up and lunges at you with fury and mad despair in her eyes. Only one of you will make it out of the Ditch alive today.          */
END
IF~~THEN REPLY @151 /*Defend yourself. */ DO~Enemy()
Attack(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD093 g-bbD093.T2
@153 /*When you put the stone away, you discover that the woman is awake. She approached you while you were having a vision. "You have taken my most precious treasure. Give it back." She grabs it as if her life depended on it. */
END
IF~~THEN REPLY @155 /*Snatch the stone from her hands by force. */ DO~~ + g-bbD093.R1
IF~CheckStatGT(Protagonist,21,CHR)~THEN REPLY @156 /*"Wait! Let's talk about this vision!" */ DO~~ + g-bbD093.T3
CHAIN IF~~THEN g-bbD093 g-bbD093.T3
@158 /*"Huh? What did you see there? What do you think that is, smartass?" */
END
IF~CheckStatGT(Protagonist,15,WIS)~THEN REPLY @160 /*You feel the memory of that place coming through. "A beautiful vision. I think it must be from Elysium." Give the stone back to the woman. */ DO~~ + g-bbD093.J1
IF~CheckStatGT(Protagonist,15,INT)~THEN REPLY @161 /*Deduce that the memory must be of the Upper Plane, a place close to nature, not leaning either towards Law nor Chaos.  "A beautiful vision. I think it must be from Elysium." Give the stone back to the woman. */ DO~~ + g-bbD093.J1
IF~~THEN REPLY @162 /*"It's a beautiful vision, but I have no idea where it could be from." Give the stone back to the woman. */ DO~~ + g-bbD093.L1
IF~~THEN REPLY @163 /*"This vision is too beautiful for someone like you." Smash the stone on the ground. */ DO~IncrementGlobal("GOOD","GLOBAL",-1) ~ + g-bbD093.K1
IF~~THEN REPLY @164 /*"You know what, I think I'll keep this stone after all." */ DO~~ + g-bbD093.L1