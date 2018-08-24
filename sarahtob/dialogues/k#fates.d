EXTEND_TOP FATESP 6
IF ~!Dead("K#Sarah")
!InMyArea("K#Sarah")
Gender(Player1,FEMALE)
!Alignment(Player1, MASK_EVIL)
OR(3)Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF)
Global("K#SarahSummonedLove","GLOBAL",0)~ THEN REPLY @0 DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("K#SARAH1",[1999.1228],1)
SetGlobal("K#SarahRomanceActive","GLOBAL",2)
SetGlobal("K#SarahSummonedLove","GLOBAL",1)
SetGlobal("K#SarahLovetalkToB","GLOBAL",1)~ GOTO 8
END




EXTEND_TOP FATESP 6
+ ~!Dead("K#Sarah")
!InMyArea("K#Sarah")
!Alignment(Player1, MASK_EVIL)
Global("K#SarahSummoned","GLOBAL",0)~ + @1 DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2)
CreateCreature("K#SARAH1",[1999.1228],1)
SetGlobal("K#SarahSummoned","GLOBAL",1)
SetGlobal("K#SarahFriendshipActive","GLOBAL",1)
SetGlobal("K#SarahBanterToB","GLOBAL",1)~ GOTO 8
END

