BEGIN g-bbD177
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD177 g-bbD177.start1
@0 /*From a distance, you can hear a loud clang of metal striking a hard surface. As you get closer, you notice a creature that was once a fully functional modron, although little remains of its original form. The poor construct has no arms or wings, and its face, where eyes and mouth should be, resembles a broken clock full of bent springs and chipped gears. Balanced unsteadily on one remaining leg, it hops in place, repeatedly slamming its metal foot against the rusted debris beneath it. You prefer not to think about what must have happened to it. Between each hollow clang, it emits alternating mechanical sounds resembling *WURR* and *THURR*. [MODRO02] */
END
IF~~THEN REPLY @2 /*"Hello, can you hear me?" */ DO~SetGlobal("g-agravalothermodron2","GLOBAL",1)~ + g-bbD177.a1
IF~Global("G-agravalpimpek","GLOBAL",0) Global("G-agravalquest","GLOBAL",5) Global("G-agravalotherPIM2","GLOBAL",0)~THEN REPLY @3 /*"Patch?" */ DO~SetGlobal("g-agravalothermodron2","GLOBAL",1) SetGlobal("G-agravalotherPIM2","GLOBAL",1)~ + g-bbD177.b1
IF~~THEN REPLY @4 /*"Hmm, I'll be on my way." */ DO~SetGlobal("g-agravalothermodron2","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD177 g-bbD177.start2
@6 /*The modron, stripped of its limbs, continues to jump unsteadily on its last leg for reasons known only to itself. You prefer not to think about what must have happened to it. [MODRO03] */
END
IF~~THEN REPLY @8 /*"Hello, can you hear me?" */ DO~~ + g-bbD177.a1
IF~Global("G-agravalpimpek","GLOBAL",0) Global("G-agravalquest","GLOBAL",5) Global("G-agravalotherPIM2","GLOBAL",0)~THEN REPLY @9 /*"Patch?" */ DO~SetGlobal("G-agravalotherPIM2","GLOBAL",1)~ + g-bbD177.b1
IF~OR(2) Global("G-agravalotherPIM2","GLOBAL",1) GlobalGT("G-agravalquest","GLOBAL",5)~THEN REPLY @10 /*End the sorrows of the modron Wurr-thurr. Let it return to Mechanus. */ DO~AddexperienceParty(6000) kill("g-bb177") IncrementGlobal("LAW","GLOBAL",1)~ EXIT
IF~~THEN REPLY @11 /*"Hmm, I'll be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD177 g-bbD177.a1
@13 /*The modron stops mid-motion, then turns its ghostly non-face toward you, as if scrutinizing you closely. You do not know if it can see anything at all, but it does not seem interested in you. After a tense moment, the modron lets out a loud *WURR* *THURR* and dispassionately returns to its interrupted activity. You do not think there is anything you can do for it. The damage is beyond repair. [MODRO07] */
END
IF~Global("G-agravalpimpek","GLOBAL",0) Global("G-agravalquest","GLOBAL",5) Global("G-agravalotherPIM2","GLOBAL",0)~THEN REPLY @15 /*"Patch?" */ DO~SetGlobal("G-agravalotherPIM2","GLOBAL",1)~ + g-bbD177.b1
IF~~THEN REPLY @16 /*"All right, I won't bother you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD177 g-bbD177.b1
@18 /*You say its *name* a few more times, but the modron offers no reaction except for its characteristic *WURR* *THURR*. Whoever it is, it is not Patch, at least not at the moment. Whether it ever was Patch is also doubtful. The injuries look quite old, and Patch has only recently gone missing. [MODRO07] */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @19 /*"Modron? Hypothesis: impossible to determine. What constitutes the nature of a modron? Objective: understanding and proper categorization. Nordom follows." */
END
IF~~THEN REPLY @21 /*"I hope it's not you. I'll keep looking. Goodbye." */ DO~~ EXIT
IF~OR(2) Global("G-agravalotherPIM2","GLOBAL",1) GlobalGT("G-agravalquest","GLOBAL",5)~THEN REPLY @22 /*End the sorrows of the modron Wurr-thurr. Let it return to Mechanus. */ DO~AddexperienceParty(6000) kill("g-bb177") IncrementGlobal("LAW","GLOBAL",1)~ EXIT