BEGIN g-bbD124
CHAIN IF~True()~THEN g-bbD124 g-bbD124.start
@0 /*This journal used to belong to a wererat thief named Fragile-Tail. It is a tattered, palm-sized volume bound in scraps of mismatched leather, some gray and smooth, others cracked and brown and possibly of human origin. The corners of the journal are frayed and chewed, as if it had been gnawed in moments of idle anxiety. A crude latch of bent wire keeps it shut to discourage prying. */
END
IF~~THEN REPLY @2 /*Unbend the wire and open the pages. */ DO~~ + g-bbD124.open
IF~~THEN REPLY @3 /*Leave the journal alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD124 g-bbD124.open
@5 /*Inside, the pages are a patchwork of stolen parchment and scraps torn from other books, sewn or glued in with no regard for uniformity. Ink stains, greasy fingerprints, and small blotches of dried blood mar the uneven margins. The handwriting shifts wildly between cramped, meticulous block letters and frantic, jittering scrawl, betraying moments of paranoia, hunger, or haste. Doodles fill the edges: sketched images of victims and clients, designs for knives, maps of bubbed buildings and back alleys, ominous symbols presumably copied from the alleyways of Sigil, and the private recollections of Fragile-Tail. */
END
IF~~THEN REPLY @7 /*Examine the sketches. */ DO~~ + g-bbD124.sketch
IF~~THEN REPLY @8 /*Examine the designs. */ DO~~ + g-bbD124.design
IF~~THEN REPLY @9 /*Examine the maps. */ DO~~ + g-bbD124.map
IF~~THEN REPLY @10 /*Examine the symbols. */ DO~~ + g-bbD124.symbol
IF~~THEN REPLY @11 /*Examine the recollections. */ DO~~ + g-bbD124.recollection
IF~~THEN REPLY @12 /*Twist the wire back into place and leave the journal alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD124 g-bbD124.sketch
@14 /*The drawings in the journal are far from pretty and were obviously made by an unskilled hand. You struggle for a moment to recognize any creatures depicted within the book, but you single out at least three - a kuo-toa, a large, fat bearded humanoid, and a dabus. The rest could be literally anything. */
END
IF~~THEN REPLY @16 /*Examine the designs. */ DO~~ + g-bbD124.design
IF~~THEN REPLY @17 /*Examine the maps. */ DO~~ + g-bbD124.map
IF~~THEN REPLY @18 /*Examine the symbols. */ DO~~ + g-bbD124.symbol
IF~~THEN REPLY @19 /*Examine the recollections. */ DO~~ + g-bbD124.recollection
IF~~THEN REPLY @20 /*Twist the wire back into place and leave the journal alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD124 g-bbD124.design
@22 /*None of these scribbled diagrams of knives conjure any confidence in their practical aspects. Maybe one of them could work, but it would require... maybe... three arms to operate effectively. Weapon design was clearly not this thief's area of expertise. */
END
IF~~THEN REPLY @24 /*Examine the sketches. */ DO~~ + g-bbD124.sketch
IF~~THEN REPLY @25 /*Examine the maps. */ DO~~ + g-bbD124.map
IF~~THEN REPLY @26 /*Examine the symbols. */ DO~~ + g-bbD124.symbol
IF~~THEN REPLY @27 /*Examine the recollections. */ DO~~ + g-bbD124.recollection
IF~~THEN REPLY @28 /*Twist the wire back into place and leave the journal alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD124 g-bbD124.map
@30 /*You do not recognize any of the places depicted in these maps specifically, but the detail in them is impressive regardless. There is an overlay of lines of sight and critical blind spots, diagrams to ensure the most effective way to traverse or access points of interest and even prognoses of movement by potential foes. Clearly, this bandit had some talent for cartography and strategy. What could have been... */
END
IF~~THEN REPLY @32 /*Examine the sketches. */ DO~~ + g-bbD124.sketch
IF~~THEN REPLY @33 /*Examine the designs. */ DO~~ + g-bbD124.design
IF~~THEN REPLY @34 /*Examine the symbols. */ DO~~ + g-bbD124.symbol
IF~~THEN REPLY @35 /*Examine the recollections. */ DO~~ + g-bbD124.recollection
IF~~THEN REPLY @36 /*Twist the wire back into place and leave the journal alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD124 g-bbD124.symbol
@38 /*There are so many of them. Fragile Tail was not the best artist, so the more complex symbols are not extremely evocative, but he did a good job with simple, geometric ones. The symbols are not annotated with any locations, meanings or connections so it is unclear as to what their specific purpose was. */
END
IF~~THEN REPLY @40 /*Examine the sketches. */ DO~~ + g-bbD124.sketch
IF~~THEN REPLY @41 /*Examine the designs. */ DO~~ + g-bbD124.design
IF~~THEN REPLY @42 /*Examine the maps. */ DO~~ + g-bbD124.map
IF~~THEN REPLY @43 /*Examine the recollections. */ DO~~ + g-bbD124.recollection
IF~~THEN REPLY @44 /*Twist the wire back into place and leave the journal alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD124 g-bbD124.recollection
@46 /*Fragile-Tail's grammar seems to be alright, but his spelling leaves much to be desired. You find the most recent recollection. It is written in a fragmented manner, but the emotional tone is quite clear. */
=@47 /*"The asscort of the duerro was an absolut disasta! Everyone is gon, my tail is gon and I am wantyd by the yugoloths! All becaus of a stupid, drunk marnoloth, who didnt laik our bout. Mei Squerrik have merci on my soddin tail, restin at the bottm of the Dich. I am loocky to have a freend in Orvill, and he allowd me to wait the storm aut at the bak of RatnSplat. Four of me maits gon, only me spared." */
=@48 /*"The orsman ataked us and kiled the duerro. Then, yagnos came to luk for us, so we thought we wuld hid by the old cloktowa, we showd up arond antipeek and a blue lite came over us, and very cold eir, I barely hid unda wata and wen I came up, evryon was gon! My tail too! I swam to the Trestle and snuk in here." */
=@49 /*"I hop this all blows over, and my freends are ok..." */
END
IF~GlobalLT("g-BBmain","GLOBAL",19)~THEN REPLY @51 /*"The old clocktower at midnight..." */ DO~SetGlobal("g-BBmain","GLOBAL",19) AddexperienceParty(50000) SetGlobal("G-awareportal","GLOBAL",1)~ SOLVED_JOURNAL @20025 EXIT
IF~~THEN REPLY @52 /*Examine the sketches. */ DO~~ + g-bbD124.sketch
IF~~THEN REPLY @53 /*Examine the designs. */ DO~~ + g-bbD124.design
IF~~THEN REPLY @54 /*Examine the maps. */ DO~~ + g-bbD124.map
IF~~THEN REPLY @55 /*Examine the symbols. */ DO~~ + g-bbD124.symbol
IF~~THEN REPLY @56 /*Twist the wire back into place and leave the journal alone. */ DO~~ EXIT