BEGIN g-bbD058
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD058 g-bbD058.start
@0 /*In the vicinity of the medical tent, a man is circling around the back, looking into the murky depths of the open water down the cliff. He is dressed in loose, dark clothing, and has a face with sharp, masculine features. From time to time he extends his hand toward the water, as if measuring something. As you come closer, he notices you and, after a moment of being startled, he composes himself and says, "Oh, good day to you. I did not see you coming, do you have... business with me?" */
END
IF~Global("g-knowgirgosz","GLOBAL",0)~THEN REPLY @2 /*"Greetings. Maybe I do. Who are you?" */ DO~SetGlobal("g-knowgirgosz","GLOBAL",1)~ + g-bbD058.who
IF~Global("g-knowgirgosz","GLOBAL",0)~THEN REPLY @3 /*"Greetings. I just saw you staring at the water and came to ask about it. Who are you?" */ DO~SetGlobal("g-knowgirgosz","GLOBAL",1)~ + g-bbD058.who2
IF~~THEN REPLY @4 /*"Greetings. No. I'm going to go. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.who
@6 /*The man feels a bit disturbed by the way you phrased this."Umm... I am Girgosh, a member of the Fraternity of Order, or the Guvners, if you prefer." */
END
IF~~THEN REPLY @8 /*"I have some questions for you." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @9 /*"Nice meeting you, I'll be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.who2
@11 /*"Oh. The water, right!" The man sounds relieved. "I am Girgosh, a member of the Fraternity of Order, or the Guvners, if you prefer." */
END
IF~~THEN REPLY @13 /*"I have some questions for you." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @14 /*"Nice meeting you, I'll be on my way." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-knowgirgosz","GLOBAL",0)~THEN g-bbD058 g-bbD058.start2
@16 /*The man still lurks behind the tent overlooking the Ditch. He shifts uncomfortably seeing you return. "Oh... it is you, again." */
END
IF~~THEN REPLY @18 /*"We never really met. Who are you?" */ DO~SetGlobal("g-knowgirgosz","GLOBAL",1)~ + g-bbD058.who
IF~~THEN REPLY @19 /*"Nice meeting you, I'll be on my way." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-knowgirgosz","GLOBAL",1)~THEN g-bbD058 g-bbD058.start3
@21 /*The man still lurks behind the tents overlooking the Ditch. "Oh... you are back. Hello there." */
END
IF~~THEN REPLY @23 /*"I have some questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @24 /*"Nice meeting you, I'll be on my way." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.q
@26 /*"Ask away." */
END
IF~Global("G-rahomon-G","GLOBAL",0) Global("g-yagnobetray","GLOBAL",0) Global("g-girgoszwater","GLOBAL",1) Global("G-rahomon-F","GLOBAL",1) Global("G-rahomon-W","GLOBAL",1)~THEN REPLY @28 /*"Hey... there was an incident a couple cycles ago... between a marraenoloth and a band of wererats. Did you maybe witness that, during your nightly observation?" */ DO~~ + g-bbD058.rashomon
IF~Global("G-rahomon-G","GLOBAL",0) Global("g-yagnobetray","GLOBAL",1) Global("g-girgoszwater","GLOBAL",1) Global("G-rahomon-F","GLOBAL",1) Global("G-rahomon-W","GLOBAL",1)~THEN REPLY @29 /*"Hey... there was an incident a couple cycles ago... between a marraenoloth and a band of wererats. Did you maybe witness that, during your nightly observation?" */ DO~~ + g-bbD058.rashomonalt
IF~Global("G-knowAcademy","GLOBAL",1)~THEN REPLY @30 /*"So, how is your dissertation going? Any progress?" */ DO~~ + g-bbD058.academicupdate
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(DAY)~THEN REPLY @31 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterD
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(NIGHT)~THEN REPLY @32 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterN
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(DUSK)~THEN REPLY @33 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterT
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(MORNING)~THEN REPLY @34 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterM
IF~Global("G-awareportal","GLOBAL",0) Global("g-girgoszcania","GLOBAL",0)~THEN REPLY @35 /*"Have you seen any portals appear in the water?" */ DO~SetGlobal("g-girgoszcania","GLOBAL",1)~ + g-bbD058.cania
IF~Global("g-girgoszguv","GLOBAL",0) ~THEN REPLY @36 /*"You mentioned you're one of the Guvners? What can you tell me about them?" */ DO~SetGlobal("g-girgoszguv","GLOBAL",1) ~ + g-bbD058.guv
IF~Global("g-girgoszguv","GLOBAL",1) ~THEN REPLY @37 /*"Can you tell me about the Guvners again?" */ DO~~ + g-bbD058.guvre
IF~Global("g-girgoszwater","GLOBAL",0) ~THEN REPLY @38 /*"What are you doing here, staring at this water?" */ DO~SetGlobal("g-girgoszwater","GLOBAL",1) ~ + g-bbD058.what
IF~Global("g-girgoszwater","GLOBAL",1) ~THEN REPLY @39 /*"Can you tell me again about the beast?" */ DO~SetGlobal("g-girgoszwater","GLOBAL",1) ~ + g-bbD058.beastre
IF~~THEN REPLY @40 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.what
@42 /*"Ah. I am searching for evidence for the existence of Cassie, the Ditch Beast." He pauses and gets closer to the edge. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @43 /*"Oh bother, that nonsense again." */
==g-bbd058 @44 /*"The rumors about her have been circulating for decades, and there are as many people who claim to have seen her as there are those who claim Cassie *cannot* be real. We, as Fraternity of Oder, just cannot have that, can we?" */
==g-bbd058 @45 /*"Cassie must be massive, so she should be easily spotted as the banks of this 'water' reservoir are full of people, yet she only ever seems to present itself in the dead of antipeak, in most remote locations, or, presumably leaves no witnesses behind, which is frustrating. How can we catalog and taxonomize such an elusive beast?" */
END
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(DAY)~THEN REPLY @47 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterD
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(NIGHT)~THEN REPLY @48 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterN
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(DUSK)~THEN REPLY @49 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterT
IF~Global("g-girgoszwater","GLOBAL",1) TimeOfDay(MORNING)~THEN REPLY @50 /*"So, how is the observation going?" */ DO~~ + g-bbD058.waterM
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN REPLY @51 /*Turn to Annah. "Annah, You don't think the beast is real?" */ DO~SetGlobal("g-girgoszannah","GLOBAL",1)~ + g-bbD058.annah
IF~~THEN REPLY @52 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @53 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.guv
@55 /*"Have you ever heard the line 'let the 665th layer of the Abyss consume you?' We are the ones who gave it that number. Even in the greatest chaos you can bring order. Our motto is: Everything is governed by rules, many of them hidden. Learn the laws of the multiverse and you will rule it. We believe that it is possible to catalog all these laws." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @56 /*"And just like that, I fall asleep." Morte starts fake-snoring. */
==g-bbd058 @57 /*"I represent the Department of Creature Taxonomy, and this project is really my dissertation at Rowan Academy Of Learning." */
END
IF~Global("G-knowRowan","GLOBAL",1) Global("G-dissrowan","GLOBAL",1) Global("G-knowAcademy","GLOBAL",0)~THEN REPLY @59 /*Lie: "Oh, not the Rowan Academy! I heard it's just a nest of corruption and pseudoscience." */ DO~SetGlobal("G-knowAcademy","GLOBAL",1) IncrementGlobal("G-fatedpower","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD058.guv2a
IF~Global("G-knowRowan","GLOBAL",1) Global("G-knowAcademy","GLOBAL",0)~THEN REPLY @60 /*"Darkwood has his own academy too?" */ DO~SetGlobal("G-knowAcademy","GLOBAL",1)~ + g-bbD058.guv2
IF~~THEN REPLY @61 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @62 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.guv2
@64 /*"Yes! It is likely the best one in Sigil... and the most expensive of course, so I would love to finish my dissertation as soon as possible." */
END
IF~~THEN REPLY @66 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @67 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.guv2a
@69 /*"Oh... I did not know... it does make sense if I think about it, though. I'll have to be careful. Thank you for the warning." */
END
IF~~THEN REPLY @71 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @72 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.guvre
@74 /*"Oh. Like I said, we are a faction concerned with cataloging, taxonomy and... well putting order where order... is not present." */
END
IF~~THEN REPLY @76 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @77 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.annah
@79 /*Girgosh looks with a certain dose of fear as Annah steps up to speak her mind. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @80 /*"Balls! A bunch o'balls the beast talk all is. You get off yer high donkeys once every pikin' century, descend from your schools and what not, and come explain to us here how things work. I've lived by this pissdrain my entire childhood, day or night and the beast is a tall tale, so it is." */
==g-bbd058 @81 /*"But... but... It is my life's work." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @82 /*"Well, get a better life, berk." She spins on her heel, letting her tail snap loudly in the air right near his face, and retreats. */
==g-bbd058 @83 /*Girgosh almost falls, startled. */
END
IF~~THEN REPLY @85 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @86 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.waterD
@88 /*Girgosh looks at the thick waters. "Well... it is the middle of the day, so Cassie is likely hiding, but I am looking for any evidence of big objects that have moved around since yesterday. Any such case is a partial proof that something big was moving in the water." */
END
IF~~THEN REPLY @90 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @91 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.waterT
@93 /*Girgosh looks at the thick waters. "Well... it's getting late. So I am mostly waiting for the lights to go off, so I can try to catch her swimming by. I mostly use this time of day to reorganize my notes and compare the current day's observations with the previous one." */
END
IF~~THEN REPLY @95 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @96 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.waterN
@98 /*Girgosh looks at the thick waters. "It is dark out, so I should really be focusing on catching her swim by, instead of talking to you. I do not see well in the dark, so it is hard enough as it is..." */
END
IF~Global("g-knowInfra","GLOBAL",1) Global("g-girginfra","GLOBAL",0)~THEN REPLY @100 /*"You should get yourself a kobold assistant, I hear they are great at finding things in the dark." */ DO~AddexperienceParty(15000) SetGlobal("g-girginfra","GLOBAL",1)~ + g-bbD058.infra
IF~~THEN REPLY @101 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @102 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.infra
@104 /*"Oh... that is a great tip. I will have to see if my department can assign one to me in the future. Thank you." */
END
IF~~THEN REPLY @106 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @107 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.waterM
@109 /*Girgosh looks at the thick waters. "Well... I just spent the night, seeing mostly nothing. Now I can at least observe changes that have happened on the coast, islands and among the debris in the darkness." */
END
IF~Global("g-knowInfra","GLOBAL",1) Global("g-girginfra","GLOBAL",0)~THEN REPLY @111 /*"You should get yourself a kobold assistant, I hear they are great at finding things in the dark." */ DO~AddexperienceParty(15000) SetGlobal("g-girginfra","GLOBAL",1)~ + g-bbD058.infra
IF~~THEN REPLY @112 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @113 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.beastre
@115 /*Girgosh clears his throat. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @116 /*Annah clears her throat too. */
==G-bbd058 IF~Global("g-girgoszannah","GLOBAL",1)~ THEN @117 /*The man looks at Annah, a bit afraid of her reaction, and starts cautiously. "The beast... is called Cassie and she is rumored to roam the Ditch, at night. Of course *many*... " he looks to the tiefling "Many deny her existence, but she attained a legend status in the city so it would be great to learn something concrete." */
==G-bbd058 IF~Global("g-girgoszannah","GLOBAL",0)~ THEN @118 /*"The beast is called Cassie and she is rumored to roam the Ditch, at night. The evidence is sparse and unconfirmed, but it attained a legend status in the city so it would be great to learn something concrete." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @119 /*"I'm watching you." */
END
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah") Global("g-girgoszannah","GLOBAL",0)~THEN REPLY @121 /*Turn to Annah. "Annah, You don't think the beast is real?" */ DO~SetGlobal("g-girgoszannah","GLOBAL",1)~ + g-bbD058.annah
IF~~THEN REPLY @122 /*"I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @123 /*"Actually, I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.academicupdate
@125 /*Girgosh sighs. "Not great. My evidence has been as superficial as the evidence reported for many years prior. I am not losing hope though, I just need *one* solid fact." */
END
IF~~THEN REPLY @127 /*"Good luck. I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @128 /*"Good luck. I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.cania
@130 /*"Oh, quite a few by Seafarer's Arch, but that is some distance away from here." */
END
IF~~THEN REPLY @132 /*"Any of them... cold?" */ DO~~ + g-bbD058.cania2
IF~~THEN REPLY @133 /*"Thanks. I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @134 /*"Thanks. I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.cania2
@136 /*"Huh." He wonders for a moment. "I don't think so... a permanent connection to a cold inner or outer plane would likely cool the water over time and it has always been pretty... lukewarm." */
END
IF~~THEN REPLY @138 /*"What if the portal was a hopping portal?" */ DO~~ + g-bbD058.cania3
IF~~THEN REPLY @139 /*"Thanks. I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @140 /*"Thanks. I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.cania3
@142 /*"Oh, then the influence would be much weaker. Anyway, I do not think a hopping portal appears next to the Arch, hopping portals don't like to hop near permanent portals from what I have heard." */
END
IF~~THEN REPLY @144 /*"Thanks. I have some other questions for you, Girgosh." */ DO~~ + g-bbD058.q
IF~~THEN REPLY @145 /*"Thanks. I'll be on my way. Goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD058 g-bbD058.rashomon
@147 /*"Oh... well, in fact, I did witness the whole thing. The yagnoloths have of course questioned me about it but I did not see where the rats went apart from just disappearing underwater." */
END
IF~~THEN REPLY @149 /*"I actually have a different question. I did hear that story from both of their points of view, and they are very different stories, and *both* have some inconsistencies. I just want to know what really happened." */ DO~~ + g-bbD058.rashomon2
CHAIN IF~~THEN g-bbD058 g-bbD058.rashomonalt
@151 /*"Oh... well, in fact, I did witness the whole thing. The yagnoloths have of course questioned me about it but I did not see where the rats went apart from just disappearing underwater... but I heard the fiends found them and killed them." */
END
IF~~THEN REPLY @153 /*"Yes, but I actually have a different question. I did hear that story from both of their points of view, and they are very different stories, and *both* have some inconsistencies. I just want to know what really happened." */ DO~~ + g-bbD058.rashomon2
CHAIN IF~~THEN g-bbD058 g-bbD058.rashomon2
@155 /*"I see. Well i saw it from a distance and I couldn't hear what was said so the situation was actually rather confusing. It was before eleven. I could swear that they arrived on the shore together, on the same vessel. They sailed quite near me, so I could tell it was five wererats and a marraenoloth at the helm. They landed a bit further away and met with another figure... and then things became heated." */
=@156 /*"There was some shuffling about and then I think the creature at the shore was killed, turned to *dust* and the wererats bolted then, splitting up with the marraenoloth it would seem. who shouted some things and walked away." */
END
IF~~THEN REPLY @158 /*"That... does not line up with *neither* of the stories *at all*. Thank you, Girgosh.  I have some other questions for you." */ DO~SetGlobal("G-rahomon-G","GLOBAL",1) AddexperienceParty(80000)~ + g-bbD058.q
IF~~THEN REPLY @159 /*"That... does not line up with *neither* of the stories *at all*. Thank you, Girgosh. I'll be on my way." */ DO~SetGlobal("G-rahomon-G","GLOBAL",1) AddexperienceParty(80000)~ EXIT