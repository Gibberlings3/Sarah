//This is Sarah's Joining and Parting Dialogue

BEGIN K#Sarah

//FirstMeetingEvil

CHAIN
IF ~NumTimesTalkedTo(0)
Alignment(Player1, MASK_EVIL)~ THEN K#Sarah SarahIntroEvil
@0
= @1
= @2
= @3
= @4
= @5
DO ~EscapeArea()~
EXIT

//FirstMeeting

CHAIN
IF ~NumTimesTalkedTo(0)~ THEN K#Sarah SarahIntro
@0
= @1
= @2
= @6
END

IF ~~ THEN REPLY @7 GOTO SarahIntro1
IF ~Global("Wainwrightjob","GLOBAL",1)~ THEN REPLY @8 GOTO SarahIntro2
IF ~~ THEN REPLY @9 GOTO SarahIntro3
IF ~~ THEN REPLY @10 GOTO SarahIntro4
IF ~~ THEN REPLY @11 GOTO SarahIntro3

//First Response

CHAIN
IF ~~ THEN K#Sarah SarahIntro1
@12
= @13
END 

IF ~~ THEN REPLY @14 GOTO SarahIntro1-1

CHAIN
IF ~~ THEN K#Sarah SarahIntro1-1
@15
END

IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN REPLY @16 GOTO SarahIntro1-1-1
IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN REPLY @17 GOTO SarahIntro1-1-2
IF ~Global("Wainwrightjob","GLOBAL",1)~ THEN REPLY @18 GOTO SarahIntro1-1-3
IF ~~ THEN REPLY @19 GOTO SarahIntro1-1-3

CHAIN
IF ~~ THEN K#Sarah SarahIntro1-1-1
@20
= @21
END

IF ~~THEN REPLY @22 
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @23 GOTO SarahIntro1-1-1-1

CHAIN 
IF ~~ THEN K#Sarah SarahIntro1-1-1-1
@24
= @25
DO ~EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~
EXIT

CHAIN
IF ~~ THEN K#Sarah SarahIntro1-1-2
@26
= @27
END

IF ~~THEN REPLY @22
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @23 GOTO SarahIntro1-1-2-1

CHAIN 
IF ~~ THEN K#Sarah SarahIntro1-1-2-1
@24
= @25
DO ~EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~
EXIT

CHAIN
IF ~~ THEN K#Sarah SarahIntro1-1-3
@28
= @29
END

IF ~~THEN REPLY @22 
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @23 GOTO SarahIntro1-1-3-1

CHAIN
IF ~~ THEN K#Sarah SarahIntro1-1-3-1
@24
= @25
DO ~EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~
EXIT


//Second Response

CHAIN
IF ~~ THEN K#Sarah SarahIntro2
@30
= @31
= @32
= @33
END

IF ~~ THEN REPLY @34 GOTO SarahIntro2-1

CHAIN
IF ~~ THEN K#Sarah SarahIntro2-1
@35
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~
EXIT

//Third Response

CHAIN
IF ~~ THEN K#Sarah SarahIntro3
@36
= @13
END 

IF ~~ THEN REPLY @14 GOTO SarahIntro3-1

CHAIN
IF ~~ THEN K#Sarah SarahIntro3-1
@37
END

IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN REPLY @16 GOTO SarahIntro3-1-1
IF ~GlobalLT("Chapter","GLOBAL",3)~ THEN REPLY @17 GOTO SarahIntro3-1-2
IF ~Global("Wainwrightjob","GLOBAL",1)~ THEN REPLY @18 GOTO SarahIntro3-1-3
IF ~~ THEN REPLY @19 GOTO SarahIntro3-1-3

CHAIN
IF ~~ THEN K#Sarah SarahIntro3-1-1
@20
= @21
END

IF ~~THEN REPLY @22 
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @23 GOTO SarahIntro3-1-1-1

CHAIN 
IF ~~ THEN K#Sarah SarahIntro3-1-1-1
@24
= @25
DO ~EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~
EXIT

CHAIN
IF ~~ THEN K#Sarah SarahIntro3-1-2
@26
= @27
END

IF ~~THEN REPLY @22
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @23 GOTO SarahIntro3-1-2-1

CHAIN 
IF ~~ THEN K#Sarah SarahIntro3-1-2-1
@24
= @25
DO ~EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~
EXIT

CHAIN
IF ~~ THEN K#Sarah SarahIntro3-1-3
@28
= @29
END

IF ~~THEN REPLY @22 
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
IF ~~ THEN REPLY @23 GOTO SarahIntro1-1-3-1

CHAIN 
IF ~~ THEN K#Sarah SarahIntro3-1-3-1
@24
= @25
DO ~EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~
EXIT

//Fourth Response

CHAIN
IF ~~ THEN K#Sarah SarahIntro4
@38
= @39
= @40
DO ~EscapeArea()~
EXIT

//SecondMeeting

CHAIN
IF ~NumTimesTalkedToGT(0)Global("K#SarahJoined","LOCALS",0)~ THEN K#Sarah SecondMeeting
@41
END

IF ~~ THEN REPLY @42 GOTO SecondMeeting1
IF ~~ THEN REPLY @43 GOTO SecondMeeting2

CHAIN
IF ~~ THEN K#Sarah SecondMeeting1
@44
DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~
EXIT

CHAIN
IF ~~ THEN K#Sarah SecondMeeting2
@45
EXIT

//Parting Dialogue

BEGIN K#SarahP

IF ~Global("K#SarahJoined","LOCALS",1)Global("K#SarahRomanceActive","GLOBAL",2)~ THEN BEGIN KickOut2
SAY @46
IF ~~ THEN REPLY @47 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @48 GOTO Goodbye
END


IF ~Global("K#SarahJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY @49
IF ~~ THEN REPLY @47 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @48 GOTO Goodbye
END


IF ~~ THEN BEGIN Goodbye
SAY @50
IF ~~ THEN REPLY @51 DO ~SetGlobal("K#SarahJoined","LOCALS",0)EscapeArea()MoveBetweenAreas("AR1105",[686.497],1)~ EXIT
IF ~~ THEN REPLY @52 GOTO StayHere
END

IF ~~ THEN BEGIN StayHere
SAY @53
IF ~~ THEN REPLY @54 DO ~SetGlobal("K#SarahJoined","LOCALS",0)~ EXIT
END


IF ~NumTimesTalkedToGT(0)Global("K#SarahJoined","LOCALS",0)~ THEN BEGIN Rejoin
SAY @41
IF ~~ THEN REPLY @42 GOTO ComeBack
IF ~~ THEN REPLY @43 GOTO NoComeBack
END

IF ~~ THEN BEGIN ComeBack
SAY @44
IF ~~ THEN REPLY @55 DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
END


IF ~~ THEN BEGIN NoComeBack
SAY @45
IF ~~ THEN REPLY @56 EXIT
END