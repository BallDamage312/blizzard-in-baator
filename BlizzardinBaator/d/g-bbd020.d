BEGIN g-bbD020
CHAIN IF~RandomNum(7,0)~THEN g-bbD020 g-bbD020.start1
@0 /*"Leave me alone, biped." */
EXIT
CHAIN IF~RandomNum(7,2) !Dead("g-bb086")~THEN g-bbD020 g-bbD020.start2
@3 /*"Go pester Orville." */
EXIT
CHAIN IF~RandomNum(7,2)  Dead("g-bb086")~THEN g-bbD020 g-bbD020.start2
@6 /*"Go pester the new barkeep." */
EXIT
CHAIN IF~RandomNum(7,3)~THEN g-bbD020 g-bbD020.start3
@9 /*"What? Thieves? No thieves here." */
EXIT
CHAIN IF~RandomNum(7,4) !Dead("g-bb086")~THEN g-bbD020 g-bbD020.start4
@12 /*"Orville is a true blood." */
EXIT
CHAIN IF~RandomNum(7,4) Dead("g-bb086")~THEN g-bbD020 g-bbD020.start4
@15 /*"Orville was a true blood." */
EXIT
CHAIN IF~RandomNum(5,5) Global("G-triplerfree","GLOBAL",0)~THEN g-bbD020 g-bbD020.start5
@18 /*"Who is this skeleton man? He just shows up every cycle, same time." */
EXIT
CHAIN IF~RandomNum(5,5) Global("G-triplerfree","GLOBAL",1)~THEN g-bbD020 g-bbD020.start6
@21 /*"Who was this skeleton man? He used to show up every cycle, same time." */
EXIT
CHAIN IF~RandomNum(5,6)~THEN g-bbD020 g-bbD020.start6
@24 /*"Don't bother me, I'm trying to relax." */
EXIT
CHAIN IF~RandomNum(6,7)~THEN g-bbD020 g-bbD020.start7
@27 /*"Maybe I should go to the beach." */
EXIT
CHAIN IF~RandomNum(7,1)~THEN g-bbD020 g-bbD020.star8
@30 /*"Those temple lunatics have been acting up again." */
EXIT