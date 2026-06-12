BEGIN g-bbD100
CHAIN IF~True()~THEN g-bbD100 g-bbD100.start
@0 /*Now that you know the password, you go straight to the door and can hear someone breathing on the other side. */
END
IF~~THEN REPLY @2 /*"Fur always on top..." */ DO~~ + g-bbD100.yup
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD100 g-bbD100.yup
@5 /*"Correct," a muffled raspy voice sounds on the other side, and you hear the door unlock. */
END
IF~~THEN REPLY @7 /*"Great." */ DO~SetGlobal("G-Szczurwidolek","GLOBAL",4) ActionOverride("g-bb223",DestroySelf())~ EXIT