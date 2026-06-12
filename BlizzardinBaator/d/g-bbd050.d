BEGIN g-bbD050
CHAIN IF~NumTimesTalkedTo(0) Global("G-doomattention","GLOBAL",0) !CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU")  ~THEN g-bbD050 g-bbD050.start
@0 /*A dark, motionless silhouette blends into the murky water below. You'd mistake her a Sensate sculpture if not for way her long black hair moves with the breeze. She is leaning precariously over the edge, intensely observing something below.  */
END
IF~~THEN REPLY @2 /*"Greetings..." */ DO~SetGlobal("G-doomattention","GLOBAL",1) ~ + g-bbD050.hello
IF~~THEN REPLY @3 /*"Don't jump!" */ DO~SetGlobal("G-doomattention","GLOBAL",1)~ + g-bbD050.suicide
IF~CheckStatGT(Protagonist,15,INT) CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @4 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectful
IF~CheckStatGT(Protagonist,15,INT) !CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @5 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectint
IF~!CheckStatGT(Protagonist,15,INT) CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @6 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectwis
IF~!CheckStatGT(Protagonist,15,INT) !CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @7 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectfail
IF~~THEN REPLY @8 /*Attempt to save her from her impending fall.  */ DO~SetGlobal("G-doomattention","GLOBAL",1)~ + g-bbD050.save
IF~~THEN REPLY @9 /*Leave the strange woman alone. */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-doomattention","GLOBAL",0) !CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") ~THEN g-bbD050 g-bbD050.start2
@11 /*The strange, statuesque woman is still lingering dangerously close to the edge of the cliff, mesmerized by something in the water. */
END
IF~~THEN REPLY @13 /*"Greetings..." */ DO~SetGlobal("G-doomattention","GLOBAL",1)~ + g-bbD050.hello
IF~~THEN REPLY @14 /*"Don't jump!" */ DO~SetGlobal("G-doomattention","GLOBAL",1) IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.suicide
IF~CheckStatGT(Protagonist,15,INT) CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @15 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectful
IF~CheckStatGT(Protagonist,15,INT) !CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @16 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectint
IF~!CheckStatGT(Protagonist,15,INT) CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @17 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",1)~ + g-bbD050.inspectwis
IF~!CheckStatGT(Protagonist,15,INT) !CheckStatGT(Protagonist,13,WIS) Global("G-sinkerinspect","GLOBAL",0)~THEN REPLY @18 /*Take a closer look at the woman. */ DO~SetGlobal("G-sinkerinspect","GLOBAL",2)~ + g-bbD050.inspectfail
IF~!Global("G-sinkerinspect","GLOBAL",1)~THEN REPLY @19 /*Attempt to save her from her impending fall.  */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ + g-bbD050.save
IF~~THEN REPLY @20 /*Leave the strange woman alone. */ DO~~ EXIT
CHAIN IF~CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") NumTimesTalkedToGT(0)~THEN g-bbD050 g-bbD050.glab1
@22 /*The strange, statuesque woman is still lingering dangerously close to the edge of the cliff, mesmerized by something in the water. */
END
IF~~THEN REPLY @24 /*"Rrrrroooooar!!!" */ DO~~ + g-bbD050.balance
CHAIN IF~!CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") Global("G-kiaran_moander_conflict","GLOBAL",1)~THEN g-bbD050 g-bbD050.startconflict
@26 /*"What do you want? Get lost, fool. I've got nothing to say to you." */
EXIT
CHAIN IF~!CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") NumTimesTalkedToGT(0) Global("G-doomattention","GLOBAL",1) Global("G-kiaran_moander_conflict","GLOBAL",0)~THEN g-bbD050 g-bbD050.startknown
@29 /*The strange woman still hovers on the edge of life and death. Unlike the previous time, she senses you getting nearer and turns to greet you. "You return, rotten man. I see Entropy has yet to claim you." */
END
IF~!PartyHasItem("g-bbi089")~THEN REPLY @31 /*"I have some questions." */ DO~~ + g-bbD050.q
IF~PartyHasItem("g-bbi089")~THEN REPLY @32 /*"I have some questions." */ DO~~ + g-bbD050.symbol
IF~!PartyHasItem("g-bbi089")~THEN REPLY @33 /*"One day, it might just do that. I have to go." */ DO~~ EXIT
IF~PartyHasItem("g-bbi089")~THEN REPLY @34 /*"One day, it might just do that. I have to go." */ DO~~ + g-bbD050.symbol
CHAIN IF~~THEN g-bbD050 g-bbD050.balance
@36 /*The woman loses her balance and falls from the cliff before you can react. You rush to the edge and look down, hoping she might yet survive. You catch a glimpse of her face before she disappears into the depths below. You could swear that she was smiling.  */
END
IF~CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU")~THEN REPLY @38 /*"Ruh-roh..." */ DO~SetAnimState(Myself,ANIM_MIMEDIE) ActionOverride("g-bb050",DestroySelf()) SetGlobal("g-pale_woman_quest","GLOBAL",2)~ SOLVED_JOURNAL @20212 EXIT
IF~!CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU")~THEN REPLY @39 /*"Ugh..." */ DO~SetAnimState(Myself,ANIM_MIMEDIE) ActionOverride("g-bb050",DestroySelf()) SetGlobal("g-pale_woman_quest","GLOBAL",2)~ SOLVED_JOURNAL @20212 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.balance2
@41 /*The woman loses her balance and falls from the cliff before you can react. You rush to the edge and look down, hoping she might yet survive. You catch a glimpse of her face before she disappears into the depths below. You could swear that she was smiling.  */
END
IF~~THEN REPLY @43 /*"Goodbye." */ DO~SetAnimState(Myself,ANIM_MIMEDIE) ActionOverride("g-bb050",DestroySelf()) IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-Belle_sympahtetic","GLOBAL",0) SetGlobal("g-pale_woman_quest","GLOBAL",2)~ SOLVED_JOURNAL @20212 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.hello
@45 /*The woman turns gracefully, unfazed by her proximity to a deadly drop. Her pale face contrasts starkly against the darkness of her attire and hair. She is slim of build and her dagger-like cheekbones nearly pierce through her skin. You instantly notice a tattoo on her neck: a humanoid hand with a monstrous mouth. A symbol of a skull of some many-horned animal is prominently featured on her robes. She furrows her eyebrows slightly as you approach. */
=@46 /*"Greetings, indeed. Can I help you?" She looks you up and down. */
END
IF~!PartyHasItem("g-bbi089")~THEN REPLY @48 /*"I have some questions." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 + g-bbD050.q
IF~PartyHasItem("g-bbi089")~THEN REPLY @49 /*"I have some questions." */ DO~~ + g-bbD050.symbol
IF~!PartyHasItem("g-bbi089")~THEN REPLY @50 /*"I have to go now." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 EXIT
IF~PartyHasItem("g-bbi089")~THEN REPLY @51 /*"I have to go now." */ DO~~ + g-bbD050.symbol
CHAIN IF~~THEN g-bbD050 g-bbD050.q
@53 /*"I don't really have time, but if you must... ask away." */
END
IF~Global("G-belle_news","GLOBAL",0) OR(3) GlobalGT("G-ulfbrandgaveup","GLOBAL",0) GlobalGT("G-ulfbrandlostraid","GLOBAL",0) GlobalGT("G-ulfbrandlostambush","GLOBAL",0) !Dead("g-bb017")~THEN REPLY @55 /*"Did you hear the news? Haer'Dalis and Raelis Shai left Sigil safely." */ DO~SetGlobal("G-belle_news","GLOBAL",1)~ + g-bbD050.confreso1
IF~Global("G-belle_news","GLOBAL",0) !GlobalGT("G-hitmanD","GLOBAL",1) OR(4) Dead("g-bb017") GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0) GlobalGT("G-ulfbrandwonambush","GLOBAL",0) GlobalGT("G-ulfbrandwonraid","GLOBAL",0) ~THEN REPLY @56 /*"Did you hear the news? Haer'Dalis and Raelis Shai were slain by Ulfbrand." */ DO~SetGlobal("G-belle_news","GLOBAL",1)~ + g-bbD050.confreso2
IF~Global("G-belle_news","GLOBAL",0) OR(2) GlobalGT("G-hitmanD","GLOBAL",1) Dead("g-bb017")~THEN REPLY @57 /*"Did you hear the news? Haer'Dalis is dead." */ DO~SetGlobal("G-belle_news","GLOBAL",1)~ + g-bbD050.confreso3
IF~Global("G-belle_news","GLOBAL",0) GlobalGT("G-ulfbrandlady","GLOBAL",0)~THEN REPLY @58 /*"Did you hear the news? The Lady came and killed everyone involved in the faction conflict." */ DO~SetGlobal("G-belle_news","GLOBAL",1)~ + g-bbD050.confreso4
IF~Global("G-knowbelle","GLOBAL",0)~THEN REPLY @59 /*"Who are you?" */ DO~SetGlobal("G-knowbelle","GLOBAL",1)~ + g-bbD050.qwho
IF~Global("G-knowbelle","GLOBAL",1)~THEN REPLY @60 /*"Who are you again?" */ DO~~ + g-bbD050.qwho2
IF~Global("G-knowbelleD","GLOBAL",0)~THEN REPLY @61 /*"What are you doing here?" */ DO~SetGlobal("G-knowbelleD","GLOBAL",1)~ + g-bbD050.qwhat
IF~Global("G-knowbelleD","GLOBAL",1)~THEN REPLY @62 /*"What are you doing here again?" */ DO~~ + g-bbD050.qwhat2
IF~Global("G-knowhaer","GLOBAL",1) Global("G-belle_DG","GLOBAL",0)~THEN REPLY @63 /*"I noticed the symbol on your clothes. Are you a Doomguard?" */ DO~SetGlobal("G-belle_DG","GLOBAL",1)~ + g-bbD050.qdoom
IF~Global("G-knowhaer","GLOBAL",0) Global("G-belle_DG","GLOBAL",0)~THEN REPLY @64 /*"The symbol on your clothes... what is it?" */ DO~SetGlobal("G-belle_DG","GLOBAL",1)~ + g-bbD050.qdoom
IF~Global("G-belle_DG","GLOBAL",1)~THEN REPLY @65 /*"I want to talk to you about your philosophy." */ DO~~ + g-bbD050.philoini
IF~Global("G-know_moander","GLOBAL",0) Global("G-ask_monader","GLOBAL",0)~THEN REPLY @66 /*"The symbol on your neck... what is it?" */ DO~SetGlobal("G-ask_monader","GLOBAL",1)~ + g-bbD050.qmoa
IF~Global("G-know_moander","GLOBAL",0) Global("G-ask_monader","GLOBAL",1)~THEN REPLY @67 /*"The symbol on your neck... are you ready to tell me about it?" */ DO~~ + g-bbD050.qmoaalt
IF~Global("G-know_moander","GLOBAL",1) GlobalGT("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @68 /*"Tell me about your god, Moander." */ DO~SetGlobal("G-belle_talk_moander","GLOBAL",1)~ + g-bbD050.qmoa1
IF~~THEN REPLY @69 /*Push her over the edge. */ DO~~ + g-bbD050.balance2
IF~~THEN REPLY @70 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.suicide
@72 /*The woman turns gracefully, unfazed by her proximity to a deadly drop. Her pale face contrasts starkly against the darkness of her attire and hair. She is slim of build and her dagger-like cheekbones nearly pierce through her skin. You instantly notice a tattoo on her neck: a humanoid hand with a monstrous mouth. A symbol of a skull of some many-horned animal is prominently featured on her robes. She furrows her eyebrows slightly as you approach, but she fails to conceal an amused smirk. */
=@73 /*"Why would I jump *here* when the Suicide Falls is just a stroll away?" She looks you up and down. "What do you want?" */
END
IF~!PartyHasItem("g-bbi089")~THEN REPLY @75 /*"I have some questions." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 + g-bbD050.q
IF~PartyHasItem("g-bbi089")~THEN REPLY @76 /*"I have some questions." */ DO~~ + g-bbD050.symbol
IF~!PartyHasItem("g-bbi089")~THEN REPLY @77 /*"I have to go now." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 EXIT
IF~PartyHasItem("g-bbi089")~THEN REPLY @78 /*"I have to go now." */ DO~~ + g-bbD050.symbol
CHAIN IF~~THEN g-bbD050 g-bbD050.inspectful
@80 /*The woman is dressed in a dark robe, but you can see the outline of armor underneath. She appears to be human, but closer inspection reveals a set of delicate bone protrusions on the back of her neck, betraying the presence of fiendish blood. She has some tattoo on her neck, but without her turning around you cannot tell what it may be depicting. The woman appears to be fascinated by her the view, and you are confident that she is not, in fact, suicidal.  */
END
IF~~THEN REPLY @82 /*"Greetings..." */ DO~SetGlobal("G-doomattention","GLOBAL",1)~ + g-bbD050.hello
IF~~THEN REPLY @83 /*Leave the strange woman alone. */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.inspectint
@85 /*The woman is dressed in a dark robe, but you can see the outline of armor underneath. She appears to be human, but closer inspection reveals a set of delicate bone protrusions on the back of her neck, betraying the presence of fiendish blood. She has some tattoo on her neck, but without her turning around you cannot tell what it may be depicting. The woman appears to be fascinated by her the view, and you come to the rational conclusion that she is not, in fact, suicidal.  */
END
IF~~THEN REPLY @87 /*"Greetings..." */ DO~SetGlobal("G-doomattention","GLOBAL",1)~ + g-bbD050.hello
IF~~THEN REPLY @88 /*Leave the strange woman alone. */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.inspectwis
@90 /*The woman is dressed in a dark robe, but you can see the outline of armor underneath. She appears to be human, but closer inspection reveals a set of delicate bone protrusions on the back of her neck, betraying the presence of fiendish blood. She has some tattoo on her neck, but without her turning around you cannot tell what it may be depicting. The woman appears to be fascinated by her the view, and your intuition concludes she is not, in fact, suicidal. */
END
IF~~THEN REPLY @92 /*"Greetings..." */ DO~SetGlobal("G-doomattention","GLOBAL",1)~ + g-bbD050.hello
IF~~THEN REPLY @93 /*Leave the strange woman alone. */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.inspectfail
@95 /*The woman is dressed in a dark robe. For some reason, her appearance evokes associations with death, leaving you a bit unsettled. More concerning, however, is that she looks as if she is about to jump.  */
END
IF~~THEN REPLY @97 /*"Don't jump!" */ DO~SetGlobal("G-doomattention","GLOBAL",1) IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.suicide
IF~~THEN REPLY @98 /*Attempt to save her from her impending fall.  */ DO~SetGlobal("G-doomattention","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 + g-bbD050.save
IF~GlobalLT("GOOD","GLOBAL",-7)~THEN REPLY @99 /*"Do it!" */ DO~SetGlobal("G-doomattention","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",1)~ SOLVED_JOURNAL @20211 + g-bbD050.doit
CHAIN IF~~THEN g-bbD050 g-bbD050.save
@101 /*Your moment to be a hero has come! But how will you deliver this dark damsel from danger? */
END
IF~CheckStatGT(Protagonist,15,DEX)~THEN REPLY @103 /*Grab her by the cloak. */ DO~~ + g-bbD050.cloak
IF~!CheckStatGT(Protagonist,15,DEX)~THEN REPLY @104 /*Grab her by the cloak. */ DO~~ + g-bbD050.balance
IF~CheckStatGT(Protagonist,15,STR)~THEN REPLY @105 /*Grab her by the shoulder. */ DO~~ + g-bbD050.shoulder
IF~!CheckStatGT(Protagonist,15,STR)~THEN REPLY @106 /*Grab her by the shoulder. */ DO~~ + g-bbD050.balance
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @107 /*Grab her around the waist. */ DO~~ + g-bbD050.waist
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @108 /*Grab her around the waist. */ DO~~ + g-bbD050.balance
IF~~THEN REPLY @109 /*"Look out!" */ DO~~ + g-bbD050.balance
IF~GlobalGT("g-actualcannibal","GLOBAL",0)~THEN REPLY @110 /*Bite her in the neck. */ DO~~ + g-bbD050.cannibal
CHAIN IF~~THEN g-bbD050 g-bbD050.cloak
@112 /*That was a bad idea. Reacting to a sudden touch, the woman instinctively pushes herself away from you, slipping out of her cloak. Luckily, your reflexes are sharp enough to grab her arm in time and pull her away from the edge, and she falls to the ground.  */
=@113 /*"What in the Infinite Layers do you think you're doing, addle-brain?!" She shouts, standing up again and grasping for her weapon. */
=@114 /*You finally meet her gaze. Her pale face contrasts starkly against the darkness of her attire and hair. She is slim of build and her dagger-like cheekbones nearly pierce through her skin. You instantly notice a tattoo on her neck: a humanoid hand with a monstrous mouth.  */
END
IF~~THEN REPLY @116 /*"I thought you were going to jump. I tried to save you." */ DO~~ + g-bbD050.save2
IF~~THEN REPLY @117 /*"I think you meant 'thank you', you ungrateful wench." */ DO~~ + g-bbD050.offend
IF~~THEN REPLY @118 /*Push her over the edge. */ DO~~ + g-bbD050.balance2
CHAIN IF~~THEN g-bbD050 g-bbD050.shoulder
@120 /*As you grasp her shoulder without warning, the woman instinctively pushes herself away from you and gets dangerously close to the edge. Luckily, you are holding her strongly enough to prevent her from falling. You pull her back from the edge and she falls to the ground. */
=@121 /*"What in the Infinite Layers do you think you're doing, addle-brain?!" She shouts, standing up again and grasping for her weapon. */
=@122 /*You finally meet her gaze. Her pale face contrasts starkly against the darkness of her attire and hair. She is slim of build and her dagger-like cheekbones nearly pierce through her skin. You instantly notice a tattoo on her neck: a humanoid hand with a monstrous mouth.  */
END
IF~~THEN REPLY @124 /*"I thought you were going to jump. I tried to save you." */ DO~~ + g-bbD050.save2
IF~~THEN REPLY @125 /*"I think you meant 'thank you', you ungrateful wench." */ DO~~ + g-bbD050.offend
IF~~THEN REPLY @126 /*Push her over the edge. */ DO~~ + g-bbD050.balance2
CHAIN IF~~THEN g-bbD050 g-bbD050.waist
@128 /*As the woman feels strange hands around her, she instinctively pushes herself away from you. However, something makes her stop struggling, and she allows you to pull her back from the edge.  */
=@129 /*"What... do you think you're doing?" She shouts. She seems confused. */
=@130 /*You finally meet her gaze. Her pale face contrasts starkly against the darkness of her attire and hair. She is slim of build and her dagger-like cheekbones nearly pierce through her skin. You instantly notice a tattoo on her neck: a humanoid hand with a monstrous mouth.  */
END
IF~~THEN REPLY @132 /*"I thought you were going to jump. I tried to save you." */ DO~~ + g-bbD050.save2
IF~~THEN REPLY @133 /*"I think you meant 'thank you', you ungrateful wench." */ DO~~ + g-bbD050.offend
IF~~THEN REPLY @134 /*Push her over the edge. */ DO~~ + g-bbD050.balance2
CHAIN IF~~THEN g-bbD050 g-bbD050.offend
@136 /*She inhales deeply. Her expression of anger is far more terrifying than you could expect. For a moment, she seems to be preparing to cast a spell... and then she spits in your face. */
END
IF~~THEN REPLY @138 /*"You'll regret that!" Attack her. */ DO~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself)~ EXIT
IF~~THEN REPLY @139 /*"I'm sorry, could we start over?" */ DO~~ + g-bbD050.offend2
IF~~THEN REPLY @140 /*"Well, in that case..." Push her over the edge. */ DO~~ + g-bbD050.balance2
CHAIN IF~~THEN g-bbD050 g-bbD050.offend2
@142 /*She squints and looks you over again. After a brief pause, she smiles and extends her hand graciously, waiting for you to kiss it. "Of course, where are my manners? You *clearly* meant well." */
END
IF~~THEN REPLY @144 /*Bend down and kiss her hand. */ DO~~ + g-bbD050.death
IF~~THEN REPLY @145 /*Shake her hand. */ DO~~ + g-bbD050.death
IF~~THEN REPLY @146 /*Push her over the edge. */ DO~~ + g-bbD050.balance2
CHAIN IF~~THEN g-bbD050 g-bbD050.death
@148 /*Her skin is cold to the touch - not icy like the undead, but cold for a humanoid. Any further observations you'd make are interrupted by a wave of necromantic energy flooding your body. You feel every vein in your body contract rapidly and then erupt, and you fall limply to the ground. In your last moments of lucidity, you watch the pale woman walk away. */
END
IF~~THEN REPLY @150 /*Close your eyes.  */ DO~ActionOverride(Protagonist,SetAnimState(Myself,ANIM_MIMEDIE)) DestroySelf() Kill(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.save2
@152 /*"Why would I jump *here* when the Suicide Falls is just a stroll away?" She looks you up and down. "Right... so you aren't a psycho, just an addle-cove." */
END
IF~!PartyHasItem("g-bbi089")~THEN REPLY @154 /*"I have some questions." */ DO~~ + g-bbD050.q
IF~PartyHasItem("g-bbi089")~THEN REPLY @155 /*"I have some questions." */ DO~~ + g-bbD050.symbol
IF~!PartyHasItem("g-bbi089")~THEN REPLY @156 /*"I have to go now." */ DO~~ EXIT
IF~PartyHasItem("g-bbi089")~THEN REPLY @157 /*"I have to go now." */ DO~~ + g-bbD050.symbol
CHAIN IF~~THEN g-bbD050 g-bbD050.doit
@159 /*The woman turns gracefully, unfazed by her proximity to a deadly drop. Her pale face contrasts starkly against the darkness of her attire and hair. She is slim of build and her dagger-like cheekbones nearly pierce through her skin. You instantly notice a tattoo on her neck: a humanoid hand with a monstrous mouth. A symbol of a skull of some many-horned animal is prominently featured on her robes. She furrows her eyebrows slightly as you approach. */
=@160 /*"Why would I jump *here* when the Suicide Falls is just a stroll away?" She looks you up and down. "Are we going to have any trouble?" */
END
IF~~THEN REPLY @162 /*"Why not? I love trouble." */ DO~~ + g-bbD050.trouble
IF~~THEN REPLY @163 /*Push her over the edge. */ DO~~ + g-bbD050.balance2
IF~~THEN REPLY @164 /*"No. I have some questions." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @165 /*"No. I actually have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.trouble
@167 /*She scrutinizes you for a moment, before smiling and extending her hand graciously, as if she expects you to kiss it. "I do love trouble as well. I think maybe we would make a great pair. My name is... Belle." */
END
IF~~THEN REPLY @169 /*"Well, I don't think we would..." Attack her.  */ DO~Enemy()
Attack(Protagonist)
ForceAttack(Protagonist,Myself) SetGlobal("G-belle_name","GLOBAL",1)~ EXIT
IF~~THEN REPLY @170 /*Bend down and kiss her hand. */ DO~SetGlobal("G-belle_name","GLOBAL",1)~ + g-bbD050.death
IF~~THEN REPLY @171 /*Shake her hand. */ DO~SetGlobal("G-belle_name","GLOBAL",1)~ + g-bbD050.death
IF~~THEN REPLY @172 /*Push her over the edge. */ DO~SetGlobal("G-belle_name","GLOBAL",1)~ + g-bbD050.balance2
CHAIN IF~~THEN g-bbD050 g-bbD050.cannibal
@174 /*As your teeth sink into her soft neck, your mouth fills almost instantly with blood. The woman shrieks in terror and forcefully pushes herself away from you, almost leaping over the edge. When you approach the edge of the cliff, you get a brief glimpse of her before she disappears into the depths. A chunk of her flesh stays in your mouth.  */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @175 /*"I'm warning you! I shall not stand for this!" */
END
IF~~THEN REPLY @178 /*"That tasted sweet." */ DO~ActionOverride("g-bb050",DestroySelf())  IncrementGlobal("GOOD","GLOBAL",-2) IncrementGlobal("LAW","GLOBAL",-2) SetGlobal("G-Belle_cannibal","GLOBAL",1) SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol
@180 /*The pale woman's eyes suddenly widen. */
=@181 /*"Wait! What do you have in there?" She suddenly reaches towards the bag attached to your belt. "Show me!" */
END
IF~~THEN REPLY @183 /*Allow her to search you. */ DO~~ + g-bbD050.symbol2
IF~~THEN REPLY @184 /*"What I have in there is my own business, lady." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.ladyalt
IF~~THEN REPLY @185 /*"Excuse me, shouldn't we get to know each other first..." */ DO~~ + g-bbD050.joke
IF~~THEN REPLY @186 /*"Just happy to see you." */ DO~~ + g-bbD050.joke
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol2
@188 /*She rummages through your bag without any regard to your belongings, leave crumpled papers and scratched jewelry in her wake. After several moments, she finally locates what she was searching for.  */
==g-bbd050 IF~GlobalGT("G-BBMain","GLOBAL",5)~THEN @189 /*You hear high pitched lamentations from within your bag. [g-proch] */
=@190 /*"Yes!" She takes out the decrepit amulet you found in Ysgard. "Oh sweet, great dread. *Yes!*" Ecstatically, she presses the amulet against her neck in a strangely sensual manner. */
==g-bbd050 IF~GlobalGT("G-BBMain","GLOBAL",5)~THEN @191 /*Prod pokes his head out of the bag, confused and clutching his left eye, which evidently fell victim to the woman's long nails. */
END
IF~~THEN REPLY @193 /*"Are you.. alright?" */ DO~~ + g-bbD050.symbol3
IF~~THEN REPLY @194 /*"This old thing? What is it?" */ DO~~ + g-bbD050.symbol3a
IF~~THEN REPLY @195 /*"It's mine, lady. Give it back." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.joke
@197 /*"Ah yes, very funny... I don't have time for this!" With impatience in her voice, she digs into your bag. */
END
IF~~THEN REPLY @199 /*Allow her to search you. */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.symbol2
IF~~THEN REPLY @200 /*"What I have there is my own business, lady." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol3
@202 /*"Never better. This artifact is very dear to me. You will give it to me, yes?" */
END
IF~~THEN REPLY @205 /*"This old thing? What is it?" */ DO~~ + g-bbD050.symbol3a
IF~~THEN REPLY @206 /*"It's mine, lady. Give it back." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol3a
@208 /*"It's a symbol of my god. A harbinger of their awaited return. Something proving that nobody can slay the Darkbringer." */
END
IF~GlobalLT("GOOD","GLOBAL",0)~THEN REPLY @210 /*"The Darkbringer? Who is that?" */ DO~SetGlobal("G-know_moander","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",4)~ SOLVED_JOURNAL @20214 + g-bbD050.symbol4E
IF~!GlobalLT("GOOD","GLOBAL",0)~THEN REPLY @211 /*"The Darkbringer? Who is that?" */ DO~~ + g-bbD050.symbol4G
IF~Global("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @212 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit2
IF~Global("G-Belle_sympahtetic","GLOBAL",1)~THEN REPLY @213 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit
IF~~THEN REPLY @214 /*"It's mine, lady. Give it back." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol4G
@216 /*"You reek of naivete, stranger. And with it usually comes... narrow-mindedness. You are not able to understand the answer to the question you have asked because it does not fit into your view of what is moral and what is not. There is no point in answering it." Her words sound somewhat rehearsed, as if she had memorized a response to a question she is frequently asked. */
END
IF~~THEN REPLY @218 /*"That sounds like an eloquent excuse for evil..." */ DO~SetGlobal("G-know_moander","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",4)~ SOLVED_JOURNAL @20214 + g-bbD050.evil
IF~Global("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @219 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit2
IF~Global("G-Belle_sympahtetic","GLOBAL",1)~THEN REPLY @220 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit
IF~~THEN REPLY @221 /*"It's mine, lady. Give it back." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol4E
@223 /*"You... maybe you'll understand. Darkbringer is the divine equivalent of the cosmic element we worship. Entropy. The god of decay, rot, and decomposition: Moander." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @224 /*"Moander? They're a very old power, one of the very first... but they were killed by an upstart demigod some years ago..." */
==g-bbd050 IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~THEN @225 /*"Foolish fiend, you cannot kill the old one. Their death was a cosmic lie." */
END
IF~CheckStatGT(Protagonist,16,INT)~THEN REPLY @227 /*"And... the existence of this amulet is proof that Moander is still alive?" */ DO~~ + g-bbD050.symbol4Ea
IF~Global("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @228 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit2
IF~Global("G-Belle_sympahtetic","GLOBAL",1)~THEN REPLY @229 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit
IF~~THEN REPLY @230 /*"It's mine, lady. Give it back." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.symbol4Ea
@232 /*"Their existence? No." She laughs, looking at the amulet yet again. She puts it up against her larynx, across from her tattoo. Side by side, it is obvious that the two are identical in design. "The fact that the amulet found its way to me is destiny." */
END
IF~Global("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @234 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit2
IF~Global("G-Belle_sympahtetic","GLOBAL",1)~THEN REPLY @235 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit
IF~~THEN REPLY @236 /*"This is all well and good, lady, but it's also *mine*. Give it back!" */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.evil
@238 /*"Evil? Ha!" She smiles and touches your cheek tenderly. "My dear rotten man, what is evil about the natural order of things?" */
=@239 /*"Darkbringer is the divine equivalent of the cosmic element we worship. Entropy. The god of decay, rot, and decomposition: Moander. Only a simpleton sees the inevitability of things coming to an end as evil." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @240 /*"Moander? They're a very old power, one of the very first... but they were killed by an upstart demigod some years ago..." */
==g-bbd050 IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~THEN @241 /*"Foolish fiend, you cannot kill the old one. Their death was a cosmic lie." */
END
IF~CheckStatGT(Protagonist,16,INT)~THEN REPLY @243 /*"And... the existence of this amulet is proof that Moander is still alive?" */ DO~~ + g-bbD050.symbol4Ea
IF~Global("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @244 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit2
IF~Global("G-Belle_sympahtetic","GLOBAL",1)~THEN REPLY @245 /*"Fine. If it's so important to you, keep it." */ DO~~ + g-bbD050.keepit
IF~~THEN REPLY @246 /*"It's mine, lady. Give it back." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",0)~ + g-bbD050.lady
CHAIN IF~~THEN g-bbD050 g-bbD050.keepit
@248 /*A bright, innocent smile lights up the woman's pale face. She looks at the amulet again, presses it against her heart like a private letter from a lover, and carefully places it into a pouch in her belt. She then returns her gaze to you, before suddenly throwing herself at you. */
END
IF~!CheckStatGT(Protagonist,16,DEX)~THEN REPLY @250 /*"Huh..." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",2) SetGlobal("g-pale_woman_quest","GLOBAL",5)~ SOLVED_JOURNAL @20215 + g-bbD050.kiss
IF~CheckStatGT(Protagonist,16,DEX)~THEN REPLY @251 /*Allow her to do it. */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",2) SetGlobal("g-pale_woman_quest","GLOBAL",5)~ SOLVED_JOURNAL @20215 + g-bbD050.kiss
IF~CheckStatGT(Protagonist,16,DEX)~THEN REPLY @252 /*Move back. */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",5)~ SOLVED_JOURNAL @20215 + g-bbD050.nokiss
CHAIN IF~~THEN g-bbD050 g-bbD050.keepit2
@254 /*A bright, innocent smile lights up the woman's pale face. She looks at the amulet again, presses it against her heart like a private letter from a lover, and carefully places it into a pouch in her belt. "Thank you! May you decay among the last of your kind." */
END
IF~~THEN REPLY @256 /*"I still have some questions." */ DO~TakePartyItem("g-bbi089") AddexperienceParty(60000)  SetGlobal("g-pale_woman_quest","GLOBAL",5)~ SOLVED_JOURNAL @20215 + g-bbD050.q
IF~~THEN REPLY @257 /*"I have to go now. Farewell." */ DO~TakePartyItem("g-bbi089") AddexperienceParty(60000)  SetGlobal("g-pale_woman_quest","GLOBAL",5)~ SOLVED_JOURNAL @20215 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.kiss
@259 /*She stands on her tiptoes, wraps her arms around your neck, and places a soft kiss on your scarred cheek. Her hand darts back to the pouch protectively, confirming it is still safe. "Thank you. May you decay among the last of your kind."  */
END
IF~~THEN REPLY @261 /*"I still have some questions." */ DO~TakePartyItem("g-bbi089") AddexperienceParty(60000)~ + g-bbD050.q
IF~~THEN REPLY @262 /*"I have to go now. Farewell." */ DO~TakePartyItem("g-bbi089") AddexperienceParty(60000)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.nokiss
@264 /*When it becomes clear that you do not welcome such affection, the woman loosens her grip and steps back as well. She clears her throat to break the awkward silence and puts her hands back on her bag. "Anyway... thank you. May you decay among the last of your kind." */
END
IF~~THEN REPLY @266 /*"I still have some questions." */ DO~TakePartyItem("g-bbi089") AddexperienceParty(60000)~ + g-bbD050.q
IF~~THEN REPLY @267 /*"I have to go now. Farewell." */ DO~TakePartyItem("g-bbi089") AddexperienceParty(60000)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.lady
@269 /*"Lady?" The woman sounds offended. "I am nobody's lady. And *it* belongs to me." She grabs you by the belt and leans over the edge. */
END
IF~!CheckStatGT(Protagonist,16,DEX)~THEN REPLY @271 /*"Huh..." */ DO~~ + g-bbD050.falltogether
IF~CheckStatGT(Protagonist,16,DEX) !CheckStatGT(Protagonist,16,STR)~THEN REPLY @272 /*Try to free yourself. */ DO~~ + g-bbD050.falltogether
IF~CheckStatGT(Protagonist,16,DEX) CheckStatGT(Protagonist,16,STR)~THEN REPLY @273 /*Try to free yourself. */ DO~~ + g-bbD050.fallalone
IF~CheckStatGT(Protagonist,16,DEX) CheckStatGT(Protagonist,16,STR)~THEN REPLY @274 /*Allow it to happen. */ DO~~ + g-bbD050.falltogether
CHAIN IF~~THEN g-bbD050 g-bbD050.ladyalt
@276 /*"Lady?" The woman sounds offended. "I am nobody's lady." With superhuman speed, she reaches into your bag and in a second pulls out the decrepit amulet you retrieved from a corpse in Ysgard. She stares at it, as if it were the most sacred of treasures.  */
=@277 /*"And it belongs to *me*." She grabs you by the belt and leans over the edge. */
END
IF~!CheckStatGT(Protagonist,16,DEX)~THEN REPLY @279 /*"Huh..." */ DO~~ + g-bbD050.falltogether
IF~CheckStatGT(Protagonist,16,DEX) !CheckStatGT(Protagonist,16,STR)~THEN REPLY @280 /*Try to free yourself. */ DO~~ + g-bbD050.falltogether
IF~CheckStatGT(Protagonist,16,DEX) CheckStatGT(Protagonist,16,STR)~THEN REPLY @281 /*Try to free yourself. */ DO~~ + g-bbD050.fallalone
IF~CheckStatGT(Protagonist,16,DEX) CheckStatGT(Protagonist,16,STR)~THEN REPLY @282 /*Allow it to happen. */ DO~~ + g-bbD050.falltogether
CHAIN IF~~THEN g-bbD050 g-bbD050.falltogether
@284 /*The dark-clad woman pulls you over the edge. Although everything is happening in an instant, time seems to slow down and your memory fills with pictures. The woman's laughing face as you both start to fall. Her eyes staring at you without a shadow of malice. Perfect bliss. */
=@285 /*With a loud splat, both of you land in the thick, almost gelatinous water. The water closes in on your, preventing you from breaching the surface. Your eyes start to burn, as if you were swimming in acid. You cannot see the woman anymore, but you still feel her touch. */
=@286 /*It only lasts for a moment. Suddenly, a wave of warmth envelops your body, and the woman is gone. As is the amulet. */
END
IF~CheckStatGT(Protagonist,20,INT) Class(Protagonist,Mage)~THEN REPLY @288 /*Try to recreate the spell and transport yourself back on land. */ DO~SetAnimState(Myself,ANIM_MIMEDIE) SetAnimState(Protagonist,ANIM_MIMEDIE) TakePartyItem("g-bbi089") ActionOverride("g-bb050",DestroySelf()) PlaySound("AM_VORTX")   StickySinisterPoof("EF01TPRT",Protagonist,1) AddexperienceParty(60000)  SetGlobal("g-pale_woman_quest","GLOBAL",6) ~ SOLVED_JOURNAL @20216 EXIT
IF~~THEN REPLY @289 /*Try to swim back up. */ DO~ SetGlobal("g-pale_woman_quest","GLOBAL",6)~ SOLVED_JOURNAL @20216 + g-bbD050.drown
IF~~THEN REPLY @290 /*Let the waters claim you. */ DO~SetAnimState(Myself,ANIM_MIMEDIE) SetAnimState(Protagonist,ANIM_MIMEDIE) TakePartyItem("g-bbi089") ActionOverride("g-bb050",DestroySelf()) Kill(Protagonist)  SetGlobal("g-pale_woman_quest","GLOBAL",6)~ SOLVED_JOURNAL @20216 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.drown
@292 /*With all your strength, you paddle through the murky, viscous prison, desperately and unsuccessfully trying to reach the surface. The grasp of the waters of the Ditch is merciless, and your consciousness starts to fade. */
END
IF~~THEN REPLY @294 /*Let the waters claim you. */ DO~SetAnimState(Myself,ANIM_MIMEDIE) SetAnimState(Protagonist,ANIM_MIMEDIE) TakePartyItem("g-bbi089") ActionOverride("g-bb050",DestroySelf()) Kill(Protagonist)~ EXIT
IF~CheckStatGT(Protagonist,20,CON)~THEN REPLY @295 /*Keep fighting. */ DO~~ + g-bbD050.drown2
CHAIN IF~~THEN g-bbD050 g-bbD050.drown2
@297 /*The harder you try the deeper you sink, as if the multiverse converts your movements into their exact opposite. */
END
IF~~THEN REPLY @299 /*Let the waters claim you. */ DO~SetAnimState(Myself,ANIM_MIMEDIE) SetAnimState(Protagonist,ANIM_MIMEDIE) TakePartyItem("g-bbi089") ActionOverride("g-bb050",DestroySelf()) Kill(Protagonist)~ EXIT
IF~CheckStatGT(Protagonist,20,WIS)~THEN REPLY @300 /*Remember. */ DO~AddexperienceParty(100000) ~ + g-bbD050.remember
CHAIN IF~~THEN g-bbD050 g-bbD050.remember
@302 /*The all-absorbing mass of disgusting, decomposing matter churns slowly. Inevitable. Indestructible. This is what the woman saw down... here. She saw... god... Her... god. She loves this despicable mound of death and decay. Her love is so powerful... [SPTR_01] */
END
IF~~THEN REPLY @304 /*Contemplate that love as the waters of the Ditch claim you. */ DO~SetGlobal("G-Belle_love","GLOBAL",1) SetAnimState(Myself,ANIM_MIMEDIE) SetAnimState(Protagonist,ANIM_MIMEDIE) TakePartyItem("g-bbi089") ActionOverride("g-bb050",DestroySelf()) Kill(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.fallalone
@306 /*At the last moment, you manage to slip from her grasp. The woman falls from the cliff alone and you stay behind. Instinctively, you look over the edge to see if she survived, but only manage to catch a glimpse of her as she disappears into the depths. You could swear she was smiling, clutching some old amulet. */
END
IF~~THEN REPLY @308 /*"Damn..." */ DO~SetAnimState(Myself,ANIM_MIMEDIE) TakePartyItem("g-bbi089") ActionOverride("g-bb050",DestroySelf()) SetGlobal("g-pale_woman_quest","GLOBAL",6)~ SOLVED_JOURNAL @20216 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwho
@311 /*"Who, me?" She scoffs. "And who are you?" */
END
IF~~THEN REPLY @313 /*Lie: "My name is Adahn." */ DO~IncrementGlobalOnceEx("Adahn","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("g-belleknowsourname","GLOBAL",1)~ + g-bbD050.qwhoA
IF~~THEN REPLY @314 /*Truth: "I don't really know who I am." */ DO~SetGlobal("g-belleknowsourname","GLOBAL",2)~ + g-bbD050.qwhoB
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhoA
@316 /*"I don't believe you. That name sounds made up." She smiles. "I'm not telling you my name either, stranger." */
END
IF~~THEN REPLY @318 /*"Nice to meet you then... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @319 /*"Nice to meet you then... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhoB
@321 /*She looks amused. "Rotten on the outside *and* the inside. At least the cover faithfully represents the contents of the book. We could become friends... but I am not telling you my name, rotten man." */
END
IF~~THEN REPLY @323 /*"Nice to meet you then... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @324 /*"Nice to meet you then... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwho2
@326 /*She sighs. "The same as last time. It's none of your business." */
END
IF~~THEN REPLY @328 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @329 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhat
@331 /*"I'm relaxing by the Ditch. I relish the smell of festering wounds from a nearby tent and the sound of the merchants yelling. I'm especially fond of the ropemaker - he's definitely *the loudest*, although that half-orc blacksmith isn't far behind. It's music to my ears. What else am I supposed to do?" */
END
IF~Global("G-know_moander","GLOBAL",1)~THEN REPLY @333 /*"You can tell me the truth. You know I won't judge." */ DO~SetGlobal("G-Belle_love","GLOBAL",1)~ + g-bbD050.qwhatAS
IF~~THEN REPLY @334 /*"But... why are you standing so close to the edge?" */ DO~~ + g-bbD050.qwhatA
IF~~THEN REPLY @335 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @336 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhatAS
@338 /*She sighs. "I just like coming here. Maybe it's because because the Ditch reminds me of my god? The big, toxic mass of different matters, all mixed together... I feel good here. But soon, I will be going on a pilgrimage, together with a few of my friends. We will venture to Offalmound to offer prayers for my god's return." */
END
IF~~THEN REPLY @340 /*"Offalmound?" */ DO~SetGlobal("G-know_moander_pilgrimage","GLOBAL",1)~ + g-bbD050.qwhatAS2
IF~~THEN REPLY @341 /*"I see... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @342 /*"I see... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhatAS2
@344 /*"It's Moander's previous domain in the Abyss, a holy place for our people. We look after it while we wait for them to return." */
END
IF~~THEN REPLY @346 /*"Tell me about your god, Moander." */ DO~SetGlobal("G-belle_talk_moander","GLOBAL",1)~ + g-bbD050.qmoa1
IF~~THEN REPLY @347 /*"I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @348 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhatA
@350 /*She shakes her head. She is improvising with no attempt to conceal that fact. Her attitude, while quite odd, is strangely magnetic. "I like to live on the edge, I guess. You know? Keeps your blood pumping... or whatever they say." */
END
IF~~THEN REPLY @352 /*"You aren't even trying." */ DO~~ + g-bbD050.qwhatB
IF~~THEN REPLY @353 /*"I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @354 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhatB
@356 /*She gives you an innocent smile that looks very strange on her sharp face. She is done talking. */
END
IF~~THEN REPLY @358 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @359 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qwhat2
@361 /*"I'm plotting to take over the city, of course. What else could I be doing?" She winks. */
END
IF~~THEN REPLY @363 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @364 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qdoom
@366 /*"Oh, this? She gestures at her clothes. "I joined the Doomguard when my... old group of friends disbanded. Their philosophy best aligned with mine when I arrived in this city." */
END
IF~Global("G-Belle_origin","GLOBAL",0)~THEN REPLY @368 /*"Where are you from, originally?" */ DO~SetGlobal("G-Belle_origin","GLOBAL",1)~ + g-bbD050.from
IF~~THEN REPLY @369 /*"What in their philosophy aligned with yours?" */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @370 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @371 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.from
@373 /*The woman stares into the distance. "I can barely remember, it's been so long. I come from a Prime, but I won't say where exactly." She glances at your scarred body. "Are you some kind of crazed stalker?" */
END
IF~~THEN REPLY @375 /*"I'm not." */ DO~~ + g-bbD050.shame
IF~~THEN REPLY @376 /*"Maybe." */ DO~SetGlobal("G-Belle_origin","GLOBAL",2) IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.spicy
IF~~THEN REPLY @377 /*"Never mind... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @378 /*"Never mind... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.shame
@380 /*The woman seems both relieved and disappointed by your assurance. Perhaps she is looking for confrontation. */
END
IF~~THEN REPLY @382 /*"But you're still not telling me..." */ DO~~ + g-bbD050.shame2
IF~~THEN REPLY @383 /*"Never mind... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @384 /*"Never mind... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.shame2
@386 /*"No... I'm not." She shrugs and smiles. "Do you have any real questions or are going to continue being really bad at making conversation?" */
END
IF~~THEN REPLY @388 /*"Actually, I *do* have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @389 /*"I think I'm done here. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.spicy
@391 /*"Oh. How brave you are to just admit it. I'm from the Realmspace, not that it matters anyway. I severed ties with all of it and made my life here."  */
END
IF~~THEN REPLY @393 /*"You're not going to tell me more about Realmspace?" */ DO~~ + g-bbD050.shame2
IF~~THEN REPLY @394 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @395 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.philoini
@397 /*"Philosophy? Fine, let's have a meaty, academic discussion over a heap of garbage." */
END
IF~~THEN REPLY @399 /*"Tell me about what attracted you to the Doomguard." */ DO~~ + g-bbD050.doomdeep
IF~GlobalGT("g-fated1","GLOBAL",0)~THEN REPLY @400 /*"What can you tell me about the conflict between the Doomguard and the Fated?" */ DO~~ + g-bbD050.conflict
IF~GlobalGT("Coaxmetal","GLOBAL",0) Global("G-sincoax","GLOBAL",0)~THEN REPLY @401 /*"In the Lower Ward, I met a golem called Coaxmetal, who was forging weapons to destroy the multiverse. You support that, yes?" */ DO~AddexperienceParty(8000) SetGlobal("G-sincoax","GLOBAL",1) IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.sincoax
IF~GlobalGT("G-knowpent","GLOBAL",0)~THEN REPLY @402 /*"What do you think of Pentar, the Doomguard's factol?" */ DO~~ + g-bbD050.pentar
IF~GlobalGT("G-kiaransaleeworship","GLOBAL",8000)~THEN REPLY @403 /*"I follow Kiaransalee, do you know her philosophy?" */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1) AddexperienceParty(80000) ~ + g-bbD050.kiaran
IF~Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @404 /*"I'm a Dustman. I abandon passion and work my way towards the True Death. What do you think about that?" */ DO~~ + g-bbD050.boring
IF~Global("Join_Godsmen","GLOBAL",6)~THEN REPLY @405 /*"I'm a Godsman. Every life is divine and our drive towards death is a test. What do you think about that?"  */ DO~~ + g-bbD050.great
IF~Global("Join_Sensates","GLOBAL",1)~THEN REPLY @406 /*"I'm a Sensate. I'd like to experience the multiverse through my senses. What do you think about that?" */ DO~~ + g-bbD050.great
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @407 /*"I'm a Chaosman. I like apples. Don't believe what you read. Bark, bark! What do you think about that?" */ DO~~ + g-bbD050.great
IF~Global("Join_Anarchists","GLOBAL",1)~THEN REPLY @408 /*"I'm an Anarchist. Factions are a lie to sate the higher-ups' greed. We've got to abolish them. That's my truth. What do you think about that?" */ DO~~ + g-bbD050.great
IF~Global("G-know_moander","GLOBAL",1)~THEN REPLY @409 /*"Tell me about your god, Moander." */ DO~SetGlobal("G-belle_talk_moander","GLOBAL",1)~ + g-bbD050.qmoa1
IF~~THEN REPLY @410 /*"Never mind... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @411 /*"Never mind... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.doomdeep
@413 /*"They seem to understand where the multiverse is heading. And they see the beauty of that. They got it right without overcomplicating things." */
END
IF~!GlobalGT("Join_Dustmen","GLOBAL",0) Global("g-actualcannibal","GLOBAL",0)~THEN REPLY @415 /*"But there are so many beautiful complications to introduce." */ DO~~ + g-bbD050.doomdeep2
IF~~THEN REPLY @416 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @417 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @418 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.doomdeep2
@420 /*"Perhaps, but such cosmic philosophy should not be so tightly intertwined with our personal lives. It's a recipe for madness." */
END
IF~~THEN REPLY @422 /*"So you aren't a devout 'Entropy Maiden'?" */ DO~~ + g-bbD050.doomdeep3
IF~~THEN REPLY @423 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @424 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @425 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.doomdeep3
@427 /*"My worldview aligns with the worship of Entropy, but my heart belongs elsewhere... so no." */
END
IF~Global("G-know_moander","GLOBAL",1)~THEN REPLY @429 /*"So you still prefer Moander?" */ DO~~ + g-bbD050.doomdeep4
IF~~THEN REPLY @430 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @431 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @432 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.doomdeep4
@434 /*She smiles. "Naturally." */
END
IF~Global("G-know_moander","GLOBAL",1)~THEN REPLY @436 /*"Tell me about your god, Moander." */ DO~SetGlobal("G-belle_talk_moander","GLOBAL",1)~ + g-bbD050.qmoa1
IF~~THEN REPLY @437 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @438 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @439 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.conflict
@441 /*"Ah. The two factions have been at odds since I first came here. But recently, Rowan Darkwood has been waging a personal war against Haer'Dalis, a Doomguard actor. I think it's just a ruse - a pretext to escalate the whole thing - so that Darkwood can expand his own influence. */
END
IF~~THEN REPLY @443 /*"That's... a very astute observation. Did you share that with someone who could intervene?" */ DO~~ + g-bbD050.conflict1
IF~~THEN REPLY @444 /*"Interesting. What can you tell me about Darkwood?" */ DO~~ + g-bbD050.rowan
IF~~THEN REPLY @445 /*"So you know Haer'Dalis?" */ DO~~ + g-bbD050.haerdalis
IF~~THEN REPLY @446 /*"Why are the factions in conflict in the first place?" */ DO~~ + g-bbD050.politics
IF~~THEN REPLY @447 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @448 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @449 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.conflict1
@451 /*"No, not really. The systems here in Sigil were made to eventually dissolve. That is the natural order of things." */
END
IF~~THEN REPLY @453 /*"Do you think all Doomguard share that sentiment?" */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD050.conflict2
IF~~THEN REPLY @454 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @455 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @456 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.conflict2
@458 /*"All of them? Probably not. But I'm sure our factol, Pentar, loves the threat of dissolution, so why would I stand in her way?" She gives you a helpless smile. */
END
IF~~THEN REPLY @460 /*"What do you think of Pentar?" */ DO~~ + g-bbD050.pentar
IF~GlobalLT("G-bellerowan","GLOBAL",1)~THEN REPLY @461 /*"Interesting. What can you tell me about Darkwood?" */ DO~SetGlobal("G-knowRowan","GLOBAL",1) SetGlobal("G-bellerowan","GLOBAL",1)~ + g-bbD050.rowan
IF~~THEN REPLY @462 /*"So you know Haer'Dalis?" */ DO~~ + g-bbD050.haerdalis
IF~~THEN REPLY @463 /*"Why are the two factions in conflict in the first place?" */ DO~~ + g-bbD050.politics
CHAIN IF~~THEN g-bbD050 g-bbD050.rowan
@465 /*"Darkwood is a cynical old berk with an inflated opinion of himself, misguided beliefs, and a willingness to exploit a young girl to get ahead of the other factions. Many respect him, but I think he's a dangerous man who's been given too much power." */
END
IF~~THEN REPLY @467 /*"A young girl?" */ DO~~ + g-bbD050.alisohn
CHAIN IF~~THEN g-bbD050 g-bbD050.alisohn
@469 /*"Alisohn Nilesia. It was because of her that the execution laws in Sigil were simplified. She's a Mercykiller, and they want those laws to be as simple as possible, which isn't necessarily a good thing. This doesn't change the fact that she's a hot-headed young girl, being deliberately exploited by a cynical bastard more than three times her age. You may not follow the local chant, but their affair is obvious. I'm sure Alisohn will pay dearly for it, even though it is Rowan who is the guilty party here." */
END
IF~~THEN REPLY @471 /*"I agree with you. Rowan Darkwood is definitely not blameless." */ DO~IncrementGlobal("GOOD","GLOBAL",1) IncrementGlobal("G-Belle_curious","GLOBAL",1) IncrementGlobal("G-FatedPower","GLOBAL",-1)~ + g-bbD050.alisohn1
IF~~THEN REPLY @472 /*"He didn't do anything illegal. Law is the ultimate guide as to what is right. At least, until a more perfect one is invented." */ DO~IncrementGlobal("LAW","GLOBAL",1) IncrementGlobal("G-FatedPower","GLOBAL",1)~ + g-bbD050.alisohn2
CHAIN IF~~THEN g-bbD050 g-bbD050.alisohn1
@474 /*"I'm glad we agree." She smiles softly. "I hope they lock up Darkwood before he truly hurts that girl." */
END
IF~~THEN REPLY @476 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @477 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @478 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.alisohn2
@480 /*The woman looks disappointed. "Well then, we have a different opinion on this matter." */
END
IF~~THEN REPLY @482 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @483 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @484 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.pentar
@486 /*"When I first came here, Rozvank was factol. Keldrar was next, but he died five years ago in his own slave revolt. Then, Pentar, a ranger from Xaos, took over. She is excited by the prospect of her faction falling apart, I may have mentioned that already. She dreams of disrupting the Great Modron March or even stopping it. I also heard she survived a volcanic eruption. A fascinating individual. I respect her." */
END
IF~Global("G-sinkpen","GLOBAL",0)~THEN REPLY @488 /*"You're right. She sounds like a pretty interesting person. I'd also like to leave a mark on the planes by changing what seems permanent." */ DO~SetGlobal("G-knowpent","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-sinkpen","GLOBAL",1) IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.pentar1
IF~Global("G-sinkpen","GLOBAL",0)~THEN REPLY @489 /*"Sounds like someone who isn't very reasonable. Trying to change phenomena so fundamental to the planes can only lead to death. Personally, I respect more orderly people." */ DO~SetGlobal("G-knowpent","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1) SetGlobal("G-sinkpen","GLOBAL",1)~ + g-bbD050.pentar2
IF~~THEN REPLY @490 /*"Right... I want to tackle another aspect of philosophy." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD050.philoini
IF~~THEN REPLY @491 /*"Right... I want to ask a more general question." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ + g-bbD050.q
IF~~THEN REPLY @492 /*"Right... I have to go now." */ DO~SetGlobal("G-knowpent","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.pentar1
@494 /*"Do you really think so?" The pale woman smiles. "I appreciate that." */
END
IF~~THEN REPLY @496 /*"I am glad... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @497 /*"I am glad... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @498 /*"I am glad... but I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.pentar2
@500 /*"Well, different people find different things appealing." She shrugs. "I don't think of her as my idol, or anything like that." */
END
IF~~THEN REPLY @502 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @503 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @504 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.haerdalis
@506 /*"Well, we're both theoretically under factol Pentar. Sometimes we'll meet for a beer in one of the inns. He's a tiefling of many talents, good at swinging those swords of his, not just pretending. Quite handsome as well. Shame about all the Fated persecution." */
END
IF~~THEN REPLY @509 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @510 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @511 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.politics
@513 /*"I don't follow the exact philosophy of the Fated... I just know that they are very materialistic. I guess coveting things goes against watching those things fall apart? Other than that, Darkwood is causing unrest as well as he can, but for what reason... I don't know. Maybe he'll challenge the Lady next." */
END
IF~~THEN REPLY @516 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @517 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @518 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.sincoax
@520 /*"He does some great work. And he knows all about Entropy. I personally only visit him when I need to buy a weapon, as the area isn't particularly beautiful. I much prefer spending time by the water, you see." */
END
IF~~THEN REPLY @522 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @523 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @524 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.boring
@526 /*"That is... dull. Sure, the multiverse is dying, but it's no reason to put yourself down and just pretend it's already over. Get yourself out of that cult, there are much better... cults." */
END
IF~~THEN REPLY @528 /*"Do you think I could become a Doomguard?" */ DO~~ + g-bbD050.join
IF~~THEN REPLY @529 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @530 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @531 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.join
@533 /*"I hope *not* just to impress me.... but I don't know. Maybe?" She shrugs. "I am not a recruiter. I don't even know who does recruiting. If you're ever by the Armory, hop in and ask." */
END
IF~~THEN REPLY @535 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @536 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @537 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.great
@539 /*"Oh. If you want me to berate you on account of your faction or something, I'm not doing it. It's great that you have some convictions, congratulations." */
END
IF~~THEN REPLY @541 /*"Do you think I could become a Doomguard?" */ DO~~ + g-bbD050.join
IF~~THEN REPLY @542 /*"Right... I want to tackle another aspect of philosophy." */ DO~~ + g-bbD050.philoini
IF~~THEN REPLY @543 /*"Right... I want to ask a more general question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @544 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoa
@546 /*"My... tattoo? You have many more than I do, and they seem a lot more interesting." */
END
IF~Global("G-AkRigus","GLOBAL",0)~THEN REPLY @548 /*"I wish I could tell you about them, but the truth is that I don't remember getting any of them, apart from a few Fell did recently." */ DO~~ + g-bbD050.aww
IF~Global("G-AkRigus","GLOBAL",1) Global("g-pale_woman_quest","GLOBAL",1)~THEN REPLY @549 /*"I wish I could tell you about them, but the truth is that I don't remember getting any of them, apart from a few Fell did recently. I recently remembered that I had one from Rigus, but that one was destroyed." */ DO~IncrementGlobal("G-Belle_curious","GLOBAL",3)~ + g-bbD050.rigus
IF~CheckStatGT(Protagonist,15,CHR) Global("g-pale_woman_quest","GLOBAL",1)~THEN REPLY @550 /*"The fact that there is just one, and that it's so small, is why I believe it carries meaning. A single flower blooming on a rose bush draws more attention than one hidden among an army of other flowers." */ DO~IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.tattooexplainALT
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @551 /*"Tattoos don't look half as good on me as they do on such a pretty lady." */ DO~~ + g-bbD050.lady2
IF~~THEN REPLY @552 /*"I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @553 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.aww
@555 /*The woman openly feigns concern. "Oh, poor you. Well Fell is pretty good. Mine isn't from Sigil." */
END
IF~CheckStatGT(Protagonist,15,CHR) Global("g-pale_woman_quest","GLOBAL",1)~THEN REPLY @557 /*"Wherever it's from, it has to be meaningful if one as interesting and mysterious as you decided to get it." */ DO~IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.tattooexplain
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @558 /*"Wherever it's from, it looks great on such a pretty lady." */ DO~~ + g-bbD050.lady2
IF~~THEN REPLY @559 /*"I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @560 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.rigus
@562 /*"Oh?" The mention of Rigus seems to pique her interest. */
END
IF~~THEN REPLY @564 /*Recount what you can remember about the bladeling woman from Rigus.  */ DO~~ + g-bbD050.rigus2
CHAIN IF~~THEN g-bbD050 g-bbD050.rigus2
@566 /*You describe your vague memory of arrival in Rigus, its raw, geometrical structure, the everpresent influence of hierarchy and perfectionism. And then the perfection of the tattoo. You show her where it once was on your back, now just a large burn scar. She examines the spot with fascination. */
=@567 /*"I heard about her, the Rigus bladeling. She died many years before I ended up in the planes, but people in my circles still talk about her to this day. She was from Acheron, and yet she hated baatezu, archons, and other ultra-law-abiding snobs." She stares off into the water, sighing. "I heard she was a cartographer, that she tried to map the Outlands. But the Outlands are constantly changing... so after years of trial and error, she settled in Rigus. She had experience mapping impossible places, so she began creating... impossible tattoos. I wish I'd known her." */
=@568 /*She looks back to you and smiles softly. "Even if you don't recall it, I envy the experience." */
END
IF~~THEN REPLY @570 /*"So, what does your tattoo mean? Surely it's at least as interesting?" */ DO~~ + g-bbD050.tattooexplain
CHAIN IF~~THEN g-bbD050 g-bbD050.tattooexplain
@572 /*She smiles and blushes slightly, which has a striking effect on her pale complexion. "Funny that you should use that particular comparison... Both a single rose and that hand are symbols of my god. I got that tattoo years ago, back in Yulash, from a fellow believer. That was before my dear patron deity was assaulted back in their home plane and our people so persecuted that I had to flee. Eventually, I fled the whole Material Plane and found my way here." */
END
IF~~THEN REPLY @574 /*"Who is your patron deity?" */ DO~~ + g-bbD050.tattooexplain2
IF~GlobalGT("G-Belle_curious","GLOBAL",3)~THEN REPLY @575 /*"You were persecuted for your beliefs? That's awful." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1)~ + g-bbD050.tattooexplainS
IF~!GlobalGT("G-Belle_curious","GLOBAL",3)~THEN REPLY @576 /*"You were persecuted for your beliefs? That's awful." */ DO~~ + g-bbD050.tattooexplainF
CHAIN IF~~THEN g-bbD050 g-bbD050.tattooexplainALT
@578 /*She smiles and blushes slightly, which has a striking effect on her pale complexion. "Funny that you should use that particular comparison... Both a single rose and that hand are symbols of my god. I got that tattoo years ago, back in Yulash, from a fellow believer. That was before my dear patron deity was assaulted back in their home plane and our people so persecuted that I had to flee. Eventually, I fled the whole Material Plane and found my way here." */
END
IF~~THEN REPLY @580 /*"Who is your patron deity?" */ DO~~ + g-bbD050.tattooexplain2
IF~GlobalGT("G-Belle_curious","GLOBAL",3)~THEN REPLY @581 /*"You were persecuted for your beliefs? That's awful." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1)~ + g-bbD050.tattooexplainS
IF~!GlobalGT("G-Belle_curious","GLOBAL",3)~THEN REPLY @582 /*"You were persecuted for your beliefs? That's awful." */ DO~~ + g-bbD050.tattooexplainF
CHAIN IF~~THEN g-bbD050 g-bbD050.tattooexplain2
@584 /*Her expression grows stern. "I'd rather not say. I've found it's better not to - they are not the most *popular* power." */
END
IF~GlobalGT("G-kiaransaleeworship","GLOBAL",8000)~THEN REPLY @586 /*"I follow Kiaransalee, is your god 'worse' than that?" */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1) AddexperienceParty(80000) ~ + g-bbD050.kiaran
IF~GlobalGT("G-Belle_curious","GLOBAL",3)~THEN REPLY @587 /*"I see. So you were persecuted for your beliefs? That's awful." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1) AddexperienceParty(50000)~ + g-bbD050.tattooexplainS
IF~!GlobalGT("G-Belle_curious","GLOBAL",3)~THEN REPLY @588 /*"I see. So you were persecuted for your beliefs? That's awful." */ DO~~ + g-bbD050.tattooexplainF
CHAIN IF~~THEN g-bbD050 g-bbD050.tattooexplainS
@590 /*It is clear that nobody has ever expressed this kind of concern for her, and hearing such a statement causes a mild shock. Her stern and cold mask of irony slips for a second, and you see a sensitive, lost soul. She quickly regains her composure. "Indeed, it was awful. Maybe in the future we can discuss this further..." */
END
IF~Global("G-know_moander","GLOBAL",1) GlobalGT("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @592 /*"How about now? Tell me about your god, Moander." */ DO~SetGlobal("G-belle_talk_moander","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",3)~ SOLVED_JOURNAL @20213 + g-bbD050.qmoa1
IF~~THEN REPLY @593 /*"I have another question." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",3)~ SOLVED_JOURNAL @20213 + g-bbD050.q
IF~~THEN REPLY @594 /*"I have to go now." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",3)~ SOLVED_JOURNAL @20213 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.kiaran
@596 /*"Kiaransalee?" The woman seems shocked at first, but then curious. "That is... *bad*." She laughs, with actual joy. "I jest, of course. She is a formidable power, good for you, so brave to openly admit it. Maybe... in the future we can talk more about worship..." */
END
IF~Global("G-know_moander","GLOBAL",1) GlobalGT("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @598 /*"How about now? Tell me about your god, Moander." */ DO~SetGlobal("G-belle_talk_moander","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",3)~ SOLVED_JOURNAL @20213 + g-bbD050.qmoa1
IF~~THEN REPLY @599 /*"I have another question." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",3)~ SOLVED_JOURNAL @20213 + g-bbD050.q
IF~~THEN REPLY @600 /*"I have to go now." */ DO~SetGlobal("g-pale_woman_quest","GLOBAL",3)~ SOLVED_JOURNAL @20213 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.tattooexplainF
@602 /*"I don't need your pity, rotten man. It's in the past." She scoffs. "Good talk, though. You got any other interesting topics left? Or just screed?" */
END
IF~~THEN REPLY @604 /*"Yes, I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @605 /*"Just screed. I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.lady2
@607 /*"Lady?" The woman sounds offended. "I am nobody's lady. This conversation is over." */
END
IF~~THEN REPLY @609 /*"But... I have more questions...." */ DO~SetGlobal("G-ask_monader","GLOBAL",2)~ + g-bbD050.pikeoff
IF~~THEN REPLY @610 /*"Fine... farewell." */ DO~SetGlobal("G-ask_monader","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.pikeoff
@612 /*"Pike off, rotten man." */
EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoaalt
@615 /*"My tiny tattoo? You're covered in them, and surely they possess a lot more stories. Why don't we talk about *them*, huh?" */
END
IF~Global("G-AkRigus","GLOBAL",0) ~THEN REPLY @617 /*"I wish I could tell you about them, but the truth is that I don't remember getting any of them, apart from a few Fell did recently." */ DO~~ + g-bbD050.aww
IF~Global("G-AkRigus","GLOBAL",1)~THEN REPLY @618 /*"I wish I could tell you about them, but the truth is that I don't remember getting any of them, apart from a few Fell did recently. I recently remembered that I had one from Rigus, but that one was destroyed." */ DO~IncrementGlobal("G-Belle_curious","GLOBAL",3)~ + g-bbD050.rigus
IF~CheckStatGT(Protagonist,15,CHR)~THEN REPLY @619 /*"The fact that there is just one, and that it's so small, is why I believe it carries meaning. A single flower blooming on a rose bush draws more attention than one hidden among an army of other flowers." */ DO~IncrementGlobal("G-Belle_curious","GLOBAL",1)~ + g-bbD050.tattooexplainALT
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @620 /*"Tattoos don't look half as good on me as they do on such a pretty lady." */ DO~~ + g-bbD050.lady2
IF~~THEN REPLY @621 /*"Maybe another time. I want to ask you about something else." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @622 /*"Maybe another time... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoa1
@624 /*"Oh. Is it time to have *that* discussion?" The pale woman seems excited, but also a bit apprehensive. She may be afraid of what you will think of her after this exchange. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @625 /*"Chief, your questions are draining all the color from her cheeks. Oh wait..." */
END
IF~~THEN REPLY @627 /*"Let's talk. You have nothing to worry about." */ DO~~ + g-bbD050.qmoa1ini
IF~~THEN REPLY @628 /*"I have to see if you pose any danger to the city." */ DO~SetGlobal("G-Belle_curious","GLOBAL",0) SetGlobal("G-Belle_sympahtetic","GLOBAL",0) EscapeArea()~ + g-bbD050.pikeoffhard
IF~~THEN REPLY @629 /*"Maybe not... Let's talk about something else." */ DO~~ + g-bbD050.q
CHAIN IF~~THEN g-bbD050 g-bbD050.pikeoffhard
@631 /*"Oh, what? Are you piking serious?! Be gone." */
EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoa1ini
@634 /*"All right..." I guess I never truly told the story of myself and Moander to anyone. Not even to my Doomguard friends. They are too blinded by Entropy. But you seem... different." */
==g-bbd050 IF~Global("G-Belle_name","GLOBAL",0)~THEN @635 /*"My name is Belle, by the way... I guess I am telling you that, too." */
=@636 /*"Moander is a deity worshiped by my people back on the Prime Material plane. Moander is a god of rot and decay, older than any other god. My people's tales say that when gods first came to the planes, Moander was already there. And, at the end of time, when the multiverse dissolves as the Doomguard anticipate, Moander will be all that's left." */
END
IF~~THEN REPLY @639 /*Listen. */ DO~SetGlobal("G-Belle_name","GLOBAL",1)~ + g-bbD050.qmoa1inicont
IF~Global("G-kiaran_moander_conflict","GLOBAL",0) GlobalGT("G-kiaransaleeworship","GLOBAL",3000)~THEN REPLY @640 /*"My goddess and her army is what's going to be left in the end. The unity of the multiverse will be that of undeath, rather than a pile of rotting garbage." */ DO~SetGlobal("G-Belle_name","GLOBAL",1) SetGlobal("G-kiaran_moander_conflict","GLOBAL",1)  SetGlobal("g-pale_woman_quest","GLOBAL",7)~ SOLVED_JOURNAL @20217 + g-bbD050.worshipconflict
CHAIN IF~~THEN g-bbD050 g-bbD050.worshipconflict
@642 /*"Then we have nothing to talk about. Ever." */
EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoa1inicont
@645 /*"Of course... Moander's avatars and depictions are ugly to the unschooled eye. Their latest efforts to unite us all in their image were deemed to be some evil, destructive plan, while in reality it was an act of creation. And in that misunderstanding, a conspiracy against their following was born." */
=@646 /*"As a result, some upstart demigod supposedly killed Moander in their home in the Abyss, but I cannot believe that. You cannot kill the Darkbringer. They are inevitable. They went into hiding and they will return, when the time is right. This amulet is a sign that this time might be approaching." */
=@647 /*"I am in hiding, too. I am deemed a criminal throughout my original world, just for worshiping the only god that makes sense. My tattoo is a testament to my conviction. Luckily, I was born a tiefling, so the planes accepted me and Sigil can be my refuge while I bide my time and await Moander's return." */
END
IF~~THEN REPLY @649 /*"Thank you for your trust. It won't change my opinion of you." */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",3)~ + g-bbD050.qmoa1inifinale
IF~~THEN REPLY @650 /*"Thank you for that. Unfortunately, you are a danger to this city, so you *do* have to die." */ DO~IncrementGlobal("LAW","GLOBAL",1) Enemy()
ForceAttack(Protagonist,Myself)  SetGlobal("g-pale_woman_quest","GLOBAL",7)~ SOLVED_JOURNAL @20217 EXIT
IF~Global("G-kiaran_moander_conflict","GLOBAL",0) GlobalGT("G-kiaransaleeworship","GLOBAL",3000)~THEN REPLY @651 /*"Claiming that only your god makes sense is heresy to the Lady of the Dead, who is the bravest and most just in the planes." */ DO~SetGlobal("G-Belle_name","GLOBAL",1) SetGlobal("G-kiaran_moander_conflict","GLOBAL",1)  SetGlobal("g-pale_woman_quest","GLOBAL",7)~ SOLVED_JOURNAL @20217 + g-bbD050.worshipconflict
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoa1inifinale
@653 /*Belle grasps your hand in hers. Her skin is cold to the touch - not icy like the undead, but cold for a humanoid. */
==g-bbd050 IF~Global("g-belleknowsourname","GLOBAL",2)~THEN @654 /*"Thank you, that means a lot to me. And I don't even know your name, although... you don't know it either, so there's nothing we can do about it." */
==g-bbd050 IF~Global("g-belleknowsourname","GLOBAL",1)~THEN @655 /*"Thank you, that means a lot to me. And you haven't even told me your real name..." */
==g-bbd050 IF~Global("G-know_moander_pilgrimage","GLOBAL",1)~THEN @656 /*"I should get ready to leave. Me and some of my old friends are off to Offalmound soon. Your amulet will be a centerpiece of our ceremonies." */
==g-bbd050 IF~!Global("G-know_moander_pilgrimage","GLOBAL",1)~THEN @657 /*"I should get ready to leave. Me and some of my old friends are off to Offalmound, the home realm of Moander in the Abyss. Your amulet will be a centerpiece of our ceremonies." */
==g-bbd050 @658 /*The woman gazes at the water flowing slowly at the foot of the cliff. "It's a shame that it's time for me to leave. This could have been an interesting acquaintanceship..." */
END
IF~Global("g-belleknowsourname","GLOBAL",1)~THEN REPLY @660 /*"Oh... In truth, I don't know my name. That's why I didn't tell you." */ DO~SetGlobal("g-belleknowsourname","GLOBAL",1)~ + g-bbD050.quicknameupdate
IF~~THEN REPLY @661 /*"Will I see you again?" */ DO~SetGlobal("G-know_moander_pilgrimage","GLOBAL",1) AddexperienceParty(60000)  SetGlobal("g-pale_woman_quest","GLOBAL",8)~ SOLVED_JOURNAL @20218 + g-bbD050.qmoa1inifinale2
IF~~THEN REPLY @662 /*"Have a pleasant journey, Belle." */ DO~AddexperienceParty(60000) EscapeArea() SetGlobal("g-pale_woman_quest","GLOBAL",8)~ SOLVED_JOURNAL @20218 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.quicknameupdate
@664 /*She looks amused. "Rotten on the outside, *and* the inside. At least the cover faithfully represents the contents of this book. Well... Nameless One..." Belle begins, but then falls silent, taking a deep breath. "It's time to say goodbye." */
END
IF~~THEN REPLY @666 /*"Will I see you again?" */ DO~SetGlobal("G-know_moander_pilgrimage","GLOBAL",1) AddexperienceParty(60000)  SetGlobal("g-pale_woman_quest","GLOBAL",8)~ SOLVED_JOURNAL @20218 + g-bbD050.qmoa1inifinale2
IF~~THEN REPLY @667 /*"Have a pleasant journey, Belle." */ DO~AddexperienceParty(60000) EscapeArea() SetGlobal("g-pale_woman_quest","GLOBAL",8)~ SOLVED_JOURNAL @20218 EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.qmoa1inifinale2
@669 /*She smiles. "Who knows, friend? What we know for sure is that our matter will be eventually reunited in the body of Moander. If we don't see each other before that, I will meet you there." */
END
IF~~THEN REPLY @671 /*"What a lovely sentiment. Have a pleasant journey, Belle." */ DO~AddexperienceParty(60000) EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso1
@673 /*"Of course I heard. Let them live. I wonder where they'll end up. I'm sure they will still get themselves in trouble somehow." */
END
IF~~THEN REPLY @675 /*"Aren't you happy?" */ DO~~ + g-bbD050.confreso1a
IF~~THEN REPLY @676 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @677 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso1a
@679 /*The pale woman shrugs. "I am not *UN*happy. They're going to get themselves killed eventually." */
END
IF~~THEN REPLY @681 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @682 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso2
@684 /*"Of course I heard. Shame, but Haer'Dalis had it coming. He loved to make people's blood boil. Raelis is a different story. She's a real loss."  */
END
IF~~THEN REPLY @686 /*"You don't seem very upset about his death." */ DO~~ + g-bbD050.confreso2a
IF~~THEN REPLY @687 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @688 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso2a
@690 /*The pale woman shrugs. "I am not *happy* that he's dead. But he was going to get himself killed one way or another." */
END
IF~~THEN REPLY @692 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @693 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso3
@695 /*"Oh. I haven't actually. There was no big showdown? That's odd." */
END
IF~~THEN REPLY @697 /*"Yes. I killed him quietly." */ DO~~ + g-bbD050.confreso3a
IF~~THEN REPLY @698 /*"It is... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @699 /*"It is... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso3a
@701 /*"I can't believe it... and you just came to confess to me?" She prepares for a fight. "So be it. If you put it that way, I guess I'll have to kill you in return. Faction loyalties are still important to me." */
END
IF~~THEN REPLY @703 /*Defend yourself. */ DO~Enemy()
ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso4
@706 /*"Who didn't hear about it! It's a shame that no one survived to tell the tale. If only I could have seen it..." */
END
IF~~THEN REPLY @708 /*"I was there. I saw everything." */ DO~~ + g-bbD050.confreso4a
IF~~THEN REPLY @709 /*"I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @710 /*"I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso4a
@712 /*Her eyes open wide. "You were? You have to tell me everything!" */
END
IF~GlobalLT("G-Belle_sympahtetic","GLOBAL",1) GlobalLT("g-pale_woman_quest","GLOBAL",3)~THEN REPLY @714 /*Recount the experience. */ DO~SetGlobal("G-Belle_sympahtetic","GLOBAL",1) SetGlobal("g-pale_woman_quest","GLOBAL",3) AddexperienceParty(60000) FadeToColor([20.0],0)~ SOLVED_JOURNAL @20213 + g-bbD050.confreso4b
IF~GlobalGT("G-Belle_sympahtetic","GLOBAL",0)~THEN REPLY @715 /*Recount the experience. */ DO~FadeToColor([20.0],0)~ + g-bbD050.confreso4b
IF~Global("g-pale_woman_quest","GLOBAL",3)~THEN REPLY @716 /*Recount the experience. */ DO~FadeToColor([20.0],0)~ + g-bbD050.confreso4b
IF~~THEN REPLY @717 /*"Right... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @718 /*"Right... I have to go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD050 g-bbD050.confreso4b
@720 /*You describe best you can the strange event you observed from the shadows - the Lady arriving, everything turning silent and then the complete disintegration of both sides. The event itself was only a fraction of a second, so you focus on the inner thoughts you had while witnessing it. */
=@721 /*The pale woman listens with utmost fascination, and is a little sad when your story comes to a conclusion.  */
=@722 /*"Thank you," she says eventually. "That was exhilarating. Excellent perspective too. You're lucky you're alright." */
END
IF~~THEN REPLY @724 /*"Great... I have another question." */ DO~~ + g-bbD050.q
IF~~THEN REPLY @725 /*"Great... I have to go now." */ DO~~ EXIT