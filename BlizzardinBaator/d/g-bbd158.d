BEGIN g-bbD158
CHAIN IF~Global("g-knowpiano","GLOBAL",0)~THEN g-bbD158 g-bbD158.start1
@0 /*In this luxurious mansion where opulence radiates from every gleaming marble tile, the focal point is a large structure that somewhat resembles a wooden clam. At the front, there is a row of rectangles resembling teeth, white and black. Inside the shell are metal strings, and some of them have mechanical devices clamped on top. However, a certain section of the strings is "loose," and you can see that the teeth corresponding to those strings stick out from the flat plane of the other teeth, as if the other ones were "stuck" in a pressed position. */
==DGrace IF ~InParty("Grace") !StateCheck("Grace",CD_STATE_NOTVALID) NearbyDialog("DGrace")~ THEN @1 /*"Ah. A beautiful piano. But someone has muted most of the strings, leaving only two octaves. I wonder why?" */
==g-bbd158 @2 /*A distant memory smolders in the depths of your mind. It is not clear enough to form a complete picture, but it brings a single, basic concept to your consciousness. It is a musical instrument. [SPTR_01] */
==g-bbd158 @3 /*You notice that certain markings, numbers and figures, are carved above the individual unpressed white keys on the beautiful, light-colored wood, as if the owner of this instrument used it not for playing, but for some kind of calculation. */
==g-bbd158 @4 /*^NNOTE: If you like, you can use the 1–8 keys to play notes within an octave. For technical reasons (to allow playing on the numeric keypad), only the white keys are available.^- */
END
IF~~THEN REPLY @6 /*Run your fingers through the instrument's teeth. */ DO~SetGlobal("g-knowpiano","GLOBAL",1)~ + g-bbD158.play0
IF~~THEN REPLY @7 /*Leave. */ DO~SetGlobal("g-knowpiano","GLOBAL",1)~ EXIT
CHAIN IF~GlobalGT("g-knowpiano","GLOBAL",0)~THEN g-bbD158 g-bbD158.start2
@9 /*Here it is again. The instrument in this beautiful living room. Its teeth seem to be longing for the touch of your fingers. */
END
IF~~THEN REPLY @11 /*Run your fingers through the instrument's teeth. */ DO~~ + g-bbD158.play0
IF~~THEN REPLY @12 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.play0
@14 /*You run your fingers from the left side, producing a series of increasingly higher-pitched sounds that resonate pleasantly throughout the living room. The unpressed teeth appear to be split in half, judging by the symbols engraved above them. Both halves are marked with the letters C, D, E, F, G, A, H, and C, but differ in the numbers at the end. */
END
IF~~THEN REPLY @16 /*Focus on the first half, marked with the symbols C1 through C2. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.octave1
IF~~THEN REPLY @17 /*Focus on the second half, marked with the symbols C2 through C3. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.octave2
IF~~THEN REPLY @18 /*Leave. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.octave1
@20 /*What note do you want to start with? */
END
IF~~THEN REPLY @22 /*C1 */ DO~~ + g-bbD158.playc1
IF~~THEN REPLY @23 /*D1 */ DO~~ + g-bbD158.playd1
IF~~THEN REPLY @24 /*E1 */ DO~~ + g-bbD158.playe1
IF~~THEN REPLY @25 /*F1 */ DO~~ + g-bbD158.playf1
IF~~THEN REPLY @26 /*G1 */ DO~IncrementGlobal("g-pianoportal","GLOBAL",1)~ + g-bbD158.playg1
IF~~THEN REPLY @27 /*A1 */ DO~~ + g-bbD158.playa1
IF~~THEN REPLY @28 /*B1 */ DO~~ + g-bbD158.playb1
IF~~THEN REPLY @29 /*C2 */ DO~~ + g-bbD158.playc2
IF~~THEN REPLY @30 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playc1
@32 /*A C note resounds in the room. Do you wish to play another note? [G-C1] */
END
IF~~THEN REPLY @34 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @35 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @36 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @37 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @38 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @39 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa1
IF~~THEN REPLY @40 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @41 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @42 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playd1
@44 /*A D note resounds in the room. Do you wish to play another note? [G-D1] */
END
IF~~THEN REPLY @46 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @47 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @48 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @49 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @50 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @51 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa1
IF~~THEN REPLY @52 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @53 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @54 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playe1
@56 /*An E note resounds in the room. Do you wish to play another note? [G-E1] */
END
IF~~THEN REPLY @58 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @59 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @60 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @61 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @62 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @63 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa1
IF~~THEN REPLY @64 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @65 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @66 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playf1
@68 /*An F note resounds in the room. Do you wish to play another note? [G-F1] */
END
IF~~THEN REPLY @70 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @71 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @72 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @73 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @74 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @75 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa1
IF~~THEN REPLY @76 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @77 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @78 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playg1
@80 /*A G note resounds in the room. Do you wish to play another note? [G-G1] */
END
IF~~THEN REPLY @82 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @83 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @84 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @85 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @86 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @87 /*A1 */ DO~IncrementGlobal("g-pianoportal","GLOBAL",1)~ + g-bbD158.playa1
IF~~THEN REPLY @88 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @89 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @90 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playa1
@92 /*An A note resounds in the room. Do you wish to play another note? [G-A1] */
END
IF~~THEN REPLY @94 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)

~ + g-bbD158.playc1
IF~~THEN REPLY @95 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playd1
IF~~THEN REPLY @96 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)

~ + g-bbD158.playe1
IF~~THEN REPLY @97 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)

