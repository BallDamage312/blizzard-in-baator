BEGIN g-bbD059
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD059 g-bbD059.start1
@0 /*A scarred man stands at the bar. He is unhealthily thin, and his skin has a sickly yellow tinge. One of his arms is strangely crooked, almost claw-like. Perhaps an injury prevents him from moving it normally.  */
=@1 /*The man doesn't say anything and just watches you intently with his coal-black eyes. */
END
IF~!InParty("Dakkon")~THEN REPLY @3 /*"Greetings." */ DO~~ + g-bbD059.questions
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @4 /*"Greetings." */ DO~~ + g-bbD059.dakkon1
IF~Global("Know_Gith","GLOBAL",1)~THEN REPLY @5 /*"Hail, sword-ringer." */ DO~~ + g-bbD059.courtesy
IF~Global("Know_Githyanki","GLOBAL",1)~THEN REPLY @6 /*"Hello there, githyanki." */ DO~~ + g-bbD059.attack
IF~~THEN REPLY @7 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD059 g-bbD059.start2
@9 /*The man with the crooked arm doesn't say anything. He just watches you intently from behind the bar with his coal-black eyes. */
END
IF~~THEN REPLY @11 /*"Greetings. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @12 /*"Do you have any rooms?" */ DO~StartStore("g-bb#010",LastTalkedToBy())~ EXIT
IF~Global("Know_Githyanki","GLOBAL",1)~THEN REPLY @13 /*"Hail, sword-ringer." */ DO~~ + g-bbD059.courtesy
IF~~THEN REPLY @14 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.attack
@16 /*Exactly when the wrong syllable is uttered, steel flashes. */
END
IF~~THEN REPLY @18 /*Defend yourself. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-styxhostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.courtesy
@20 /* "Spare me the pleasantries. Courtesy is Try'ig'or's Gem." */
END
IF~~THEN REPLY @22 /*"What do you mean?" */ DO~~ + g-bbD059.courtesy1
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @23 /*"Dak'kon, what does that mean?" */ DO~~ + g-bbD059.courtesy2
IF~~THEN REPLY @24 /*"In that case, I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.courtesy1
@26 /*"Try'ig'or's Gem is something often praised but essentially worthless. Like a team of heroes who help only those who are comfortable to be helped. Or a memory of youth that gives nothing but nostalgia for a distorted illusion of long-gone events." */
END
IF~Global("G-zegonstory1","GLOBAL",0)~THEN REPLY @28 /*"There has to be some story behind your attitude." */ DO~SetGlobal("G-zegonstory1","GLOBAL",1)~ + g-bbD059.story1
IF~~THEN REPLY @29 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @30 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.courtesy2
@32 /*The man notices Dak'kon. Their eyes meet for a brief moment, but neither of them seems pleased by the encounter. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @33 /*"Try'ig'or's Gem is something often praised, but really of little value." Dak'kon translates the idiom. "This gith does not *know* the point of following historical conventions." This seems like a rather unusual situation. You don't think Dak'kon views the bartender favorably. */
END
IF~Global("G-zegonstory1","GLOBAL",0)~THEN REPLY @35 /*"There have to be some reasons to reject one's community's values, right?" */ DO~SetGlobal("G-zegonstory1","GLOBAL",1)~ + g-bbD059.story1
IF~~THEN REPLY @36 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @37 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.story1
@39 /*"If you need to know, I once dealt with heroes of the sort who run from city to city asking if anyone has a job for them... this was what I got for it." He flexes his claw-shaped hand slightly. "This isn't the work of devils or demons. Even so-called 'good' beings can be stubborn enough to do terrible harm. So to spite them, I serve those they hate." */
END
IF~~THEN REPLY @42 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @43 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.questions
@45 /*"Are you ordering something? Or maybe you're interested in a bit of gambling?" */
END
IF~~THEN REPLY @47 /*"I want to order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @48 /*"Do you have any rooms?" */ DO~StartStore("g-bb#010",LastTalkedToBy())~ EXIT
IF~PartyGoldGT(0)~THEN REPLY @49 /*"I'm interested in gambling." */ DO~~ + g-bbD059.gamble
IF~Global("G-triplerquest","GLOBAL",9)~THEN REPLY @50 /*"I need the charm Paw sold you years ago." */ DO~~ + g-bbD059.tripler4
IF~GlobalGT("G-triplerquest","GLOBAL",2) GlobalLT("G-triplerquest","GLOBAL",5)~THEN REPLY @51 /*"Do you know anything about the skeleton with an obsession with threes?" */ DO~~ + g-bbD059.tripler
IF~Global("G-BBmain","GLOBAL",9)~THEN REPLY @52 /*"Are you harboring the bandits that the yagnoloths are looking for?" */ DO~~ + g-bbD059.yagna
IF~Global("G-know_joseph","GLOBAL",1) !Dead("Joseph")~THEN REPLY @53 /*"What can you tell me about Joseph? Can I find him in your establishment?" */ DO~~ + g-bbD059.joseph
IF~Global("G-zegon1","GLOBAL",0)~THEN REPLY @54 /*"Who are you? Is this your tavern?" */ DO~SetGlobal("G-zegon1","GLOBAL",1)~ + g-bbD059.zegonz
IF~Global("G-zegon1","GLOBAL",1)~THEN REPLY @55 /*"Could you tell me about yourself once more?" */ DO~~ + g-bbD059.zegonz
IF~~THEN REPLY @56 /*"Where are you from?" */ DO~~ + g-bbD059.origin1
IF~Global("G-zegonstory1","GLOBAL",0)~THEN REPLY @57 /*"What happened to your arm?" */ DO~SetGlobal("G-zegonstory1","GLOBAL",1)~ + g-bbD059.story1
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) GlobalLT("G-zagdak","GLOBAL",1)~THEN REPLY @58 /*"Do you know Dak'kon?" */ DO~~ + g-bbD059.dakkon2
IF~~THEN REPLY @59 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dakkon1
@61 /*The man seems quite busy and irritated with his workload. He serves drinks and food to the fiends. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @62 /*Dak'kon surprisingly doesn't perform his usual githzerai pleasantries, as if he knows it would be pointless.  */
END
IF~~THEN REPLY @64 /*"Dak'kon? Is everything alright?" */ DO~~ + g-bbD059.daki
IF~~THEN REPLY @65 /*"I've got a few questions, barkeep" */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @66 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.daki
@68 /*The barkeep seems to notice you are both there, but does not actively try to interact. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @69 /*"Even if you *knew* the essence of entertaining, like the gith hermit who learned all the songs of the delphons on the plane of Arborea, *know* that doing it for fiends *always* has a second meaning. Keep that in mind when you talk to this gith." */
END
IF~~THEN REPLY @71 /*"I've got a few questions, barkeep" */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @72 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.zegonz
@74 /*"My name is Zegonz Vlaric and I'm the owner of The Styx Oarsman. A Bleaker and a mage. Does this satisfy your curiosity?" */
END
IF~~THEN REPLY @76 /*"What happened to your arm?" */ DO~~ + g-bbD059.story1
IF~~THEN REPLY @77 /*"A Bleaker?" */ DO~~ + g-bbD059.bleaker1
IF~~THEN REPLY @78 /*"Where are you from?" */ DO~~ + g-bbD059.origin1
IF~~THEN REPLY @79 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @80 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.bleaker1
@82 /*"Yes, a *Bleaker*. A member of the Bleak Cabal. If you don't know them, *know* the words of truth. There's no truth. There never was." */
END
IF~~THEN REPLY @84 /*"Let's say I'm rather open to new ideas." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker2
IF~Global("Join_Dustmen","GLOBAL",1)~THEN REPLY @85 /*"I'm a Dustman. We seem to agree on some things." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker3
IF~Global("Join_Godsmen","GLOBAL",6)~THEN REPLY @86 /*"As a Godsman, I deeply believe that every life has meaning. That there must be truth. Hidden behind challenges, but there *must be*." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker4
IF~Global("Join_Sensates","GLOBAL",1)~THEN REPLY @87 /*"I'm a Sensate. Whether true or not, the Multiverse provides experiences. It doesn't matter to me whether they exist from an outside perspective, as long as I can experience them with my senses." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker5
IF~Global("Join_Chaosmen","GLOBAL",1)~THEN REPLY @88 /*"Well, I'm a Chaosman. I guess I can agree with you. Or maybe not? Or maybe yes?" */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker3
IF~Global("Join_Anarchists","GLOBAL",1)~THEN REPLY @89 /*"I'm an Anarchist. Factions are a lie based on high-ups' greed. We've got to abolish them. That's my truth." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker3
IF~~THEN REPLY @90 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @91 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.bleaker2
@93 /*"We've been operating for nine hundred years, and not for a single moment has anything happened that could credibly challenge our doctrine. But that's comforting. Since the Multiverse makes no sense, we're not limited by its nature. We can do more. We can forge our own destiny." */
END
IF~~THEN REPLY @95 /*"Maybe you're right. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @96 /*"It doesn't make sense to me but never mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @97 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.bleaker3
@99 /*"Our factions are allies, so I'll try to keep you from signing some fiendish contract... or worse. Though, you look like you can take care of yourself. Tell me one more thing, though: have you considered delving into the teachings of the Bleak Cabal?" */
END
IF~~THEN REPLY @101 /*"Let's say I'm rather open to new ideas." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker2
IF~~THEN REPLY @102 /*"I've got a few more questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @103 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.bleaker4
@105 /*"There is no love between our factions. I'm counting on you having enough in your brainbox not to start ranting about the great test among all these fiends. But so long as you're not a Guvner, a Hardhead, or one of the Mercykillers, I'll still serve you. Tell me one more thing, though: have you considered delving into the teachings of the Bleak Cabal?" */
END
IF~~THEN REPLY @107 /*"Let's say I'm rather open to new ideas." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker2
IF~~THEN REPLY @108 /*"No. I've got a few more questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @109 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.bleaker5
@111 /*"Well, you'll find a sodload of incentives here. As long as you're not a Guvner, a Hardhead, or one of the Mercykillers, I'll still serve you. Tell me one more thing, though: have you considered delving into the teachings of the Bleak Cabal?" */
END
IF~~THEN REPLY @113 /*"Let's say I'm rather open to new ideas." */ DO~SetGlobal("G-bleakfac","GLOBAL",1)~ + g-bbD059.bleaker2
IF~~THEN REPLY @114 /*"No. I've got a few more questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @115 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.yagna
@117 /*The gith opens his eyes widely. "Are you barmy? Of course *not*. I have yagnoloths drinking upstairs." */
END
IF~~THEN REPLY @119 /*"Right. I've got a different question." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @120 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.joseph
@122 /*"Not here. He's human so he wouldn't last long. Check the human taverns." */
END
IF~~THEN REPLY @124 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @125 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order
@127 /*"We've got alcohol and hot dishes. Most of them are better suited to fiends though... might cause some side effects. Consider yourself warned. What do you want?" */
END
IF~PartyGoldGT(1)~THEN REPLY @129 /*Order wheat beer. */ DO~TakePartyGold(2)~ + g-bbD059.order1
IF~PartyGoldGT(1)~THEN REPLY @130 /*Order oatmeal stout. */ DO~TakePartyGold(2)~ + g-bbD059.order2
IF~PartyGoldGT(9)~THEN REPLY @131 /*Order grain vodka. */ DO~TakePartyGold(10)~ + g-bbD059.order3
IF~PartyGoldGT(19)~THEN REPLY @132 /*Order whiskey. */ DO~TakePartyGold(20)~ + g-bbD059.order4
IF~PartyGoldGT(6)~THEN REPLY @133 /*Order heartwine. */ DO~TakePartyGold(7)~ + g-bbD059.order5
IF~PartyGoldGT(1)~THEN REPLY @134 /*Order Avner's Abyssal Ale. */ DO~TakePartyGold(2)~ + g-bbD059.order6
IF~PartyGoldGT(1)~THEN REPLY @135 /*Order Baatezu Blood Wine. */ DO~TakePartyGold(2) Damage(Protagonist,LOWER,90)~ + g-bbD059.order7
IF~PartyGoldGT(1)~THEN REPLY @136 /*Order Deva's Bile. */ DO~TakePartyGold(2) Damage(Protagonist,LOWER,150)~ + g-bbD059.order8
IF~PartyGoldGT(1)~THEN REPLY @137 /*Order droth, demon's blood. */ DO~TakePartyGold(2) FullHeal(Protagonist)~ + g-bbD059.order9
IF~PartyGoldGT(1)~THEN REPLY @138 /*Order moonhoney. */ DO~TakePartyGold(2) FullHeal(Protagonist)~ + g-bbD059.order10
IF~PartyGoldGT(1)~THEN REPLY @139 /*Order quelaerel. */ DO~TakePartyGold(2)~ + g-bbD059.order11
IF~PartyGoldGT(7)~THEN REPLY @140 /*Order Stonesulder wine. */ DO~TakePartyGold(8)~ + g-bbD059.order12
IF~PartyGoldGT(4)~THEN REPLY @145 /*Order baked death cheese. */ DO~TakePartyGold(5)~ + g-bbD059.order17
IF~PartyGoldGT(1)~THEN REPLY @146 /*Order a roasted cranium rat. */ DO~TakePartyGold(2)~ + g-bbD059.order18
IF~PartyGoldGT(1)~THEN REPLY @147 /*Order nutbread. */ DO~TakePartyGold(2)~ + g-bbD059.order19
IF~PartyGoldLT(2)~THEN REPLY @148 /*Order wheat beer. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @149 /*Order oatmeal stout. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(10)~THEN REPLY @150 /*Order grain vodka. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(20)~THEN REPLY @151 /*Order whiskey. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(7)~THEN REPLY @152 /*Order heartwine. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @153 /*Order Avner's Abyssal Ale. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @154 /*Order Baatezu Blood Wine. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @155 /*Order Deva's Bile. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @156 /*Order droth, demon's blood. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @157 /*Order moonhoney. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @158 /*Order quelaerel. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(8)~THEN REPLY @159 /*Order Stonesulder wine. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(5)~THEN REPLY @164 /*Order baked death cheese. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @165 /*Order a roasted cranium rat. */ DO~~ + g-bbD059.nomoney
IF~PartyGoldLT(2)~THEN REPLY @166 /*Order nutbread. */ DO~~ + g-bbD059.nomoney
IF~~THEN REPLY @167 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @168 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.nomoney
@170 /*"Hold on, cutter. You don't have enough jink for that." */
END
IF~~THEN REPLY @172 /*"Ah. Let me order something else then..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @173 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @174 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order1
@176 /*It is fresh and appetizing. You can feel a delicate acidity, as well as notes of citrus and spices. */
END
IF~~THEN REPLY @178 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @179 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @180 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order2
@182 /*This beer is quite strong and has a dark and complex flavor, reminiscent of coffee or chocolate. */
END
IF~~THEN REPLY @184 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @185 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @186 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order3
@188 /*The shot doesn't have much of an aroma or taste. However, it leaves a sharp aftertaste that makes you wait before ordering again. */
END
IF~~THEN REPLY @190 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @191 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @192 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order4
@194 /*A pleasant burning sensation that forces you to take your time and savor the richness of the smooth flavor with notes of spice and sweetness. */
END
IF~~THEN REPLY @196 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @197 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @198 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order5
@200 /*"Made from Outlands razorvine. A secret recipe from a city called Curst." The wine has a rich flavor: distinctly fruity and a little sour. */
END
IF~Global("AR0700_Visited","GLOBAL",1)~THEN REPLY @202 /*"I've been to Curst... this reminds me of cracked soil and the paranoid fear of betrayal." */ DO~~ + g-bbD059.curst
IF~~THEN REPLY @203 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @204 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @205 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order6
@207 /*You watch as the bartender pours you a dark ale. "It's a porter from the city of Zelatar in Azzagrat." Sensing your apprehension, he clarifies. "The middle layers of the Abyss. This porter is perfectly suitable for human consumption. Hell, they serve it at The Wandering Treant in Bytopia." He sighs and continues: "Amazing, isn't it? Even the Abyss can spew out something tasty enough to gain recognition in the Upper Planes. " The drink is strong but pleasant, with a lingering aftertaste of coffee. */
END
IF~~THEN REPLY @209 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @210 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @211 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order7
@213 /*"I'm gonna have to intervene: this would get you both very drunk and very sick. Some of the stuff here isn't for humans; it's a tavern for fiends after all. They like this stuff, and they have much more resistant stomachs." */
END
IF~~THEN REPLY @215 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @216 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @217 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order8
@219 /*"It's a dangerous drink from Samora in the Abyss. It could simply kill you. But who am I to stop you?" */
END
IF~~THEN REPLY @221 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @222 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @223 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order9
@225 /*"Yes, it's literally made from manes' blood and dhergoloths' chitin. Supposedly, it has healing effects." The taste is very salty and generally awful. */
END
IF~~THEN REPLY @227 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @228 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @229 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order10
@231 /*"Just you wait until I tell you what it's made of." The gith smiles mischievously. "The feces of the worms that burrow into the earth of the Abyss. It's valuable as it doesn't spoil, and it cures most poisons." */
END
IF~~THEN REPLY @233 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @234 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @235 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order11
@237 /*"Quelaerel..." Zegonz produces a bowl full of brown sauce. "These are cooked threebs. They're elusive leeches from the jungles and swamps of the Abyss: Gaping Maw, Slugbed, Shedaklah... places where even fiends watch where they step." The sauce is spicy in taste. It tastes a bit better than you would expect. "Among the Primers, it's a delicacy. They'd never guess how deep you have to look for these buggers." */
END
IF~~THEN REPLY @239 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @240 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @241 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order12
@243 /*The gith hands you a wine glass with yellow liquid inside. Its taste is rather strong. "It is made from crushed berries and Abyssal vines," Zegonz explains. The name comes from Arlast Stonesulder, who popularized this drink. It must be fermented in wooden barrels and requires a humid and warm environment. We often use this wine in cooking... it adds a bit of an Abyssal kick." */
END
IF~~THEN REPLY @245 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @246 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @247 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order13
@249 /*"Ah, Rashemi firewine, the national drink of Rashemen. Try it." He hands you a tall glass. The dark, reddish-brown drink feels like it burns when you swallow it. You can smell the herbs and fruits. "Berserkers used it to help awaken their rage. It was also popular with slavers to get their servants drunk and suppress their need for free will." */
END
IF~~THEN REPLY @251 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @252 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @253 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order14
@255 /*"Popular in the Underdark." The color of this drink is somewhere between purplish and amber. "You crush the mushrooms and ferment them for a few months," he explains. You suppose you could get used to that taste. */
END
IF~~THEN REPLY @257 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @258 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @259 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order15
@261 /*"It's a healing soup made of barley flour, milk, and honey. It's one of the oldest foods known to the inhabitants of the planes. I learned the recipe from my pilgrimages with the desert people. They say it comforts the sick. " As he prepares the dish, he describes what he's doing. "I add a glass of water to a broth of barley flour and bran and heat it over low heat." After five minutes, he adds a spoonful of honey and a cup of milk. The soup is thick and resembles yogurt. "Here's to you." */
END
IF~~THEN REPLY @263 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @264 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @265 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order16
@267 /*"Barleycake is a typical morningfeast dish in Faerûn. A staple of traditional dwarven cuisine, it dates back to the age of ancient Netheril. I guess some things never change. Why not try it then?" The taste is subtly earthy, with a slightly nutty flavor and a hint of sweetness. */
END
IF~~THEN REPLY @269 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @270 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @271 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order17
@273 /*"This cheese, despite its name, shouldn't kill you," Zegonz laughs. "Not that you look like someone who would be afraid of that, though. Getting the milk used in it is just piking dangerous. It comes from catoblepas, omnivorous buffaloes that can knock down even a dragon with their gaze. Blind monks who find these beasts by smell are responsible for milking them." The githzerai hands you some baked cheese. Indeed, only the name is disturbing, and the cheese, which melts pleasantly in your mouth, resembles ordinary blue cheese.
 */
