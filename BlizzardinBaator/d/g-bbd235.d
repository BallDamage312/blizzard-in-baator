BEGIN g-bbD235
CHAIN IF~Global("G-CroneUsedToday","GLOBAL",0)~THEN g-bbD235 g-bbD235.start1
@0 /*The Bone of Thanatos awaits your command. The eye in the skull glows faintly green.
 */
END
IF~Range(NearestEnemyOf([PC]),60)~THEN REPLY @2 /*"Aid me, Avenger Queen. Send one of your crones to assist me." */ DO~CreateCreatureAtFeet("g-bb235") SetGlobal("G-CroneUsedToday","GLOBAL",1)~ EXIT
IF~!Range(NearestEnemyOf([PC]),60)~THEN REPLY @3 /*There are no enemies nearby. */ DO~~ EXIT
IF~Range(NearestEnemyOf([PC]),60)~THEN REPLY @4 /*Do not call upon Kiaransalee for help. */ DO~~ EXIT
CHAIN IF~Global("G-CroneUsedToday","GLOBAL",1)~THEN g-bbD235 g-bbD235.start2
@6 /*The Bone of Thanatos is asleep. The eye has no glow for now. */
EXIT