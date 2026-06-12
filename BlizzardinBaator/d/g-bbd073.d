BEGIN g-bbD073
CHAIN IF~True()~THEN g-bbD073 g-bbD073.start
@0 /*You see a young person of indeterminate gender before you. They look confused and frightened. Their pretty face is decorated with tiny amber crystals that create patterned swirls around their piercing ocean blue eyes. Their long hair, green and tangled like seaweed, is woven with shiny stones. Pearls are hanging from their shell-like ears. The entire figure is wrapped in layers of colorful, flowing robes. For some reason, the being is dripping with water. When you look closer, you notice webbing between their slender fingers.  */
=@1 /*Seeing that you are paying attention to them, the person speaks to you in a strange, gurgling language. With each word, a stream of foam leaks from their mouth and runs down their chin, but they do not seem to care.  */
END
IF~Global("g-dialog12","GLOBAL",0)~THEN REPLY @3 /*"I'm sorry, I don't understand you." */ DO~SetGlobal("g-dialog12","GLOBAL",1)~ + g-bbD073.A1
IF~Global("g-dialog12","GLOBAL",0)~THEN REPLY @4 /*"What kind of freak of nature are you?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-dialog12","GLOBAL",1)~ + g-bbD073.A1
IF~~THEN REPLY @5 /*"Sorry. I don't have time." Leave. */ DO~EscapeArea()~ EXIT
CHAIN IF~~THEN g-bbD073 g-bbD073.A1
@7 /*The person shakes their head sadly. They do not seem to understand you. They try again and speak passionately, more water pouring over their body. Finally, they give up, seeing that you two will not reach an accord. They give you a look of despair, then walk away with uncertain steps, eyes darting around in fear. They leave wet fin marks on the ground behind them. */
END
IF~~THEN REPLY @9 /*"Well, good luck, traveller." */ DO~EscapeArea()~ EXIT
IF~~THEN REPLY @10 /*"Heh. Good riddance." */ DO~EscapeArea()~ EXIT