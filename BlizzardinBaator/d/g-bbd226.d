BEGIN g-bbD226
CHAIN IF~NumTimesTalkedTo(0) Global("g-skald_attention","GLOBAL",0) !Global("g-triplerquest","GLOBAL",13)~THEN g-bbD226 g-bbD226.start
@0 /*A middle-aged man somberly leans against the statue. Although his colorful clothing befits a bard, the stains and creases in the fabrics make him look anything but cheerful. His sad, longing eyes are fixed on an arched entrance beneath the building. */
END
IF~~THEN REPLY @2 /*See what he is staring at. */ DO~SetGlobal("g-skald_watch","GLOBAL",1)~ + g-bbD226.watch
IF~~THEN REPLY @3 /*"Greetings." */ DO~SetGlobal("g-skald_attention","GLOBAL",1)~ + g-bbD226.hello
IF~~THEN REPLY @4 /*Leave him alone. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-skald_attention","GLOBAL",0) !Global("g-triplerquest","GLOBAL",13)~THEN g-bbD226 g-bbD226.start2
@6 /*The man is still there, staring persistently at the arched entrance. The grim expression on his face stands in contrast to his colorful attire. */
END
IF~~THEN REPLY @8 /*See what he is staring at. */ DO~SetGlobal("g-skald_watch","GLOBAL",1)~ + g-bbD226.watch
IF~~THEN REPLY @9 /*"Greetings." */ DO~SetGlobal("g-skald_attention","GLOBAL",1)~ + g-bbD226.hello
IF~~THEN REPLY @10 /*Leave him alone. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0) Global("g-skald_attention","GLOBAL",1) !Global("g-triplerquest","GLOBAL",13)~THEN g-bbD226 g-bbD226.start3
@12 /*"Ah, it's ye again." The man sighs, seeming distressed just at the thought of talking to anyone. */
END
IF~~THEN REPLY @14 /*"I have some questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @15 /*Leave him alone. */ DO~~ EXIT
CHAIN IF~Global("g-triplerquest","GLOBAL",13)~THEN g-bbD226 g-bbD226.start4
@17 /*The previously apathetic man has already sprung into action by the time you emerge from the portal.  */
=@18 /*"YE!" he screams. "Ye have the lykill? I mean... THE KEY?" */
=@19 /*"Thief! Give it here, and I vill let ye go unscathed." */
END
IF~~THEN REPLY @21 /*Lie: "What? No, I don't know what you're talking about." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD226.resolie
IF~~THEN REPLY @22 /*"I'm not a thief. Can we talk about it?" */ DO~~ + g-bbD226.resotruth
CHAIN IF~~THEN g-bbD226 g-bbD226.watch
@24 /*You try to peek inside. It is too dark in there to make out any shapes, but you notice that the archway looks significantly older than the rest of the building. */
==DNordom IF ~InParty("Nordom") !StateCheck("Nordom",CD_STATE_NOTVALID) NearbyDialog("DNordom")~ THEN @25 /*"Portal detected." [NOR196] */
END
IF~~THEN REPLY @27 /*"Greetings." */ DO~SetGlobal("g-skald_attention","GLOBAL",1)~ + g-bbD226.hello
IF~~THEN REPLY @28 /*Point at the entrance. "Where does it lead to?" */ DO~SetGlobal("g-skald_attention","GLOBAL",1) SetGlobal("g-skald_hovel","GLOBAL",1)~ + g-bbD226.where
IF~~THEN REPLY @29 /*Leave him alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.hello
@31 /*The man wakes up from his strange stupor, but his face still resembles a mask of longing. "Oh... greetings to ye too. Afsakið, I vas not paying attention. Vat do ye need?" */
END
IF~~THEN REPLY @33 /*"I have some questions." */ DO~~ + g-bbD226.q
IF~Global("g-skald_watch","GLOBAL",1)~THEN REPLY @34 /*Point at the entrance. "Where does it lead to?" */ DO~SetGlobal("g-skald_hovel","GLOBAL",1)~ + g-bbD226.where2
IF~~THEN REPLY @35 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.where
@37 /*The man wakes up from his strange stupor, but his face still resembles a mask of longing. "Oh... novhere no more.... Afsakið, I vas not paying attention. Vat do ye need?" */
END
IF~~THEN REPLY @39 /*"I have some questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @40 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.where2
@42 /*"Oh... no-vere no more...." */
END
IF~~THEN REPLY @44 /*"I have some questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @45 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.q
@47 /*The man sighs again. "Vatever." */
END
IF~Global("g-skald_hovel","GLOBAL",0)~THEN REPLY @49 /*Point at the entrance. "Where does it lead to?" */ DO~SetGlobal("g-skald_hovel","GLOBAL",1)~ + g-bbD226.where2
IF~Global("g-skald_profession","GLOBAL",0)~THEN REPLY @50 /*"Who are you?" */ DO~SetGlobal("g-skald_profession","GLOBAL",1)~ + g-bbD226.who
IF~Global("g-UlfbrandSecret","GLOBAL",0)~THEN REPLY @51 /*"Can you tell me about Ulfbrand?" */ DO~SetGlobal("g-UlfbrandSecret","GLOBAL",1)~ + g-bbD226.ulfbrand
IF~Global("g-skald_fated","GLOBAL",0)~THEN REPLY @52 /*"Do you belong to the Fated faction?" */ DO~SetGlobal("g-skald_fated","GLOBAL",1)~ + g-bbD226.fated
IF~Global("g-skald_profession","GLOBAL",1)~THEN REPLY @53 /*"Could you sing me a song, skald?" */ DO~~ + g-bbD226.song
IF~Global("g-skald_hovel","GLOBAL",1)~THEN REPLY @54 /*"Where *did* that entrance lead to?" */ DO~SetGlobal("g-skald_hovel","GLOBAL",2) SetGlobal("g-know_alfheim","GLOBAL",1)~ + g-bbD226.where3
IF~~THEN REPLY @55 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.who
@57 /*"Me name is Einar. I'm a skald, or a bard if you vill. I vonce performed for the jarls here. But I lost my músa." */
END
IF~~THEN REPLY @59 /*"What happened?" */ DO~~ + g-bbD226.who2
IF~~THEN REPLY @60 /*"Could you sing me a song, skald?" */ DO~~ + g-bbD226.song
CHAIN IF~~THEN g-bbD226 g-bbD226.who2
@62 /*The man hopelessly points toward the arched entrance as a single tear flows down his cheek. */
END
IF~Global("g-skald_hovel","GLOBAL",0)~THEN REPLY @64 /*"Where does the entrance lead to?" */ DO~SetGlobal("g-skald_hovel","GLOBAL",2) SetGlobal("g-know_alfheim","GLOBAL",1)~ + g-bbD226.where3
IF~Global("g-skald_hovel","GLOBAL",1)~THEN REPLY @65 /*"Where did the entrance lead to?" */ DO~SetGlobal("g-skald_hovel","GLOBAL",2) SetGlobal("g-know_alfheim","GLOBAL",1)~ + g-bbD226.where3
IF~~THEN REPLY @66 /*"I... see. I have other questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @67 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.song
@69 /*"Pirra sig, piss off, berk. Do I look like I vant to sing?" The man turns away from you and crosses his arms. He is done talking for now. */
EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.ulfbrand
@72 /*"Ah. Ulfbrand. Large half-jotun. Jarl of this hall. He's a petitioner, so he can't be killed. Ask the Fated, they should knov better than me." */
END
IF~Global("g-skald_fated","GLOBAL",0)~THEN REPLY @74 /*"Do you not belong to the Fated faction?" */ DO~SetGlobal("g-skald_fated","GLOBAL",1)~ + g-bbD226.fated
IF~~THEN REPLY @75 /*"I... see. I have other questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @76 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.fated
@78 /*"Nei. I'm just a citizen of Himinborg. I'm not involved in any factions." */
END
IF~~THEN REPLY @80 /*"I... see. I have other questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @81 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.where3
@83 /*"There is a portal here... to Alfheim. The hall vas built around it. The stone arch vas crovned vith a jade skull, that kept it open, but that vas stolen... years ago. Nov the precious, precious portal is closed." */
END
IF~~THEN REPLY @85 /*"What was on the other side that made the portal so precious?" */ DO~~ + g-bbD226.where4
IF~PartyHasItem("g-bbi091")~THEN REPLY @86 /*Present the skull you rebuilt. "Jade skull like... this?" */ DO~~ + g-bbD226.impossible
IF~~THEN REPLY @87 /*"I... see. I have other questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @88 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.where4
@90 /*"There is magical vood in Alfheim. One vhich raises the alcohol content of all liquids stored in it. That is vhere that portal leads. The elves treat it as a sacred ground, allov nobody in. This secret portal lead to a secret location, even to the elves... ehhh." */
END
IF~PartyHasItem("g-bbi091")~THEN REPLY @92 /*"The key was a jade skull... like this?" */ DO~~ + g-bbD226.impossible
IF~~THEN REPLY @93 /*"I... see. I have other questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @94 /*"I need to go. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.impossible
@96 /*His apathetic eyes look at the item in your palm. "Don't ye even joke like that. Get out of here, you ræfill."  */
END
IF~~THEN REPLY @98 /*"Well... okay. Then I have other questions." */ DO~~ + g-bbD226.q
IF~~THEN REPLY @99 /*"Alright. Farewell." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.resolie
@101 /*"Oh, no, ye don't." The skald takes out a tiny horn and blows it with all his might. */
=@102 /*The sound it produces is much louder than you expected, suggesting that the horn is definitely magical. Men quickly start running out of the nearby entrance to the hall, weapons drawn. [g-wrhorn] */
END
IF~~THEN REPLY @104 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("g-skald_battle","GLOBAL",1) SetGlobal("g-party_alert","GLOBAL",1) SetGlobal("g-triplerquest","GLOBAL",15) CreateCreature("g-bb227",[1361.1812],4)
CreateCreature("g-bb227",[1249.1922],9)
CreateCreature("g-bb227",[1168.1928],8)
CreateCreature("g-bb227",[928.1868],8)~ SOLVED_JOURNAL @20242 EXIT
CHAIN IF~~THEN g-bbD226 g-bbD226.resotruth
@106 /*"Vat is there to talk about? Give me the key, and I von't tell the Fated here that you stole their bounty." */
END
IF~~THEN REPLY @108 /*"Well... okay. Here you go. Have fun." */ DO~TakePartyItem("g-bbi091") DestroyItem("g-bbi091") AddexperienceParty(40000) SetGlobal("g-triplerquest","GLOBAL",14)~ SOLVED_JOURNAL @20241 + g-bbD226.hehehe
IF~~THEN REPLY @109 /*"I don't want to give you this key. I might need it in the future." */ DO~~ + g-bbD226.resolie
CHAIN IF~~THEN g-bbD226 g-bbD226.hehehe
@111 /*The skald takes the key from your outstretched hand, begins laughing maniacally and runs towards the arched entrance. The portal lights up, letting him through, and then closes. Who knows if it will ever open again? */
END
IF~~THEN REPLY @113 /*Leave. */ DO~RunToPoint([1234.1634]) StickySinisterPoof("EF01TPRT","G-bb007",1) PlaySound("AM_VORTX") DestroySelf() ~ EXIT