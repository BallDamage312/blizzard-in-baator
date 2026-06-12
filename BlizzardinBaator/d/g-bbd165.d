BEGIN g-bbD165
CHAIN IF~RandomNum(3,1)~THEN g-bbD165 g-bbD165.start1
@0 /*"Are you food, service or annoyance?" */
EXIT
CHAIN IF~RandomNum(3,2)~THEN g-bbD165 g-bbD165.start2
@3 /*"Leave me alone, meat! I'm trying to relax." */
EXIT
CHAIN IF~RandomNum(3,3)~THEN g-bbD165 g-bbD165.start3
@6 /*The fiend just turns his mismatched, patchwork face towards you. He may be considering commiting a crime. */
EXIT