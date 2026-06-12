BEGIN g-bbD166
CHAIN IF~RandomNum(3,1)~THEN g-bbD166 g-bbD166.start1
@0 /*The red abishai barely acknowledges your existence, and continues to walk past you. */
EXIT
CHAIN IF~RandomNum(3,2)~THEN g-bbD166 g-bbD166.start2
@3 /*"What'dya want from me? Pike off." */
EXIT
CHAIN IF~RandomNum(3,3)~THEN g-bbD166 g-bbD166.start3
@6 /*"Who will Zegonz let in here next? Elves?" */
EXIT