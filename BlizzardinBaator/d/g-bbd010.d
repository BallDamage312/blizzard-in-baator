BEGIN g-bbD010
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD010 g-bbD010.start
@0 /*The priest turns away from the altar and finally sees you. He does not seem surprised by your presence. If anything, he appears cheerful. He welcomes you with a wide, fishy smile. "Oooooch... Next sacrifice? Yes-yes! Or is it a new follower of the almighty lord Istishia? Either way, this brings Dopilp joy!" */
END
IF~!CheckStatGT(Protagonist,17,INT)~THEN REPLY @2 /*"Greetings... Follower? No. Not yet anyway. Tell me more about this Istishia." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.A1
IF~!CheckStatGT(Protagonist,17,INT)~THEN REPLY @3 /*Lie: "Of course. Praise Istishia! Please remind me, brother, how to best honor our lord." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.B1
IF~!CheckStatGT(Protagonist,17,INT)~THEN REPLY @4 /*"I do not follow Istishia, and I'm not going to start now. Tell me, what are you doing here with all these people?" */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.C1
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @5 /*"Greetings... Follower? No. Not yet anyway. Tell me more about this Istishia." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.A1a
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @6 /*Lie: "Of course. Praise Istishia! Please remind me, brother, how to best honor our lord." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.B1a
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @7 /*"I do not follow Istishia, and I'm not going to start now. Tell me, what are you doing here with all these people?" */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.C1a
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @8 /*"I don't really care about what you're doing. I think I'm going to kill you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help() SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 EXIT
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @9 /*"You monsters! I've come to put an end to your bloody rituals!" */ DO~Enemy() ForceAttack(Protagonist,Myself) Help() SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 EXIT
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @10 /*"I am not a follower of Istishia. I am your doom. I was sent by the wererats to end your bloody campaign." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help() SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 EXIT
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @11 /*"I am not a follower of Istishia. I was sent by the wererats to end your bloody campaign, but I would rather resolve this peacefully." */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",7)~ SOLVED_JOURNAL @20192 + g-bbD010.quest1
CHAIN IF~NumTimesTalkedToGT(0) Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",0) Global("G-kuotoaspare","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",0)~THEN g-bbD010 g-bbD010.start1
@14 /*The priest turns to the congregation. "Oooh... you come back, yes-yes. New follower of the almighty lord Istishia!" */
END
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @16 /*"I don't really care about what you're doing. I think I'm going to kill you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @17 /*"You monsters! I've come to put an end to your bloody rituals!" */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @18 /*"I am not a follower of Istishia. I am your doom. I was sent by the wererats to end your bloody campaign." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @19 /*"I am not a follower of Istishia. I was sent by the wererats to end your bloody campaign, but I would rather resolve this peacefully." */ DO~IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD010.quest1
IF~~THEN REPLY @20 /*"Uhh... I think I got the wrong basement. Please continue. Farewell." */ DO~~ EXIT
CHAIN IF~Global("G-kuotoaspare","GLOBAL",1)~THEN g-bbD010 g-bbD010.startafterspare
@22 /*"Oh, yes-yes, how strong and mighty you are! Mightier than Istishia! Mightier than any power! Spare us, O Scarred One, and we will serve you faithfully!" */
END
IF~~THEN REPLY @24 /*"Hmm, fine. Know my mercy. I shall spare you." */ DO~SetGlobal("G-kuotoaspare","GLOBAL",2) ~ + g-bbD010.W1
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @25 /*"I don't think so. Die." */ DO~SetGlobal("G-kuotoaspare","GLOBAL",2) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @26 /*"Orville had a pretty straightforward idea. Death to Dopilp." */ DO~SetGlobal("G-kuotoaspare","GLOBAL",2) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",1) Global("G-kuotoakiaran","GLOBAL",0)~THEN g-bbD010 g-bbD010.startscar
@28 /*"What now, what now, O Scarred One?" Dopilp asks, bowing slightly. */
END
IF~~THEN REPLY @30 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @31 /*"I don't have any more tasks that I would like you to do. Go and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @32 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~NumTimesTalkedToGT(0) Global("G-kuotoabhaal","GLOBAL",1) Global("G-kuotoagod","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",0)~THEN g-bbD010 g-bbD010.startbhaal
@34 /*Dopilp excitedly oversees the nearby kuo-toa as they move things around. He sees you approaching and clearly considers bowing, but eventually settles for a deeper nod. "Scarred One! You left us in good hands. Sir Baluu and Kilthas are good for us, yes-yes!" */
END
IF~~THEN REPLY @36 /*"Good for you?" */ DO~~ + g-bbD010.bhaal2
IF~~THEN REPLY @37 /*"I'm glad, Dopilp. Farewell." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("G-kuotoabhaal","GLOBAL",0) Global("G-kuotoagod","GLOBAL",0) Global("G-kuotoakiaran","GLOBAL",1)~THEN g-bbD010 g-bbD010.startkiaransalee
@39 /*"Scarred One! We are learning so much about Dead Lady. Thank you, thank you!" */
END
IF~Global("G-kuotoaprisonersfree","GLOBAL",0)~THEN REPLY @41 /*"What are you up to?" */ DO~~ + g-bbD010.startK1
IF~!Global("G-kuotoaprisonersfree","GLOBAL",0)~THEN REPLY @42 /*"What are you up to?" */ DO~~ + g-bbD010.startK2
IF~~THEN REPLY @43 /*"Praised be the Avenger Queen. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.kuotoaraid
@45 /*Dopilp raises his hook and shouts a warbling battle cry. All the nearby kuo-toa join in the enthusiasm. "Yes-yes. Death to our enemies!" In a matter of seconds, they all grab their weapons, gather the scattered equipment, and dive into the murky water below. They must know a secret way into the tavern. */
END
IF~~THEN REPLY @47 /*"I guess Orville is going to have guests coming..." */ DO~EscapeArea() SetGlobal("g-kuotoaraid","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.A1
@49 /*"Oooh, yes-yes, Dopilp shall explain all, yes-yes!" The priest bobs from one leg to the other in excitement, and the congregation follows his movements. "Istishia is the great god of water, yes-yes. Great god. He will send us health, fortune, and joy, and his wet might will never dry, yes-yes. We offer meat and blood for the great god! Chop-chop, yes-yes, knife cuts and innards go slosh-slosh." All the other kuo-toa join in, chanting "slosh-slosh" with pure joy, clearly looking forward to continuing their macabre rituals. */
END
IF~~THEN REPLY @51 /*"What you're doing is wrong. Stop at once." */ DO~~ + g-bbD010.G1
IF~~THEN REPLY @52 /*"The sloshing is really getting on my nerves. It's time to chop-chop you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @53 /*"There is only one power of significance and she spits on your god of water. Kneel before Kiaransalee, pitiful creatures, or die." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.B1
@56 /*The priest smiles widely, his expression filled with pure joy, and starts bobbing from one leg to the other. The congregation follows his movements. "Follower, yes-yes, follower! Dopilp will remind you! Istishia is the great god of water, yes-yes. great god. He will send us health, fortune and joy, and his wet might will never dry, yes-yes. We offer meat and blood for the great god! Chop-chop, yes-yes, knife cuts and innards go slosh-slosh." All the other kuo-toa join in, chanting "slosh-slosh" with pure joy, clearly looking forward to continuing their macabre rituals. */
END
IF~~THEN REPLY @58 /*"What you're doing is wrong. Stop at once." */ DO~~ + g-bbD010.G1
IF~~THEN REPLY @59 /*"The sloshing is really getting on my nerves. It's time to chop-chop you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @60 /*"There is only one power of significance and she spits on your god of water. Kneel before Kiaransalee, pitiful creatures, or die." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.C1
@63 /*The priest cocks his head as if he does not understand what you mean. "Who? What you mean? These, over there, yes-yes?" He points at the prisoners. "Gifts to lord Istishia. Dopilp will explain! Istishia is the great god of water, yes-yes. great god. He will send us health, fortune and joy, and his wet might will never dry, yes-yes. We offer meat and blood for the great god! Chop-chop, yes-yes, knife cuts and innards go slosh-slosh." All the other kuo-toa join in, chanting "slosh-slosh" with pure joy, clearly looking forward to continuing their macabre rituals. */
END
IF~~THEN REPLY @65 /*"What you're doing is wrong. Stop at once." */ DO~~ + g-bbD010.G1
IF~~THEN REPLY @66 /*"The sloshing is really getting on my nerves. It's time to chop-chop you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @67 /*"There is only one power of signifigance and she spits on your god of water. Kneel before Kiaransalee, pitiful creatures, or die." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.A1a
@69 /*"Oooh, yes-yes, Dopilp shall explain all, yes-yes!" The priest bobs from one leg to the other in excitement, and the congregation follows his movements. "Istishia is the great god of water, yes-yes. Great god. He will send us health, fortune, and joy, and his wet might will never dry, yes-yes. We offer meat and blood for the great god! Chop-chop, yes-yes, knife cuts and innards go slosh-slosh." All the other kuo-toa join in, chanting "slosh-slosh" with pure joy, clearly looking forward to continuing their macabre rituals. */
=@70 /*You are looking at kuo-toa, creatures whose belief can grant great power to the object of their worship. You could gain a lot by convincing them to worship you. Perhaps a quick resurrection would be enough to convince them. */
END
IF~~THEN REPLY @72 /*"I understand. I would like to honor the great Istishia. Please sacrifice me on your altar." */ DO~FadeToColor([20.0],666)~ + g-bbD010.F1
IF~~THEN REPLY @73 /*"What you're doing is wrong. Stop at once." */ DO~~ + g-bbD010.G1
IF~~THEN REPLY @74 /*"The sloshing is really getting on my nerves. It's time to chop-chop you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @75 /*"There is only one power of significance and she spits on your god of water. Kneel before Kiaransalee, pitiful creatures, or die." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.B1a
@77 /*The priest smiles widely, his expression filled with pure joy, and starts bobbing from one leg to the other. The congregation follows his movements. "Follower, yes-yes, follower! Dopilp will remind you! Istishia is the great god of water, yes-yes. great god. He will send us health, fortune and joy, and his wet might will never dry, yes-yes. We offer meat and blood for the great god! Chop-chop, yes-yes, knife cuts and innards go slosh-slosh." All the other kuo-toa join in, chanting "slosh-slosh" with pure joy, clearly looking forward to continuing their macabre rituals. */
=@78 /*You are looking at kuo-toa, creatures whose belief can grant great power to the object of their worship. You could gain a lot by convincing them to worship you. Perhaps a quick resurrection would be enough to convince them. */
END
IF~~THEN REPLY @80 /*"I understand. I would like to honor the great Istishia. Please sacrifice me on your altar." */ DO~FadeToColor([20.0],666)~ + g-bbD010.F1
IF~~THEN REPLY @81 /*"What you're doing is wrong. Stop at once." */ DO~~ + g-bbD010.G1
IF~~THEN REPLY @82 /*"The sloshing is really getting on my nerves. It's time to chop-chop you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @83 /*"There is only one power of significance and she spits on your god of water. Kneel before Kiaransalee, pitiful creatures, or die." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.C1a
@85 /*The priest cocks his head as if he does not understand what you mean. "Who? What you mean? These, over there, yes-yes?" He points at the prisoners. "Gifts to lord Istishia. Dopilp will explain! Istishia is the great god of water, yes-yes. great god. He will send us health, fortune and joy, and his wet might will never dry, yes-yes. We offer meat and blood for the great god! Chop-chop, yes-yes, knife cuts and innards go slosh-slosh." All the other kuo-toa join in, chanting "slosh-slosh" with pure joy, clearly looking forward to continuing their macabre rituals. */
=@86 /*You are looking at kuo-toa, creatures whose belief can grant great power to the object of their worship. You could gain a lot by convincing them to worship you. Perhaps a quick resurrection would be enough to convince them. */
END
IF~~THEN REPLY @88 /*"I understand. I would like to honor the great Istishia. Please sacrifice me on your altar." */ DO~FadeToColor([20.0],666) MoveViewPoint([3425.1375],VERY_FAST) ActionOverride(Protagonist,JumpToPoint([3425.1375])) ~ + g-bbD010.F1
IF~~THEN REPLY @89 /*"What you're doing is wrong. Stop at once." */ DO~~ + g-bbD010.G1
IF~~THEN REPLY @90 /*"The sloshing is really getting on my nerves. It's time to chop-chop you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @91 /*"There is only one power of significance and she spits on your god of water. Kneel before Kiaransalee, pitiful creatures, or die." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.F1
@93 /*Dopilp stares at you with his mouth agape, looking like a stunned carp. However, he soon regains his composure and starts gesturing quickly, as if preparing to cast a spell. "Oooooh, yes-yes, sacrifice! Sacrifice for great Istishia!" */
=@94 /*The kuo-toa fall into a religious trance, dancing and stomping as you lie down on the altar. The coldness of the stone is unpleasant against your skin, not to mention the sticky organic surface covering it. You consider closing your eyes, but there is something morbidly fascinating about watching the priest raise his dagger high above his head and, with a squeal of pure ecstasy, lunge it deep into your stomach. You let out a wheeze when the blade cuts your skin and layers of your guts, parts of which are spilling outside of your body. The pain is overwhelming, but soon the darkness brings the relief of oblivion. */
END
IF~~THEN REPLY @96 /*Die. */ DO~MoveViewPoint([3425.1375],VERY_FAST) ActionOverride(Protagonist,JumpToPoint([3425.1375]))  SetAnimState(Protagonist,ANIM_MIMEDIE) FadeToColor([20.0],0) Wait(2) ~ + g-bbD010.F1cont
CHAIN IF~~THEN g-bbD010 g-bbD010.F1cont
@98 /*When you come to, the priest is facing away from you, wailing a loud prayer to Istishia, echoed by the rest of the congregation. Nobody notices yet that your state of being has changed from deadbooked to conscious. You struggle a bit to sit up on the altar, still feeling the residual tingling in your viscera. Seeing your own intestines next to you, drying out on the sacrificial stone, does not help either, though it does not bother you as much as it used to. */
=@99 /*The kuo-toa slowly stop their chant, piercing you with their eyes. Dopilp finally realizes something is wrong as well. He stops his prayer and turns toward you. He cannot suppress a short yell of surprise at seeing you alive and well despite his recent operation."Miracle! It's a miracle, yes-yes! Your will and might is greater than Istishia's! New god! New lord! Yes-yes! Lord Scar! Lord Scar!" */
=@100 /*The priest falls to his knees and begins to bow before you. All the other kuo-toa follow his example. A new song dedicated to you fills the room. You have just become a deity to these fish people. You feel as if you have become stronger, though it may simply be a matter of self-suggestion. */
END
IF~~THEN REPLY @102 /*Rise from the bloodied stone. */ DO~FadeFromColor([20.0],0) SetAnimState(Protagonist,ANIM_MIMEGETUP) MoveViewPoint([3425.1485],VERY_FAST) ActionOverride(Protagonist,JumpToPoint([3425.1485]))PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,20) AddexperienceParty(100000) IncrementGlobal("Lady","GLOBAL",10) PermanentStatChange(Protagonist,STR,RAISE,1) PermanentStatChange(Protagonist,DEX,RAISE,1) PermanentStatChange(Protagonist,CON,RAISE,1) PermanentStatChange(Protagonist,INT,RAISE,1) PermanentStatChange(Protagonist,WIS,RAISE,1) PermanentStatChange(Protagonist,CHR,RAISE,1) SetGlobal("G-kuotoagod","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",8) ~ SOLVED_JOURNAL @20193 + g-bbD010.XXX
CHAIN IF~~THEN g-bbD010 g-bbD010.G1
@104 /*The priest cocks his head to the left, then to the right, as if it might help him understand your words. "Stop? Stop what?" */
END
IF~~THEN REPLY @106 /*"Stop sacrificing sentient beings." */ DO~~ + g-bbD010.J1
IF~~THEN REPLY @107 /*"Stop kidnapping and imprisoning the locals." */ DO~~ + g-bbD010.J1
IF~~THEN REPLY @108 /*"Stop hogging all this nice treasure to yourselves." */ DO~~ + g-bbD010.J1
IF~~THEN REPLY @109 /*"Stop worshipping Istishia." */ DO~~ + g-bbD010.J1
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @110 /*"Stop resisting. I was sent here to kill you by the wererats. Now die." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @111 /*"I think I have had enough of this. I think I'll just kill you all." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.J1
@114 /*The priest stares at you with a blank, expressionless face. "Why? Yes-yes, why should we listen to you, not Istishia?" */
END
IF~CheckStatGT(Protagonist,19,WIS)~THEN REPLY @116 /*Reach deep into your mind. Let a memory surface. */ DO~FadeToColor([20.0],5)~ + g-bbD010.memory
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @117 /*"Because I am here, and he is not. I came to you to show you the way. I will share my immeasurable experience to ensure your fortune. Listen to me, and it will benefit you greatly." */ DO~~ + g-bbD010.P1
IF~!NumInPartyGT(1)~THEN REPLY @118 /*"Let's agree to divine justice. You against me. If you win, I will accept Istishia's superiority and you can sacrifice me in his honor. But If I win, you will abandon your ways and do as I say. All right?" */ DO~~ + g-bbD010.S1
IF~NumInPartyGT(1)~THEN REPLY @119 /*"Let's agree to divine justice. You against me and my acolytes. If you win, I will accept Istishia's superiority and you can sacrifice me in his honor. But If I win, you will abandon your ways and do as I say. All right?" */ DO~~ + g-bbD010.S1
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @120 /*"I have had enough of this farce, I was sent here by the wererats to kill you. Die." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @121 /*"I have had enough of this farce, I will just kill you and the problem will be no more. Die." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.memory
@123 /*Suddenly, your mouth fills with an oily, slimy, and salty object. You immediately try to reach for it with your hand, but you feel resistance, the resistance of water. You are completely submerged in the murky depths of an endless ocean. Your visibility is poor, but you can see others like you, with skin- and tissue-made organic apparatuses in their mouths. [SPTR_01] */
=@124 /*You are returning from somewhere, from a dark reef inhabited by a cruel princess. You are now swimming upward, if the concept of "up" has any meaning in this plane. You are trying to reach the warm waters where you were previously received by the emissary of the primordial leader. */
=@125 /*The essence of neutrality and the natural power of water. Stern at times, kind at other times, but never cruel. And there he is, in the distance, a shape outlined at the very edge of visibility. He is enormous, yet he bears witness to your meeting with his emissary. His presence grants you confidence. You feel... safe. Water is unity, harmony. It contains an infinite number of particles, all moving together, interconnected. */
END
IF~~THEN REPLY @127 /*Wake up. */ DO~AddexperienceParty(10000) ~ + g-bbD010.memoryback
CHAIN IF~~THEN g-bbD010 g-bbD010.memoryback
@129 /*"So? You still here, yes-yes?" */
END
IF~~THEN REPLY @131 /*"Your actions offend the god you pretend to worship. Istishia is not a bloodthirsty power. Blood and guts from your victims are sacrilegious to the waters you contaminate. You may bring about his wrath if you continue." */ DO~~ + g-bbD010.P1
IF~CheckStatGT(Protagonist,19,CHR)~THEN REPLY @132 /*"Because I am here, and he is not. I came to you to show you the way. I will share my immeasurable experience to ensure your fortune. Listen to me, and it will benefit you greatly." */ DO~~ + g-bbD010.P1
IF~!NumInPartyGT(1)~THEN REPLY @133 /*"Let's agree to divine justice. You against me. If you win, I will accept Istishia's superiority and you can sacrifice me in his honor. But If I win, you will abandon your ways and do as I say. All right?" */ DO~~ + g-bbD010.S1
IF~NumInPartyGT(1)~THEN REPLY @134 /*"Let's agree to divine justice. You against me and my acolytes. If you win, I will accept Istishia's superiority and you can sacrifice me in his honor. But If I win, you will abandon your ways and do as I say. All right?" */ DO~~ + g-bbD010.S1
IF~Global("G-killkuotoa","GLOBAL",1)~THEN REPLY @135 /*"I have had enough of this farce, I was sent here by the wererats to kill you. Die." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
IF~Global("G-killkuotoa","GLOBAL",0)~THEN REPLY @136 /*"I have had enough of this farce, I will just kill you and the problem will be no more. Die." */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.P1
@138 /*You sense that your words are reaching ears keen to listen. The priest considers them deeply, and the rest of the kuo-toa watch him in anticipation of his verdict. Finally, a great smile appears on his fishy face. "Yes-yes, truth, wisdom, truth. There is a better way. The way of Lord Scar! Lord Scar!" The priest falls to his knees and starts to bow before you. All the other kuo-toa fall in his example. A new song, dedicated to you, fills the room. You have just become a deity for these fish people. You feel as if you gotten stronger, though it may simply be a matter of self-suggestion. */
END
IF~~THEN REPLY @140 /*"What now..." */ DO~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,20) AddexperienceParty(100000) IncrementGlobal("Lady","GLOBAL",10) PermanentStatChange(Protagonist,STR,RAISE,1) PermanentStatChange(Protagonist,DEX,RAISE,1) PermanentStatChange(Protagonist,CON,RAISE,1) PermanentStatChange(Protagonist,INT,RAISE,1) PermanentStatChange(Protagonist,WIS,RAISE,1) PermanentStatChange(Protagonist,CHR,RAISE,1) SetGlobal("G-kuotoagod","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",8)~ SOLVED_JOURNAL @20193 + g-bbD010.XXX
CHAIN IF~~THEN g-bbD010 g-bbD010.S1
@142 /*The priest considers your proposition for a moment. Eventually, he nods. He looks you deep in the eyes. "Divine justice, yes-yes. Glory to Istishia! Attack!" */
END
IF~~THEN REPLY @144 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.W1
@146 /*The priest falls to his knees and begins to bow before you. All the other kuo-toa follow his example. A new song dedicated to you fills the room. You have just become a deity to these fish people. You feel as if you have become stronger, though it may simply be a matter of self-suggestion. */
END
IF~~THEN REPLY @148 /*"What now..." */ DO~PermanentStatChange(Protagonist,MAXHITPOINTS,RAISE,20) AddexperienceParty(100000) IncrementGlobal("Lady","GLOBAL",10) PermanentStatChange(Protagonist,STR,RAISE,1) PermanentStatChange(Protagonist,DEX,RAISE,1) PermanentStatChange(Protagonist,CON,RAISE,1) PermanentStatChange(Protagonist,INT,RAISE,1) PermanentStatChange(Protagonist,WIS,RAISE,1) PermanentStatChange(Protagonist,CHR,RAISE,1) SetGlobal("G-kuotoagod","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",8)~ SOLVED_JOURNAL @20193 + g-bbD010.XXX
CHAIN IF~~THEN g-bbD010 g-bbD010.XXX
@150 /*The kuo-toa look at each other. */
=@151 /*Lord Scar. It is your new name, given to you by the kuo-toa. You have become a divine being to these fish people. You can ask them for whatever you want, and it will be their sacred duty to obey. What will you ask? */
END
IF~~THEN REPLY @153 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @154 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @155 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.commandments
@157 /*"Yes-yes. We listen to Lord Scar." */
END
IF~~THEN REPLY @159 /*"Leave Sigil and return to your original plane. There, you can worship me at a distance." */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("G-gbbmain","GLOBAL",14)~ SOLVED_JOURNAL @20020 + g-bbD010.quest1aalt
IF~Global("g-actualcannibal","GLOBAL",1) !Dead("g-bb016") Global("g-knowKilthas","GLOBAL",1)~THEN REPLY @160 /*"One of our prisoners, the bladeling. He looks tasty. Cook him for me." */ DO~IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD010.eatkilthas
IF~GlobalGT("g-kiaransaleeworship","GLOBAL",1)~THEN REPLY @161 /*"I am no god. I am merely a messenger of Kiaransalee, the Lady of the Dead. It is her you should follow." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",12)~ SOLVED_JOURNAL @20197 + g-bbD010.kiaranoverride
IF~Global("g-kuotoaAA1","GLOBAL",0) Global("G-kuotoaprisonersfree","GLOBAL",0)~THEN REPLY @162 /*"As your new lord, I order you to free all these people and never capture anyone again. You will no longer perform bloody sacrifices." */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("g-kuotoaAA1","GLOBAL",1) SetGlobal("g-kuotoaprisonersfree","GLOBAL",1) SetGlobal("g-kuotoaDD1","GLOBAL",-1) SetGlobal("G-kuotoaquestline","GLOBAL",9)~ SOLVED_JOURNAL @20194 + g-bbD010.AA1
IF~Global("g-kuotoaBB1","GLOBAL",0)~THEN REPLY @163 /*"As your new lord, I order you to better yourselves and your behavior. No more killing or hurting. Instead, you will give back to the locals through charity. You will help them with their tasks." */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("g-kuotoaBB1","GLOBAL",1) SetGlobal("g-kuotoaDD1","GLOBAL",-1) SetGlobal("G-kuotoaquestline","GLOBAL",10)~ SOLVED_JOURNAL @20195 + g-bbD010.BB1
IF~Global("g-kuotoaCC1","GLOBAL",0)~THEN REPLY @164 /*"As your new lord, I order you to offer monetary sacrifices to me. You may start right now." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("g-kuotoaCC1","GLOBAL",1) GivePartyGold(62)~ + g-bbD010.CC1
IF~Global("g-kuotoaDD1","GLOBAL",0) !Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN REPLY @165 /*"As your new lord, I order you to make bloody sacrifices in my name from now on. You may start right now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-kuotoaDD1","GLOBAL",1) SetGlobal("G-kuotoaprisonersfree","GLOBAL",-1) SetGlobal("g-kuotoaAA1","GLOBAL",-1) SetGlobal("g-kuotoaBB1","GLOBAL",-1) SetGlobal("g-kuotoaprisonersdead","GLOBAL",1)~ + g-bbD010.DD1
IF~Global("g-kuotoaDD1","GLOBAL",0) Global("g-kuotoaprisonersfree","GLOBAL",1)~THEN REPLY @166 /*"As your new lord, I order you to make bloody sacrifices in my name from now on. You may start right now." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-kuotoaDD1","GLOBAL",1) SetGlobal("g-kuotoaDD2","GLOBAL",1) SetGlobal("G-kuotoaprisonersfree","GLOBAL",-1) SetGlobal("g-kuotoaAA1","GLOBAL",-1) SetGlobal("g-kuotoaBB1","GLOBAL",-1) SetGlobal("g-kuotoaprisonersdead","GLOBAL",1)~ + g-bbD010.DD2
IF~Global("g-kuotoaDD1","GLOBAL",0) Global("g-kuotoaprisonersfree","GLOBAL",0) Global("g-actualcannibal","GLOBAL",1) Dead("g-bb016")~THEN REPLY @167 /*"As your new lord, I order you to prepare a meal for me for our sacrifices. This is how you may worship me." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-kuotoaDD1","GLOBAL",1) SetGlobal("g-kuotoaDD2","GLOBAL",1) SetGlobal("G-kuotoaprisonersfree","GLOBAL",-1) SetGlobal("g-kuotoaAA1","GLOBAL",-1) SetGlobal("g-kuotoaBB1","GLOBAL",-1) SetGlobal("g-kuotoaprisonersdead","GLOBAL",1)~ + g-bbD010.cannibalfeast
IF~Global("g-kuotoaDD1","GLOBAL",0) Global("g-kuotoaprisonersfree","GLOBAL",0) Global("g-actualcannibal","GLOBAL",1) !Dead("g-bb016")~THEN REPLY @168 /*"As your new lord, I order you to prepare a meal for me for our sacrifices. This is how you may worship me." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-kuotoaDD1","GLOBAL",1) SetGlobal("g-kuotoaDD2","GLOBAL",1) SetGlobal("G-kuotoaprisonersfree","GLOBAL",-1) SetGlobal("g-kuotoaAA1","GLOBAL",-1) SetGlobal("g-kuotoaBB1","GLOBAL",-1) SetGlobal("g-kuotoaprisonersdead","GLOBAL",1)~ + g-bbD010.cannibalfeastalt
IF~Global("G-killkuotoa","GLOBAL",1) !Global("G-Szczurwidolek","GLOBAL",6)~THEN REPLY @169 /*"As your new lord, I order you to travel to the Rat and Splat and murder all the wererats who reside there." */ DO~SetGlobal("G-Szczurwidolek","GLOBAL",6) AddexperienceParty(20000) SetGlobal("G-bbmain","GLOBAL",18)~ SOLVED_JOURNAL @20024 + g-bbD010.kuotoaraid
IF~Global("g-kuotoaEE1","GLOBAL",0)~THEN REPLY @170 /*"As your new lord, I order you all to sacrifice yourselves in my name." */ DO~SetGlobal("g-kuotoaEE1","GLOBAL",1) SetGlobal("g-kuotoadead","GLOBAL",1)~ + g-bbD010.EE1
IF~~THEN REPLY @171 /*"I would like to rest here. Watch over me." */ DO~RestParty()~ EXIT
IF~~THEN REPLY @172 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
IF~~THEN REPLY @173 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
CHAIN IF~~THEN g-bbD010 g-bbD010.AA1
@175 /*Your words create a great disturbance among the fish people. Your followers look at each other with uncertainty, and you hear them beginning to exchange vigorous whispers. The cleric slams his hook against the deck, quelling all signs of disobedience. Instantly, the kuo-toa spread out around the basement. */
=@176 /*You watch with satisfaction as the prisoners are released, one after another. They massage their swollen wrists and look around in fear, as if expecting a devious trick. You signal them to go before the kuo-toa change their minds and you do not have to repeat yourself. They all quickly head toward the wooden platforms behind you. */
=@177 /*For some reason, one of the prisoners remains behind: the bladeling you saw before. He stays in the shadows, trying not to attract too much attention to himself. */
END
IF~~THEN REPLY @179 /*Allow the prisoners to leave. */ DO~SetGlobal("G-kuotoaprisonersfree","GLOBAL",1) Wait(10) ActionOverride("G-bb010",StartDialogueNoSet("G-bbd010"))~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.BB1
@181 /*You are asking for a lot, perhaps too much. You are trying to warp the very nature of these creatures. Your followers look at each other with uncertainty, and you hear them beginning to exchange vigorous whispers. The cleric slams his hook against the deck, quelling all signs of disobedience, though his own face betrays a healthy dose of skepticism. */
=@182 /*"Yes-yes, Lord Scar. Your will be done. We will help. Chari-tably." Dopilp utters the word slowly, as if digesting it to understand this entirely new concept. He fixes you with his strange eyes and waits for further orders. */
END
IF~~THEN REPLY @184 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @185 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @186 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.CC1
@188 /*"Oh, yes-yes, sacrifice jink-jink!" Dopilp points at one of his minions, who then rushes behind the altar to rummage through a chest you did not even see before. The kuo-toa returns with a pile of coins clutched clumsily in his hands. Bowing low, he unloads them in front of your feet. */
END
IF~~THEN REPLY @190 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @191 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @192 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.DD1
@194 /*Upon hearing your order, the kuo-toa start yelling and stomping in ecstasy. It looks like these are the orders they were hoping to hear. Dopilp begins the ceremony with deep, throaty chanting. The prisoners, one by one, get dragged towards the altar, where the cleric happily opens them up, throat to stomach. The blood and entrails are spilling on the floor and the area fills with the heavy stench of death. */
=@195 /*When the bladeling, the last of the prisoners, is killed, Dopilp stands proudly in front of you. "Yes-yes, Lord Scar, your wisdom and might are superior. What else do you wish for?" */
END
IF~~THEN REPLY @197 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @198 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @199 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.DD2
@201 /*Upon hearing your order, the kuo-toa start yelling and stomping in ecstasy. It looks like these are the orders they were hoping to hear. Dopilp begins the ceremony with deep, throaty chanting. The bladeling, who is the only prisoner left, quickly regrets not leaving. He tries to run toward the walkway across the water, but the fish people stop him in his tracks. He tries to fight them, but he stands alone against a crowd. He gets dragged toward the altar, where the cleric happily opens him up, throat to stomach. His blood and entrails spill on the floor, and the area fills with the heavy stench of death. */
=@202 /*After the bladeling is killed, Doplip stands proudly in front of you. "Yes-yes, Lord Scar, your wisdom and might are superior. What else do you wish for?" */
END
IF~~THEN REPLY @204 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @205 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @206 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.EE1
@208 /*A complete silence falls upon the platform. The kuo-toa look at each other with a hint of uncertainty, deciding whether you meant what you said. Even Dopilp seems confused. Your motivated, unrelenting gaze tells him the truth, though. You are a god, and you demand absolute, unconditional loyalty from your followers. The priest eventually accepts it, nods his head with determination, and starts stomping and clobbering his hook rhythmically. "Lord Scar! Lord Scar! Lord Scar!" */
=@209 /*The rest of the fish-men join in the melody, and the entire lair is soon filled with the echo of their voices. Dopilp begins to dance in front of the altar, and the acolytes mimic his movements. This complicated choreography is a strange mix of chaotic convulsions and aggressive ballet. Eventually, the cleric jams his hook against the edge of a stone tile at an angle and forcefully throws himself onto the sharp end, with your name on his lips. All of the men-fish follow. For a moment, the whole lot of them writhe in agony, but it all ends very quickly. The cavern is silent again, and in front of you is a field of kuo-toa corpses. They gave you the ultimate sacrifice. */
END
IF~GlobalLT("G-BBmain","GLOBAL",14)
GlobalGT("G-BBmain","GLOBAL",10)~THEN REPLY @211 /*"Idiots. How easy it is to manipulate inferior beings." */ DO~SetGlobal("G-BBmain","GLOBAL",14) IncrementGlobal("GOOD","GLOBAL",-1) AddexperienceParty(20000) Kill("g-bb010")~ SOLVED_JOURNAL @20020 EXIT
IF~GlobalLT("G-BBmain","GLOBAL",14)
GlobalGT("G-BBmain","GLOBAL",10)~THEN REPLY @212 /*"Orville's wish was fulfilled after all." */ DO~SetGlobal("G-BBmain","GLOBAL",14) AddexperienceParty(20000) Kill("g-bb010")~ SOLVED_JOURNAL @20020 EXIT
IF~OR(2) !GlobalLT("G-BBmain","GLOBAL",14)
!GlobalGT("G-BBmain","GLOBAL",10)~THEN REPLY @213 /*"Idiots. How easy it is to manipulate inferior beings." */ DO~AddexperienceParty(20000) IncrementGlobal("GOOD","GLOBAL",-1) Kill("g-bb010")~ EXIT
IF~OR(2) !GlobalLT("G-BBmain","GLOBAL",14)
!GlobalGT("G-BBmain","GLOBAL",10)~THEN REPLY @214 /*"I wish it could have happened differently, but at least they won't harm anyone else." */ DO~AddexperienceParty(20000) Kill("g-bb010")~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.FF1
@216 /*Dopilp stares at you with his expressionless fish eyes. It takes a while for him to digest your words, and he comes to his own conclusion in the end. "Yes-yes, Lord Scar! We will await your return, and orders. Your wisdom and might are superior!" */
EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.GG1
@219 /*Dopilp eagerly nods his large head, showing the intensity of his faith and his commitment to fulfilling your wishes. "Yes-yes, Lord Scar! Your will is our will, yes-yes!" */
EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.quest1
@222 /*Dopilp cocks his head. "Rat-like creatures want our death? But we are allies." */
END
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @224 /*"They don't like your murderous ways. They would like you gone. Is there a way you could leave Sigil?" */ DO~IncrementGlobal("GOOD","GLOBAL",1) SetGlobal("G-gbbmain","GLOBAL",14)~ SOLVED_JOURNAL @20020 + g-bbD010.quest1a
IF~!CheckStatGT(Protagonist,18,CHR)
!CheckStatLT(Protagonist,11,CHR)~THEN REPLY @225 /*"They don't like your murderous ways. They would like you gone. Is there a way you could leave Sigil?" */ DO~~ + g-bbD010.quest1b
IF~CheckStatLT(Protagonist,11,CHR)~THEN REPLY @226 /*"They don't like your murderous ways. They would like you gone. Is there a way you could leave Sigil?" */ DO~~ + g-bbD010.quest1c
IF~~THEN REPLY @227 /*"They are traitors. They deserve death, not you. You are far more important." */ DO~SetGlobal("G-Szczurwidolek","GLOBAL",6) AddexperienceParty(20000) SetGlobal("G-bbmain","GLOBAL",18)~ SOLVED_JOURNAL @20024 + g-bbD010.kuotoaraid
IF~~THEN REPLY @228 /*"They don't like your murderous ways. They would like you gone. I think I would like you gone too, to be honest. Time to die!" */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.quest1a
@230 /*Dopilp looks around the cavern. "We like the city and the grotto, but if our end is near, it is time to go to larger waters." He gestures to all his acolytes. In less than a minute, they gather their weapons and the scattered equipment and dive into the thick, dark water. */
END
IF~~THEN REPLY @232 /*"Happy torrents." */ DO~EscapeArea() AddexperienceParty(20000) SetGlobal("g-kuotoagone","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",14)~ SOLVED_JOURNAL @20199 EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.quest1aalt
@234 /*Dopilp looks around the cavern. "We like the city and the grotto, but if so says Lord Scar, it is time to go to larger waters." He gestures to all his acolytes. In less than a minute, they gather their weapons and the scattered equipment and dive into the thick, dark water. */
END
IF~~THEN REPLY @236 /*"Happy torrents." */ DO~EscapeArea() AddexperienceParty(20000) SetGlobal("g-kuotoagone","GLOBAL",1) SetGlobal("G-kuotoaquestline","GLOBAL",14)~ SOLVED_JOURNAL @20199 EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.quest1b
@238 /*Dopilp looks around the cavern."No-no. We like the city and the grotto. We will do otherwise." */
END
IF~~THEN REPLY @240 /*"And that is...?" */ DO~SetGlobal("G-Szczurwidolek","GLOBAL",6)  SetGlobal("G-bbmain","GLOBAL",18)~ SOLVED_JOURNAL @20024 + g-bbD010.kuotoaraid
CHAIN IF~~THEN g-bbD010 g-bbD010.quest1c
@242 /*The priest considers your proposition for a moment. Eventually, he shakes his head. He looks you deep in the eyes. "Our city, yes-yes. Glory to Istishia! Attack!" */
END
IF~~THEN REPLY @244 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) Help()~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.bhaal2
@246 /*"Yes-yes! Baluu's wisdom and might are superior, and Kilthas knows a good slaughter of the innocent is the best way to honor him." His fishy mouth cannot help but smile, and he bangs his hook against the stone tiles. */
END
IF~~THEN REPLY @248 /*"Slaughter of the innocent?" */ DO~SetGlobal("G-dopilpspoiler","GLOBAL",1)~ + g-bbD010.bhaal3
IF~~THEN REPLY @249 /*"I'm glad, Dopilp. Farewell." */ DO~~ EXIT
IF~~THEN REPLY @250 /*"Whatever, Dopilp. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.bhaal3
@252 /*"Ask him, ask him! Yes-yes. Good plan! Lot of blood." Dopilp cannot contain himself and stay to talk further. He takes off to help prepare. */
END
IF~~THEN REPLY @254 /*"I'm glad, Dopilp. Farewell." */ DO~RandomRun() ~ EXIT
IF~~THEN REPLY @255 /*"Whatever, Dopilp. Farewell." */ DO~RandomRun() ~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.kiaranoverride
@257 /*"Key-area-and-sail-ee?" Dopilp asks, confused. "Who is she?" */
END
IF~~THEN REPLY @259 /*"Close enough. Kiaransalee, Lady of the Dead, is the beautiful and just goddess of undeath. She is the destiny that awaits the multiverse. Can you, as a cleric, raise people as zombies?" */ DO~~ + g-bbD010.kiaran2
IF~~THEN REPLY @260 /*"Kiaransalee. Are you deaf? Get her name right." */ DO~~ + g-bbD010.kiarangitgood
CHAIN IF~~THEN g-bbD010 g-bbD010.kiarangitgood
@262 /*Dopilp blinks a couple times, not understanding. "Do we need to get her name? Are we all Key-area-and-sail-ee now?" */
END
IF~~THEN REPLY @264 /*"No, you're still kuo-toa. But say her name *right*. It's Kiaransalee." */ DO~~ + g-bbD010.kiarangitgood2
IF~~THEN REPLY @265 /*"You die for this blasphemy, fish! For Kiaransalee!" */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) SetGlobal("G-kuotoaquestline","GLOBAL",13)~ SOLVED_JOURNAL @20198 + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.godfight
@267 /*You are getting ready to strike the cleric, but he is your follower, and your wish for his death is somehow granted. You see him instantly start choking and gasping, but he seems almost... happy. He is fulfilling his lord's will. Eventually, he falls to the floor, dead. All around you, the other kuo-toa follow his example. */
END
IF~~THEN REPLY @269 /*"That works." */ DO~SetGlobal("G-kuotoadead","GLOBAL",1) Kill("g-bb010")~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.kiarangitgood2
@271 /*Dopilp cocks his head and slowly starts opening his mouth. "Kyaarun-sailee?" */
END
IF~~THEN REPLY @273 /*"Close enough. Kiaransalee, Lady of the Dead, is the beautiful and just goddess of undeath. She is the destiny that awaits the multiverse. Can you, as a cleric, raise people as zombies?" */ DO~~ + g-bbD010.kiaran2
IF~~THEN REPLY @274 /*"Kiaransalee. Get it right, wretch." */ DO~~ + g-bbD010.kiarangitgood3
IF~~THEN REPLY @275 /*"You die for this blasphemy, fish! For Kiaransalee!" */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) SetGlobal("G-kuotoaquestline","GLOBAL",13)~ SOLVED_JOURNAL @20198 + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.kiarangitgood3
@277 /*"Kyaaransailee." Dopilp struggles to make his fish mouth form the unfamiliar name correctly. */
END
IF~~THEN REPLY @279 /*"Close enough. Kiaransalee, Lady of the Dead, is the beautiful and just goddess of undeath. She is the destiny that awaits the multiverse. Can you, as a cleric, raise people as zombies?" */ DO~~ + g-bbD010.kiaran2
IF~~THEN REPLY @280 /*"Kiaransalee. Get it *perfectly* or suffer." */ DO~~ + g-bbD010.kiarangitgood4
IF~~THEN REPLY @281 /*"You die for this blasphemy, fish! For Kiaransalee!" */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) SetGlobal("G-kuotoaquestline","GLOBAL",13)~ SOLVED_JOURNAL @20198 + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.kiarangitgood4
@283 /*"Kia... Kia..." The kuo-toa stutters, having strained his jaw muscles. */
=@284 /*"P A T H E T I C." A whisper crawls into your brain. You start salivating a bit. */
END
IF~~THEN REPLY @286 /*"Pathetic." */ DO~~ + g-bbD010.kiarangitgood5
IF~~THEN REPLY @287 /*"You die for this blasphemy, fish! For Kiaransalee!" */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",3000) SetGlobal("G-kuotoaquestline","GLOBAL",13)~ SOLVED_JOURNAL @20198 + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.kiarangitgood5
@289 /*"K... ki... ky..." */
=@290 /*"F I N I S H  I T." The whisper gains some shape: a scratchy, dry sound, but with a loving, sensual tone. */
END
IF~~THEN REPLY @292 /*"You die for Kiaransalee now." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",5000) SetGlobal("G-kuotoaquestline","GLOBAL",13)~ SOLVED_JOURNAL @20198 + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.kiaran2
@294 /*"She sounds mighty! Dead Lady! What do we do, Lord Scar?" */
END
IF~~THEN REPLY @296 /*"Forget me. You serve her now. Kneel and pray to her until she speaks to you. Then do her will. Extinguish life, create undeath. Bring her vengeance and, therefore, peace to the multiverse." */ DO~IncrementGlobal("Lady","GLOBAL",-10) SetGlobal("G-kuotoagod","GLOBAL",0) SetGlobal("G-kuotoakiaran","GLOBAL",1) IncrementGlobal("g-kiaransaleeworship","GLOBAL",10000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD010.kiaran3
CHAIN IF~~THEN g-bbD010 g-bbD010.kiaran3
@298 /*Dopilp smiles. "Yes-yes! Dead Lady is mighty and wise!" He starts gathering everyone's attention and is about to give a sermon. He is fully immersed in his new role as Kiaransalee's messenger, even without really knowing who or what she is. */
END
IF~~THEN REPLY @300 /*"My work here is done." */ DO~~ EXIT
IF~CheckStatGT(Protagonist,20,INT)~THEN REPLY @301 /*"Now go and spread death. There will come a day when your devotion will be tested. Be ready, and you will receive Her grace." */ DO~IncrementGlobal("g-kiaransaleeworship","GLOBAL",10000)~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.startK1
@304 /*"We are getting ready to chop-chop and wake-wake our guests. For Dead Lady!" Dopilp is clearly enjoying the service. */
END
IF~~THEN REPLY @306 /*"Praised be the Avenger Queen. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.startK2
@308 /*"We are getting ready to find new guests to chop-chop and wake-wake. For Dead Lady!" Dopilp is clearly enjoying the service. */
END
IF~~THEN REPLY @310 /*"Praised be the Avenger Queen. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.eatkilthas
@312 /*The kuo-toa, visibly pleased by your wicked command, quickly set up a fire and seize the bladeling. He offers some resistance at first but is eventually overpowered and dragged out of the prisoners' enclosure onto the stone. "How would you like him done, Lord Scar?" */
END
IF~~THEN REPLY @314 /*"Roast him alive." */ DO~ActionOverride("g-bb016",JumpToPoint([3267.1565]))~ + g-bbD010.eatkilthasF
IF~~THEN REPLY @315 /*"Cut him up and make him into a stew." */ DO~ActionOverride("g-bb016",JumpToPoint([3267.1565]))~ + g-bbD010.eatkilthasS
CHAIN IF~~THEN g-bbD010 g-bbD010.eatkilthasF
@317 /*As the bound bladeling is coerced into the fire, the ecstasy of inbound agony is palpable among the fish people. You, too, feel a strange sense of excitement. Soon, the formidable outsider will feed his life force to you and your congregation. The meal writhes and squirms, seemingly aware of its tragic fate. All the sharp thorns on its metallic skin stand up, as if in a final act of defense against the fiery element. */
==g-bbd016 @318 /*Suddenly, in a tenth of a second, it becomes apparent that this was an act. The bladeling, waiting for his bonds to burn through, leaps out of the fire in the direction of Dopilp and, with a mad scream of anger, unleashes a hail of thorns that suddenly erupt from his skin at high velocity. */
==g-bbd016 @319 /*The kuo-toa find themselves completely off guard, and the bladeling's aim with his own body parts as weapons is impeccable. Every fish-like head in sight now has a long metal spike embedded deep in its forehead. All the kuo-toa fall to the ground. Kilthas grabs a weapon from the nearest corpse and looks to you. */
END
IF~~THEN REPLY @321 /*Continue. */ DO~SetGlobal("g-kuotoadead","GLOBAL",1) Kill("g-bb010") SetGlobal("g-kilthasshowdown","GLOBAL",1)  Wait(4) ActionOverride("G-bb016",StartDialogueNoSet("G-bbd016"))~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.eatkilthasS
@323 /*The kuo-toa begin chopping. The bladeling struggles against them, and it almost seems he may yet persevere as his metallic skin resists the deep cuts inflicted by the tribe. But, as the blood flows and chunks of rough meat fall to the stone floor, his strength wanes and he stops resisting, without a grand finale, just drifting silently into oblivion. */
=@324 /*Dopilp and his minions set up a fire and bring out a large pot. Suddenly, vegetables appear that they must have had stashed away, along with buckets of dirty ditch water being brought as well. Everything is put into the pot in a disgusting yet strangely appealing mix. */
END
IF~~THEN REPLY @326 /*Wait for it to cook. */ DO~Kill("g-bb016") FadeToColor([20.0],666) AdvanceTime(60)~ + g-bbD010.eatkilthasS2
CHAIN IF~~THEN g-bbD010 g-bbD010.eatkilthasS2
@328 /*The stew is ready. You are being presented with a wooden bowl of a stinking gray mass that barely resembles anything you have ever eaten. It is waiting for you, calling to you. The true predatory nature of your existence is on the cusp of being satisfied. "Yes-yes. Dinner is served for Lord Scar!" says Dopilp, your high priest. */
END
IF~~THEN REPLY @330 /*Eat the bladeling stew. */ DO~AddexperienceParty(300000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD010.eatkilthasS3
IF~~THEN REPLY @331 /*Pour it on the floor and get ready to slap your priest. "This does not look good. You have displeased me." */ DO~~ + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.eatkilthasS3
@333 /*It is foul, just as your eyes told you. The meat is barely cooked. It seems that the metallic hide of one such as the bladeling may need more than an hour in a pot. However, the very act of eating it fills you with a sense of elation, reminding you of that first strange disconnect that trying Elvra's drink gave you. You have taken the next step toward becoming the alpha predator of the multiverse. */
=@334 /*"How was it, Lord Scar? Your will be done." Dopilp is here to serve you. */
END
IF~~THEN REPLY @336 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @337 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @338 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast
@340 /*The kuo-toa, visibly pleased by your wicked command, quickly set up some fires and seize the prisoners. They are dragged out of the prisoners' enclosure onto the stone. "How would you like them done, Lord Scar?" */
END
IF~~THEN REPLY @342 /*"Roast them alive." */ DO~~ + g-bbD010.cannibalfeast1a
IF~~THEN REPLY @343 /*"Cut them up and make them into a stew." */ DO~~ + g-bbD010.cannibalfeast1b
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeastalt
@345 /*The kuo-toa, visibly pleased by your wicked command, quickly set up some fires and seize the prisoners. They are dragged out of the prisoners' enclosure onto the stone. One of them, with metallic skin, offers some resistance at first but is eventually overpowered and brought along. "How would you like them done, Lord Scar?" */
END
IF~~THEN REPLY @347 /*"Roast them alive." */ DO~ActionOverride("g-bb016",JumpToPoint([3267.1565]))~ + g-bbD010.cannibalfeast2a
IF~~THEN REPLY @348 /*"Cut them up and make them into a stew." */ DO~ActionOverride("g-bb016",JumpToPoint([3267.1565]))~ + g-bbD010.cannibalfeast2b
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast1a
@350 /*The people from the enclosure are placed on the fires, and horrifying screams fill the cavern. Screams that surely must escape the kuo-toa's underground sanctuary of violence. You can imagine that somewhere above, cracks in Sigil's ground release distant, warped echoes of the victims' deathly wails. This song, the agonal prelude to the path you have just set foot upon, is clearly a superior form of art. */
=@351 /*The prelude does not last long. Now filled with the smell of roasted flesh, the cavern soon grows quiet, apart from the crackling of fire and the busy chatter of the kuo-toa. The macabre sight of the fish people slowly rotating the humans so they are evenly cooked from all sides fills your strange, warped heart with joy. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~ THEN @352 /*"As a Sensate, you would think I would at least appreciate the opportunity to witness this. But truth be told, I have seen worse in the Abyss and in Baator. I just never imagined seeing such atrocities in Sigil. I hope you are going somewhere with this, or we will have to have a very stern conversation about it..." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~ THEN @353 /**"...Yesss. Ignus loves to see thissss... FIRE CONSUMES!"* */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~ THEN @354 /**The prisoners are tortured and executed. Such is the way of JUSTICE, though I do not know what CRIMES they committed.* */
==g-bbd010 @355 /*The roast is ready. You are being presented with a plate of seared meat. It is waiting for you, calling to you. The true predatory nature of your existence is on the cusp of being satisfied. "Yes-yes. Dinner is served for Lord Scar!" says Dopilp, your high priest. */
END
IF~~THEN REPLY @357 /*Eat the roasted human. */ DO~AddexperienceParty(200000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD010.cannibalfeast1a1
IF~~THEN REPLY @358 /*Throw it to the floor and get ready to slap your priest. "This does not look good. You have displeased me." */ DO~~ + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast1a1
@360 /*The flesh does not taste as well as some of the meals you had, but it is very serviceable. However, the very act of eating it fills you with a sense of elation, reminding you of that first strange disconnect that trying Elvra's drink gave you. You have taken the next step toward becoming the alpha predator of the multiverse. */
=@361 /*"How was it, Lord Scar? Your will be done." Dopilp is here to serve you. */
END
IF~~THEN REPLY @363 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @364 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @365 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast1b
@367 /*The kuo-toa begin chopping. There is a brief moment of screaming, but the sharp blades of the sacrificial knifes cut deep and clean, and their strange hooks crush and snap bones easily. The kuo-toa are very skilled at what they do. Very soon, all the humans are cut into small chunks. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~ THEN @368 /*"As a Sensate, you would think I would at least appreciate the opportunity to witness this. But truth be told, I have seen worse in the Abyss and in Baator. I just never imagined seeing such atrocities in Sigil. I hope you are going somewhere with this, or we will have to have a very stern conversation about it..." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~ THEN @369 /**"...Yesss. Ignus loves to see thissss... FIRE CONSUMES!"* */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~ THEN @370 /**The prisoners are tortured and executed. Such is the way of JUSTICE, though I do not know what CRIMES they committed.* */
==g-bbd010 @371 /*Dopilp and his minions set up a fire and bring out a large pot. Suddenly, vegetables appear that they must have had stashed away, along with buckets of dirty ditch water being brought as well. Everything is put into the pot in a disgusting yet strangely appealing mix. */
END
IF~~THEN REPLY @373 /*Wait for it to cook. */ DO~FadeToColor([20.0],666) AdvanceTime(60)~ + g-bbD010.cannibalfeast1bb
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast1bb
@375 /*The stew is ready. You are being presented with a wooden bowl of a bloody mass that barely resembles anything you have ever eaten. It is waiting for you, calling to you. The true predatory nature of your existence is on the cusp of being satisfied. "Yes-yes. Dinner is served for Lord Scar!" says Dopilp, your high priest. */
END
IF~~THEN REPLY @377 /*Eat the human stew. */ DO~AddexperienceParty(200000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD010.cannibalfeast1bbb
IF~~THEN REPLY @378 /*Pour it on the floor and get ready to slap your priest. "This does not look good. You have displeased me." */ DO~~ + g-bbD010.godfight
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast1bbb
@380 /*It is foul, just as your eyes told you. The meat is gummy and the sauce muddy. However, the very act of eating it fills you with a sense of elation, reminding you of that first strange disconnect that trying Elvra's drink gave you. You have taken the next step toward becoming the alpha predator of the multiverse. */
=@381 /*"How was it, Lord Scar? Your will be done." Dopilp is here to serve you. */
END
IF~~THEN REPLY @383 /*"I have some commandments for you." */ DO~~ + g-bbD010.commandments
IF~~THEN REPLY @384 /*"I have no further tasks for you. Go forth and do my bidding." */ DO~~ + g-bbD010.GG1
IF~~THEN REPLY @385 /*"I don't really feel like being a god. Make do on your own." */ DO~~ + g-bbD010.FF1
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast2a
@387 /*The people from the enclosure are placed on the fires, and horrifying screams fill the cavern. Screams that surely must escape the kuo-toa's underground sanctuary of violence. You can imagine that somewhere above, cracks in Sigil's ground release distant, warped echoes of the victims' deathly wails. This song, the agonal prelude to the path you have just set foot upon, is clearly a superior form of art. */
=@388 /*As the bound bladeling is coerced into the fire, the ecstasy of inbound agony is palpable among the fish people. You, too, feel a strange sense of excitement. Soon, the formidable outsider will feed his life force to you and your congregation. The meal writhes and squirms, seemingly aware of its tragic fate. All the sharp thorns on its metallic skin stand up, as if in a final act of defense against the fiery element. */
=@389 /*Suddenly, in a tenth of a second, it becomes apparent that this was an act. The bladeling, waiting for his bonds to burn through, leaps out of the fire in the direction of Dopilp and, with a mad scream of anger, unleashes a hail of thorns that suddenly erupt from his skin at high velocity. */
=@390 /*The kuo-toa find themselves completely off guard, and the bladeling's aim with his own body parts as weapons is impeccable. Every fish-like head in sight now has a long metal spike embedded deep in its forehead. All the kuo-toa fall to the ground. Kilthas grabs a weapon from the nearest corpse and looks to you. */
END
IF~~THEN REPLY @392 /*Continue. */ DO~SetGlobal("g-kuotoadead","GLOBAL",1) SetGlobal("g-kuotoaprisonersdead","GLOBAL",1) SetGlobal("g-kilthasshowdown","GLOBAL",1)  Wait(4) ActionOverride("G-bb016",StartDialogueNoSet("G-bbd016"))~ EXIT
CHAIN IF~~THEN g-bbD010 g-bbD010.cannibalfeast2b
@394 /*The kuo-toa begin chopping. There is a brief moment of screaming, but the sharp blades of the sacrificial knifes cut deep and clean, and their strange hooks crush and snap bones easily. The kuo-toa are very skilled at what they do. Very soon, all the humans are cut into small chunks. */
=@395 /*The bladeling, however, struggles against them, and it almost seems he may yet persevere as his metallic skin resists the deep cuts inflicted by the tribe. But, as the blood flows and chunks of rough meat fall to the stone floor, his strength wanes and he stops resisting, without a grand finale, just drifting silently into oblivion. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~ THEN @396 /*"As a Sensate, you would think I would at least appreciate the opportunity to witness this. But truth be told, I have seen worse in the Abyss and in Baator. I just never imagined seeing such atrocities in Sigil. I hope you are going somewhere with this, or we will have to have a very stern conversation about it..." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~ THEN @397 /**"...Yesss. Ignus loves to see thissss... BUT YOU COULD HAVE UUUUSSED FIRE!"* */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~ THEN @398 /**The prisoners are tortured and executed. Such is the way of JUSTICE, though I do not know what CRIMES they committed.* */
==g-bbd010 @399 /*Dopilp and his minions set up a fire and bring out a large pot. Suddenly, vegetables appear that they must have had stashed away, along with buckets of dirty ditch water being brought as well. Everything is put into the pot in a disgusting yet strangely appealing mix. */
END
IF~~THEN REPLY @401 /*Wait for it to cook. */ DO~Kill("g-bb016") FadeToColor([20.0],666) AdvanceTime(60)~ + g-bbD010.cannibalfeast1bb