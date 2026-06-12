BEGIN g-bbD053
CHAIN IF~NumTimesTalkedTo(0) !Dead("g-bb017")~THEN g-bbD053 g-bbD053.start1
@0 /*You see one of the theater's patrons. It is a rather young person, in their teens or early twenties, with a determined gaze, staring at their idols with adoration. They pay no more attention to you than to the other spectators. */
END
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @2 /*"Hey, could I ask you something?" */ DO~~ + g-bbD053.reaction1
IF~CheckStatGT(Protagonist,11,CHR) CheckStatLT(Protagonist,20,CHR)~THEN REPLY @3 /*"I've got a few questions." */ DO~~ + g-bbD053.reaction2
IF~CheckStatLT(Protagonist,12,CHR) CheckStatLT(Protagonist,19,STR)~THEN REPLY @4 /*"Hey, answer a few questions for me." */ DO~~ + g-bbD053.reaction3
IF~CheckStatLT(Protagonist,12,CHR) CheckStatGT(Protagonist,18,STR)~THEN REPLY @5 /*Tug on their arm. ""Hey, answer a few questions for me." */ DO~~ + g-bbD053.reaction4
IF~~THEN REPLY @6 /*Leave. */ DO~~ EXIT
CHAIN IF~OR(7) GlobalGT("G-ulfbrandwonraid","GLOBAL",0) GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0) GlobalGT("G-ulfbrandgaveup","GLOBAL",0) GlobalGT("G-ulfbrandlostraid","GLOBAL",0) GlobalGT("G-ulfbrandlostambush","GLOBAL",0) GlobalGT("G-ulfbrandwonambush","GLOBAL",0) GlobalGT("G-ulfbrandlady","GLOBAL",0)~THEN g-bbD053 g-bbD053.startalt
@8 /*"Where did the actors go, are they coming back?" */
END
IF~~THEN REPLY @10 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) !Global("G-doomvsfatevsKEY","GLOBAL",10) !Dead("g-bb017")~THEN g-bbD053 g-bbD053.start2
@12 /*The spectator pays no more attention to you than to the other spectators. */
END
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @14 /*"Hey, could I ask you something?" */ DO~~ + g-bbD053.reaction1
IF~CheckStatGT(Protagonist,11,CHR) CheckStatLT(Protagonist,20,CHR)~THEN REPLY @15 /*"I've got a few questions." */ DO~~ + g-bbD053.reaction2
IF~CheckStatLT(Protagonist,12,CHR) CheckStatLT(Protagonist,19,STR)~THEN REPLY @16 /*"Hey, answer a few questions for me." */ DO~~ + g-bbD053.reaction3
IF~CheckStatLT(Protagonist,12,CHR) CheckStatGT(Protagonist,18,STR)~THEN REPLY @17 /*Tug on their arm. ""Hey, answer a few questions for me." */ DO~~ + g-bbD053.reaction4
IF~~THEN REPLY @18 /*Leave. */ DO~~ EXIT
CHAIN IF~Global("G-hitmanD","GLOBAL",4)~THEN g-bbD053 g-bbD053.start3
@20 /*The spectator pays no attention to you but is clearly distressed. */
END
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @22 /*"Hey, could I ask you something?" */ DO~~ + g-bbD053.haedeathreact
IF~CheckStatGT(Protagonist,11,CHR) CheckStatLT(Protagonist,20,CHR)~THEN REPLY @23 /*"I've got a few questions." */ DO~~ + g-bbD053.haedeathreact
IF~CheckStatLT(Protagonist,12,CHR) CheckStatLT(Protagonist,19,STR)~THEN REPLY @24 /*"Hey, answer a few questions for me." */ DO~~ + g-bbD053.haedeathreact
IF~CheckStatLT(Protagonist,12,CHR) CheckStatGT(Protagonist,18,STR)~THEN REPLY @25 /*Tug on their arm. ""Hey, answer a few questions for me." */ DO~~ + g-bbD053.reaction4
IF~~THEN REPLY @26 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.reaction1
@28 /*"Of course. How can I help you, my friend?" */
END
IF~~THEN REPLY @30 /*"What excites you so much about theater?" */ DO~~ + g-bbD053.theatre
IF~~THEN REPLY @31 /*"Do you have your favourite actor or actress?" */ DO~~ + g-bbD053.actor
IF~~THEN REPLY @32 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.reaction2
@34 /*"What do you want to know?" */
END
IF~~THEN REPLY @36 /*"What excites you so much about theater?" */ DO~~ + g-bbD053.theatre
IF~~THEN REPLY @37 /*"Do you have your favourite actor or actress?" */ DO~~ + g-bbD053.actor
IF~~THEN REPLY @38 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.reaction3
@40 /*"Pike off, berk. Don't disturb me while I'm watching." */
END
IF~~THEN REPLY @42 /*"Take that back or I'll hit you really hard." */ DO~EscapeArea()~ EXIT
IF~~THEN REPLY @43 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.reaction4
@45 /*The spectator jumps in fear. Seeing your face combined with scars and muscles, they quickly give way to you. They do not answer a word - instead, they immediately run away. */
END
IF~~THEN REPLY @47 /*"Am I that scary?" */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.theatre
@49 /*"All the multiverse's a stage and all the bashers in it are merely actors. They have their exits and their entrances..." they recite. "The theaters in the Civic Festhall may be larger, but only here can we be so close to the actors! This experience is as authentic as it can be. When you meet the stares of the actors who have entered their characters on you, you feel like you're part of the play. It's a metaphor for life." */
END
IF~~THEN REPLY @51 /*"What can you tell me about theaters in the Civic Festhall?" */ DO~~ + g-bbD053.civic
IF~~THEN REPLY @52 /*"I've got another question." */ DO~~ + g-bbD053.reaction2
IF~~THEN REPLY @53 /*"Enjoy the play." */ DO~~ EXIT
IF~~THEN REPLY @54 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.actor
@56 /*"Haer'Dalis is amazing, not only as an actor. If you have the chance to talk to him, do not hesitate. On stage he becomes someone else. And he has a talent for music! What's more, he is an adept fighter, you'll remember his fighting choreography for a lifetime." */
END
IF~GlobalGT("G-haedoom","GLOBAL",0)~THEN REPLY @58 /*"Do his beliefs, the fact that he's a member of the Doomguard, influence his art?" */ DO~~ + g-bbD053.belief
IF~~THEN REPLY @59 /*"I've got another question." */ DO~~ + g-bbD053.reaction2
IF~~THEN REPLY @60 /*"Enjoy the play." */ DO~~ EXIT
IF~~THEN REPLY @61 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.civic
@63 /*"They have three theaters there. The largest, Ren Hall, has a play every night, and they're usually very spectacular plays. The smaller one is Elloweth Theater, for intimate dramas, dance, speeches, or poetry slams. And then there's the Northumber Amphitheater outside, for sports competitions or mage duels. But a theater for the *people's* people? It's down here, in the Hive, with the traveling troupe of Raelis Shai." */
END
IF~Global("AR0601_Visited","GLOBAL",0)~THEN REPLY @65 /*"Never heard of it." */ DO~~ + g-bbD053.civic1
IF~Global("AR0601_Visited","GLOBAL",1)~THEN REPLY @66 /*"It's such a grand place that I didn't even find any theaters. There's a lot going on there." */ DO~~ + g-bbD053.civic2
IF~~THEN REPLY @67 /*"I've got another question." */ DO~~ + g-bbD053.reaction2
IF~~THEN REPLY @68 /*"Enjoy the play." */ DO~~ EXIT
IF~~THEN REPLY @69 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.civic1
@71 /*The spectator seems disappointed. "Then I guess we have nothing to talk about." */
END
IF~~THEN REPLY @73 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.civic2
@75 /*"That's true. There are plenty of other entertainments there. Lectures, the Sensorium, feasts... But the theater is something special. It's like exploring nonexistent worlds." */
END
IF~~THEN REPLY @77 /*"I've got another question." */ DO~~ + g-bbD053.reaction2
IF~~THEN REPLY @78 /*"I guess so. Farewell." */ DO~~ EXIT
IF~~THEN REPLY @79 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.belief
@81 /*"To some extent, yes, but that's not important. The audience includes members of different factions or non-affiliated people. When Haer'Dalis takes on a role, his character may have beliefs that are different from his. He probably parodies those he personally disagrees with to some extent, but I know that his talent doesn't allow him to strike too many false notes. He tries his best to portray the character with dignity. His characters feel different emotions and have different approaches to life. It's not like he always portrays himself, quite the opposite." */
END
IF~~THEN REPLY @83 /*"I've got another question." */ DO~~ + g-bbD053.reaction2
IF~~THEN REPLY @84 /*"Enjoy the play." */ DO~~ EXIT
IF~~THEN REPLY @85 /*"I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD053 g-bbD053.haedeathreact
@87 /*"My favorite actor just died! I can't believe it! I think I need to go outside..." He gets ready to leave. */
END
IF~~THEN REPLY @89 /*"I'm sorry for your loss. Farewell." */ DO~EscapeArea()~ EXIT
IF~~THEN REPLY @90 /*"I killed him." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD053.ikilledhim
CHAIN IF~~THEN g-bbD053 g-bbD053.ikilledhim
@92 /*The spectator looks at you in shock and runs away. */
END
IF~~THEN REPLY @94 /*Look as he runs away. */ DO~Enemy() EscapeArea()~ EXIT