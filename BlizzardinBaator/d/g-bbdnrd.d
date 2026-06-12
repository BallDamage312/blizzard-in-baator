BEGIN g-bbDNRD
CHAIN IF~Global("g-fakenrddialogue","GLOBAL",0)~THEN g-bbDNRD g-bbDNRD.q
@0 /*Nordom is staring at his crossbows intently. They are making a variety of clicking noises, first one, then the other, as if conversing. */
END
IF~~THEN REPLY @2 /*"How are you?" */ DO~~ + g-bbDNRD.q1
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbDNRD g-bbDNRD.q1
@5 /*"Introspective cycle commencing." Nordom *kliks* his eyes closed and begins to *hum.* */
=@6 /*"Introspective Evaluation: Perceptions have become (1) smaller and (B) louder. Wings have been replaced with arms: reason unknown. Suspicion/hypothesis: not liked wings? Speculation. Nordom was once -ONE- but is now smaller, louder -ONE! - Change has resulted in information-processing difficulties." */
END
IF~~THEN REPLY @8 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~Global("g-fakenrddialogue","GLOBAL",1)~THEN g-bbDNRD g-bbDNRD.q
@11 /*Suddenly you hear the larger modron that accompanies you. "Nordom wishes to speak." [NOR169] */
END
IF~~THEN REPLY @13 /*"Of course, Nordom. You don't have to ask my permission. Is everything alright?" */ DO~~ + g-bbDNRD.A1
IF~~THEN REPLY @14 /*"I consent. What's the matter?" */ DO~~ + g-bbDNRD.A1
IF~~THEN REPLY @15 /*"Not now, Nordom. Don't bother me now." */ DO~~ + g-bbDNRD.A0
IF~~THEN REPLY @16 /*Keep going. */ DO~DestroySelf() SetGlobal("g-fakenrddialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDNRD g-bbDNRD.A0
@18 /*"Understood. Nordom will not bother you now." [NOR321B] */
END
IF~~THEN REPLY @20 /*Keep going. */ DO~DestroySelf() SetGlobal("g-fakenrddialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDNRD g-bbDNRD.A1
@22 /*"Processing." Nordom changes his lens and begins to recite the definition. "Monodrone. Single-purpose modrons native to Mechanus, where they make up the majority of the population, approximately 300 million individuals. They are the lowest in the modron hierarchy. Alignment: always Lawful Neutral (excluding rogue modrons who have experienced an !ERROR!). Their primary weapons are spears, double-edged halberds, or crossbows. They have Truesight and can see through illusions. Their sense of duty is unwavering, and it is impossible to convince them to abandon the orders of a superior duodrone. They are resistant to mind magic, fear, negative and positive energy. They can also resist acid, cold, and fire. Their memory allows them to store 48 words." [NOR067] */
END
IF~~THEN REPLY @24 /*"Ah, I assume you are telling me about this creature on the raft?" */ DO~~ + g-bbDNRD.A2
IF~~THEN REPLY @25 /*Keep going. */ DO~DestroySelf() SetGlobal("g-fakenrddialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDNRD g-bbDNRD.A2
@27 /*"Not creature. Modron. Chances of being used for portal-related service: high. Reason for such service: UNKNOWN." He turns to interface with the monodrone. */
=@28 /*"Monodrone. Are you experiencing distress?" */
==g-bbd237 @29 /*The little construct twirls around its axis once and responds. "Warning! Demi-Mechanus-demi-Limbo *other* detected. Happy waste. Infinite clockwork blessed!" */
==g-bbdnrd @30 /*"The monodrone's vocabulary is programmed with names of places, limiting basic communication programming. Detecting word origin." [MODRO02] */
==g-bbdnrd @31 /*"*Warning* and *detected* seem native to the boat-related activities.
*Demi* and *other* possibly used to describe general cosmology.
*Mechanus* and *Limbo* are direct short identification names of planes.
*Happy* sourced from Happy Hunting Grounds of Beastlands.
*Waste* sourced from The Grey Waste.
*Infinite* sourced from either Infinite Layers of Abyss (30%) /OR Infinite Battlefield of Acheron (50%) /OR The Infinite Staircase (20%).
*Clockwork* sourced from Clockwork Nirvana of Mechanus.
*Blessed* sourced from The Blessed Fields of Elysium. */
==g-bbd237 @32 /*"Granted! Plane review granted." */
==g-bbdnrd @33 /*"Monodrone. Are you rogue, like Nordom?" */
==g-bbd237 @34 /*The monodrone whirrs for a moment and then answers with: "No." [MODRO01] */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @35 /*"Well, that sounded pretty normal to me, it did." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @36 /*Grace giggles. "Nordom, I think you have a solid rival in cuteness." */
==g-bbd217 @37 /*"It's all nice, but can you stop pestering my navigator? Are you here to buy tickets?" */
==g-bbdnrd @38 /*"The monodrone's vocabulary is confusing." */
END
IF~~THEN REPLY @40 /*"So is this modron a specialist in the field of the planes. What can you tell me of Cania, monodrone?" */ DO~~ + g-bbDNRD.A3
IF~~THEN REPLY @41 /*"I'm sorry sir, we'll be with you in a moment." Turn to Nordom. "Come on, Nordom. You two can catch up on the boat." */ DO~DestroySelf() SetGlobal("g-fakenrddialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDNRD g-bbDNRD.A3
@43 /*"If you need information about Cania. You could ask Nor-" */
==g-bbd237 @44 /*"Outer Plane: Nine Hells of Baator. WARNING! Infinite *no*." [MODRO02] */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @45 /*"Again, *pretty* normal. Reasonable enough for me." */
==g-bbdnrd @46 /*"Frozen Wastes of Cania. Layer no. 8/9 in Outer Plane: Nine Hells of Baator. Size: Infinite. Type: Cold (Extremely). Composition: Solid stone, bone and ice mountains, titanic, unnaturally fast-moving glaciers. Travel advice: Avoid at all cost. Chance of termination: High."     */
END
IF~~THEN REPLY @48 /*"In other words, would traveling to Cania be ill advised, Nordom?" */ DO~~ + g-bbDNRD.A4
IF~~THEN REPLY @49 /*"That is... somehow not reassuring. Come on, Nordom. We have a boat to catch." */ DO~DestroySelf() SetGlobal("g-fakenrddialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDNRD g-bbDNRD.A4
@51 /*"I have no strong opinion one way or another. It is dangerous, but you, too, are dangerous. *We* are dangerous." */
END
IF~~THEN REPLY @53 /*"Yes. Let's go with that. We have a boat to catch." */ DO~DestroySelf() SetGlobal("g-fakenrddialogue","GLOBAL",0)~ EXIT