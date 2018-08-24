// Auren

CHAIN
IF ~InParty("K#Sarah")
InParty("K#Auren")
InParty("Nalia")
GlobalGT("K#BanterO","GLOBAL",11)
!ActuallyInCombat()
Global("K#SAurBanter","GLOBAL",0)~
THEN K#SarahB SAur1
@0
DO ~SetGlobal("K#SAurBanter","GLOBAL",1)~ 
== K#AurenB @1
== K#SarahB @2
== K#AurenB @3
== K#SarahB @4
== BNALIA @5
== K#AurenB @6
== K#SarahB @7
== BNALIA @8
== K#AurenB @9
== K#SarahB @10
== BNALIA @11
== K#SarahB @12
== K#AurenB @13
== BNALIA @14
== K#AurenB @15
== BNALIA @16
== K#SarahB @17
== K#AurenB @18
== BNALIA @19
EXIT