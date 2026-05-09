BEGIN K#Sar25J

// Volo
EXTEND_TOP SARVOLO 9 #16
  + ~InParty("K#Sarah")~ + @0 + K#Volo1
END

APPEND ~SARVOLO~
  IF ~~ K#Volo1
    SAY  @1
    IF ~~ EXTERN K#Sar25J K#Volo2
  END
END

APPEND ~K#Sar25J~
  IF ~~ K#Volo2
    SAY @2
    = @3
    IF ~~ EXTERN SARVOLO 9
  END
END

//Wraith

EXTEND_BOTTOM HGWRA01 18
IF ~Global("K#SarahRomanceActive","GLOBAL",2) InParty("K#Sarah") See("K#Sarah")~ DO ~SetGlobal("K#SarahLovedOne","GLOBAL",1)~ EXTERN HGWRA01 SarahWraith
END

APPEND ~HGWRA01~
IF ~~ THEN BEGIN SarahWraith
SAY @4
IF ~~ EXTERN K#Sar25J K#Wraith
END
END


APPEND ~K#Sar25J~
IF ~~   K#Wraith
SAY@5
IF ~~ EXTERN HGWRA01 24
END
END

EXTEND_BOTTOM HGWRA01 24
IF ~Global("K#SarahRomanceActive","GLOBAL",2)~
DO ~ClearAllActions() StartCutSceneMode() StartCutScene("K#LOVES")~ EXIT
END






// Interjections


INTERJECT_COPY_TRANS GORDEMO 1 sarademo1
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@6
END

INTERJECT_COPY_TRANS HGNYA01 6 saranylaee
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@7
END


//1

INTERJECT_COPY_TRANS2 ABAZIGAL 0 saraabazigal1
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@8
END

//2


INTERJECT_COPY_TRANS2 GROMG01 1 sarahsaradushentrance
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@9
END


//5

INTERJECT_COPY_TRANS FINMEL01 0 sarahAmely
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@10
END

INTERJECT_COPY_TRANS SOLAR 17 sarahsolar1
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@11
END

INTERJECT_COPY_TRANS SOLAR 27 sarahsolar2
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@12
END

INTERJECT_COPY_TRANS SOLAR 61 sarahsolar3
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@13
END

INTERJECT_COPY_TRANS MELISS01 1 sarahmeliss1
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@14
END



INTERJECT_COPY_TRANS MELISS01 11 sarahmeliss2
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@15
END


//8

INTERJECT_COPY_TRANS FINSOL01 27 sarahendgame1
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")Global("K#SarahFriendshipActive","GLOBAL",1)~ THEN
@16
= @17
= @18
= @19
END

//9

INTERJECT_COPY_TRANS FINSOL01 27 sarahendgame2
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah") Global("K#SarahRomanceActive","GLOBAL",2)~ THEN
@20
= @21
= @22
= @23
= @24
= @25
END


//10

INTERJECT_COPY_TRANS FINSOL01 32 sarahendgame3
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah") Global("K#SarahFriendshipActive","GLOBAL",1)~ THEN
@26
= @27
END

//11

INTERJECT_COPY_TRANS FINSOL01 32 SarahMortal
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah")Global("K#SarahRomanceActive","GLOBAL",2)~ THEN
@28
= @29
= @30
= @31
= @32
END


/*
CHAIN
IF ~Global("K#SarahEnd","GLOBAL",1)~ THEN K#Sar25J SarahMortalCont
@29
END
++ ~Yes, I am. Do you plan on stopping me?~ + stay1
++ ~Yes...here. I'm staying here with you, Sarah.~ + stay1

CHAIN
IF ~~ THEN K#Sar25J stay1
@30
END
++ ~Sarah, the life I want to live is not an immortal one but with you. My place is here, with you.~ + stay2
++ ~Enough talking. (Kiss her)~ + stay3

CHAIN
IF ~~ THEN K#Sar25J stay2
@31
= @32
EXIT

CHAIN
IF ~~ THEN K#Sar25J stay3
~(She wraps her arms around you tightly and doesn't show signs of letting go.)~
= @32
EXIT
*/

