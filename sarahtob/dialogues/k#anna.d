BEGIN K#ANNA


CHAIN
IF ~InParty("K#Sarah")
Global("K#SarahQuest","GLOBAL",2)
Global("K#AnnaTalk","GLOBAL",0)~
THEN K#Anna AT1
@0
DO ~SetGlobal("K#AnnaTalk","GLOBAL",1)SetGlobal("K#SarahQuest","GLOBAL",3)~
== K#SarahJ @1
== K#Anna @2
= @3
== K#SarahJ @4
== K#Anna @5
= @6
== K#SarahJ @7
== K#Anna @8
== K#SarahJ @9
== K#Anna @10
== K#SarahJ @11
== K#Anna @12
= @13
= @14
== K#SarahJ @15
== K#Anna @16
= @17
= @18
= @19
= @20
= @21
= @22
= @23
= @24
= @25
== K#SarahJ @26
= @27
== K#Anna @28
= @29
== K#SarahJ @30
== K#Anna @31
= @32
== K#SarahJ @33
== K#Anna @34
DO ~GiveItemCreate("k#cure","K#Sarah",0,0,0)EscapeArea()~
== K#SarahJ @35
EXIT