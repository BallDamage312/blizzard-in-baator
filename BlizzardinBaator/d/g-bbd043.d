BEGIN g-bbD043
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD043 g-bbD043.startstart
@0 /*"Oi, lemon! Get o'er here!" */
EXIT
CHAIN IF~NumTimesTalkedTo(1)~THEN g-bbD043 g-bbD043.start
@3 /*An older individual stands beside a poorly constructed announcement board, dressed in somewhat elegant but decrepit clothes. He watches every passerby closely, trying to wave them down, only for them to avoid him. When he notices you approaching, he springs to life, carrying the pungent smell of an unwashed body. "Neeed an'ting, boss? Adrean can get his hand on every-thang." */
END
IF~~THEN REPLY @5 /*"Who are you?" */ DO~~ + g-bbD043.intr
IF~~THEN REPLY @6 /*"Why did you call me 'lemon'?" */ DO~~ + g-bbD043.intralt
IF~~THEN REPLY @7 /*"I have some questions..." */ DO~~ + g-bbD043.q
IF~~THEN REPLY @8 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(1)~THEN g-bbD043 g-bbD043.start2
@10 /*Adrean sees you approaching from a mile away and is visibly happy to see you. "Boss! Whaddya need this cycle?" */
END
IF~~THEN REPLY @12 /*"Can you remind me... who are you?" */ DO~~ + g-bbD043.intr
IF~~THEN REPLY @13 /*"I have some questions..." */ DO~~ + g-bbD043.q
IF~~THEN REPLY @14 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.intr
@16 /*Adrean takes a deep, theatrical breath, his face lighting up with a rogue-like smile. "I, Adrean, am, boss, *THE* piking best tout in this bloody anthill. No other berk can even wash my feet. I know *EVERYTHING* and *EVERYBODY*." */
END
IF~~THEN REPLY @18 /*"I have some questions then." */ DO~~ + g-bbD043.q
IF~~THEN REPLY @19 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.intralt
@21 /*Adrean takes a deep, theatrical breath, his face lighting up with a rogue-like smile. "Lemon means fresh blood in my lingo, and I, Adrean, am, boss, *THE* piking best tout in this bloody anthill. No other berk can even wash my feet. I know *EVERYTHING* and *EVERYBODY*." */
END
IF~~THEN REPLY @23 /*"I have some questions then." */ DO~~ + g-bbD043.q
IF~~THEN REPLY @24 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.q
@26 /*The man bows but keeps his right hand up with his pointing finger raised. "I will gladly answer ALL yer questions. There is just the matter of my fee. My assclusive guidance is worth two tens of copper pieces. Discount price! No more, no less." */
END
IF~PartyGoldGT(19)~THEN REPLY @28 /*"Twenty coppers? Sure." */ DO~TakePartyGold(20)~ + g-bbD043.n2
IF~~THEN REPLY @29 /*"That's a rip-off. I won't pay that much." */ DO~~ + g-bbD043.n1
IF~!PartyGoldGT(19)~THEN REPLY @30 /*"I cannot afford it. I have to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.n1
@32 /*Adrean frowns and chews something that seems to have materialized in his mouth in a nervous manner. "Mere twenty is too much for a planewalker like yourself, boss?" */
END
IF~PartyGoldGT(19)~THEN REPLY @34 /*"You're right. I can do it." */ DO~TakePartyGold(20)~ + g-bbD043.n2
IF~PartyGoldGT(9) CheckStatGT(Protagonist,15,CHR)~THEN REPLY @35 /*"How about ten?" */ DO~TakePartyGold(10)~ + g-bbD043.n2
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @36 /*"I just have a few simple questions. I do not need a grand tour." */ DO~~ + g-bbD043.n2
IF~!CheckStatGT(Protagonist,15,CHR)~THEN REPLY @37 /*"How about ten?" */ DO~~ + g-bbD043.n3
IF~!CheckStatGT(Protagonist,18,CHR)~THEN REPLY @38 /*"I just have a few simple questions. I do not need a grand tour." */ DO~~ + g-bbD043.n3
IF~!PartyGoldGT(19)~THEN REPLY @39 /*"I cannot afford it. I have to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.n3
@41 /*Adrean frowns fiercely and spits onto the dirty pavement. "May the Lady's shadow pass you by." */
EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.n2
@44 /*Adrean smiles with a kind of charm, revealing a highly incomplete set of blackened teeth. "Ask me any-thang." */
END
IF~Global("G-adrean_local","GLOBAL",0)~THEN REPLY @46 /*"What can you tell me about this place?" */ DO~SetGlobal("G-adrean_local","GLOBAL",1)~ + g-bbD043.ditch
IF~~THEN REPLY @47 /*"Can you find any work in here?" */ DO~~ + g-bbD043.work
IF~Global("G-adrean_news","GLOBAL",0)~THEN REPLY @48 /*"What is the latest local news?" */ DO~SetGlobal("G-adrean_news","GLOBAL",1)~ + g-bbD043.news
IF~Global("G-adrean_news","GLOBAL",1) GlobalLT("G-BBmain","GLOBAL",5)~THEN REPLY @49 /*"Tell me again about the captured imp." */ DO~SetGlobal("G-bbmain","GLOBAL",5)~ SOLVED_JOURNAL @20011 + g-bbD043.prod
IF~Global("G-adrean_news","GLOBAL",1) Global("G-kuotoaquestline","GLOBAL",0)~THEN REPLY @50 /*"Tell me again about the disappearances." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",1)~ SOLVED_JOURNAL @20186 + g-bbD043.kuo
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @51 /*"Remind me, what's the deal with this beach?" */ DO~~ + g-bbD043.beach
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @52 /*"What's up with the flooded area again?" */ DO~~ + g-bbD043.floo
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @53 /*"Who are the large fiends again?" */ DO~~ + g-bbD043.yagno
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @54 /*"Who is Joseph?" */ DO~SetGlobal("G-know_joseph","GLOBAL",1)~ + g-bbD043.ziggy
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @55 /*"You mentioned Zaddfum Trestle?" */ DO~~ + g-bbD043.zad
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @56 /*"Market? The Great Bazaar? Tradegate?" */ DO~~ + g-bbD043.markety
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @57 /*"Rivergate isn't originally from here?" */ DO~~ + g-bbD043.riverg
IF~Global("G-rivergateportal","GLOBAL",1) CheckStatGT(Protagonist,15,CHR)~THEN REPLY @58 /*"Do you know how to avoid the Rivergate portal?" */ DO~~ + g-bbD043.RGS
IF~Global("G-rivergateportal","GLOBAL",1) !CheckStatGT(Protagonist,15,CHR)~THEN REPLY @59 /*"Do you know how to avoid the Rivergate portal?" */ DO~~ + g-bbD043.RGF
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @60 /*"Do you know a gith by the name of Ikss'odess? He lives nearby, supposedly." */ DO~~ + g-bbD043.ikks
IF~~THEN REPLY @61 /*"Do you know anything about a portal to the Hells nearby?" */ DO~~ + g-bbD043.portal
IF~~THEN REPLY @62 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.ditch
@64 /*Adrean's eyes sparkle with joy as he looks around the dirty, foul-smelling area surrounding the Ditch. "This is the most beautiful place in the entire Cage. This is where the REAL cutters live, not some painted conies. The Ditch is the blood of this city. This is where the most important things in the entire multiverse happen." */
=@65 /*"Towards the Zaddfum Trestle is our market, a better bargain-hive than the Grand Bazaar... maybe even better than Tradegate... and the Rivergate is a true sinktuary for connoisseurs of port dive bars. They don't make them like that anymore, it's rad that the dabus moved it here." */
END
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @67 /*"You mentioned Zaddfum Trestle?" */ DO~~ + g-bbD043.zad
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @68 /*"Market? The Great Bazaar? Tradegate?" */ DO~~ + g-bbD043.markety
IF~Global("G-adrean_local","GLOBAL",1)~THEN REPLY @69 /*"Rivergate isn't originally from here?" */ DO~~ + g-bbD043.riverg
IF~Global("G-rivergateportal","GLOBAL",1) CheckStatGT(Protagonist,15,CHR)~THEN REPLY @70 /*"Do you know how to avoid the Rivergate portal?" */ DO~~ + g-bbD043.RGS
IF~Global("G-rivergateportal","GLOBAL",1) !CheckStatGT(Protagonist,15,CHR)~THEN REPLY @71 /*"Do you know how to avoid the Rivergate portal?" */ DO~~ + g-bbD043.RGF
IF~~THEN REPLY @72 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @73 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.work
@75 /*"Ha! Work. Here, you don't live by work, but by cunning." Adrean points to the other side of the Ditch. "The conies work on the other side of the water." */
END
IF~~THEN REPLY @77 /*"Makes sense. I have another question." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @78 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.news
@80 /*"Latest? Huh. Joseph's boys caught some imp and they're having fun." */
=@81 /*"Also, a couple o' strong bashers have disappeared lately. Ones that likely wouldn't." */
=@82 /*"And, of course, there is our new tourist destination, the *beach*. The only one in Sigil." */
=@83 /*"What else... Ah, there's a bunch of large daemons roaming around. They seem to be looking for some ratfolk. But the ratfolk are nowhere to be seen, so they're just looking for trouble until they surface." */
=@84 /*"Oh, and one more thing. The razorvine from the flooded part of the Ditch settlements has been spreading inland lately. Some people are very unhappy about it." */
END
IF~Global("G-adrean_news","GLOBAL",1) GlobalLT("G-BBmain","GLOBAL",5)~THEN REPLY @86 /*"Tell me more about the captured imp." */ DO~SetGlobal("G-bbmain","GLOBAL",5)~ SOLVED_JOURNAL @20011 + g-bbD043.prod
IF~Global("G-adrean_news","GLOBAL",1) Global("G-kuotoaquestline","GLOBAL",0)~THEN REPLY @87 /*"Tell me about the disappearances." */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",1)~ SOLVED_JOURNAL @20186 + g-bbD043.kuo
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @88 /*"What's the deal with this beach?" */ DO~~ + g-bbD043.beach
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @89 /*"What's up with the flooded area?" */ DO~~ + g-bbD043.floo
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @90 /*"Who are the large fiends again?" */ DO~~ JOURNAL @10014 + g-bbD043.yagno
IF~~THEN REPLY @91 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @92 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.prod
@94 /*"It was caught by Joseph's boys from Rivergate. They say it had been spying on us, but for whom... That remains unknown. Anyway, the boys will show the little fiend that you shan't lurk in our kip." */
END
IF~~THEN REPLY @96 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @97 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.kuo
@101 /*"I don't know a whole lot about that. Just that a couple o' strong bashers have disappeared lately, ones who likely would not vanish on their own. Fishy smells were left behind. But then again, this is the Ditch. It shouldn't really surprise anyone here. Only the smell is strange. It's been wafting over the beach recently..."  */
END
IF~~THEN REPLY @103 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @104 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.beach
@106 /*"That's our new tourist destination. The only one in all of Sigil. Just on the other side of the square. I *wholeheartedly* recommend it."Adrean winks in an exaggerated, drawn-out way. When he opens his eye, it looks slightly off to the side. */
END
IF~~THEN REPLY @108 /*"Is it really the warmest place in Sigil?" */ DO~~ + g-bbD043.beach2
IF~~THEN REPLY @109 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @110 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.beach2
@112 /*"I doubt it. The furnaces of the Great Foundry are surely warmer, but you can't go have a lie down on a blanket in there, can you?" */
END
IF~~THEN REPLY @114 /*"So it's not especially warm at all?" */ DO~~ + g-bbD043.beach3
IF~~THEN REPLY @115 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @116 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.beach3
@118 /*Adrean leans in to whisper, bringing a strong smell of cheap alcohol with him. "It is warmer! There's a gate under the sand. Elemental Fire I think, though some say it's a lower plane." */
END
IF~~THEN REPLY @120 /*"So probably not Cania. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @121 /*"So probably not Cania... I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.zad
@123 /*"It's a bridge over the Ditch." Adrean points down a narrow street, where so many clothes are hung out to dry overhead that it forms a kind of roof. "That'a'way... but you cannot really get there through here, unless you go for a swim." */
END
IF~~THEN REPLY @125 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @126 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.markety
@128 /*"You what, fell off Eegrasil? Our market is *tops* and it's right here. The Great Bazaar is a rich man's trap full of bloated spellslingers in the Market Ward." He pauses. "Tradegate is a gate-town to Bytopia at the bottom of the Spire." */
END
IF~~THEN REPLY @130 /*"Eegrasil, Bytopia, the Spire... hold up..." */ DO~~ + g-bbD043.over
IF~~THEN REPLY @131 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @132 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.over
@134 /*"Whoa, boss, I just tout round th' Ditch. Get yourself a planewalker tout for questions like that." */
END
IF~~THEN REPLY @136 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @137 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.riverg
@139 /*"Used to operate on Scab Way. The dabus moved it here a couple years ago. Best decision these goatheads made." */
END
IF~~THEN REPLY @141 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @142 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.RGS
@144 /*Adrean sighs. "Ask Brill..." */
END
IF~~THEN REPLY @146 /*"Thanks. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @147 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.RGF
@149 /*"Don't go into Joseph's private lounge, boss." */
END
IF~~THEN REPLY @151 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @152 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.portal
@154 /*"A portal to the Hells? Ain't those in the Lower Ward, hence its name?" */
END
IF~~THEN REPLY @156 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @157 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.ziggy
@159 /*"The basher who grips this hood in his fist. Don't mess with him, boss." */
END
IF~~THEN REPLY @161 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @162 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.ikks
@164 /*Adrean points up the large stairs in the street. "He holds kip by the market up there, but I ain't seen him in a while. You better ask his chit, Mare." */
END
IF~~THEN REPLY @166 /*"Alright, where can I find her?" */ DO~~ + g-bbD043.ikks2
IF~~THEN REPLY @167 /*"I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.ikks2
@169 /*"She usually prowls around the Vertical Sea. She's a... lady of the night, if you catch my drift." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @171 /*"Where is the Vertical Sea?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ + g-bbD043.ikks3
IF~~THEN REPLY @172 /*"I understand. I have another question..." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD043.n2
IF~~THEN REPLY @173 /*"I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.ikks3
@175 /*"It's up in the settlement, further away from the water, beyond the statue of Athena." */
END
IF~~THEN REPLY @177 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @178 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.floo
@180 /*"There's a part of the city that got sucked into the Ditch a couple years back. Ground was torn to shite by razorvine, and that razorvine has been spreading inland lately. Some bloods're pissing their breeches about it." */
END
IF~~THEN REPLY @182 /*"I understand. I have another question..." */ DO~SetGlobal("G-adrean_vine","GLOBAL",1)~ + g-bbD043.n2
IF~~THEN REPLY @183 /*"I need to go. Farewell." */ DO~SetGlobal("G-adrean_vine","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD043 g-bbD043.yagno
@185 /*"A bunch of daemons. They've been roaming around, looking for some ratfolk who stole something. But the ratfolk are nowhere to be seen, so the fiends are just looking for trouble." */
END
IF~~THEN REPLY @187 /*"I understand. I have another question..." */ DO~~ + g-bbD043.n2
IF~~THEN REPLY @188 /*"I need to go. Farewell." */ DO~~ EXIT