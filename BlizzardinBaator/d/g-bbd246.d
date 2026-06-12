BEGIN g-bbD246
CHAIN IF~Global("G-madwizardtrap","GLOBAL",0) ~THEN g-bbD246 g-bbD246.start
@0 /*A man clad in a red robe flies into a rage at the sight of you. "YOU? YOU AGAIN?" His eyes are filled with a multitude of emotions, but they are partially obscured by a distinct haze of madness. "IT WASN'T ENOUGH THAT YOU TOOK MY SENSES. DID YOU COME FOR MY BREATH TOO?" [g-24601] */
==g-bbd246 IF~Global("G-golemreturned","GLOBAL",1)~THEN @1 /*"AND YOU LET MY GOLEM ESCAPE? THAT WAS MY CHANCE TO WAKE UP!" [g-24602] */
==g-bbd246 @2 /*The mage begins to cast some spell. Clearly, there is no room for discussion at this moment. */
END
IF~~THEN REPLY @4 /*Defend yourself. */ DO~Enemy() ForceAttack(Protagonist,Myself) SetGlobal("G-madwizardagro","GLOBAL",1) ~ EXIT
CHAIN IF~Global("G-madwizardtrap","GLOBAL",1) ~THEN g-bbD246 g-bbD246.startalt
@6 /*A man clad in a red robe flies into a rage at the sight of you. "YOU? YOU AGAIN?" His eyes are filled with a multitude of emotions, but they are partially obscured by a distinct haze of madness. "IT WASN'T ENOUGH THAT YOU TOOK MY SENSES. DID YOU COME FOR MY BREATH TOO?" [g-24601] */
=@7 /*"GOLEM! ASULTUS! PROTECT YOUR MASTER." [g-24603] */
END
IF~~THEN REPLY @9 /*Continue. */ DO~StartCutScene("g-mgmrd")~ EXIT