INTERJECT_COPY_TRANS FINSOL01 31 sarahendgame5
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah") Global("K#SarahRomanceActive","GLOBAL",2)~ THEN
@33
= @34
= @35
= @36
END

/*INTERJECT_COPY_TRANS FINSOL01 62 sarahendgame6
== K#Sar25J IF ~InParty("K#Sarah") InMyArea("K#Sarah") Global("SarahRomanceActive","GLOBAL",2)~ THEN
@33
= @34
= @35
= @36
END
*/



//Flirts

CHAIN
IF ~IsGabber(Player1)
!ActuallyInCombat()~
THEN K#Sar25J KFlirt1
@37
= @38
END
++ @39 GOTO K#String
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(2,1)~ + @40 GOTO K#Flirt1.1
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(2,2)~ + @40 GOTO K#Flirt1.2

+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(4,1)~ + @41 GOTO K#Flirt1.4
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(4,2)~ + @41 GOTO K#Flirt1.5
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(4,3)~ + @41 GOTO K#Flirt1.6
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(4,4)~ + @42 GOTO K#Flirt1.16

+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(3,1)~ + @43 GOTO K#Flirt1.7
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(3,2)~ + @43 GOTO K#Flirt1.8
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,3)~ + @44 GOTO K#Flirt1.17

+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(2,1)~ + @45 GOTO K#Flirt1.9
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(2,2)~ + @45 GOTO K#Flirt1.10

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,1)~ + @46 GOTO K#Flirt1.25
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(3,2)~ + @46 GOTO K#Flirt1.11
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(3,3)~ + @46 GOTO K#Flirt1.12

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,1)~ + @47 GOTO K#Flirt1.13
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(3,2)~ + @47 GOTO K#Flirt1.14
+ ~Global("K#SarahNoFlirt","GLOBAL",0)RandomNum(3,3)~ + @47 GOTO K#Flirt1.15

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,1)~ + @48 GOTO K#Flirt1.18
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,2)~ + @48 GOTO K#Flirt1.19
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,3)~ + @48 GOTO K#Flirt1.20

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,1)~ + @49 GOTO K#Flirt1.21
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,2)~ + @49 GOTO K#Flirt1.22

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,1)~ + @50 GOTO K#Flirt1.23
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,2)~ + @50 GOTO K#Flirt1.24
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(3,3)~ + @50 GOTO K#Flirt1.26

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,1)~ + @51 GOTO K#Flirt1.27
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,2)~ + @51 GOTO K#Flirt1.28

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,1)~ + @52 GOTO K#Flirt1.29
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,2)~ + @52 GOTO K#Flirt1.30

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,1)~ + @53 GOTO K#Flirt1.32
+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)RandomNum(2,2)~ + @53 GOTO K#Flirt1.33

+ ~!AreaType(FOREST)Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)~ + @54 GOTO K#Flirt1.31

+ ~AreaType(FOREST)TimeOfDay(NIGHT)RandomNum(2,1)Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)~ + @54 GOTO K#Flirt1.34
+ ~AreaType(FOREST)TimeOfDay(NIGHT)RandomNum(2,2)Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)~ + @54 GOTO K#Flirt1.35

+ ~Global("K#SarahNoFlirt","GLOBAL",0)Global("K#SarahRomanceActive","GLOBAL",2)~ + @55 GOTO SLTJBreakup

++ @56 GOTO  K#Flirt1.3

