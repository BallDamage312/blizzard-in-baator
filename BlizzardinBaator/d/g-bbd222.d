BEGIN g-bbD222
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD222 g-bbD222.start1
@0 /*In your hand, you hold a stone composed of eight triangles. It is slightly translucent, and as you turn it in your hand, the patterns within it are dizzying. It seems to contain a collection of other shapes that your vocabulary lacks the words to name. The simplest way to describe the whole is an octahedron. */
=@1 /*What do you want to do with it? */
END
IF~GlobalLT("G-triplerquest","GLOBAL",8) GlobalGT("G-triplerquest","GLOBAL",4)~THEN REPLY @3 /*Look into it and concentrate. */ DO~~ + g-bbD222.stone1
IF~~THEN REPLY @4 /*Leave it. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD222 g-bbD222.start2
@6 /*What do you want to do with the octahedron? */
END
IF~GlobalLT("3stone","GLOBAL",1) GlobalLT("G-triplerquest","GLOBAL",8) GlobalGT("G-triplerquest","GLOBAL",4)~THEN REPLY @8 /*Look into it and concentrate. */ DO~~ + g-bbD222.stone1
IF~~THEN REPLY @9 /*Leave it. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD222 g-bbD222.stone1
@11 /*In an instant, you feel an overwhelming sense of despair. Bitterness turning into regret, regret turning into emptiness, and emptiness turning into agony. Its causes are shrouded in fog, deeply repressed in the subconscious. Multi-layered, the resonance of these memories is formed into the word *three.* You have the overwhelming feeling that using this stone is dangerous, but suddenly *stopping* the experience could be even more dangerous. */
END
IF~~THEN REPLY @13 /*Reach into the mist. */ DO~~ + g-bbD222.stone2
IF~CheckStatGT(Protagonist,18,WIS)
~THEN REPLY @14 /*Detach yourself from the sensation while it is still possible. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD222 g-bbD222.noexit
@17 /*The fog intensifies. You cannot break away from the sensation. It is too overwhelming, and your willpower is too weak. Further attempts could end badly. Worse, you are lost... You have to relive all the despair and regret once again. [NAM020B] */
END
IF~~THEN REPLY @19 /*It is too dangerous to leave the sensation. Reach into mist. */ DO~~ + g-bbD222.stone2
IF~CheckStatLT(Protagonist,19,WIS)
~THEN REPLY @20 /*Keep trying to detach... 
^NThis will result in a game over^- */ DO~~ + g-bbD222.over1
CHAIN IF~~THEN g-bbD222 g-bbD222.over1
@22 /*You realize you do not have the strength to leave. You cannot. But you lose focus on the fog. You cannot remember what it was about. You do not know how you got here or what you wanted to achieve. You lose control of your body and fall, but it feels like it is happening far away. You are drifting further and further away. You cannot describe *where* or *what* you are, but it is no longer the place that was... That was... [NAM020A] */
=@23 /*OH GODS! [NAM020B] */
=@24 /*NO! [NAM020C] */
END
IF~~THEN REPLY @26 /*Dissolve in madness. */ DO~SetGlobal("Game_Over","GLOBAL",4)~ EXIT
CHAIN IF~~THEN g-bbD222 g-bbD222.over2
@28 /*YOU CANNOT CHANGE THE PAST. */
=@29 /*YOU CANNOT CHANGE THE PAST.
YOU CANNOT CHANGE THE PAST.
YOU CANNOT CHANGE THE PAST. */
=@30 /*YOU CANNOT CHANGE THE PAST. YOU CANNOT CHANGE THE PAST. YOU CANNOT CHANGE THE PAST.
YOU CANNOT CHANGE THE PAST. YOU CANNOT CHANGE THE PAST. YOU CANNOT CHANGE THE PAST.
YOU CANNOT CHANGE THE PAST. YOU CANNOT CHANGE THE PAST. YOU CANNOT CHANGE THE PAST. */
END
IF~~THEN REPLY @32 /*I CANNOT CHANGE THE PAST. */ DO~SetGlobal("Game_Over","GLOBAL",4)~ EXIT
CHAIN IF~~THEN g-bbD222 g-bbD222.stone2
@34 /*The pain intensifies. Your heart feels like it is about to burst. Whatever is hidden there does not want to be discovered. [NAM020C]  */
=@35 /*The curtains are fading. */
=@36 /*^0xff8c6b69You are sitting in your old shack, a cycle like any other. You are painting rat tails to sell them at the bazaar and earn money for medicine. From the next room, you hear the baby crying again and a tear rolls down your cheek.^- */
END
IF~~THEN REPLY @38 /*Enter the room. */ DO~~ + g-bbD222.stone3
IF~CheckStatGT(Protagonist,19,WIS)
~THEN REPLY @39 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,20,WIS)
~THEN REPLY @40 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone3
@42 /*^0xff8c6b69A helpless, frail-looking little girl lies in bed. She is your beloved, only daughter. Her condition has deteriorated significantly in recent weeks. She is suffering from this new disease that has been taking a heavy toll in the Ditch lately. ^- */
END
IF~~THEN REPLY @44 /*Grab her hand. */ DO~~ + g-bbD222.stone4
IF~CheckStatGT(Protagonist,20,WIS)
~THEN REPLY @45 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,21,WIS)
~THEN REPLY @46 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone4
@48 /*^0xff8c6b69Two healers already told you nothing can be done. Pleading and begging did not help, but maybe if you had paid more, things would have turned out differently? Still, you do not have enough cash, not for making those lousy amulets. You promised yourself you would never go back to your old job. You would not take any risks, precisely because of her. For your daughter's sake...^- */
END
IF~~THEN REPLY @50 /*"But maybe third time's the charm?" */ DO~~ + g-bbD222.stone5
IF~CheckStatGT(Protagonist,21,WIS)
~THEN REPLY @51 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,22,WIS)
~THEN REPLY @52 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone5
@54 /*^0xff8c6b69Suddenly, the sound of a heavy hand knocking on the wooden door echoes through the house. "Hello! Is anyone there?" The stranger calls out in a hoarse, unpleasant voice.^- */
END
IF~~THEN REPLY @56 /*Open the door. */ DO~~ + g-bbD222.stone6
IF~CheckStatGT(Protagonist,22,WIS)
~THEN REPLY @57 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,23,WIS)
~THEN REPLY @58 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone6
@60 /*^0xff8c6b69A tall man stands in front of your house, his face covered by a hood. This is not someone you would want to let into your home. Just as you were about to close the door, he steps forward, blocking it with his foot. "Are you Paw?" he asks menacingly.^- */
END
IF~~THEN REPLY @62 /*"No one has addressed me that way in years. I'm out of business now." */ DO~~ + g-bbD222.stone7
IF~CheckStatGT(Protagonist,23,WIS)
~THEN REPLY @63 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,24,WIS)
~THEN REPLY @64 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone7
@66 /*^0xff8c6b69"*You were* out of the business, I know. I'll never understand why someone with such a reputation decided to move to the Ditch and preserve rat tails. But... You're in a bind now, aren't you? You help me, and... I'll help you."^- */
=@67 /*In your own head, parallel to the memory, you somehow feel your own hatred at the very memory of that man. */
END
IF~~THEN REPLY @69 /*"What's the job?" */ DO~~ + g-bbD222.stone8
IF~CheckStatGT(Protagonist,24,WIS)
~THEN REPLY @70 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,25,WIS)
~THEN REPLY @71 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone8
@73 /*The man's response is washed away by the flood of resentment and hatred you feel towards him. */
=@74 /*^0xff8c6b69Time passes. Cycles. You do not know what happens in the meantime. You must have been guided by instinct. By learned, automatic behaviors.^- */
=@75 /*^0xff8c6b69You did it. The idea was crazy, impossible, but... you did it. Once upon a time, you would have welcomed this success with joy. Later, you would have called it routine. Now, however, it is nothing more than picking at old, still-painful wounds.^- */
=@76 /*^0xff8c6b69You stand face to face with your hated employer. He holds out his scarred hand toward you, waiting for you to hand over the loot.^- */
END
IF~~THEN REPLY @78 /*Hand him the bag with the loot. */ DO~~ + g-bbD222.stone9
IF~CheckStatGT(Protagonist,19,WIS)~THEN REPLY @79 /*Try not handing him the bag. */ DO~~ + g-bbD222.stone9a
IF~CheckStatGT(Protagonist,24,WIS)
~THEN REPLY @80 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,25,WIS)
~THEN REPLY @81 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone9
@83 /*^0xff8c6b69"Good job. The Fated's sodded jaws will drop when they see the security intact and their armory robbed." He does not know you have kept a part of the key to yourself. An old thief's habit to avoid being bobbed. If only you had handed it over immediately...^- */
=@84 /*^0xff8c6b69You ask about his end of the deal. You hear laughter. He tries to leave, so you grab his arm. In the scuffle, the hood falls off, and you see his face.^- */
=@85 /*You see *your* face. */
=@86 /*^0xff8c6b69The man punches you and you fall. He spits with a cynical smile. "You have to keep trying on your own. You only tried twice, right? Maybe *third* time's the charm." The memory fades under a veil of pain and rage.^- */
=@87 /*^0xff8c6b69Many cycles pass. Your hands are shaking, and your heart is pounding in your throat, almost causing shortness of breath and nausea. You are kneeling, and there she is, right in front of you. You could not help her. You devoted so much time to planning the heist, counting on *his* help. Counting on the third try, which would make a difference. But you only wasted precious time. The most precious time. With trembling hands, you dig a shallow, narrow grave.^- */
END
IF~~THEN REPLY @89 /*Light three candles. */ DO~~ + g-bbD222.stone10
IF~CheckStatGT(Protagonist,18,WIS)
~THEN REPLY @90 /*Try to change the past. Maybe changing the memory is the key? */ DO~~ + g-bbD222.over2
IF~CheckStatGT(Protagonist,24,WIS)
~THEN REPLY @91 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,25,WIS)
~THEN REPLY @92 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone9a
@94 /*You cannot change the past. */
=@95 /*^0xff8c6b69"Good job. The Fated's sodded jaws will drop when they see the security intact and their armory robbed." He does not know you have kept a part of the key to yourself. An old thief's habit to avoid being bobbed. If only you had handed it over immediately...^- */
=@96 /*^0xff8c6b69You ask about his end of the deal. You hear laughter. He tries to leave, so you grab his arm. In the scuffle, the hood falls off, and you see his face.^- */
=@97 /*You see *your* face. */
=@98 /*^0xff8c6b69The man punches you and you fall. He spits with a cynical smile. "You have to keep trying on your own. You only tried twice, right? Maybe *third* time's the charm." The memory fades under a veil of pain and rage.^- */
=@99 /*^0xff8c6b69Many cycles pass. Your hands are shaking, and your heart is pounding in your throat, almost causing shortness of breath and nausea. You are kneeling, and there she is, right in front of you. You could not help her. You devoted so much time to planning the heist, counting on *his* help. Counting on the third try, which would make a difference. But you only wasted precious time. The most precious time. With trembling hands, you dig a shallow, narrow grave.^- */
=@100 /*You cannot change the past! */
END
IF~~THEN REPLY @102 /*Light three candles. */ DO~~ + g-bbD222.stone10
IF~CheckStatGT(Protagonist,18,WIS)
~THEN REPLY @103 /*Try to change the past still. Maybe changing the memory is the key? */ DO~~ + g-bbD222.over2
IF~CheckStatGT(Protagonist,24,WIS)
~THEN REPLY @104 /*Try to detach yourself from the sensation. */ DO~~ EXIT
IF~CheckStatLT(Protagonist,25,WIS)
~THEN REPLY @105 /*Try to detach yourself from the sensation. */ DO~~ + g-bbD222.noexit
CHAIN IF~~THEN g-bbD222 g-bbD222.stone10
@107 /*^0xff8c6b69The symbolic three candles.

That is all you have left. Tired, worn out, you sit down next to her. Your heart was just waiting to explode. Now that she is under the ground, nothing holds you together. The life, as if on demand, drains from your tortured body.^- */
=@108 /*^0xff8c6b69The next snapshot is blurry, as if you were looking at a pencil drawing covered with a wet, cold canvas. You stand, among others like you, on a gray expanse, waiting for your name to be called. And someone calls it out, but... it is not the voice you expected to hear. Your eyes open, the light of life pours into them once more, burning away the calm with a flood of grief and loss. All over again.^- */
=@109 /*^0xff8c6b69*He* is standing over you. The magic of a spell cast moments ago still hovers around you. "You didn't think dying would be enough to get away with it, did you? Give me the rest of the key, smartass."^- */
=@110 /*^0xff8c6b69He only asked once. Let him keep asking, third time's the charm, right? You do not answer.^- */
=@111 /*^0xff8c6b69He punches you. Silence. A second time. Silence. A third time. "You son of a berk. Don't pretend you don't understand me. Do you hear me?!" But you do not respond.^- [HIT_01F1] */
=@112 /*^0xff8c6b69Another blow lands. He shouts at you, but you understand less and less. Blow after blow, one, two, three. You hear something about... an eternal curse? It does not matter anymore. He does not stop striking. Your face turns to pulp, but you feel no pain, nothing, only despair.^- [HIT_01E] */
=@113 /*^0xff8c6b69Days pass, three days after three days. They turn into three weeks, three months, three years. Everything happens in cycles of threes, three times three times three times. And in your head it echoes eternally...^- */
END
IF~HPGT(Protagonist,32) NearbyDialog("g-bbd221")~THEN REPLY @115 /*Three times a charm. Three times a charm. Three times a charm. */ DO~AddexperienceParty(33333) SetGlobal("G-triplerquest","GLOBAL",8) Damage(Protagonist,LOWER,33) SetGlobal("G-krauswitness","GLOBAL",1) Wait(3) ActionOverride("g-bbd221",StartDialogNoSet(Player1))~ SOLVED_JOURNAL @20235 EXIT
IF~HPLT(Protagonist,33) NearbyDialog("g-bbd221")~THEN REPLY @116 /*Three times a charm. Three times a charm. Three times a charm. */ DO~AddexperienceParty(33333) SetGlobal("G-triplerquest","GLOBAL",8) Kill(Protagonist) SetGlobal("G-krauswitness","GLOBAL",1) Wait(3) ActionOverride("g-bbd221",StartDialogNoSet(Player1))~ SOLVED_JOURNAL @20235 EXIT
IF~HPGT(Protagonist,32) !NearbyDialog("g-bbd221")~THEN REPLY @117 /*Three times a charm. Three times a charm. Three times a charm. */ DO~AddexperienceParty(33333) SetGlobal("G-triplerquest","GLOBAL",8) Damage(Protagonist,LOWER,33) SetGlobal("G-krauswitness","GLOBAL",0)~ SOLVED_JOURNAL @20235 EXIT
IF~HPLT(Protagonist,33) !NearbyDialog("g-bbd221")~THEN REPLY @118 /*Three times a charm. Three times a charm. Three times a charm. */ DO~AddexperienceParty(33333) SetGlobal("G-triplerquest","GLOBAL",8) Kill(Protagonist) SetGlobal("G-krauswitness","GLOBAL",0)~ SOLVED_JOURNAL @20235 EXIT