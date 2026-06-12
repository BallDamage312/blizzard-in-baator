BEGIN g-bbD063
CHAIN IF~True()~THEN g-bbD063 g-bbD063.start
@0 /*You hold in your hands a heavy, thick, leather-bound tome. Its corners are bolstered by metal guards covered in delicate engravings, and the spine is sewn with sturdy leather straps. You can feel the weight of the stories hidden within - tales that would terrify the weak, but lure the curious with their secrets. */
END
IF~~THEN REPLY @2 /*Open the book. */ DO~~ + g-bbD063.open
IF~~THEN REPLY @3 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.open
@5 /*As you open the tome on its first page, you are struck by the scent of old parchment and stale dust. You see carefully crafted, swirling letters forming the title: The Planewalker's Grimoire. Beneath it, written in the same decorative hand, are the words: "A gathering of tales, memories and whispers that defied the passage of time".  */
END
IF~~THEN REPLY @7 /*Examine the table of contents. */ DO~~ + g-bbD063.contents
IF~~THEN REPLY @8 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.contents
@10 /*The contents reveal dozens, perhaps hundreds, of chapters. It is as though the grimoire whispers with a chorus of voices, each competing for your attention. Your eyes settle on those passages that scream to be heard above the rest. */
END
IF~~THEN REPLY @12 /*Read "The Nature of Belief." */ DO~~ + g-bbD063.top1
IF~~THEN REPLY @13 /*Read "The Sigilian Cant." */ DO~~ + g-bbD063.top2
IF~~THEN REPLY @14 /*Read "Voices of the People." */ DO~~ + g-bbD063.top3
IF~~THEN REPLY @15 /*Read "The Blood War." */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbD063.top4
IF~~THEN REPLY @16 /*Read "The Shades of Torment." */ DO~~ + g-bbD063.top5
IF~~THEN REPLY @17 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.top1
@19 /*This passage speaks of the nature of belief - of how it is the most potent force in the multiverse, capable of shaping existence and bending reality. Many believe that deities are merely embodiments of faith, sustained by the collective will of the people. Sunder the belief in a worshipper's soul, poison it with doubt, and you bleed the strength of the god they serve. */
=@20 /*Belief holds the cities in the Outer Planes in place and molds the shifting chaos of Limbo. It creates gods and unmakes them. It is the anchor of existence for many who dwell within the planes. Even among modrons, faith in hierarchy is absolute. When a unit falters and doubts the logic of the law, it is viewed as a mere 'glitch' in the grand design - a 'rogue' cast out from the fold. */
END
IF~~THEN REPLY @22 /*Examine the table of contents again. */ DO~~ + g-bbD063.contents
IF~~THEN REPLY @23 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.top2
@25 /*This entry provides a more detailed description of the sigilian cant. Your attention is drawn to certain expressions that you know and have heard many times.

Bub - cheap wine or beer, barely fit for consumption.
Give the rope - a colloquial term for the fate of convicted criminals who failed to evade justice.
Go to the Mazes - another way of saying 'get lost'; literally: a wish for a wretch to suffer a cruel fate in the mazes of Lady of Pain.
Fiendling - a colloquial term for a tiefling, that is, a creature with a drop of fiend blood in its veins.
Cager - a local term for a resident of Sigil, a city commonly known as the Cage.
Blood - a sage or expert in their field; calling someone a blood is a sign of great respect.
Planewalker - a cutter traveling through the planes in search of adventure, fame, or hard-earned coin; this term expresses recognition of such a person's knowledge and experience.
Petitioner - a mortal who, after death, has been reborn on a plane corresponding to their character or beliefs, having lost all memories of their previous life.
Anti-peak - the sigilian equivalent of midnight in the daily cycle
Peak - the sigilian equivalent of noon; the moment when the city is filled with the brightest light.
Scragged - a local term for a person who has been arrested or apprehended, often by a Harmonium patrol. */
END
IF~~THEN REPLY @27 /*Examine the table of contents again. */ DO~~ + g-bbD063.contents
IF~~THEN REPLY @28 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.top3
@30 /*This entry provides a more detailed description of the phrases and expressions used by the githzerai race. You recognize some words you have heard before.

"One land cannot sit beneath two skies" - this is a key reference to the split of the gith race into githyanki and githzerai, symbolizing the impossibility of two conflicting truths coexisting.
"The Eye of Vilquar" - using this phrase as an accusation of treason aligns with the beliefs of the People, who condemn pursuing reward at the expense of freedom.
"The Drowning Ach'ali" - meaning "a question that makes no sense to answer" This is usually a way of asking someone to ask a more specific question.
"To write the book of the Anarchs" - to display exceptional wisdom. The Anarchs are masters of shaping chaos, endowed with powerful mental discipline. */
END
IF~~THEN REPLY @32 /*Examine the table of contents again. */ DO~~ + g-bbD063.contents
IF~~THEN REPLY @33 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.top4
@35 /*This entry concerns the eternal, bloody slaughter between the baatezu and the tanar'ri. This never-ending carnage tears through the Lower Planes, though it is not always visible to the naked eye. It is a struggle between the impulsive, chaotic demons and the devils - the more disciplined face of evil. Lurking in the very shadows are the yugoloths - vile sellswords who trade their loyalty to the highest bidder. */
=@36 /*Despite the horror, this war is nothing short of a mercy to the entire multiverse. Engaged in their ancient conflict, demons and devils wither each other away, clashing upon blood-soaked lands. If one side were to ever tip the scales of war in their favour, they would seize the control of the entire Lower Planes. That, in turn, might shatter the balance of the multiverse as we know it. */
END
IF~~THEN REPLY @38 /*Examine the table of contents again. */ DO~~ + g-bbD063.contents
IF~~THEN REPLY @39 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.top5
@41 /*As you turn to the 'Shades of Torment', the parchment whispers of souls that once followed in the wake of a silver-tongued leader. Though their strides have faded and their names have dissolved into the mists of history, their doom is woven into the very ink. */
END
IF~~THEN REPLY @43 /*Read "The Faithful One". */ DO~SetGlobal("g-grimoirebottom1","GLOBAL",1)~ + g-bbD063.bottom1
IF~~THEN REPLY @44 /*Read "The Sightless". */ DO~SetGlobal("g-grimoirebottom2","GLOBAL",1)~ + g-bbD063.bottom2
IF~~THEN REPLY @45 /*Read "The Prisoner". */ DO~SetGlobal("g-grimoirebottom3","GLOBAL",1)~ + g-bbD063.bottom3
IF~~THEN REPLY @46 /*Read "The Mocker". */ DO~SetGlobal("g-grimoirebottom4","GLOBAL",1)~ + g-bbD063.bottom4
IF~~THEN REPLY @47 /*Examine the table of contents again. */ DO~~ + g-bbD063.contents
IF~~THEN REPLY @48 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.bottom1
@50 /*The words at the top of the passage read: "Flee your fate if you must, but you shall always carry its weight." The passage unfolds a tale of platonic devotion, beautiful and bitter. Trapped by the silver tongue of a man whose hunger consumed all who loved him, she threw away her life so he could reach his journey's end. Though her heart beat its last, her tormented soul kept whispering from the shadows, waiting for the day her beloved would confront his true desire. */
=@51 /*An abrupt sting pierces your shoulder, burning right through the skin of your tattoo. */
END
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @53 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom1","GLOBAL",1)
Global("g-grimoirebottom2","GLOBAL",1)
Global("g-grimoirebottom3","GLOBAL",1)
Global("g-grimoirebottom4","GLOBAL",1)
Global("g-grimoirebottom5","GLOBAL",0)~THEN REPLY @54 /*Examine the table of contents again. */ DO~SetGlobal("g-grimoirebottom5","GLOBAL",1)~ + g-bbD063.override
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @55 /*Lay the tome aside. */ DO~~ EXIT
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @56 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @57 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.bottom2
@59 /*"The truth lay in wait within the dark, concealed from those who relied solely on the light". This entry tells the tale of a man who spent his entire life behind a veil of shadow. Where others perceived shapes, lights, and silhouettes, he knew only of silence, the wind and the trembling of the earth. In time, he mastered the art of sensing the coming storm, quenching the dangers before they could ever reach him. */
=@60 /*The entry appears incomplete, though it seems to be due to the ink fading across the parchment. You can only make out the final sentence of the chapter: "He who summons the shadows harbors no light of his own." */
END
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @62 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom1","GLOBAL",1)
Global("g-grimoirebottom2","GLOBAL",1)
Global("g-grimoirebottom3","GLOBAL",1)
Global("g-grimoirebottom4","GLOBAL",1)
Global("g-grimoirebottom5","GLOBAL",0)~THEN REPLY @63 /*Examine the table of contents again. */ DO~SetGlobal("g-grimoirebottom5","GLOBAL",1)~ + g-bbD063.override
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @64 /*Lay the tome aside. */ DO~~ EXIT
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @65 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @66 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.bottom3
@68 /*"A fractured mind is not easily made whole. Thoughts become a formidable weapon when the mind is unified - when every image within works in harmony. Rob a being of its purpose, and you tear it apart from within; snap its will, and thought becomes a slave."  */
=@69 /*These lines chronicle the slow undoing, the ease with which a will can be entwined and a mind subjugated by a pledge. This is the root of the blight: hands that once birthed wonders, now forge things foreign to their spirit. A silver-tongued deceiver lurks behind this change. He breaks no bones, nor does he cast iron chains. A given word is enough for him. */
=@70 /*The entry concludes: "The promise of freedom is enough for a tethered will to accept its own bonds." */
END
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @72 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom1","GLOBAL",1)
Global("g-grimoirebottom2","GLOBAL",1)
Global("g-grimoirebottom3","GLOBAL",1)
Global("g-grimoirebottom4","GLOBAL",1)
Global("g-grimoirebottom5","GLOBAL",0)~THEN REPLY @73 /*Examine the table of contents again. */ DO~SetGlobal("g-grimoirebottom5","GLOBAL",1)~ + g-bbD063.override
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @74 /*Lay the tome aside. */ DO~~ EXIT
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @75 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @76 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.bottom4
@78 /*"When everyone leaves, only silence remains... and just those few poor jokes I tell to the night." */
=@79 /*This entry concerns a man who was freed from one set of shackles only to willingly accept another. It recounts the story of a captive whose devotion to his savior grows into a fresh prison, seamless and inescapable. It stands as a grim lesson: he who is torn from slavery should not forge new chains from his own gratitude or fear. To swap one master for another is not to be saved, it is merely to be repossessed.  */
END
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @81 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom1","GLOBAL",1)
Global("g-grimoirebottom2","GLOBAL",1)
Global("g-grimoirebottom3","GLOBAL",1)
Global("g-grimoirebottom4","GLOBAL",1)
Global("g-grimoirebottom5","GLOBAL",0)~THEN REPLY @82 /*Examine the table of contents again. */ DO~SetGlobal("g-grimoirebottom5","GLOBAL",1)~ + g-bbD063.override
IF~OR(4) Global("g-grimoirebottom1","GLOBAL",0)
Global("g-grimoirebottom2","GLOBAL",0)
Global("g-grimoirebottom3","GLOBAL",0)
Global("g-grimoirebottom4","GLOBAL",0)~THEN REPLY @83 /*Lay the tome aside. */ DO~~ EXIT
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @84 /*Examine "Shades of Torment" again. */ DO~~ + g-bbD063.top5
IF~Global("g-grimoirebottom5","GLOBAL",1)~THEN REPLY @85 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.override
@87 /*Gazing once more at the contents, a louder whisper beckons. You find the page inscribed with the word: "Death". Despite having walked through countless dangers, and stared down enemies of immense power, the simple act of looking upon these words makes your blood run cold. */
END
IF~~THEN REPLY @89 /*Read on. */ DO~AddexperienceParty(100000)~ + g-bbD063.override2
IF~~THEN REPLY @90 /*Lay the tome aside. */ DO~~ + g-bbD063.loss
CHAIN IF~~THEN g-bbD063 g-bbD063.override2
@92 /*You dive deeper into the next passage, this time describing a man without conscience - a weaver of words, a diplomat, a grand schemer; a man who, in a single lifetime, grasped more than many could fathom in centuries. */
=@93 /*This man renounced death, yet became its most faithful servant, bringing suffering and dread upon the multiverse. Armed with unyielding charisma, and talent for swaying others, he gathered loyal companions and bound them with false loyalty, and the phantom of hope. */
=@94 /*He used them as mere tools. To satisfy his deepest hungers, he paved his road with corpses. If evil were to take human form, it would wear his face. He forged his life into a weapon of desolation, crushing everything, that stood in his way, and betraying everyone, who sacrificed - everyone who bled for his sake.   */
=@95 /*The passage halts, leaving only one final plea: "Don't... let it end like this" */
END
IF~~THEN REPLY @97 /*Lay the tome aside. */ DO~~ + g-bbD063.override3
CHAIN IF~~THEN g-bbD063 g-bbD063.override3
@99 /*When you attempt to seal the grimoire, the volume stands firm against your intent, fighting your every effort. From its depths, a hiss exhales from the binding, unleashing a spiral of ash. It gathers upon you, weaving a dense mantle that holds you tight in a cold embrace. */
=@100 /*Voices then begin to stir - a chorus of the low and the high: snarls of fiends, celestial hymns, raw battle cries. You sense the book's desperate intent to be heard.  */
=@101 /*Amidst the storm of sounds, one voice echoes through: 'Man of a Thousand Deaths, mark our words: your tale shall never be forgotten. Your very existence will be carried by our whispers into the depths of remembrance. */
=@102 /*At once, the ash that bound you scatters into the air. Your hands, no longer shackled by the dust, force the book to its rest. */
END
IF~~THEN REPLY @104 /*Lay the tome aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD063 g-bbD063.loss
@106 /*You have decided to lay the tome aside. The whisper you heard a moment ago has gone silent. You might have just irreversibly lost the chance to hear its final story. */
EXIT