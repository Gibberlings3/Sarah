BEGIN K#Sara25

// If Friends

CHAIN
IF ~Global("K#SarahHello","GLOBAL",1)
InParty(Player1)
!ActuallyInCombat()~
THEN K#Sara25 SarahGreet1
@0
= @1
END

++ @2 + SarahGreet1-1
++ @3 + SarahGreet1-1

CHAIN
IF ~~ THEN K#Sara25 SarahGreet1-1
@4
= @5
END

++ @6 + SarahGreet1-1-1
++ @7 + SarahGreet1-1-2

CHAIN
IF ~~ THEN K#Sara25 SarahGreet1-1-1
@8
= @9 DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT

CHAIN
IF ~~ THEN K#Sara25 SarahGreet1-1-2
@10
= @9 DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT

//If romancing PC

CHAIN
IF ~Global("K#SarahHelloLove","GLOBAL",1)
InParty(Player1)
!ActuallyInCombat()~
THEN K#Sara25 SarahLoveGreet1
@11
= @12
END

++ @13 + SarahLoveGreet1-1
++ @14 + SarahLoveGreet1-1

CHAIN
IF ~~ THEN K#Sara25 SarahLoveGreet1-1
@15
= @16
= @17
END

++ @18 + LetsGo1
++ @19 + LetsGo2

CHAIN
IF ~~ THEN K#Sara25 LetsGo1
@20
= @21 DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT

CHAIN
IF ~~ THEN K#Sara25 LetsGo2
@22
= @9 DO ~SetGlobal("K#SarahJoined","LOCALS",1)JoinParty()~ EXIT

