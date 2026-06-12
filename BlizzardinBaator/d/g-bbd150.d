BEGIN g-bbD150
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD150 g-bbD150.start1
@0 /*A gigantic white wolf watches over its master. The tamed beast makes a stunning impression. No one dares to approach close. */
=@1 /*The wolf barks at your sight. [g-wolf2] */
END
IF~CheckStatLT(Protagonist,12,CHR) Global("g-petwolf","GLOBAL",0)~THEN REPLY @3 /*Try petting the wolf. */ DO~~ + g-bbD150.petbad
IF~CheckStatGT(Protagonist,11,CHR) Global("g-petwolf","GLOBAL",0)~THEN REPLY @4 /*Try petting the wolf. */ DO~~ + g-bbD150.petgood
IF~Global("g-petwolf","GLOBAL",1)~THEN REPLY @5 /*Pet the wolf. */ DO~~ + g-bbD150.petgood
IF~Global("g-knowsharikira","GLOBAL",1) Global("g-goodboy","GLOBAL",0)~THEN REPLY @6 /*"Sharikira. Who's a good boy?" */ DO~SetGlobal("g-goodboy","GLOBAL",1)~ + g-bbD150.goodboy1
IF~Global("g-goodboy","GLOBAL",1)~THEN REPLY @7 /*"Sharikira. Who's a good boy?" */ DO~~ + g-bbD150.goodboy2
IF~Global("g-petwolf","GLOBAL",1)~THEN REPLY @8 /*"Go fetch!" */ DO~~ + g-bbD150.fetch
IF~Global("g-petwolf","GLOBAL",1)~THEN REPLY @9 /*Feed the wolf. */ DO~~ + g-bbD150.feed
IF~GlobalLT("GOOD","GLOBAL",-20)~THEN REPLY @10 /*Kick the wolf. */ DO~~ + g-bbD150.attack2
IF~~THEN REPLY @11 /*Leave the wolf alone. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD150 g-bbD150.start2
@13 /*The wolf barks at you. [g-wolf2] */
END
IF~CheckStatLT(Protagonist,12,CHR) Global("g-petwolf","GLOBAL",0)~THEN REPLY @15 /*Try petting the wolf. */ DO~~ + g-bbD150.petbad
IF~CheckStatGT(Protagonist,11,CHR) Global("g-petwolf","GLOBAL",0)~THEN REPLY @16 /*Try petting the wolf. */ DO~~ + g-bbD150.petgood
IF~Global("g-petwolf","GLOBAL",1)~THEN REPLY @17 /*Pet the wolf. */ DO~~ + g-bbD150.petgood
IF~Global("g-knowsharikira","GLOBAL",1) Global("g-goodboy","GLOBAL",0)~THEN REPLY @18 /*"Sharikira. Who's a good boy?" */ DO~SetGlobal("g-goodboy","GLOBAL",1)~ + g-bbD150.goodboy1
IF~Global("g-goodboy","GLOBAL",1)~THEN REPLY @19 /*"Sharikira. Who's a good boy?" */ DO~~ + g-bbD150.goodboy2
IF~Global("g-petwolf","GLOBAL",1)~THEN REPLY @20 /*"Go fetch!" */ DO~~ + g-bbD150.fetch
IF~Global("g-petwolf","GLOBAL",1)~THEN REPLY @21 /*Feed the wolf. */ DO~~ + g-bbD150.feed
IF~GlobalLT("GOOD","GLOBAL",-20)~THEN REPLY @22 /*Kick the wolf. */ DO~~ + g-bbD150.attack2
IF~~THEN REPLY @23 /*Leave the wolf alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.petbad
@25 /*A low but loud growl fills the hall. The wolf is not happy with your boldness. Any further attempts to touch him could end badly. [g-wolf3] */
END
IF~~THEN REPLY @27 /*Try again. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-doomvsfatevsKEY","GLOBAL",8)~ + g-bbD150.attack1
IF~GlobalLT("GOOD","GLOBAL",-20)~THEN REPLY @28 /*Kick it. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-doomvsfatevsKEY","GLOBAL",8)~ + g-bbD150.attack2
IF~~THEN REPLY @29 /*Leave the wolf alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.petgood
@31 /*The wolf seems pleased, indicating it with a short bark. [g-wolf2] */
END
IF~~THEN REPLY @33 /*Play with the wolf a bit. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ + g-bbD150.petgood
IF~Global("g-goodboy","GLOBAL",1)~THEN REPLY @34 /*"Sharikira! Who's a good boy?" */ DO~~ + g-bbD150.goodboy2
IF~~THEN REPLY @35 /*Leave the wolf alone. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.attack1
@37 /*You have angered the wolf, so it should not be surprising that he attacks you. The signal is clear to his owner, and Ulfbrand is unlikely to rush to *your* aid. */
END
IF~OR(4) GlobalGT("G-ulfbrandgaveup","GLOBAL",0)
GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0)
GlobalGT("G-ulfbrandwonambush","GLOBAL",0)
GlobalGT("G-ulfbrandwonraid","GLOBAL",0)~THEN REPLY @39 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
IF~GlobalLT("G-doomvsfatevsKEY","GLOBAL",5)  ~THEN REPLY @40 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-doomvsfatevsKEY","GLOBAL",5)  IncrementGlobal("g-FatedPower","GLOBAL",-1)~ EXIT
IF~!GlobalLT("G-doomvsfatevsKEY","GLOBAL",5) Global("G-ulfbrandgaveup","GLOBAL",0)
Global("G-ulfbrandwonagainstus","GLOBAL",0)
Global("G-ulfbrandwonambush","GLOBAL",0)
Global("G-ulfbrandwonraid","GLOBAL",0)~THEN REPLY @41 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.attack2
@43 /*The wolf takes a hard kick, and a look of surprise crosses his noble snout. He is too big to be physically hurt by your kick, but he is not happy about such niceties, and neither is his master. Both of them bare their teeth at you. [g-wolf8] */
END
IF~OR(4) GlobalGT("G-ulfbrandgaveup","GLOBAL",0)
GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0)
GlobalGT("G-ulfbrandwonambush","GLOBAL",0)
GlobalGT("G-ulfbrandwonraid","GLOBAL",0)~THEN REPLY @45 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
IF~GlobalLT("G-doomvsfatevsKEY","GLOBAL",5)  ~THEN REPLY @46 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-doomvsfatevsKEY","GLOBAL",5)  IncrementGlobal("g-FatedPower","GLOBAL",-1)~ EXIT
IF~!GlobalLT("G-doomvsfatevsKEY","GLOBAL",5) Global("G-ulfbrandgaveup","GLOBAL",0)
Global("G-ulfbrandwonagainstus","GLOBAL",0)
Global("G-ulfbrandwonambush","GLOBAL",0)
Global("G-ulfbrandwonraid","GLOBAL",0)~THEN REPLY @47 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,1) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.goodboy1
@49 /*Sharikira barks happily. Since you called him by name, now you can pet him as much as you want. [g-wolf2] */
END
IF~~THEN REPLY @51 /*Play with the wolf a bit. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ + g-bbD150.petgood
IF~~THEN REPLY @52 /*Leave the wolf alone. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.goodboy2
@54 /*The wolf barks happily. [g-wolf2] */
END
IF~~THEN REPLY @56 /*Play with the wolf a bit. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ + g-bbD150.petgood
IF~~THEN REPLY @57 /*Leave the wolf alone. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.fetch
@59 /*What do you want to throw him? */
END
IF~PartyHasItem("FEMUR")~THEN REPLY @61 /*Throw the fiend femur. */ DO~~ + g-bbD150.fetch1
IF~PartyHasItem("LEGCLUB")~THEN REPLY @62 /*Throw the human femur. */ DO~~ + g-bbD150.fetch1
IF~PartyHasItem("SHAMAN")~THEN REPLY @63 /*Throw the shamanic rod made from a big bird's foot. */ DO~~ + g-bbD150.fetch1
IF~!PartyHasItem("FEMUR") !PartyHasItem("LEGCLUB") !PartyHasItem("SHAMAN")
~THEN REPLY @64 /*Unfortunately, you do not have anything you can throw. */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @65 /*"How are you doing?" */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @66 /*Leave the wolf alone. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.fetch1
@68 /*The wolf brings back the item you had thrown. He seems pleased, indicating it with a bark. [g-wolf2] */
END
IF~PartyHasItem("FEMUR")~THEN REPLY @70 /*Throw the fiend femur. */ DO~~ + g-bbD150.fetch1
IF~PartyHasItem("LEGCLUB")~THEN REPLY @71 /*Throw the human femur. */ DO~~ + g-bbD150.fetch1
IF~PartyHasItem("SHAMAN")~THEN REPLY @72 /*Throw the shamanic rod made from a big bird's foot. */ DO~~ + g-bbD150.fetch1
IF~PartyHasItem("g-bbi127")~THEN REPLY @73 /*Throw the big bone that Agraval used to carry. */ DO~~ + g-bbD150.fetch1
IF~!PartyHasItem("FEMUR") !PartyHasItem("LEGCLUB") !PartyHasItem("SHAMAN") !PartyHasItem("g-bbi127")~THEN REPLY @74 /*Unfortunately, you do not have anything you can throw. */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @75 /*"How are you doing?" */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @76 /*Leave the wolf alone. */ DO~SetGlobal("g-petwolf","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.feed
@78 /*What do you want to feed the wolf with? */
END
IF~PartyHasItem("g-bbi069")~THEN REPLY @80 /*Strange meat. */ DO~DestroyPartyItem("g-bbi069",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD150.feed1
IF~PartyHasItem("CHEESE")~THEN REPLY @81 /*Some cheese. */ DO~DestroyPartyItem("CHEESE",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD150.feed1
IF~PartyHasItem("BONECHRM")~THEN REPLY @82 /*A bone charm. Let him have something to bite. */ DO~DestroyPartyItem("BONECHRM",TRUE) AddexperienceParty(5000)~ + g-bbD150.feed1
IF~PartyHasItem("FEMUR")~THEN REPLY @83 /*The fiend femur. Let him have something to bite. */ DO~DestroyPartyItem("FEMUR",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1)
~ + g-bbD150.feed2
IF~PartyHasItem("LEGCLUB")~THEN REPLY @84 /*The human femur. Let him have something to bite. */ DO~DestroyPartyItem("LEGCLUB",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1)
~ + g-bbD150.feed2
IF~PartyHasItem("SHAMAN")~THEN REPLY @85 /*The shamanic rod made from a big bird's foot/ */ DO~DestroyPartyItem("SHAMAN",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1)
~ + g-bbD150.feed2
IF~PartyHasItem("g-bbi127")~THEN REPLY @86 /*The big bone that Agraval used to carry. Let the wolf have something to bite. */ DO~DestroyPartyItem("g-bbi127",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",1)~ + g-bbD150.feed2
IF~PartyHasItem("C_1101") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @87 /*You know you should not do it, but give him a blessed candy. */ DO~DestroyPartyItem("C_1101",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_1106") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @88 /*You know you should not do it, but give him a holy candy. */ DO~DestroyPartyItem("C_1106",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_1301") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @89 /*You know you should not do it, but give him a Mechanus candy. */ DO~DestroyPartyItem("C_1301",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_2102") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @90 /*You know you should not do it, but give him a crunchity candy. */ DO~DestroyPartyItem("C_2102",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_2114") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @91 /*You know you should not do it, but give him a mint candy. */ DO~DestroyPartyItem("C_2114",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_2211") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @92 /*You know you should not do it, but give him a quivering candy. */ DO~DestroyPartyItem("C_2211",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_2212") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @93 /*You know you should not do it, but give him minaurosian chocolate. */ DO~DestroyPartyItem("C_2212",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_2214") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @94 /*You know you should not do it, but give him a lucky candy. */ DO~DestroyPartyItem("C_2214",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_2501") GlobalLT("GOOD","GLOBAL",-20) CheckStatGT(Protagonist,15,INT)~THEN REPLY @95 /*You know you should not do it, but give him stinky chocolate. */ DO~DestroyPartyItem("C_2501",TRUE) AddexperienceParty(5000) IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD150.feed3
IF~PartyHasItem("C_1101") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @96 /*Give him a blessed candy. */ DO~DestroyPartyItem("C_1101",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_1106") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @97 /*Give him a holy candy. */ DO~DestroyPartyItem("C_1106",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_1301") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @98 /*Give him a Mechanus candy. */ DO~DestroyPartyItem("C_1301",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_2102") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @99 /*Give him a crunchity candy. */ DO~DestroyPartyItem("C_2102",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_2114") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @100 /*Give him a mint candy. */ DO~DestroyPartyItem("C_2114",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_2211") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @101 /*Give him a quivering candy. */ DO~DestroyPartyItem("C_2211",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_2212") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @102 /*Give him minaurosian chocolate. */ DO~DestroyPartyItem("C_2212",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_2214") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @103 /*Give him a lucky candy. */ DO~DestroyPartyItem("C_2214",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~PartyHasItem("C_2501") !CheckStatGT(Protagonist,15,INT)~THEN REPLY @104 /*Give him stinky chocolate. */ DO~DestroyPartyItem("C_2501",TRUE) AddexperienceParty(5000) ~ + g-bbD150.feed3
IF~~THEN REPLY @105 /*"How are you doing?" */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @106 /*Leave the wolf alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.feed1
@108 /*The wolf feasts on the food you give it while his tail is wagging fiercely. [g-wolf2] */
END
IF~~THEN REPLY @110 /*"How are you doing?" */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @111 /*Leave the wolf alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.feed2
@113 /*With a spark in his eye, the wolf starts greedily gnawing on the bone you gave him. [g-wolf2] */
END
IF~~THEN REPLY @115 /*"How are you doing?" */ DO~~ + g-bbD150.start2
IF~~THEN REPLY @116 /*Leave the wolf alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD150 g-bbD150.feed3
@118 /*The wolf feasts on the food he was given, but after a moment he spews it out onto the fooden floor. [g-wolf2] */
==g-bbd156 @119 /*"Do you try to POISON my faithful wolf Sharikira? It seems you have to die." [g-15610] */
==g-bbd150 @120 /*The wolf understands his master's suggestion and attacks you. [g-wolf3] */
END
IF~OR(4) GlobalGT("G-ulfbrandgaveup","GLOBAL",0)
GlobalGT("G-ulfbrandwonagainstus","GLOBAL",0)
GlobalGT("G-ulfbrandwonambush","GLOBAL",0)
GlobalGT("G-ulfbrandwonraid","GLOBAL",0)~THEN REPLY @122 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,34) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT
IF~GlobalLT("G-doomvsfatevsKEY","GLOBAL",5)  ~THEN REPLY @123 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,34) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) SetGlobal("G-doomvsfatevsKEY","GLOBAL",5)  IncrementGlobal("g-FatedPower","GLOBAL",-1)~ EXIT
IF~!GlobalLT("G-doomvsfatevsKEY","GLOBAL",5) Global("G-ulfbrandgaveup","GLOBAL",0)
Global("G-ulfbrandwonagainstus","GLOBAL",0)
Global("G-ulfbrandwonambush","GLOBAL",0)
Global("G-ulfbrandwonraid","GLOBAL",0)~THEN REPLY @124 /*Run. ^N(The fight is futile because you cannot kill Ulfbrand)^- */ DO~Help() Damage("g-bb150",LOWER,34) Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ~ EXIT