BEGIN g-bbD236
CHAIN IF~True()~THEN g-bbD236 g-bbD236.start1
@0 /*As you come in, a large man hurries out of the door. "Get out of my way! I have a frost giant earring to recover." */
END
IF~~THEN REPLY @2 /*"A frost giant earring?" */ DO~AddexperienceParty(10000)~ + g-bbD236.cont
CHAIN IF~~THEN g-bbD236 g-bbD236.cont
@4 /*"Yes, someone stole one of the Jarl's. He is *not* happy about it. Now, let me pass." */
END
IF~~THEN REPLY @6 /*"I'm not stopping you." */ DO~EscapeArea()~ EXIT