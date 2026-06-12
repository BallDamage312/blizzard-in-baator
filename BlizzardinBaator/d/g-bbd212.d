BEGIN g-bbD212
CHAIN IF~Global("g-DeadAngelRespect","GLOBAL",0) !Global("g-DeadAngelStudied","GLOBAL",1)~THEN g-bbD212 g-bbD212.start
@0 /*Emerging from a deep crevice in the surface of the monumental mountain is a large ice spike, in which you can see a figure. It appears to be genderless, extremely beautiful, and made of elegant granite. The sculpture's details are immaculate, as if the finest sculptor in the planes had come here to the frozen depths to fulfill some insane commission that no one would ever see. */
END
IF~CheckStatGT(Protagonist,16,WIS) Global("g-DeadAngelStudied","GLOBAL",0)~THEN REPLY @2 /*Examine the statue. */ DO~SetGlobal("g-DeadAngelStudied","GLOBAL",2)~ + g-bbD212.examineS
IF~!CheckStatGT(Protagonist,16,WIS) Global("g-DeadAngelStudied","GLOBAL",0)~THEN REPLY @3 /*Examine the statue. */ DO~SetGlobal("g-DeadAngelStudied","GLOBAL",1)~ + g-bbD212.examineF
IF~~THEN REPLY @4 /*Leave the statue alone. */ DO~~ EXIT
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)  NearbyDialog("g-bbdigy") Global("g-DeadAngelStudied","GLOBAL",2)~THEN REPLY @5 /*"Ignus? Can you melt this piece of ice? I want to take a closer look at this ring." */ DO~~ + g-bbD212.ignus
IF~Class(Protagonist,Mage) Global("g-DeadAngelStudied","GLOBAL",2)~THEN REPLY @6 /*Check your spell book for something that will allow you to reach the ring. */ DO~~ + g-bbD212.firemage
IF~Global("g-DeadAngelStudied","GLOBAL",2)~THEN REPLY @7 /*Leave the celestial's corpse alone once and for all. It is only right to show respect to a fallen warrior. */ DO~GiveExperience(Protagonist,60000) SetGlobal("g-DeadAngelRespect","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1)~ EXIT
CHAIN IF~Global("g-DeadAngelStudied","GLOBAL",1) Global("g-DeadAngelRespect","GLOBAL",0)~THEN g-bbD212 g-bbD212.start1
@9 /*The sculpture is still stuck inside the ice. This is no time to appreciate art, even art as fine as this. Mephistar awaits. */
EXIT
CHAIN IF~Global("g-DeadAngelRespect","GLOBAL",1) Global("g-DeadAngelStudied","GLOBAL",1) ~THEN g-bbD212 g-bbD212.start2
@12 /*The dead celestial remains in their icy tomb, reaching their ringed hand towards freedom forever out of reach.  */
EXIT
CHAIN IF~Global("g-DeadAngelRespect","GLOBAL",1) Global("g-DeadAngelStudied","GLOBAL",0)~THEN g-bbD212 g-bbD212.start2a
@15 /*The dead celestial remains in their icy tomb, reaching solemnly towards freedom forever out of reach.  */
EXIT
CHAIN IF~Global("g-DeadAngelRespect","GLOBAL",3)~THEN g-bbD212 g-bbD212.start3
@18 /*The dead celestial is still here. Their hand is hopelessly exposed, reaching towards freedom forever out of reach. This is not the freedom they yearned for. */
EXIT
CHAIN IF~~THEN g-bbD212 g-bbD212.examineS
@21 /*The ice is thick and clouded, so it is difficult to see well, but the statue's expression is one of pure determination. However, you can also see that a large chunk of its head is missing. */
=@22 /*It is not made entirely of stone, though. On the arm reaching out towards the surface of the ice, you can see a tiny glint of metal. The ring is positioned on the finger in such a way that it could not have been placed there after the sculpt, unless it was forged around it. The simplest explanation for this would be that the statue... was once alive. */
==g-bbdmrt IF~NearbyDialog("g-bbdmrt")~THEN @23 /*"Oh, chief, this is a dead angel." */
==g-bbd212 @24 /*This is likely a celestial that was slain, petrified and frozen here eons ago. */
END
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID) NearbyDialog("g-bbdigy")~THEN REPLY @26 /*"Ignus? Can you melt this piece of ice? I want to take a closer look at this ring." */ DO~~ + g-bbD212.ignus
IF~Class(Protagonist,Mage)~THEN REPLY @27 /*Check your spell book for something that will allow you to reach the ring. */ DO~~ + g-bbD212.firemage
IF~~THEN REPLY @28 /*Leave the statue alone for now. */ DO~~ EXIT
IF~~THEN REPLY @29 /*Leave the celestial's corpse alone once and for all. It is only right to show respect to a fallen warrior. */ DO~GiveExperience(Protagonist,60000) SetGlobal("g-DeadAngelRespect","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD212 g-bbD212.examineF
@31 /*The ice is thick and clouded, so it is difficult to see well, but the statue's expression is one of pure determination. However, you can also see that a large chunk of its head is missing. */
END
IF~~THEN REPLY @33 /*Leave the statue alone. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD212 g-bbD212.ignus
@35 /*You watch as Ignus floats closer, his eyes sparkling with the prospect of using his fire on something that, on an elemental level, is his true nemesis: ICE. */
==g-bbdigy @36 /**"Aaaah.... Ssssweet..... flammmmess."* [IGN016] */
==g-bbdigy @37 /*Ignus merely touches the ice and the steam explodes all around, temporarily blinding you. When the steam dissipates due to the winds raging on this exposed peak, a sizable hole appears in the icy spire and the granite hand is free. But the ring is still stuck on the finger. [g-sauna] */
==g-bbdigy @38 /**"Flamessss... weak."* [IGN042] */
END
IF~CheckStatGT(Protagonist,16,STR)~THEN REPLY @40 /*Break off the finger to set the ring free. */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD212.free
IF~CheckStatGT(Protagonist,16,DEX)~THEN REPLY @41 /*Find the perfect angle to slip the ring off the finger without damaging it. */ DO~~ + g-bbD212.free
IF~CheckStatGT(Protagonist,16,INT)~THEN REPLY @42 /*Use some wax from your pack to lubricate the finger and free the ring. */ DO~~ + g-bbD212.free
IF~HaveSpell(WIZARD_SUBMERGE_THE_WILL)~THEN REPLY @43 /*Submerge your will. Take the ring. */ DO~~ + g-bbD212.free
IF~~THEN REPLY @44 /*Leave the celestial's corpse alone after all. It is only right to show respect to a fallen warrior. You have caused enough damage. */ DO~GiveExperience(Protagonist,10000) SetGlobal("g-DeadAngelRespect","GLOBAL",3)~ EXIT
CHAIN IF~~THEN g-bbD212 g-bbD212.firemage
@46 /*Which spell would you like to use to thaw the arm? */
END
IF~HaveSpell(WIZARD_TONGUES_OF_FLAME)~THEN REPLY @48 /*Cast "Tongue of Flames" on the ice. */ DO~SinisterPoof("S056FEXP",[3790.783],1)~ + g-bbD212.spell
IF~HaveSpell(WIZARD_SEEKING_FLAMES)~THEN REPLY @49 /*Cast "Seeking Flames" on the ice. */ DO~SinisterPoof("S056FEXP",[3790.783],1)~ + g-bbD212.spell
IF~HaveSpell(WIZARD_INFERNAL_ORB)~THEN REPLY @50 /*Cast "Infernal Orb" on the ice. */ DO~SinisterPoof("S056FEXP",[3790.783],1)~ + g-bbD212.spell
IF~HaveSpell(WIZARD_DESERT_HELL)~THEN REPLY @51 /*Cast "Desert Hell" on the ice. */ DO~SinisterPoof("S056FEXP",[3790.783],1)~ + g-bbD212.spell
IF~HaveSpellRES("g-bb668")~THEN REPLY @52 /*Cast "Fireball" on the ice. */ DO~SinisterPoof("S056FEXP",[3790.783],1)~ + g-bbD212.spell
IF~HaveSpell(WIZARD_FIRE_AND_ICE)~THEN REPLY @53 /*Cast "Fire and Ice"... on the ice. */ DO~SinisterPoof("S056FEXP",[3790.783],1)~ + g-bbD212.spell
IF~InParty("Ignus") !StateCheck("Ignus",CD_STATE_NOTVALID)  NearbyDialog("g-bbdigy") Global("g-DeadAngelStudied","GLOBAL",2)~THEN REPLY @54 /*"Ignus? Can you melt this ice? I want to take a closer look at this ring." */ DO~~ + g-bbD212.ignus
IF~~THEN REPLY @55 /*Leave the statue alone. */ DO~~ EXIT
IF~Global("g-DeadAngelStudied","GLOBAL",2)~THEN REPLY @56 /*Leave the celestial's corpse alone once and for all. It is only right to show respect to a fallen warrior. */ DO~GiveExperience(Protagonist,60000) SetGlobal("g-DeadAngelRespect","GLOBAL",1) IncrementGlobal("GOOD","GLOBAL",1)~ EXIT
CHAIN IF~~THEN g-bbD212 g-bbD212.spell
@58 /*You cast a fire-based spell at the ice, taking care not to burn yourself. The spell seems somehow weakened by the layer's aura, but when the flames touch the spike's surface, steam explodes all around, temporarily blinding you. When the steam dissipates due to the winds raging on this exposed peak, a sizable hole appears in the icy spire and the granite hand is free. But the ring is still stuck on the finger. [g-sauna] */
END
IF~CheckStatGT(Protagonist,16,STR)~THEN REPLY @60 /*Break off the finger to set the ring free. */ DO~IncrementGlobal("GOOD","GLOBAL",-1)~ + g-bbD212.free
IF~CheckStatGT(Protagonist,16,DEX)~THEN REPLY @61 /*Find the perfect angle to slip the ring off the finger without damaging it. */ DO~~ + g-bbD212.free
IF~CheckStatGT(Protagonist,16,INT)~THEN REPLY @62 /*Use some wax from your pack to lubricate the finger and free the ring. */ DO~~ + g-bbD212.free
IF~HaveSpell(WIZARD_SUBMERGE_THE_WILL)~THEN REPLY @63 /*Submerge your will. Take the ring. */ DO~~ + g-bbD212.free
IF~~THEN REPLY @64 /*Leave the celestial's corpse alone after all. It is only right to show respect to a fallen warrior. You have caused enough damage. */ DO~GiveExperience(Protagonist,30000) SetGlobal("g-DeadAngelRespect","GLOBAL",3)~ EXIT
CHAIN IF~~THEN g-bbD212 g-bbD212.free
@66 /*The ring slips away from the dead celestial's finger. Somehow, the majestic granite seems to lose its grandeur after you remove it. In any case, the trinket is yours. */
END
IF~~THEN REPLY @68 /*Leave the dead celestial. */ DO~SetGlobal("g-DeadAngelRespect","GLOBAL",3) GiveItemCreate("g-bbi087",Protagonist,1,1,0)~ EXIT