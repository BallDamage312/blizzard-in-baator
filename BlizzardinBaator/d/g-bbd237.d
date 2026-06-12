BEGIN g-bbD237
CHAIN IF~!AreaCheck("ARG-EK")~THEN g-bbD237 g-bbD237.start1
@0 /*The monodrone does not react to you. */
EXIT
CHAIN IF~AreaCheck("ARG-EK")~THEN g-bbD237 g-bbD237.start2
@4 /*The monodrone does not react to you. It shuffles its metal legs among the pebbles and debris. Every now and then, it kicks one of the larger rocks. */
==g-bbd245 @5 /**HEY!* a voice echoes in your head, though it seems to be directed at the modron. *We don't kick your friends!* */
EXIT