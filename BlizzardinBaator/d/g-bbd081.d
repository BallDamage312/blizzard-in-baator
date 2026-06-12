BEGIN g-bbD081
CHAIN IF~Global("G-poppy","GLOBAL",1)
~THEN g-bbD081 g-bbD081.start3
@0 /*When the old man sees you approach, he starts cackling even more unbearably than before.  */
END
IF~~THEN REPLY @2 /*"What's so funny, old man?" */ DO~~ + g-bbD081.D1
IF~~THEN REPLY @3 /*"I don't have time for that. Bye." */ DO~~ EXIT
IF~~THEN REPLY @4 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD081 g-bbD081.start1
@6 /*In front of you sits a cackling old man. His frail body seems all but consumed by the loose rags he is wearing. He has to be aware that his laughter is grating on the nerves of the nearby woman because he is clearly doing it on purpose. Once you approach him, he gives you a conspiratorial smile and whispers as if you were his partner in crime. "She does not know. Ha! She does not know! Hahaha."  */
END
IF~~THEN REPLY @8 /*"What exactly do you know?" */ DO~~ + g-bbD081.A1
IF~~THEN REPLY @9 /*"I don't have time for that. Bye." */ DO~~ EXIT
IF~~THEN REPLY @10 /*Leave. */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD081 g-bbD081.start2
@12 /*When the old man sees you approach him, he starts to cackle maliciously. Once you are close, he gives you a conspiratorial smile and whispers as if you were his partner in crime. "She does not know. Ha! She does not know! Hahaha."  */
END
IF~~THEN REPLY @14 /*"What exactly do you know?" */ DO~~ + g-bbD081.A1
IF~~THEN REPLY @15 /*"I don't have time for that. Bye." */ DO~~ EXIT
IF~~THEN REPLY @16 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD081 g-bbD081.A1
@18 /*The man leans even closer to you. "Haha. She does not know that I went home and fixed it!" Once the woman turns the other way, he dips his head to proudly display his skull to you. The back of the cranium has been plastered all over with the uneven sheets of torn brown paper. Somehow they smell strongly of vinegar. */
END
IF~~THEN REPLY @20 /*"Hm. Interesting... Why don't you tell her?" */ DO~~ + g-bbD081.C1
IF~~THEN REPLY @21 /*"Good for you. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @22 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD081 g-bbD081.C1
@24 /*"Why would I? She didn't trot home like I did!" He laughs, swaying to and fro. So hard is the sway in fact that the vinegar-soaked papier-mâché construction detaches from his skull and lands right in the puddle. Seeing that, the man wheezes and guffaws like a madman. "It's... it's broken again! My crown! Hahahaha! Guess we need to fetch a pail of water again!" */
END
IF~~THEN REPLY @26 /*"Okay, keep it up. Goodbye." */ DO~~ EXIT
IF~~THEN REPLY @27 /*"What a waste of time." */ DO~~ EXIT
IF~~THEN REPLY @28 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD081 g-bbD081.D1
@30 /*"Because that memory in the sensorium is mine! And I specifically blocked it from my wife! Hahaha! She'll never know how to fix that crown!" The old man rubs his hands and rejoices like a child over the little power he has. */
END
IF~~THEN REPLY @32 /*You decide that it is better to leave him and his failed art project alone. */ DO~EscapeArea()~ EXIT