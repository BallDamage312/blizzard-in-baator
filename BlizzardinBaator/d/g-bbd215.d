BEGIN g-bbD215
CHAIN IF~NumTimesTalkedTo(0)~THEN g-bbD215 g-bbD215.start1
@0 /*A man with long golden hair tied in a ponytail wanders around the Vertical Sea. With his knee-high lace-up sandals, leather armor skirt, and bronze gauntlets, he sticks out of his surroundings like a sore thumb. His muscular, tanned body glistens with sweat... or oil. It is hard to tell. */
=@1 /*He holds a sword crusted in dried blood. The man resembles a barbarian from one of the tribes of the Material Plane, but he is far too clean for that. He does not smell like a goat when he approaches you, which rules him out as a member of a clan. */
=@2 /*"Scar-clad warrior, hear my plea! 
Lend me thy aid, and set me free!"
He calls out in a ringing voice, as though hailing you from afar, though he stands right by you. He speaks in the common tongue, yet his words are stained with a heavy accent, making him difficult to understand. */
=@3 /*"To change my plight the gods so wise, 
have sent thee here to end my cries. 
Pray, where lies Thrassos, my noble peer? 
My search has been fruitless for many a year!" */
END
IF~CheckStatGT(Protagonist,15,WIS) Global("g-thrassos_memory","GLOBAL",0)~THEN REPLY @5 /*Some memories are struggling to surface. "Thrassos..." */ DO~AddexperienceParty(10000) SetGlobal("g-thrassos_memory","GLOBAL",1) FadeToColor([20.0],0)~ + g-bbD215.A1
IF~Global("g-thrassos_who","GLOBAL",0)~THEN REPLY @6 /*"Greetings. Who are you, traveler?" */ DO~SetGlobal("g-thrassos_who","GLOBAL",1)~ + g-bbD215.B1
IF~~THEN REPLY @7 /*"I'm sorry. I don't have time for this at the moment." */ DO~~ EXIT
CHAIN IF~NumTimesTalkedToGT(0)~THEN g-bbD215 g-bbD215.start2
@9 /*The muscular warrior still roams the Vertical Sea, reciting lofty phrases to himself. */
=@10 /*"Scar-clad warrior, hear my plea! 
Lend me thy aid, and set me free!
Pray, where lies Thrassos, my noble peer? 
My search has been fruitless for many a year!" */
END
IF~CheckStatGT(Protagonist,15,WIS) Global("g-thrassos_memory","GLOBAL",0)~THEN REPLY @12 /*Some memories are struggling to surface. "Thrassos..." */ DO~AddexperienceParty(10000) SetGlobal("g-thrassos_memory","GLOBAL",1) FadeToColor([20.0],0)~ + g-bbD215.A1
IF~Global("g-thrassos_who","GLOBAL",0)~THEN REPLY @13 /*"Greetings. Who are you, traveler?" */ DO~SetGlobal("g-thrassos_who","GLOBAL",1)~ + g-bbD215.B1
IF~Global("g-thrassos_who","GLOBAL",0)~THEN REPLY @14 /*"Like I already said. I don't have time for this at the moment." */ DO~~ EXIT
IF~Global("g-thrassos_who","GLOBAL",1)~THEN REPLY @15 /*"Hello again, Tarsius. I already told you that I don't know how to get to Thrassos, but I'm keeping my fingers crossed for you." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD215 g-bbD215.A1
@19 /*You stroll through an olive grove, holding an amphora half-filled with wine in your hands. You take a long sip, feeling the sweet taste of grapes and spices on your tongue. A pleasant alcoholic warmth spreads through your body, and the sun gently caresses your skin. In the distance, you see an amphitheater carved into the mountainside. The singing of a choir and lively music can be heard coming from there. The actors must be performing a comedy. Perhaps Lord Apollo himself will grace the performance with his presence? You'll check in later. Right now, you have another quest. [SPTR_01] */
=@20 /*You take another sip of wine for courage and let your legs lead you to the square in the center of town. This time, you will win the debate with Heliodorus. Your arguments are unbeatable! You'll show that buffoon what you are capable of.  */
=@21 /*The memory fades, and you find yourself face to face with the strange man again, who is staring at you, waiting for an answer. */
END
IF~~THEN REPLY @23 /*"I was once in your homeland, but unfortunately I don't know how to get there from here. I'm sorry." */ DO~~ + g-bbD215.D1
IF~Global("g-thrassos_who","GLOBAL",0)~THEN REPLY @24 /*"I understand. And who are you, traveler?" */ DO~SetGlobal("g-thrassos_who","GLOBAL",1)~ + g-bbD215.B1
IF~~THEN REPLY @25 /*"I'm sorry, I don't know. Good luck." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD215 g-bbD215.D1
@27 /*You see that the man is becoming sad, but he quickly straightens his shoulders, as if resignation does not suit someone of his position. */
=@28 /*"I see, deep sadness my heart fills, 
but such is life when full of thrills. 
None I asked to show the way, 
could help me, much to my dismay. 
But I'll not give up, I will not yield. 
My holy duty forms my shield. 
The gods themselves gave me this task. 
In victory's glow I will yet bask! 
I'll yet defeat foes in my way, 
Save kin who for salvation pray." */
END
IF~Global("g-thrassos_who","GLOBAL",0)~THEN REPLY @30 /*"Who are you, stranger, that the gods give you tasks?" */ DO~SetGlobal("g-thrassos_who","GLOBAL",1)~ + g-bbD215.B1
IF~~THEN REPLY @31 /*"Well, good luck." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD215 g-bbD215.B1
@33 /*The man proudly puffs out his chest.
 */
