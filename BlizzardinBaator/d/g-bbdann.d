BEGIN g-bbDANN
CHAIN IF~Global("g-fakeanndialogue","GLOBAL",0)~THEN g-bbDANN g-bbDANN.q
@0 /*Annah just looks at you as you address her, and she frowns. "Aye... What is it yeh want, then?" [ANA579B] */
END
IF~~THEN REPLY @2 /*"I just want to know how you're feeling." */ DO~~ + g-bbDANN.q1
IF~~THEN REPLY @3 /*"What do you think we should do now?" */ DO~~ + g-bbDANN.q2
IF~~THEN REPLY @4 /*"Wait for me here. I'll come back for you." */ DO~~ + g-bbDANN.dropoff
IF~~THEN REPLY @5 /*"Nothing. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.dropoff
@7 /*"What? Yeh be wanting to leave me 'ere at the bottom of the Hells? Yeh got your brainbox scrambled, yeh absolute eejit." */
EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.q1
@10 /*Annah pauses for a moment, looking around. */
==g-bbdann IF~AreaCheck("arg-10")~THEN @11 /*"It's cold 'round 'ere, it is. The wind's a bother. Lead me outta 'ere." */
END
IF~~THEN REPLY @13 /*"I wish to speak about other matters." */ DO~~ + g-bbDANN.q
IF~~THEN REPLY @14 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.q2
@16 /*"What good is this journal of yer's if ye keep askin' me for everythin'." */
==g-bbdann IF~Global("G-BBmain","GLOBAL",21)~THEN @17 /*"We need to find this Gemariel fella or somethin'. Let's do that." */
==g-bbdann IF~Global("G-BBmain","GLOBAL",22)~THEN @18 /*"We need to find this Gemariel fella or somethin', and someone is well after us, so let's go already!" */
END
IF~~THEN REPLY @20 /*"I wish to speak about other matters." */ DO~~ + g-bbDANN.q
IF~~THEN REPLY @21 /*"Fine. Let's go." */ DO~~ EXIT
CHAIN IF~Global("g-fakeanndialogue","GLOBAL",1)~THEN g-bbDANN g-bbDANN.start
@24 /*As you approach the harbor and the street becomes less crowded for a moment, Annah stops you with her tail. When you look at her, you notice that she knitted her eyebrows and stares at you with complete seriousness. */
=@25 /*"Listen. Did ya think I wouldn't comment on the fact yeh wanna voluntarily return tae the *Nine Hells*? Only an eejit would do that again." She sighs.  */
=@26 /*"I do have somethin' to say about it." [ANA452D] */
END
IF~!InParty("Grace")~THEN REPLY @28 /*"Alright. Say what you will." */ DO~~ + g-bbDANN.A1A
IF~!InParty("Grace")~THEN REPLY @29 /*"What's the problem? I made it last time." */ DO~~ + g-bbDANN.A1A
IF~!InParty("Grace")~THEN REPLY @30 /*"Not now, Annah. I know what I'm doing." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)~ EXIT
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @31 /*"Alright. Say what you will." */ DO~~ + g-bbDANN.A1B
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @32 /*"What's the problem? I made it last time." */ DO~~ + g-bbDANN.A1B
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @33 /*"Not now, Annah. I know what I'm doing." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.A1A
@35 /*"Never mind the cold. I guess ye've noticed that baatezu, for example the ones in the Smoldering, don't go a bundle on me. They feel 'ven a wee bit of demonic blood walks by. They *will* want tae off me on their land, that's for sure." */
END
IF~~THEN REPLY @37 /*"You can be sure I won't let that happen." */ DO~~ + g-bbDANN.C1
IF~~THEN REPLY @38 /*"If you don't want to go, don't be ashamed to say so. It's a dangerous expedition. You can stay in Sigil if you want." */ DO~~ + g-bbDANN.C2
IF~~THEN REPLY @39 /*"I thought you could defend yourself? Should I leave you in Sigil?" */ DO~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)~ + g-bbDANN.C2
CHAIN IF~~THEN g-bbDANN g-bbDANN.A1B
@41 /*"Never mind the cold. I guess ye've noticed that baatezu, for example the ones in the Smoldering, don't go a bundle on me. They feel 'ven a wee bit of demonic blood walks by. They *will* want tae off me on their land, that's for sure." */
=@42 /*"But there's somethin' else. Do ye wanna take *her*?" She points at Fall-from Grace. "She's a *tanar'ri*. Imagine her in *Baator*. The baatezu are not only gonnae murder us, startin' with 'er, but flay us alive for collaboratin' with their enemy. Ye've had enough time to remind yerself what the Blood War is. Succubus!" She calls Fall-from-Grace. "Ye want to leave? Go ahead!" [ANA309A] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @43 /*"Actually, I was planning to stay for a while if that does not offend, Annah." [FFG140] */
==g-bbdann @44 /*Annah is clearly irritated and wags her tail. "Ah, so what now?" [ANA229B] */
END
IF~~THEN REPLY @46 /*"Yes, I intend to take Fall-from-Grace. She's a friend and I'll do whatever it takes to protect her, just like you." */ DO~~ + g-bbDANN.B1
IF~~THEN REPLY @47 /*"Yes, I intend to take Fall-from-Grace. We need someone to tend to our wounds." */ DO~~ + g-bbDANN.B2
IF~~THEN REPLY @48 /*"No, I don't intend to take her. She'll help us in the Ditch and then I'll tell her to stay here." */ DO~~ + g-bbDANN.B3
IF~~THEN REPLY @49 /*"I don't know yet what I want to do." */ DO~~ + g-bbDANN.B4
IF~~THEN REPLY @50 /*"I've got memory issues. Please remind me what was the Blood War about?" */ DO~SetGlobal("Know_Blood_War","GLOBAL",1)~ + g-bbDANN.B5
CHAIN IF~~THEN g-bbDANN g-bbDANN.B1
@52 /*"I'm not entirely convinced but... Do what ye hafta... I trust ye." [ANA210E] */
END
IF~~THEN REPLY @54 /*"Don't worry, we can deal with everything. Let's go." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.B2
@56 /*"I'm not entirely convinced but... Do what ye hafta... I trust ye." [ANA210E] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @57 /*Fall-from-Grace nods. "I will do whatever I can." */
END
IF~~THEN REPLY @59 /*"That's settled then. Let's go." */ DO~ActionOverride("g-bbann",DestroySelf()) SetGlobal("g-fakeanndialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.B3
@61 /*"In that case...I'm gonna stand by ye." [ANA205A] */
END
IF~~THEN REPLY @63 /*"That's settled then. Let's go." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.B4
@65 /*"I hope a hound litters in yer bedroll." She mutters and steps away from you. [ANA586A] */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @66 /*"I understand perfectly well that this is a difficult decision. You still have time to think it over." */
END
IF~~THEN REPLY @68 /*"Let's go." */ DO~ActionOverride("g-bbann",DestroySelf()) SetGlobal("g-fakeanndialogue","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.B5
@70 /*"Ye cannae be serious... But aight, to be be as brief as possible... The Blood War is constantly happenin' in the Lower Planes. It's an endless conflict between devils and demons. Devils, as in Baator, and demons, as in that perfumed bawd over here. Do ye still wanna take her with ye, canny?" */
END
IF~~THEN REPLY @72 /*"Yes, I intend to take Fall-from-Grace. She's a friend and I'll do whatever it takes to protect her, just like you." */ DO~~ + g-bbDANN.B1
IF~~THEN REPLY @73 /*"Yes, I intend to take Fall-from-Grace. We need someone to tend to our wounds." */ DO~~ + g-bbDANN.B2
IF~~THEN REPLY @74 /*"No, I don't intend to take her. She'll help us in the Ditch and then I'll tell her to stay here." */ DO~~ + g-bbDANN.B3
IF~~THEN REPLY @75 /*"I don't know yet what I want to do." */ DO~~ + g-bbDANN.B4
CHAIN IF~~THEN g-bbDANN g-bbDANN.C1
@77 /*"I'm not entirely convinced, but... Do what ye hafta... I trust ye." [ANA210E] */
END
IF~~THEN REPLY @79 /*"Don't worry, we can deal with everything. Let's go." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbDANN g-bbDANN.C2
@81 /*"Ye know what, I'm perfectly able to cut it in Cania. Someone has to take yer corpse before they enslave ye and experiment on ye. I'm gonna stand by ye." [ANA205A] */
END
IF~~THEN REPLY @83 /*"That's settled then. Let's go." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0)~ EXIT
CHAIN IF~Global("g-fakeanndialogue","GLOBAL",2)~THEN g-bbDANN g-bbDANN.start2
@86 /*As you stand in the shadow of the gigantic piece of metal, Anna steps up to the edge and reaches out to touch its rough surface. */
=@87 /*"I've never seen it from this close. The window of me childhood bedroom looked out onto it. Well, I say window, but I mean the wee hole in the wall of that crumblin' attic where I slept." Her hand pulls back and she sighs heavily. */
=@88 /*"Me pals and I used to scare each other with stories 'bout where it came from, I mind. I said it was the sword o'some giant knight from Acheron, and Naiwa had this daft story that..." The tiefling falls silent, and it seems her monologue has ended. */
=@89 /*"Naiwa said it was a bit o'Sigil itself, and if any berk pulled it out, the whole city'd fall apart." Silence settles on the pier again. "Naiwa's gone. None of them are 'ere anymore. Let's get outta 'ere, aye." */
END
IF~~THEN REPLY @91 /*"Alright." */ DO~DestroySelf() SetGlobal("g-fakeanndialogue","GLOBAL",0)~ EXIT