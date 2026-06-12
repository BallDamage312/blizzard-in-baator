BEGIN g-bbD163
CHAIN IF~Global("G-mimicgaveup","GLOBAL",0) ~THEN g-bbD163 g-bbD163.read
@0 /*This book is rather large and *very* heavy. You would think it was cast in solid metal. The cover does not have any title, author or anything betraying the possible content. It is quite strangely non-symmetrical. */
END
IF~!Global("g-knowmimic","GLOBAL",1) ~THEN REPLY @2 /*Open the book. */ DO~~ + g-bbD163.open
IF~Global("g-knowmimic","GLOBAL",1) ~THEN REPLY @3 /*Open the mimic. */ DO~~ + g-bbD163.open
IF~Global("g-knowmimic","GLOBAL",0) OR(2) CheckStatGT(Protagonist,16,WIS) CheckStatGT(Protagonist,16,INT)~THEN REPLY @4 /*Examine the book closely. */ DO~SetGlobal("g-knowmimic","GLOBAL",1) ~ + g-bbD163.examineS
IF~Global("g-knowmimic","GLOBAL",0) !CheckStatGT(Protagonist,16,WIS) !CheckStatGT(Protagonist,16,INT)~THEN REPLY @5 /*Examine the book closely. */ DO~~ + g-bbD163.examineF
IF~!Global("g-knowmimic","GLOBAL",1) ~THEN REPLY @7 /*Put the book away. */ DO~~ EXIT
IF~Global("g-knowmimic","GLOBAL",1) ~THEN REPLY @8 /*Put the mimic away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD163 g-bbD163.examineF
@10 /*The book is large, heavy and purple. To examine its content you would have to open it. */
END
IF~~THEN REPLY @12 /*Open the book. */ DO~~ + g-bbD163.open
IF~~THEN REPLY @13 /*Put the book away. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD163 g-bbD163.examineS
@15 /*You rotate the book and look at it from all angles looking for anything that could tell you more about what could be written inside. When doing so, you realize the book is a bit... sticky. And that stickiness triggers something in your mind. */
END
IF~~THEN REPLY @17 /*Remember. */ DO~AddexperienceParty(60000)~ + g-bbD163.memory
CHAIN IF~~THEN g-bbD163 g-bbD163.memory
@19 /*The smell is fresh, that of pine trees. The crunching sound of slightly dried needles covering the path soothes your weary ears. The path brings you back to the village, which you feel to be safe. For now. Many structures have fallen but this one outhouse stands in the shadow of the trees, untouched. A miracle of convenience. You approach and put your hand on its door... and your hand sticks. You instinctively pull away, but it will not let go. The door then opens, revealing hundreds of sharp teeth hidden within. [SPTR_01] */
=@20 /*The book is a mimic! A devious creature posing as items to trap unsuspecting people. */
END
IF~~THEN REPLY @22 /*Put the mimic away. */ DO~~ EXIT
IF~~THEN REPLY @24 /*Open the mimic book. */ DO~~ + g-bbD163.open
CHAIN IF~~THEN g-bbD163 g-bbD163.open
@26 /*As you begin to open the pages of the strange book, you feel it take over the movement, spreading your arms wide. At the very edge of the book cover, you can make out rows of sharp teeth that come to bite your exposed chest. */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @27 /*"That's one consuming book!" */
END
IF~~THEN REPLY @29 /*Defend yourself. */ DO~CreateCreatureObject("g-bb163",Protagonist,0,0,0) ActionOverride("g-bb163",Enemy()) ActionOverride(Protagonist,Attack("g-bb163")) DestroyPartyItem("g-bbi058",0)~ EXIT
CHAIN IF~Global("G-mimicgaveup","GLOBAL",1) ~THEN g-bbD163 g-bbD163.postbattle
@31 /*As the book mimic is close to perishing, it drops violently to the ground and starts flipping through the pages, as if looking for a piece of information. */
END
IF~~THEN REPLY @33 /*Take this opportunity to finish the mimic off before it executes its plan. */ DO~ActionOverride("g-bb163",Kill(Myself)) AddexperienceParty(2000)~ EXIT
IF~~THEN REPLY @34 /*Allow the monstrosity to find the right page. */ DO~~ + g-bbD163.post2
CHAIN IF~~THEN g-bbD163 g-bbD163.post2
@36 /*Eventually, the flipping stops and the mimic settles on a page filled with sketches and notes in a foreign language. The page shows a temple with a statue of a powerful-looking rat-man, an old box and a... key. */
=@37 /*It occurs to you that the creature is bargaining for its life. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @38 /*"This box looks like it could hold some right treasure, aye?" */
END
IF~~THEN REPLY @40 /*This has to be a trap. Finish the mimic off now. */ DO~ActionOverride("g-bb163",Kill(Myself)) AddexperienceParty(2000)~ EXIT
IF~~THEN REPLY @41 /*Examine the key. */ DO~SetGlobal("G-knowmimickey","GLOBAL",1) SetGlobal("G-rattemplequest","GLOBAL",1)~ SOLVED_JOURNAL @20203 + g-bbD163.post3
CHAIN IF~~THEN g-bbD163 g-bbD163.post3
@43 /*The key is in fact a key-shaped magical symbol. Something in you tells you that you used to know this system a long time ago. You can probably memorize this and just be able to open the box. */
=@44 /*The book shivers in expectation. */
END
IF~~THEN REPLY @46 /*Finish the mimic off now. */ DO~ActionOverride("g-bb163",Kill(Myself)) AddexperienceParty(12000)~ EXIT
IF~~THEN REPLY @47 /*"Fine, scram." */ DO~ChangeEnemyAlly("g-bb163",NEUTRAL) ActionOverride("g-bb163",EscapeArea()) AddexperienceParty(14000) SetGlobal("G-mimicfriend","GLOBAL",1)~ EXIT