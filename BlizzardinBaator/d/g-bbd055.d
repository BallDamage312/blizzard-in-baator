BEGIN g-bbD055
CHAIN IF~NumTimesTalkedTo(0) Global("g-sonnestart","GLOBAL",0)~THEN g-bbD055 g-bbD055.start1
@0 /*As you reach the end of the pier running through the Suicide Falls, you notice a couple arguing. The man, dressed in a Dustman's robes, is passionately gesticulating, while the woman accompanying him exudes an unwavering, almost perfect calm. */
==g-bbD055 @1 /*"Darling, *please* be honest with me. Do you not love me anymore?" */
==g-bbD056 @2 /*"Oh, silly, where did you get that idea? Of course I love you." She replies in a soothing voice, absent of intense emotion. */
END
IF~!CheckStatGT(Protagonist,16,WIS)~THEN REPLY @4 /*Just some lovers' banter. Nothing for you to see here. */ DO~~ + g-bbD055.thelovers1
IF~CheckStatGT(Protagonist,16,WIS)~THEN REPLY @5 /*This woman's calmness is a mask. There is something going on here. */ DO~~ + g-bbD055.thelovers1
IF~~THEN REPLY @6 /*Leave. */ DO~~ + g-bbD055.toexit
CHAIN IF~NumTimesTalkedToGT(0) !GlobalGT("g-lovers","GLOBAL",0) Global("g-sonnestart","GLOBAL",0)~THEN g-bbD055 g-bbD055.start2
@8 /*The couple seems to be arguing intensely about something. Their care for each other is evident, but it appears this has been going on for a while. You are faced with a dilemma: should you intervene, or should you leave them to their own devices? After all, it is none of your business. */
END
IF~~THEN REPLY @10 /*"What are you arguing about?" */ DO~~ + g-bbD055.thelovers4
IF~~THEN REPLY @11 /*Listen before you interfere. */ DO~~ + g-bbD055.thelovers1
IF~~THEN REPLY @12 /*Leave the lovers to their squabble. */ DO~~ + g-bbD055.toexit
CHAIN IF~NumTimesTalkedToGT(0) GlobalGT("g-lovers","GLOBAL",0) Global("g-sonnestart","GLOBAL",0)~THEN g-bbD055 g-bbD055.start3
@14 /*The man ignores you. */
END
IF~~THEN REPLY @16 /*Leave. */ DO~~ EXIT
CHAIN IF~Global("g-sonnestart","GLOBAL",1)~THEN g-bbD055 g-bbD055.thelovers1
@18 /*"Why is it that *every time* I want something more from you, you *never* want it?" */
==g-bbD056 @19 /*The woman looks at him dispassionately before answering. "Because you only desire my body. You're not interested in the metaphysical dimension of love..." Her voice is so blissfully soothing. "Why does love always have to come down to one thing for you? To primitive carnality? To momentary pleasures?" */
==g-bbD055 @20 /*The man seems immune to the woman's soothing voice. "Primitive carnality? Isn't it true that human pleasure is the ultimate good? After all, carnal pleasures are nothing other than... Than..." */
==g-bbD056 @21 /*"A straight path to frustration?" */
==g-bbD055 @22 /*"*A natural expression of the human need for happiness!*" */
==g-bbD056 @23 /*The woman lets the man's words sink in. "My love, your heart burns with passion. But the fire that burns intensely will burn out quickly." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @24 /*"Chief, let's not waste our time on them. It looks like they're having some marital problems... And even if it's not marital, we certainly won't learn anything interesting. We're better off freezing in the Hells." */
END
IF~~THEN REPLY @26 /*Keep listening. */ DO~SetGlobal("g-sonnestart","GLOBAL",0)~ + g-bbD055.thelovers2
IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~THEN REPLY @27 /*"You're right. Let's go." */ DO~SetGlobal("g-sonnestart","GLOBAL",0)~ + g-bbD055.toexit
IF~!InParty("Morte")~THEN REPLY @28 /*Leave. */ DO~SetGlobal("g-sonnestart","GLOBAL",0)~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.toexit
@30 /*The couple continues to argue. */
END
IF~~THEN REPLY @32 /*Leave them. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.thelovers2
@34 /*The man ignores that remark. "I *desire* passion. I want *ecstasy*. A little *romanticism*!" */
==g-bbD056 @35 /*"Why don't you ask what I desire? I want ideal, disembodied love. Moral. Transcendent." */
==g-bbD056 @36 /*"Love is more than a momentary fantasy. It's a repeated daily decision." */
==g-bbD055 @37 /*"Then can't your daily decision be to give me pleasure?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @38 /*"The guy hit the nail on the head. In my humble opinion, this woman's awfully stiff." */
==DGrace IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte") InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ @39 /*"You are wrong, Morte. This woman's assertiveness deserves recognition. No one has the right to force her to push her boundaries, not even her partner. It is her decision." */
END
IF~~THEN REPLY @41 /*Keep listening. */ DO~~ + g-bbD055.thelovers3
IF~~THEN REPLY @42 /*Leave. */ DO~~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.thelovers3
@44 /*"So? Can't it?" */
==g-bbD056 @45 /*"Are you unable to control your impulse to remain chaste with me in the name of love?" */
==g-bbD055 @46 /*"This whole abstract description of love makes me sick. Do you really not see how *mundane* love actually is?" */
END
IF~~THEN REPLY @48 /*"What are you arguing about?" */ DO~~ + g-bbD055.thelovers4
IF~~THEN REPLY @49 /*Do not get involved and leave. */ DO~~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.thelovers4
@51 /*The man turns to you, and you see resignation in his eyes. "My dear beloved Sonne is as cold as ice towards me..." */
==g-bbD056 @52 /*The woman interrupts him mid-sentence, addressing him in a barely audible voice. "Zack, you really shouldn't involve strangers in our private affairs." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @53 /*"Aye. Let's get out of here." */
END
IF~~THEN REPLY @55 /*Keep listening. */ DO~~ + g-bbD055.thelovers5
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN REPLY @56 /*"You're right. Let's go." */ DO~~ + g-bbD055.toexit
IF~!InParty("Annah")~THEN REPLY @57 /*Do not get involved and leave. */ DO~~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.thelovers5
@59 /*The man ignores his beloved, continuing his dilation. "Our argument has been going on for years. Perhaps you, stranger, can talk some sense into her? You look like you've been through a lot." */
END
IF~~THEN REPLY @61 /*"What exactly am I supposed to do?" */ DO~~ + g-bbD055.thelovers6
IF~~THEN REPLY @62 /*"This is not my problem." */ DO~~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.thelovers6
@64 /*"Convince *her* to..." He does not manage to finish because his partner interrupts him mid-sentence again. */
==g-bbD056 @65 /*"No! Convince *him*." You detect a hint of irritation in the woman's voice. She is afraid of losing control. */
END
IF~~THEN REPLY @67 /*"Actually, I don't want to get involved." */ DO~~ + g-bbD055.dontwant
IF~~THEN REPLY @68 /*"Well, I heard your argument and I think I can comment a little." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.dontwant
@70 /*The silenced man looks at you. He seems disappointed. */
==g-bbD056 @71 /*"Suit yourself." */
==g-bbD055 @72 /*"And I was already hopeful." */
==g-bbD055 @73 /*Left by themselves, the couple finds themselves arguing again. */
END
IF~~THEN REPLY @75 /*Leave. */ DO~~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.opinion
@77 /*"So? What do you think?" */
END
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @79 /*"There are some arguments in favor of Zack..." */ DO~~ + g-bbD055.argument1
IF~CheckStatGT(Protagonist,17,INT)~THEN REPLY @80 /*"There are some arguments in favor of Sonne..." */ DO~~ + g-bbD055.argument2
IF~~THEN REPLY @81 /*"Do you really have to argue about this on theoretical grounds? Can't you work out some kind of compromise?" */ DO~~ + g-bbD055.argument3
IF~~THEN REPLY @82 /*"This love of yours is a lie, behind which lies the desire to dominate and control the other's freedom." */ DO~~ + g-bbD055.argument4
IF~~THEN REPLY @83 /*"Nothing. I have to go." */ DO~~ + g-bbD055.toexit
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1
@85 /*The man looks at you, his mouth agape. */
==g-bbD056 @86 /*"Yes? What arguments?" The woman's mask of calm has begun to melt away. */
END
IF~GlobalLT("g-lovers1","GLOBAL",1)~THEN REPLY @88 /*"It's obvious that physical love is something completely natural. You'd have to be crazy to believe all this nonsense about virtue and transcendence." */ DO~SetGlobal("g-lovers1","GLOBAL",1)~ + g-bbD055.argument1a
IF~GlobalLT("g-lovers2","GLOBAL",1)~THEN REPLY @89 /*"Devoting oneself to sensuality is also a form of liberation from norms. Rebellion leads to freedom, and freedom... chaos... is the meaning of the multiverse." */ DO~SetGlobal("g-lovers2","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument1b
IF~GlobalLT("g-lovers3","GLOBAL",1)~THEN REPLY @90 /*"Passion is not just a momentary emotion, it is also a path to the continuation of the species. Resisting that is pure selfishness." */ DO~SetGlobal("g-lovers3","GLOBAL",1)~ + g-bbD055.argument1c
IF~~THEN REPLY @91 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1a
@93 /*"*See*?" the man asks, not bothering to contain his excitement. */
==g-bbD056 @94 /*The woman's face betrays irritation, but she quickly recomposes herself. "You're the same, as you can see. But I'm not convinced of that, not even an inch." The couple turns their attention back to each other and resumes their argument. */
END
IF~GlobalLT("g-lovers2","GLOBAL",1)~THEN REPLY @96 /*"Devoting oneself to sensuality is also a form of liberation from norms. Rebellion leads to freedom, and freedom, chaos, is the meaning of the Multiverse." */ DO~SetGlobal("g-lovers2","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument1b
IF~GlobalLT("g-lovers3","GLOBAL",1)~THEN REPLY @97 /*"Passion is not just a momentary emotion, it is also a path to the continuation of the species. Resisting that is pure selfishness." */ DO~SetGlobal("g-lovers3","GLOBAL",1)~ + g-bbD055.argument1c
IF~~THEN REPLY @98 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1b
@100 /*"Chaos? Well, that is very... abstract, but so is the concept of pure love." */
==g-bbD056 @101 /*"I don't think I can agree with that." */
END
IF~GlobalLT("g-lovers1","GLOBAL",1)~THEN REPLY @103 /*"It's obvious that physical love is something completely natural. You'd have to be crazy to believe all this nonsense about virtue and transcendence." */ DO~SetGlobal("g-lovers1","GLOBAL",1)~ + g-bbD055.argument1a
IF~GlobalLT("g-lovers3","GLOBAL",1)~THEN REPLY @104 /*"Passion is not just a momentary emotion, it is also a path to the continuation of the species. Resisting that is pure selfishness." */ DO~SetGlobal("g-lovers3","GLOBAL",1)~ + g-bbD055.argument1c
IF~~THEN REPLY @105 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1c
@107 /*There is a momentary pause in the air after your argument, but as Zack is opening his mouth, his lover asks first: */
==g-bbD056 @108 /*"Hmm... What *exactly* do you mean?" This time you see that the woman is genuinely interested in your words. */
END
IF~~THEN REPLY @110 /*"If more people thought like you, people would stop being born. What would the multiverse look like, without children?" */ DO~~ + g-bbD055.argument1c1
IF~~THEN REPLY @111 /*"Your pursuit of friendship is nothing more than selfishness, for it may ultimately lead to the destruction of humanity. If everyone were as disgustingly self-absorbed as you, the streets of Sigil would be filled with dead people." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD055.argument1c1
IF~~THEN REPLY @112 /*"I believe that Zack is driven by selfishness too. Taking this into account, I have actually come to a conclusion that Sonne has better arguments..." */ DO~~ + g-bbD055.argument2
IF~~THEN REPLY @113 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1c1
~~ ==g-bbD056 @115 /*A shade of doubt flashes across the woman's face. "These are some brave assumptions." */
END
IF~~THEN REPLY @117 /*"There's more. Alongside mankind, the love of virtue will die too. Do you think your ideals will live on without someone to follow in your footsteps?" */ DO~~ + g-bbD055.argument1c2
IF~~THEN REPLY @118 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1c2
~~ ==g-bbD056 @120 /*Sonne pauses for a long moment, unable to find the words to respond. "Well, I think you're exaggerating a bit..." */
END
IF~~THEN REPLY @122 /*"Be honest, are you going to take your virtues to the grave, or would you rather pass them on to the next generation?" */ DO~~ + g-bbD055.argument1c3
IF~~THEN REPLY @123 /*"You know what, you're right. I have changed my mind." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1c3
~~ ==g-bbD056 @125 /*The mask of control Sonne has donned instantly slips away, replaced by shame. In her quest for control, she has lost sight of the trap she had set for herself. "You're right. How could I not see how selfish I am?" She turns to her beloved, speaking with a slightly pleading tone. "Zack, forgive me. I'm ready. Take me *here* and *now*!" */
==g-bbD055 @126 /* "What?" You notice that instead of expected joy, the man's face is filled with disgust. "No way!" */
==g-bbD055 @127 /*"How could I not have noticed, in my stupidity I could *betray* the Dustmen's philosophy... *My* philosophy! And all for some momentary excitement!" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @128 /*"Now that's what I call a *plot twist*." */
END
IF~!CheckStatGT(Protagonist,18,CHR)~THEN REPLY @130 /*Keep listening. */ DO~~ + g-bbD055.finale1a
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @131 /*Keep listening. */ DO~~ + g-bbD055.argument1c4
CHAIN IF~~THEN g-bbD055 g-bbD055.argument1c4
~~ ==g-bbD056 @133 /*The woman's expression shifts faster than a kaleidoscope. Where shame had been etched a second ago, anger has begun to flare. "Are you kidding? Now that I've realized my mistakes and want to fix them with you, *you* don't want to do this with me anymore?" */
==g-bbD055 @134 /*"That's right. I can't contribute to *cultivating life* any further." He replies, avoiding meeting her gaze. */
==g-bbD055 @135 /*"I'm leaving, Sonne. I must atone in the Mortuary for my impure thoughts." */
==g-bbD056 @136 /*The woman does not answer. The anger on her face fades, giving way to another mask: one of aroused passion. She looks at you with a gaze whose nature you fully understand. "In that case... Can I count on *your* help?" */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @137 /*"Chief, you played it smart." */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @138 /*"Don't ya even think about it." */
END
IF~~THEN REPLY @140 /*"Don't drag me into this." */ DO~~ + g-bbD055.finale1
IF~!InParty("Annah")~THEN REPLY @141 /*"Sure..." */ DO~FadeToColor([20.0],0) SetRenderable("g-bb055",FALSE)  Wait(1) RestPartyEx(0,10,FALSE) FadeFromColor([20.0],0)~ + g-bbD055.finale2
IF~InParty("Annah") StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN REPLY @142 /*"Sure..." */ DO~~ + g-bbD055.finale3
CHAIN IF~~THEN g-bbD055 g-bbD055.finale1a
~~ ==g-bbD056 @144 /*The woman's expression shifts faster than a kaleidoscope. Where shame had been etched a second ago, anger has begun to flare. "Are you kidding? Now that I've realized my mistakes and want to fix them with you, *you* don't want to do this with me anymore?" */
==g-bbD055 @145 /*"That's right. I can't contribute to *cultivating life* any further." He replies, avoiding meeting her gaze. */
==g-bbD055 @146 /*"I'm leaving, Sonne. I must atone in the Mortuary for my impure thoughts." */
==g-bbD056 @147 /*"Too bad. Then I'll keep looking." The mask on the woman's face does not waver. "Goodbye." */
END
IF~~THEN REPLY @149 /*Leave. */ DO~AddexperienceParty(32000) ActionOverride("g-bb056",EscapeArea()) SetGlobal("g-lovers4","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.finale1
~~ ==g-bbD056 @151 /*"Too bad. Then I'll keep looking." The mask on the woman's face does not waver. "Goodbye." */
END
IF~~THEN REPLY @153 /*Leave. */ DO~AddexperienceParty(32000) ActionOverride("g-bb056",EscapeArea()) SetGlobal("g-lovers4","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.finale2
~~ ==g-bbD056 @155 /*"That was *amazing*. How could I have been so stupid not to try this before?" */
==g-bbD056 @156 /*"I'm going back to the settlement. I still have a lot of work to do to catch up." */
END
IF~~THEN REPLY @158 /*"Farewell." */ DO~AddexperienceParty(32000) ActionOverride("g-bb056",EscapeArea()) ActionOverride("g-bb055",EscapeArea()) SetGlobal("g-lovers5","GLOBAL",1) GiveItemCreate("g-bbi079",Protagonist,1,1,0) SetGlobal("g-offspring","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.finale3
@160 /*Before anyone says anything, Annah drags you away from the woman by the shoulder. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @161 /*"No way. We're leavin' now, chit. Not this time, then." */
==g-bbD056 @162 /*"Too bad. Then I'll keep looking." The mask on the woman's face does not waver. "Goodbye." */
END
IF~~THEN REPLY @164 /*Continue being dragged. */ DO~AddexperienceParty(32000) ActionOverride("g-bb055",EscapeArea()) ActionOverride("g-bb056",EscapeArea()) SetGlobal("g-lovers4","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.argument2
@166 /*"Oh? Like what?" */
==g-bbD056 @167 /*You notice that the woman barely smiled, the corners of her mouth lifting. */
END
IF~GlobalLT("g-lovers6","GLOBAL",1)~THEN REPLY @169 /*"Desire and intense emotions inevitably lead to frustrations like yours. Friendship is more stable, so you should calm your passion." */ DO~SetGlobal("g-lovers6","GLOBAL",1)~ + g-bbD055.argument2a
IF~GlobalGT("Know_Dustmen","GLOBAL",0) GlobalLT("g-lovers7","GLOBAL",1)~THEN REPLY @170 /*"As long as you allow yourself to be driven by passion, you will never rid yourself of the urges of life, and therefore never achieve True Death. You will be constantly reborn. Do you really want that?" */ DO~SetGlobal("g-lovers7","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument1c3
IF~GlobalLT("g-lovers8","GLOBAL",1) CheckStatGT(Protagonist,13,INT)~THEN REPLY @171 /*"What you call 'love' is nothing more than a simple manifestation of the reproductive instinct. An illusion imposed on individuals to ensure the survival of the species." */ DO~SetGlobal("g-lovers8","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD055.argument2c
IF~~THEN REPLY @172 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument2a
@174 /*"Are you kidding me? Stop lecturing *me* and do what I asked you to do!" */
==g-bbD056 @175 /*The couple begins arguing again. */
END
IF~GlobalGT("Know_Dustmen","GLOBAL",0) GlobalLT("g-lovers7","GLOBAL",1)~THEN REPLY @177 /*"As long as you allow yourself to be driven by passion, you will never rid yourself of the urges of life, and therefore never achieve True Death. You will be constantly reborn. Do you really want that?" */ DO~SetGlobal("g-lovers7","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument2b
IF~GlobalLT("g-lovers8","GLOBAL",1) CheckStatGT(Protagonist,13,INT)~THEN REPLY @178 /*"What you call 'love' is nothing more than a simple manifestation of the reproductive instinct. An illusion imposed on individuals to ensure the survival of the species." */ DO~SetGlobal("g-lovers8","GLOBAL",1) IncrementGlobal("LAW","GLOBAL",1)~ + g-bbD055.argument2c
IF~~THEN REPLY @179 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument2b
@181 /*"You're right. I can't contribute to *cultivating life* any further." He replies, avoiding meeting her gaze. "I'm leaving, Sonne. I must atone in the Mortuary for my impure thoughts."
 */
==g-bbD056 @182 /*"Wait... I just..." */
END
IF~~THEN REPLY @184 /*Leave. */ DO~AddexperienceParty(32000) EscapeArea() SetGlobal("g-lovers4","GLOBAL",1) ~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.argument2c
@186 /*"Hmm... What *exactly* do you mean?" You see that the man is genuinely curious about your words. */
END
IF~~THEN REPLY @188 /*"Love can lead to the creation of new life... children. Are you able to accept the ethical consequences of that?" */ DO~~ + g-bbD055.argument2c1
IF~~THEN REPLY @189 /*"I don't even have to tell you that love can lead to having children, and I don't think anyone would want that. Giving life is disgusting because everyone awaits death and there is no escape from it." */ DO~~ + g-bbD055.argument2c1
IF~~THEN REPLY @190 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument2c1
@192 /*"No! Not that!" */
==g-bbD056 @193 /*The woman almost explodes with euphoria. "See, Zack?" */
==g-bbD055 @194 /*"Well... It looks like I blundered. Thank you, stranger. Is it time to visit some... temple?" */
==g-bbD056 @195 /*"Almost. Lady Ado has installed a new shrine to her native goddess of happiness through love. We have an invitation, we really should get going." */
END
IF~~THEN REPLY @197 /*"Farewell." */ DO~AddexperienceParty(32000) ActionOverride("g-bb055",EscapeArea()) ActionOverride("g-bb056",EscapeArea()) SetGlobal("g-lovers4","GLOBAL",1) ~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.argument3
@199 /*"Compromise? How so?" */
==g-bbD056 @200 /*"Hmm?" The mask of calm on the woman's face gently gives way to a hint of curiosity. */
END
IF~GlobalGT("Join_Sensates","GLOBAL",0)~THEN REPLY @202 /*"What is love if not an impulse to know the world? Instead of wasting time on pointless arguments, join the Sensates together. They will help you get the most out of your relationship!" */ DO~SetGlobal("g-loversensate","GLOBAL",1)~ + g-bbD055.argument3a
IF~~THEN REPLY @203 /*"Isn't it true that love begins with physical attraction, but leads to higher forms of relationship? Sonne, give in to it and let yourselves be carried away by passion. And then you will become friends and strive for your virtues." */ DO~~ + g-bbD055.argument3a
IF~~THEN REPLY @204 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4
@206 /*Both of them look a bit puzzled. */
==g-bbD056 @207 /*"Domination? Hmm..." */
==g-bbD055 @208 /*"So what should we strive for?" */
END
IF~~THEN REPLY @210 /*"Your approaches are so debilitating. Instead of limiting each other, you should strive for self-fulfillment and strengthen your independence." */ DO~~ + g-bbD055.argument4x
IF~~THEN REPLY @211 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4x
@213 /*The man gasps audibly. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @214 /*"Aye. Do you really think so?" */
==DMorte IF~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte") InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ @215 /*"Chief, that's a trap..." */
==g-bbD056 @216 /*The woman's mask falls, and shock is etched on her face. "What? Zack, are you trying to *enslave* me? Tell me it's not true!" */
==g-bbD055 @217 /*"Of course not... I mean, I'm not trying to do that, but maybe you..." */
==g-bbD056 @218 /*"Me? Of course not!!!" The woman explodes into an overly theatrical outrage, offended by the mere suggestion. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @219 /*Annah spins you around so you look her in the face and repeats herself. "Do you really think so? Do you?" */
END
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN REPLY @221 /*"Yes, of course." */ DO~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1) SetGlobal("G-sonezaki_annah","GLOBAL",1)~ + g-bbD055.argument4aX
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN REPLY @222 /*"Be quiet, Annah. I'm talking to them right now." */ DO~IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-2) SetGlobal("G-sonezaki_annah","GLOBAL",2)~ + g-bbD055.argument4aX
IF~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN REPLY @223 /*Whisper to Annah: "Of course not. But they don't have to know that." */ DO~ SetGlobal("G-sonezaki_annah","GLOBAL",1) SetGlobal("G-sonezaki_annah","GLOBAL",3)~ + g-bbD055.argument4aX
IF~OR(3) !InParty("Annah") StateCheck("Annah",CD_STATE_NOTVALID) !NearbyDialog("DAnnah")~THEN REPLY @224 /*"Zack, it's obvious she wants to strip you of your true nature. Will you really let yourself be castrated like that in the name of 'love?' A friend and nothing more? Where is your manly dignity?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument4a
IF~OR(3) !InParty("Annah") StateCheck("Annah",CD_STATE_NOTVALID) !NearbyDialog("DAnnah")~THEN REPLY @225 /*"Sonne, can't you see that he's trying to take advantage of you? To make a harlot out of you? He wants to defile your pure nature with his depraved desires?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument4b
IF~OR(3) !InParty("Annah") StateCheck("Annah",CD_STATE_NOTVALID) !NearbyDialog("DAnnah")~THEN REPLY @226 /*"You deserve each other. You're stuck in an impasse where each side wants to trap the other and manipulate them." */ DO~~ + g-bbD055.argument3a
IF~OR(3) !InParty("Annah") StateCheck("Annah",CD_STATE_NOTVALID) !NearbyDialog("DAnnah")~THEN REPLY @227 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4aX
@229 /*The couple looks now to you and your argument, distracted briefly. */
==DAnnah IF ~Global("G-sonezaki_annah","GLOBAL",1) InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN @230 /*"Oh, I see." She wags her tail with disaffection. */
==DAnnah IF ~Global("G-sonezaki_annah","GLOBAL",2) InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN @231 /*"I see. Pike off." */
==DAnnah IF ~Global("G-sonezaki_annah","GLOBAL",3) InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~THEN @232 /*"I see..." */
END
IF~~THEN REPLY @234 /*"Zack, it's obvious she wants to strip you of your true nature. Will you really let yourself be castrated like that in the name of 'love?' A friend and nothing more? Where is your manly dignity?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument4a
IF~~THEN REPLY @235 /*"Sonne, can't you see that he's trying to take advantage of you? To make a harlot out of you? He wants to defile your pure nature with his depraved desires?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1) IncrementGlobal("LAW","GLOBAL",-1)~ + g-bbD055.argument4b
IF~~THEN REPLY @236 /*"You deserve each other. You're stuck in an impasse where each side wants to trap the other and manipulate them." */ DO~~ + g-bbD055.argument3a
IF~~THEN REPLY @237 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4a
@239 /*Zack's face is etched with rage. "Sonne, if you think you can make a fool out of me, you're sorely mistaken!" */
==g-bbD056 @240 /*"I don't think so at all! You aren't thinking about leaving me, are you?" */
END
IF~~THEN REPLY @242 /*"Go out into the world and enjoy yourself. Don't worry about some *prude* who wants to subjugate you." */ DO~IncrementGlobal("GOOD","GLOBAL",-2)~ + g-bbD055.argument4a1
IF~~THEN REPLY @243 /*Observe. */ DO~~ + g-bbD055.argument4a1
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4a1
@245 /*The man seems enthused by this concept. */
==g-bbD056 @246 /*"Zack, *please* don't listen to him... he's just a random bystander!" The woman's voice grows desperate. */
==g-bbD055 @247 /*"You know what? He's right. There's no point in wasting time on prudes like you. I'll get what you *never* wanted to give me from any harlot. I'm leaving. And I'm not coming back!" */
==g-bbD056 @248 /*Sonne turns back to you. "I hope you're satisfied with what you've done, you rotten berk!" */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @249 /*"Aye. That was really mean. On the other hand, the trash took itself out." */
==DMorte IF ~InParty("Morte") !StateCheck("Morte",CD_STATE_NOTVALID) NearbyDialog("DMorte")~ THEN @250 /*"Well, it looks like there is one more single lady in the area..." */
END
IF~~THEN REPLY @252 /*Look as they both leave. */ DO~AddexperienceParty(32000) ActionOverride("g-bb055",EscapeArea()) ActionOverride("g-bb056",EscapeArea()) SetGlobal("g-lovers9","GLOBAL",1) IncrementGlobal("BD_ANNAH_MORALE","GLOBAL",-1)~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4b
@254 /*"What?! No!" */
==g-bbD056 @255 /*Her expression reveals she had not thought about it before. She was the controlling party in this relationship until a moment ago. "Zack, tell me you're not!" */
==g-bbD055 @256 /*The man is clearly troubled. You will be the judge of his fate. */
END
IF~~THEN REPLY @258 /*"*Of course* he does. And when he succeeds, he'll look for another one like you. Just look at him. You can see he can't control himself for even fifteen minutes. The question is, how many others have been before you...?" */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD055.argument4b1
IF~~THEN REPLY @259 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4b1
@261 /*The man is shocked by your words. */
==g-bbD056 @262 /*The woman's apparent confidence and calm have melted away in an instant. "You swine, how could you? How could I have been so blind as to not see your intentions?" */
==g-bbD055 @263 /*"Bu-but, darling, that's not true! He's lying..." */
END
IF~~THEN REPLY @265 /*"It's not strange for him to deny it. He's the type of person who, if you grab his hand, will insist that it doesn't belong to him." */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD055.argument4b2
IF~~THEN REPLY @266 /*"Actually, I have changed my mind..." */ DO~~ + g-bbD055.opinion
CHAIN IF~~THEN g-bbD055 g-bbD055.argument4b2
@268 /*"This is nonsense, *slander!* How can you believe him?!" */
==g-bbD056 @269 /*At these words, Sonne almost falls into despair. "We're done! I should have listened to my mother, saying you weren't right for me." After saying these words, she walks away nervously, trying to hide her tears. */
==g-bbD055 @270 /*"You son of a bitch. I'll kill you for this." */
END
IF~~THEN REPLY @272 /*Defend yourself. */ DO~Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself) ActionOverride("g-bb056",EscapeArea())~ EXIT
CHAIN IF~~THEN g-bbD055 g-bbD055.argument3a
@274 /*"Is this possible... This cutter is right?" */
==g-bbD056 @275 /*"Indeed, it sounds like it... Of course, it may be a case-by-case scenario... But isn't it worth trying?" */
==g-bbD055 @276 /*"Yes, darling. I like it this way. Let our first moments be intense, and then we'll enjoy peace and stability." */
==g-bbD056 @277 /*They kiss and do not pay attention to you anymore. */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @278 /*"That was soo borin'. Makes me wanna puke." */
END
IF~~THEN REPLY @280 /*Leave. */ DO~AddexperienceParty(32000) ActionOverride("g-bb055",EscapeArea()) ActionOverride("g-bb056",EscapeArea()) SetGlobal("g-lovers5","GLOBAL",1) GiveItemCreate("g-bbi079",Protagonist,1,1,0)~ EXIT