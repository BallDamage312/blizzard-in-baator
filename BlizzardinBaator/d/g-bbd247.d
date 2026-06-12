BEGIN g-bbD247
CHAIN IF~Global("G-ropeattached","GLOBAL",0)~THEN g-bbD247 g-bbD247.start
@0 /*In the shadow of the Knife in the River stands a tall, solid metal pole. */
END
IF~Global("G-ropeattached","GLOBAL",0) PartyHasItem("g-bbi130")~THEN REPLY @2 /*Secure the rope to the pole and lower it down the pipe. */ DO~SetGlobal("G-ropeattached","GLOBAL",1) DestroyPartyItem("g-bbi130",0)~ EXIT
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT