BEGIN g-bbD157
CHAIN IF~NumTimesTalkedTo(0) Global("g-debtpeoplealert","GLOBAL",0) Global("g-saunamove","GLOBAL",0)~THEN g-bbD157 g-bbD157.start1
@0 /*Standing at the back of the room is an unusually short and stocky man dressed in a light white robe. In one hand, he holds a silver tray filled with various objects. With his other hand, he rummages through them, as if to check that everything is in order. At first glance, you can see various fans, fabrics, and even a bowl of ice chunks on it. */
=@1 /*Finally, he notices you approaching and speaks up. "Welcome to my sauna! So, what can this dwarf do for you?" He takes a closer look at you. "I hope you're not a Sensate, are you?" */
==DGrace IF~Global("Join_Sensates","GLOBAL",0)~THEN @2 /*"I feel as if I'm not welcome here." */
==DGrace IF~Global("Join_Sensates","GLOBAL",1)~THEN @3 /*"I feel as if we're not welcome here." */
==g-bbd157 IF~Global("Join_Sensates","GLOBAL",1)~THEN @4 /*The sauna master takes a closer look at you. His eyes land on your faction badge. "Ah... So you *are* one. Well, too bad... but we can always have a nice chat." */
==g-bbd157 IF~Global("Join_Sensates","GLOBAL",0)~THEN @5 /*The sauna master takes a closer look at you. "You don't look like a Sensate. So no problem." */
==g-bbd157 IF~GlobalGT("Join_Sensates","GLOBAL",1)~THEN @6 /*The sauna master takes a closer look at you. "Honestly? You look like a Sensate who got disillusioned with their faction and left. All the more reason to welcome you." */
END
IF~~THEN REPLY @8 /*"Greetings. A dwarf? I haven't talked to many of them." */ DO~~ + g-bbD157.dwarf1
IF~!Global("Join_Sensates","GLOBAL",1)~THEN REPLY @9 /*"Greetings. I'd like to order a sauna session." */ DO~~ + g-bbD157.session
IF~~THEN REPLY @10 /*"Greetings. I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @11 /*"Greetings. What is on this tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @12 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("Join_Sensates","GLOBAL",1) Global("G-val_sensatecomment","GLOBAL",0) Global("g-debtpeoplealert","GLOBAL",0) Global("g-saunamove","GLOBAL",0)~THEN g-bbD157 g-bbD157.sensateleave
@14 /*The dwarf bows slightly. "You're here again, traveler. Is there something you need?" */
=@15 /*"Something's changed... The Sensate badge? Gone? Could it be that the prospect of my sauna finally convinced you to leave them? In such case, a warm welcome to you!" */
END
IF~~THEN REPLY @17 /*"Yes, I've left their faction, but I only have a few questions today." */ DO~SetGlobal("G-val_sensatecomment","GLOBAL",1) StartStore("g-bb#008",LastTalkedToBy()) ~ + g-bbD157.questions
IF~~THEN REPLY @18 /*"Yes, I left their faction, can I rest here?" */ DO~SetGlobal("G-val_sensatecomment","GLOBAL",1) StartStore("g-bb#008",LastTalkedToBy()) ~ EXIT
IF~~THEN REPLY @19 /*"Exactly. I'd like to finally book that sauna session." */ DO~SetGlobal("G-val_sensatecomment","GLOBAL",1) StartStore("g-bb#008",LastTalkedToBy()) ~ + g-bbD157.session
IF~~THEN REPLY @20 /*Leave. */ DO~SetGlobal("G-val_sensatecomment","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-debtpeoplealert","GLOBAL",0) Global("g-saunamove","GLOBAL",0)~THEN g-bbD157 g-bbD157.start2
@22 /*The dwarf bows slightly. "You're here again, traveler. Is there something you need?" */
END
IF~~THEN REPLY @24 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @25 /*"Can I rest here?" */ DO~StartStore("g-bb#008",LastTalkedToBy()) ~ EXIT
IF~Global("Join_Sensates","GLOBAL",1)~THEN REPLY @26 /*"I'd like to order a sauna session." */ DO~~ + g-bbD157.sensates
IF~!Global("Join_Sensates","GLOBAL",1)~THEN REPLY @27 /*"I'd like to order a sauna session." */ DO~~ + g-bbD157.session
IF~~THEN REPLY @28 /*Leave. */ DO~~ EXIT
CHAIN IF~Global("g-debtpeoplealert","GLOBAL",1) Global("g-saunamove","GLOBAL",0)~THEN g-bbD157 g-bbD157.start3
@30 /*"No, I don't want to die! I will go run a sauna someplace else!" */
END
IF~~THEN REPLY @32 /*"Fine." */ DO~EscapeArea()~ EXIT
IF~~THEN REPLY @33 /*"No. You die alongside your Fated friends." */ DO~Enemy() ForceAttack(Protagonist,Myself) IncrementGlobal("GOOD","GLOBAL",-1)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sensates
@35 /*"As a Sensate, you can't use our sauna, those are the rules. But we can always have a nice chat." The dwarf shrugs. */
END
IF~~THEN REPLY @37 /*"I have some questions, then." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @38 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.questions
@40 /*"Ask away, I'll do my best to answer" */
END
IF~~THEN REPLY @42 /*"What can you tell me about yourself?" */ DO~~ + g-bbD157.self
IF~!Dead("g-bb201")~THEN REPLY @43 /*"What can you tell me about Ulfbrand?" */ DO~~ + g-bbD157.ulf
IF~~THEN REPLY @44 /*"What can you tell me about the Fated?" */ DO~~ + g-bbD157.fated
IF~~THEN REPLY @45 /*"What's on your tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @46 /*"Can I rest here?" */ DO~StartStore("g-bb#008",LastTalkedToBy()) ~ EXIT
IF~Global("Join_Sensates","GLOBAL",1)~THEN REPLY @47 /*"I'd like to order a sauna session." */ DO~~ + g-bbD157.sensates
IF~!Global("Join_Sensates","GLOBAL",1)~THEN REPLY @48 /*"I'd like to order a sauna session." */ DO~~ + g-bbD157.session
IF~~THEN REPLY @49 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items0
@52 /*The man is pleased with your attention. He brings the tray closer so you can get a better look. "Which of the items piqued your interest?" */
END
IF~~THEN REPLY @54 /*"The fans." */ DO~~ + g-bbD157.items1
IF~~THEN REPLY @55 /*"Glass vials with mysterious liquid." */ DO~~ + g-bbD157.items3
IF~~THEN REPLY @56 /*"This large spoon." */ DO~~ + g-bbD157.items4
IF~~THEN REPLY @57 /*"The bucket." */ DO~~ + g-bbD157.items5
IF~~THEN REPLY @58 /*"Ice chunks." */ DO~~ + g-bbD157.items6
IF~~THEN REPLY @59 /*"The twigs." */ DO~~ + g-bbD157.items7
IF~~THEN REPLY @60 /*"I have some other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @61 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items1
@63 /*"The fans help me distribute the hot steam and aromas evenly throughout the sauna. Some people like it when the heat wave hits them directly. Take Ulfbrand, for example, he's a regular here." */
END
IF~~THEN REPLY @65 /*"What else is on your tray?" */ DO~~ + g-bbD157.items0
IF~!Dead("g-bb201")~THEN REPLY @66 /*"What can you tell me about Ulfbrand?" */ DO~~ + g-bbD157.ulf
IF~~THEN REPLY @67 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @68 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items3
@70 /*"These vials contain aromatic oils. They enhance the overall experience, relax, and help clear the respiratory tract." */
END
IF~~THEN REPLY @72 /*"What else is on your tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @73 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @74 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items4
@76 /*"This dipper is for scooping up water. I pour the water onto the heated stones, creating steam. This distributes the heat throughout the sauna." */
END
IF~~THEN REPLY @78 /*"What else is on your tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @79 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @80 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items5
@82 /*"This bucket makes it easy to pour water onto the stones. I use it to create steam. It helps me control the temperature and humidity." */
END
IF~~THEN REPLY @84 /*"What else is on your tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @85 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @86 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items6
@88 /*"We use traditional bariaur techniques to collect and store ice. We do all of this without using magic, which would obviously be impossible here. The ice is infused with essential oils, and when it melts, their aroma is released. It also helps regulate the humidity in the room." */
END
IF~~THEN REPLY @90 /*"Why can't magic be used here?" */ DO~~ + g-bbD157.magic
IF~~THEN REPLY @91 /*"What else is on your tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @92 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @93 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.items7
@95 /*"These birch whisks are for lashing the body." She makes a sharp movement with her hand. "They improve circulation and blood flow to the hit areas. The pain cleanses the body, which makes you feel better. I hope you're not afraid of a little pain? Although, looking at you... I highly doubt it." */
END
IF~~THEN REPLY @97 /*"What else is on your tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @98 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @99 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.magic
@101 /*"Ulfbrand isn't fond of magic. He and his buddies prefer real strength, the kind that comes from muscle." */
==g-bbd157 IF~Class(Protagonist,Mage)~THEN @102 /*"Sometimes that's a problem for some guests. Not for you, I hope." */
==g-bbd157 IF~!Class(Protagonist,Mage)~THEN @103 /*"You look like you understand, " he comments with a smile. */
END
IF~~THEN REPLY @105 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @106 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.self
@109 /*At first, he raises his eyebrows and pauses for a moment, as if confessing were a bad idea, but he eventually answers. "Well, since you're interested... My name is Valrún Sigursson. I'm a sauna master, and I'm from here... I mean, from Himinborg. I don't know what else to say. Some people call me Sigur's Rose." */
END
IF~~THEN REPLY @111 /*"How did you become a sauna master?" */ DO~~ + g-bbD157.self1
IF~~THEN REPLY @112 /*"What can you tell me about Himinborg?" */ DO~~ + g-bbD157.himin
IF~~THEN REPLY @113 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @114 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.himin
@116 /*"It's part of Heimdall's realm. The city is also known as the Cliffs of Heaven. That's where the Bifrost lands from the Prime Material, and you can sail there from Glorium, the plane's gate-town, so most travelers to Ysgard pass through there. A beautiful fortress... I think. I've never been to any other city... aside from the occasional visit to Sigil. But the lack of sunlight and the ever-present stench don't exactly encourage a return to that 'city'. My previous sauna was located in Himinborg, but Ulfbrand offered me a job up here. The conditions are better here, and there are fewer... riffraff." */
END
IF~~THEN REPLY @118 /*"How did you become a sauna master?" */ DO~~ + g-bbD157.self1
IF~~THEN REPLY @119 /*"Who is this god, Heimdall?" */ DO~~ + g-bbD157.heimdal
IF~~THEN REPLY @120 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @121 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.heimdal
@123 /*"He's an aesir guardian god. He has several temples in Himinborg, and... he often shows up there in person, strolling through the streets. But I don't truly know his teachings. I'm a follower of Moradin, as befits a proper dwarf." */
END
IF~~THEN REPLY @125 /*"How did you become a sauna master?" */ DO~~ + g-bbD157.self1
IF~~THEN REPLY @126 /*"Moradin? Could you tell me about him?" */ DO~~ + g-bbD157.dwarf2
IF~~THEN REPLY @127 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @128 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.self1
@131 /*"It's a family tradition. The Battle Wolf wouldn't choose just anyone for this task. My family has been building and tending saunas in Asgard for centuries, so as soon as I came of age... And dwarves are considered adults at the age of 50... I've spent enough time with fans and scented oils to achieve a level of mastery that's pretty much out of reach for humans. Sometimes I feel sorry for them, living such short lives." */
END
IF~GlobalLT("g-saunalife","GLOBAL",1)~THEN REPLY @133 /*"I have lived a bit longer than the average human. Although I can't say how long." */ DO~~ + g-bbD157.lifespan
IF~~THEN REPLY @134 /*"I have questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @135 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.lifespan
@137 /*"But probably not more than 400 years, right? That's how long my longest-lived relatives lived. In that case, I'm curious if you took advantage of that opportunity and mastered a particular field better than anyone else." */
END
IF~~THEN REPLY @139 /*"I've probably lived longer than that. Unfortunately, I've forgotten a lot, and I only remember things when I experience them again." */ DO~~ + g-bbD157.lifespan2
CHAIN IF~~THEN g-bbD157 g-bbD157.lifespan2
@141 /*"I feel for you... If I forgot how to build and operate saunas, I think I'd lose what defines me. It would be like... I'd cease to exist." */
END
IF~~THEN REPLY @143 /*"You're right. Above all, what we learn and master shapes who we are." */ DO~SetGlobal("g-saunalife","GLOBAL",1)~ + g-bbD157.lifespan3
IF~~THEN REPLY @144 /*"You're wrong. It's not our skills that define us. There are a whole host of other factors that determine who we are." */ DO~SetGlobal("g-saunalife","GLOBAL",2)~ + g-bbD157.lifespan4
CHAIN IF~~THEN g-bbD157 g-bbD157.lifespan3
@146 /*"My talent is taking care of the sauna. Maybe yours is rhetoric? You're better at putting my thoughts into words. You're as silver-tongued as Björn Hammarskold. Talking isn't my thing, I prefer working with hot water." */
END
IF~~THEN REPLY @148 /*"I have questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @149 /*"Who is Björn Hammarskold?" */ DO~~ + g-bbD157.hammarskold
IF~~THEN REPLY @150 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.lifespan4
@152 /*"I've never thought of it that way. Maybe I focus too much on work... or maybe I just don't like to overthink things." The dwarf shrugs, a helpless expression spreading across his broad face. "What else can I do but do what I do best?" */
END
IF~~THEN REPLY @154 /*"I have questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @155 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.hammarskold
@157 /*"He is the commander of Himinborg and also belongs to the Fated faction. He took power on Heimdall's orders. He is a powerful man with far-reaching influence." */
END
IF~~THEN REPLY @159 /*"What can you tell me about the Fated?" */ DO~~ + g-bbD157.fated
IF~~THEN REPLY @160 /*"What can you tell me about Himinborg?" */ DO~~ + g-bbD157.himin
IF~~THEN REPLY @161 /*"Who is this Heimdall?" */ DO~~ + g-bbD157.heimdal
IF~~THEN REPLY @162 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @163 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.dwarf1
@167 /*"And where are you from? Sigil? There's a sizable dwarf population there, but they probably don't hang around the streets. We're everywhere, we have several major settlements in the Outer Planes. There are many of us here in Ysgard, but even more in the three mountains of our dwarven deities." */
=@168 /*"In the Outlands lies the Dwarven Mountain, the shared seat of Dugmaren, Dumathoin, and Vergadain. In Arcadia lies Mount Clangeddin, belonging, of course, to Clangeddin Silverbeard. Finally on Mount Celestia, in Erackinor, does our royal couple reside: the Revered Mother Berronar Truesilver and the All-Father Moradin, who rules over all the Morndinsamman. That is to say... our pantheon." */
END
IF~~THEN REPLY @170 /*"Moradin? Could you tell me about your god?" */ DO~~ + g-bbD157.dwarf2
IF~~THEN REPLY @171 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @172 /*"What is on this tray?" */ DO~~ + g-bbD157.items0
IF~~THEN REPLY @173 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.dwarf2
@175 /*"They call him the Soul Forger or the Dwarffather. He is a good and wise god, specializing in blacksmithing, and his symbols are the hammer and the anvil. My clan may have turned to saunas, but that doesn't change the fact that Moradin remains our chief deity. Even here in Ysgard, where Odin's pantheon reigns supreme, our identity is closely tied to the Morndinsamman." The dwarf falls silent and ponders for a moment, then asks, "And you? Do you have a god of your own?" */
END
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @177 /*"Gods seem to have forsaken me." */ DO~~ + g-bbD157.god1
IF~!Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @178 /*"No, I don't." */ DO~~ + g-bbD157.god1
IF~Global("G-kiaransaleefollower","GLOBAL",1)~THEN REPLY @179 /*"I do in fact... The Lady of the Dead, Kiaransalee." */ DO~~ + g-bbD157.god2
IF~~THEN REPLY @180 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @181 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.god1
@183 /*"Oh, right. Well..." The man looks gloomy. "Maybe you'll find it someday, maybe not. Faith isn't the key to happiness for everyone. I wish you well either way." */
END
IF~~THEN REPLY @185 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @186 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.god2
@188 /*"Oh... a drow deity?" The sauna master starts to sweat profusely and he laughs nervously. "How unusual... I didn't expect this. Of course, everything's fine, I have nothing against Kiaransalee or her followers. I don't know much about the drow pantheon, I only know that there are a number of Eilistraee's followers in Ysgard." */
END
IF~Global("g-know_eilistraee","GLOBAL",0)~THEN REPLY @190 /*"Eilistraee? Who's that?" */ DO~SetGlobal("g-know_eilistraee","GLOBAL",1)~ + g-bbD157.eilistraee
IF~~THEN REPLY @191 /*"I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @192 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.eilistraee
@194 /*"All I know is that she sometimes stays in Svartalfheim, the deepest layer of Ysgard. She's the goddess of song, dance, beauty, and things like that. I think she's Lolth's daughter." */
END
IF~~THEN REPLY @196 /*"She does not sound like an ally. I have some other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @197 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.ulf
@200 /*"Ulfbrand Völgarsson Baunaætari... What can I possibly say about him? My employer, a half-giant einheri who heads the Debt Collection. He reports directly to Rowan Darkwood. A magnificent warrior with a thousand heroic deaths and hundreds of thousands of defeated foes to his name. He's not someone to be taken lightly. Perhaps he could even teach you a thing or two, if you're a warrior *and* have plenty of copper." */
END
IF~Global("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @202 /*"Are you speaking literally, when you mention a thousand deaths?" */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",2)~ + g-bbD157.ulf1
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @203 /*"Are you speaking literally, when you mention a thousand deaths?" */ DO~~ + g-bbD157.ulf1
IF~GlobalGT("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @204 /*"An einheri? What does it mean?" */ DO~~ + g-bbD157.ulf2
IF~Global("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @205 /*"An einheri? What does it mean?" */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",1)~ + g-bbD157.ulf2
IF~~THEN REPLY @206 /*"What do you think of Rowan Darkwood?" */ DO~~ + g-bbD157.rowan
IF~~THEN REPLY @207 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @208 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.ulf1
@210 /*"Not exactly. I meant a *very large* number. No one would count them, because no one cares. It's part of our everyday life. Ulf is reborn every morning when he stays in Ysgard. This earthberg, however, is a special case, because his strong connection to this hall means he cannot be harmed here at all." */
END
IF~GlobalLT("g-FatedPower","GLOBAL",1)~THEN REPLY @212 /*"So what's the special case really about? Why is he impossible to hurt?" */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",3)~ + g-bbD157.ulf3s
IF~!GlobalLT("g-FatedPower","GLOBAL",1)~THEN REPLY @213 /*"So what's the special case really about? Why is he impossible to hurt?" */ DO~~ + g-bbD157.ulf3f
IF~~THEN REPLY @214 /*"You mentioned Ulfbrand being an 'einheri'. What did you mean?" */ DO~~ + g-bbD157.ulf2
IF~~THEN REPLY @215 /*"What do you think of Rowan Darkwood?" */ DO~~ + g-bbD157.rowan
IF~~THEN REPLY @216 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @217 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.ulf2
@219 /*"This is a special *type* of petitioner in Asgard, the first layer of Ysgard. Warriors who believe in life after death and 'correspond' to the melody played by our plane appear here as eternal berserkers, the einherjar. That is how Ulfbrand came to be here. Although he is a special case... in many respects. It would be better to ask him about those 'respects'." */
END
IF~~THEN REPLY @221 /*"Let's get back to the subject of a thousand deaths. Did you mean that literally?" */ DO~~ + g-bbD157.ulf1
IF~~THEN REPLY @222 /*"What do you think of Rowan Darkwood?" */ DO~~ + g-bbD157.rowan
IF~~THEN REPLY @223 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @224 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.ulf3f
@226 /*"I don't know." The sauna master smiles helplessly. "Like I said, special case." */
END
IF~~THEN REPLY @228 /*"What do you think of Rowan Darkwood?" */ DO~~ + g-bbD157.rowan
IF~~THEN REPLY @229 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @230 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.ulf3s
@232 /*The sauna master grows serious and sighs. "I might as well... tell you, because everything here is about to collapse... Ulfbrand is a figure of extraordinary willpower. His own faith in his faction and in his own might brings his vision to life. He draws energy directly from the plane and uses it as a shield. But lately, the Fated have been rapidly losing influence, and the same is happening in his department. I don't know how much longer he'll remain untouchable." */
END
IF~~THEN REPLY @234 /*"Very interesting... What do you think of Rowan Darkwood?" */ DO~~ + g-bbD157.rowan
IF~~THEN REPLY @235 /*"Very interesting... I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @236 /*"Very interesting... Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.fated
@238 /*"They focus on active engagement, not passivity. They promote hard work, dedication, and initiative... These are values that resonate with me as a dwarf. Ysgard is the perfect place for their ideology, and I'm glad they're so influential here, which is why I'll never open a sauna in Sigil. The pay would certainly be better, but it's full of cony-catchers and hustlers who'd try to cheat the system. Here, in the Upper Planes, there's simply no room for lazy crooks." */
END
IF~~THEN REPLY @240 /*"What do you think of Rowan Darkwood?" */ DO~~ + g-bbD157.rowan
IF~~THEN REPLY @241 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @242 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.rowan
@244 /*"A great man. He was Heimdall's own lieutenant, so his name is well known in Himinborg. They say he's a very shrewd planewalker, and he's certainly the right man for the job as the factol of the Fated." */
END
IF~~THEN REPLY @246 /*"What do you think of the Fated?" */ DO~~ + g-bbD157.fated
IF~~THEN REPLY @247 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @248 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.session
@251 /*"Do you know the rules or do you need me to remind you?" */
END
IF~~THEN REPLY @253 /*"Tell me about the rules." */ DO~SetGlobal("g-saunarules","GLOBAL",1)~ + g-bbD157.rules
IF~Global("g-saunarules","GLOBAL",1)~THEN REPLY @254 /*"I know the rules." */ DO~~ + g-bbD157.session2
IF~~THEN REPLY @255 /*"I've changed my mind, I'll go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.rules
@257 /*"I'll try to keep this brief. First of all, it's best not to eat for two hours before your session, and to undress and wash thoroughly." */
=@258 /*"In the sauna, the higher you go, the hotter it gets, so depending on your preference, you can sit lower or higher. First, lay down the cloth, then sit on it with your bare body, making sure you're completely on the cloth. The floor can get quite hot." */
=@259 /*"The session lasts about fifteen minutes. If at any point you feel unwell, don't push yourself, just leave. If you've been lying down during the session, sit up for a moment before standing. Then head..." */
END
IF~~THEN REPLY @261 /*"To the bath." */ DO~~ + g-bbD157.rules4
IF~~THEN REPLY @262 /*"Outside?" */ DO~~ + g-bbD157.rules5
CHAIN IF~~THEN g-bbD157 g-bbD157.rules4
@264 /*"That's right. You need to wash off all that sweat. Then you should rest for at least as long as you were inside. And... that's it." */
END
IF~~THEN REPLY @266 /*"Let's begin." */ DO~~ + g-bbD157.session2
IF~~THEN REPLY @267 /*"I've changed my mind but I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @268 /*"I've changed my mind, I'll go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.rules5
@270 /*"Not so fast. You need to wash off all that sweat. Then you should rest for at least as long as you were inside. And... that's it." */
END
IF~~THEN REPLY @272 /*"Let's begin." */ DO~~ + g-bbD157.session2
IF~~THEN REPLY @273 /*"I've changed my mind but I have some questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @274 /*"I've changed my mind, I'll go now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.session2
@276 /*"I will charge you twenty copper coins." */
END
IF~GlobalGT("g-ulfend","GLOBAL",0)~THEN REPLY @278 /*"What about the discount for helping Ulfbrand with his problem?" */ DO~~ + g-bbD157.session3
IF~PartyGoldGT(19)~THEN REPLY @279 /*Pay 20 coppers. */ DO~TakePartyGold(20)~ + g-bbD157.session4
IF~PartyGoldLT(20)~THEN REPLY @280 /*"I don't have that much money." */ DO~~ + g-bbD157.session5
IF~~THEN REPLY @281 /*"I have other questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @282 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.session3
@284 /*"Oh yes, for completing his task you can bask in the sauna as much as you want. He'll pay me." */
END
IF~~THEN REPLY @286 /*"Now that we've got the payment issue out of the way..." */ DO~~ + g-bbD157.session6
CHAIN IF~~THEN g-bbD157 g-bbD157.session4
@288 /*The dwarf puts the copper coins into his pocket and miraculously, his tray does not tip significantly. It maintains perfect balance. */
END
IF~~THEN REPLY @290 /*"Now that we've got the payment issue out of the way..." */ DO~ActionOverride(Player2,JumpToPoint([1108.867])) ActionOverride(Player3,JumpToPoint([1108.867])) ActionOverride(Player4,JumpToPoint([1108.867])) ActionOverride(Player5,JumpToPoint([1108.867])) ActionOverride(Player6,JumpToPoint([1108.867]))~ + g-bbD157.session6
CHAIN IF~~THEN g-bbD157 g-bbD157.session5
@292 /*The dwarf looks at you with eyes full of compassion. "You poor man, you don't even have copper?" */
END
IF~~THEN REPLY @294 /*"No. But I do have questions." */ DO~~ + g-bbD157.questions
IF~~THEN REPLY @295 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.session6
@297 /*"It doesn't matter to me how many people are inside. The cost is the same. Is anyone going in with you?" */
END
IF~~THEN REPLY @299 /*"I'll go alone." */ DO~~ + g-bbD157.sessionx
IF~NumInPartyGT(1)~THEN REPLY @300 /*Ask your companions if they want to come with. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @301 /*"I've changed my mind, I'll leave now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.session7
@303 /*Who do you want to invite? */
END
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID)~THEN REPLY @305 /*Invite Morte. */ DO~ActionOverride("Morte",JumpToPoint([1318.635]))~ + g-bbD157.saumor
IF~InParty("Dakkon") !StateCheck("Dakkon",CD_STATE_NOTVALID)~THEN REPLY @306 /*Invite Dak'kon. */ DO~ActionOverride("Dakkon",JumpToPoint([1354.640]))~ + g-bbD157.saudak
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID)~THEN REPLY @307 /*Invite Annah. */ DO~ActionOverride("Annah",JumpToPoint([1469.666]))~ + g-bbD157.sauann
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID)~THEN REPLY @308 /*Invite Fall-from-Grace. */ DO~~ + g-bbD157.saugrac
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)~THEN REPLY @309 /*Invite Ignus. */ DO~ActionOverride("Ignus",JumpToPoint([1213.538]))~ + g-bbD157.sauign
IF~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID)~THEN REPLY @310 /*Invite Vhailor. */ DO~~ + g-bbD157.sauvha
IF~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID)~THEN REPLY @311 /*Invite Nordom. */ DO~~ + g-bbD157.saunor
IF~~THEN REPLY @312 /*"I'll go alone." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @313 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.saumor
@315 /*The sauna master hesitates for a moment. "I'm not sure if this makes sense. Your friend is just a *skull*, you know that?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @316 /*"Heat can enhance bone density and strength. I really need that." */
END
IF~NumInPartyGT(1)~THEN REPLY @318 /*Ask your other companions if they want to come with you. */ DO~SetGlobal("g-saumor","GLOBAL",1)~ + g-bbD157.session7
IF~~THEN REPLY @319 /*"Let's start." */ DO~SetGlobal("g-saumor","GLOBAL",1)~ + g-bbD157.sessionx
IF~~THEN REPLY @320 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.saudak
@322 /*The sauna master invites you with a hand gesture. He sees no problem. */
END
IF~NumInPartyGT(1)~THEN REPLY @324 /*Ask your other companions if they want to come with you. */ DO~SetGlobal("g-saudak","GLOBAL",1)~ + g-bbD157.session7
IF~~THEN REPLY @325 /*"Let's start." */ DO~SetGlobal("g-saudak","GLOBAL",1)~ + g-bbD157.sessionx
IF~~THEN REPLY @326 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sauann
@328 /*The sauna master invites you with a hand gesture. He sees no problem. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @329 /*"I dunno..." She hesitates for a moment. "I've never been into such rich folk nonsense, but... I trust ye." [ANA210D] */
END
IF~NumInPartyGT(1)~THEN REPLY @331 /*Ask your other companions if they want to come with you. */ DO~SetGlobal("g-sauann","GLOBAL",1)~ + g-bbD157.session7
IF~~THEN REPLY @332 /*"Let's start." */ DO~SetGlobal("g-sauann","GLOBAL",1)~ + g-bbD157.sessionx
IF~~THEN REPLY @333 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.saugrac
@335 /*The sauna master raises his index finger, but hesitates before reacting. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @336 /*"I only remove my clothes when... Well, actually... Never." [FFG183] */
END
IF~~THEN REPLY @338 /*"I take it this means you're unlikely to be convinced?" */ DO~~ + g-bbD157.sauffg1
IF~NumInPartyGT(1)~THEN REPLY @339 /*Ask your other companions if they want to come with you. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @340 /*"Let's start." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @341 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sauffg1
@343 /*"Actually..." the dwarf begins shyly. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @344 /*"I apologize but this would violate a certain status quo that I would like to see remain unchanged for some time to come. I am sure you understand and can respect that." */
==g-bbd157 @345 /*"If it helps, Lady Grace is a well-known member of the Society of Sensation. And they're not allowed in the sauna anyway..." */
END
IF~NumInPartyGT(1)~THEN REPLY @347 /*Ask your other companions if they want to come with you. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @348 /*"Let's start." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @349 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sauign
@351 /*"Wait, wait, wait..." The sauna master reacts quickly, but even so, he hesitates for a moment and looks as if he is counting something in his head. */
=@352 /*"I was about to bar him entry... but on the other hand, I think we could use the heat from your companion's flames... Somehow he is still burning despite the magic barrier, so it must be the purest form of heat, straight from the Elemental Plane of Fire." The dwarf steps closer and whispers, as if in fear that the Fated might hear him. "How about... putting him into the furnace?" */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @353 /**"The flames hunger for the blistering of flesh..."* [IGN115] */
END
IF~~THEN REPLY @355 /*"Agreed, that's an interesting idea." */ DO~SetGlobal("g-sauign","GLOBAL",1)~ + g-bbD157.sauign1
IF~NumInPartyGT(1)~THEN REPLY @356 /*"I'd rather not." Ask your other companions if they want to come with you. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @357 /*"I'd rather not. Let's start." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @358 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sauign1
@360 /*"Excellent. I will make the appropriate arrangements..." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @361 /**"Yessss."* [IGN095] */
==g-bbd157 @362 /*"Thank you. This is going to be interesting." */
END
IF~NumInPartyGT(1)~THEN REPLY @364 /*Ask your other companions if they want to come with you. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @365 /*"Let's start." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @366 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sauvha
@368 /*The sauna master hesitates for a moment and examines the armor closely. "Sir, there's no one physically inside it. I won't let you bring *armor* into the sauna, it'll just get ruined, and it won't do the person inside any good." */
==DVhail IF ~InParty("Vhail") !StateCheck("Vhail",CD_STATE_NOTVALID) NearbyDialog("DVhail")~ THEN @369 /**I will wait here.* [VHA181] */
END
IF~NumInPartyGT(1)~THEN REPLY @371 /*Ask your other companions if they want to come with you. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @372 /*"Let's start." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @373 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.saunor
@375 /*The sauna master hesitates for a moment and looks carefully at the modron. "I'm not sure if staying in the heat is beneficial for a modron..." */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @376 /*"Nordom wishes to speak. Issue: Modrons' resistance. Answer: Modrons generally have partial resistance to heat, cold, and acid. Fire-based attacks can damage modrons if they reach very extreme temperatures. However, a modron's physique differs from humans, githzerai, dwarves, and other races. Prolonged exposure to high temperatures can lead to overheating, but this does not offer the chance of positive effects as with some other races. Recommendations: Nordom should not use saunas due to the risk of overheating and the lack of potential benefits." [NOR169] */
==g-bbd157 @377 /*"There you have your answer. Let's not risk it." */
END
IF~NumInPartyGT(1)~THEN REPLY @379 /*Ask your other companions if they want to come with you. */ DO~~ + g-bbD157.session7
IF~~THEN REPLY @380 /*"Let's start." */ DO~~ + g-bbD157.sessionx
IF~~THEN REPLY @381 /*"I've changed my mind, I'll leave now." */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sessionx
@383 /*"Perfect. I'll get everything ready, and before the sauna, please come to the bathhouse. You need to wash yourself thoroughly." */
END
IF~~THEN REPLY @385 /*Go wash yourself. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0)~ + g-bbD157.bath
CHAIN IF~~THEN g-bbD157 g-bbD157.bath
@387 /*You head to a small side room hidden behind a wooden door, where you find a barrel of water and a ladle for pouring water over yourself. After hanging your outer garments on a hook, you plunge your rough, scarred hands into the crystal-clear water. */
==g-bbd157 IF~CheckStatGT(Protagonist,16,CON)~THEN @388 /*It is freezing cold, but that is no problem for you. Your senses are dulled by constant fighting and sleeping in the worst dives, caves, and rubbish heaps. And soon, you will have to brave the deadly cold of Cania, the eighth circle of the Hells. The cold cannot scare you. */
==g-bbd157 IF~!CheckStatGT(Protagonist,16,CON)~THEN @389 /*It is brutally icy. Your hands instinctively pull back, shaking off the freezing drops clinging to them. After a moment, however, you try again, and the second time your perception of the temperature feels slightly more numb. Thank goodness. After all, soon you will have to cross the deadly cold of Cania, the eighth circle of the Hells. The cold cannot scare you. */
==g-bbd157 IF~GlobalGT("GOOD","GLOBAL",10)~THEN @390 /*After a few brisk minutes, your body is clean. A moment of reflection washes over you. How much would you give to be able to be able to clear your conscience, or wipe your past, so easily? You freeze in place, letting the chill spread through your body, but your moment of frozen meditation is interrupted by knocking. */
==g-bbd157 IF~!GlobalGT("GOOD","GLOBAL",10)~THEN @391 /*After a few brisk minutes, your body is clean. The cold is... intriguing, it reminds you a little of death, which is, after all, no stranger to you. You freeze in place, letting the chill spread through your body, but your moment of frozen meditation is interrupted by knocking. */
==g-bbd157 @392 /*"Ready yet?" The sauna master's muffled voice comes from behind the door. */
END
IF~~THEN REPLY @394 /*Wrap yourself in the supplied cloth and go to the sauna. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) ActionOverride(Player1,JumpToPoint([1401.647])) SetGlobal("g-saunamove","GLOBAL",1)~ EXIT
CHAIN IF~Global("g-saunamove","GLOBAL",2)~THEN g-bbD157 g-bbD157.sauna1
@396 /*You return to the room, which the sauna master has prepared in the meantime. In the center, the stove is already lit, and the floor is quite hot. You can choose from three rows of benches. */
END
IF~~THEN REPLY @398 /*Choose the lowest bench. */ DO~SetGlobal("g-saunamove","GLOBAL",0) SetGlobal("g-saunaignusprocessed","GLOBAL",0)
SetGlobal("g-saunadakkonprocessed","GLOBAL",0)
SetGlobal("g-saunaannaprocessed","GLOBAL",0)
SetGlobal("g-saunamorteprocessed","GLOBAL",0)
~ + g-bbD157.sauna2a
IF~~THEN REPLY @399 /*Choose the middle bench. */ DO~SetGlobal("g-saunamove","GLOBAL",0) SetGlobal("g-saunaignusprocessed","GLOBAL",0)
SetGlobal("g-saunadakkonprocessed","GLOBAL",0)
SetGlobal("g-saunaannaprocessed","GLOBAL",0)
SetGlobal("g-saunamorteprocessed","GLOBAL",0)
~ + g-bbD157.sauna2b
IF~~THEN REPLY @400 /*Choose the highest bench. */ DO~SetGlobal("g-saunamove","GLOBAL",0) SetGlobal("g-saunaignusprocessed","GLOBAL",0)
SetGlobal("g-saunadakkonprocessed","GLOBAL",0)
SetGlobal("g-saunaannaprocessed","GLOBAL",0)
SetGlobal("g-saunamorteprocessed","GLOBAL",0)
~ + g-bbD157.sauna2c
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna2a
@402 /*You take off your cloth and, following the sauna master's instructions, place it on the bench, then sit down on it. Here, on the lowest bench, it is not that hot, there is just a gentle warmth around you. */
END
IF~~THEN REPLY @404 /*Relax. */ DO~~ + g-bbD157.sauna3
IF~~THEN REPLY @405 /*Change to the middle bench. */ DO~~ + g-bbD157.sauna2b
IF~~THEN REPLY @406 /*Change to the highest bench. */ DO~~ + g-bbD157.sauna2c
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna2b
@408 /*You take off your cloth and, following the sauna master's instructions, place it on the bench, then sit down on it. Here, on the middle bench, it is just right. It is warm, yes, but not too hot yet. */
END
IF~~THEN REPLY @410 /*Relax. */ DO~~ + g-bbD157.sauna3
IF~~THEN REPLY @411 /*Change to the lowest bench. */ DO~~ + g-bbD157.sauna2a
IF~~THEN REPLY @412 /*Change to the highest bench. */ DO~~ + g-bbD157.sauna2c
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna2c
@414 /*You take off your cloth and, following the sauna master's instructions, place it on the bench, then sit down on it. You get the feeling that it is going to get really hot up here on the top bench during the session. */
END
IF~~THEN REPLY @416 /*Relax. */ DO~~ + g-bbD157.sauna3
IF~~THEN REPLY @417 /*Change to the middle bench. */ DO~~ + g-bbD157.sauna2b
IF~~THEN REPLY @418 /*Change to the lowest bench. */ DO~~ + g-bbD157.sauna2a
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna3
@420 /*You sit quietly, waiting for the sauna master to return after finishing his preparations. The air is warm, but you know that this is really just the beginning of the experience and it is going to get even hotter in here. */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @421 /*Morte flies over to the lowest bench, holding his cloth in his teeth. He settles onto it, landing motionless on the wooden surface. When he is not floating in the air or slapping his jaw, he looks almost like an ordinary human skull, forgotten by some careless necromancer. */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @422 /*Dak'kon settles into the top bench and calmly waits for the session to begin. He closes his eyes and breathes steadily. He looks as though he has used services like this before and gives the impression of a monk meditating in silence. */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @423 /*Annah sits down on the middle bench, closes her eyes, and tries to relax. She clearly finds it a bit hard to sit still, as this experience is definitely not something she is used to. */
==DIgnus IF~Global("g-sauign","GLOBAL",1)~THEN @424 /*Ignus is in the furnace, just as planned. Through the steam, you can almost see him writhing inside. Every now and then, you hear his maniacal laughter, so he is definitely enjoying himself in there. [IGN052B] */
END
IF~~THEN REPLY @426 /*Continue. */ DO~~ + g-bbD157.sauna4
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna4
@428 /*Sauna master Val enters the room armed with his full set of unusual tools and speaks in a friendly yet formal tone. "Welcome to the sauna session. You already know the rules. Please make sure your entire body is on the cloth, including your feet." */
=@429 /*Soon, the sauna master pours cold water on the stove, and you hear the characteristic hissing sound. It does not take long before he uses a ladle to break up the first block of ice; there are still two more blocks left on the tray. [g-sauna] */
END
IF~~THEN REPLY @431 /*Continue. */ DO~~ + g-bbD157.sauna5
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna5
@433 /*The sauna master begins the first round by walking around the room, using a fan to direct waves of heat toward the benches. You feel the heat building, and a wonderful aroma fills your nostrils. You cannot remember the last time you were able to take such a deep and pleasant breath. It is a wonderful and refreshing feeling. [SWI_02D] */
END
IF~~THEN REPLY @435 /*Raise your arms to feel more warmth. */ DO~~ + g-bbD157.sauna6
IF~~THEN REPLY @436 /*Sit still. */ DO~~ + g-bbD157.sauna6
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna6
@438 /*The sauna master moves on and continues fanning. [SWI_05A] */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @439 /*"Ugh!" Morte bobs a bit having felt the wave of hot air. "I don't know if it isn't self-suggestion, but I feel like I have my skin again." [MRT075C] */
==g-bbd157 IF~Global("g-saumor","GLOBAL",1)~THEN @440 /*The sauna master places a finger on his lips with his free hand to remind Morte to be quiet. */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @441 /*Dak'kon sits calmly, as if the temperature meant nothing to him. In this state of concentration, his apparent old age and weariness look unmistakably like dignity and discipline. Perhaps this moment of rest and distance from the problems of the multiverse allows him to forget the heavy burden of his experiences. */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @442 /*Annah had relaxed a little, she rested her hands on the bench and tilted her head back. She also swishes her tail gently, as if in time with the sauna master's fan. At one point, she catches your gaze, barely for a split second, but immediately looks away. Beads of sweat begin to glisten on her pale skin. */
==DIgnus IF~Global("g-sauign","GLOBAL",1)~THEN @443 /*Ignus keeps writhing, and the faster he does, the hotter it gets all around. You would not think you could survive such high temperatures without being burned alive. Ignus' flames are usually meant for destruction, but it seems they can also be used in a pleasant way. *"I live!"* [IGN001] */
END
IF~~THEN REPLY @445 /*Continue. */ DO~~ + g-bbD157.sauna7
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna7
@447 /*You hear the characteristic hissing again. The sauna master shatters the second ice chunk and begins another round. [g-sauna] */
END
IF~CheckStatGT(Protagonist,15,CON)~THEN REPLY @449 /*Raise your arms to feel more warmth. */ DO~~ + g-bbD157.sauna8a
IF~CheckStatGT(Protagonist,15,CON)~THEN REPLY @450 /*Sit still. */ DO~~ + g-bbD157.sauna8a
IF~CheckStatLT(Protagonist,16,CON)~THEN REPLY @451 /*Raise your arms to feel more warmth. */ DO~Damage(Protagonist,LOWER,1)~ + g-bbD157.sauna8b
IF~CheckStatLT(Protagonist,16,CON)~THEN REPLY @452 /*Sit still. */ DO~Damage(Protagonist,LOWER,1)~ + g-bbD157.sauna8b
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna8a
@454 /*This time, the scent is a little different, though it is hard to pinpoint exactly what it is. You already know what the session entails, and you calmly endure the rising temperature. */
END
IF~~THEN REPLY @456 /*Continue. */ DO~~ + g-bbD157.sauna9
IF~~THEN REPLY @457 /*Exit the sauna. */ DO~TeleportParty("arg-p2",[1108.867],4) ~ + g-bbD157.saunaend
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna8b
@459 /*This time, the scent is slightly different, though you find it hard to pinpoint. You already know what this experience entails, and you look ahead to the moments to come with skepticism. The rising temperature becomes increasingly unbearable until, finally, your body nears the limit of its endurance. */
END
IF~~THEN REPLY @461 /*Continue. */ DO~~ + g-bbD157.sauna9
IF~~THEN REPLY @462 /*Exit the sauna. */ DO~TeleportParty("arg-p2",[1108.867],4) ~ + g-bbD157.saunaend
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna9
@464 /*The sauna master moves on and continues fanning. [SWI_05A] */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @465 /*Morte seems to have realized that his feelings were somehow phantom and that he probably would not be hurt. However, he decided to take the suggestion of silence to heart and suddenly stopped chattering. It is a welcome change. */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @466 /*Dak'kon remains steadfast and almost motionless in his position, enduring the increasingly intense waves of heat with dignity. */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @467 /*Annah is handling the rising temperatures very well. It seems that the abyssal heritage is definitely a factor in this equation. The real test, however, seems to be her ability to stay in one place. Despite this, she ultimately seems relaxed. */
==DIgnus IF~Global("g-sauign","GLOBAL",1)~THEN @468 /*Ignus is having a blast exploring new levels of control over his body temperature, thanks to the integration with the sauna furnace.  */
END
IF~~THEN REPLY @470 /*Continue. */ DO~~ + g-bbD157.sauna10
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna10
@472 /*You hear the hissing again. The sauna master shatters the last, third ice chunk and begins the final round. [g-sauna] */
END
IF~CheckStatGT(Protagonist,17,CON)~THEN REPLY @474 /*Raise your arms to feel more warmth. */ DO~~ + g-bbD157.sauna11a
IF~CheckStatGT(Protagonist,17,CON)~THEN REPLY @475 /*Sit still. */ DO~~ + g-bbD157.sauna11a
IF~CheckStatLT(Protagonist,18,CON)~THEN REPLY @476 /*Raise your arms to feel more warmth. */ DO~Damage(Protagonist,LOWER,10)~ + g-bbD157.sauna11b
IF~CheckStatLT(Protagonist,18,CON)~THEN REPLY @477 /*Sit still. */ DO~Damage(Protagonist,LOWER,5)~ + g-bbD157.sauna11b
IF~~THEN REPLY @478 /*Exit the sauna. */ DO~TeleportParty("arg-p2",[1108.867],4) ~ + g-bbD157.saunaend
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna11a
@480 /*A third, equally mysterious aroma fills the air. As before, it is incredibly pleasant, and you breathe deeply. You handle the rising temperature with ease, even though you know it will soon reach its peak when the sauna master directs a wave of heat your way. */
END
IF~~THEN REPLY @482 /*Stay in the sauna. */ DO~~ + g-bbD157.sauna12
IF~~THEN REPLY @483 /*Exit the sauna. */ DO~TeleportParty("arg-p2",[1108.867],4) ~ + g-bbD157.saunaend
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna11b
@485 /*A third, equally mysterious aroma fills the air. As before, it is incredibly pleasant, and you breathe deeply. But the heat is starting to become a problem. If you do not get out as soon as possible, something bad might happen, because you are pushing your worn-out body beyond its limits. */
END
IF~~THEN REPLY @487 /*Stay in the sauna. */ DO~~ + g-bbD157.sauna12
IF~~THEN REPLY @488 /*Exit the sauna. */ DO~TeleportParty("arg-p2",[1108.867],4) ~ + g-bbD157.saunaend
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna12
@490 /*The dwarf triumphantly continues the fanning. [SWI_05A] */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @491 /*Morte rests on the cloth, motionless, and waits for the experience to end. */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @492 /*Dak'kon breathes deeply and surrenders to the final waves of heat. */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @493 /*Annah looks around a bit impatiently as if wondering how much longer she has to stay in her seat. Her skin is shining. */
==DIgnus IF~Global("g-sauign","GLOBAL",1)~THEN @494 /*The heat is starting to reach absurdly high levels. You trust that the sauna master has the situation under control, but you are also certain that if Ignus were given enough time, he would gladly burn everyone present to a crisp. [IGNFU05] */
END
IF~GlobalLT("g-sauign2","GLOBAL",1) Global("g-ignussaunaloop","GLOBAL",0) Global("g-sauign","GLOBAL",1)~THEN REPLY @496 /*"Hey, Ignus, don't you want to turn up the heat even more? It's a bit cold in here." */ DO~IncrementGlobal("GOOD","GLOBAL",-3) IncrementGlobal("LAW","GLOBAL",-3) SetGlobal("g-ignussaunaloop","GLOBAL",1)~ + g-bbD157.sauign5
IF~~THEN REPLY @497 /*Continue. */ DO~~ + g-bbD157.sauna13
CHAIN IF~~THEN g-bbD157 g-bbD157.sauign5
@499 /*"No!" The sauna master shouts with clear panic in his voice. "Don't wind him up! He'll definitely..." */
==DIgnus IF ~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("DIgnus")~ THEN @500 /*Ignus wriggles faster and faster and repeats disturbingly: *"Ignusss burns people...!"* [IGN075A] */
==g-bbd157 @501 /*It stops being pleasant right away. The heat quickly exceeds all reasonable limits, and in a moment your skin feels like it is on fire. [IGNFU05] */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @502 /*It is a very strange sight, but Morte is on fire and seems to shrink. His eyeballs begin to steam until they finally carbonize. */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @503 /*Dak'kon tries to endure the rising temperature but his skin begins to burn. He is surprisingly persistent, but when he reaches his breaking point, a scream like you have never heard before erupts from his lips. He begins flailing his arms uncontrollably until his movements cease and his corpse burns. */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @504 /*Annah quickly realizes that something is wrong and that she misplaced her trust in you. She shoots you an angry glance, her innate resilience gives her just enough time to reach the door, but before she can grab the doorknob, she collapses and bursts into flames. She screams in agony and thrashes about on the ground, trying to put out the flames. Finally, she stops moving... */
END
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",0)~THEN REPLY @506 /*Burn. */ DO~SetAnimState("Annah",ANIM_MIMEDIE) Kill("Annah") IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2) SetGlobal("g-burnann","GLOBAL",1)
~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",0)~THEN REPLY @507 /*Burn. */ DO~SetAnimState("Dakkon",ANIM_MIMEDIE) Kill("Dakkon") IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) SetGlobal("g-burndak","GLOBAL",1)
~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",1)~THEN REPLY @508 /*Burn. */ DO~SetAnimState("Morte",ANIM_MIMEDIE) Kill("Morte") IncrementGlobal("BD_MORTE_MORALE","GLOBAL",-1) SetGlobal("g-burnmor","GLOBAL",1)~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",0)~THEN REPLY @509 /*Burn. */ DO~SetAnimState("Annah",ANIM_MIMEDIE) Kill("Annah") IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2) SetGlobal("g-burnann","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMEDIE) Kill("Dakkon") IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) SetGlobal("g-burndak","GLOBAL",1)
~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",1)~THEN REPLY @510 /*Burn. */ DO~SetAnimState("Annah",ANIM_MIMEDIE) Kill("Annah") IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2) SetGlobal("g-burnann","GLOBAL",1)
SetAnimState("Morte",ANIM_MIMEDIE) Kill("Morte") IncrementGlobal("BD_MORTE_MORALE","GLOBAL",-1) SetGlobal("g-burnmor","GLOBAL",1)~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",1)~THEN REPLY @511 /*Burn. */ DO~SetAnimState("Dakkon",ANIM_MIMEDIE) Kill("Dakkon") IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) SetGlobal("g-burndak","GLOBAL",1)
SetAnimState("Morte",ANIM_MIMEDIE) Kill("Morte") IncrementGlobal("BD_MORTE_MORALE","GLOBAL",-1) SetGlobal("g-burnmor","GLOBAL",1)~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",1)~THEN REPLY @512 /*Burn. */ DO~SetAnimState("Annah",ANIM_MIMEDIE) Kill("Annah") IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2) SetGlobal("g-burnann","GLOBAL",1)
SetAnimState("Dakkon",ANIM_MIMEDIE) Kill("Dakkon") IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",-1) SetGlobal("g-burndak","GLOBAL",1)
SetAnimState("Morte",ANIM_MIMEDIE) Kill("Morte") IncrementGlobal("BD_MORTE_MORALE","GLOBAL",-1) SetGlobal("g-burnmor","GLOBAL",1)~ + g-bbD157.burn4
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",0)~THEN REPLY @513 /*Burn. */ DO~
~ + g-bbD157.burn4
CHAIN IF~~THEN g-bbD157 g-bbD157.burn4
@515 /*The sauna master, engulfed in flames, shouts something unintelligible and, a moment later, falls to the floor, writhing for a moment before finally drawing his last breath. Ignus is having the time of his life. Your body cannot keep up with the regeneration, you feel excruciating pain and watch your hands burn. You scream helplessly and collapse, writhing in uncontrolled convulsions. Darkness descends. [IGN052B] */
END
IF~~THEN REPLY @517 /*Die painfully. */ DO~TeleportParty("arg-p2",[1108.867],4) Kill(Myself) AddexperienceParty(120000) PermanentStatChange("Ignus",STR,RAISE,2) PermanentStatChange("Ignus",CON,RAISE,2) PermanentStatChange("Ignus",DEX,RAISE,2)  PermanentStatChange("Ignus",INT,RAISE,2) PermanentStatChange(Protagonist,MAXHITPOINTS,LOWER,10) SetAnimState(Protagonist,ANIM_MIMEDIE) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0) SetGlobal("g-sauign2","GLOBAL",1) Wait(1) Kill(Protagonist)~ EXIT
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna13
@519 /*That was the last ice chunk. Now the sauna master returns to the tray, sets down the fan he has been using, and picks up the birch twig. "Would you also like me to use the whisks?" */
END
IF~Global("g-sauign2","GLOBAL",0) Global("g-sauign","GLOBAL",1)~THEN REPLY @521 /*"Yes, please." */ DO~AddexperienceParty(60000) PermanentStatChange("Ignus",STR,RAISE,1) PermanentStatChange("Ignus",CON,RAISE,1) PermanentStatChange("Ignus",DEX,RAISE,1)  PermanentStatChange("Ignus",INT,RAISE,1) IncrementGlobal("BD_IGNUS_MORALE","GLOBAL",1) SetGlobal("g-sauign2","GLOBAL",1) ~ + g-bbD157.sauna14
IF~Global("g-sauign2","GLOBAL",0) Global("g-sauign","GLOBAL",1)~THEN REPLY @522 /*"No, thank you." */ DO~AddexperienceParty(60000) PermanentStatChange("Ignus",STR,RAISE,1) PermanentStatChange("Ignus",CON,RAISE,1) PermanentStatChange("Ignus",DEX,RAISE,1)  PermanentStatChange("Ignus",INT,RAISE,1) IncrementGlobal("BD_IGNUS_MORALE","GLOBAL",1) SetGlobal("g-sauign2","GLOBAL",1) ~ + g-bbD157.saunaend0
IF~Global("g-sauign2","GLOBAL",1) Global("g-sauign","GLOBAL",1)~THEN REPLY @523 /*"Yes, please." */ DO~~ + g-bbD157.sauna14
IF~Global("g-sauign2","GLOBAL",1) Global("g-sauign","GLOBAL",1)~THEN REPLY @524 /*"No, thank you." */ DO~~ + g-bbD157.saunaend0
IF~Global("g-sauign","GLOBAL",0)~THEN REPLY @525 /*"Yes, please." */ DO~~ + g-bbD157.sauna14
IF~Global("g-sauign","GLOBAL",0)~THEN REPLY @526 /*"No, thank you." */ DO~~ + g-bbD157.saunaend0
CHAIN IF~~THEN g-bbD157 g-bbD157.sauna14
@528 /*You lie down on the cloth and then you feel the slaps of the whisk on your back. It's a somehow pleasant, funny feeling. [HIT_01E] */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @529 /*Whisking a skull seems to be such an absurd idea that the sauna master himself hesitates a bit. Morte just mutters: "Not in the eyes, not in the eyes..." [HIT_01E] */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @530 /*Dak'kon lies there calmly, taking blow after blow without uttering a sound, as if this were something he were used to and posed no problem for him. [HIT_01E] */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @531 /*As the sauna master approaches the tiefling, she shoots him a sharp look. "Did ya ask me or him, did ya? Get those sticks outta my face!" */
==g-bbd157 IF~Global("g-sauann","GLOBAL",1)~THEN @532 /*"Oh." The sauna master steps back, looking as if he fears for his life. "Of course!" */
END
IF~~THEN REPLY @534 /*Stand up. */ DO~~ + g-bbD157.saunaend0
CHAIN IF~~THEN g-bbD157 g-bbD157.saunaend0
@536 /*You slowly get up from the bench. */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @537 /*Morte rises into the air. He looks like his surface gained some extra shine. Perhaps, as he said, the warmth has had a positive effect on his bones. */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @538 /*After a moment of deep meditation, Dak'kon rises, visibly refreshed, not only in terms of his aging body but also in the aura surrounding the githzerai. A slightly sad yet determined smile plays across his face.  */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @539 /*Annah stands up. She looks you in the eyes. When she stands before you, you see a young girl with her whole life ahead of her. Her body shows no signs of the passage of time yet. She may have a few wounds or scars, but unlike you, her skin is not covered in them. Silently, she wraps herself in her cloth and leaves. */
END
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",0) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @541 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Annah",ANIM_MIMESTAND) PermanentStatChange("Annah",CON,RAISE,1) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1) ~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",0) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @542 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Dakkon",ANIM_MIMESTAND) PermanentStatChange("Dakkon",CON,RAISE,1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",1) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @543 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Morte",ANIM_MIMESTAND) PermanentStatChange("Morte",CON,RAISE,1) IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",0) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @544 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Annah",ANIM_MIMESTAND) PermanentStatChange("Annah",CON,RAISE,1) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1) SetAnimState("Dakkon",ANIM_MIMESTAND) PermanentStatChange("Dakkon",CON,RAISE,1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",1) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @545 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Annah",ANIM_MIMESTAND) PermanentStatChange("Annah",CON,RAISE,1) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1) SetAnimState("Morte",ANIM_MIMESTAND) PermanentStatChange("Morte",CON,RAISE,1) IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",1) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @546 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Dakkon",ANIM_MIMESTAND) PermanentStatChange("Dakkon",CON,RAISE,1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1) SetAnimState("Morte",ANIM_MIMESTAND) PermanentStatChange("Morte",CON,RAISE,1) IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",1) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @547 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1) SetAnimState("Annah",ANIM_MIMESTAND) PermanentStatChange("Annah",CON,RAISE,1) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",1) SetAnimState("Dakkon",ANIM_MIMESTAND) PermanentStatChange("Dakkon",CON,RAISE,1) IncrementGlobal("BD_DAKKON_MORALE","GLOBAL",1) SetAnimState("Morte",ANIM_MIMESTAND) PermanentStatChange("Morte",CON,RAISE,1) IncrementGlobal("BD_MORTE_MORALE","GLOBAL",1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",0) GlobalLT("g-1stsauna","GLOBAL",1)~THEN REPLY @548 /*Exit the sauna. */ DO~SetGlobal("g-1stsauna","GLOBAL",1) PermanentStatChange(Protagonist,CON,RAISE,1)~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",0) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @549 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",0) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @550 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",1) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @551 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",0) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @552 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",1) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @553 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",1) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @554 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",1) Global("g-saudak","GLOBAL",1) Global("g-saumor","GLOBAL",1) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @555 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
IF~Global("g-sauann","GLOBAL",0) Global("g-saudak","GLOBAL",0) Global("g-saumor","GLOBAL",0) GlobalGT("g-1stsauna","GLOBAL",0)~THEN REPLY @556 /*Exit the sauna. */ DO~~ + g-bbD157.saunaend
CHAIN IF~~THEN g-bbD157 g-bbD157.saunaend
@558 /*Sweaty, but with a sense of relief and satisfaction, you go to the bath. */
END
IF~~THEN REPLY @560 /*Continue. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0)~ + g-bbD157.bath2
CHAIN IF~~THEN g-bbD157 g-bbD157.bath2
@562 /*The cold water, which you are already familiar with, seems even colder after all you have been through. But this time, you let it wash over you without hesitation. It is incredibly soothing and makes you feel completely refreshed. */
END
IF~~THEN REPLY @564 /*Continue. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0)~ + g-bbD157.saunaend1d
CHAIN IF~~THEN g-bbD157 g-bbD157.saunaend1d
@566 /*"I hope you enjoyed it," says the sauna master in the end. "Come back soon." */
==DMorte IF~Global("g-saumor","GLOBAL",1)~THEN @567 /* "I haven't had this much fun since, uh... the last time." [MRT011] */
==DDakkon IF~Global("g-saudak","GLOBAL",1)~THEN @568 /* "I regret nothing."  [DAK027B] */
==DAnnah IF~Global("g-sauann","GLOBAL",1)~THEN @569 /*"Ha! The heat was more bearable than I expected, it was. Pro'ly because of my fiendish blood." [ANA445A] */
==DIgnus IF~Global("g-sauign","GLOBAL",1)~THEN @570 /*Ignus is clearly pleased. *"The flames grow within me."* [IGN118] */
END
IF~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) Global("g-sauffgtalked","GLOBAL",0)~THEN REPLY @572 /*Move to the main hall. */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0) SetGlobal("g-sauffgtalked","GLOBAL",1) SetGlobal("g-fakeffgdialogue","GLOBAL",3)~ EXIT
IF~OR(2) !InParty("Grace") Global("g-sauffgtalked","GLOBAL",1)~THEN REPLY @573 /*Move to the main hall. */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT
IF~StateCheck("Grace",CD_STATE_NOTVALID) ~THEN REPLY @574 /*Move to the main hall. */ DO~TeleportParty("arg-p2",[1108.867],4) SetGlobal("g-saumor","GLOBAL",0) SetGlobal("g-saudak","GLOBAL",0) SetGlobal("g-sauann","GLOBAL",0) SetGlobal("g-sauign","GLOBAL",0)~ EXIT