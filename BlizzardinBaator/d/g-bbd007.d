BEGIN g-bbD007
CHAIN IF~AreaCheck("ARG-19") ~THEN g-bbD007 g-bbD007.mephistaroverride
@0 /*This is act 2 dialogue! */
END
IF~~THEN REPLY @2 /*"Oh sorry. I'll stop cheating now." */ DO~~ EXIT
CHAIN IF~AreaCheck("arg-10") HPPercentLT(Myself,40)~THEN g-bbD007 g-bbD007.pleading
@4 /*"Good sir, I bid you to stop! I am but a pawn in this devil's foul game. Spare me, I wish not to die here, in the cold embrace of the traitor's realm. Show mercy!" [g-00708] */
END
IF~NumInPartyGT(1)~THEN REPLY @6 /*Ready your weapon for the final blow. "No mercy! You assaulted and trapped us here. You die for this!"  */ DO~~ + g-bbD007.kill
IF~!NumInPartyGT(1)~THEN REPLY @7 /*Ready your weapon for the final blow. "No mercy! You assaulted and trapped me here. You die for this!" */ DO~~ + g-bbD007.kill
IF~~THEN REPLY @8 /*"Go on then, get out of here before I change my mind." */ DO~StickySinisterPoof("EF01TPRT","G-bb007",1) DestroySelf() PlaySound("AM_VORTX")  SetGlobal("G-sparedbard","GLOBAL",1)~ EXIT
IF~Global("G-Akerexplain","GLOBAL",0) NumInPartyGT(1)~THEN REPLY @9 /*"You are not going anywhere until you tell me who you really are and why you attacked us." */ DO~SetGlobal("G-Akerexplain","GLOBAL",1) ~ + g-bbD007.explain
IF~Global("G-Akerexplain","GLOBAL",0) !NumInPartyGT(1)~THEN REPLY @10 /*"You are not going anywhere until you tell me who you really are and why you attacked me." */ DO~SetGlobal("G-Akerexplain","GLOBAL",1) ~ + g-bbD007.explain
CHAIN IF~AreaCheck("arg-10") HPPercent(Myself,100)~THEN g-bbD007 g-bbD007.attack
@12 /*"Ah, tattoo-man. Welcome to this icy hell. I regret that our second meeting has to be under such unfortunate circumstance. It appears that we find ourselves on the opposite sides of a conflict which in itself doesn't really concern either of us. What a life..." He pauses and looks closely at the little devil standing by your side. "Anyway... little imp? Come out, come out, wherever you are." [g-00709] */
==g-bbd006 @13 /*"Oh, not good. Prod knows some of them. These are our old fellas... " [g-00610] */
END
IF~~THEN REPLY @15 /*"Fellas?" */ DO~DestroyPartyItem("g-bbi024",1)~ + g-bbD007.attack2
CHAIN IF~Global("G-metaker","GLOBAL",1) GlobalLT("G-BBMain","GLOBAL",19) OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) ~THEN g-bbD007 g-bbD007.start2
@17 /*The bard is still standing nonchalantly at the center of the Rivergate tavern. He's strumming the strings of his instrument in a gentle manner, but mostly he's looking around, as if hoping to find inspiration in this seedy joint. */
=@18 /*"You've come back, tattoo-man. Do you find yourself in need of a ditty?" */
END
IF~~THEN REPLY @20 /*"Sure, let's hear one." */ DO~~ + g-bbD007.ditties
IF~~THEN REPLY @21 /*"No, but I have some questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @22 /*"No. Actually, I have to go." */ DO~~ EXIT
CHAIN IF~Global("G-metaker","GLOBAL",0) GlobalLT("G-BBMain","GLOBAL",19) OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0) ~THEN g-bbD007 g-bbD007.start
@24 /*At the center of the tavern, a purple-haired dandy is standing next to a couch that almost matches his hair color. He is looking around the place and gently tapping the strings of a curious instrument that seems to be a hybrid between a lute and a harp. His ornate clothes have puffed sleeves, and his gaudy hat is adorned with three feathers. */
END
IF~~THEN REPLY @26 /*"Greetings." */ DO~SetGlobal("G-metaker","GLOBAL",1)~ + g-bbD007.startcont
IF~~THEN REPLY @27 /*Leave the dandy alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.startcont
@29 /*The bard looks up from his instrument. "Hello! Oh, lovely tattoos. A bit grim and hieroglyphic for my taste, but the craft is admirable. No doubt some of it is Fell's work, but a lot is... from around the planes, certainly. Anyhow, mayhap you find yourself in need of a little ditty?" [g-00710] */
END
IF~~THEN REPLY @31 /*"Sure, let's hear one." */ DO~~ + g-bbD007.ditties
IF~~THEN REPLY @32 /*"No, but I have some questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @33 /*"No. Actually, I have to go." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.ditties
@35 /*"I am currently performing three ditties. 'The Job Done Killed a Dhergoloth,' 'The Misplaced Village,' and 'A Crow and a Lark.' Performances are 15 copper pieces per song. What would you like to hear?" */
END
IF~!PartyGoldLT(15)~THEN REPLY @37 /*"I would love to hear 'The Job Done Killed a Dhergoloth.'" */ DO~TakePartyGold(15)~ + g-bbD007.paper
IF~!PartyGoldLT(15)~THEN REPLY @38 /*"I would love to hear 'The Misplaced Village.'" */ DO~TakePartyGold(15)~ + g-bbD007.village
IF~!PartyGoldLT(15)~THEN REPLY @39 /*"I would love to hear 'A Crow and a Lark.'" */ DO~TakePartyGold(15)~ + g-bbD007.lark
IF~PartyGoldLT(15)~THEN REPLY @40 /*"Actually, I can't afford any, but I would love to ask you some questions." */ DO~~ + g-bbD007.q
IF~PartyGoldLT(15)~THEN REPLY @41 /*"Actually, I can't afford any. I should be going now." */ DO~~ EXIT
IF~!PartyGoldLT(15)~THEN REPLY @42 /*"I would love to ask you some questions instead." */ DO~~ + g-bbD007.q
IF~!PartyGoldLT(15)~THEN REPLY @43 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.lark
@45 /*The bard readies his instrument and coughs loudly, ushering silence in the room. Then, he begins by strumming a soft, melancholic tune. */
=@46 /*"Oh, whispers!
Whispers of the dark.
How can I tell the difference 'tween a flame and a spark,
'tween a crow and a lark?" */
=@47 /*"Oh, secrets!
Secrets I do keep.
For see the path down from here is so very steep,
the rift beneath me, deep." */
=@48 /*"Oh, vanity!
My friend throughout the years.
The closer you crawl to me, the stronger are my fears,
am I still who I am in my dreams?" */
=@49 /*"Oh, shining light.
Illuminate my hallways stark.
To all your wits now I do hark,
be I a crow or lovely lark?" */
=@50 /*Akershus plays a prolonged, melancholy build-up. The music modulates into a new key, then changes to a different rhythm. 
"Unless the terror of my love can send me flying through the sky,
the horror of what doth remain will echo in my cries.
Will echo in my cries..." */
=@51 /*The melody drifts away. Some clapping can be heard from the far side of the tavern. Akershus bows deeply and looks at you expectantly. */
END
IF~Global("G-AkerLark","GLOBAL",0)~THEN REPLY @53 /*"That was very sad and deep. Thank you." */ DO~SetGlobal("G-AkerLark","GLOBAL",1) IncrementGlobal("G-AkerReview","GLOBAL",1)~ + g-bbD007.goodreview
IF~Global("G-AkerLark","GLOBAL",0)~THEN REPLY @54 /*"That was whiny and uninspired. A waste of my time." */ DO~SetGlobal("G-AkerLark","GLOBAL",1) IncrementGlobal("G-AkerReview","GLOBAL",-1)~ + g-bbD007.badreview
IF~~THEN REPLY @55 /*"I would love to ask you some questions now." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @56 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.paper
@58 /*The bard readies his instrument and coughs loudly, ushering silence in the room. Then, he begins. The tune is fast and dynamic, with a catchy, simple melody singing over the chords. With a quick introduction, Akershus jumps into the first line. */
=@59 /*"There was once a house of lore,
run by some crunchy bureaucrats.
And in their tower, seventh floor,
'Division for the State of Flats.'

Up there, the Staff was merely four,
but all absurdly tricksy brats.
The pranks and tricks they had in store
would breed between them lots of spats." */
=@60 /*"A newly hired dhergoloth
was sent out to count attic bats.
He came to the Hive with stacks of notes,
to come out armed with doubtless facts."

"The poor fiend though just did not know
the house was full of canny cats,
and being mostly like a ball,
he couldn't get away with pats." */
=@61 /*"They rolled him out into the hall,
through their old native habitats,
right down the stairs and out the door,
like piking little acrobats.

They took him to the Ditch's shore
and scared away the local rats.
Without a chance to squeak, or roar
the 'loth into the water splats." */
=@62 /*"He floats a bit, scared to the core,
but I can only tip my hat.
He sinks below then, what a score,
all thanks to local hero cats.

Now, if you never knew before,
the yugoloths aren't idle chats.
They drown, explode, get smashed, and more,
and come back in their ziggurats.

But this one here, they so abhorred,
for being ripped like spineless cloth.
The natural order was ignored,
the job done killed the dhergoloth." */
=@63 /*The song ends as abruptly as it began. Some clapping can be heard from the far side of the tavern. Akershus bows deeply and looks at you expectantly. */
END
IF~Global("G-AkerPaper","GLOBAL",0)~THEN REPLY @65 /*"That was very humorous and evocative. Good fun!" */ DO~SetGlobal("G-AkerPaper","GLOBAL",1) IncrementGlobal("G-AkerReview","GLOBAL",1)~ + g-bbD007.goodreview
IF~Global("G-AkerLark","GLOBAL",0)~THEN REPLY @66 /*"That was borderline offensive and primitive. Absolute manure." */ DO~SetGlobal("G-AkerLark","GLOBAL",1) IncrementGlobal("G-AkerReview","GLOBAL",-1)~ + g-bbD007.badreview
IF~~THEN REPLY @67 /*"I would love to ask you some questions now." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @68 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.village
@70 /*The bard readies his instrument and coughs loudly, ushering silence in the room. The tune sounds much like a song for children, but with an ironic undertone. */
=@71 /*"If you brave the darkness under Sigil's streets."
*CLAP CLAP*
"There is but one civilized hamlet to be."
*CLAP CLAP*
"Their buildings may be jumbled,
their minds may be scrambled,
but their hospitality is rather neat."
*CLAP CLAP* */
=@72 /*"They were once citizens just like you and me."
*CLAP CLAP*
"But the city planning had to disagree."
*CLAP CLAP*
"Then there came along the float goats,
there was not a time to note votes,
and their houses were condemned as mere debris."
*CLAP CLAP* */
=@73 /*"They got stacked on one another like old toys."
*CLAP CLAP*
"All their livelihoods discarded and destroyed."
*CLAP CLAP*
"Now they live among the sewers,
gather money to come sue us,
and we live in brand new villas we purloined." */
=@74 /*The song continues for a bit, with his "lute" taking the melody and Akershus stomping where the claps would go. Eventually, he slows down before finally concluding. Some clapping can be heard from the far side of the tavern. Akershus bows deeply and looks at you expectantly. */
END
IF~Global("G-AkerVillage","GLOBAL",0)~THEN REPLY @76 /*"That was some excellent social commentary. A very ironic piece!" */ DO~SetGlobal("G-AkerVillage","GLOBAL",1) IncrementGlobal("G-AkerReview","GLOBAL",1)~ + g-bbD007.goodreview
IF~Global("G-AkerVillage","GLOBAL",0)~THEN REPLY @77 /*"Repurposing nursery rhymes for a political agenda is really low, minstrel." */ DO~SetGlobal("G-AkerVillage","GLOBAL",1) IncrementGlobal("G-AkerReview","GLOBAL",-1)~ + g-bbD007.badreview
IF~~THEN REPLY @78 /*"I would love to ask you some questions now." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @79 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.goodreview
@81 /*The bard bows again with a smile on his face. "I am glad you proved to be a man of culture." */
END
IF~~THEN REPLY @83 /*"Can I hear another one?" */ DO~~ + g-bbD007.ditties
IF~~THEN REPLY @84 /*"I would love to ask you some questions now." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @85 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.badreview
@87 /*The bard bows again with a huge smile on his face. "I always welcome constructive criticism from intelligent spectators." */
END
IF~~THEN REPLY @89 /*"Can I hear another one?" */ DO~~ + g-bbD007.ditties
IF~~THEN REPLY @90 /*"I would love to ask you some questions now." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @91 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.q
@93 /*"My answers are usually metaphorical and of the soul rather than... actionable advice. But go ahead." */
END
IF~~THEN REPLY @95 /*"Can I hear one of your ditties?" */ DO~~ + g-bbD007.ditties
IF~~THEN REPLY @96 /*"What are you doing here?" */ DO~~ + g-bbD007.doing
IF~~THEN REPLY @97 /*"Who are you?" */ DO~~ + g-bbD007.who
IF~Global("G-rivergateportal","GLOBAL",1) GlobalLT("LAW","GLOBAL",1)~THEN REPLY @98 /*"Do you know anything about the portal trap behind you?" */ DO~SetGlobal("G-brillchaosproof","GLOBAL",1)~ + g-bbD007.portal
IF~Global("G-rivergateportal","GLOBAL",1) !GlobalLT("LAW","GLOBAL",1) Global("G-brillchaosproof","GLOBAL",0)~THEN REPLY @99 /*"Do you know anything about the portal trap behind you?" */ DO~SetGlobal("G-brillchaosproof","GLOBAL",1)~ + g-bbD007.portalalt
IF~~THEN REPLY @100 /*"You like tattoos?" */ DO~~ + g-bbD007.tattoo
IF~~THEN REPLY @101 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.doing
@103 /*Akershus smiles. "Oh, I am doing research for my new epic about the terrifying gangs of the Hive. There is so much to learn from the criminal element. I am having the most brilliant of times." */
END
IF~~THEN REPLY @105 /*"Aren't you afraid they will just shank you?" */ DO~~ + g-bbD007.doinghurt
IF~~THEN REPLY @106 /*"Can I hear some of this epic?" */ DO~~ + g-bbD007.doingepic
IF~~THEN REPLY @107 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @108 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.doinghurt
@110 /*"Oh, hells no. The people of the illegal crafts hate the lawbringers most of all, and other gangmen as well, as they are their competition. But they do *love* artists. Artists create legends. We legitimize their picturesque lives. I have nothing to fear from such lovely gentlemen." */
END
IF~~THEN REPLY @113 /*"Can I hear some of this epic?" */ DO~~ + g-bbD007.doingepic
IF~~THEN REPLY @114 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @115 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.doingepic
@117 /*"Oh, certainly not. Come see the premiere at the theater when it's ready." */
END
IF~~THEN REPLY @119 /*"Aren't you afraid they will hurt you?" */ DO~~ + g-bbD007.doinghurt
IF~~THEN REPLY @121 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @122 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.who
@124 /*"I am Akershus, composer and performer extraordinaire, known across the entire Cage and the Outlands. I have just come back from a tour around the gate-towns and am preparing to compose a new masterpiece." [g-00711] */
==DAnnah IF ~InParty("Annah") !StateCheck("Annah",CD_STATE_NOTVALID) NearbyDialog("DAnnah")~ THEN @125 /*"Ah've never heard o' yeh." */
END
IF~~THEN REPLY @127 /*"And you're preparing for your masterpiece... here?" */ DO~~ + g-bbD007.doing
IF~~THEN REPLY @128 /*"So, you are a well-traveled man. Ever been to Cania?" */ DO~~ + g-bbD007.cania
IF~~THEN REPLY @129 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @130 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.portal
@132 /*The bard gives you a meaningful, condescending look. "Just ask the tavern owner. Seems like a logical thing to do, doesn't it? He doesn't just trust anyone, you need to butter him up. Make a fool out of yourself or order one of his favorite drinks, like Spawning Stone Sour. If all *that* fails... try looking into his pockets... " */
END
IF~~THEN REPLY @136 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @137 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.portalalt
@139 /*The bard gives a you a meaningful, condescending look. "Well, I would tell you to ask the barkeep, but he won't talk to you. You reek of order, and therefore you are worthless in his eyes. Unless you do something really... random." */
END
IF~~THEN REPLY @141 /*"Random... I have some random questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @142 /*"Hmm. Let me try. I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.tattoo
@144 /*The bard rolls up the puffy sleeve on his left arm and reveals a complex tattoo of razorvine. Upon closer inspection, there is a clever depiction of a scene, hidden within shadows and shapes between each vine. It depicts buildings attacked by vicious plants and razorvine-like bulbous monsters. There are people lifted up into the air by rogue vines and cracks in the ground beneath it all. */
=@145 /*"This is a recreation of a painting by a local artist, Caven-something. He himself is nothing but a hack, but a very talented bladeling woman from Rigus did this on my arm, and I couldn't be prouder." He smiles widely. "I have some other pieces but cannot really show them in a public place." */
END
IF~~THEN REPLY @147 /*"What does it depict?" */ DO~~ + g-bbD007.tattoo2
IF~CheckStatGT(Protagonist,15,WIS) Global("G-AkRigus","GLOBAL",0)~THEN REPLY @148 /*Allow a memory to resurface. "A tattoo artist from Rigus?" */ DO~SetGlobal("G-knowbladelings","GLOBAL",1) SetGlobal("G-AkRigus","GLOBAL",1) FadeToColor([20.0],0)~ + g-bbD007.rigus
IF~~THEN REPLY @149 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @150 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.cania
@152 /*"While the stark coldness does seem poetic in theory, I would rather avoid frigid hells in my biography... No, I have never been." */
END
IF~~THEN REPLY @154 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @155 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.tattoo2
@157 /*"I had thought it obvious. It's the catastrophic collapse of half of the Ditch-side settlement. A rather violent sprout of razorvine shattered the ground and caused a whole block of buildings to slide into the murky depths. Even the dabus don't want to touch that miserable mess, so all the debris is still there in the water. A monument to the powers of nature..." */
END
IF~~THEN REPLY @159 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @160 /*"Actually, I should be going now." */ DO~~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.kill
@162 /*You come closer to the pleading man. He looks at you, his eyes full of fear. */
=@163 /*"I feel that the gates of the void
open in front of me..." */
END
IF~~THEN REPLY @165 /*"Can I hear one of your ditties before you go?" */ DO~~ + g-bbD007.finalditty
IF~~THEN REPLY @166 /*Finish Akershus. "And I shall push you right on through." */ DO~kill("g-bb007") AddexperienceParty(20000)~ EXIT
IF~~THEN REPLY @167 /*Finish Akershus. "And the void consumes you." */ DO~kill("g-bb007") AddexperienceParty(20000)~ EXIT
IF~Global("G-AkerReview","GLOBAL",3)~THEN REPLY @168 /*Finish Akershus. "And none shall weep for this boy,
when he falls into his final sleep." */ DO~kill("g-bb007") AddexperienceParty(50000)~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.explain
@170 /*The bard's breath is fast, and panicky. "I work for a fiend called Anit'bil. He forced me to come here. I had no choice... I only do a..." He pauses slightly as he weighs his words. "Bit of... 'observation', on occasion, for my patron. I never do anything like this. I don't know why they sent me, but I do not wish to die for whatever this is." */
END
IF~~THEN REPLY @172 /*"What were you looking for when you were spying on me?" */ DO~~ + g-bbD007.spy
IF~~THEN REPLY @173 /*"Who is your patron?" */ DO~~ + g-bbD007.patronafter
IF~~THEN REPLY @174 /*"What can you tell me about Anit'bil?" */ DO~~ + g-bbD007.anitbil
IF~~THEN REPLY @175 /*"That's not enough. Time to die." */ DO~~ + g-bbD007.kill
IF~~THEN REPLY @176 /*"Go on, then. Get out of here before I change my mind." */ DO~StickySinisterPoof("EF01TPRT","G-bb007",1) DestroySelf() PlaySound("AM_VORTX")  SetGlobal("G-sparedbard","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.finalditty
@178 /*The bard closes his eyes. The cold wind sweeps his purple hair across his face. You can tell he's afraid, but you can also tell that art is indeed his true calling. Artist by passion, traitor by circumstance. */
=@179 /*After a moment, he starts singing in a weak, trembling voice. With no instruments to accompany it, it sounds rather unimpressive. But the impending doom in the minstrel's voice does create a very special kind of performance. */
=@180 /*"And as the stream runs to its end
and water turns to sea,
I come to see, I apprehend 
that it is time for me. [g-00714] */
=@181 /*I yearn to climb onto the bank
or swim upstream, I see so clear.
But all my struggles come up blank
as into depths... I disappear." [g-00715] */
END
IF~~THEN REPLY @183 /*Finish Akershus. */ DO~kill("g-bb007") AddexperienceParty(20000)~ EXIT
IF~Global("G-Akerexplain","GLOBAL",0) ~THEN REPLY @184 /*"Fine... One more chance. Tell me who you really are and why you attacked us." */ DO~SetGlobal("G-Akerexplain","GLOBAL",1) ~ + g-bbD007.explain
IF~~THEN REPLY @185 /*"Eh... Go on, then. Get out of here before I change my mind." */ DO~StickySinisterPoof("EF01TPRT","G-bb007",1) DestroySelf() PlaySound("AM_VORTX")  SetGlobal("G-sparedbard","GLOBAL",1)~ EXIT
IF~GlobalLT("G-AkerReview","GLOBAL",1)~THEN REPLY @186 /*"As shallow and meaningless as all your other songs. Die now." */ DO~kill("g-bb007") AddexperienceParty(20000)~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.spy
@188 /*"I was supposed to find Tergush'tekhn in Sigil, but I found Prod first. I was hoping that the abishai would come and retrieve him, but you showed up instead. And I overheard you were leaving for Cania. That's all I really gathered." */
END
IF~~THEN REPLY @190 /*"Who is your patron?" */ DO~~ + g-bbD007.patronafter
IF~~THEN REPLY @191 /*"What can you tell me about Anit'bil?" */ DO~~ + g-bbD007.anitbil
IF~~THEN REPLY @192 /*"That's not enough. Time to die." */ DO~~ + g-bbD007.kill
IF~~THEN REPLY @193 /*"Go on, then. Get out of here before I change my mind." */ DO~StickySinisterPoof("EF01TPRT","G-bb007",1) DestroySelf() PlaySound("AM_VORTX")  SetGlobal("G-sparedbard","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.patronafter
@195 /*"Prod already said his name. Mammon. Lord of the Third. Richest being in the planes. Great patron of the arts." */
END
IF~~THEN REPLY @197 /*"What were you looking for when you were spying on us?" */ DO~~ + g-bbD007.spy
IF~~THEN REPLY @198 /*"What can you tell me about Anit'bil?" */ DO~~ + g-bbD007.anitbil
IF~~THEN REPLY @199 /*"That's not enough. Time to die." */ DO~~ + g-bbD007.kill
IF~~THEN REPLY @200 /*"Go on, then. Get out of here before I change my mind." */ DO~StickySinisterPoof("EF01TPRT","G-bb007",1) DestroySelf() PlaySound("AM_VORTX")  SetGlobal("G-sparedbard","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.anitbil
@202 /*"He's a nasty, ambitious cornugon, buried extremely deep in Mammon's ass. I do have a very unsavory song about him. He has been giving me orders." */
END
IF~~THEN REPLY @204 /*"What were you looking for when you were spying on us?" */ DO~~ + g-bbD007.spy
IF~~THEN REPLY @205 /*"Who is your patron?" */ DO~~ + g-bbD007.patronafter
IF~~THEN REPLY @206 /*"That's not enough. Time to die." */ DO~~ + g-bbD007.kill
IF~~THEN REPLY @207 /*"Go on, then. Get out of here before I change my mind." */ DO~StickySinisterPoof("EF01TPRT","G-bb007",1) DestroySelf() PlaySound("AM_VORTX")  SetGlobal("G-sparedbard","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.attack2
@209 /*"There you are! My little fiendish friend, we haven't actually met before, but we do share an employer. Or... well, we used to." */
==g-bbd006 @210 /*"Used to? What now, Prod only serves Mammon. Always has." */
END
IF~~THEN REPLY @212 /*"Are we okay, Prod?" */ DO~~ + g-bbD007.okay
IF~~THEN REPLY @213 /*"I thought we were retrieving someone for Levistus." */ DO~~ + g-bbD007.patron
IF~~THEN REPLY @214 /*Say nothing. */ DO~~ + g-bbD007.cont
IF~~THEN REPLY @215 /*"You don't talk to Prod, you talk to ME around here." */ DO~~ + g-bbD007.overtake
CHAIN IF~~THEN g-bbD007 g-bbD007.cont
@217 /*"I heard otherwise, little one. I heard you and your abishai friends had absconded into service of another. I am here to learn who *is* that another." [g-00712] */
==g-bbD006 @218 /*"No, no, Prod only has eyes for the Lord of Avarice and his coin. Prod swears it."  [g-00609] */
END
IF~~THEN REPLY @220 /*"Are we okay, Prod?" */ DO~~ + g-bbD007.okay
IF~~THEN REPLY @221 /*"I thought we were retrieving someone for Levistus." */ DO~~ + g-bbD007.patron
IF~~THEN REPLY @222 /*Say nothing. */ DO~~ + g-bbD007.cont2
IF~~THEN REPLY @223 /*"You don't talk to Prod, you talk to ME around here." */ DO~~ + g-bbD007.overtake
CHAIN IF~~THEN g-bbD007 g-bbD007.cont2
@225 /*"You are a small fish, Prod. Your abishai friends are what really interests him. Tell us who your new master is and I will spare your life. Mammon doesn't even know you exist." */
==g-bbD006 @226 /*Prod clearly takes much longer to respond than usual. He opens his tiny mouth three times over and closes it again before uttering a sound. "Levistus," he says eventually. */
==g-bbD006 @227 /*"Prod never wanted to leave, Prod was forced! Prod thanks you for the rescue!" [g-00608] */
==g-bbd007 @228 /*"Excellent." In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. [g-00713] */
END
IF~~THEN REPLY @230 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
IF~~THEN REPLY @231 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.patron
@233 /*"Ah. Levistus. Excellent!" [g-00713] */
=@234 /*In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. */
END
IF~~THEN REPLY @236 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
IF~~THEN REPLY @237 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.okay
~~ ==g-bbd006 @239 /*"Oh, yes, yes. Prod knows these guys. We are old friends. We have nothing to worry about!" [g-00602] */
==g-bbd007 @240 /*"Indeed, you are safe. You are a small fish, Prod. Your abishai friends are what really interests him. Tell us who your new master is and I will spare your life. Mammon doesn't even know you exist." */
==g-bbD006 @241 /*Prod clearly takes much longer to respond than usual. He opens his tiny mouth three times over and closes it again before uttering a sound. "Levistus," he says eventually. */
==g-bbD006 @242 /*"Prod never wanted to leave, Prod was forced! Prod thanks you for the rescue!" [g-00608] */
==g-bbd007 @243 /*"Excellent." In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. [g-00713] */
END
IF~~THEN REPLY @245 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
IF~~THEN REPLY @246 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.overtake
@248 /*"By all means, tattoo-man. Maybe you have the information I need. Tell me and you get to leave. It's simple. Let us keep it simple. Who do you work for?" */
END
IF~~THEN REPLY @250 /*Attack. */ DO~~ + g-bbD007.prodgottadie
IF~~THEN REPLY @251 /*Truth: "Levistus. We are working for Levistus." */ DO~~ + g-bbD007.patron
IF~CheckStatGT(Protagonist,18,CHR)~THEN REPLY @252 /*Lie: "Mammon. We are working for the same archfiend, bard!" */ DO~AddexperienceParty(5000)~ + g-bbD007.almost
IF~!CheckStatGT(Protagonist,18,CHR)~THEN REPLY @253 /*Lie: "Mammon. We are working for the same archfiend, bard!" */ DO~~ + g-bbD007.lie
IF~CheckStatGT(Protagonist,21,CHR)~THEN REPLY @254 /*Lie: "Baron Molikroth. We have been summoned and you are causing him trouble. Not wise." */ DO~AddexperienceParty(10000)~ + g-bbD007.almost
IF~!CheckStatGT(Protagonist,21,CHR)~THEN REPLY @255 /*Lie: "Baron Molikroth. We have been summoned and you are causing him trouble. Not wise." */ DO~~ + g-bbD007.lie
IF~~THEN REPLY @256 /*"I work for nobody. I go as I please and do what I want." */ DO~~ + g-bbD007.kindatrue
CHAIN IF~~THEN g-bbD007 g-bbD007.prodgottadie
@258 /*"Fools!" In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. */
END
IF~~THEN REPLY @260 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.almost
@262 /*You see a shade of doubt run over Akershus's flawless face. Could it be? Could his information be wrong? He looks to the surrounding fiends for confirmation, but they seem to be as clueless as he is. */
=@263 /*But no. */
=@264 /*"You almost got me. Still, kindred cunning knows its kind. Excellent lying. I tip my hat." He turns back to Prod. */
=@265 /*"You are a small fish, Prod. Your abishai friends are what really interests him. Tell us who your new master is and I will spare your life. Mammon doesn't even know you exist." */
==g-bbD006 @266 /*Prod clearly takes much longer to respond than usual. He opens his tiny mouth three times over and closes it again before uttering a sound. "Levistus," he says eventually. */
==g-bbD006 @267 /*"Prod never wanted to leave, Prod was forced! Prod thanks you for the rescue!" [g-00608] */
==g-bbd007 @268 /*"Excellent." In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. [g-00713] */
END
IF~~THEN REPLY @270 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
IF~~THEN REPLY @271 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.lie
@273 /*"A pitiful lie, but... I appreciate the attempt." He turns back to Prod. */
=@274 /*"You are a small fish, Prod. Your abishai friends are what really interests him. Tell us who your new master is and I will spare your life. Mammon doesn't even know you exist." */
==g-bbD006 @275 /*Prod clearly takes much longer to respond than usual. He opens his tiny mouth three times over and closes it again before uttering a sound. "Levistus," he says eventually. */
==g-bbD006 @276 /*"Prod never wanted to leave, Prod was forced! Prod thanks you for the rescue!" [g-00608] */
==g-bbd007 @277 /*"Excellent." In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. [g-00713] */
END
IF~~THEN REPLY @279 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
IF~~THEN REPLY @280 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.kindatrue
@282 /*Akershus claps. "Truly, I believe you. You do seem like a strong, lonely type." He takes a step closer and puts his hands together, facing Prod. "Unlike you, little fiend."  */
=@283 /*"You are a small fish, Prod. Your abishai friends are what really interests him. Tell us who your new master is and I will spare your life. Mammon doesn't even know you exist." */
==g-bbD006 @284 /*Prod clearly takes much longer to respond than usual. He opens his tiny mouth three times over and closes it again before uttering a sound. "Levistus," he says eventually. */
==g-bbD006 @285 /*"Prod never wanted to leave, Prod was forced! Prod thanks you for the rescue!" [g-00608] */
==g-bbd007 @286 /*"Excellent." In an instant, a beam of magical energy streaks across the snowy path and hits the little imp. [g-00713] */
END
IF~~THEN REPLY @288 /*"Prod!" */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
IF~~THEN REPLY @289 /*Attack. */ DO~Help() Enemy() ForceAttack(Protagonist,Myself) kill("g-bb006") SetGlobal("G-BBmain","GLOBAL",22) ~ SOLVED_JOURNAL @20028 EXIT
CHAIN IF~~THEN g-bbD007 g-bbD007.rigus
@291 /*With your mind's eye, you see a suggestion of a memory. An image of concentric, austere walls seen from the air. A landing platform on which your machine settles... [SPTR_01] */
=@292 /*Troops of similar-looking warriors marching in neat rows. No. Not warriors, soldiers. That's an important distinction. Everyone here has a rank. She has a rank, too. */
=@293 /*She is beautiful. Shiny. Clean. Her metallic skin is decorated with symmetrical patterns designed to instill fear in those who see them. She usually doesn't like strangers in her city, but you are different. She orders you to lie down. You remember the pricks and the pain, but the result is... perfect. */
=@294 /*It is now later. Much later. In the mirror, you try to inspect the souvenir from the metal woman from Rigus. Unfortunately, the skin in that spot is burned. You no longer remember what the pattern looked like. You only remember... its perfection. */
END
IF~~THEN REPLY @296 /*Snap out of it. */ DO~AddexperienceParty(20000) FadeFromColor([20.0],0)~ + g-bbD007.rigus2
CHAIN IF~~THEN g-bbD007 g-bbD007.rigus2
@298 /*Akershus is looking at you. He seems confused. "You got really quiet there, cutter. You alright?" */
END
IF~~THEN REPLY @300 /*"Sorry. What does it depict?" */ DO~~ + g-bbD007.tattoo2
IF~~THEN REPLY @302 /*"I have some other questions." */ DO~~ + g-bbD007.q
IF~~THEN REPLY @303 /*"Actually, I should be going now." */ DO~~ EXIT