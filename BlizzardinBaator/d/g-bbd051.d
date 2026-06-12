BEGIN g-bbD051
CHAIN IF~Global("G-BBmain","GLOBAL",51)~THEN g-bbD051 g-bbD051.postgame
@0 /*The fiends spot you approaching with Fury-Lies-Broken at your side and spring from their relaxed positions. */
=@1 /*"Amnesiac! You have returned and brought the consort of Levistus with you!" shouts Tergush'tekhn. He takes only a second to inspect her, noting her emaciated, sickly posture, her missing arm, and her gouged out eyes. "But... she seems damaged." [g-05106] */
END
IF~~THEN REPLY @3 /*"You lied to me, Tergush'tekhn." */ DO~~ + g-bbD051.cnfrnt
IF~~THEN REPLY @4 /*"I have done what you asked. I want my reward." */ DO~~ + g-bbD051.reward
CHAIN IF~Global("G-BBmain","GLOBAL",52)~THEN g-bbD051 g-bbD051.postgame2
@6 /*The fiends look at you as you approach, but it is clear they are searching for someone else in your party. */
=@7 /*"Amnesiac... are you back from the Hells? Where is Levistus' mistress?" Tergush'tekhn asks cautiously. [g-05107] */
END
IF~~THEN REPLY @9 /*"You lied to me, Tergush'tekhn." */ DO~~ + g-bbD051.cnfrnt
IF~~THEN REPLY @10 /*"I have done what you asked, she is no longer captive. I want my reward." */ DO~~ + g-bbD051.reward2
IF~~THEN REPLY @11 /*"She is gone, Tergush'tekhn. Forever." */ DO~~ + g-bbD051.flbgone
CHAIN IF~OR(2) Global("G-BBmain","GLOBAL",17) Global("G-BBmain","GLOBAL",19)~THEN g-bbD051 g-bbD051.foundportal
@13 /*"You come back, still. What do you need?" */
END
IF~~THEN REPLY @15 /*"I have located the portal. It is at the flooded clock tower on an islet. And *more* devils came for me at the port..." */ DO~~ + g-bbD051.portalcomplete
IF~GlobalGT("G-caniaKN","GLOBAL",4) Global("G-PortalHaggle","GLOBAL",0) ~THEN REPLY @16 /*"I have located the portal, but I am not moving forward until you raise the prize money. This task is much more than I expected." */ DO~SetGlobal("G-PortalHaggle","GLOBAL",1) IncrementGlobal("G-inireward","GLOBAL",2) ~ + g-bbD051.haggle
IF~~THEN REPLY @17 /*"I have some questions." */ DO~~ + g-bbD051.q
CHAIN IF~GlobalGT("G-BBmain","GLOBAL",5) GlobalLT("G-BBmain","GLOBAL",17) Global("G-iniq13","GLOBAL",0)~THEN g-bbD051 g-bbD051.foundprod
@19 /*"You come back, still. What do you need?" */
END
IF~Global("G-iniq13","GLOBAL",0)~THEN REPLY @21 /*"I found and rescued Prod. He is a little less capable than I thought..." */ DO~SetGlobal("G-iniq13","GLOBAL",1) CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD051.fprod
IF~~THEN REPLY @22 /*"I have some questions." */ DO~~ + g-bbD051.q
CHAIN IF~Global("G-BBmain","GLOBAL",3)~THEN g-bbD051 g-bbD051.foundkey
@24 /*"You come back, amnesiac. Did you find the key?" Tergush'tekhn raises a scaly eyebrow. */
END
IF~Global("G-iniq12","GLOBAL",0) Dead("g-bb042")~THEN REPLY @26 /*"I have met this Sensate woman, and I now know a great deal about hopping portals, but not what the key actually is." */ DO~SetGlobal("G-iniq12","GLOBAL",1)~ + g-bbD051.afermawu
IF~Global("G-iniq12","GLOBAL",0) !Dead("g-bb042")~THEN REPLY @27 /*"I have spoken with this Sensate woman and learned a great deal about hopping portals, but not what the key actually is." */ DO~SetGlobal("G-iniq12","GLOBAL",1)~ + g-bbD051.afermawu
IF~~THEN REPLY @28 /*"I have some questions." */ DO~~ + g-bbD051.q
IF~~THEN REPLY @29 /*"Still looking." */ DO~~ EXIT
CHAIN IF~!Global("G-intro_mov","GLOBAL",2) GlobalGT("G-BBmain","GLOBAL",1)~THEN g-bbD051 g-bbD051.comebak
@31 /*"You come back, still. What do you need?" */
END
IF~~THEN REPLY @33 /*"I have some questions." */ DO~~ + g-bbD051.q
IF~~THEN REPLY @34 /*"Nothing. I'll be on my way." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(5) GlobalLT("G-BBmain","GLOBAL",1) Global("G-devilhate","GLOBAL",2)~THEN g-bbD051 g-bbD051.override2
@36 /*Seeing you approach, the baatezu drops to his knees. "Honored hero, *PLEASE* listen." */
==g-bbdteg @37 /*"Dear old comrade, what has come over you?" */
END
IF~~THEN REPLY @39 /*"I will listen to what you have to say, fiend." */ DO~SetGlobal("G-devilhate","GLOBAL",3) AddexperienceParty(20000) IncrementGlobal("GOOD","GLOBAL",3) ~ + g-bbD051.altini
IF~~THEN REPLY @40 /*Say nothing, just smile and leave. */ DO~~ EXIT
CHAIN IF~!Global("G-intro_mov","GLOBAL",2) Global("G-devilhate","GLOBAL",1)~THEN g-bbD051 g-bbD051.override
@42 /*"Amnesiac!" the baatezu begins, "Stop and listen for a moment, for Asmodeus's sake!" [g-05102] */
END
IF~~THEN REPLY @44 /*"I will listen to what you have to say, fiend." */ DO~~ + g-bbD051.ini1
IF~GlobalGT("GOOD","GLOBAL",1)~THEN REPLY @45 /*"Asmodeus? I cannot say I sympathize. Goodbye." */ DO~SetGlobal("G-devilhate","GLOBAL",2) AddexperienceParty(10000) IncrementGlobal("GOOD","GLOBAL",2) ~ EXIT
IF~~THEN REPLY @46 /*"I'm sorry, but would you believe I walked in here by accident yet again?" */ DO~~ EXIT
CHAIN IF~!Global("G-intro_mov","GLOBAL",2) NumTimesTalkedTo(0)~THEN g-bbD051 g-bbD051.START
@48 /*In the back room of The Smoldering Corpse Bar, beside two familiar abishai, stands another in dark crimson scales. He is more grizzled and hunched, but his gaze makes it clear that his condition should not be mistaken for weakness. */
=@49 /*"You came..." he growls at you. "I was starting to think you aren't cut out for this after all, amnesiac." [g-05101] */
==g-bbdteg @50 /*"I told you he would come, Tergush'tekhn! Blood's word is good.... when he remembers who's who." */
==g-bbdaet @51 /*"He could have come *a bit* sooner..." */
END
IF~Global("G-BBMain","GLOBAL",1)~THEN REPLY @53 /*"I came as soon as I heard." */ DO~~ + g-bbD051.ini1
IF~Global("G-BBMainBegin_Messenger","GLOBAL",0)~THEN REPLY @54 /*"Was I... supposed to come?" */ DO~~ + g-bbD051.uninformed
IF~Global("G-BBMainBegin_Messenger","GLOBAL",1)~THEN REPLY @55 /*"I come as I please, fiend." */ DO~~ + g-bbD051.ini1
IF~~THEN REPLY @56 /*"I'm sorry, I am not interested. I walked in here by accident." */ DO~~ EXIT
CHAIN IF~!Global("G-intro_mov","GLOBAL",2) NumTimesTalkedToGT(0)~THEN g-bbD051 g-bbD051.START2
@58 /*The grizzled abishai scans you with his beady eyes. "You come back, amnesiac. Changed your brainbox? Willing to make a deal with a devil after all?" */
END
IF~GlobalLT("G-BBmain","GLOBAL",2)~THEN REPLY @60 /*"I will listen to what you have to say, fiend." */ DO~~ + g-bbD051.ini1
IF~Global("G-drefused","GLOBAL",1) GlobalLT("G-BBmain","GLOBAL",2)~THEN REPLY @61 /*"I thought about it and I will listen to what you have to say, fiend." */ DO~~ + g-bbD051.ini1
IF~Global("G-devilhate","GLOBAL",0) GlobalLT("LAW","GLOBAL",0) GlobalLT("G-BBmain","GLOBAL",2)~THEN REPLY @62 /*"I was going to listen... but 'a deal with a devil' doesn't sound too enticing. I will be on my way." */ DO~SetGlobal("G-devilhate","GLOBAL",1) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1) ~ EXIT
IF~~THEN REPLY @63 /*"I'm sorry, I am still not interested. Somehow, I walked in here by *accident* AGAIN." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.altini
@65 /*The abishai rises from his spiked knees. "You have come to your senses. We have important matters to discuss and a job that will leave you very wealthy." */
END
IF~GlobalLT("G-BBmain","GLOBAL",2)~THEN REPLY @67 /*"What exactly are we talking about?" */ DO~~ + g-bbD051.ini1
IF~CheckStatGT(Protagonist,18,INT) Global("devilhate","GLOBAL",3)~THEN REPLY @68 /*"Promises made by devils are seldom of value..." */ DO~SetGlobal("G-devilhate","GLOBAL",4) AddexperienceParty(15000) IncrementGlobal("GOOD","GLOBAL",1) ~ + g-bbD051.devilhate
IF~~THEN REPLY @69 /*"I'm sorry, I am actually not interested after all." */ DO~~ + g-bbD051.anger
CHAIN IF~~THEN g-bbD051 g-bbD051.anger
@71 /*"That's it! You crossed the Styx now, berk!" The abishai's eyes burn with fury. Something tells you that you just missed out on the entire adventure.  [g-05108] */
END
IF~~THEN REPLY @73 /*"All right..." */ DO~Enemy() Attack(Protagonist)
ForceAttack(Protagonist,Myself)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.devilhate
@75 /*The red abishai swallows his anger and continues. "This is not a deal. This is a task." He sighs. "We will provide you with a bonus to prove our good... " He spits, and his spit sizzles on the floor of the back room. "Will." */
END
IF~~THEN REPLY @77 /*"Great, so what are we talking about?" */ DO~IncrementGlobal("G-inireward","GLOBAL",1)~ + g-bbD051.ini1
CHAIN IF~~THEN g-bbD051 g-bbD051.warrior
@79 /*Tergush'tekhn ponders. "I was thinking the same thing. She usually kills everything in front of her, so it must have been a shiv in the back. Cania is known for treachery, so that is a possible explanation."  */
END
IF~~THEN REPLY @81 /*"Why can't you go?" */ DO~~ + g-bbD051.warrior2
IF~~THEN REPLY @82 /*"I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.q
@84 /*Tergush'tekhn smiles a wicked smile. "Ask, amnesiac." */
END
IF~Global("g-biessassin","GLOBAL",2)~THEN REPLY @86 /*"Who were the two red abishai that were hunting you at the port?" */ DO~SetGlobal("g-biessassin","GLOBAL",3)~ + g-bbD051.bssn
IF~Global("G-iniq1","GLOBAL",0)~THEN REPLY @87 /*"If Fury is such a great warrior, how did she get captured?" */ DO~SetGlobal("G-iniq1","GLOBAL",1)~ + g-bbD051.warrior
IF~Global("G-iniq3","GLOBAL",0)~THEN REPLY @88 /*"What was Fury's assignment?" */ DO~SetGlobal("G-iniq3","GLOBAL",1)~ + g-bbD051.ass
IF~Global("G-iniq4","GLOBAL",0) CheckStatLT(Protagonist,14,INT)~THEN REPLY @89 /*"What is Mephistar?" */ DO~SetGlobal("G-iniq4","GLOBAL",1)~ + g-bbD051.meph
IF~Global("G-iniq4","GLOBAL",0) CheckStatGT(Protagonist,13,INT) CheckStatLT(Protagonist,19,INT)~THEN REPLY @90 /*"You mentioned Mephistar, the home of Mephistopheles." */ DO~SetGlobal("G-iniq4","GLOBAL",1)~ + g-bbD051.meph
IF~Global("G-iniq4","GLOBAL",0) CheckStatGT(Protagonist,18,INT)~THEN REPLY @91 /*"You mentioned Mephistar, former home of Mephistopheles, taken by Molikroth." */ DO~SetGlobal("G-iniq4","GLOBAL",1)~ + g-bbD051.2meph
IF~CheckStatGT(Protagonist,13,WIS) Global("G-maslSP","GLOBAL",0)~THEN REPLY @92 /*"This all sounds like I need more specialized information about Cania so I can better prepare myself." */ DO~SetGlobal("G-maslSP","GLOBAL",1) IncrementGlobal("G-caniaKN","GLOBAL",1)~ + g-bbD051.spec
IF~Global("G-iniq6","GLOBAL",0) Global("Join_Sensates","GLOBAL",0) Global("G-keyquest","GLOBAL",0)~THEN REPLY @93 /*"Do you know more about this professor?" */ DO~SetGlobal("G-iniq6","GLOBAL",1)~ + g-bbD051.prof
IF~Global("G-iniq6","GLOBAL",0) GlobalGT("Join_Sensates","GLOBAL",0) Global("G-keyquest","GLOBAL",0)~THEN REPLY @94 /*"I'm also a Sensate. I think I've heard of a visiting portal specialist. Mawu, was it?" */ DO~SetGlobal("G-iniq6","GLOBAL",1)~ + g-bbD051.prof2
IF~Global("G-iniq1","GLOBAL",1)~THEN REPLY @95 /*"Tell me again how it is possible that such a great warrior got captured." */ DO~~ + g-bbD051.warrior
IF~~THEN REPLY @96 /*"Remind me about Fury." */ DO~~ + g-bbD051.ery
IF~Global("G-iniq3","GLOBAL",1)~THEN REPLY @97 /*"Still not ready to tell me about her assignment?" */ DO~~ + g-bbD051.ass2
IF~Global("G-iniq4","GLOBAL",1) !CheckStatGT(Protagonist,18,INT)~THEN REPLY @98 /*"Tell me again about this... Mephistar." */ DO~~ + g-bbD051.meph
IF~Global("G-iniq4","GLOBAL",1) CheckStatGT(Protagonist,18,INT)~THEN REPLY @99 /*"Tell me again about Mephistar." */ DO~~ + g-bbD051.meph
IF~Global("G-iniq6","GLOBAL",1) Global("G-keyquest","GLOBAL",0)~THEN REPLY @100 /*"Remind me about Mawu." */ DO~~ + g-bbD051.prof
IF~~THEN REPLY @101 /*"Can we talk about finding the portal again?" */ DO~~ + g-bbD051.portl2222
IF~Global("G-askedaboutprize","GLOBAL",1)~THEN REPLY @102 /*"Tell me, what's my payment?" */ DO~~ + g-bbD051.ini1prizere
IF~Global("G-askedaboutprize","GLOBAL",0)~THEN REPLY @103 /*"Tell me again, what's my payment?" */ DO~SetGlobal("G-askedaboutprize","GLOBAL",1)~ + g-bbD051.ini1prizere
IF~OR(2) InParty("Annah") InParty("Grace")~THEN REPLY @104 /*"I can't help but notice you're no longer bothered by my... lovely new company." */ DO~~ + g-bbD051.tanari
IF~~THEN REPLY @105 /*"I want to know more about you. I have not seen you before." */ DO~~ + g-bbD051.red
IF~~THEN REPLY @106 /*"I think that is all I need to know. I am off." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.warrior2
@108 /*The fiends exchange concerned looks, as if none of them want to voice what they are all thinking. Finally, Tergush'tekhn stares down Aethelgrin, who yields and slowly opens his toothy snout. */
==g-bbdaet @109 /*"We cannot, old comrade. 'Tis complicated." */
==g-bbdteg @110 /*"It is a matter of the infernal hierarchy. You are not a part of it, so you are exempt." */
END
IF~CheckStatGT(Protagonist,17,INT) GlobalGT("LAW","GLOBAL",10) GlobalLT("GOOD","GLOBAL",3) Global("G-iniq9","GLOBAL",0)~THEN REPLY @112 /*"I understand some of the infernal hierarchy. I'd like to know what's going on." */ DO~SetGlobal("G-iniq9","GLOBAL",1)~ + g-bbD051.warrior3
IF~~THEN REPLY @113 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.warrior3
@115 /*The fiends look at each other again. The tension is visibly rising. "Well, we are connected to a certain Lord of the Nine, and we might not be welcome in this particular corner of the multiverse at the moment..." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @116 /*"Ohhh chief. I do *NOT* like the sound of that." */
==g-bbdteg @117 /*"It's not like we're at war or anything quite so dire... but we need to keep some distance, just in case." */
END
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @119 /*"What is it, Morte?" */ DO~~ + g-bbD051.warrior4
IF~~THEN REPLY @120 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.warrior4
@122 /*Tergush'tekhn glares at the skull. "You should choose your next words wisely, skull." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @123 /*"Chief, it's one thing to stand between the baatezu and tanar'ri, but... sticking your nose into the affairs of the Lords is like... sticking your nose between the buttocks of a bariaur." */
==g-bbdaet @124 /*"As if you know *ANYTHING* about noses. You probably don't even know how much you reek of the Hells." */
END
IF~~THEN REPLY @126 /*"I think we might have to add to my reward." */ DO~IncrementGlobal("G-inireward","GLOBAL",1)~ + g-bbD051.warrior5
IF~~THEN REPLY @127 /*"I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.warrior5
@129 /*The red devil sighs. "All right... but you do remember that you have a personal interest, don't you?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @130 /*"Personal dinnae pay for knives 'n' potions, ye bags o' scales." */
END
IF~~THEN REPLY @132 /*"I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.ery
@134 /*"You need me to remind you? Of course, you wouldn't remember." Tergush'tekhn looks at his fiendish companions and laughs with a rasping stutter. "Fury is the most breathtaking creature you have ever seen. That alone is enough for you to recognize her." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @135 /*"Do tell!" */
END
IF~~THEN REPLY @137 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.ass
@139 /*Tergush'tekhn freezes. "Her assignment? It is none of your business, is what it is." */
==g-bbdaet @140 /*"I am sorry, old comrade, this knowledge is strictly for devil ears only." */
END
IF~~THEN REPLY @142 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.ass2
@144 /*All three fiends stare at you in silence. */
END
IF~~THEN REPLY @146 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.baron
@148 /*"A huge, foppish, lazy blob who slowly rose to power in Mephistar's court. He schemed and gained influence until he launched a successful coup against Mephistopheles." */
==g-bbdteg @149 /*"He loves torture and is suspected to have been planted by Asmodeus himself, who..." */
==g-bbD051 @150 /*Tergush'tekhn grabs Tegar'in's snout with his claws. "Do not blabber so much!" */
END
IF~CheckStatGT(Protagonist,20,CHR)~THEN REPLY @152 /*"This could be very important, tell me." */ DO~~ + g-bbD051.baron2
IF~~THEN REPLY @153 /*"You mentioned a... Serpentine Order?" */ DO~~ + g-bbD051.serp
IF~CheckStatGT(Protagonist,15,WIS) Global("G-iniq10","GLOBAL",0)~THEN REPLY @154 /*"You had more to say about the lingering influence of Mephistopheles?" */ DO~SetGlobal("G-iniq10","GLOBAL",1)~ + g-bbD051.antilia
IF~~THEN REPLY @155 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.meph
@157 /*"Mephistar is the largest, and basically the only burg in the whole damnable layer. It was built around Mephistopheles' arcane tower..." */
==g-bbdteg @158 /*"But since the coup, the city has been ruled by Baron Molikroth and his council. Mephistopheles is said to be gone." */
==g-bbdaet @159 /*"His influence still lingers. Some of his Serpentine Order are still present, attempting to do as they always do..." He pauses abruptly. */
END
IF~~THEN REPLY @161 /*"Tell me about this Baron." */ DO~~ + g-bbD051.baron
IF~~THEN REPLY @162 /*"Serpentine Order?" */ DO~~ + g-bbD051.serp
IF~CheckStatGT(Protagonist,15,WIS) Global("G-iniq10","GLOBAL",0)~THEN REPLY @163 /*"You had something more to say?" */ DO~SetGlobal("G-iniq10","GLOBAL",1)~ + g-bbD051.antilia
IF~~THEN REPLY @164 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.baron2
@166 /*Tergush'tekhn looks deep into your eyes. "Mephistopheles has always wanted to be number one. But *that* is, and always will be, Asmodeus. Molikroth, on parchment, has *NONE* of Mephistopheles' arcane prowess. He must have had help." */
END
IF~~THEN REPLY @168 /*"You mentioned a... Serpentine Order?" */ DO~~ + g-bbD051.serp
IF~CheckStatGT(Protagonist,15,WIS) Global("G-iniq10","GLOBAL",0)~THEN REPLY @169 /*"You had more to say about the lingering influence of Mephistopheles?" */ DO~SetGlobal("G-iniq10","GLOBAL",1)~ + g-bbD051.antilia
IF~~THEN REPLY @170 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.serp
@172 /*"Ah yes. Mephistar's mysterious legion, under the direct command of one Lord Corin, yet loyal to Mephistopheles. Even now." */
==g-bbdaet @173 /*"They are all about cloak and dagger against the... " He turns and spits. "Tanar'ri." */
==g-bbD051 @174 /*"I am sure the Baron isn't too happy with their presence..." */
END
IF~~THEN REPLY @176 /*"Tell me about this Baron." */ DO~~ + g-bbD051.baron
IF~CheckStatGT(Protagonist,15,WIS) Global("G-iniq10","GLOBAL",0)~THEN REPLY @177 /*"You had more to say about the lingering influence of Mephistopheles?" */ DO~SetGlobal("G-iniq10","GLOBAL",1)~ + g-bbD051.antilia
IF~~THEN REPLY @178 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.antilia
@180 /*"There is an alu-fiend they call Antilia in his court who openly opposes the Baron, and he inexplicably ignores her venomous mischief." */
==g-bbdteg @181 /*"We don't know the dark of it." */
END
IF~~THEN REPLY @183 /*"Tell me more about this Baron." */ DO~~ + g-bbD051.baron
IF~~THEN REPLY @184 /*"You mentioned a... Serpentine Order?" */ DO~~ + g-bbD051.serp
IF~~THEN REPLY @185 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.2meph
@188 /*The fiends seem impressed with your knowledge. "Why yes. Mephistar is the largest, and basically the only burg in the whole damnable layer. It was built around Mephistopheles' arcane tower..." */
==g-bbdteg @189 /*"But since the coup, the city has been ruled by Baron Molikroth and his council. Mephistopheles is said to be gone." */
==g-bbdaet @190 /*"His influence still lingers. Some of his Serpentine Order are still present, attempting to do as they always do..." He pauses abruptly. */
END
IF~~THEN REPLY @192 /*"Tell me about this Baron." */ DO~~ + g-bbD051.baron
IF~~THEN REPLY @193 /*"Serpentine Order?" */ DO~~ + g-bbD051.serp
IF~CheckStatGT(Protagonist,15,WIS) Global("G-iniq10","GLOBAL",0)~THEN REPLY @194 /*"You had something more to say?" */ DO~SetGlobal("G-iniq10","GLOBAL",1)~ + g-bbD051.antilia
IF~~THEN REPLY @195 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.spec
@197 /*"Specialized?" Tergush'tekhn sighs. "It is cold, barmy cold, but we will give you something to counteract it. There can be some dangers in the wilderness. Gelugons, animated ice, the occasional frost giant... nothing *you* should worry about. It is a very mountainous layer, so I hope you do not have a fear of heights." */
==g-bbdteg @198 /*"Do *NOT* try to reach Nessus! It may be tempting, since Cania holds the only entrance and most creatures of the multiverse have no idea what Nessus looks like, but... *all* your friends will perish, and you could spend your immortality in a torture chamber." */
END
IF~~THEN REPLY @200 /*"All right.. I will keep that in mind. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prof
@202 /*"Oh, I do not know much. Her name is Mawu. She has traveled the planes, and she knows things. I would have squeezed that information out of her in a heartbeat, but..." */
==g-bbdteg @203 /*"It is really *NOT* my fau..." */
==g-bbD051 @204 /*The red abishai cuts in. "She really should not be a problem." */
END
IF~~THEN REPLY @206 /*"I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prof2
@208 /*"Yes, her name is Mawu. She has traveled the planes, and she knows things. I would have squeezed that information out of her in a heartbeat, but..." */
==g-bbdteg @209 /*"It is really *NOT* my fau--" */
==g-bbD051 @210 /*Tergush'tekhn cuts in. "She really should not be a problem." */
END
IF~~THEN REPLY @212 /*"I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1prizere
@214 /*"We have accumulated a mass of jink. Is three thousand Möbius acceptable to you?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @215 /*"Möbi... aye. Aye!." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @216 /*"Möbius coins... that's very lavish." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @217 /*"I *know* of these coins... usually used in bulk trades by merchants." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @218 /*"Möbius! Yes, please!" */
END
IF~Global("G-inireward","GLOBAL",1)~THEN REPLY @220 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize1
IF~Global("G-inireward","GLOBAL",2)~THEN REPLY @221 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize2
IF~Global("G-inireward","GLOBAL",3)~THEN REPLY @222 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize3
IF~Global("G-inireward","GLOBAL",4)~THEN REPLY @223 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize4
IF~Global("G-inireward","GLOBAL",5)~THEN REPLY @224 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize5
IF~Global("G-inireward","GLOBAL",6)~THEN REPLY @225 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize6
IF~GlobalGT("G-inireward","GLOBAL",6)~THEN REPLY @226 /*"Does that take into account the bonuses we agreed on?" */ DO~~ + g-bbD051.prize7
IF~~THEN REPLY @227 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize1
@229 /*"Ah, yes. That makes 3200 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @231 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize2
@233 /*"Ah, yes. That makes 3400 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @235 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize3
@237 /*"Ah, yes. That makes 3600 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @239 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize4
@241 /*"Ah, yes. That makes 3800 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @243 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize5
@245 /*"Ah, yes. That makes 4000 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @247 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize6
@249 /*"Ah, yes. That makes 5000 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @251 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.prize7
@253 /*"Ah, yes. That makes 6000 Möbius in total" Tergush'tekhn seems disappointed that you remember. */
END
IF~~THEN REPLY @255 /*"That does sound satisfactory. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.tanari
@257 /*The three fiends fix their attention on the tanar'ri member of your party. Finally, Tergush'tekhn says, "You will be rid of this vermin quickly enough in the depths of Baator, comrade." */
END
IF~~THEN REPLY @259 /*"I don't much like the sound of that." */ DO~~ + g-bbD051.tanari2
CHAIN IF~~THEN g-bbD051 g-bbD051.tanari2
@261 /*"It is simply a fact." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @262 /*"Depths of Hells got nothin' on the depths of *shite* I was in when Mercykillers were sweepin' the Hive for cony-catchers, they don't." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @263 /*"I have been to Baator myself, and I stand here today stronger than ever." */
END
IF~~THEN REPLY @265 /*"I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.afermawu
@267 /*"And she did not know exactly where this one appears? That is a shame..." Tergush'tekhn looks a bit disappointed. "What shall we do about the key, then?" */
END
IF~Global("G-keyquest","GLOBAL",1)~THEN REPLY @269 /*"I may have a lead on the key. I need to find someone. As for the portal... you said you have someone working on it in the Ditch?" */ DO~~ + g-bbD051.naga
IF~Global("G-keyquest","GLOBAL",0)~THEN REPLY @270 /*"I'll try to find the answer. As for the portal... you said you have someone working on it in the Ditch?" */ DO~~ + g-bbD051.naga
CHAIN IF~~THEN g-bbD051 g-bbD051.naga
@272 /*"The Ditch, indeed. The locals use that name for the whole area surrounding the actual Ditch. You should be on the lookout for our agent..." He pauses and sighs. "An imp called Prod. He may have already found something." His voice betrays a hint of uncertainty. */
==g-bbdteg @273 /*"He balances carefully between idiocy and usefulness, be careful." */
==g-bbdaet @274 /*"There should be a small mortal outside, preparing to lead people on a trip to the Ditch. They have created some kind of tourist trap, with the gang boys working under a local chieftain." */
==g-bbD051 @275 /*"But do not travel to Cania without meeting us first! First of all, we have additional information you do not need to worry about yet. Secondly, we must provide you with the protection we promised." */
END
IF~~THEN REPLY @277 /*"A tourist trap? Ingenious. I will try to find that kid. And the imp. Farewell. */ DO~SetGlobal("G-BBmain","GLOBAL",4) AddexperienceParty(15000) SetGlobal("G-BBHoller_Hive","GLOBAL",0)~ JOURNAL @20010 EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.fprod
@279 /*"Prod! Bad imp! Have you been lost?"  [g-05104] */
==g-bbD006 @280 /*"No! Mister! No... Prod has been FOUND!" [g-00603] */
END
IF~~THEN REPLY @282 /*"Prod told me a couple things about Fury being a... consort of Levistus?" */ DO~ActionOverride("g-bb006",DestroySelf())~ + g-bbD051.fprod2
CHAIN IF~~THEN g-bbD051 g-bbD051.fprod2
@284 /*"Well... That is not... not true... What does it matter?" */
END
IF~~THEN REPLY @286 /*"You could have told me, that's all. We should go, we have a portal to find." */ DO~~ EXIT
IF~CheckStatGT(Protagonist,20,CHR) CheckStatGT(Protagonist,15,INT) CheckStatGT(Protagonist,15,WIS)~THEN REPLY @287 /*"This is a case that DIRECTLY involves the Lords of Hells. How about raising the reward... a lot. Otherwise, I will talk." */ DO~IncrementGlobal("G-inireward","GLOBAL",3)~ + g-bbD051.fprod3
CHAIN IF~~THEN g-bbD051 g-bbD051.fprod3
@289 /*The devils look at each other, their anger barely concealed, but your reasoning appears to sway them. "Very well, old comrade... more Möbius for you..." */
END
IF~~THEN REPLY @291 /*"Great, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.haggle
@293 /*The devils look at each other, then back at you. "You drive a *hard* bargain, you..." */
==g-bbdteg @294 /*"Are right. This is quite a task, old comrade. But we can offer you no more, I am sorry." */
END
IF~~THEN REPLY @296 /*"Fine by me. I will go to the penultimate layer of the Hells to rescue a missing lover of a usurper Lord hated by all others. This will certainly go well." */ DO~~ + g-bbD051.haggle2
CHAIN IF~~THEN g-bbD051 g-bbD051.haggle2
@298 /*"Fine! Oh, help me Asmodeus, all of our bounty is gone..." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @299 /*"Chief... Perhaps we should reconsider. When you put it all in one sentence... I really don't want to go there." */
END
IF~~THEN REPLY @301 /*"You won't regret it. I am a man of my word." */ DO~IncrementGlobal("G-inireward","GLOBAL",2)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.portalcomplete
@303 /*"Great news, Nameless One. As for the devils... well, you know how baatezu can be. Whatever they wanted, they will surely not follow you to Cania." Tergush'tekhn pats your shoulder reassuringly. */
==g-bbdteg @304 /*"How about the key?" */
END
IF~!PartyHasItem("g-bbi045")~THEN REPLY @306 /*"I am working on it.... I should go work on it some more, right now." */ DO~~ EXIT
IF~PartyHasItem("g-bbi045")~THEN REPLY @307 /*"I have that also. It was a whole *other* ordeal..." */ DO~CreateCreatureObject("g-bb006",Protagonist,0,0,0)~ + g-bbD051.hurrythen
IF~~THEN REPLY @308 /*"I have some questions first." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.hurrythen
@310 /*"So what are you still doing here? You have the key, you have the portal, go!" [g-05105] */
==g-bbdteg @311 /*"Bring back our comrade. She deserves her freedom." */
==g-bbD051 @312 /*"Listen here... First of all, take Prod with you. In Mephistar, there is a bathhouse called the Tears of Inanna, which has a secret portal to the gate-town of Ribcage. Prod is able to open it. Just keep him alive, he is your ticket back here." */
==g-bbD006 @313 /*"Yes, yes. Keep alive. Prod is an important imp!" [g-00607] */
==g-bbD051 @314 /*"Your contact in Cania will be a white abishai named Gemariel." [g-05109] */
==g-bbdteg @315 /*"Not entirely our fiend... but ours enough." */
==g-bbD051 @316 /*"He is... an outsider, but he has proven to be a trustworthy contractor in the past. He should be waiting for you on the other side of the portal." [g-05111] */
==g-bbD051 @317 /*"Thirdly..." The devil opens a large bag lying on the floor and produces a scarlet robe. "This robe will protect you and your potential companions from the climate of Cania. It may draw just a drop of your blood, but that is expected. Good luck, Nameless One." */
END
IF~~THEN REPLY @319 /*Take the robe. "I hope the reward will be worth it." */ DO~GiveItemCreate("G-bbi041",Protagonist,0,0,0) SetGlobal("G-BBmain","GLOBAL",20) AddexperienceParty(50000) ActionOverride("g-bb006",DestroySelf())~ SOLVED_JOURNAL @20026 EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.red
@321 /*The red abishai appears a bit surprised by the questions. "Me? I am Tergush'tekhn. Red abishai." He regards you with a hint of provocation. */
END
IF~CheckStatGT(Protagonist,17,INT) GlobalGT("LAW","GLOBAL",10) GlobalLT("GOOD","GLOBAL",3)~THEN REPLY @323 /*"Your color... you outrank both of your friends. How come you keep such company?" */ DO~~ + g-bbD051.red2
IF~~THEN REPLY @324 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.red2
@326 /*Tergush'tekhn seems agitated by the question. "We all come from the same place. We share common goals... common enemies... There is nothing strange about that." */
END
IF~CheckStatGT(Protagonist,13,CHR)~THEN REPLY @328 /*Bluff: "Oh, right. You're all from Ribcage..." */ DO~~ + g-bbD051.red3
IF~~THEN REPLY @329 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.red3
@331 /*"We..." */
==g-bbdteg @332 /*"No comrade, it is Jangling Hiter." */
==g-bbD051 @333 /*Tergush'tekhn frowns at his friend. "We do not share that with just anyone." */
==g-bbdteg @334 /*"Right..." */
END
IF~~THEN REPLY @336 /*"All right, I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.flbgone
@338 /*"This is not written yet - ACT 3" */
EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.cnfrnt
@341 /*"This is not written yet - ACT 3" */
EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.reward
@344 /*"This is not written yet - ACT 3" */
EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.reward2
@347 /*"This is not written yet - ACT 3" */
EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1
@350 /*The abishai moves slightly closer to you, radiating an aura of heat. He lowers his voice: "We have a mission for you, amnesiac. One that would be very beneficial for you." */
END
IF~~THEN REPLY @352 /*"But I have almost solved the puzzle of my existence. I am in my final steps to resolve it. I just arrived in Sigil for a brief moment before I face my destiny." */ DO~~ + g-bbD051.newini
CHAIN IF~~THEN g-bbD051 g-bbD051.newini
@354 /*"Yesss. As you have done before, and yet here you are again. Have you not found evidence of you doing this over and over again? Would you not rather do something that could actually work, for once?" */
END
IF~~THEN REPLY @356 /*"I have a feeling this time is different. Perhaps I have one final chance to make it this time around." */ DO~~ + g-bbD051.newini2
CHAIN IF~~THEN g-bbD051 g-bbD051.newini2
@358 /*The red-scaled devil laughs quietly and whispers. "You are more right than you know, but also so very wrong at the same time."  */
=@359 /*"It is true that you broke some stepping stones leading you to this moment, but inadvertently, you created some new ones. You can't see it yet, but you will likely find yourself here, in this bar, in a couple of years, asking about these tattoos of yours again, and again. But you are right about something. This time *is* different, but only because of what I am about to reveal." */
END
IF~~THEN REPLY @361 /*"Oh really? What is it then?" */ DO~~ + g-bbD051.newini3
CHAIN IF~~THEN g-bbD051 g-bbD051.newini3
@363 /*The abishai moves even closer to you. "Let us start with the fact, that we already know each other. Like my dark-scaled colleagues, I fought alongside you a long time ago. Another... woman fought with us, and she was *very* close to you." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @364 /*"If she was pretty, this sounds very plausible, chief." */
==g-bbd051 @365 /*"I do not come empty handed. I know that your memories have a strange way of finding their way back to you, even in fragments. I brought something of hers to see if it triggers anything in you." Tegar'in presents a red, horned helmet, exquisite in design and seemingly very old. "She wore this when you last met, I believe. Go ahead, touch it and see if it brings anything back." */
END
IF~~THEN REPLY @367 /*Take the helmet into your hands. */ DO~SetGlobal("G-intro_mov","GLOBAL",1) StartMovie("g-memo")~ EXIT
CHAIN IF~Global("G-intro_mov","GLOBAL",2)~THEN g-bbD051 g-bbD051.newini4
@369 /*The memory hits you like a charging bariaur. *Of course* you know her. She was your world, your anchor, an eternity ago, when you were still... mortal. You cannot recall the topics of your conversations, but you remember the depth of trust and companionship. She knows you better than you could ever know yourself. She could end your torment. For good. How could you ever forget her? [SPTR_01] */
==g-bbdteg @370 /*"I think it worked, boss. The blood is staring off into the distance, as if he forgot he exists," the fiend says, quickly picking up the helmet and placing it in a bag on the floor. */
==g-bbD051 @371 /*"You saw her, didn't you? Her name is Fury-Vehement, she is the most beautiful and deadly creature whose blood has stained the battlefields of Avernus and Khalas. Unfortunately, Fury needs our help. She is missing, her trail has gone cold, and contact with her is impossible... but we know she is alive." */
==g-bbdteg @372 /*"Had she been destroyed, her superior would know." */
==g-bbD051 @373 /*"We want you to go to her rescue. Beyond helping an old friend, it could bring you significant rewards - financial, and, most importantly, personal." */
END
IF~Global("G-nearconfirm","GLOBAL",0)~THEN REPLY @375 /*"Where was she last seen?" */ DO~SetGlobal("G-nearconfirm","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",3) SetGlobal("G-intro_mov","GLOBAL",0)~ + g-bbD051.ini1B
IF~~THEN REPLY @376 /*"Tell me about the financial benefits." */ DO~SetGlobal("G-intro_mov","GLOBAL",0)~ + g-bbD051.ini1prize
IF~~THEN REPLY @377 /*"So we know each other? Can she really help me?" */ DO~SetGlobal("G-intro_mov","GLOBAL",0)~ + g-bbD051.ini1pers
IF~~THEN REPLY @378 /*"Who is her superior?" */ DO~SetGlobal("G-intro_mov","GLOBAL",0)~ + g-bbD051.ini1zwie
IF~~THEN REPLY @379 /*"Why me?" */ DO~SetGlobal("G-intro_mov","GLOBAL",0)~ + g-bbD051.ini1whyme
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1B
@381 /*The red abishai sighs, as though burdened by what he must say. He gathers himself and whispers, "In Mephistar, in the eighth layer of Baator, Cania." */
END
IF~~THEN REPLY @383 /*"How would I get there?" */ DO~~ + g-bbD051.confirm
IF~CheckStatGT(Protagonist,11,INT)~THEN REPLY @384 /*"That is... pretty deep down in the Hells." */ DO~IncrementGlobal("G-caniaKN","GLOBAL",1) ~ + g-bbD051.location2
IF~~THEN REPLY @385 /*"Tell me about the financial benefits." */ DO~~ + g-bbD051.ini1prize
IF~~THEN REPLY @386 /*"So we know each other? Fury can really help me?" */ DO~~ + g-bbD051.ini1pers
IF~~THEN REPLY @387 /*"Who is her superior?" */ DO~~ + g-bbD051.ini1zwie
IF~~THEN REPLY @388 /*"Why me?" */ DO~~ + g-bbD051.ini1whyme
IF~~THEN REPLY @389 /*"Baator? I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.location2
@391 /*"Ah, yes," the baatezu nods. "You know your layers of the Hells. It is cold and unforgiving to mortals, a land of treachery and despair. In truth, it is mostly a freezing wasteland. We will, however, help you with the... worst aspects of the environment." */
==g-bbdteg @392 /*"We have a very useful robe that can help you... not freeze. Its aura extends over several people as well." */
END
IF~~THEN REPLY @394 /*"How would I get there?" */ DO~~ + g-bbD051.confirm
IF~~THEN REPLY @395 /*"Tell me about the financial benefits." */ DO~~ + g-bbD051.ini1prize
IF~~THEN REPLY @396 /*"So we know each other? Fury can really help me?" */ DO~~ + g-bbD051.ini1pers
IF~~THEN REPLY @397 /*"Who is Fury's superior?" */ DO~~ + g-bbD051.ini1zwie
IF~~THEN REPLY @398 /*"Why me?" */ DO~~ + g-bbD051.ini1whyme
IF~~THEN REPLY @399 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1pers
@401 /*Tergush'tekhn smiles grimly. "We know some things about you, Nameless One... but relatively few. You also know very little about yourself. You may think that you have learned a lot over the last few days, but that is only the tip of the iceberg. None of us ever spent as much time alone with you as Fury did. Centuries ago, she boasted to us that you had told her your deepest secrets. She does not suffer from amnesia, so she could probably reveal a few intriguing tidbits and certainly suggest some alternatives to your current, self-destructive path." */
END
IF~Global("G-nearconfirm","GLOBAL",0)~THEN REPLY @403 /*"Where was Fury last seen?" */ DO~SetGlobal("G-nearconfirm","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",3)~ + g-bbD051.ini1B
IF~Global("G-nearconfirm","GLOBAL",1)~THEN REPLY @404 /*"How would I get to Cania?" */ DO~~ + g-bbD051.confirm
IF~~THEN REPLY @405 /*"Tell me about the financial benefits." */ DO~~ + g-bbD051.ini1prize
IF~~THEN REPLY @406 /*"Who is Fury's superior?" */ DO~~ + g-bbD051.ini1zwie
IF~~THEN REPLY @407 /*"Why me?" */ DO~~ + g-bbD051.ini1whyme
IF~~THEN REPLY @408 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1prize
@410 /*"We have accumulated a mass of jink. Is three thousand Möbius acceptable to you?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @411 /*"Möbi.. Aye. Aye!" */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @412 /*"Möbius coins... that's very lavish." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @413 /*"I *know* of these coins... usually used in bulk trades by merchants." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @414 /*"Möbius! Yes, please!" */
END
IF~Global("G-nearconfirm","GLOBAL",0)~THEN REPLY @416 /*"Where was Fury last seen?" */ DO~SetGlobal("G-nearconfirm","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",3) SetGlobal("G-askedaboutprize","GLOBAL",1)~ + g-bbD051.ini1B
IF~Global("G-nearconfirm","GLOBAL",1)~THEN REPLY @417 /*"All right, what's next? How would I get to Cania?" */ DO~SetGlobal("G-askedaboutprize","GLOBAL",1)~ + g-bbD051.confirm
IF~~THEN REPLY @418 /*"So we know each other? Fury can really help me?" */ DO~SetGlobal("G-askedaboutprize","GLOBAL",1)~ + g-bbD051.ini1pers
IF~~THEN REPLY @419 /*"Who is Fury's superior?" */ DO~SetGlobal("G-askedaboutprize","GLOBAL",1)~ + g-bbD051.ini1zwie
IF~~THEN REPLY @420 /*"Why me?" */ DO~SetGlobal("G-askedaboutprize","GLOBAL",1)~ + g-bbD051.ini1whyme
IF~~THEN REPLY @421 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1) SetGlobal("G-askedaboutprize","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1zwie
@423 /*"You do not need to worry about that. It is just baatezu politics. What matters is that we know she still breathes." */
END
IF~Global("G-nearconfirm","GLOBAL",0)~THEN REPLY @425 /*"Where was Fury last seen?" */ DO~SetGlobal("G-nearconfirm","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",3)~ + g-bbD051.ini1B
IF~Global("G-nearconfirm","GLOBAL",1)~THEN REPLY @426 /*"All right, what next? How would I get to Cania?" */ DO~~ + g-bbD051.confirm
IF~~THEN REPLY @427 /*"Tell me about the financial benefits." */ DO~~ + g-bbD051.ini1prize
IF~~THEN REPLY @428 /*"So we know each other? Fury can really help me?" */ DO~~ + g-bbD051.ini1pers
IF~~THEN REPLY @430 /*"Why me?" */ DO~~ + g-bbD051.ini1whyme
IF~~THEN REPLY @432 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.ini1whyme
@434 /*The devils exchange knowing glances. "We have seen what you can do. We know you are trustworthy. You will be the right person in the right place, I have no doubt of that. And after all... Fury was your best friend." */
END
IF~Global("G-nearconfirm","GLOBAL",0)~THEN REPLY @436 /*"Where was Fury last seen?" */ DO~SetGlobal("G-nearconfirm","GLOBAL",1) SetGlobal("G-BBMainBegin_Messenger","GLOBAL",3)~ + g-bbD051.ini1B
IF~Global("G-nearconfirm","GLOBAL",1)~THEN REPLY @437 /*"All right, what next? How would I get to Cania?" */ DO~~ + g-bbD051.confirm
IF~~THEN REPLY @438 /*"Tell me about the financial benefits." */ DO~~ + g-bbD051.ini1prize
IF~~THEN REPLY @439 /*"So we know each other? Fury can really help me?" */ DO~~ + g-bbD051.ini1pers
IF~~THEN REPLY @440 /*"Who is Fury's superior?" */ DO~~ + g-bbD051.ini1zwie
IF~~THEN REPLY @441 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.confirm
@443 /*"Wait a minute." The fiend bares his fangs in a mockery of a smile. "Before we tell you the next part... you have to declare whether you're in... Bindingly." A contract materializes in his claws.  [g-05103] */
END
IF~CheckStatLT(Protagonist,10,WIS)~THEN REPLY @445 /*"Sure. Where do I sign?" */ DO~~ + g-bbD051.confirmyes
IF~CheckStatLT(Protagonist,15,WIS) CheckStatGT(Protagonist,9,WIS)~THEN REPLY @446 /*"Oh... all right. Where do I sign?" */ DO~~ + g-bbD051.confirmyes
IF~CheckStatGT(Protagonist,11,WIS)~THEN REPLY @447 /*"Can I read it first?" */ DO~~ + g-bbD051.read
IF~CheckStatGT(Protagonist,9,WIS)~THEN REPLY @448 /*"Why do we need to put this in writing?" */ DO~~ + g-bbD051.whydeal
IF~~THEN REPLY @449 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.read
@451 /*The fiends burst into a chorus of laughter. "Oh, you distrustful amnesiac. Do you truly suspect us of hungering after your *soul?* What a joke. Nevertheless... of *course* you can." Tergush'tekhn hands you the document. "After all, the devil is in the details, is it not?" */
=@452 /*The contract does not mention anyone's soul. It is a straightforward transaction: money in exchange for bringing Fury to the Smoldering Corpse Bar. All parties must maintain discretion and not disclose the purpose or destination of the journey. The fiends are also bound to provide an artifact for survival in Cania. You are bound to reach Cania according to the devils' instructions. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @453 /*"Looks fine. I don't see any hidden catches." */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @454 /*"Analysis complete. Document legality estimated at 97.3%." */
END
IF~CheckStatLT(Protagonist,10,WIS)~THEN REPLY @456 /*"Sure. Where do I sign?" */ DO~SetGlobal("G-BBmain","GLOBAL",2) ~ + g-bbD051.confirmyes
IF~CheckStatGT(Protagonist,9,WIS)~THEN REPLY @457 /*"Oh... all right. Where do I sign?" */ DO~SetGlobal("G-BBmain","GLOBAL",2)~ + g-bbD051.confirmyes
IF~~THEN REPLY @460 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.whydeal
@462 /*"How would you feel if, after completing the task, we said we did not know you?" */
==g-bbdaet @463 /*"Not that we would do that..." The second baatezu immediately interjects. "But a contract is always necessary!"  */
==DANNAH IF ~InParty("ANNAH") !StateCheck("ANNAH",CD_STATE_NOTVALID) NearbyDialog("DANNAH")~ THEN @464 /*"Jink is a must. If a contract is needed, sign it." */
END
IF~CheckStatLT(Protagonist,10,WIS)~THEN REPLY @467 /*"Sure. Where do I sign?" */ DO~~ + g-bbD051.confirmyes
IF~CheckStatLT(Protagonist,15,WIS) CheckStatGT(Protagonist,9,WIS)~THEN REPLY @468 /*"Oh... all right. Where do I sign?" */ DO~~ + g-bbD051.confirmyes
IF~CheckStatGT(Protagonist,11,WIS)~THEN REPLY @470 /*"Can I read it first?" */ DO~~ + g-bbD051.read
IF~~THEN REPLY @471 /*"I'm sorry, I am actually not interested after all." */ DO~SetGlobal("G-drefused","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.confirmyes
@473 /*The document accepts your signature and confirms its finality with an accompanying orange flash. The fiends visibly relax. */
=@474 /*Tergush'tekhn bares his teeth in a smile. "Excellent. There is hope for our friend's return. We can now move on." */
END
IF~~THEN REPLY @476 /*"I was asking about how I would get to Cania." */ DO~~ + g-bbD051.portl
CHAIN IF~~THEN g-bbD051 g-bbD051.portl
@478 /*"Near Mephistar stands a tall mountain with twin peaks - Nemezia. Recently, the frozen, naked corpse of a man appeared at its summit. Some brave baatezu identified him by his tattoo: it was Manohae Brine of the Society of Sensations, a Sigilite. Near his corpse stands an old stone arch, which the summoned arcanists determined to be the exit of a hopping portal." */
=@479 /*"After a brief investigation, it turned out that Manohae was... a wereshark, which likely explains why no one had found this portal in Sigil before. It is probably underwater, most likely in or around the Ditch. The arch is still standing, but if the local authorities discover it, they will probably tear it down." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @480 /*"A wereshark? So like a wererat but a shark? How great is that?" */
END
IF~Global("G-inineme","GLOBAL",0)~THEN REPLY @482 /*"You mentioned Nemezia?" */ DO~SetGlobal("G-inineme","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.neme55
IF~Global("G-iniditch","GLOBAL",0)~THEN REPLY @483 /*"What is the Ditch?" */ DO~SetGlobal("G-iniditch","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.ditch55
IF~Global("G-iniwho","GLOBAL",0)~THEN REPLY @484 /*"So who found the portal?" */ DO~SetGlobal("G-iniwho","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.whofound
IF~Global("G-initear","GLOBAL",0)~THEN REPLY @485 /*"Why would the local authorities want to tear down that arch in Cania?" */ DO~SetGlobal("G-initear","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.teardown
IF~Global("G-iniportal","GLOBAL",4)~THEN REPLY @486 /*"So... you don't know where in Sigil the portal is exactly?" */ DO~~ + g-bbD051.protlcont
CHAIN IF~~THEN g-bbD051 g-bbD051.neme55
@488 /*"That's the name of the mountain..." The baatezu seems confused by your question. "It's quite close to Mephistar and offers spectacular views. It's high, rocky... I do not know what else to tell you, amnesiac." */
END
IF~Global("G-iniditch","GLOBAL",0)~THEN REPLY @490 /*"What is the Ditch?" */ DO~SetGlobal("G-iniditch","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.ditch55
IF~Global("G-iniwho","GLOBAL",0)~THEN REPLY @491 /*"So who found the portal?" */ DO~SetGlobal("G-iniwho","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.whofound
IF~Global("G-initear","GLOBAL",0)~THEN REPLY @492 /*"Why would the local authorities want to tear down that arch?" */ DO~SetGlobal("G-initear","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.teardown
IF~Global("G-iniportal","GLOBAL",4)~THEN REPLY @493 /*"So... you don't know where in Sigil the portal is exactly?" */ DO~~ + g-bbD051.protlcont
CHAIN IF~~THEN g-bbD051 g-bbD051.ditch55
@495 /*"It is a local river that runs between the Hive Ward and Lower Ward." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @496 /*"River?" Annah snorts mockingly. "First time I'm hearin' such shite. I cannae believe it." */
END
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @498 /*"Annah? You know something about the Ditch?" */ DO~~ + g-bbD051.anditch
IF~~THEN REPLY @499 /*"A river in Sigil? How does that work?" */ DO~~ + g-bbD051.river
CHAIN IF~~THEN g-bbD051 g-bbD051.river
@501 /*"I... never investigated. I know that it is not safe for humans to swim in. That's about it." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @502 /*"That's *rich*, I tell ya." */
END
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @504 /*"Annah? You know something about the Ditch?" */ DO~~ + g-bbD051.anditch
IF~Global("G-inineme","GLOBAL",0)~THEN REPLY @505 /*"You mentioned Nemezia?" */ DO~SetGlobal("G-inineme","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.neme55
IF~Global("G-iniwho","GLOBAL",0)~THEN REPLY @506 /*"So who found the portal?" */ DO~SetGlobal("G-iniwho","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.whofound
IF~Global("G-initear","GLOBAL",0)~THEN REPLY @507 /*"Why would the local authorities want to tear down that arch?" */ DO~SetGlobal("G-initear","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.teardown
IF~Global("G-iniportal","GLOBAL",4)~THEN REPLY @508 /*"So... you don't know where in Sigil the portal is exactly?" */ DO~~ + g-bbD051.protlcont
CHAIN IF~~THEN g-bbD051 g-bbD051.anditch
@510 /*"You think a lowly, dirty, half-breed fiendling..." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @511 /*"I grew up *by* the Ditch. Ya cannae imagine how much I know about it, ya grotty fiend." */
==DAnnah @512 /*"So, it does run between the Hive'n'Lower but it ain't a river. It's a large, nasty, stinkin' sewer. At times, it gets cleaned if a nice, cozy upper plane dumps its load in it." */
==DAnnah @513 /*"Because that's what the Ditch is made up from: nasty portal juice, refuse from the Great Foundry 'n just... shite. Loads o' shite." */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @514 /*"I hear that there are some bright and hopeful sides to it. Perhaps even beautiful?" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @515 /*"It's all bad... The Suicide Falls're easily the nicest place there." Annah gives a faint, ironic smirk. "That's where it falls off the Cage and that's where sad wee conies go to die a romantic death, flingin' themselves into oblivion." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @516 /*"Bloods keep talkin' that there's a monster in it, but it's absolute bollocks." */
END
IF~Global("G-inineme","GLOBAL",0)~THEN REPLY @518 /*"You mentioned Nemezia?" */ DO~SetGlobal("G-inineme","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.neme55
IF~Global("G-iniwho","GLOBAL",0)~THEN REPLY @519 /*"So who found the portal?" */ DO~SetGlobal("G-iniwho","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.whofound
IF~Global("G-initear","GLOBAL",0)~THEN REPLY @520 /*"Why would the local authorities want to tear down that arch?" */ DO~SetGlobal("G-initear","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.teardown
IF~Global("G-iniportal","GLOBAL",4)~THEN REPLY @521 /*"So... you don't know where in Sigil the portal is exactly?" */ DO~~ + g-bbD051.protlcont
CHAIN IF~~THEN g-bbD051 g-bbD051.whofound
@523 /*Tergush'tekhn sighs. "It does not really matter who found it. Luckily, our associates found those who found it before they found those who wanted that information." */
==g-bbdaet @524 /*"'Tis better not to consider how many victims this information has claimed." */
END
IF~Global("G-inineme","GLOBAL",0)~THEN REPLY @526 /*"You mentioned Nemezia?" */ DO~SetGlobal("G-inineme","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.neme55
IF~Global("G-iniditch","GLOBAL",0)~THEN REPLY @527 /*"What is the Ditch?" */ DO~SetGlobal("G-iniditch","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.ditch55
IF~Global("G-initear","GLOBAL",0)~THEN REPLY @528 /*"Why would the local authorities want to tear down that arch?" */ DO~SetGlobal("G-initear","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.teardown
IF~Global("G-iniportal","GLOBAL",4)~THEN REPLY @529 /*"So... you don't know where in Sigil the portal is exactly?" */ DO~~ + g-bbD051.protlcont
CHAIN IF~~THEN g-bbD051 g-bbD051.protlcont
@531 /*"We are in the process of determining the location. One of our spies is combing the Ditch in search of an 'entrance'. However, we do not know what the key is. Manohae did not have any items with him, so he must have been robbed already in Cania." */
==g-bbdaet @532 /*"But we have a lead!" */
==g-bbD051 @533 /*"There is a professor named Mawu at the Civic Festhall who might know something about it," the fiend hisses with disgust. "She is an expert on doors, gates, and portals of all shapes and sizes, but..." He looks at Tegar'in. "Someone got the Festhall to ban all abishai for the next FORTY cycles. So *you* may have to meet them first." */
==g-bbdteg @534 /*"It's only thirty six now!" */
==g-bbD051 @535 /*"Meet with her... learn something about a possible portal to Cania, or about hopping portals in general. Return to us and report what you discover." He exhales, filling the air with the scent of sulfur. "Any questions?" */
END
IF~~THEN REPLY @537 /*"I think I get the picture." */ DO~SetGlobal("G-BBmain","GLOBAL",2) SetGlobal("G-BBMAWU","GLOBAL",1)~ SOLVED_JOURNAL @20008 + g-bbD051.protlcont2
IF~~THEN REPLY @538 /*"Yes. I have questions." */ DO~SetGlobal("G-BBmain","GLOBAL",2) SetGlobal("G-BBMAWU","GLOBAL",1)~ SOLVED_JOURNAL @20008 + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.protlcont2
@540 /*"Excellent. Then meet with Mawu and come back with what you learn." */
EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.portl2222
@543 /*"We are in the process of determining the location. One of our spies is combing the Ditch in search of an 'entrance'. However, we do not know what the key is. Manohae did not have any items with him, so he must have been robbed already in Cania." */
==g-bbdaet @544 /*"But we have a lead!" */
==g-bbD051 @545 /*"There's a professor named Mawu at the Civic Festhall who might know something about it," the fiend hisses with disgust. "She's an expert on doors, gates, and portals of all shapes and sizes, but..." He looks at Tegar'in. "Someone got the Festhall to ban all abishai for the next FORTY cycles. So *you* may have to meet them first." */
==g-bbdteg @546 /*"It's only thirty six now!" */
==g-bbD051 @547 /*"Meet with her... learn something about a possible portal to Cania, or about hopping portals in general. Return to us and report what you discover." He exhales, filling the air with the scent of sulfur. "Any questions?" */
END
IF~~THEN REPLY @550 /*"Okay. I have other questions." */ DO~~ + g-bbD051.q
CHAIN IF~~THEN g-bbD051 g-bbD051.teardown
@552 /*Tergush'tekhn looks at you in amazement, then glances at the other two abishai as if seeking confirmation of whether this is mockery or ignorance. "Cania lies deep in the Hells. It is also the only route to Nessus, the home of Asmodeus. Hiding it from visitors is a strong defense measure. A shortcut bypassing such enormous defenses is unacceptable. The fact that it is a hopping portal prevents full-scale invasion, but small spy units can still reach it, bypassing the entire hierarchy. Just like you will. This is, in theory, unacceptable!" */
==g-bbdaet @553 /*"In practical terms though, it is very fortunate for us. For now." */
END
IF~Global("G-inineme","GLOBAL",0)~THEN REPLY @555 /*"You mentioned Nemezia?" */ DO~SetGlobal("G-inineme","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.neme55
IF~Global("G-iniditch","GLOBAL",0)~THEN REPLY @556 /*"What is the Ditch?" */ DO~SetGlobal("G-iniditch","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.ditch55
IF~Global("G-iniwho","GLOBAL",0)~THEN REPLY @557 /*"So who found the portal?" */ DO~SetGlobal("G-iniwho","GLOBAL",1) IncrementGlobal("G-iniportal","GLOBAL",1) ~ + g-bbD051.whofound
IF~Global("G-iniportal","GLOBAL",4)~THEN REPLY @558 /*"So... you don't know where in Sigil the portal is exactly?" */ DO~~ + g-bbD051.protlcont
CHAIN IF~~THEN g-bbD051 g-bbD051.uninformed
@560 /*The red abishai looks at you in amazement. He also glances at the other two abishai, as if seeking an explanation. "Did you not receive our message?" */
==g-bbdaet @561 /*"We sent a messenger!" */
END
IF~~THEN REPLY @563 /*"I did not. What is this about?" */ DO~~ + g-bbD051.ini1
IF~~THEN REPLY @564 /*"I did not." */ DO~~ + g-bbD051.uninformed2
IF~~THEN REPLY @565 /*"I'm sorry, I am not interested. I walked in here by accident." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.uninformed2
@567 /*The fiend sighs. "We sent a letter for you, because we have a very important job, especially for you. Will you hear us out?" */
END
IF~~THEN REPLY @569 /*"All right. What is this about?" */ DO~~ + g-bbD051.ini1
IF~~THEN REPLY @570 /*"I'm sorry, I am not interested. I walked in here by accident." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD051 g-bbD051.bssn
@572 /*At first, the red devil seems alarmed, but he immediately calms down. "Here, in the Cage? Looking for me? There could be many reasons for it. We simply do not know." */
==g-bbdaet @573 /*"There is no one who hates fiends more than other fiends, comrade." */
==g-bbdteg @574 /*"Archons may hate fiends more than other fiends." */
==g-bbdaet @575 /*"Well, all right. Nobody hates fiends more than archons and other fiends."
 */
==g-bbdteg @576 /*"I think eladrin too...." */
==g-bbD051 @577 /*"Enough! Yes, we have a *lot* of enemies. It is nothing to worry about." */
END
IF~~THEN REPLY @579 /*"I certainly hope so. I have other questions." */ DO~~ + g-bbD051.q