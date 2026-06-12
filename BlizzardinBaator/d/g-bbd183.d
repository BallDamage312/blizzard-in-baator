BEGIN g-bbD183
CHAIN IF~RandomNum(20,1) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start1
@0 /*"Help yourself. There's never a shortage of food and drink in here! To Ulf! Skål!" */
END
IF~~THEN REPLY @2 /*Feast with them. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) RestPartyEx(0, 0, true)~ EXIT
IF~~THEN REPLY @3 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~RandomNum(20,2) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start2
@5 /*"Welcome to Debt Collection! Talk to Ulfbrand if you want to learn more about us." */
EXIT
CHAIN IF~RandomNum(20,3) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start3
@8 /*"Oh, a new face! Nice, very nice! Talk to Ulfbrand, he's the highest-ranking member of the faction." */
EXIT
CHAIN IF~RandomNum(20,4) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start4
@11 /*"New blood? Why should I care? I don't have time for you. Go talk to Ulfbrand instead." */
EXIT
CHAIN IF~RandomNum(20,5) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start5
@14 /*"Hm? Oh, I didn't see you. Talk to Ulfbrand if you want to join us." */
EXIT
CHAIN IF~RandomNum(20,6) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start6
@17 /*"Where's that piking record? Hm... Oh! Did you find it? No? Don't bother me, then. Go talk to Ulfbrand." */
EXIT
CHAIN IF~RandomNum(20,7) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start7
@20 /*"Are you a member of the faction? I haven't seen you here before. Ulfbrand will definitely want to talk to you." */
EXIT
CHAIN IF~RandomNum(20,8) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start8
@23 /*"Ah, hello, hello! Another Fated? Ulfbrand will be delighted!" */
EXIT
CHAIN IF~RandomNum(20,9) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start9
@26 /*"I told you to leave... Oh, sorry, I mistook you for someone else. Anyway, I'm busy. You'd better talk to Ulfbrand." */
EXIT
CHAIN IF~RandomNum(20,10) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start10
@29 /*"We can never have enough Fated! Soon, we'll be the largest faction in Sigil! Talk to Ulfbrand if you want to help us achieve greatness!" */
EXIT
CHAIN IF~RandomNum(20,11) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start11
@32 /*"Mhm, mhm, yes, yes, if I add five here and divide by three... Huh? Oh, you're probably looking for Ulfbrand. He's over there, at the end of the hall." */
EXIT
CHAIN IF~RandomNum(20,12) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start12
@35 /*"It must be destiny that brought you to the Fated faction, haha! Ulfbrand will be delighted!" */
EXIT
CHAIN IF~RandomNum(20,13) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start13
@38 /*"Hm? Ah, Ulfbrand mentioned that new faction members might show up here. Talk to him, he'll explain everything." */
EXIT
CHAIN IF~RandomNum(20,14) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start14
@41 /*"First time in Ysgard? You look like it. No offense. Better talk to Ulfbrand, he'll explain everything." */
EXIT
CHAIN IF~RandomNum(20,15) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start15
@44 /*"Ah, I can't wait for my next visit to the sauna... What? Ulfbrand? Yes, he's here, talk to him." */
EXIT
CHAIN IF~RandomNum(20,16) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start16
@47 /*"Don't distract me, I have an important task from Ulfbrand. If you want one too, talk to him." */
EXIT
CHAIN IF~RandomNum(20,17)  !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start17
@50 /*"Help yourself. There's never a shortage of food and drink in here! To Ulf! Skål!" */
END
IF~~THEN REPLY @52 /*Feast with them. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) RestParty()~ EXIT
IF~~THEN REPLY @53 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~RandomNum(20,18)  !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start18
@55 /*"Help yourself. There's never a shortage of food and drink in here! To Ulf! Skål!" */
END
IF~~THEN REPLY @57 /*Feast with them. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) RestParty()~ EXIT
IF~~THEN REPLY @58 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~RandomNum(20,19)  !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start19
@60 /*"Help yourself. There's never a shortage of food and drink in here! To Ulf! Skål!" */
END
IF~~THEN REPLY @62 /*Feast with them. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) RestParty()~ EXIT
IF~~THEN REPLY @63 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~RandomNum(20,20) !Dead("g-bb201")~THEN g-bbD183 g-bbD183.start20
@65 /*"Help yourself. There's never a shortage of food and drink in here! To Ulf! Skål!" */
END
IF~~THEN REPLY @67 /*Feast with them. */ DO~FadeToColor([20.0],0) Wait(2) FadeFromColor([20.0],0) RestParty()~ EXIT
IF~~THEN REPLY @68 /*"Never mind, goodbye." */ DO~~ EXIT
CHAIN IF~Dead("g-bb201")~THEN g-bbD183 g-bbD183.start21
@70 /*Without Ulfbrand, the Fated seem to be bustling about aimlessly. They are evidently waiting for new leadership. */
END
IF~~THEN REPLY @72 /*Leave. */ DO~~ EXIT