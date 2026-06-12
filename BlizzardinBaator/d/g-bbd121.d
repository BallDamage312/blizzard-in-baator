BEGIN g-bbD121
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD121 g-bbD121.start
@0 /*A massive fiend with a bottom half that looks like a gigantic snake and a top half that looks like a beautiful woman with six arms roams the upper deck of the Styx Oarsman. Her many arms are definitely an asset when it comes to working with many bottles at once, allowing her to mix, stir, shake and serve a variety of drinks simultaneously. She sees you approach and hisses, "Do not talk to me, mortal. All orders are taken downstairs."  */
EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD121 g-bbD121.start2
@3 /*"What are you, deaf? Go see the gith downstairs." */
EXIT