BEGIN g-bbD025
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD025 g-bbD025.start1
@0 /*Howls, shrieks, and curses are not uncommon in any establishment serving alcohol, but their unusually high intensity draws your attention. You glance toward the corner of the room, where two fiends stand facing each other next to an overturned table. One resembles a two-legged dog with red eyes and an additional pair of pincers sprouting from the sides of its furry body. You classify it as a glabrezu, one of the tanar'ri. The other is a dragonlike, humanoid creature with green scales. You recognize it as an abishai, one of the baatezu. Both fiends snarl at each other and hurl insults like stones from a sling, clearly trying to pierce the other's tough hide. */
==g-bbD026 @1 /*A demon and a devil in their orbit - it is not hard to guess what the reason for their quarrel might have been. Another fiend, tall and frighteningly thin, with skin as if coated in tar, observes the entire scene with stoicism. He leans nonchalantly against a chair, overlooking the door like a bouncer, but does not intervene. */
END
IF~~THEN REPLY @3 /*Listen to what the fiends are fighting about. */ DO~~ + g-bbD025.AA1
IF~~THEN REPLY @4 /*Turn to the bouncer. "What's wrong with them? Irreconcilable ideological differences?" */ DO~~ + g-bbD025.A1
IF~~THEN REPLY @5 /*Turn to the bouncer. "Those two are incredibly loud, aren't you going to do anything about it?" */ DO~~ + g-bbD025.B1
IF~~THEN REPLY @6 /*Leave them alone. */ DO~SetGlobal("nointerven","GLOBAL",1)~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD025 g-bbD025.start2
@8 /*The fiends are not going to answer your questions. */
END
IF~~THEN REPLY @10 /*Intervene in their quarrel. */ DO~SetGlobal("nointerven","GLOBAL",0)~ + g-bbD025.AA1
IF~~THEN REPLY @11 /*Leave. */ DO~SetGlobal("nointerven","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD025 g-bbD025.A1
@13 /*The fiends pay you no attention. */
==g-bbD026 @14 /*The bouncer slowly turns to look at you. "Far from it. They're just fighting over the cranium rat races. They always do that. It'll be quiet again soon." */
END
IF~~THEN REPLY @16 /*Look at the fiends. */ DO~~ + g-bbD025.AA1
CHAIN IF~~THEN g-bbD025 g-bbD025.B1
@18 /*The fiends pay you no attention. */
=@19 /*The bouncer shrugs. "Why, though? They're just fighting over the cranium rat races. They always do that. It'll be quiet again soon." */
END
IF~~THEN REPLY @21 /*Look at the fiends. */ DO~~ + g-bbD025.AA1
CHAIN IF~~THEN g-bbD025 g-bbD025.AA1
@23 /*"You vile, mangy, filthy, spit-covered, lying mongrel!" the abishai roars. "You dirty filth of demon spawn! You chaotic pile of rotten, brainless flesh!" */
==g-bbD024 @24 /*Glabrezu returns the favor. "You sodded lizard with dung scales! You stupid, broken stick in the mud! You stinking vomit of the Nine Hells, too stupid to even count them!" */
END
IF~~THEN REPLY @26 /*"Gentlemen, calm down. There's no need to make a scene." */ DO~~ + g-bbD025.D1
IF~~THEN REPLY @27 /*"Stop yelling, you're disturbing other guests." */ DO~~ + g-bbD025.E1
IF~~THEN REPLY @28 /*Leave them alone. */ DO~SetGlobal("nointerven","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD025 g-bbD025.D1
@30 /*The abishai glares at you. "Calm down? CALM DOWN?! How am I supposed to be calm when that idiot from the Abyss is cheating bald-faced!" */
==g-bbD024 @31 /*The glabrezu barks in protest. "Bah! As if it's my fault that this narrow-minded idiot can't understand the rules of a cranium rat race!" */
==g-bbD025 @32 /*"What?! Slander! I can, I can understand the rules very well! But if you want to cheat, you gotta exploit the inconsistencies of the existing rules, not invent your own! And I can also say with absolute certainty that pushing your rat with a stick is strictly forbidden! Instead of cheating in a fair way, for example by stretching the definition of a cranium rat to include a mutant mole rat, you brazenly prod your rat with a stick! You should have just thrown it across the finish line." */
==g-bbD024 @33 /*"If someone can't use creativity to win, they're a complete loser, a gullible sod, and a cony!" */
==g-bbD025 @34 /*"Oh, you flea-ridden mutt!" The tension in the air between them is so intense that lightning bolts could soon begin to jolt through the air. Any moment now, and they will come to blows. */
END
IF~~THEN REPLY @36 /*"The abishai is right. Rules are meant to be followed." */ DO~IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD025.G1
IF~~THEN REPLY @37 /*"The glabrezu is right. Rules are made to be broken." */ DO~IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD025.H1
IF~~THEN REPLY @38 /*"Are you really arguing about cranium rat races? You're both pathetic." */ DO~~ + g-bbD025.E1
IF~~THEN REPLY @39 /*"Well, that's not my problem." */ DO~SetGlobal("nointerven","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD025 g-bbD025.E1
@41 /*Both fiends, as one, turn towards you. The mutual fury on their faces transforms into pure, united indignation. They exchange glances and nod. The hatchet has been temporarily buried. Unfortunately, their anger finds another outlet. Both charge at you with a battle cry. */
END
IF~~THEN REPLY @43 /*Defend yourself. */ DO~SetGlobal("interven","GLOBAL",1) ActionOverride("g-bb024",Enemy()) ActionOverride("g-bb025",Enemy())~ EXIT
CHAIN IF~~THEN g-bbD025 g-bbD025.G1
@45 /*Abishai bares his fangs in a ghastly smile. "In praise of Law!" */
==g-bbD025 @46 /*The glabrezu roars with fury and jumps at the other fiend. */
END
IF~~THEN REPLY @48 /*Leave. */ DO~SetGlobal("interven","GLOBAL",1) ActionOverride("g-bb024",Attack("g-bb025")) ActionOverride("g-bb025",Attack("g-bb024"))~ EXIT
CHAIN IF~~THEN g-bbD025 g-bbD025.H1
@50 /*The abishai roars with fury and jumps at the other fiend. */
END
IF~~THEN REPLY @52 /*Leave. */ DO~SetGlobal("interven","GLOBAL",1) Enemy() ActionOverride("g-bb024",Attack("g-bb025")) ActionOverride("g-bb025",Attack("g-bb024"))~ EXIT