BEGIN g-bbD098
CHAIN IF~GlobalLT("G-ishtarquest","GLOBAL",3)~THEN g-bbD098 g-bbD098.start
@0 /*A cluster of thick and sharp razorvine covers this patch of rock in the face of the cliff in front of you, creating a solid cage around something. Beneath it, you can barely make out a hint of a carved sculpture or relief, but it is impossible to discern what it depicts. */
END
IF~Global("G-ishtarquest","GLOBAL",2) !Class(Protagonist,Fighter) !Class(Protagonist,Mage) !Class(Protagonist,Thief)~THEN REPLY @2 /*Try removing the razorvine. */ DO~~ + g-bbD098.agitate
IF~Class(Protagonist,Mage) Global("G-ishtarquest","GLOBAL",2)~THEN REPLY @3 /*Cast simple spells to get rid of the razorvine. */ DO~~ + g-bbD098.agitate
IF~Class(Protagonist,Fighter) Global("G-ishtarquest","GLOBAL",2)~THEN REPLY @4 /*Hack the razorvine away. */ DO~~ + g-bbD098.agitate
IF~Class(Protagonist,Thief) Global("G-ishtarquest","GLOBAL",2)~THEN REPLY @5 /*Look for critical points of growth and cut them with precise slashes. */ DO~~ + g-bbD098.agitate
IF~~THEN REPLY @6 /*Leave the stone alone. */ DO~~ EXIT
CHAIN IF~GlobalGT("G-ishtarquest","GLOBAL",2)~THEN g-bbD098 g-bbD098.start2
@8 /*Now that it is clear, the rock face reveals a large, intricately carved relief of a winged, naked woman holding two rings in her raised arms and surrounded by animals. There is something unspeakable about it, evoking a sense of loss for a world long gone. In the corner, you can see an eight-pointed star. */
END
IF~~THEN REPLY @10 /*Leave the stone alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD098 g-bbD098.agitate
@12 /*As the razorvine starts to fall away, you realize that some of it is moving as if it were more than just a mindless plant. Before you can get away, a thorny hand shoots out of the vine and slashes at you. */
==g-bbd114 @13 /*"Watch out! Oh my!" */
END
IF~~THEN REPLY @15 /*"What the..." */ DO~SetGlobal("G-ishtarquest","GLOBAL",3) StartCutScene("g-bbisht")~ SOLVED_JOURNAL @20138 EXIT