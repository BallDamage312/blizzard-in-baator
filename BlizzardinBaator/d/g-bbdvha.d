BEGIN g-bbDVHA
CHAIN IF~Global("g-fakevhadialogue","GLOBAL",0)~THEN g-bbDVHA g-bbDVHA.q
@0 /*Vhailor stands silent and unmoving: were it not for the flickering red lights of his eyes, he would seem but a statue. */
END
IF~~THEN REPLY @2 /*"Vhailor, I want to know how you're feeling." */ DO~~ + g-bbDVHA.q1
IF~~THEN REPLY @3 /*"What do you think we should do now?" */ DO~~ + g-bbDVHA.q2
IF~~THEN REPLY @4 /*"Wait for me here. I'll come back for you." */ DO~LeaveParty()~ EXIT
IF~~THEN REPLY @5 /*"Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDVHA g-bbDVHA.q1
@7 /**I feel nothing... but ORDER around here.* */
END
IF~~THEN REPLY @9 /*"I wish to speak about other matters." */ DO~~ + g-bbDVHA.q
IF~~THEN REPLY @10 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDVHA g-bbDVHA.q2
@12 /**As long as you are led by JUSTICE, I do not interfere with your path.* */
END
IF~~THEN REPLY @14 /*"I wish to speak about other matters." */ DO~~ + g-bbDVHA.q
IF~~THEN REPLY @15 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~Global("g-fakevhadialogue","GLOBAL",1)~THEN g-bbDVHA g-bbDVHA.d001start
@18 /*As the Mercykiller steps into the harsh light emitted by the strange machine stuck in the bank of the Ditch on your way underneath the Trestle, his bright red eyes seem to flicker in response. He stops and stands in silence for a good five seconds. */
=@19 /**I would have you hear me.* [VHA176] */
END
IF~~THEN REPLY @21 /*"What is it?" */ DO~~ + g-bbDVHA.d001A
IF~~THEN REPLY @22 /*"Not now, Vhailor." */ DO~DestroySelf() SetGlobal("g-fakevhadialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDVHA g-bbDVHA.d001A
@24 /**I remember.* He raises his heavy arm and points at the locked door of a building attached to one of the supports of the Trestle. *A cesspool of crime used to be here. A place with no JUSTICE.* */
END
IF~~THEN REPLY @26 /*"We are heading to the very depths of the Hells, to *Cania,* and you said nothing about it yet, Vhailor. Instead, you are worried about another dark alley on our path?" */ DO~~ + g-bbDVHA.d001B
IF~~THEN REPLY @27 /*"Yes, Vhailor. I'm sure. But this is not the right time." */ DO~DestroySelf() SetGlobal("g-fakevhadialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDVHA g-bbDVHA.d001B
@29 /**Cania? Why would I be worried about Cania?* Vhailor does not use a lot of emotion in his voice, but even he still manages to sound surprised. */
END
IF~~THEN REPLY @31 /*"Is Cania not a more dangerous place to visit than a seedy corner in Sigil?" */ DO~~ + g-bbDVHA.d001C
CHAIN IF~~THEN g-bbDVHA g-bbDVHA.d001C
@33 /**Baator is a place of absolute law. The Mercykillers' JUSTICE precedes infernal law but in most cases, they align either way. There are deals: for extraditions, logistic cooperation, legal representation. The devils of Cania abide by rules. The scum of Sigil are CHAOS.* */
END
IF~GlobalLT("LAW","GLOBAL",1) GlobalGT("GOOD","GLOBAL",1)~THEN REPLY @35 /*"But what if the rules are evil?" */ DO~~ + g-bbDVHA.d001D
IF~~THEN REPLY @36 /*"I see... I will keep that in mind. Let us take on that seedy alley first, though." */ DO~DestroySelf() SetGlobal("g-fakevhadialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDVHA g-bbDVHA.d001D
@38 /**Rules cannot be evil. Or good. Rules are rules.* He starts walking forward, leaving you behind. */
END
IF~~THEN REPLY @40 /*"Oh... Alright." */ DO~DestroySelf() SetGlobal("g-fakevhadialogue","GLOBAL",0)~ EXIT