END
IF~~THEN REPLY @275 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @276 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @277 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order18
@279 /*"This one will taste a lot better than what the street vendors sometimes sell at the Hive," Zegonz gloats while handing you a rat on a stick. By your reckoning, it tastes like chicken. */
END
IF~~THEN REPLY @281 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @282 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @283 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.order19
@285 /*"The fiends rarely order it, but you'll probably enjoy it. It's quite good, and popular in Bytopia. Here, smell for yourself." Indeed, the aroma makes a good impression. It looks like it's baked with carrots and almonds. You can taste a hint of sweetness in its thickly cut slices. */
END
IF~~THEN REPLY @287 /*"Let me order something else..." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @288 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @289 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin1
@291 /*"I hail from Limbo, just like many of the other githzerai. Have you heard of The Ever-Changing Chaos of Limbo?" */
END
IF~~THEN REPLY @293 /*"Yes." */ DO~~ + g-bbD059.origin2
IF~~THEN REPLY @294 /*"No." */ DO~~ + g-bbD059.origin3
CHAIN IF~~THEN g-bbD059 g-bbD059.origin2
@296 /*"Then you *know* how important willpower and discipline are there. I find those traits useful in managing an establishment such as this." */
END
IF~~THEN REPLY @298 /*"Why did you leave Limbo?" */ DO~~ + g-bbD059.origin4
IF~~THEN REPLY @299 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @300 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin3
@302 /*"Willpower and discipline are essential in a place where nothing is permanent. Limbo is made up of a tangle of elements, where matter flows smoothly between states of aggregation: solid, liquid, or gaseous. Moving around in such an environment is somewhat similar to managing an establishment like this."
 */
