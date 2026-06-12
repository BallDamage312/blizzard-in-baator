BEGIN g-bbD033
CHAIN IF~True()~THEN g-bbD033 g-bbD033.1
@0 /*The man tenses his muscles nervously, ready to attack at any moment. "You need somethin', berk? Or are you just looking for a shiv in the kidneys?" */
END
IF~~THEN REPLY @2 /*"Who are you?" */ DO~~ + g-bbD033.2
IF~~THEN REPLY @3 /*"What is this place?" */ DO~~ + g-bbD033.3
IF~~THEN REPLY @4 /*"I'm looking for information." */ DO~~ + g-bbD033.4
IF~~THEN REPLY @5 /*"It's time for me to go." */ DO~~ + g-bbD033.6
CHAIN IF~~THEN g-bbD033 g-bbD033.2
@7 /*The thug looks you straight in the eye. "Me? I'm Black Joseph's man. What do you care?" */
END
IF~~THEN REPLY @9 /*"Who is Black Joseph?" */ DO~~ + g-bbD033.5
IF~~THEN REPLY @10 /*"What is this place?" */ DO~~ + g-bbD033.3
IF~~THEN REPLY @11 /*"I'm looking for information." */ DO~~ + g-bbD033.4
IF~~THEN REPLY @12 /*"It's time for me to go." */ DO~~ + g-bbD033.6
CHAIN IF~~THEN g-bbD033 g-bbD033.3
@14 /*"This dive? The Rivergate. A right fine kip." He grins through rotten teeth. */
END
IF~~THEN REPLY @16 /*"I'm looking for information." */ DO~~ + g-bbD033.4
IF~~THEN REPLY @17 /*"It's time for me to go." */ DO~~ + g-bbD033.6
CHAIN IF~~THEN g-bbD033 g-bbD033.4
@19 /*"Listen." The tension in his voice grows. "I'm not a piking tout. Go pester the barkeep over there." The thug points to the bar. */
END
IF~~THEN REPLY @21 /*"I'll do that." */ DO~~ + g-bbD033.6
IF~~THEN REPLY @22 /*"It's time for me to go." */ DO~~ + g-bbD033.6
CHAIN IF~~THEN g-bbD033 g-bbD033.5
@24 /*The man lifts his head proudly. "He's the best skullbasher in this part of the Hive." He points to the platform. "That big blood over there. Try to get close to him." He bursts into laughter. */
END
IF~~THEN REPLY @26 /*"What is this place?" */ DO~~ + g-bbD033.3
IF~~THEN REPLY @27 /*"I'm looking for information." */ DO~~ + g-bbD033.4
IF~~THEN REPLY @28 /*"It's time for me to go." */ DO~~ + g-bbD033.6
CHAIN IF~~THEN g-bbD033 g-bbD033.6
@30 /*"Yeah? Then pike off." */
EXIT