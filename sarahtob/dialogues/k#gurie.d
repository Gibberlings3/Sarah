BEGIN K#GURIE


CHAIN
IF ~Global("K#SarahQuest","GLOBAL",0)Global("K#GurienTalk","GLOBAL",0)~
THEN K#Gurie GurienTalk
@0
= @1
== K#SarahJ @2
== K#Gurie @3
=  @4
= @5
= @6
= @7
== K#SarahJ @8
== K#Gurie @9
= @10
== K#SarahJ @11
== K#Gurie @12
= @13
= @14
DO ~SetGlobal("K#GurienTalk","GLOBAL",1)SetGlobal("K#SarahQuest","GLOBAL",1)MoveBetweenAreas("AR0704",[517.683],1)~
EXIT



CHAIN
IF ~NumTimesTalkedTo(1)
InParty("K#Sarah")
!PartyHasItem("K#Cure")
!Global("K#SarahQuest","GLOBAL",3)~
THEN K#Gurie SecondTime
@15
= @16
EXIT




CHAIN
IF ~Global("K#SarahQuest","GLOBAL",3)PartyHasItem("k#Cure")Global("K#GurienTalk","GLOBAL",1)~
THEN K#Gurie GurienTalk2
@15
= @17
== K#SarahJ @18
== K#Gurie @19
== K#SarahJ @20
== K#Gurie @21
== K#SarahJ @22
== K#Gurie @23
= @24
DO ~SetGlobal("K#GurienTalk","GLOBAL",2)SetGlobal("K#SarahQuest","GLOBAL",4)TakePartyItem("k#cure")EscapeArea()~
EXIT









