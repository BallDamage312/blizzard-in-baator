BEGIN g-bbD028
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD028 g-bbD028.s1
@0 /*You approach a hardworking half-orc hammering away on a misshapen anvil. As he sees you coming, he puts his hammer away. "Awright ther'! Ye seem tae be fresh in toon." */
END
IF~~THEN REPLY @2 /*"Who are you?" */ DO~~ + g-bbD028.intr
IF~~THEN REPLY @3 /*"I have some questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @4 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD028 g-bbD028.s2
@6 /*The half-orc glares at you, surprised to see you again. "Welcome back, stranger." */
END
IF~Global("G-smithshortcut","GLOBAL",1)~THEN REPLY @8 /*"Can you show me your wares?" */ DO~StartStore("g-bb#001",LastTalkedToBy()) SetGlobal("G-smithshortcut","GLOBAL",1)~ EXIT
IF~Global("G-adamquest","GLOBAL",1)~THEN REPLY @9 /*"Do you still need that thief roughed up?" */ DO~~ + g-bbD028.work3
IF~Global("G-adamquest","GLOBAL",2) Global("G-athena_scammer_gone","GLOBAL",0)~THEN REPLY @10 /*"Can you remind me where to find the thief?" */ DO~~ + g-bbD028.work2
IF~Global("G-athena_scammer_gone","GLOBAL",1) Global("G-athena_scammer_aware","GLOBAL",1)~THEN REPLY @11 /*"That thug won't bother you anymore." */ DO~SetGlobal("G-athena_scammer_gone","GLOBAL",2)~ + g-bbD028.rew
IF~~THEN REPLY @12 /*"Who are you again?" */ DO~~ + g-bbD028.intr
IF~~THEN REPLY @13 /*"I have some questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @14 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.intr
@16 /*He spits into his bucket. "Ma name is Adam! A'm th' local blacksmith." */
END
IF~~THEN REPLY @18 /*"Can you show me your wares?" */ DO~StartStore("g-bb#001",LastTalkedToBy()) SetGlobal("G-smithshortcut","GLOBAL",1)~ EXIT
IF~~THEN REPLY @19 /*"I have some questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @20 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.q
@22 /*"Ask if ye must, mibbie ah kin answer." */
END
IF~~THEN REPLY @24 /*"Can you show me your wares?" */ DO~StartStore("g-bb#001",LastTalkedToBy()) SetGlobal("G-smithshortcut","GLOBAL",1)~ EXIT
IF~~THEN REPLY @25 /*"What can you tell me about this place?" */ DO~~ + g-bbD028.plc
IF~Global("G-rivergateportal","GLOBAL",1) CheckStatGT(Protagonist,15,CHR)~THEN REPLY @26 /*"Do you go to the Rivergate tavern? There is a portal there that's causing me trouble." */ DO~~ + g-bbD028.rg
IF~Global("G-rivergateportal","GLOBAL",1) !CheckStatGT(Protagonist,15,CHR)~THEN REPLY @27 /*"Do you go to the Rivergate tavern? There is a portal there that's causing me trouble." */ DO~~ + g-bbD028.rg2
IF~Global("G-adamkuotoa","GLOBAL",0) Global("G-adrean_news","GLOBAL",1)~THEN REPLY @28 /*"Do you know anything about the recent disappearings?" */ DO~~ + g-bbD028.dis
IF~Global("G-kuotoaquestline","GLOBAL",4)~THEN REPLY @29 /*"The string merchant told me that you sold a lot of junk to some priestess, What can you tell me about her?" */ DO~SetGlobal("G-kuotoaquestline","GLOBAL",5)~ SOLVED_JOURNAL @20190 + g-bbD028.priestess
IF~Global("G-adrean_news","GLOBAL",1)~THEN REPLY @30 /*"Aren't you worried about that razorvine spreading nearby?" */ DO~SetGlobal("G-BBadamrazor","GLOBAL",1)~ + g-bbD028.floo
IF~!Global("G-adamquest","GLOBAL",1) !Global("G-adamquest","GLOBAL",2) !Global("G-athena_scammer_gone","GLOBAL",2)~THEN REPLY @31 /*"Is there any work around here?" */ DO~SetGlobal("G-adamquest","GLOBAL",1) SetGlobal("G-athena_scammer_aware","GLOBAL",1)~ SOLVED_JOURNAL @20063 + g-bbD028.work
IF~Global("G-brill_quest","GLOBAL",2)~THEN REPLY @32 /*"Do you know a gith by the name of Ikss'odes? He is said to live nearby." */ DO~~ + g-bbD028.ikks
IF~~THEN REPLY @33 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.dis
@35 /*"Berks'r disappearin' roon' here. Usually we fin' thim in th' Ditch though, wi' a dagger in thair back." */
=@36 /*Adam looks around nervously. "But thae recent ones? Thay juist vanish... in a puff of fish scent"  */
END
IF~GlobalLT("G-kuotoaquestline","GLOBAL",6)~THEN REPLY @38 /*"Do you have any idea where they vanish?" */ DO~~ + g-bbD028.dis2
IF~~THEN REPLY @39 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @40 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.dis2
@42 /*The half-orc looks to his right and then back at you. "Naw, no' really..." */
END
IF~CheckStatGT(Protagonist,15,WIS)~THEN REPLY @44 /*"Are you sure? You hesitated. It seems that you're not telling me everything, Adam." */ DO~AddexperienceParty(10000) SetGlobal("G-adamkuotoa","GLOBAL",1)~ + g-bbD028.dis3
IF~~THEN REPLY @45 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @46 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.dis3
@48 /*He unwillingly leans over his anvil to get closer to you and lowers his voice to a whisper. "It a' stairted whin th' fish-people moved intae th' neighbourhood, ye ken, th' godmakers?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @49 /*"Oh great, chief. I hate those little buggers. Their belief is somehow... like *extra* belief." */
END
IF~CheckStatGT(Protagonist,17,INT) GlobalLT("G-kuotoaquestline","GLOBAL",5) GlobalGT("G-kuotoaquestline","GLOBAL",1)~THEN REPLY @51 /*"You mean the kuo-toa? I have seen them around." */ DO~~ + g-bbD028.dis4
IF~CheckStatGT(Protagonist,17,INT) GlobalLT("G-kuotoaquestline","GLOBAL",5)~THEN REPLY @52 /*"You mean the kuo-toa?" */ DO~~ + g-bbD028.dis4
IF~!CheckStatGT(Protagonist,17,INT) GlobalLT("G-kuotoaquestline","GLOBAL",5)~THEN REPLY @53 /*"The fish-people?" */ DO~~ + g-bbD028.dis4
IF~~THEN REPLY @54 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @55 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.dis4
@57 /*"Aye, th' fish-people. Donnae' whit they're called, bit ah dae nae waant thaim anywhere near me, ye ken?" */
END
IF~~THEN REPLY @59 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @60 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.work
@62 /*"Aye, as a maiter o' fact ah dae. A'm keekin fo' someone tae batter this cony-catcher. He keeps nicking mah grub, bit th' Hardheads aren't daein' nothin wi' it. Ah wull pay good jink." */
END
IF~~THEN REPLY @64 /*"Sure, I can bash some boneboxes for you." */ DO~SetGlobal("G-adamquest","GLOBAL",2)~ SOLVED_JOURNAL @20064 + g-bbD028.work2
IF~~THEN REPLY @65 /*"I do not want to get involved. I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @66 /*"Sorry, no. I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.work2
@68 /*"You fill fin' him by th' statue o' Athena. The bigg'un tward's the Vertical Sea. He preys oan visitors wha come tae pray there."  */
END
IF~GlobalGT("G-athena_scammer_gone","GLOBAL",0)~THEN REPLY @70 /*"Oh, I already got rid of that man." */ DO~SetGlobal("G-athena_scammer_gone","GLOBAL",2)~ + g-bbD028.rew
IF~Global("G-athena_scammer_gone","GLOBAL",0)~THEN REPLY @71 /*"Sure thing. I will be back soon. But I still have some questions." */ DO~~ + g-bbD028.q
IF~Global("G-athena_scammer_gone","GLOBAL",0)~THEN REPLY @72 /*"Will do. I need to go now." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.work3
@74 /*"Aye, sure do. You fill fin' him by th' statue o' Athena. He preys oan visitors wha come tae pray there." */
END
IF~~THEN REPLY @76 /*"Sure thing. I will be back soon. But I still have some questions." */ DO~SetGlobal("G-adamquest","GLOBAL",2)~ SOLVED_JOURNAL @20064 + g-bbD028.q
IF~~THEN REPLY @77 /*"Will do. I need to go now." */ DO~SetGlobal("G-adamquest","GLOBAL",2)~ SOLVED_JOURNAL @20064 + g-bbD028.fin
IF~~THEN REPLY @78 /*"Sorry no, I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.rew
@80 /*"Ocht! Is he gonnae stoap bothering me? Bonnie, cutter, bonnie. 'ere is yer reward." */
END
IF~~THEN REPLY @82 /*"Thanks! I have some questions." */ DO~SetGlobal("G-adamquest","GLOBAL",5) AddexperienceParty(15000) GivePartyGold(500) IncrementGlobal("LAW","GLOBAL",-1)~ SOLVED_JOURNAL @20067 + g-bbD028.q
CHAIN IF~~THEN g-bbD028 g-bbD028.plc
@84 /*He scratches his muscular side and looks around, shrugging. "This is th' merkat. Fowk come 'ere tae buy stuff. Tis th' cheapest steid in toun." */
=@85 /*"If ah cuid earn enough tae shift oot o' this shithole, ah wid in a split seicont." */
END
IF~~THEN REPLY @87 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @88 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.fin
@90 /*"Buzz daein' business, basher." */
EXIT
CHAIN IF~~THEN g-bbD028 g-bbD028.rg
@93 /*"Yep. Brill holds th' keys in his pockets - negatives. Fickle business, blether tae him aboot it." */
END
IF~~THEN REPLY @95 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @96 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.rg2
@98 /*"Tis a shithole, berk, ah dinnae gang thare." */
END
IF~~THEN REPLY @100 /*"I have some other questions." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @101 /*"I need to go." */ DO~~ + g-bbD028.fin
CHAIN IF~~THEN g-bbD028 g-bbD028.ikks
@103 /*Adam points towards the medical tent. "He bides at th' center this area. Bit ah haven't seen him in a while, ye better ask his lassie, Mare." */
END
IF~~THEN REPLY @105 /*"Alright, where can I find her?" */ DO~~ + g-bbD028.ikks2
CHAIN IF~~THEN g-bbD028 g-bbD028.ikks2
@107 /*"She usually prowls aroond th' Vertical Sea. She is a... cratur o' th' nicht, if ye catch mah drift." */
END
IF~Global("ARG-07_visited","GLOBAL",0)~THEN REPLY @109 /*"Where is the Vertical Sea?" */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD028.ikks3
IF~~THEN REPLY @110 /*"I see. I have another question..." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 + g-bbD028.q
IF~~THEN REPLY @111 /*"I need to go. Farewell." */ DO~SetGlobal("G-brill_quest","GLOBAL",3)~ SOLVED_JOURNAL @20071 EXIT
CHAIN IF~~THEN g-bbD028 g-bbD028.floo
@113 /*"Eeeeh, a clocked it sae mony times awready. Besides, in this toon, th' sky cuid fall oan oor head at ony moment."  */
END
IF~~THEN REPLY @115 /*"I understand. I have another question..." */ DO~~ JOURNAL @10004 + g-bbD028.q
IF~~THEN REPLY @116 /*"I need to go. Farewell." */ DO~~ JOURNAL @10004 EXIT
CHAIN IF~~THEN g-bbD028 g-bbD028.ikks3
@118 /*"There's a gate ahint the statue of that complete bampot, Athena." */
END
IF~~THEN REPLY @120 /*"I see. I have another question..." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @121 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD028 g-bbD028.priestess
@123 /*"Aye, there wis one like that. She bocht everythin stainless she could get her hauns on, like she meant tae bide livin in the watter. Maybe she wis thinkin o flittin intae some flooded wee hoose roond about. She wis a bit queer, mind..." */
END
IF~~THEN REPLY @125 /*"I see. I have another question..." */ DO~~ + g-bbD028.q
IF~~THEN REPLY @126 /*"I need to go. Farewell." */ DO~~ EXIT