BEGIN g-bbD006
CHAIN IF~GlobalGT("g-BBmain","GLOBAL",6) Global("g-ProdCania","GLOBAL",0) !CheckSpellState(Protagonist,"G-TNO_INTO_GLABREZU") ~THEN g-bbD006 g-bbD006.general
@0 /*The imp waits patiently in your bag. "Why do yous call Prod? Don't yous have somethings to do?" [g-00610] */
END
IF~~THEN REPLY @2 /*"I have some questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @3 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~Global("g-ProdCania","GLOBAL",1)~THEN g-bbD006 g-bbD006.caniaD1
@5 /*"Oh yes, down there, on the plateau... That's Mephistar." */
==g-bbd006 IF~!InParty("Grace") !InParty("Morte") !InParty("Ignus")~THEN @6 /*"Prod would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~InParty("Grace") !InParty("Morte") !InParty("Ignus")~THEN @7 /*"Prod and the succubus would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~!InParty("Grace") InParty("Morte") !InParty("Ignus")~THEN @8 /*"Prod and the skull would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~!InParty("Grace") !InParty("Morte") InParty("Ignus")~THEN @9 /*"Prod and Ignus would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~InParty("Grace") InParty("Morte") !InParty("Ignus")~THEN @10 /*"Prod, Morte and the succubus would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~InParty("Grace") !InParty("Morte") InParty("Ignus")~THEN @11 /*"Prod, Ignus and the succubus would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~!InParty("Grace") InParty("Morte") InParty("Ignus")~THEN @12 /*"Prod, Ignus and the skull would have flown straight for it, but yous only have legs, so we have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes." */
==g-bbd006 IF~InParty("Grace") InParty("Morte") InParty("Ignus")~THEN @13 /*"We all could have flown straight for it, but yous are useless with your puny legs, so we *ALL* have to walk the long way round. Right through there, on top of the ridge, to the left, down this sheer cliff and through these spikes. Eh... Maybe the angry abishai boys could've picked someone better suited for the terrain..." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @14 /*"Ouch, chief." */
END
IF~OR(3) !InParty("Grace") !InParty("Morte") !InParty("Ignus")~THEN REPLY @16 /*"All right." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) ActionOverride("g-bb006",DestroySelf())~ EXIT
IF~InParty("Grace") InParty("Morte") InParty("Ignus")~THEN REPLY @17 /*"Hey! I'm not completely useless." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) ActionOverride("g-bb006",DestroySelf())~ EXIT
CHAIN IF~Global("g-ProdCania","GLOBAL",2)~THEN g-bbD006 g-bbD006.caniaD2
@19 /*"Hmm. We can't get down here. We need to find another way." */
END
IF~~THEN REPLY @21 /*"All right." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) DestroySelf()~ EXIT
CHAIN IF~Global("g-ProdCania","GLOBAL",6)~THEN g-bbD006 g-bbD006.portcut
@23 /*You feel your inventory shuffle, and your fellow future companion into the Hells peeks out. "Hey, the portal only allowses four in at a time, is Prod right?" */
=@24 /*"Prod shouldn't count to that number, as a true baatezu..." He lowers his voice to a murmur. "...regardless of what the angry boys keep telling Prod." He coughs and turns back to you. "So yous can still take three folk, other than yourself, with you. This here ware-shack may be a good place to leave any excess... friends." */
==g-bbd006 IF~NumInPartyLT(2)~THEN @25 /*The imp looks around. "But... it seems that it's just Prod and yous, so we're good to go." */
==g-bbd006 IF~NumInParty(2) InParty("Morte")~THEN @26 /*The imp looks around. "But... it seems that it's just Prod and you two, so we're good to go." */
==DMorte IF~NumInParty(2) InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) ~THEN @27 /*"That's right. Chief and the only small, chatty companion he would ever need - me!" */
==g-bbd006 IF~NumInParty(2) !InParty("Morte")~THEN @28 /*The imp looks around and counts your companions on his tiny fingers. "Oh, we are good to go. Don't mind Prod, then." */
==g-bbd006 IF~NumInPartyLT(5) !NumInParty(2) !NumInParty(1)~THEN  @29 /*The imp looks around and counts your companions on his tiny fingers. "Oh, we are good to go. Don't mind Prod, then." */
==g-bbd006 IF~!NumInPartyLT(5)~THEN  @30 /*The imp looks around and counts your companions on his tiny fingers. "And sure enough, yous are over capacity. Better to leave friends here than let them freeze their butts off by the portal." */
END
IF~~THEN REPLY @32 /*"All right." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) DestroySelf()~ EXIT
IF~~THEN REPLY @33 /*"I know what I'm doing, Prod." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) DestroySelf()~ EXIT
CHAIN IF~Global("g-ProdCania","GLOBAL",3)~THEN g-bbD006 g-bbD006.caniaD3
@35 /*"All of Cania is littered with these giant 'skeletons', but they're really just rocks, that take on those shapes. There are no titans in Cania... Prod thinks." */
END
IF~~THEN REPLY @37 /*"All right." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) DestroySelf()~ EXIT
CHAIN IF~Global("g-ProdCania","GLOBAL",4)~THEN g-bbD006 g-bbD006.caniaD4
@39 /*"Be careful not to fall into a crevice. They can be miles deep and lead to very unpleasant places." */
END
IF~~THEN REPLY @41 /*"All right." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) DestroySelf()~ EXIT
IF~~THEN REPLY @42 /*"I'm not sure if you have to describe every element of our surroundings, Prod." */ DO~SetGlobal("g-ProdCania","GLOBAL",0) DestroySelf()~ EXIT
CHAIN IF~NumTimesTalkedTo(0) Global("g-BBmain","GLOBAL",4)~THEN g-bbD006 g-bbD006.firstsight
@44 /*In the depths of the Rivergate tavern, on a raised platform surrounded by thugs, there sits a lonely, tormented imp. He looks like he does not enjoy his current predicament. */
END
IF~~THEN REPLY @46 /*"This might be worth checking out." */ DO~SetGlobal("g-BBmain","GLOBAL",5)~ SOLVED_JOURNAL @20011 EXIT
CHAIN IF~!Global("g-bbprodforgold","GLOBAL",1) ActuallyInCombat()~THEN g-bbD006 g-bbD006.fighting
@50 /*The imp looks around the tavern as the brawl continues. "Hey, mister, maybe yous should make sure that Prod doesn't get SHIVVED first and then we'll chit-chat?" */
EXIT
CHAIN IF~GlobalLT("g-BBmain","GLOBAL",7)  !ActuallyInCombat()~THEN g-bbD006 g-bbD006.actualtalk
@53 /*"Prod's SAVIOR! Or at least... Prod hopes so?" The imp measures you with his beady eyes. [g-00601] */
END
IF~~THEN REPLY @55 /*"Greetings. Tergush'tekhn sent me to find you." */ DO~~ + g-bbD006.cont
CHAIN IF~~THEN g-bbD006 g-bbD006.cont
@57 /*"Oh... GOOD. The angry abishai BOYS do care for Prod after all!" The little fiendling seems to beam with a perverted sense of joy. "So, yous and Prod are to work together?" */
END
IF~~THEN REPLY @59 /*"It would seem so. Did you find out where the hopping portal may be?" */ DO~~ + g-bbD006.cont2
CHAIN IF~~THEN g-bbD006 g-bbD006.cont2
@61 /*"Well, Prod..." The imp pauses for a moment and frowns. "How does Prod KNOWS yous really knows the angry abishai boys?" */
END
IF~~THEN REPLY @63 /*"I already told you I was sent by Tergush'tekhn. There's also Tegar'in and Aethelgrin if that helps?" */ DO~~ + g-bbD006.cont3
IF~~THEN REPLY @64 /*"We are looking for a hopping portal to Cania. Who else would ever want to do that?" */ DO~~ + g-bbD006.cont3
IF~Global("g-bbprodforgold","GLOBAL",1)~THEN REPLY @65 /*"How do I know you are the imp I am looking for, then? Maybe I should hand you right back into Joseph's hands?" */ DO~~ + g-bbD006.cont3a
IF~!Global("g-bbprodforgold","GLOBAL",1)~THEN REPLY @66 /*"How do I know you are the imp I am looking for, then? Maybe I should deliver you to some other local gang?" */ DO~~ + g-bbD006.cont3a
CHAIN IF~~THEN g-bbD006 g-bbD006.cont3
@68 /*"Ahh..." The imp considers for a moment. "You're prolly telling the truth." */
END
IF~~THEN REPLY @70 /*"Soo..." */ DO~~ + g-bbD006.cont4
CHAIN IF~~THEN g-bbD006 g-bbD006.cont3a
@72 /*Prod instantly changes his demeanor and his beady eyes nearly double in size. "Alrights, no need. Prod is now ON BOARD this ship." */
END
IF~~THEN REPLY @74 /*"Soo..." */ DO~~ + g-bbD006.cont4
CHAIN IF~~THEN g-bbD006 g-bbD006.cont4
@76 /*"Soo... Prod has learnt some USEFUL things. Now, where to begin..." He trails off, scratching his small, pointed chin. */
END
IF~~THEN REPLY @78 /*"Did you find the portal?" */ DO~~ + g-bbD006.contportal
CHAIN IF~~THEN g-bbD006 g-bbD006.contportal
@80 /*"No, Prod has not found that. But Prod has found a GUY who can MAYBE get us into a PLACE where the RAT bandits are probably hiding." */
END
IF~~THEN REPLY @82 /*"A guy?" */ DO~SetGlobal("g-prodloop1","GLOBAL",1)~ + g-bbD006.portalguy
IF~~THEN REPLY @83 /*"What place?" */ DO~SetGlobal("g-prodloop2","GLOBAL",1)~ + g-bbD006.portalplace
IF~~THEN REPLY @84 /*"Umm... the... rat bandits?" */ DO~SetGlobal("g-prodloop3","GLOBAL",1)~ + g-bbD006.portalbandits
IF~~THEN REPLY @85 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalguy
@87 /*"The boney guy who sent the yagnos. Prod means... the yagnoloths." */
END
IF~Global("g-prodloop2","GLOBAL",0)~THEN REPLY @89 /*"And you mentioned a place?" */ DO~SetGlobal("g-prodloop2","GLOBAL",1)~ + g-bbD006.portalplace
IF~Global("g-prodloop3","GLOBAL",0)~THEN REPLY @90 /*"Which are looking for some... rats?" */ DO~SetGlobal("g-prodloop3","GLOBAL",1)~ + g-bbD006.portalbandits
IF~Global("g-prodloop2","GLOBAL",1)~THEN REPLY @91 /*"You mentioned a rat kip?" */ DO~SetGlobal("g-prodloop2","GLOBAL",2)~ + g-bbD006.portalplace2
IF~Global("g-prodloop3","GLOBAL",1)~THEN REPLY @92 /*"Who are the yagnoloths looking for again?" */ DO~SetGlobal("g-prodloop1","GLOBAL",2)~ + g-bbD006.portalbandits2
IF~Global("g-prodloop2","GLOBAL",2)~THEN REPLY @93 /*"Wait, whose kip was it?" */ DO~~ + g-bbD006.MELTDOWN
IF~Global("g-prodloop3","GLOBAL",2)~THEN REPLY @94 /*"You're talking too fast. Is someone wanted?" */ DO~~ + g-bbD006.MELTDOWN
IF~~THEN REPLY @95 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalplace
@97 /*"The rat kip. Apparently very cool." */
END
IF~Global("g-prodloop1","GLOBAL",0)~THEN REPLY @99 /*"And who sent them?" */ DO~SetGlobal("g-prodloop1","GLOBAL",1)~ + g-bbD006.portalguy
IF~Global("g-prodloop3","GLOBAL",0)~THEN REPLY @100 /*"Umm... the...rat bandits?" */ DO~SetGlobal("g-prodloop3","GLOBAL",1)~ + g-bbD006.portalbandits
IF~Global("g-prodloop1","GLOBAL",1)~THEN REPLY @101 /*"Wait, who are we even talking about?" */ DO~SetGlobal("g-prodloop1","GLOBAL",2)~ + g-bbD006.portalguy2
IF~Global("g-prodloop3","GLOBAL",1)~THEN REPLY @102 /*"Who are the yagnoloths looking for again?" */ DO~SetGlobal("g-prodloop3","GLOBAL",2)~ + g-bbD006.portalbandits2
IF~Global("g-prodloop1","GLOBAL",2)~THEN REPLY @103 /*"I'm lost. Who are we looking for and why?" */ DO~~ + g-bbD006.MELTDOWN
IF~Global("g-prodloop3","GLOBAL",2)~THEN REPLY @104 /*"You're talking too fast. Is someone wanted?" */ DO~~ + g-bbD006.MELTDOWN
IF~~THEN REPLY @105 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalbandits
@107 /*"Wererats, yes. The ones the yagnoloths are looking for." */
END
IF~Global("g-prodloop1","GLOBAL",0)~THEN REPLY @109 /*"And who sent them?" */ DO~SetGlobal("g-prodloop1","GLOBAL",1)~ + g-bbD006.portalguy
IF~Global("g-prodloop2","GLOBAL",0)~THEN REPLY @110 /*"And they're hiding in..." */ DO~SetGlobal("g-prodloop2","GLOBAL",1)~ + g-bbD006.portalplace
IF~Global("g-prodloop1","GLOBAL",1)~THEN REPLY @111 /*"Wait, who are we even talking about?" */ DO~SetGlobal("g-prodloop1","GLOBAL",2)~ + g-bbD006.portalguy2
IF~Global("g-prodloop2","GLOBAL",1)~THEN REPLY @112 /*"You mentioned a rat kip?" */ DO~SetGlobal("g-prodloop2","GLOBAL",2)~ + g-bbD006.portalplace2
IF~Global("g-prodloop1","GLOBAL",2)~THEN REPLY @113 /*"I'm lost. Who are *we* looking for and why?" */ DO~~ + g-bbD006.MELTDOWN
IF~Global("g-prodloop2","GLOBAL",2)~THEN REPLY @114 /*"And they have a kip?" */ DO~~ + g-bbD006.MELTDOWN
IF~~THEN REPLY @115 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalguy2
@117 /*"This one guy... the boney guy... Prod means..." */
END
IF~Global("g-prodloop2","GLOBAL",0)~THEN REPLY @119 /*"And you mentioned a place?" */ DO~SetGlobal("g-prodloop2","GLOBAL",1)~ + g-bbD006.portalplace
IF~Global("g-prodloop3","GLOBAL",0)~THEN REPLY @120 /*"And he's looking for..." */ DO~SetGlobal("g-prodloop3","GLOBAL",1)~ + g-bbD006.portalbandits
IF~Global("g-prodloop2","GLOBAL",1)~THEN REPLY @121 /*"You mentioned a rat kip?" */ DO~SetGlobal("g-prodloop2","GLOBAL",2)~ + g-bbD006.portalplace2
IF~Global("g-prodloop3","GLOBAL",1)~THEN REPLY @122 /*"Who are the yagnoloths looking for again?" */ DO~SetGlobal("g-prodloop1","GLOBAL",2)~ + g-bbD006.portalbandits2
IF~Global("g-prodloop2","GLOBAL",2)~THEN REPLY @123 /*"Wait, whose kip was it?" */ DO~~ + g-bbD006.MELTDOWN
IF~Global("g-prodloop3","GLOBAL",2)~THEN REPLY @124 /*"You're talking too fast. Is someone wanted?" */ DO~~ + g-bbD006.MELTDOWN
IF~~THEN REPLY @125 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalbandits2
@127 /*"Prod already said... the bandits, thieves, cony-catchers." */
END
IF~Global("g-prodloop1","GLOBAL",0)~THEN REPLY @129 /*"And who is looking for them?" */ DO~SetGlobal("g-prodloop1","GLOBAL",1)~ + g-bbD006.portalguy
IF~Global("g-prodloop2","GLOBAL",0)~THEN REPLY @130 /*"And they're hiding in..." */ DO~SetGlobal("g-prodloop2","GLOBAL",1)~ + g-bbD006.portalplace
IF~Global("g-prodloop1","GLOBAL",1)~THEN REPLY @131 /*"Wait, who are we even talking about?" */ DO~SetGlobal("g-prodloop1","GLOBAL",2)~ + g-bbD006.portalguy2
IF~Global("g-prodloop2","GLOBAL",1)~THEN REPLY @132 /*"You mentioned a rat kip?" */ DO~SetGlobal("g-prodloop2","GLOBAL",2)~ + g-bbD006.portalplace2
IF~Global("g-prodloop1","GLOBAL",2)~THEN REPLY @133 /*"Both us and the guy are looking for them?" */ DO~~ + g-bbD006.MELTDOWN
IF~Global("g-prodloop2","GLOBAL",2)~THEN REPLY @134 /*"And it's their kip we need to get to, right?" */ DO~~ + g-bbD006.MELTDOWN
IF~~THEN REPLY @135 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalplace2
@137 /*"Kip, yup. Kip." Prod waves its little arms in exasperation. */
END
IF~Global("g-prodloop1","GLOBAL",0)~THEN REPLY @139 /*"And who is looking for the kip?" */ DO~SetGlobal("g-prodloop1","GLOBAL",1)~ + g-bbD006.portalguy
IF~Global("g-prodloop3","GLOBAL",0)~THEN REPLY @140 /*"And in this kip, there are..." */ DO~SetGlobal("g-prodloop3","GLOBAL",1)~ + g-bbD006.portalbandits
IF~Global("g-prodloop1","GLOBAL",1)~THEN REPLY @141 /*"Wait, who are we even talking about?" */ DO~SetGlobal("g-prodloop1","GLOBAL",2)~ + g-bbD006.portalguy2
IF~Global("g-prodloop3","GLOBAL",1)~THEN REPLY @142 /*"Who are the yagnoloths looking for again?" */ DO~SetGlobal("g-prodloop3","GLOBAL",2)~ + g-bbD006.portalbandits2
IF~Global("g-prodloop1","GLOBAL",2)~THEN REPLY @143 /*"I'm lost. Who are we looking for and why?" */ DO~~ + g-bbD006.MELTDOWN
IF~Global("g-prodloop3","GLOBAL",2)~THEN REPLY @144 /*"You're talking too fast. Is someone wanted?" */ DO~~ + g-bbD006.MELTDOWN
IF~~THEN REPLY @145 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.MELTDOWN
@147 /*The small imp can barely inhale before it has to exhale. "Prod... Prod... Prod means... Prod... PROD! Aah! Hold up..." */
END
IF~~THEN REPLY @149 /*"Can Pro... Can you maybe start at the beginning?" */ DO~~ + g-bbD006.portalbeginning
CHAIN IF~~THEN g-bbD006 g-bbD006.portalbeginning
@151 /*The imp calms down a bit. "Right... so Prod has bribed some Collectors to look for any signs of COLD. Capital 'C' cold." [g-00604] */
=@152 /*"A long line of stinky humans came to Prod with a load of dung. Most of it had nothing to do with cold and some were tall tales about cold-hearted harlots and revenge best served cold..." */
=@153 /*"But... among the Collectors, there was one tiny cretinous creature they use for getting into narrow places. Prod knows these lizards well, has seen them in Tiamat's Lair back in Avernus. A kobold it was." Prod is evidently trying to draw a shape of a kobold in the air, but it really does not look like anything. */
==DMorte IF ~InParty("Morte") Global("Pillar_Morte","AR1001",1) !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~THEN @154 /*"The little, useless dragonlings? Seen them come to the Pillar once or twice. All yipping and yapping, not making much sense." */
==DMorte IF ~InParty("Morte") !Global("Pillar_Morte","AR1001",1) !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~THEN @155 /*"The little, useless dragonlings? Seen them once or twice. All yipping and yapping, not making much sense." */
==g-bbd006 @156 /*"None of the Collectors had anything valuable, but the kobold was yapping about seeing 'a half of a wererat' running through the darkness by the Ditch a couple cycles ago. The Collectors paid this creature no attention, but Prod looked in its tiny red eyes and saw what the stinky humans did not..." */
==g-bbd006 @157 /*"INFRAVISION. The little buggers see HEAT in the dark. If the upper half of the wererat was the only thing visible, then the lower half must have been..." Prod smiles widely, revealing a row of tiny, needle-like teeth. "Really, really cold." */
END
IF~~THEN REPLY @159 /*"That sounds promising." */ DO~SetGlobal("g-knowInfra","GLOBAL",1)~ + g-bbD006.portalbeginning1
IF~~THEN REPLY @160 /*"That sounds useless." */ DO~SetGlobal("g-knowInfra","GLOBAL",1)~ + g-bbD006.portalbeginning1a
IF~~THEN REPLY @161 /*"Keep going." */ DO~SetGlobal("g-knowInfra","GLOBAL",1)~ + g-bbD006.portalbeginning1
CHAIN IF~~THEN g-bbD006 g-bbD006.portalbeginning1a
@163 /*"No, wait. Prod is getting to the point!" */
=@164 /*"Prod talked to the kobold, and it did not know where the half-furball was going or where he came from... but since that night, some *yagnos* have been looking around for a gang of wererats. Prod has asked around and found out that a gang of rat-men had robbed one of them, an 'oarsman.'" */
END
IF~~THEN REPLY @166 /*"How does that help us?" */ DO~SetGlobal("G-yagnobusiness","GLOBAL",1)~ + g-bbD006.howhel
CHAIN IF~~THEN g-bbD006 g-bbD006.portalbeginning1
@168 /*"Prod talked to the kobold, and it did not know where the half-furball was going or where he came from... but since that night, some *yagnos* have been looking around for a gang of wererats. Prod has asked around and found out that a gang of rat-men had robbed one of them, an 'oarsman.'" */
END
IF~~THEN REPLY @170 /*"How does that help us?" */ DO~SetGlobal("G-yagnobusiness","GLOBAL",1)~ + g-bbD006.howhel
CHAIN IF~~THEN g-bbD006 g-bbD006.howhel
@172 /*"That's the sad thing, it doesn't. Not really. But Prod came here, to Rivergate, perhaps to learn the whereabouts of rat-men hideouts. You know... from other criminal elements. And Prod found out!" */
END
IF~~THEN REPLY @174 /*"-and got captured." */ DO~~ + g-bbD006.howhel1
CHAIN IF~~THEN g-bbD006 g-bbD006.howhel1
@176 /*"Yes! But also, FOUND OUT! Rat and Splat!" */
=@177 /*"It's a ratfolk tavern. Very damp, password entry. The furry criminals are likely hiding in there." */
END
IF~~THEN REPLY @179 /*"So we just go in and ask them about the frostbite?" */ DO~~ + g-bbD006.howhel2
IF~~THEN REPLY @180 /*"I feel a catch coming..." */ DO~~ + g-bbD006.howhel2
CHAIN IF~~THEN g-bbD006 g-bbD006.howhel2
@182 /*"Well. Prod hasn't found anyone who actually knows the password... but Prod thinks we should meet with the yugoloths. They may not want to talk to the likes of Prod, but yous-" He measures you up and lets out an audible sigh. "They MIGHT listen to yous." */
END
IF~~THEN REPLY @184 /*"Where do we find them, then?" */ DO~~ + g-bbD006.oarsmen
CHAIN IF~~THEN g-bbD006 g-bbD006.oarsmen
@186 /*"The Styx Oarsman, another tavern, near a broken chronometer, foundrywards. A very fiendish place."  [g-00605] */
END
IF~!GlobalLT("G-keyquest","GLOBAL",2)~THEN REPLY @188 /*"Fiendish tavern? Alright, let's go there." */ DO~~ + g-bbD006.reveal
IF~GlobalLT("G-keyquest","GLOBAL",2)~THEN REPLY @189 /*"Fiendish tavern? I was just looking for one. Alright, let's go there." */ DO~~ + g-bbD006.reveal
CHAIN IF~~THEN g-bbD006 g-bbD006.reveal
@191 /*Prod stops you excitedly. "Hold on, are yous going to Cania for the boys?" */
END
IF~~THEN REPLY @193 /*"Yes. It seems so." */ DO~~ + g-bbD006.reveal2
CHAIN IF~~THEN g-bbD006 g-bbD006.reveal2
@195 /*"To retrieve the consort of Levistus from the clutches of his mortal enemies... " He pauses dramatically and draws air into his tiny lungs. */
=@196 /*"Yous are one BRAVE berk!"  [g-00606] */
END
IF~~THEN REPLY @198 /*"Wait... Did you just say... The consort of Levistus?" */ DO~~ + g-bbD006.reveal3
CHAIN IF~~THEN g-bbD006 g-bbD006.reveal3
@200 /*Prod freezes, clearly aware that his tiny mouth may have opened at the wrong place and the wrong time. */
=@201 /*"*hmpf*... No. No-no-no. Of course not, that would be ridiculous... Ask the angry boys. Let's go!" */
=@202 /*"However... Prod might still be a bit... wanted. Can Prod hide in your's rucksack? Prod is small and clean, and will not harm your belongings." */
END
IF~~THEN REPLY @204 /*"If you really have to..." */ DO~GiveItemCreate("g-bbi024",Protagonist,0,0,0) SetGlobal("g-BBmain","GLOBAL",7) DestroySelf()~ SOLVED_JOURNAL @20013 EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.q
@206 /*"Prod knows a great many things." */
END
IF~GlobalLT("G-bbMain","GLOBAL",9)~THEN REPLY @208 /*"Tell me again about your plan here." */ DO~~ + g-bbD006.recap
IF~!GlobalLT("G-bbMain","GLOBAL",9) GlobalLT("G-bbMain","GLOBAL",20)~THEN REPLY @209 /*"Tell me again about the plan here." */ DO~~ + g-bbD006.recap2
IF~OR(2) Global("G-bbMain","GLOBAL",19) Global("G-bbMain","GLOBAL",17)~THEN REPLY @210 /*"We got everything, what do we do now?" */ DO~~ + g-bbD006.recap3
IF~Global("G-bbMain","GLOBAL",20)~THEN REPLY @211 /*"So, what now?" */ DO~~ + g-bbD006.recap4
IF~Global("G-bbMain","GLOBAL",21)~THEN REPLY @212 /*"So, what now?" */ DO~~ + g-bbD006.recap5
IF~~THEN REPLY @213 /*"So you're an imp? Not many of you here in the Cage." */ DO~~ + g-bbD006.imp
IF~~THEN REPLY @214 /*"How do you know... the angry abishai boys?" */ DO~~ + g-bbD006.boys
IF~GlobalLT("G-bbMain","GLOBAL",20)~THEN REPLY @215 /*"Are you coming to Cania too?" */ DO~~ + g-bbD006.cania
IF~~THEN REPLY @216 /*"It would really help to know as much as possible about this... consort business..." */ DO~~ + g-bbD006.consort
IF~~THEN REPLY @217 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.recap
@219 /*Prod sighs and pulls out a dirty sheet of paper filled with notes written in a strange language. Then, he puts on a pair of inexplicably produced tiny glasses and proceeds to read. */
=@220 /*"We need to talk to the yugoloths and see if they can give us access to the place where the rodentine criminals are hiding. Then, we must persuade them to reveal the source of the frostbite and pray to Asmodeus that it's our hopping portal." */
END
IF~~THEN REPLY @222 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @223 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.recap2
@225 /*Prod sighs and pulls out a dirty sheet of paper filled with notes written in a strange language. Then, he puts on a pair of inexplicably produced tiny glasses and proceeds to read. */
=@226 /*"Now, we need to talk to that furball who stole from Wotyrxil." */
END
IF~~THEN REPLY @228 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @229 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.recap3
@231 /*This time, Prod does not have to look for his notes or his adorable glasses. He speaks with great enthusiasm. */
=@232 /*"We need to get back to the angry abishai boys, to get you some protection from the cold and new instructions. We should head back to the Smoldering Corpse. Prod can't wait! TRIP!" */
END
IF~~THEN REPLY @234 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @235 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.recap4
@237 /*"Yous have everything yous need! At anti-peak, take Prod to this clocktower and off we go." */
END
IF~~THEN REPLY @239 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @240 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.recap5
@242 /*Prod sighs and pulls out yet another, this time slightly newer, sheet of paper, also filled with notes written in a strange language. He must have scribbled down the essentials from the meeting with Tergush'tekhn. He puts on a pair of tiny glasses and proceeds to read. */
=@243 /*"We need to find Gemariel, our guide, who will take us to Mephistar. He should be here somewhere. Let's look around!" */
END
IF~~THEN REPLY @245 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @246 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.imp
@248 /*"Yeah, Prod's an imp. What's so strange about it?" */
END
IF~~THEN REPLY @250 /*"You don't hear much about your kind is all." */ DO~~ + g-bbD006.imp2
IF~~THEN REPLY @251 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @252 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.imp2
@254 /*"Many baatezu do not even recognize Prod's species. But Prod doesn't care. Prod is just doing Prod's part to keep the peace." */
END
IF~~THEN REPLY @257 /*"The baatezu do not strike me as peacekeepers..." */ DO~~ + g-bbD006.imp3
IF~~THEN REPLY @258 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @259 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.imp3
@261 /*"Of course the devils care about keeping the peace. Most mortals may not like the kind of peace we keep, but it's peace either way." Prod smiles, showing his small, sharp teeth. */
END
IF~~THEN REPLY @263 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @264 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.boys
@266 /*"I met the angry boys in the Sinking City. Prod and them are now based in Jangling Hiter. Great place for small things with wings. The chains offer refuge from the wrath of the greater baatezu, should that come to pass." */
END
IF~CheckStatGT(Protagonist,18,INT)~THEN REPLY @268 /*"That's on... the third layer, Minauros, isn't it?" */ DO~~ + g-bbD006.mins
IF~!CheckStatGT(Protagonist,18,INT)~THEN REPLY @269 /*"Where are all those places?" */ DO~~ + g-bbD006.minf
IF~~THEN REPLY @270 /*"Does it come to pass often?" */ DO~~ + g-bbD006.boys2
IF~~THEN REPLY @271 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @272 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.boys2
@274 /*"Oh, YES, the *greats* get angry all the time. Mostly at each other. All the big Lords are at odds with each other." */
END
IF~CheckStatGT(Protagonist,18,INT)~THEN REPLY @276 /*"That's on... the third layer, Minauros, isn't it?" */ DO~~ + g-bbD006.mins
IF~!CheckStatGT(Protagonist,18,INT)~THEN REPLY @277 /*"Where are all those places?" */ DO~~ + g-bbD006.minf
IF~~THEN REPLY @279 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @280 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.minf
@282 /*"Places in the Hells. Nothing to worry about." */
END
IF~~THEN REPLY @284 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @285 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.mins
@287 /*"Oh... yes." Prod seems surprised. "Yes, it is." */
END
IF~~THEN REPLY @289 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @290 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania
@292 /*"Prod is unsure. Do you think Prod... will be necessary?" */
END
IF~~THEN REPLY @294 /*"We are supposed to meet a guide on the other side, but I still don't know anything about our way back." */ DO~~ + g-bbD006.cania2
IF~~THEN REPLY @295 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @296 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania2
@298 /*Prod shuffles uncomfortably. "Prod may know a way back, so... Prod guesses it's time to visit Cania again." */
END
IF~~THEN REPLY @300 /*"What do you know about Cania in general?" */ DO~~ + g-bbD006.cania3
IF~~THEN REPLY @301 /*"What is the most dangerous thing we could find in Cania?" */ DO~~ + g-bbD006.cania4
IF~~THEN REPLY @302 /*"Have you been to Cania Before?" */ DO~~ + g-bbD006.cania5
IF~~THEN REPLY @303 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @304 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania3
@306 /*"Not that much. It's a cold land of traitors. Mephistopheles ruled it from the dawn of the planes, but no more. Another devil now sits atop Mephistar's throne. Mephistar itself is a large city built out of ice. It has museums, schools, bathhouses... very nice." */
END
IF~~THEN REPLY @308 /*"What is the most dangerous thing we could find in Cania?" */ DO~~ + g-bbD006.cania4
IF~~THEN REPLY @309 /*"Have you been to Cania Before?" */ DO~~ + g-bbD006.cania5
IF~~THEN REPLY @310 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @311 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania4
@313 /*"Fiends say that the layer itself *IS* the greatest danger, but Prod says bollocks to that. The 9999 gelugons ready to swarm out of the gate to Nessus and wipe out anyone who is not welcome sounds a little more dangerous to Prod." */
END
IF~~THEN REPLY @315 /*"What do you know about Cania in general?" */ DO~~ + g-bbD006.cania3
IF~~THEN REPLY @316 /*"Have you been to Cania Before?" */ DO~~ + g-bbD006.cania5
IF~~THEN REPLY @317 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @318 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania5
@320 /*Prod gets quiet for a moment. "Once, on a simple mission many years ago. Prod was tasked with conspiring with someone at court to create an escape route. Which is probably going to be useful now. Prod did not see much of the actual layer, just a couple of rooms." */
END
IF~~THEN REPLY @322 /*"Who did you conspire with?" */ DO~~ + g-bbD006.cania5a
IF~~THEN REPLY @323 /*"How did you get to Cania that first time?" */ DO~~ + g-bbD006.cania5b
IF~~THEN REPLY @324 /*"What is the most dangerous thing we could find in Cania?" */ DO~~ + g-bbD006.cania4
IF~~THEN REPLY @325 /*"What do you know about Cania in general?" */ DO~~ + g-bbD006.cania3
IF~~THEN REPLY @326 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @327 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.consort
@329 /*"Prod would love to help yous, but Prod really does not know. Prod knows that the erinyes had been a consort of Levistus before he was trapped in his frozen throne, and that she remained loyal to him after. Prod does not know what she was doing in Cania or how the two lovebirds met." */
END
IF~Global("g-BBerinKNOW","GLOBAL",0)~THEN REPLY @331 /*"I didn't know she was an erinyes." */ DO~SetGlobal("g-BBerinKNOW","GLOBAL",1) AddexperienceParty(15000)~ + g-bbD006.eri
IF~~THEN REPLY @332 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @333 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.eri
@335 /*"Oh. Well. She is." */
END
IF~~THEN REPLY @337 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @338 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania5a
@340 /*"Prod can't say. Literally. She put a geas on Prod that prevents Prod from revealing the information." */
END
IF~~THEN REPLY @342 /*"How did you get to Cania that first time?" */ DO~~ + g-bbD006.cania5b
IF~~THEN REPLY @343 /*"What is the most dangerous thing we could find in Cania?" */ DO~~ + g-bbD006.cania4
IF~~THEN REPLY @344 /*"What do you know about Cania in general?" */ DO~~ + g-bbD006.cania3
IF~~THEN REPLY @345 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @346 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD006 g-bbD006.cania5b
@348 /*"The intended, long-winded way across all layers. Prod was a part of a slave transport. Quite a trip that was... Prod's favorite part was the ruins of Maladomini. Pure insanity, that layer." */
END
IF~~THEN REPLY @350 /*"Who did you conspire with?" */ DO~~ + g-bbD006.cania5a
IF~~THEN REPLY @351 /*"What is the most dangerous thing we could find in Cania?" */ DO~~ + g-bbD006.cania4
IF~~THEN REPLY @352 /*"What do you know about Cania in general?" */ DO~~ + g-bbD006.cania3
IF~~THEN REPLY @354 /*"I have some other questions." */ DO~~ + g-bbD006.q
IF~~THEN REPLY @355 /*"Stay safe, Prod." Close the bag. */ DO~~ EXIT