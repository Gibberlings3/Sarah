BEGIN K#VMPSRH

// Uh oh

ADD_TRANS_TRIGGER BODHIAMB 5 ~OR(2)
!InParty("K#Sarah")
!Global("K#SarahRomanceActive","GLOBAL",2)~ DO 0

INTERJECT BODHIAMB 5 K#BodhiAbduction1 //BodhiAbduction#1.1
== BODHIAMB IF ~Global("K#SarahRomanceActive","GLOBAL",2)
InParty("K#Sarah")~ THEN @0
END
IF ~OR(2)
!InPartyAllowDead("K#Sarah")
Dead("K#Sarah")~ THEN EXTERN BODHIAMB 6
IF ~InPartyAllowDead("K#Sarah")
!Dead("K#Sarah")~ THEN EXTERN BODHIAMB BodhiAbduction#1.2

CHAIN BODHIAMB BodhiAbduction#1.2 //From BodhiAbduction#1.1.2
@1
== K#SarahB @2
== BODHIAMB @3
END
IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("K#SCUT01")~
UNSOLVED_JOURNAL @4 EXIT

// Kill the bitch

ADD_TRANS_TRIGGER C6BODHI 21 ~!Global("K#SarahVampire","GLOBAL",2)~ DO 0

INTERJECT C6BODHI 21 K#BodhiAbduction2 //BodhiAbduction#2.1
== C6BODHI IF ~Global("K#SarahVampire","GLOBAL",2)~ THEN @5
END
++ @6 EXTERN C6BODHI BodhiAbduction#2.2
++ @7 EXTERN C6BODHI BodhiAbduction#2.2
++ @8 EXTERN C6BODHI BodhiAbduction#2.2
++ @9 EXTERN C6BODHI BodhiAbduction#2.3

APPEND C6BODHI

IF ~~ THEN BEGIN BodhiAbduction#2.2 //From BodhiAbduction#2.1.1, BodhiAbduction#2.1.2, BodhiAbduction#2.1.3, BodhiAdduction#2.3.1
SAY @10
IF ~~ THEN 
UNSOLVED_JOURNAL @11EXTERN K#VMPSRH BodhiAbduction#2.4
END

IF ~~ THEN BEGIN BodhiAbduction#2.3 //From BodhiAbduction#2.1.4
SAY @12
IF ~~ THEN GOTO BodhiAbduction#2.2
END

END

CHAIN K#VMPSRH BodhiAbduction#2.4 //From BodhiAbduction#2.2.1
@13
== C6BODHI @14
END C6BODHI 28

// Yelling at Elhan

EXTEND_BOTTOM C6ELHAN2 70
+ ~PartyHasItem("K#SRHBDY")~ + @15 GOTO 76
END

EXTEND_BOTTOM DOGHMA 0 #5
+ ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("K#SRHBDY")~ + @16 GOTO 10
END

EXTEND_BOTTOM DOGHMA 3 7 9 #4
+ ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("K#SRHBDY")~ + @16 GOTO 10
END

EXTEND_BOTTOM IMNBOOK1 0
+ ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("K#SRHBDY")~ + @17 GOTO 4
END

ADD_STATE_TRIGGER OGHMONK1 0 ~!PartyHasItem("K#SRHBDY")~ 1 2 3

APPEND OGHMONK1

IF WEIGHT #-1 ~Global("RevealUmar","GLOBAL",1)
PartyHasItem("K#SRHBDY")~ THEN BEGIN OghmaMonk#1.1
SAY @18
++ @19 GOTO 5
++ @16 GOTO 6
END

END

EXTEND_BOTTOM SUDEMIN 2
+ ~PartyHasItem("K#SRHBDY")~ + @20 GOTO 3
END

EXTEND_BOTTOM WARSAGE 0
+ ~!Dead("c6bodhi")
Global("K#SarahVampire","GLOBAL",2)~ + @21 GOTO 6
+ ~PartyHasItem("K#SRHBDY")~ + @22 GOTO 5
END

// You get her back

APPEND K#SarahP

IF WEIGHT #-1 ~Global("K#SarahVampire","GLOBAL",4)~ THEN BEGIN SarahUnvamped#1.1
SAY @23
= @24
= @25
= @26
++ @27 DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@4)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(@11)
SetGlobal("K#SarahVampire","GLOBAL",5)~ SOLVED_JOURNAL @28 GOTO SarahUnvamped#1.2
++ @29 DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@4)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(@11)
SetGlobal("K#SarahVampire","GLOBAL",5)~ SOLVED_JOURNAL @28 GOTO SarahUnvamped#1.2
++ @30 DO ~EraseJournalEntry(32084)
EraseJournalEntry(32085)
EraseJournalEntry(16351)
EraseJournalEntry(@4)
EraseJournalEntry(15710)
EraseJournalEntry(6589)
EraseJournalEntry(@11)
SetGlobal("K#SarahVampire","GLOBAL",5)~
SOLVED_JOURNAL @28 GOTO SarahUnvamped#1.3
END

IF ~~ THEN BEGIN SarahUnvamped#1.2
SAY @31
++ @32 GOTO SarahUnvamped#1.5
++ @33 GOTO SarahUnvamped#1.6
END

IF ~~ THEN BEGIN SarahUnvamped#1.3
SAY @34
++ @35 GOTO SarahUnvamped#1.2
++ @36 GOTO SarahUnvamped#1.4
END

IF ~~ THEN BEGIN SarahUnvamped#1.4
SAY @37
= @38
IF ~~ THEN DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3)
SetGlobal("K#SarahFriendshipActive","GLOBAL",2)
SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN SarahUnvamped#1.5
SAY @39
= @40
IF ~~ THEN DO ~JoinParty()~ EXIT
END

IF ~~ THEN BEGIN SarahUnvamped#1.6
SAY @37
= @38
IF ~~ THEN DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3)
SetGlobal("K#SarahFriendshipActive","GLOBAL",2)
SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~ EXIT
END

END