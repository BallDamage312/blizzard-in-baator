BEGIN g-bbD172
CHAIN IF~OR(2) NumTimesTalkedTo(0) NumTimesTalkedToGT(0)~THEN g-bbD172 g-bbD172.start.1
@0 /*The parchment remains intact and clearly depicts an obelisk. The cuts are still visible, but the parchment is somehow held together. [AURA02] */
END
IF~~THEN REPLY @2 /*Unfold the parchment along the visible cuts. */ DO~~ + g-bbD172.go
IF~~THEN REPLY @3 /*Study it carefully. */ DO~~ + g-bbD172.study
IF~~THEN REPLY @4 /*Put it aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD172 g-bbD172.go
@6 /*As you do so, it emits a loud crackle of unleashed energy and unravels into a delicate, yet unmistakably intentional, strange loop. A gentle light radiates invitingly from within. [AURA02] */
END
IF~~THEN REPLY @8 /*Step through the loop. [AM_VORTX] */ DO~RevealAreaOnMap("AR0100") RevealAreaOnMap("AR0101") RevealAreaOnMap("AR0109") RevealAreaOnMap("AR0200") RevealAreaOnMap("AR0300") RevealAreaOnMap("AR0300") RevealAreaOnMap("AR0400") RevealAreaOnMap("AR0500") RevealAreaOnMap("AR0600")  StickySinisterPoof("EF01TPRT",Player1,1)  StickySinisterPoof("EF01TPRT",Player2,1) StickySinisterPoof("EF01TPRT",Player3,1) StickySinisterPoof("EF01TPRT",Player4,1) StickySinisterPoof("EF01TPRT",Player5,1) StickySinisterPoof("EF01TPRT",Player6,1) Wait(2) TeleportParty("AR0200",[1075.1780],14) DestroyPartyItem("g-bbi072",1)~ EXIT
IF~~THEN REPLY @9 /*Fold it back up and set it aside. */ DO~~ EXIT
CHAIN IF~~THEN g-bbD172 g-bbD172.study
@11 /*It has been carefully cut from the inside. The cuts fold into one another, creating a labyrinthine pattern. The obelisk was likely sketched onto the parchment before the cuts were made. */
END
IF~~THEN REPLY @13 /*Unfold it. */ DO~~ + g-bbD172.go
IF~~THEN REPLY @14 /*Put it aside. */ DO~~ EXIT