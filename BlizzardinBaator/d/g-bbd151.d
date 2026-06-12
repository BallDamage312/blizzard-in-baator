BEGIN g-bbD151
CHAIN IF~True()~THEN g-bbD151 g-bbD151.start
@0 /*You feel some familiar tingling in the back of your head as you touch the stone. What do you want to do with it? */
END
IF~~THEN REPLY @2 /*Begin the sensation. */ DO~~ + g-bbD151.cont
IF~~THEN REPLY @3 /*Leave. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.cont
@5 /*"Reputation is everything."

The rant of a bubber from the Hive to some unpleasant berk cuts in half the daily bustle of a Sigilian slum. Ah, another bloodthirsty brawl - all the charm of the Hive, where a knife blow to the kidneys is a polite way of greeting.

Today, however, you ignore the common thugs who know to not risk their courtesies with you. They know you well enough. Or rather, they know your reputation, and more importantly, your skills. So you ignore the drunken sods and the stench of the Hive, the crooked huts and inns, the bizarre creatures and population, and the curved city line. In fact, you ignore Sigil itself. That does it. Today, it is time to show what you can do. */
=@6 /*In Sigil, there are many factions, organizations, gangs and groupings, each with their own customs, and reputation is everything. You belong to one such gang, you are its chieftain. Although it is rare, the incompetence of your subordinates has forced you to take matters into your own hands and do your favorite job yourself.

Yes, you would not have become the leader of this pack of dogs if you had not known and understood these words: "You want to do something right? Do it yourself." Nevertheless, despite your morbid self-confidence, you have had a bad feeling all morning. Maybe years of communing with the Art have sharpened some sense hidden for others, or maybe it is a moment of weakness. Either way, you feel there might be a problem with the job.  */
=@7 /*You enter the Clerk's Ward. It is a well-kept, 'better' part of Sigil. Full of opportunity. When you were a teenager, a long time ago in another life, you loved to steal from these smelly swells. Life has changed, but the delight of robbery remains. It was easier for a kid, though. You are no longer fit for carefree pickpocketing. Anyway, there are too many people in the shadows with their eyes on you.

There it is. Doctor Konrdin's house. You have heard descriptions of the interior from your people. Splendor, debauchery, and zero sympathy for the less affluent trash. Yes, long ago, you knew others, many fellows who considered it their life's mission to loot only similar wealthy individuals who would, unscrupulously and with charm in their eyes, exploit what and whom they could. Stealing from them supposedly brought greater honor, but to you, it never made any difference who was the victim.

They open the door. The doctor is waiting for you. The boys stay outside. */
=@8 /*Yes, luxury for show in all its majesty. From paintings to furniture to sodding cats.
"Ah, please, sit down, dear sir," the doctor begins when you enter his lair. Well, there we have it. You are a 'dear sir'. The talk starts with malicious sarcasm with a hidden hint of mockery. */
END
IF~~THEN REPLY @10 /*Damn sod. You do not let him finish. "Let's spare ourselves such pleasantries. Where's the jink?" */ DO~~ + g-bbD151.szef2
IF~~THEN REPLY @11 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef2
@13 /*Doctor Konrdin's change, although expected, surprises you because it is different to what you were expecting. He pulls a crude face which changes to one you see on spiritualized priests when they begin to preach the punchline of their mass. You might call it the act of a final sanctified rite. He gets up from behind his desk and starts walking along a display case containing old-fashioned swords and knives, still wearing that expression. */
=@14 /*"Do you know my *occupation*?" he asks, turning to you. */
END
IF~~THEN REPLY @16 /*"By the powers, are you trying to tell me that you're a healer in a madhouse? I know that. I know a lot more about you, doc." */ DO~~ + g-bbD151.szef3
IF~~THEN REPLY @17 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef3
@19 /*"Yes, yes, yes. You see, I have really helped many people. And I have to help you, too." */
END
IF~~THEN REPLY @21 /*"Me? I still have a little patience left, but soon, you'll be the one needing help. Pay up or die!" */ DO~~ + g-bbD151.szef4
IF~~THEN REPLY @22 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef4
@24 /*"Calm down." Konrdin raises his hands in a conciliatory way. "I am ready to pay tenfold of the second, let's call it... installment. But you will need help. You are an interesting... man." Konrdin sticks out his tongue and points his finger at the end of it. "Many of your entourage have scrolled through this place, as you call it, the madhouse. Uninteresting, common and often disgusting creatures. But you are capable of a deeper reverie, I believe." */
END
IF~~THEN REPLY @26 /*You have an increasingly strong feeling that something smells odd here, but your greed wins. "Tenfold, you say? And what kind of help is this, exactly?" */ DO~~ + g-bbD151.szef5
IF~~THEN REPLY @27 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef5
@29 /*"Of course. Let me explain. However, before I do, I must admit that I have not been completely honest with you. I would like to hire you to kill someone who has caused the deaths of several people I previously hired. Those who bled before my eyes spoke of him as 'the invincible'." */
END
IF~~THEN REPLY @31 /*"I've heard stories about the so called invincibles. Every berk can be killed. Unless he's immortal, haha." */ DO~~ + g-bbD151.szef6
IF~~THEN REPLY @32 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef6
@34 /*"Yes, yes, yes.' The doctor pulls a silly face. Someone else could miss it, but you notice his sudden fidgetiness. */
END
IF~~THEN REPLY @36 /*"I don't usually ask about such things, but who is this sod? What has he done to deserve such vindication?" */ DO~~ + g-bbD151.szef7
IF~~THEN REPLY @37 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef7
@39 /*"A few days ago, he was my patient. He escaped from the asylum, and in his paranoia, he got it into his head that..." Konrdin lowers his voice. "I am in collusion with the Lady." */
END
IF~~THEN REPLY @41 /*"Say what?" */ DO~~ + g-bbD151.szef8
IF~~THEN REPLY @42 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef8
@44 /*"With the Lady of Pain. I am telling you, sir, that this case, with his severe paranoid delusions, is extremely dangerous." */
END
IF~~THEN REPLY @46 /*"And just like that, you murder every sick person who threatens you with death based on nothing?" */ DO~~ + g-bbD151.szef9
IF~~THEN REPLY @47 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef9
@49 /*"Dear sir, of course not. If that were the case, I would have to remove at least half of my patients. Suffice it to say that I have legitimate concerns for my safety. There have already been three attempts. Last time, I found this at the door." The doctor hands you a sheet of yellowed, torn parchment. */
=@50 /*You read. "Now I know WHERE you're living, you THIEF. Get ready!" */
END
IF~~THEN REPLY @52 /*"Oh, quite suggestive. Why a 'thief', though?" */ DO~~ + g-bbD151.szef10
IF~~THEN REPLY @53 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef10
@55 /*"Ah, he is simply delusional." Konrdin looks away. "But please, be serious. He has already removed thirteen of my trusted people and seven of yours." */
END
IF~~THEN REPLY @57 /*"Twenty people?" */ DO~~ + g-bbD151.szef11
IF~~THEN REPLY @58 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef11
@60 /*"Invincible." */
END
IF~~THEN REPLY @62 /*"What about that help?" */ DO~~ + g-bbD151.szef12
IF~~THEN REPLY @63 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef12
@65 /*"I have hired some serious hitters; they should be here any minute." */
=@66 /*One of your boys storms into Konrdin's office. "Chief, something's happening on the street, some real carnage."
 [FAL_03C] */
