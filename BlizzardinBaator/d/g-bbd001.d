BEGIN g-bbD001
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD001 g-bbD001.start
@0 /*When you appear by the obelisk in front of the Mortuary, a strange-looking man rushes toward you. You cannot quite put your finger on what is wrong with him. He seems both annoyed and terrified, his face shifting between the two states, as if two forces are fighting for control. "FINALLY, you're here! I've been standing here for Hells know how long. I was... sure I was going to perish..." */
=@1 /*He takes another look at you, as if to make sure he has the right person. He sniffs and continues, "You are the amnesia ridden sod with no name, friend of Aethelgrin and Tegar'in? I have a message for you." He pats himself down, shivering with fear, searching for a possible note. */
END
IF~~THEN REPLY @3 /*"Is that so? I'm listening." */ DO~~ + g-bbD001.yes.message
IF~Global("G-BBMainBegin_MessengerOK","GLOBAL",0)~THEN REPLY @4 /*"Are you... all right?" */ DO~SetGlobal("G-BBMainBegin_MessengerOK","GLOBAL",1)~ + g-bbD001.ok
IF~~THEN REPLY @5 /*"I don't have time for this. I have to get to a certain place." */ DO~~ + g-bbD001.reconsider
CHAIN IF~~THEN g-bbD001 g-bbD001.yes.message
@7 /*"Here's the piking message." He takes out a crumpled note, clears his throat, shrieks in terror for a quarter of a second, and begins to recite. 

"Nameless One, I have heard that you are searching for answers to many troubling questions. I may be able to help you uncover parts of your distant past. I also have a task for you that, along with the information you seek, may prove to be very well paid. Meet me at the back of the Smoldering Corpse Bar.

- Tergush'tekhn"

You notice that the paper was blank as he puts it away. */
END
IF~~THEN REPLY @9 /*"Interesting." */ DO~SetGlobal("G-BBMainBegin_Messenger","GLOBAL",1) SetGlobal("G-BBMainDeny","GLOBAL",0) SetGlobal("G-BBMain","GLOBAL",1) SetGlobal("G-BBModBegin-pln1","GLOBAL",1) SetGlobal("G-BBMainBeginDenied","GLOBAL",2) SetGlobal("G-BBMainAccepted","GLOBAL",1) EscapeArea() ~ SOLVED_JOURNAL @20004 EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD001 g-bbD001.return
@11 /*"You... came back... for the message, after all, YA PRICK!" */
END
IF~~THEN REPLY @13 /*"Yes, I'm ready. I'm listening." */ DO~~ + g-bbD001.yes.message
IF~~THEN REPLY @14 /*"Who is this message from? The fiends from the Smoldering Corpse Bar?" */ DO~~ + g-bbD001.they
IF~~THEN REPLY @15 /*"No, I just wanted to annoy you again. Good day." */ DO~SetGlobal("G-BBMainDeny","GLOBAL",1)~ SOLVED_JOURNAL @20005 EXIT
CHAIN IF~~THEN g-bbD001 g-bbD001.reconsider
@17 /*"I think that's what the message is about. It's what they told me, and you WOULD KNOW if you just listened for a gods damned SECOND... Please, just listen to it... You're free to ignore it, but don't make *me* fail my task... they'll punish me..." */
END
IF~~THEN REPLY @19 /*"Fine. I'm listening." */ DO~~ + g-bbD001.yes.message
IF~~THEN REPLY @20 /*"Who are they? The fiends from the Smoldering Corpse?" */ DO~~ + g-bbD001.they
IF~Global("G-BBMainBegin_MessengerOK","GLOBAL",0)~THEN REPLY @21 /*"Are you... all right?" */ DO~SetGlobal("G-BBMainBegin_MessengerOK","GLOBAL",1)~ + g-bbD001.ok
IF~~THEN REPLY @22 /*"No, I don't think so. Good day." */ DO~SetGlobal("G-BBMainDeny","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",2)~ SOLVED_JOURNAL @20005 EXIT
CHAIN IF~~THEN g-bbD001 g-bbD001.they
@24 /*"Yes..." The messenger pauses, his expression shifting from annoyance to terror. "But they have another with them, in these recent cycles." You are not sure if the shift is connected to what he is saying, but for the first time it feels meaningful. Or it is simply a coincidence. */
END
IF~~THEN REPLY @26 /*"Fine. I'm listening." */ DO~~ + g-bbD001.yes.message
IF~Global("G-BBMainBegin_MessengerOK","GLOBAL",0)~THEN REPLY @27 /*"Are you... all right?" */ DO~SetGlobal("G-BBMainBegin_MessengerOK","GLOBAL",1)~ + g-bbD001.ok
IF~~THEN REPLY @28 /*"No, I don't think so, good day." */ DO~SetGlobal("G-BBMainDeny","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",2)~ JOURNAL @20005 EXIT
CHAIN IF~~THEN g-bbD001 g-bbD001.ok
@30 /*"BY THE HELLS, NO. I'M NOT ALL RIGHT... I am... perfectly... fine..." Tears run down the messenger's face. */
END
IF~~THEN REPLY @32 /*"Okay, I will hear your message. Just calm down." */ DO~~ + g-bbD001.yes.message
IF~~THEN REPLY @33 /*"Who is this message from? The fiends from the Smoldering Corpse?" */ DO~~ + g-bbD001.they
IF~~THEN REPLY @34 /*"Right... I should go. Goodbye." */ DO~SetGlobal("G-BBMainDeny","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",2)~ JOURNAL @20005 EXIT