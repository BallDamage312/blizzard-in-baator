BEGIN g-bbDIGY
CHAIN IF~Global("g-fakeigydialogue","GLOBAL",0)~THEN g-bbDIGY g-bbDIGY.q
@0 /*Flames curl around Ignus' throat and a tongue of flame streams from behind his blackened teeth. *"What do you WISH of Ignusss...?"* */
END
IF~~THEN REPLY @2 /*"I want to know how you're doing, Ignus." */ DO~~ + g-bbDIGY.q1
IF~~THEN REPLY @3 /*"Wait for me here. I'll come back for you." */ DO~~ + g-bbDIGY.dropoff
IF~~THEN REPLY @4 /*"Nothing. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.dropoff
@6 /**"NOOO...!"* Ignus cringes. *"Noot HERE..."* */
EXIT
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.q1
@9 /**"COOOOLD..."* */
END
IF~~THEN REPLY @11 /*"I wish to speak about other matters." */ DO~~ + g-bbDIGY.q
IF~~THEN REPLY @12 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~Global("g-fakeigydialogue","GLOBAL",1)~THEN g-bbDIGY g-bbDIGY.D001start
@16 /*You have grown accustomed to the fact that your companions follow you faithfully, especially Ignus. Once you had spoken to his flame-bathed heart, he rarely ever left your side. Yet this time you realize that this is not the case at all. You turn around and see that the burning man has fallen behind. He is staring at a beam from a nearby wooden structure, dampened and gnawed on by the teeth of time. He seems lost deep in thought. */
END
IF~~THEN REPLY @18 /*"Is something troubling you, Ignus?" */ DO~~ + g-bbDIGY.D001A1
IF~~THEN REPLY @19 /*"Don't stop without a reason. We don't have time for nonsense." */ DO~~ + g-bbDIGY.D001B1
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.D001A1
@21 /*The burning mage turns toward you and fixes upon you with the gaze of his smoldering eyes. *"MASSSSTER... Yes, yesss... I muuusssst knowww... Why is it that you WANTTT to gooo to Cania? It is a bad plaaace, a plaaace of ice. Withouuut flamesss... Withouuut... fiiire..."* */
END
IF~~THEN REPLY @23 /*"The fiends said that there's someone who knows my past. I can't just leave it like this." */ DO~~ + g-bbDIGY.D001C1
IF~~THEN REPLY @24 /*"Your task is to carry out my orders without question. Am I not your Master?" */ DO~~ + g-bbDIGY.D001D1
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.D001B1
@26 /*The burning mage turns toward you and fixes upon you with the gaze of his smoldering eyes. *"A reason... There issss a reason... MASSSSTER... Why is it that you WANTTT to gooo to Cania? It is a bad plaaace, a plaaace of ice. Withouuut flamesss... Withouuut fiiire..."* */
END
IF~~THEN REPLY @28 /*"The fiends said that there's someone who knows my past. I can't just leave it like this." */ DO~~ + g-bbDIGY.D001C1
IF~~THEN REPLY @29 /*"Your task is to carry out my orders without question. Am I not your Master?" */ DO~~ + g-bbDIGY.D001D1
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.D001C1
@31 /*Ignus stares at you in silence. You realize that your answer did not reach him at all. Why would he care about your affairs? There is only one thing that matters to him. To reach his mind, you need key-words, as though you were trying to open a portal to one of the planes. The only question is whether you want to do that. */
END
IF~~THEN REPLY @33 /*"The snow and ice of Cania will bow before the might of your fire. You will burn the plane down to bare earth." */ DO~~ + g-bbDIGY.D001E1
IF~~THEN REPLY @34 /*"Well. I have no need for weaklings. If you are afraid, stay here. I don't care." */ DO~~ + g-bbDIGY.D001F1
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.D001D1
@36 /**"Yes, MASSSSTER..."* He hisses, as the flames dance in his mouth. *"But how am I to dooo ittt, when there is only SSSNOW and ICE all around...? Thisss is bad... This is bad for Ignussss..."* */
END
IF~~THEN REPLY @38 /*"The snow and ice of Cania will bow before the might of your fire. You will burn the plane down to bare earth." */ DO~~ + g-bbDIGY.D001E1
IF~~THEN REPLY @39 /*"Well. I have no need for weaklings. If you are afraid, stay here. I don't care." */ DO~~ + g-bbDIGY.D001F1
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.D001E1
@41 /*You see a disturbing smile slowly spread across Ignus' face. In his mind's eye he must already see a sea of flames devouring the entire icy hell of Cania. *"Yessss... Yes! I will burnnn... MASSSSTER... I will bring fiiire... Nothiiing will remainnn..."* */
=@42 /*Ignus bursts into laughter, and a cold shiver runs down your spine. [IGN052B] */
END
IF~~THEN REPLY @44 /*"Let us... go, then." */ DO~DestroySelf() SetGlobal("g-fakeigydialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDIGY g-bbDIGY.D001F1
@46 /*For a moment, silence reigns, broken only by the crackling flames, burning more fiercely than before. Finally, Ignus speaks. *"I am not afraiiid... I will follow you, MASSSSTER... Foreeever..."* */
=@47 /*Maybe it is just your imagination, but it somehow sounded ominous. */
END
IF~~THEN REPLY @49 /*"Let us... go, then." */ DO~DestroySelf() SetGlobal("g-fakeigydialogue","GLOBAL",0)~ EXIT