END
IF~~THEN REPLY @68 /*"What carnage?" You asks, but the answer comes soon enough. */ DO~~ + g-bbD151.szef13
IF~~THEN REPLY @69 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef13
@71 /*There is a rumble as someone barges into Dr Konrdin's house. You hear a few groans and the sound of falling bodies. Someone is running towards the house. At the threshold of the room, you see an unknown individual. He is a powerful-looking man wearing a bloodstained coat. You are not sure if the blood is actually his. He holds two crooked, long knives in his hands. His exposed forearms, full of old scars, slump along his body. Suddenly, he points a finger at the doctor and speaks in a rumbling voice:

"You dog, you THIEF! Where is my JOURNAL?" [FAL_06] */
=@72 /*The doctor's runny, bloodshot eyes move to you.

"It's him! Help!" the respectable Konrdin howls, leaping into the corner of the office. */
END
IF~~THEN REPLY @74 /*Cast a protective spell on the doctor. */ DO~~ + g-bbD151.szef14
IF~~THEN REPLY @75 /*Cast a protective spell on yourself. */ DO~~ + g-bbD151.szef14
IF~~THEN REPLY @76 /*Cast an offensive spell on the attacker. */ DO~~ + g-bbD151.szef14
IF~~THEN REPLY @77 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef14
@79 /*You raise your hands to cast a spell, but suddenly... the room flashes with blue light. You fall face down and only manage to see the powerful man and the doctor disappear in the glow of a portal. [AR_PORT] */
END
IF~~THEN REPLY @81 /*Run out of this damned house. */ DO~~ + g-bbD151.szef15
IF~~THEN REPLY @82 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT
CHAIN IF~True()~THEN g-bbD151 g-bbD151.szef15
@84 /*Corpses lay everywhere - in the hall, on the stairs and in the street. You run as fast as you can, splashing your shoes in shimmering pools of blood. And what about those two? Reputation no longer matters. You know what befell them: the Lady's Mazes. Your respect for Sigil returns. You silently hope that she had spared you. Again, you do not know why, maybe it is a new and better sense, or fear, but you are sure it is not true. */
=@85 /*Suddenly, blue light pours out of the alley in front of you, illuminating your face. It happens at the very moment when you were starting to hope that you might be able to save yourself after all. */
=@86 /*You used to like this place in your teens. Good loot, good fun... Holding on to the good memories, you take one last glance at Sigil and disappear.

All that remains of you is a quiet chant and a *memorable reputation* among the drunk regulars of Sigil's many taverns. */
END
IF~Global("g-usedfliesstone","GLOBAL",0)~THEN REPLY @88 /*Stir yourself from the experience and put the stone back. */ DO~AddexperienceParty(2222) SetGlobal("g-usedfliesstone","GLOBAL",1)~ EXIT
IF~Global("g-usedfliesstone","GLOBAL",1)~THEN REPLY @89 /*Stir yourself from the experience and put the stone back. */ DO~~ EXIT