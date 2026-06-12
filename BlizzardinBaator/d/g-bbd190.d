BEGIN g-bbD190
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) Global("G-theaterraided","GLOBAL",0)~THEN g-bbD190 g-bbD190.start
@0 /*As you travel alongside Ulfbrand and his forces toward the Beneathmask, you cannot help but dwell on two things. First, you wonder just how formidable the small force gathered by the Fated Factor on such short notice truly is. From what you can sense, the unprepared actors hiding there stand little chance against them. The second thing that keeps returning to your thoughts is the notion of... consequence. */
=@1 /*Your choices put this in motion. Could the Doomguard have hidden away? Could Ulfbrand have gotten distracted? Could Rowan Darkwood have changed his mind about this? Could Haer'Dalis and his troupe have sneaked out of the City of Doors unseen, to some quaint Prime Material world to have more adventures of their own? All of these peaceful options are now off the table. This is going to get violent and you helped it reach this point.

How does it make you feel? */
END
IF~Global("g-actualcannibal","GLOBAL",1) !Global("g-kiaransaleefollower","GLOBAL",1)~THEN REPLY @3 /*Very good. The carnage will be wonderful. */ DO~IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1) ~ + g-bbD190.chain2
IF~Global("g-kiaransaleefollower","GLOBAL",1) !Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @4 /*Very good. Utter a silent prayer to your new patron, the Lady of the Dead. The loss of life that is about to unravel is no cause for tears. The many bodies will likely be reused in their silent and perfect obedience of undead servitude. It is the ultimate goal of all life. */ DO~IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-2) IncrementGlobal("g-kiaransaleeworship","GLOBAL",5000) ~ + g-bbD190.chain2
IF~Global("g-kiaransaleefollower","GLOBAL",1) Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @5 /*Very good. Utter a silent prayer to your new patron, the Lady of the Dead. The loss of life that is about to unravel is no cause for tears. The many bodies will likely be reused in their silent and perfect obedience of undead servitude. It is the ultimate goal of all life. The philosophy of the Dustmen, so close to your heart, is so clearly in line with what the multiverse is heading towards. */ DO~IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-2) IncrementGlobal("g-kiaransaleeworship","GLOBAL",7000) ~ + g-bbD190.chain2
IF~~THEN REPLY @6 /*Good. Only the strong will survive. This is the way of the planes. There is no reason to feel regret about it. */ DO~IncrementGlobal("LAW","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",-1) ~ + g-bbD190.chain2
IF~~THEN REPLY @7 /*Good. The city will bathe in blood this day. The Fated want to take everyone's belongings. The Doomguard embrace decay and destruction. Neither are worth your tears. */ DO~IncrementGlobal("LAW","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1) ~ + g-bbD190.chain2
IF~~THEN REPLY @8 /*You do not know. You can only hope that this was the right path to take. */ DO~~ + g-bbD190.chain2
IF~~THEN REPLY @9 /*You are unsure. You have to believe that your choices are right. If this path is the only way to stop the slow undoing of the planes, it must be the right one, even if it seems terrible. */ DO~IncrementGlobal("LAW","GLOBAL",-1) ~ + g-bbD190.chain2
IF~~THEN REPLY @10 /*Bad. Whatever secrets about your past await you in the deepest reaches of the Hells, they cannot be worth all the lives that will be lost today. Still, it is too late to stop this conflict. */ DO~IncrementGlobal("GOOD","GLOBAL",1) ~ + g-bbD190.chain2
IF~~THEN REPLY @11 /*It does not make you feel anything. */ DO~~ + g-bbD190.chain2
CHAIN IF~~THEN g-bbD190 g-bbD190.chain2
@13 /*As the intimidating squadron makes its way theaterwards, some locals hide indoors, shops close, and windows shutter to snuff the line of sight of curious children. Meanwhile, some creatures in the city have the opposite reaction. Many fiends stay outside and smile, sensing inevitable carnage. The legion of the Fated is made up mostly of seasoned warriors loyal to Ulfbrand, who traveled here from Ysgard. These streets rarely see such a display of power. */
END
IF~Global("g-batdus","GLOBAL",2)~THEN REPLY @15 /*Look at the group of Dustmen mages. */ DO~SetGlobal("g-batdus","GLOBAL",3)~ + g-bbD190.preraiddus
IF~Global("g-batgod","GLOBAL",2)~THEN REPLY @16 /*Look at the handful of well equipped Godsmen. */ DO~SetGlobal("g-batgod","GLOBAL",3)~ + g-bbD190.preraidgod
IF~Global("g-batsen","GLOBAL",2)~THEN REPLY @17 /*Look at the varied collection of Sensates. */ DO~SetGlobal("g-batsen","GLOBAL",3)~ + g-bbD190.preraidsen
IF~Global("g-batana","GLOBAL",2)~THEN REPLY @18 /*Look at the... Wait, where are the Anarchists? */ DO~SetGlobal("g-batana","GLOBAL",3)~ + g-bbD190.preraidana
IF~Global("g-bathar","GLOBAL",2)~THEN REPLY @19 /*Look at the officers of the Harmonium, keeping an eye on the gang. */ DO~SetGlobal("g-bathar","GLOBAL",3)~ + g-bbD190.preraidhar
IF~Global("g-batxao","GLOBAL",2)~THEN REPLY @20 /*Look at the... Wait, is there only one Xaositect? */ DO~SetGlobal("g-batxao","GLOBAL",3)~ + g-bbD190.preraidxao
IF~~THEN REPLY @21 /*The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.preraiddus
@23 /*The Dustmen are a few, but they seem to all be decently capable spellslingers. Their slim postures, however, stand in stark contrast to the muscular Ysgardians. */
END
IF~Global("g-batgod","GLOBAL",2)~THEN REPLY @26 /*Look at the handful of well equipped Godsmen. */ DO~SetGlobal("g-batgod","GLOBAL",3)~ + g-bbD190.preraidgod
IF~Global("g-batsen","GLOBAL",2)~THEN REPLY @27 /*Look at the varied collection of Sensates. */ DO~SetGlobal("g-batsen","GLOBAL",3)~ + g-bbD190.preraidsen
IF~Global("g-batana","GLOBAL",2)~THEN REPLY @28 /*Look at the... Wait, where are the Anarchists? */ DO~SetGlobal("g-batana","GLOBAL",3)~ + g-bbD190.preraidana
IF~Global("g-bathar","GLOBAL",2)~THEN REPLY @29 /*Look at the officers of the Harmonium, keeping an eye on the gang. */ DO~SetGlobal("g-bathar","GLOBAL",3)~ + g-bbD190.preraidhar
IF~Global("g-batxao","GLOBAL",2)~THEN REPLY @30 /*Look at the... Wait, is there only one Xaositect? */ DO~SetGlobal("g-batxao","GLOBAL",3)~ + g-bbD190.preraidxao
IF~~THEN REPLY @31 /*Do not look. The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.preraidgod
@33 /*The Believers of the Source are possibly the best equipped warriors today. You can spot some of the berserkers looking at their axes and hammers with a hint of jealousy. Surely, they will prove to be worthy allies. */
END
IF~Global("g-batdus","GLOBAL",2)~THEN REPLY @35 /*Look at the group of Dustmen mages. */ DO~SetGlobal("g-batdus","GLOBAL",3)~ + g-bbD190.preraiddus
IF~Global("g-batsen","GLOBAL",2)~THEN REPLY @37 /*Look at the varied collection of Sensates. */ DO~SetGlobal("g-batsen","GLOBAL",3)~ + g-bbD190.preraidsen
IF~Global("g-batana","GLOBAL",2)~THEN REPLY @38 /*Look at the... Wait, where are the Anarchists? */ DO~SetGlobal("g-batana","GLOBAL",3)~ + g-bbD190.preraidana
IF~Global("g-bathar","GLOBAL",2)~THEN REPLY @39 /*Look at the officers of the Harmonium, keeping an eye on the gang. */ DO~SetGlobal("g-bathar","GLOBAL",3)~ + g-bbD190.preraidhar
IF~Global("g-batxao","GLOBAL",2)~THEN REPLY @40 /*Look at the... Wait, is there only one Xaositect? */ DO~SetGlobal("g-batxao","GLOBAL",3)~ + g-bbD190.preraidxao
IF~~THEN REPLY @41 /*Do not look. The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.preraidsen
@43 /*The Society of Sensation may not be the most combative of Sigil's factions, and that becomes evident when you look at those they sent to help. It appears to be little more than a group of friends of various shapes and sizes, none of them dressed in any sort of uniform or special attire. They clearly do not want to be here. They exchange whispers when you look their way, and one of the men, an older gentleman with a long, stylized mustache, lets out a chuckle. */
END
IF~Global("g-batdus","GLOBAL",2)~THEN REPLY @45 /*Look at the group of Dustmen mages. */ DO~SetGlobal("g-batdus","GLOBAL",3)~ + g-bbD190.preraiddus
IF~Global("g-batgod","GLOBAL",2)~THEN REPLY @46 /*Look at the handful of well equipped Godsmen. */ DO~SetGlobal("g-batgod","GLOBAL",3)~ + g-bbD190.preraidgod
IF~Global("g-batana","GLOBAL",2)~THEN REPLY @48 /*Look at the... Wait, where are the Anarchists? */ DO~SetGlobal("g-batana","GLOBAL",3)~ + g-bbD190.preraidana
IF~Global("g-bathar","GLOBAL",2)~THEN REPLY @49 /*Look at the officers of the Harmonium, keeping an eye on the gang. */ DO~SetGlobal("g-bathar","GLOBAL",3)~ + g-bbD190.preraidhar
IF~Global("g-batxao","GLOBAL",2)~THEN REPLY @50 /*Look at the... Wait, is there only one Xaositect? */ DO~SetGlobal("g-batxao","GLOBAL",3)~ + g-bbD190.preraidxao
IF~~THEN REPLY @51 /*Do not look. The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.preraidana
@53 /*It only makes sense for the Revolutionary League to work in the shadows. You hope that they will be there when it matters. */
END
IF~Global("g-batdus","GLOBAL",2)~THEN REPLY @55 /*Look at the group of Dustmen mages. */ DO~SetGlobal("g-batdus","GLOBAL",3)~ + g-bbD190.preraiddus
IF~Global("g-batgod","GLOBAL",2)~THEN REPLY @56 /*Look at the handful of well equipped Godsmen. */ DO~SetGlobal("g-batgod","GLOBAL",3)~ + g-bbD190.preraidgod
IF~Global("g-batsen","GLOBAL",2)~THEN REPLY @57 /*Look at the varied collection of Sensates. */ DO~SetGlobal("g-batsen","GLOBAL",3)~ + g-bbD190.preraidsen
IF~Global("g-bathar","GLOBAL",2)~THEN REPLY @59 /*Look at the officers of the Harmonium, keeping an eye on the gang. */ DO~SetGlobal("g-bathar","GLOBAL",3)~ + g-bbD190.preraidhar
IF~Global("g-batxao","GLOBAL",2)~THEN REPLY @60 /*Look at the... Wait, is there only one Xaositect? */ DO~SetGlobal("g-batxao","GLOBAL",3)~ + g-bbD190.preraidxao
IF~~THEN REPLY @61 /*Do not look. The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.preraidhar
@63 /*The Harmonium is walking a certain distance away, as if they are slightly apprehensive of being associated with this raid. They look quite uncomfortable. */
END
IF~Global("g-batdus","GLOBAL",2)~THEN REPLY @65 /*Look at the group of Dustmen mages. */ DO~SetGlobal("g-batdus","GLOBAL",3)~ + g-bbD190.preraiddus
IF~Global("g-batgod","GLOBAL",2)~THEN REPLY @66 /*Look at the handful of well equipped Godsmen. */ DO~SetGlobal("g-batgod","GLOBAL",3)~ + g-bbD190.preraidgod
IF~Global("g-batsen","GLOBAL",2)~THEN REPLY @67 /*Look at the varied collection of Sensates. */ DO~SetGlobal("g-batsen","GLOBAL",3)~ + g-bbD190.preraidsen
IF~Global("g-batana","GLOBAL",2)~THEN REPLY @68 /*Look at the... Wait, where are the Anarchists? */ DO~SetGlobal("g-batana","GLOBAL",3)~ + g-bbD190.preraidana
IF~Global("g-batxao","GLOBAL",2)~THEN REPLY @70 /*Look at the... Wait, is there only one Xaositect? */ DO~SetGlobal("g-batxao","GLOBAL",3)~ + g-bbD190.preraidxao
IF~~THEN REPLY @71 /*Do not look. The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.preraidxao
@73 /*At the far end of the militant procession, a lone figure dressed in an obviously uncomfortable spiked outfit dances toward the theater. He spins and throws his arms about, letting out animalistic howls and grunts. Clearly, the Chaosmen have sent their very best. [THUGLD03] */
END
IF~Global("g-batdus","GLOBAL",2)~THEN REPLY @75 /*Look at the group of Dustmen mages. */ DO~SetGlobal("g-batdus","GLOBAL",3)~ + g-bbD190.preraiddus
IF~Global("g-batgod","GLOBAL",2)~THEN REPLY @76 /*Look at the handful of well equipped Godsmen. */ DO~SetGlobal("g-batgod","GLOBAL",3)~ + g-bbD190.preraidgod
IF~Global("g-batsen","GLOBAL",2)~THEN REPLY @77 /*Look at the varied collection of Sensates. */ DO~SetGlobal("g-batsen","GLOBAL",3)~ + g-bbD190.preraidsen
IF~Global("g-batana","GLOBAL",2)~THEN REPLY @78 /*Look at the... Wait, where are the Anarchists? */ DO~SetGlobal("g-batana","GLOBAL",3)~ + g-bbD190.preraidana
IF~Global("g-bathar","GLOBAL",2)~THEN REPLY @79 /*Look at the officers of the Harmonium, keeping an eye on the gang. */ DO~SetGlobal("g-bathar","GLOBAL",3)~ + g-bbD190.preraidhar
IF~~THEN REPLY @81 /*Do not look. The legion is almost there. */ DO~~ + g-bbD190.chain3
CHAIN IF~~THEN g-bbD190 g-bbD190.chain3
@83 /*You walk under a gate that opens up into the courtyard, housing the majestic Vertical Sea, but only a few of the men and women spare any glances at the structure. To the right of it, a little bit to the back, you can see the large, magically suspended mask, hovering over the entrance to where the actors are hiding.  */
=@84 /*It becomes clear to you that the battle is imminent. However, the entrance to the theater is barricaded. Ulfbrand begins issuing orders to his lieutenants to break through the blockade. In the meantime, he turns to you. */
==g-bbd156 IF~!Class(Protagonist,Fighter) !Class(Protagonist,Mage) !Class(Protagonist,Thief)~THEN @85 /*"Little one, I'm not quite sure what your best qualities are, but stay out my berserkers' way, just in case." */
==g-bbd156 IF~Class(Protagonist,Thief)~THEN @86 /*"Little one, you seem agile. You're one of those rogue types, aren't you? Keep to the flanks and see if you can pick off any stragglers. Do not throw yourself into the fray." */
==g-bbd156 IF~Class(Protagonist,Mage)~THEN @87 /*"Little one. You're a spellslinger, aren't you? Join them when the fighting starts. Stay out of the thick of it." */
==g-bbd156 IF~Class(Protagonist,Fighter)~THEN @88 /*"Little one, you seem to have quite a swing. Do not get mixed up with the other warriors. You're better suited to picking off stronger foes. Keep your eyes open." */
==g-bbd190 @89 /*Then, he signals everyone to move. The raid is about to start. */
==g-bbd190 @90 /*After a few minutes, the way is clear. Ulfbrand goes in first. */
END
IF~~THEN REPLY @92 /*Follow the Ysgardian into the theater. */ DO~SetGlobal("G-RaidTheaterF","GLOBAL",2) TeleportParty("arg-b2",[692.857],0) ~ EXIT
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) Global("G-theaterraided","GLOBAL",1) Global("G-raeliscrisis","GLOBAL",0) Global("G-hearspeech","GLOBAL",0)~THEN g-bbD190 g-bbD190.start2
@95 /*As the forces of the Fated enter the Beneathmask Theater, it becomes clear that your march was spotted from afar. The stage has been fortified, and the actors are not alone. They did not receive much in the way of support, but a few loyal Doomguard are present, along with what appear to be some unaffiliated artists. The air inside this beautiful palace of art and entertainment is thick with desperation and relentless defiance in the face of a far stronger enemy. In short, it is the air of true bravery. */
==g-bbd193 @96 /*At the far end of the militant procession, a lone figure dressed in an obviously uncomfortable spiked outfit dances toward the theater. He spins and throws his arms about, letting out animalistic howls and grunts. [THUGLD03] */
==g-bbd156 @97 /*"Like fawns to a slaughter," Ulfbrand says somberly. His loud and confident demeanor from the outside is gone, replaced by a sense of disappointment and... shame?  [g-15611] */
==g-bbd017 @98 /*"Ah... the terrifying double-wattled cassowary finally found us. Are you having fun assaulting the free speech of words yet unspoken? And..." The tiefling leans a bit to the left to better see who is hiding in the purple lights of the entrance to the auditorium. */
==g-bbd017 @99 /*"...my phoenix?" He looks at you with an expression of total disbelief and absolute betrayal. "Now that is a cruel third-act twist, one I had not even expected. I applaud the dramaticism, though it pains me to see you aim this weapon at my chest. Who would have guessed that this is what you wanted? The end of Haer'Dalis!" */
END
IF~!Global("G-dissrowan","GLOBAL",1)~THEN REPLY @101 /*"It's just business. I stand with the winning side, Haer'Dalis." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-hearspeech","GLOBAL",1) StartCutSceneMode() StartCutScene("g-bbC023")~ EXIT
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @102 /*"It's just business. I stand with the winning side, Haer'Dalis." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-raeliscrisis","GLOBAL",1) ~ EXIT
IF~!Global("G-dissrowan","GLOBAL",1)~THEN REPLY @103 /*"It pains me too that it came to this, but this is how the planes have turned." */ DO~SetGlobal("G-hearspeech","GLOBAL",1) StartCutSceneMode() StartCutScene("g-bbC023")~ EXIT
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @104 /*"It pains me too that it came to this, but this is how the planes have turned." */ DO~SetGlobal("G-raeliscrisis","GLOBAL",1)~ EXIT
IF~!Global("G-dissrowan","GLOBAL",1)~THEN REPLY @105 /*"Shut up, thesp." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-hearspeech","GLOBAL",1) StartCutSceneMode() StartCutScene("g-bbC023")~ EXIT
IF~Global("G-dissrowan","GLOBAL",1)~THEN REPLY @106 /*"Shut up, thesp." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-raeliscrisis","GLOBAL",1) ~ EXIT
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) Global("G-theaterraided","GLOBAL",1) Global("G-raeliscrisis","GLOBAL",1) Global("G-hearspeech","GLOBAL",0)~THEN g-bbD190 g-bbD190.raeliscrisis
@108 /*The familiar gray-skinned redhead pokes out from behind some of the Doomguard enforcers. Raelis' posture suggests that even in the face of adversity, she is not afraid to ruffle some feathers. She sees you, and her face twists into sheer, absolute fury. She steps confidently to the front, with pure intent written all over her. */
==g-bbd054 @109 /*"Are you absolutely barmy, you wretched, piking, hypocritical pile of steaming hot, Lower Planes spawned *shit*?!" */
==g-bbd054 @110 /*The sound of her hooves stomping angrily on the wooden stage of the theater, carried by the room's masterfully designed acoustics, lends a strange, sound-based authority over both allies and enemies filling the space. She moves straight to the front, unphased by the proximity of the many deadly weapons wielded by the Ysgardians. Nobody makes *any* move to stop her. */
==g-bbd054 @111 /*"*YOU*!" */
==g-bbd054 @112 /*"You scheming, conniving, spineless excuse of a person. It was *your idea* to make this self-absorbed clown the antagonist of our play. *You* came to me with Darkwood's name on your lying, miserable, disgusting lips."  */
==g-bbd193 @113 /*The lone Xaositect by the broken chair is moved to tears by the expressive performance on stage. He cries out in pain, screams for justice, and finally kicks the theater seat. "I LOVE THIS PLAY!" */
==g-bbd054 @114 /*She turns to the large half giant next to you. "I don't come here to plead mercy, you subservient greed-swine. You can pike right off just as well. But do not, *for a second*, think that this entire business is anyone else's fault but *HIS*. He deserves the executioner's axe as much as us, if not *more*. You're Ysgardian? Glory and honor and this trocopotaca shit? Then on your honor, kill *HIM*, then *YOURSELF*, you predatory, toxic meatloaf." She turns on her heel with such force that the hoof creates a painful squeak with the stage beneath her. She begins to step back, less angry, but still obviously unafraid, and again, not a single soul makes any moves to stop her. */
END
IF~~THEN REPLY @116 /*Hold your breath. */ DO~SetGlobal("G-raeliscrisis","GLOBAL",2)~ EXIT
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) Global("G-theaterraided","GLOBAL",1) Global("G-raeliscrisis","GLOBAL",2) Global("G-hearspeech","GLOBAL",0)~THEN g-bbD190 g-bbD190.raeliscrisis2
@118 /*The whole auditorium stands in silence. Any energy the Fated may have had upon stepping in is now dispersed. The actors on the other side of the stage look as if the tide has turned for them, as though their doom has been postponed.

All eyes are on you. */
END
IF~~THEN REPLY @120 /*"What?" */ DO~SetGlobal("G-raeliscrisis","GLOBAL",3)~ + g-bbD190.allbad
IF~CheckStat(Protagonist,25,CHR)~THEN REPLY @121 /*Lie: "*Obviously* this is a lie. Ulfbrand, nobody would be stupid enough to do what I am *supposedly doing*." */ DO~SetGlobal("g-raidallegiances","GLOBAL",2) IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-raeliscrisis","GLOBAL",3)~ + g-bbD190.convince
IF~!CheckStat(Protagonist,25,CHR)~THEN REPLY @122 /*Lie: "*Obviously* this is a lie. Ulfbrand, nobody would be stupid enough to do what I am *supposedly doing*." */ DO~IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-raeliscrisis","GLOBAL",3)~ + g-bbD190.allbad
IF~CheckStatGT(Protagonist,22,CHR)
CheckStatGT(Protagonist,22,INT)~THEN REPLY @123 /*Own it. "Yes, Ulfbrand, it was my *idea*, but they are the ones who put it out there. Or... were going to, anyway. The Norns did not point at *me*." */ DO~SetGlobal("g-raidallegiances","GLOBAL",2) SetGlobal("G-raeliscrisis","GLOBAL",3)~ + g-bbD190.convince2
IF~OR(2) CheckStatLT(Protagonist,23,CHR)
CheckStatLT(Protagonist,23,INT)~THEN REPLY @124 /*Own it. "Yes, Ulfbrand, it was my *idea*, but they are the ones who put it out there. Or... were going to, anyway. The Norns did not point at *me*." */ DO~SetGlobal("G-raeliscrisis","GLOBAL",3)~ + g-bbD190.allbad
IF~~THEN REPLY @125 /*Improvise. "That's right. I have been secretly allied with the Doomguard all along. My allies are united, and together we can defeat the Fated. They fell right into our TRAP!" */ DO~SetGlobal("g-raidallegiances","GLOBAL",3) SetGlobal("G-raeliscrisis","GLOBAL",3)~ + g-bbD190.trap
CHAIN IF~~THEN g-bbD190 g-bbD190.allbad
@127 /*It seems as if everyone in the room was convinced by the skilled actress and her masterful performance. The Fated, of course, seem to care the most, and Ulfbrand himself, already disappointed upon arriving here, appears to be growing more and more disheartened by the minute. */
==g-bbd156 @128 /*"Little one. I almost began to like you. And here you are, proving to be a huge thorn in my wide ass. I guess you'll have to die too. This makes it at least a little more exciting, but first things first." */
==g-bbd190 @129 /*The Doomguard seem to pounce down on the unsuspecting Fated, while Ulfbrand leaps onto the stage toward the actors in a single bound. */
END
IF~~THEN REPLY @131 /*Prepare to fight... everyone? */ DO~SetGlobal("g-raidberserk","GLOBAL",1) ActionOverride("g-bb201",JumpToPoint([860.712]) SetGlobal("g-raidallegiances","GLOBAL",4) ActionOverride("g-bb154",PlaySequence(ANIM_MISC1)) TeleportParty("arg-b2",[830.742],0) ActionOverride("g-bb150",JumpToPoint([860.712])  EndCutSceneMode()~ EXIT
IF~!NumInPartyLT(2)~THEN REPLY @132 /*Turn to the Doomguard. "I wish you no harm. My allies and I will stand with you against the giant." */ DO~SetGlobal("g-raidallegiances","GLOBAL",3)~ + g-bbD190.trap
IF~NumInPartyLT(2)~THEN REPLY @133 /*Turn to the Doomguard. "I wish you no harm. My allies and I will stand with you against the giant." */ DO~SetGlobal("g-raidallegiances","GLOBAL",3)~ + g-bbD190.trap
CHAIN IF~~THEN g-bbD190 g-bbD190.trap
@135 /*Haer'Dalis stares you down, full of suspicion, but he seems fully aware that Raelis just gave them a fighting chance with her act and this is not a time to turn down an ally. */
==g-bbd017 @136 /*"We are friends no more, my phoenix, but we can fight on the same side, for now... Mayhap, if you end up in the same grave as we do, I can try to trust you again!" */
==g-bbd054 @137 /*"Not even in the grave will I change my mind about this humanoid turdspinner, but if he can fight the fat Ysgardian, let it be." Raelis raises her arm high and gives a rather unique, high-pitched war cry. Everyone raises their weapons, ready for battle. The Doomguard seem to pounce down on the unsuspecting Fated, while Ulfbrand leaps onto the stage toward the actors in a single bound. */
END
IF~~THEN REPLY @139 /*Climb onto the stage and go after him. */ DO~SetGlobal("g-raidberserk","GLOBAL",1) ActionOverride("g-bb201",JumpToPoint([860.712]) SetGlobal("g-raidallegiances","GLOBAL",3) ActionOverride("g-bb154",PlaySequence(ANIM_MISC1)) TeleportParty("arg-b2",[830.742],0) ActionOverride("g-bb150",JumpToPoint([860.712])  EndCutSceneMode()~ EXIT
CHAIN IF~~THEN g-bbD190 g-bbD190.convince
@141 /*Ulfbrand thinks for a moment. He looks at the tieflings on the other side of the stage, back to you, and back to the tieflings again. He lets out a long, tired sigh. */
==g-bbd156 @142 /*"There is no way this small man would be such a leatherhead to come here if this were true. It just doesn't add up. A mountain goat that rams its head into the hard walls of a fjord has a brain enough to know not to do anything like this." */
==g-bbd054 @143 /*Raelis is back among the Doomguard now, deeply saddened by these words. It looks like the hope was only momentary. */
==g-bbd156 @144 /*"Are you ready, little one?" As if with a heavy heart, the Ysgardian stretches and cracks his neck. [g-15612] */
==g-bbd190 @145 /*The Doomguard seem to pounce down on the unsuspecting Fated, while Ulfbrand leaps onto the stage toward the actors in a single bound. */
END
IF~~THEN REPLY @147 /*Climb onto the stage and go after him. */ DO~SetGlobal("G-hearspeech","GLOBAL",1) StartCutSceneMode() StartCutScene("g-bbC023")~ EXIT
CHAIN IF~~THEN g-bbD190 g-bbD190.convince2
@149 /*Ulfbrand thinks for a moment. He looks at the tieflings on the other side of the stage, back to you, and back to the tieflings again. He lets out a long, tired sigh. */
==g-bbd156 @150 /*"The Norns said what they said." */
==g-bbd054 @151 /*Raelis is back among the Doomguard now, deeply saddened by these words. It looks like the hope was only momentary. */
==g-bbd156 @152 /*"Are you ready, little one?" As if with a heavy heart, the Ysgardian stretches and cracks his neck. [g-15612] */
==g-bbd190 @153 /*The Doomguard seem to pounce down on the unsuspecting Fated, while Ulfbrand leaps onto the stage toward the actors in a single bound. */
END
IF~~THEN REPLY @155 /*Climb onto the stage and go after him. */ DO~SetGlobal("G-hearspeech","GLOBAL",1) StartCutSceneMode() StartCutScene("g-bbC023")~ EXIT
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) Global("G-theaterraided","GLOBAL",1) Global("G-hearspeech","GLOBAL",1)~THEN g-bbD190 g-bbD190.cont
@157 /*A scream, bidding everyone to wait, resounds through the theater, and the tiefling actor steps to the center of the stage. */
==g-bbd017 @158 /*"Let this sparrow sing its song one last time! I would like to present our case. Not to the immovable authorities of the factor, whose judgment is not his own to make, but to the rest of you: the people, and the citizens of this magnificent city in the very heart of the multiverse. I shall present it to the visitors too, from the Heroic Domains of Ysgard. What beautiful name does your homeland bear? A name that can shatter delicate hearts... " Hear'dalis pauses dramatically and looks to the ceiling of the hall, his eyes wide open. */
==g-bbd017 @159 /*"You have all come here to execute some actors. Actors, who only exist to bring people respite from the mundane. Actors who brighten the desolate streets of this slum with smiles and songs, and splatter color onto the colorless canvas of the common man. People accused of offending a bully who is himself an offensive figure to us, with his endless hunger for power and wealth. But 'tis not even the case!" */
==g-bbd017 @160 /*"No man should be oppressed because of what he expresses, but to prosecute an ARTIST for their ART? 'Tis not justice! But there is more... " He spreads his arms helplessly and looks to the Ysgardians. "None of this actually happened! Aye! The Norns have foretold that we will, or so we hear, but the fact stands that this seed of prediction has not sprouted! We are innocent, yet we are blamed for a crime we never committed! Can you see the absurdity of this raid? You were lied to. You were led to believe that my friends and I are blind vultures, ready to attack others like some beasts...!" */
==g-bbd017 @161 /*"Can you see that naught of this is true?" Haer'Dalis falls silent, his arms provocatively crossed, his eyes scanning the room for hearts changed, minds unclouded, or at least shame. Standing at the very center of the stage, the actor has either just saved his life or had the pleasure of delivering one last, touching monologue. */
==g-bbd193 @162 /*The lone Xaositect by the broken chair is moved to tears by the expressive performance on stage. He cries out in pain, screams for justice, and finally kicks the theater seat. "I LOVE THIS PLAY!" */
END
IF~GlobalLT("g-batdus","GLOBAL",2)
GlobalLT("g-batgod","GLOBAL",2)
GlobalLT("g-batsen","GLOBAL",2)
GlobalLT("g-batana","GLOBAL",2)
GlobalLT("g-bathar","GLOBAL",2)
GlobalLT("g-batxao","GLOBAL",2)~THEN REPLY @164 /*Look at your allies. */ DO~SetGlobal("G-hearspeech","GLOBAL",2)~ + g-bbD190.cont2
CHAIN IF~~THEN g-bbD190 g-bbD190.cont2
@167 /*The Ysgardians seem troubled, but their loyalty to their hero-jarl, under whose command they have battled across the planes, runs deep. It runs deeper than their concern for actors from this dirty city so far from their home. They will stand with Ulfbrand and you, but their morale will likely be crippled by what they have heard here. */
==g-bbd156 @168 /*"MEN! We know what the Norns mean. We know the certainty of their words, and we know that Duke Darkwood is a chosen warrior for our own great Heimdall. Let there be no doubt in our hearts. The enemy may be pathetic, but they are enemies still. LET'S CHARGE!" */
==g-bbd190 @169 /*The Doomguard seem to pounce down on the unsuspecting Fated, while Ulfbrand leaps onto the stage toward the actors in a single bound. */
END
IF~~THEN REPLY @171 /*Climb onto the stage and go after him. */ DO~SetGlobal("g-raidberserk","GLOBAL",1) ActionOverride("g-bb201",JumpToPoint([860.712]) SetGlobal("g-raidallegiances","GLOBAL",1) ActionOverride("g-bb154",PlaySequence(ANIM_MISC1)) TeleportParty("arg-b2",[830.742],0) ActionOverride("g-bb150",JumpToPoint([860.712]) EndCutSceneMode()~ EXIT
CHAIN IF~~THEN g-bbD190 g-bbD190.cont2alt
@173 /*The Ysgardians seem troubled, but their loyalty to their hero-jarl, under whose command they have battled across the planes, runs deep. It runs deeper than their concern for actors from this dirty city so far from their home. They will stand with Ulfbrand and you, but their morale will likely be crippled by what they have heard here. */
==g-bbd156 @174 /*"MEN! We know what the Norns mean. We know the certainty of their words, and we know that Duke Darkwood is a chosen warrior for our own great Heimdall. Let there be no doubt in our hearts. The enemy may be pathetic, but they are enemies still. LET'S CHARGE!" */
==g-bbd190 IF~!GlobalLT("g-batdus","GLOBAL",2)~THEN @175 /*The grim mages from the Mortuary do not seem to follow the charge. In fact, they look as if they are about to cast spells at you. Their alliance with the Doomguard has taken priority over their allegiance to you. */
==g-bbd190 IF~!GlobalLT("g-batgod","GLOBAL",2)~THEN @176 /*The Godsmen do not move a muscle. As citizens of Sigil, they must feel as though they have been dragged into a conflict that has nothing to do with them. In fact, it may actually be aimed at them. They look as if they might switch sides at any moment. */
==g-bbd190 IF~Global("g-batsen","GLOBAL",2)~THEN @177 /*The Sensates barely wanted to be here even before being told to murder defenseless actors and performers. They are already preparing to stand against you. */
==g-bbd190 IF~Global("g-batsen","GLOBAL",3)~THEN @178 /*The Sensates barely wanted to be here even before they were told to murder defenseless actors and performers. They are already preparing to stand against you. The gentleman with the mustache you saw earlier is giving you a deeply offended glare. */
==g-bbd190 IF~!GlobalLT("g-batana","GLOBAL",2)~THEN @179 /*The Anarchists reveal themselves from their concealment among the seats of the theater. The sense of betrayal on their faces is palpable. */
==g-bbd190 IF~!GlobalLT("g-bathar","GLOBAL",2)~THEN @180 /*The officers of the Harmonium have listened to Haer'Dalis' case and have finally deemed this raid unlawful. They whisper among themselves, and you only catch snippets of their conversation, but it is clear that they are raising their weapons against the Fated and you. */
==g-bbd190 IF~!GlobalLT("g-batxao","GLOBAL",2)~THEN @181 /*The single Xaositect is crying in the corner, his little heart moved by the expressive performance on the stage. When the battle is about to commence, he cries out in pain, screaming for justice and starts to demolish the theater seats. */
END
IF~~THEN REPLY @183 /*"Uh-oh." */ DO~SetGlobal("g-raidallegiances","GLOBAL",2) EndCutSceneMode()~ EXIT