END
IF~~THEN REPLY @304 /*"Why did you leave Limbo?" */ DO~~ + g-bbD059.origin4
IF~~THEN REPLY @305 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @306 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin4
@308 /*"Good question. Revenge? Pragmatism? Regret? My injury? I can't tell." */
END
IF~~THEN REPLY @310 /*"What happened to your arm?" */ DO~~ + g-bbD059.story1
IF~~THEN REPLY @311 /*"Doesn't it bother you that in a city as big as Sigil, you'll probably run into githyanki? Don't you have a problem with them?" */ DO~~ + g-bbD059.origin6
IF~Global("AR13EN_Visited","GLOBAL",1) Global("G-location3","GLOBAL",0)~THEN REPLY @312 /*"I've been in Limbo, but only to a fragment that was organized like Mechanus by modrons. It wasn't how you described at all, but maybe that's a matter of a paradoxical change into something more permanent and orderly."  */ DO~~ + g-bbD059.origin5
IF~~THEN REPLY @313 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @314 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin5
@316 /*"The modrons' toy is just a small fragment of the whole. The chaos is so vast that it's certain to find pockets of order in it. Even in their ideal world there are seeds of unpredictability. A few hundred years and they may well be replaced by the formians. You know, the ants." */
END
IF~~THEN REPLY @318 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @319 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin6
@321 /*"That's a good point. Vlaakith's folly of expansion knows no bounds. It is annoying how easy the githyanki can be found in Sigil, but they wouldn't dare set foot in my tavern, so favored by dangerous fiends. If one of them were to cross my path, my guests would straighten them out quickly. They *know* it, so I'm not afraid." */
END
IF~~THEN REPLY @323 /*"You're right, expansion doesn't sound like the right solution." */ DO~~ + g-bbD059.origin7
IF~Global("Know_Githyanki","GLOBAL",1)~THEN REPLY @324 /*"The githyanki have chosen the right path. They must finish off the invaders by force, so they cannot rise again." */ DO~~ + g-bbD059.origin9
IF~~THEN REPLY @325 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @326 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin7
@328 /*"You seem to *understand*. What about something to drink now?" */
END
IF~~THEN REPLY @330 /*"Sure, I'll order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @331 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @332 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.origin9
@334 /*"Be careful. You're treading on thin ice, stranger." */
END
IF~Global("Know_Githyanki","GLOBAL",1) !InParty("Dakkon")~THEN REPLY @336 /*"What are you going to do? Vlaakith was right, githyanki should have put you all in cages." */ DO~~ + g-bbD059.attack
IF~Global("Know_Githyanki","GLOBAL",1) InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @337 /*"What are you going to do? Vlaakith was right, githyanki should have put you all in cages." */ DO~~ + g-bbD059.attack2
IF~~THEN REPLY @338 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @339 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.attack2
@341 /*Zegonz just frowns and sighs. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @342 /*"You hurt me with your words. Why do you turn my countrymen against us?" */
==g-bbd059 @343 /*Before you can say anything else, steel flashes. */
END
IF~~THEN REPLY @345 /*"Just for fun." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-2) IncrementGlobal("GOOD","GLOBAL",-1) 
IncrementGlobal("LAW","GLOBAL",-1) SetGlobal("G-styxhostile","GLOBAL",1)~ EXIT
IF~~THEN REPLY @346 /*"I slipped up..." */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("G-styxhostile","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.curst
@348 /*"I know exactly what you're talking about." */
END
IF~~THEN REPLY @350 /*"I'd like to order something else." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @351 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @352 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dakkon2
@354 /*"We met once, a long time ago. But that doesn't matter." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @355 /*"*Know* that caution was never a vice, at least not in Zerthimon's eyes." */
==g-bbd059 @356 /*"You sound exactly like that old... what was her name... Zhjaeve. She also followed the path of Zerthimon. She constantly *quoted* it, for every occasion." */
END
IF~~THEN REPLY @358 /*"I don't see anything wrong with that." */ DO~~ + g-bbD059.dakkon3
IF~~THEN REPLY @359 /*"Who is this Zhjaeve?" */ DO~~ + g-bbD059.zhjaeve
IF~~THEN REPLY @360 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @361 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dakkon3
@363 /*"What? No, of course not. You must have mistaken my normal tone for sarcasm. You see, my past and views must have changed the way I speak. I have nothing against Dak'kon or Zhjaeve. Even though I know about Dak'kon's banishment." */
END
IF~~THEN REPLY @365 /*"Who is this Zhjaeve?" */ DO~~ + g-bbD059.zhjaeve
IF~~THEN REPLY @366 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @367 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.zhjaeve
@369 /*"She's a Zerth, just like your companion. Except she hasn't lost that privilege." Zegonz pauses for a moment and chuckles to himself. "It's funny that this particular detail stuck in my memory, but she has very long fingers, even for a githzerai. I remember she was very calm and composed, often hiding her face behind a mask. She's much older than she might seem. I don't know where she went after the fall of Shra'kt'lor, I don't even know if she's still alive." */
END
IF~~THEN REPLY @371 /*"The fall of Shra'kt'lor?" */ DO~IncrementGlobal("Shrakatlor","GLOBAL",1)~ + g-bbD059.shraktlor
IF~~THEN REPLY @372 /*"I've got a few questions." */ DO~IncrementGlobal("Shrakatlor","GLOBAL",1)~ + g-bbD059.questions
IF~~THEN REPLY @373 /*"I'll be going." */ DO~IncrementGlobal("Shrakatlor","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.shraktlor
@375 /*"The former capital city of the githzerai. A heart of order amidst chaos, if you can imagine. Its stability depended on the faith and discipline of the People. When..." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @376 /*"This is neither the time nor the place to discuss Shra'kt'lor." Dak'kon visibly darkens at the mention of that place. Perhaps you should ask him privately. */
==g-bbd059 @377 /*"As you wish. But you will not regain the respect the People had for you if you continue to doubt. Forgive the hurtful words, but rebuilding Shra'kt'lor will take another hundred years or more. And even then only if..." Suddenly he seems to realize something very important. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @378 /*"You doubt too," Dak'kon realizes. "But you'd really like to *believe* as much as Zhjaeve did." */
==g-bbd059 @379 /*"Yes... but admit that after centuries of stagnation, hope is just an unnecessary burden. We all live far from our homeland, and our enemies grow ever stronger." */
END
IF~Global("Dakkon_Teach","GLOBAL",19)~THEN REPLY @381 /*"You can't think that way. Zerthimon's Circle proves it both literally and metaphorically. What the illithids did to the People lasted for centuries. Doubt visited the mind of every single githzerai." */ DO~SetGlobal("G-zagdak","GLOBAL",1) AddexperienceParty(120000) PermanentStatChange("Dakkon",WIS,RAISE,2) PermanentStatChange("Dakkon",INT,RAISE,2) PermanentStatChange("Dakkon",CHR,RAISE,2)~ + g-bbD059.shraktlor2
IF~CheckStatGT(Protagonist,14,WIS)~THEN REPLY @382 /*"Don't give up hope. Time passes, and the planes are constantly changing. We may not notice this change tomorrow, but perhaps in a hundred years... or a thousand. Perhaps our children will witness it for us. For that reason alone, it's worth fighting for." */ DO~SetGlobal("G-zagdak","GLOBAL",1) AddexperienceParty(120000) PermanentStatChange("Dakkon",WIS,RAISE,1) PermanentStatChange("Dakkon",INT,RAISE,1) PermanentStatChange("Dakkon",CHR,RAISE,1)~ + g-bbD059.shraktlor3
IF~CheckStatLT(Protagonist,15,WIS)~THEN REPLY @383 /*"Don't lose hope, it will definitely get better... eventually." */ DO~SetGlobal("G-zagdak","GLOBAL",1)
  AddexperienceParty(30000) PermanentStatChange("Dakkon",CHR,RAISE,1)~ + g-bbD059.shraktlor4
IF~~THEN REPLY @384 /*"You're right. It's better to abandon hope. It's just a burden that multiplies our pain." */ DO~SetGlobal("G-zagdak","GLOBAL",1)  AddexperienceParty(30000) PermanentStatChange("Dakkon",CHR,LOWER,1) PermanentStatChange("Dakkon",DEX,RAISE,1)~ + g-bbD059.shraktlor5
IF~GlobalGT("Join_Godsmen","GLOBAL",0)~THEN REPLY @385 /*"This is just another test on the path to divinity. Don't give up, my friends." */ DO~SetGlobal("G-zagdak","GLOBAL",1)  AddexperienceParty(60000) PermanentStatChange("Dakkon",CON,RAISE,2)~ + g-bbD059.shraktlor4
IF~GlobalGT("Join_Dustmen","GLOBAL",0)~THEN REPLY @386 /*"You are right. Fighting only takes you further away from the True Death. It is best to abandon such passions." */ DO~SetGlobal("G-zagdak","GLOBAL",1)  AddexperienceParty(60000) PermanentStatChange("Dakkon",CHR,LOWER,2) PermanentStatChange("Dakkon",INT,RAISE,2)~ + g-bbD059.shraktlor5
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @387 /*"Whatever the outcome, it will be worth experiencing it. For it's the journey that counts and the sensations you feel along the way." */ DO~SetGlobal("G-zagdak","GLOBAL",1)
  AddexperienceParty(60000) PermanentStatChange("Dakkon",CHR,RAISE,1) PermanentStatChange("Dakkon",INT,RAISE,2)~ + g-bbD059.shraktlor4
IF~GlobalGT("Join_Anarchists","GLOBAL",0)~THEN REPLY @388 /*"Instead of sticking to the hierarchical past, the githzerai should create an anarchic society based on voluntary cooperation, self-government, and equality." */ DO~SetGlobal("G-zagdak","GLOBAL",1)  AddexperienceParty(60000) PermanentStatChange("Dakkon",DEX,RAISE,2)~ + g-bbD059.shraktlor6
CHAIN IF~~THEN g-bbD059 g-bbD059.shraktlor2
@390 /*Since you have learned Zerthimon's Unbroken Circle, you *know* what you are talking about. Zegonz sees this. He is silent for a moment, but then nods approvingly. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @391 /*Dak'kon quietly looks away, lost in thought. Something inside him changed when he heard your words. You sense that, since your earlier one-on-one conversation, he has been missing someone of his own kin who could confirm the theories he had learned. Now he became something *more* than before. */
==g-bbd059 @392 /*"Thank you. That... I need to think about it. Would you like something to drink?" */
END
IF~~THEN REPLY @394 /*"Great idea. I'll order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @395 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @396 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.shraktlor3
@398 /*He is silent for a moment, but then nods approvingly. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @399 /*Dak'kon quietly looks away, lost in thought. Something inside him changed when he heard your words. */
==g-bbd059 @400 /*"Thank you. That... I need to think about it. Would you like something to drink?" */
END
IF~~THEN REPLY @402 /*"Great idea. I'll order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @403 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @404 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.shraktlor4
@406 /*Zegonz does not seem convinced. It is as if your argumentation was lacking substance. */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @407 /*Dak'kon quietly looks away, lost in thought. Something inside him changed when he heard your words. */
==g-bbd059 @408 /*"I need to think about it. Would you like something to drink?" */
END
IF~~THEN REPLY @410 /*"Great idea. I'll order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @411 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @412 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.shraktlor5
@414 /*"See?" He sighs. "There's no point in dwelling on it." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @415 /*Dak'kon quietly looks away, lost in thought. Something inside him changed when he heard your words. */
==g-bbd059 @416 /*"Would you like something to drink?" */
END
IF~~THEN REPLY @418 /*"Great idea. I'll order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @419 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @420 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.shraktlor6
@422 /*"I never looked at it that way. It's a rather subversive way of thinking. But... the githzerai do have a saying... 'To write the book of the Anarchs.' It means to 'demonstrate incredible wisdom.' Who knows, maybe there's something to your words." */
==DDakkon IF ~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID) NearbyDialog("DDakkon")~ THEN @423 /*Dak'kon quietly looks away, lost in thought. Something inside him changed when he heard your words. */
==g-bbd059 @424 /*"I need to think about it. Would you like something to drink?" */
END
IF~~THEN REPLY @426 /*"Great idea. I'll order something." */ DO~~ + g-bbD059.order
IF~~THEN REPLY @427 /*"I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @428 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.gamble
@430 /*"As for gambling options, we can simply play dice, or, if you're interested, you can bet on the results of the cranium rat races. The locals love it. There's also a lottery if you prefer something less intense." */
==g-bbd059 IF~Global("g-usedcoinonzegonz","GLOBAL",1)~THEN @431 /*Zegonz corrects himself. "But... since the last accident, we haven't gathered any new rats yet, so the race is currently unavailable." */
END
IF~~THEN REPLY @433 /*"Let's play dice." */ DO~~ + g-bbD059.dice
IF~Global("g-usedcoinonzegonz","GLOBAL",0)~THEN REPLY @434 /*"I want to bet on the outcome of a cranium rat race." */ DO~~ + g-bbD059.ratrace
IF~~THEN REPLY @435 /*"I want to buy a lottery ticket." */ DO~~ + g-bbD059.lottery
IF~~THEN REPLY @436 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @437 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dicer
@439 /*"As with many things in the multiverse, there are three possibilities. You win if you roll a natural 7 or 11. You lose if you roll a 2, 3, or 12. Any other number means we keep rolling. There's a more complex version but we won't be playing that. In my tavern, the only winning and losing numbers are the ones I mentioned." */
END
IF~~THEN REPLY @441 /*"Got it." */ DO~~ + g-bbD059.dice
IF~~THEN REPLY @442 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
CHAIN IF~~THEN g-bbD059 g-bbD059.dice
@444 /*Zegonz pulls out a pair of dice. "Let's play then. How much do you want to bet?" */
END
IF~PartyGoldGT(1)~THEN REPLY @446 /*"One copper common." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",3) TakePartyGold(1)~ + g-bbD059.dice0
IF~PartyGoldGT(5)~THEN REPLY @447 /*"Five copper coins." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",15) TakePartyGold(5)~ + g-bbD059.dice0
IF~PartyGoldGT(10)~THEN REPLY @448 /*"Ten copper coins." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",30)TakePartyGold(10)~ + g-bbD059.dice0
IF~PartyGoldGT(50)~THEN REPLY @449 /*"Fifty copper coins." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",150) TakePartyGold(50)~ + g-bbD059.dice0
IF~PartyGoldGT(100)~THEN REPLY @450 /*"A hundred copper coins." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",300) TakePartyGold(100)~ + g-bbD059.dice0
IF~PartyGoldGT(500)~THEN REPLY @451 /*"Five hundred copper coins." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",1500) TakePartyGold(500)~ + g-bbD059.dice0
IF~PartyGoldGT(1000)~THEN REPLY @452 /*"A thousand copper coins." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0) SetGlobal("g-dice1","GLOBAL",3000) TakePartyGold(1000)~ + g-bbD059.dice0
IF~~THEN REPLY @453 /*"Tell me the rules first." */ DO~~ + g-bbD059.dicer
IF~~THEN REPLY @454 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @455 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice0
@457 /*Zegonz takes the dice and shakes them in a cup. Finally, he throws them on the counter... [SKELW02] */
END
IF~Global("G-dice","GLOBAL",2) ~THEN REPLY @459 /*Check the result. */ DO~~ + g-bbD059.dice2
IF~Global("G-dice","GLOBAL",3) ~THEN REPLY @460 /*Check the result. */ DO~~ + g-bbD059.dice3
IF~Global("G-dice","GLOBAL",4) ~THEN REPLY @461 /*Check the result. */ DO~~ + g-bbD059.dice4
IF~Global("G-dice","GLOBAL",5) ~THEN REPLY @462 /*Check the result. */ DO~~ + g-bbD059.dice5
IF~Global("G-dice","GLOBAL",6) ~THEN REPLY @463 /*Check the result. */ DO~~ + g-bbD059.dice6
IF~Global("G-dice","GLOBAL",7) ~THEN REPLY @464 /*Check the result. */ DO~~ + g-bbD059.dice7
IF~Global("G-dice","GLOBAL",8) ~THEN REPLY @465 /*Check the result. */ DO~~ + g-bbD059.dice8
IF~Global("G-dice","GLOBAL",9) ~THEN REPLY @466 /*Check the result. */ DO~~ + g-bbD059.dice9
IF~Global("G-dice","GLOBAL",10) ~THEN REPLY @467 /*Check the result. */ DO~~ + g-bbD059.dice10
IF~Global("G-dice","GLOBAL",11) ~THEN REPLY @468 /*Check the result. */ DO~~ + g-bbD059.dice11
IF~Global("G-dice","GLOBAL",12) ~THEN REPLY @469 /*Check the result. */ DO~~ + g-bbD059.dice12
CHAIN IF~~THEN g-bbD059 g-bbD059.dice2
@471 /*Both dice came up one. "Snake eyes. Sorry, you lost." [NAM062] */
END
IF~~THEN REPLY @473 /*"I want to try once again." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice
IF~~THEN REPLY @474 /*"Tell me about the rules again." */ DO~~ + g-bbD059.dicer
IF~~THEN REPLY @475 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @476 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice3
@478 /*"Three. Sorry, you lost." [NAM062] */
END
IF~~THEN REPLY @480 /*"I want to try once again." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice
IF~~THEN REPLY @481 /*"Tell me about the rules again." */ DO~~ + g-bbD059.dicer
IF~~THEN REPLY @482 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @483 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice4
@485 /*"Four. I'll roll again." */
END
IF~~THEN REPLY @487 /*Observe. */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice0
IF~~THEN REPLY @488 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice5
@490 /*"Five. I'll roll again." */
END
IF~~THEN REPLY @492 /*Observe. */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice0
IF~~THEN REPLY @493 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice6
@495 /*"Six. I'll roll again." */
END
IF~~THEN REPLY @497 /*Observe. */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice0
IF~~THEN REPLY @498 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice7
@500 /*"Lucky seven! You won." [NAM031] */
END
IF~~THEN REPLY @502 /*Take your prize. */ DO~SetGlobal("g-dice","GLOBAL",0) GiveObjectGoldGlobal("g-dice1","GLOBAL",Protagonist)~ + g-bbD059.win
CHAIN IF~~THEN g-bbD059 g-bbD059.dice8
@504 /*"Eight. I'll roll again." */
END
IF~~THEN REPLY @506 /*Observe. */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice0
IF~~THEN REPLY @507 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice9
@509 /*"Nine. I'll roll again." */
END
IF~~THEN REPLY @511 /*Observe. */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice0
IF~~THEN REPLY @512 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice10
@514 /*"Ten. I'll roll again." */
END
IF~~THEN REPLY @516 /*Observe. */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice0
IF~~THEN REPLY @517 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.dice11
@519 /*"Eleven! You won." [NAM031] */
END
IF~~THEN REPLY @521 /*Take your prize. */ DO~SetGlobal("g-dice","GLOBAL",0) GiveObjectGoldGlobal("g-dice1","GLOBAL",Protagonist)~ + g-bbD059.win
CHAIN IF~~THEN g-bbD059 g-bbD059.dice12
@523 /*"Twelve. Sorry, you lost." [NAM062] */
END
IF~~THEN REPLY @525 /*"I want to try once again." */ DO~SetGlobalRandomPlus("g-dice","GLOBAL",2,6,0)~ + g-bbD059.dice
IF~~THEN REPLY @526 /*"Tell me about the rules again." */ DO~~ + g-bbD059.dicer
IF~~THEN REPLY @527 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @528 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.win
@530 /*"Do you want to play again?" */
END
IF~~THEN REPLY @532 /*"Let's play dice." */ DO~SetGlobal("g-dice1","GLOBAL",0) SetGlobal("g-ratrace1","GLOBAL",0)~ + g-bbD059.dice
IF~Global("g-usedcoinonzegonz","GLOBAL",0)~THEN REPLY @533 /*"I want to bet on the outcome of a cranium rat race." */ DO~SetGlobal("g-dice1","GLOBAL",0) SetGlobal("g-ratrace1","GLOBAL",0)~ + g-bbD059.ratrace
IF~~THEN REPLY @534 /*"I changed my mind. I've got a few questions." */ DO~SetGlobal("g-dice1","GLOBAL",0) SetGlobal("g-ratrace1","GLOBAL",0)~ + g-bbD059.questions
IF~~THEN REPLY @535 /*"I'll be going." */ DO~SetGlobal("g-dice1","GLOBAL",0) SetGlobal("g-ratrace1","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.ratrace
@537 /*"Alright then. How much do you want to bet?" */
END
IF~PartyGoldGT(1)~THEN REPLY @539 /*"One copper common." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",3) TakePartyGold(1)~ + g-bbD059.ratrace1
IF~PartyGoldGT(5)~THEN REPLY @540 /*"Five copper coins." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",15) TakePartyGold(5)~ + g-bbD059.ratrace1
IF~PartyGoldGT(10)~THEN REPLY @541 /*"Ten copper coins." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",30)TakePartyGold(10)~ + g-bbD059.ratrace1
IF~PartyGoldGT(50)~THEN REPLY @542 /*"Fifty copper coins." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",150) TakePartyGold(50)~ + g-bbD059.ratrace1
IF~PartyGoldGT(100)~THEN REPLY @543 /*"A hundred copper coins." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",200) TakePartyGold(100)~ + g-bbD059.ratrace1
IF~PartyGoldGT(500)~THEN REPLY @544 /*"Five hundred copper coins." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",1500) TakePartyGold(500)~ + g-bbD059.ratrace1
IF~PartyGoldGT(1000)~THEN REPLY @545 /*"A thousand copper coins." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0) SetGlobal("g-ratrace1","GLOBAL",3000) TakePartyGold(1000)~ + g-bbD059.ratrace1
IF~~THEN REPLY @546 /*"Tell me the rules first." */ DO~~ + g-bbD059.ratracer
IF~~THEN REPLY @547 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @548 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.ratracer
@550 /*"It's very simple. You choose which rat you want to bet on. If they reach the finish line first, or at least outlive the competition, you win the prize." */
END
IF~~THEN REPLY @552 /*"I get it now." */ DO~~ + g-bbD059.ratrace
IF~~THEN REPLY @553 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
CHAIN IF~~THEN g-bbD059 g-bbD059.ratrace1
@555 /*"Which cranium rat are you betting on?" Looking at the rats, you cannot tell any of them apart.  */
END
IF~~THEN REPLY @557 /*"Ra'at." */ DO~SetGlobal("g-crat6","GLOBAL",1)~ + g-bbD059.ratrace2
IF~~THEN REPLY @558 /*"Silver Bullet." */ DO~SetGlobal("g-crat6","GLOBAL",2)~ + g-bbD059.ratrace2
IF~~THEN REPLY @559 /*"Dorimeameno." */ DO~SetGlobal("g-crat6","GLOBAL",3)~ + g-bbD059.ratrace2
IF~~THEN REPLY @560 /*"Chuck." */ DO~SetGlobal("g-crat6","GLOBAL",4)~ + g-bbD059.ratrace2
IF~~THEN REPLY @561 /*"Algernon." */ DO~SetGlobal("g-crat6","GLOBAL",5)~ + g-bbD059.ratrace2
IF~~THEN REPLY @562 /*"Erika." */ DO~SetGlobal("g-crat6","GLOBAL",6)~ + g-bbD059.ratrace2
CHAIN IF~~THEN g-bbD059 g-bbD059.ratrace2
@564 /*Shadows coil in the corners, whispering wagers as the githzerai rings a cracked bell situated by the counter. Tiny claws scratch against the mosaic floor of the Styx Oarsman in anticipation of the starting signal. When the bell rings for the second time, the six tiny creatures dart through the maze of bones and glass shards. They scratch at each other and an occasional spark of psionic energy can be seen jumping between them. The crowd howls. Blood, pieces of fur, and copper coins fly as the rats lunge for the finish line, where Zegonz waits in silence to see which one is first... [CRRAT02] */
END
IF~Global("g-coinoffate","GLOBAL",2) PartyHasItem("g-bbi099")~THEN REPLY @566 /*Take the Greater Coin of Fate out of your pocket and toss it into the air. */ DO~DestroyPartyItem("g-bbi099",1) SetGlobal("g-usedcoinonzegonz","GLOBAL",1)~ + g-bbD059.racecoin
IF~Global("g-ratrace","GLOBAL",6)~THEN REPLY @567 /*Look at the winning rat. */ DO~~ + g-bbD059.ratracewin
IF~GlobalLT("g-ratrace","GLOBAL",6)
~THEN REPLY @568 /*Look at the winning rat. */ DO~~ + g-bbD059.ratracelose
CHAIN IF~~THEN g-bbD059 g-bbD059.ratracewin
@570 /*Zegonz grabs the frightened cranium rat which crossed the finish line first with his "good" hand, and lifts it up to get a closer look. [CRRAT01] */
==g-bbd059 IF~Global("g-crat6","GLOBAL",1)~THEN @571 /*"It's Ra'at!" he announces. This is the rat you bet your money on. "Congratulations, berk. The winnings are yours." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",2)~THEN @572 /*"It's Silver Bullet!" he announces. This is the rat you bet your money on. "Congratulations, berk. The winnings are yours." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",3)~THEN @573 /*"It's Dorimeameno!" he announces. This is the rat you bet your money on. "Congratulations, berk. The winnings are yours." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",4)~THEN @574 /*"It's Chuck!" he announces. This is the rat you bet your money on. "Congratulations, berk. The winnings are yours." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",5)~THEN @575 /*"It's Algernon!" he announces. This is the rat you bet your money on. "Congratulations, berk. The winnings are yours." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",6)~THEN @576 /*"It's Erika!" he announces. This is the rat you bet your money on. "Congratulations, berk. The winnings are yours." */
END
IF~~THEN REPLY @578 /*Take your prize. */ DO~SetGlobal("g-dice","GLOBAL",0) GiveObjectGoldGlobal("g-ratrace1","GLOBAL",Protagonist) SetGlobal("g-crat6","GLOBAL",0)~ + g-bbD059.win
CHAIN IF~~THEN g-bbD059 g-bbD059.ratracelose
@580 /*Zegonz grabs the frightened cranium rat which crossed the finish line first with his "good" hand, and lifts it up to get a closer look. [CRRAT01] */
=@581 /*"...and, unfortunately, another rat wins." [CRRAT08] */
END
IF~~THEN REPLY @583 /*"I want to try once again." */ DO~SetGlobalRandomPlus("g-ratrace","GLOBAL",1,6,0)~ + g-bbD059.ratrace
IF~~THEN REPLY @584 /*"Tell me about the rules again." */ DO~~ + g-bbD059.ratracer
IF~~THEN REPLY @585 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @586 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.racecoin
@588 /*As the Coin of Fate hovers in the air, it begins to spark with electricity. Before it even begins to fall, a ball of lightning bursts through the door of the "Styx Oarsman." [CHAIN03] */
=@589 /*It tears through the ground floor, dodging the busy tables and patrons, but... devastating the cranium rat racetrack. Almost all of them immediately burst into flames. It seems that only one remains. The lucky one, overcome by panic, crosses the finish line at the speed of sound and lands in Zegonz's hands. [CHAIN05] */
=@590 /*The Greater Coin of Fate falls with a soft clink onto the floor and crumbles to dust. [KNOCK05] */
==g-bbd059 IF~Global("g-crat6","GLOBAL",1)~THEN @591 /*"It's Ra'at!" he announces. This is the rat you bet your money on. "Congratulations, berk... Looks like the winnings are yours," says Zegonz uncertainly, echoed by a chorus of disgruntled fiends. "Now... we need to clean up a bit..." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",2)~THEN @592 /*"It's Silver Bullet" he announces. This is the rat you bet your money on. "Congratulations, berk... Looks like the winnings are yours," says Zegonz uncertainly, echoed by a chorus of disgruntled fiends. "Now... we need to clean up a bit..." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",3)~THEN @593 /*"It's Dorimeameno!" he announces. This is the rat you bet your money on. "Congratulations, berk... Looks like the winnings are yours," says Zegonz uncertainly, echoed by a chorus of disgruntled fiends. "Now... we need to clean up a bit..." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",4)~THEN @594 /*"It's Chuck!" he announces. This is the rat you bet your money on. "Congratulations, berk... Looks like the winnings are yours," says Zegonz uncertainly, echoed by a chorus of disgruntled fiends. "Now... we need to clean up a bit..." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",5)~THEN @595 /*"It's Algernon!" he announces. This is the rat you bet your money on. "Congratulations, berk... Looks like the winnings are yours," says Zegonz uncertainly, echoed by a chorus of disgruntled fiends. "Now... we need to clean up a bit..." */
==g-bbd059 IF~Global("g-crat6","GLOBAL",6)~THEN @596 /*"It's Erika!" he announces. This is the rat you bet your money on. "Congratulations, berk... Looks like the winnings are yours," says Zegonz uncertainly, echoed by a chorus of disgruntled fiends. "Now... we need to clean up a bit..." */
END
IF~~THEN REPLY @598 /*Take your prize and leave. */ DO~SetGlobal("g-dice","GLOBAL",0) GiveObjectGoldGlobal("g-ratrace1","GLOBAL",Protagonist) SetGlobal("g-crat6","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler
@600 /*The old githzerai is busy polishing some small, green, U-shaped object and does not seem to notice you. After a moment, he speaks up. "Oh, Tripler? He's been coming here for many years. Not that Tripler is his real name, that's just what we call him. He first showed up a few years ago and comes back every cycle. He must be connected to this place in some way, maybe he lived around here when he was alive." */
END
IF~~THEN REPLY @602 /*"Nobody managed to recognize him?" */ DO~~ + g-bbD059.tripler2
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler2
@604 /*"It was difficult to recognize anything. His body was already starting to decompose, and his face was smashed to a pulp. Maybe that's what drove him crazy." */
=@605 /*"Tripler, as you yourself noticed, has some absurd obsession. He literally does everything in threes. He wanders through all three taverns in the Ditch. He spends equal time in each of them, dividing each cycle into three parts. Every time he comes in, he holds up three fingers, ordering three mugs of beer. He pays for them three times, then drinks them, that is, pours them through his bones, in three 'gulps.'" */
=@606 /*"Then, he arranges them into a perfect triangle and stares at it for a solid three hours, standing there in his puddle of beer like he's petrified. Only then does he leave and I can start cleaning... At least he pays..." */
END
IF~~THEN REPLY @608 /*"Thrice? Have you ever wondered why?" */ DO~AddexperienceParty(3333)~ + g-bbD059.tripler3
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler3
@610 /*"I think there's something hidden beneath this obsession. Perhaps some suffering? Something that keeps him 'alive.' But that's just my guess. He's not much of a talker." */
=@611 /*"Actually... There was a local *scientist* here once. His name was Krauss Schneider. I think he might have been a Sensate... or a Xaositect? Anyway, he was interested in Tripler, so maybe he knows something more? But I don't know where you'd find scientists by the Ditch." */
END
IF~~THEN REPLY @613 /*"That's something to go on. Thanks for your help. I'll be on on my way." */ DO~SetGlobal("G-triplerquest","GLOBAL",5)~ SOLVED_JOURNAL @20232 + g-bbD059.triplerend1
IF~~THEN REPLY @614 /*"I also have other issues to discuss." */ DO~SetGlobal("G-triplerquest","GLOBAL",5)~ SOLVED_JOURNAL @20232 + g-bbD059.questions
CHAIN IF~~THEN g-bbD059 g-bbD059.triplerend1
@616 /*"Feel free to reach out." Zegonz goes back to cleaning the mugs. */
END
IF~~THEN REPLY @618 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler4
@620 /*Zegonz interrupts his usual routine. He is clearly out of his comfort zone, and it takes him a moment to carefully answer your question. "How do you know about him, huh?" */
END
IF~~THEN REPLY @622 /*"Paw told me." */ DO~~ + g-bbD059.tripler5
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler5
@624 /*The githzerai narrows his eyes suspiciously. "That's impossible, cutter. Paw died several years ago." */
END
IF~~THEN REPLY @626 /*"Nine years ago, right? Three times three years. Paw has been visiting your tavern all this time. You've been serving him unknowingly, day after day. He always paid three times over, didn't that ever make you wonder?" */ DO~~ + g-bbD059.tripler6
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler6
@628 /*At these words, Zegonz freezes in shock. He places his hands on the counter and sighs. "But... how?" */
END
IF~~THEN REPLY @630 /*"It's a long story. He fell victim to a curse, and the amulet is what sustains it. That's why I have to take it, and then Paw... or Tripler, will finally be able to rest." */ DO~~ + g-bbD059.tripler7
CHAIN IF~~THEN g-bbD059 g-bbD059.tripler7
@632 /*"But does that mean he won't come here anymore?" Zegonz seems worried but quickly catches himself. "I mean... blood must be suffering badly... Take this amulet. Do whatever you want with it. Paw was a good cutter and deserves some peace." Zegonz pulls a green jawbone out of his pocket and hands it to you. */
END
IF~~THEN REPLY @634 /*Take the jawbone and leave. */ DO~GiveItemCreate("g-bbi115",Protagonist,1,1,0) DestroyItemObject("g-bbi115","g-bb059",1)  SetGlobal("G-triplerquest","GLOBAL",10) ~ SOLVED_JOURNAL @20237 EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.lottery
@636 /*"A lottery ticket costs 10 copper coins." Zegonz takes out a parchment with a table. It has 10 columns and 5 rows. "The odds of winning are 1 in 50. Place your copper coins on the square you predict. If you get it right, you'll win 8000 copper coins. If you don't, I take your jink. Sounds fair enough?" Next to the parchment, he places a box with small tablets. They have numbers on them. */
END
IF~PartyGoldGT(9)~THEN REPLY @638 /*Bet ten copper coins for your chosen number. */ DO~SetGlobalRandomPlus("g-lottery","GLOBAL",1,50,0) TakePartyGold(10)~ + g-bbD059.lottery1
IF~PartyGoldLT(10)
~THEN REPLY @639 /*"I think I don't have enough money. Let's talk about something else." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @640 /*"I changed my mind. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @641 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.lottery1
@643 /*The money has been placed. Besides you, a few fiends placed their bets. The bartender dips his "good" hand into the box with the numbers. He rummages around for a moment with his eyes closed and eventually retrieves a single, lone, tablet... [SKELW02] */
END
IF~GlobalLT("G-lottery","GLOBAL",2)~THEN REPLY @645 /*Look at the tablet. */ DO~GiveGoldForce(8000)~ + g-bbD059.lotterywin
IF~GlobalGT("G-lottery","GLOBAL",1)~THEN REPLY @646 /*Look at the tablet. */ DO~~ + g-bbD059.lotterylose
CHAIN IF~~THEN g-bbD059 g-bbD059.lotterywin
@648 /*The tablet displays your selected number, which Zegons calls out, much to the other fiends' dismay. You have won 8000 copper coins. [NAM031] */
END
IF~PartyGoldGT(9)~THEN REPLY @650 /*"I'd like to try again." */ DO~SetGlobalRandomPlus("g-lottery","GLOBAL",1,50,0) TakePartyGold(10)~ + g-bbD059.lottery1
IF~PartyGoldLT(10)
~THEN REPLY @651 /*"I think I don't have enough money for another round. Let's talk." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @652 /*"Enough. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @653 /*"I'll be going." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD059 g-bbD059.lotterylose
@655 /*Zegonz announces the winning number. Unfortunately, this is not the number you placed your bet on. [NAM062] */
END
IF~PartyGoldGT(9)~THEN REPLY @657 /*"I'd like to try again." */ DO~SetGlobalRandomPlus("g-lottery","GLOBAL",1,50,0) TakePartyGold(10)~ + g-bbD059.lottery1
IF~PartyGoldLT(10)
~THEN REPLY @658 /*"I think I don't have enough money for another round. Let's talk." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @659 /*"Enough. I've got a few questions." */ DO~~ + g-bbD059.questions
IF~~THEN REPLY @660 /*"I'll be going." */ DO~~ EXIT