BEGIN K#ANNA1


CHAIN
IF ~Global("K#SarahToBQuest","GLOBAL",0)
Global("K#AnnaToBTalk","GLOBAL",0)~
THEN K#Anna1 AT1
@0
DO ~SetGlobal("K#AnnaToBTalk","GLOBAL",1)SetGlobal("K#SarahToBQuest","GLOBAL",1)~
== K#SAR25J @1
== K#ANNA1 @2
= @3
== K#SAR25J @4
== K#ANNA1 @5
= @6
== K#SAR25J @7
== K#ANNA1 @8
== K#SAR25J @9
== K#ANNA1 @10
END

++ @11 EXTERN K#Sar25J AT1-1
++ @12 EXTERN K#Sar25J AT1-1
++ @13 EXTERN K#Sar25J AT1-1

CHAIN
IF ~~ THEN K#SAR25J AT1-1
@14
== K#ANNA1 @15
== K#SAR25J @16
== K#ANNA1 @17
== K#SAR25J @18
= @19
= @20
== K#ANNA1 @21
= @22
= @23
= @24
== K#SAR25J @25
END

++ @26 EXTERN K#Sar25J AT1-1-1
++ @27 EXTERN K#Sar25J AT1-1-1
++ @28 EXTERN K#Sar25J AT1-1-1

CHAIN
IF ~~ THEN K#SAR25J AT1-1-1
@29
= @30
= @31
== K#ANNA1 @32
== K#SAR25J @33
= @34
= @35
== K#ANNA1 @36
DO ~SetGlobal("K#SarahToBQuest","GLOBAL",2)~
EXIT