~ + g-bbD158.playf1
IF~~THEN REPLY @98 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playg1
IF~~THEN REPLY @99 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playa1
IF~~THEN REPLY @100 /*B1 */ DO~IncrementGlobal("g-pianoportal","GLOBAL",1)~ + g-bbD158.playb1
IF~~THEN REPLY @101 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playc2
IF~~THEN REPLY @102 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playb1
@104 /*A B note resounds in the room. Do you wish to play another note? [G-B1] */
==g-bbd158 IF~Global("g-pianoportal","GLOBAL",3)~THEN @105 /*You notice a portal that opens in the next room over after the melody is complete. [AM_VORTX] */
END
IF~~THEN REPLY @107 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @108 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @109 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @110 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @111 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @112 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa1
IF~~THEN REPLY @113 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @114 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @115 /*Finish playing. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playc2
@117 /*A C note resounds in the room. Do you wish to play another note? [G-C2] */
END
IF~~THEN REPLY @119 /*C1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc1
IF~~THEN REPLY @120 /*D1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd1
IF~~THEN REPLY @121 /*E1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe1
IF~~THEN REPLY @122 /*F1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf1
IF~~THEN REPLY @123 /*G1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg1
IF~~THEN REPLY @124 /*A1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa1
IF~~THEN REPLY @125 /*B1 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb1
IF~~THEN REPLY @126 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc2
IF~~THEN REPLY @127 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.octave2
@129 /*What note do you want to start with? */
END
IF~~THEN REPLY @131 /*C2 */ DO~~ + g-bbD158.playc22
IF~~THEN REPLY @132 /*D2 */ DO~~ + g-bbD158.playd2
IF~~THEN REPLY @133 /*E2 */ DO~~ + g-bbD158.playe2
IF~~THEN REPLY @134 /*F2 */ DO~~ + g-bbD158.playf2
IF~~THEN REPLY @135 /*G2 */ DO~IncrementGlobal("g-pianoportal","GLOBAL",1)~ + g-bbD158.playg2
IF~~THEN REPLY @136 /*A2 */ DO~~ + g-bbD158.playa2
IF~~THEN REPLY @137 /*B2 */ DO~~ + g-bbD158.playb2
IF~~THEN REPLY @138 /*C3 */ DO~~ + g-bbD158.playc3
IF~~THEN REPLY @139 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playc22
@141 /*A C note resounds in the room. Do you wish to play another note? [G-C2] */
END
IF~~THEN REPLY @143 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @144 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @145 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @146 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @147 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @148 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa2
IF~~THEN REPLY @149 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @150 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @151 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playd2
@153 /*A D note resounds in the room. Do you wish to play another note? [G-D2] */
END
IF~~THEN REPLY @155 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @156 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @157 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @158 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @159 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @160 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa2
IF~~THEN REPLY @161 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @162 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @163 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playe2
@165 /*An E note resounds in the room. Do you wish to play another note? [G-E2] */
END
IF~~THEN REPLY @167 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @168 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @169 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @170 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @171 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @172 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa2
IF~~THEN REPLY @173 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @174 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @175 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playf2
@177 /*An F note resounds in the room. Do you wish to play another note? [G-F2] */
END
IF~~THEN REPLY @179 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @180 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @181 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @182 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @183 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @184 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa2
IF~~THEN REPLY @185 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @186 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @187 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playg2
@189 /*A G note resounds in the room. Do you wish to play another note? [G-G2] */
END
IF~~THEN REPLY @191 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @192 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @193 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @194 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @195 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @196 /*A2 */ DO~IncrementGlobal("g-pianoportal","GLOBAL",1)~ + g-bbD158.playa2
IF~~THEN REPLY @197 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @198 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @199 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playa2
@201 /*An A note resounds in the room. Do you wish to play another note? [G-A2] */
END
IF~~THEN REPLY @203 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)

~ + g-bbD158.playc22
IF~~THEN REPLY @204 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playd2
IF~~THEN REPLY @205 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)

~ + g-bbD158.playe2
IF~~THEN REPLY @206 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)

~ + g-bbD158.playf2
IF~~THEN REPLY @207 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playg2
IF~~THEN REPLY @208 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playa2
IF~~THEN REPLY @209 /*B2 */ DO~IncrementGlobal("g-pianoportal","GLOBAL",1)~ + g-bbD158.playb2
IF~~THEN REPLY @210 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ + g-bbD158.playc3
IF~~THEN REPLY @211 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)
~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playb2
@213 /*A B note resounds in the room. Do you wish to play another note? [G-B2] */
==g-bbd158 IF~Global("g-pianoportal","GLOBAL",3)~THEN @214 /*You notice a portal that opens in the next room over after the melody is complete. [AM_VORTX] */
END
IF~~THEN REPLY @216 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @217 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @218 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @219 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @220 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @221 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa2
IF~~THEN REPLY @222 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @223 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @224 /*Finish playing. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD158 g-bbD158.playc3
@226 /*A C note resounds in the room. Do you wish to play another note? [G-C3] */
END
IF~~THEN REPLY @228 /*C2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc22
IF~~THEN REPLY @229 /*D2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playd2
IF~~THEN REPLY @230 /*E2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playe2
IF~~THEN REPLY @231 /*F2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playf2
IF~~THEN REPLY @232 /*G2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playg2
IF~~THEN REPLY @233 /*A2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playa2
IF~~THEN REPLY @234 /*B2 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playb2
IF~~THEN REPLY @235 /*C3 */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ + g-bbD158.playc3
IF~~THEN REPLY @236 /*Finish playing. */ DO~SetGlobal("g-pianoportal","GLOBAL",0)~ EXIT