CHAIN
IF ~~ THEN K#Sar25J K#String
@57
DO
"SetName(@58)
SetPlayerSound(Myself,@59,MORALE)
SetPlayerSound(Myself,@60,HAPPY)
SetPlayerSound(Myself,@61,UNHAPPY_ANNOYED)
SetPlayerSound(Myself,@62,UNHAPPY_SERIOUS)
SetPlayerSound(Myself,@63,LEADER)
SetPlayerSound(Myself,@64,TIRED)
SetPlayerSound(Myself,@65,BORED)
SetPlayerSound(Myself,@66,BATTLE_CRY1)
SetPlayerSound(Myself,@67,BATTLE_CRY2)
SetPlayerSound(Myself,@68,BATTLE_CRY3)
SetPlayerSound(Myself,@69,BATTLE_CRY4)
SetPlayerSound(Myself,@70,DAMAGE)
SetPlayerSound(Myself,@71,DYING)
SetPlayerSound(Myself,@72,HURT)
SetPlayerSound(Myself,@73,AREA_FOREST)
SetPlayerSound(Myself,@74,AREA_CITY)
SetPlayerSound(Myself,@75,AREA_DUNGEON)
SetPlayerSound(Myself,@76,AREA_DAY)
SetPlayerSound(Myself,@77,AREA_NIGHT)
SetPlayerSound(Myself,@78,SELECT_COMMON1)
SetPlayerSound(Myself,@79,SELECT_COMMON2)
SetPlayerSound(Myself,@80,SELECT_COMMON3)
SetPlayerSound(Myself,@81,SELECT_COMMON4)
SetPlayerSound(Myself,@82,SELECT_COMMON5)
SetPlayerSound(Myself,@83,SELECT_COMMON6)
SetPlayerSound(Myself,@84,SELECT_ACTION1)
SetPlayerSound(Myself,@85,SELECT_ACTION2)
SetPlayerSound(Myself,@86,SELECT_ACTION3)
SetPlayerSound(Myself,@87,SELECT_ACTION4)
SetPlayerSound(Myself,@88,SELECT_ACTION5)
SetPlayerSound(Myself,@89,SELECT_ACTION6)
SetPlayerSound(Myself,@90,SELECT_ACTION7)
SetPlayerSound(Myself,@91,SELECT_RARE1)
SetPlayerSound(Myself,@92,SELECT_RARE2)
SetPlayerSound(Myself,@93,CRITICAL_HIT)
SetPlayerSound(Myself,@94,CRITICAL_MISS)
SetPlayerSound(Myself,@95,TARGET_IMMUNE)
SetPlayerSound(Myself,@96,INVENTORY_FULL)"
EXIT


CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.1
@97
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.2
@98
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.3
@99
EXIT


CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.4
@100
= @101
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.5
@100
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.6
@102
= @103
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.7
@104
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.8
@105
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.9
@106
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.10
@107
= @108
EXIT



CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.11
@109
= @110
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.12
@111
= @112
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.13
@113
= @114
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.14
@115
= @116
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.15
@117
= @118
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.16
@119
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.17
@119
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.19
@120
= @121
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.18
@122
= @123
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.20
@124
= @125
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.22
@126
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.21
@127
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.23
@128
= @129
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.24
@130
= @131
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.25
@132
= @133
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.26
@134
= @135
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.27
@136
= @137
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.28
@138
= @139
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.29
@140
= @141
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.30
@142
= @143
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.31
@144
= @145
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.32
@146
= @147
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.33
@148
= @149
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.34
@144
= @150
DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN K#Sar25J K#Flirt1.35
@151
= @152
= @153
= @154
DO ~RestParty()~
EXIT


CHAIN
IF ~~ THEN K#Sar25J SLTJBreakup
@155
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1)RealSetGlobalTimer("K#SarahToBFriend","GLOBAL",1500)~
= @156
= @157
= @158
EXIT

CHAIN
IF ~ReputationLT(Player1,3)
Global("K#Repxcomplain","LOCALS",0)~
THEN K#Sar25J BadRep
@159
DO ~SetGlobal("K#Repxcomplain","LOCALS",1)SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~
EXIT