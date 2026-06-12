BEGIN g-bbD078
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD078 g-bbD078.start
@0 /*You see a man in elegant, if rather old-fashioned clothing. His long gray hair is blowing in the wind, and his watery eyes are staring off into the distance. His mouth is half-closed, as if he was going to say something, but in the end he hesitated and changed his mind. However, he holds his index finger raised like a professor ready to resume a suspended lecture at any moment. */
=@1 /*When you approach, he shows no sign of acknowledgement. He does not even move. */
END
IF~~THEN REPLY @3 /*"Hello. What are you doing?" */ DO~~ + g-bbD078.A1
IF~~THEN REPLY @4 /*"Hello? Is there anybody in there?" */ DO~~ + g-bbD078.A1
IF~~THEN REPLY @5 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD078 g-bbD078.start2
@7 /*You see a man in elegant, if rather old-fashioned clothing. His long gray hair is blowing in the wind, and his watery eyes are staring off into the distance. His mouth is half-closed, as if he was going to say something, but in the end he hesitated and changed his mind. However, he holds his index finger raised like a professor ready to resume a suspended lecture at any moment. */
END
IF~~THEN REPLY @9 /*"Hello. What are you doing?" */ DO~~ + g-bbD078.A1
IF~~THEN REPLY @10 /*"Hello? Is there anybody in there?" */ DO~~ + g-bbD078.A1
IF~~THEN REPLY @11 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD078 g-bbD078.A1
@13 /*Your words elicit no reaction. The man does not move. You look at him more closely. You realize that he does not blink. Or breathe. Carefully, you touch his arm. It is as cold and hard as marble. You are not sure if you are dealing with a disturbingly realistic sculpture or an unlucky victim of some curse. Maybe it is best not to inquire.  */
END
IF~~THEN REPLY @15 /*"Well then. Farewell, whoever or whatever you are." */ DO~~ EXIT
IF~~THEN REPLY @16 /*"Come on, I won't be talking to a stone. " */ DO~~ EXIT
IF~~THEN REPLY @17 /*Leave. */ DO~~ EXIT