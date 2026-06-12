BEGIN g-bbD169
CHAIN IF~True()~THEN g-bbD169 g-bbD169.start
@0 /*"I hope this is important, slave. The meetings are becoming increasingly... difficult." */
==g-bbd170 @1 /*"I come bearing news. You should come back to the Tower soon, it is about to happen." */
==g-bbd169 @2 /*"So soon? She got through to... Lady M.? That is unexpected." */
==g-bbd170 @3 /*"Not quite, my lord, but the passageways are becoming more stable... and closer to the target. Caustus and his... substance are making great progress." */
==g-bbd169 @4 /*"Very well. I think things here are... stable. The baron does not look beyond the boundaries of the city too often. He is the literal opposite of Mephistopheles." */
==g-bbd170 @5 /*"Yes, my lord. I need to run now. The interrogation team will be nearby soon and I need to reunite with them." */
==g-bbd169 @6 /*"Ah." The fiend pauses. "Are the interrogations not finished? Then the progress is not quite *as* fast, isn't it? Go, and I will join you all, soon." */
END
IF~~THEN REPLY @8 /*Continue. */ DO~StartCutScene("g-bbc018")~ EXIT