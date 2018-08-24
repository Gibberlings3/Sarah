BEGIN K#Sar25P

//Parting Dialogue



IF ~Global("K#SarahJoined","LOCALS",1)Global("K#SarahRomanceActive","GLOBAL",2)~ THEN BEGIN KickOut2
SAY @0
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @2 GOTO Goodbye
END


IF ~Global("K#SarahJoined","LOCALS",1)~ THEN BEGIN KickOut
SAY @3
IF ~~ THEN REPLY @1 DO ~JoinParty()~ EXIT
IF ~~ THEN REPLY @2 GOTO Goodbye
END


IF ~~ THEN BEGIN Goodbye
SAY @4
IF ~!AreaCheck("AR4500")
!AreaCheck("AR4000")
!AreaCheck("AR6200")~ THEN REPLY @5 DO ~SetGlobal("K#SarahJoined","LOCALS",0)CreateVisualEffectObject("SPDIMNDR",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1705.1170],12)~ EXIT
IF ~~ THEN REPLY @6 GOTO StayHere
END

IF ~~ THEN BEGIN StayHere
SAY @7
IF ~~ THEN REPLY @8 DO ~SetGlobal("K#SarahJoined","LOCALS",0)~ EXIT
END


IF ~NumTimesTalkedToGT(0)Global("K#SarahJoined","LOCALS",0)~ THEN BEGIN Rejoin
SAY @9
IF ~~ THEN REPLY @10 GOTO ComeBack
IF ~~ THEN REPLY @11 GOTO NoComeBack
END

IF ~~ THEN BEGIN ComeBack
SAY @12
IF ~~ THEN REPLY @13 DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT
END


IF ~~ THEN BEGIN NoComeBack
SAY @14
IF ~~ THEN REPLY @15 EXIT
END