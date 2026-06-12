BEGIN g-bbD178
CHAIN IF~True()~THEN g-bbD178 g-bbD178.start
@0 /*This insectoid fiend stands with its many arms crossed behind its back. It ignores you completely. */
END
IF~~THEN REPLY @2 /*"Greetings..." */ DO~~ + g-bbD178.2
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD178 g-bbD178.2
@5 /*Its red eyes glance at you momentarily and return to staring into the distance. */
END
IF~~THEN REPLY @7 /*"So... nice weather, yes?" */ DO~~ + g-bbD178.3
IF~~THEN REPLY @8 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD178 g-bbD178.3
@10 /*This time, it does not even grace you with a glance. */
END
IF~~THEN REPLY @12 /*Leave. */ DO~~ EXIT