=@34 /*"I am Tarsier and Tarsier's son, 
in Thrassos known by everyone. 
The bards that travel nights and days, 
Across Arborea sing my praise.
Such poems laud my mighty deeds 
When e'er the land a hero needs.
Hubris cannot bring one gain - 
But know my worth from another plane.
I tread my path, sent me by fate
My oath and strength keep my road straight.
My duty suffers no delay
At once I must be on my way!" */
END
IF~~THEN REPLY @36 /*"Tell me what glorious deeds you have accomplished, Tarsius." */ DO~~ + g-bbD215.I1
IF~~THEN REPLY @37 /*"What task must you complete?" */ DO~~ + g-bbD215.J1
IF~~THEN REPLY @38 /*"Well, it's nice to meet you. Good luck getting home." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD215 g-bbD215.I1
@40 /*The man's eyes shine with the reflection of former glory.  */
=@41 /*"The deeds I've done! I'll tell you true. 
I sailed across the oceans blue. 
Out there I slew a dragon green, 
A fiercer beast I'd never seen. 
To windy valley 'cross the way
I travelled quick to end a fey.
A phoenix feather was one prize
A gorgon writhed before my eyes,
Titans, lions, harpies, more -
Typhon's offspring by the score!
But now I must get home to best
The vilest monster - 'tis my quest." */
END
IF~~THEN REPLY @43 /*"And what kind of monster do you have to destroy?" */ DO~~ + g-bbD215.J1
IF~~THEN REPLY @44 /*"Well, I hope you can return home quickly. Take care." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD215 g-bbD215.J1
@46 /*"The task ahead is long and hard
Which I'll fulfill, though bruised or scarred.
Fate sent me here despite my mission
a stumbling block to my ambition."

He sighs heavily, but continues his story. */
=@47 /*"The Oracle of Thrassos told
A prophecy to chill the bold. 
A year from now we may not stand -
This monstrous beast shall tread the land.
The Hydra, of a hundred head!
Ye cut one, three grow in its stead.
A simple mortal could not help
A hero needed, no mere whelp
The Gods bestowed this task to me
I travelled far, crossed mountains free
And there obtained a mythic ore
Destroyer of evil to its core
Arborea's smiths toiled hard and built
A mighty sword sharp to its hilt."
 */
=@48 /*He proudly shows you his weapon. Upon closer inspection, you notice the intricate runes and the exquisite smoothness of the blade.

"It turns my force to radiant light,
In strangers' hands it will not smite.
Thus armed, to home I did ascend
To bring this monster to its end.

At last the Hydra did appear
We fought till next dusk drew near

Scales glittering beneath the sun
A fearsome battle, hardly won.
Its anger raging like a flood,
The ground beneath me slick with blood
On armoured hide, on neck and back
The vorpal blade went snicker-snak
This searing sword through every neck
Shears each fell skull without a check

My valiant glory, true and just
Will live long after I am dust." */
=@49 /*Tarsius clears his throat, as if realizing he has gone a little too far.

"With victory's taste upon my tongue,
The Hydra's heads lay still among
The gore that covered o'er the ground
Just one more blow - but then I found
I could not move, a portal whirled
Beneath my feet, and down I swirled -
Through searing blackness, plane by plane,
'till I fell here, in this dark lane.
So now, scarred friend, you know my tale
A portal home I must avail
The Hydra's death I still intend,
Or Thrassos fair will meet its end." */
=@50 /*"Aid me, I beg thee, where's the portal home? 
Tell me, my friend, somewhere between this foam?"  */
END
IF~~THEN REPLY @52 /*"If I find out anything, I'll be sure to let you know, Tarsius. Take care and good luck." */ DO~~ EXIT
IF~~THEN REPLY @53 /*"I can't promise anything, but I'll keep it in mind. Take care." */ DO~~ EXIT
IF~Global("g-thrassos_mean","GLOBAL",0)~THEN REPLY @54 /*"Why should I care about some monster on the other side of the planes? I have my own worries. Goodbye." */ DO~IncrementGlobal("GOOD","GLOBAL",-1) SetGlobal("g-thrassos_mean","GLOBAL",1)~ EXIT