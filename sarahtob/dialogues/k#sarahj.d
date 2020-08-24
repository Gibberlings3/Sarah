BEGIN K#SarahJ

// Death

CHAIN
IF ~Global("K#SarahDead","GLOBAL",1)~
THEN K#SarahJ DeadSarah
@0
DO ~SetGlobal("K#SarahDead","GLOBAL",2)~
= @1
= @2
= @3
EXIT

// Quest Response

CHAIN
IF ~Global("K#SarahQuest","GLOBAL",1)Global("K#SarahQuestWait","GLOBAL",0)Global("K#SarahQuestTalk","GLOBAL",0)~
THEN K#SarahJ SQ1
@4
DO ~SetGlobal("K#SarahQuestTalk","GLOBAL",1)~
= @5
= @6
END
++ @7 GOTO SQ1-1
++ @8 GOTO SQ1-2

CHAIN
IF ~~ THEN K#SarahJ SQ1-2
@9
= @10
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3)SetGlobal("K#SarahFriendshipActive","GLOBAL",2)SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~
EXIT

CHAIN
IF ~~ THEN K#SarahJ SQ1-1
@11
= @12
= @13
DO ~SetGlobal("K#SarahQuest","GLOBAL",2)SetGlobal("K#SarahQuestWait","GLOBAL",1)SetGlobalTimer("K#SarahQuestWaitTimer","GLOBAL",SEVEN_DAYS)~
EXIT

CHAIN
IF ~Global("K#GurienTalk","GLOBAL",2)
InParty("K#Sarah")Global("K#SarahQuest","GLOBAL",4)Global("K#SarahQuestTalk","GLOBAL",1)~
THEN K#SarahJ SQ2
@14
= @15
= @16
DO ~SetGlobal("K#SarahQuest","GLOBAL",5)SetGlobal("K#SarahQuestWait","GLOBAL",2)SetGlobal("K#SarahQuestTalk","GLOBAL",2)SetGlobal("K#SarahQuestComplete","GLOBAL",1)~
EXIT

// Flirts

CHAIN
IF ~IsGabber(Player1)
Global("Chapter","GLOBAL",%bg2_chapter_5%)~
THEN K#SarahJ UDFlirt
@17
= @18
END
++ @19 GOTO K#String
++ @20 GOTO FlirtNothing

CHAIN
IF ~~ THEN K#SarahJ FlirtNothing
@21
EXIT


CHAIN
IF ~IsGabber(Player1)
!Global("Chapter","GLOBAL",%bg2_chapter_5%)~
THEN K#SarahJ KFlirt1
@22
= @23
END
++ @19 GOTO K#String
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)RandomNum(2,1)~ + @24 GOTO K#Flirt1.1
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)RandomNum(2,2)~ + @24 GOTO K#Flirt1.2

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(4,1)~ + @25 GOTO K#Flirt1.4
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(4,2)~ + @25 GOTO K#Flirt1.5
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(4,3)~ + @25 GOTO K#Flirt1.6
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",2)RandomNum(4,4)~ + @26 GOTO K#Flirt1.16

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(3,1)~ + @27 GOTO K#Flirt1.7
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(3,2)~ + @27 GOTO K#Flirt1.8
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",2)RandomNum(3,3)~ + @28 GOTO K#Flirt1.17

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(2,1)~ + @29 GOTO K#Flirt1.9
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",1)RandomNum(2,2)~ + @29 GOTO K#Flirt1.10

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",9)RandomNum(3,1)~ + @30 GOTO K#Flirt1.25
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",3)RandomNum(3,2)~ + @30 GOTO K#Flirt1.11
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",3)RandomNum(3,3)~ + @30 GOTO K#Flirt1.12

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",2)RandomNum(3,1)~ + @31 GOTO K#Flirt1.13
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",5)RandomNum(3,2)~ + @31 GOTO K#Flirt1.14
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkFriend","GLOBAL",5)RandomNum(3,3)~ + @31 GOTO K#Flirt1.15

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",9)RandomNum(3,1)~ + @32 GOTO K#Flirt1.18
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",9)RandomNum(3,2)~ + @32 GOTO K#Flirt1.19
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",9)RandomNum(3,3)~ + @32 GOTO K#Flirt1.20

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",2)RandomNum(2,1)~ + @33 GOTO K#Flirt1.21
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",2)RandomNum(2,2)~ + @33 GOTO K#Flirt1.22

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",13)RandomNum(3,1)~ + @34 GOTO K#Flirt1.23
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",13)RandomNum(3,2)~ + @34 GOTO K#Flirt1.24
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",13)RandomNum(3,3)~ + @34 GOTO K#Flirt1.26

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",9)RandomNum(2,1)~ + @35 GOTO K#Flirt1.27
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",9)RandomNum(2,2)~ + @35 GOTO K#Flirt1.28

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahSeparateLovetalk","GLOBAL",7)RandomNum(2,1)~ + @36 GOTO K#Flirt1.29
+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahSeparateLovetalk","GLOBAL",7)RandomNum(2,2)~ + @36 GOTO K#Flirt1.30

+ ~Global("K#SarahNoFlirt","GLOBAL",0)AreaType(FOREST)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahSeparateLovetalk","GLOBAL",1)RandomNum(2,1)~ + @37 GOTO K#Flirt1.32
+ ~Global("K#SarahNoFlirt","GLOBAL",0)AreaType(FOREST)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahSeparateLovetalk","GLOBAL",1)RandomNum(2,2)~ + @37 GOTO K#Flirt1.33

+ ~!AreaType(FOREST)Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)Global("K#SarahQuestComplete","GLOBAL",1)~ + @38 GOTO K#Flirt1.31

+ ~!AreaType(FOREST)GlobalGT("K#SarahNoSex","GLOBAL",1)Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)Global("K#SarahQuestComplete","GLOBAL",1)~ + @38 GOTO K#Flirt1.31

+ ~AreaType(FOREST)TimeOfDay(NIGHT)Global("K#SarahNoSex","GLOBAL",1)Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)Global("K#SarahQuestComplete","GLOBAL",1)~ + @38 GOTO K#Flirt1.34

+ ~AreaType(FOREST)TimeOfDay(NIGHT)GlobalGT("K#SarahNoSex","GLOBAL",1)Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)Global("K#SarahQuestComplete","GLOBAL",1)~ + @38 GOTO K#Flirt1.34

+ ~Global("K#SarahNoFlirt","GLOBAL",0)!Global("Chapter","GLOBAL",%bg2_chapter_5%)GlobalGT("K#SarahTalkRomance","GLOBAL",8)~ + @39 GOTO SLTJBreakup

++ @40 GOTO  K#Flirt1.3

CHAIN
IF ~~ THEN K#SarahJ K#String
@41
DO
"SetName(@42)
SetPlayerSound(Myself,@43,MORALE)
SetPlayerSound(Myself,@44,HAPPY)
SetPlayerSound(Myself,@45,UNHAPPY_ANNOYED)
SetPlayerSound(Myself,@46,UNHAPPY_SERIOUS)
SetPlayerSound(Myself,@47,LEADER)
SetPlayerSound(Myself,@48,TIRED)
SetPlayerSound(Myself,@49,BORED)
SetPlayerSound(Myself,@50,BATTLE_CRY1)
SetPlayerSound(Myself,@51,BATTLE_CRY2)
SetPlayerSound(Myself,@52,BATTLE_CRY3)
SetPlayerSound(Myself,@53,BATTLE_CRY4)
SetPlayerSound(Myself,@54,DAMAGE)
SetPlayerSound(Myself,@55,DYING)
SetPlayerSound(Myself,@56,HURT)
SetPlayerSound(Myself,@57,AREA_FOREST)
SetPlayerSound(Myself,@58,AREA_CITY)
SetPlayerSound(Myself,@59,AREA_DUNGEON)
SetPlayerSound(Myself,@60,AREA_DAY)
SetPlayerSound(Myself,@61,AREA_NIGHT)
SetPlayerSound(Myself,@62,SELECT_COMMON1)
SetPlayerSound(Myself,@63,SELECT_COMMON2)
SetPlayerSound(Myself,@64,SELECT_COMMON3)
SetPlayerSound(Myself,@65,SELECT_COMMON4)
SetPlayerSound(Myself,@66,SELECT_COMMON5)
SetPlayerSound(Myself,@67,SELECT_COMMON6)
SetPlayerSound(Myself,@68,SELECT_ACTION1)
SetPlayerSound(Myself,@69,SELECT_ACTION2)
SetPlayerSound(Myself,@70,SELECT_ACTION3)
SetPlayerSound(Myself,@71,SELECT_ACTION4)
SetPlayerSound(Myself,@72,SELECT_ACTION5)
SetPlayerSound(Myself,@73,SELECT_ACTION6)
SetPlayerSound(Myself,@74,SELECT_ACTION7)
SetPlayerSound(Myself,@75,SELECT_RARE1)
SetPlayerSound(Myself,@76,SELECT_RARE2)
SetPlayerSound(Myself,@77,CRITICAL_HIT)
SetPlayerSound(Myself,@78,CRITICAL_MISS)
SetPlayerSound(Myself,@79,TARGET_IMMUNE)
SetPlayerSound(Myself,@80,INVENTORY_FULL)"
EXIT 


CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.1
@81
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.2
@82
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.3
@83
EXIT


CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.4
@84
= @85
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.5
@84
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.6
@86
= @87
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.7
@88
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.8
@89
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.9
@90
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.10
@91
= @92
EXIT



CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.11
@93
= @94
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.12
@95
= @96
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.13
@97
= @98
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.14
@99
= @100
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.15
@101
= @102
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.16
@103
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.17
@103
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.19
@104
= @105
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.18
@106
= @107
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.20
@108
= @109
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.22
@110
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.21
@111
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.23
@112
= @113
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.24
@114
= @115
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.25
@116
= @117
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.26
@118
= @119
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.27
@120
= @121
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.28
@122
= @123
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.29
@124
= @125
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.30
@126
= @127
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.31
@128
= @129
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.32
@130
= @131
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.33
@132
= @133
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.34
@128
= @134
DO ~SetGlobal("K#SarahNoSex","GLOBAL",2)RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahJ K#Flirt1.35
@135
= @136
DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahJ SLTJBreakup
@137
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1)SetGlobal("K#SarahNoFlirt","GLOBAL",1)RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",500)~
= @138
= @139
= @140
EXIT








CHAIN
IF WEIGHT #-1
~Global("K#SarahLeavingAngry","LOCALS",1)~
THEN K#SarahJ TooLong
@141
= @142
= @143
DO ~SetGlobal("K#SarahLeavingAngry","LOCALS",2)
SetGlobal("K#SarahQuestWait","GLOBAL",3)SetGlobal("K#SarahRomanceActive","GLOBAL",3)SetGlobal("K#SarahFriendshipActive","GLOBAL",2)SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~
EXIT





 // Interjections
 
INTERJECT_COPY_TRANS BOANASTE 1 aurencommentvalen
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@144
END


INTERJECT_COPY_TRANS BRAT2 6 sarahcommentbrat2
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@145
END



INTERJECT_COPY_TRANS C6ELF1 0 sarahcommentelf1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@146
END



INTERJECT_COPY_TRANS C6ELHAN2 81 sarahcommentelhan
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@147
END





INTERJECT_COPY_TRANS CSGAAL 0 sarahcommentgaal
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@148
END



INTERJECT_COPY_TRANS YOSHJ 113 sarahcommentyosh
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@149
END



INTERJECT_COPY_TRANS PPIRENI2 62 sarahcommentiren1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@150
END

INTERJECT_COPY_TRANS ARAN 49 sarahcommentaran1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@151
END

INTERJECT_COPY_TRANS ARAN 51 sarahcommentaran2
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@152
END

INTERJECT_COPY_TRANS ARAN 53 sarahcommentaran3
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@153
END

INTERJECT_COPY_TRANS ARAN 4 sarahcommentaran4
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@154
END

INTERJECT_COPY_TRANS ARAN 20 sarahcommentaran5
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@155
END

INTERJECT_COPY_TRANS ARAN 24 sarahcommentaran6
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@156
END


INTERJECT_COPY_TRANS ARAN 85 sarahcommentaran8
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@157
END

INTERJECT_COPY_TRANS BODHI 1 sarahcommentbodhi01
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@158
END

INTERJECT_COPY_TRANS BODHI 125 sarahcommentbodhi2
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@159
END

INTERJECT_COPY_TRANS BODHI 18 sarahcommentbodhi03
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@160
DO ~SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~
END

INTERJECT_COPY_TRANS BODHIAMB 0 sarahcommentbodhi04
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@161
END

INTERJECT_COPY_TRANS BELMIN 0 sarahcommentbelmin
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@162
END


INTERJECT_COPY_TRANS BHEYE 0 sarahcommentbeye
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@163
END

INTERJECT_COPY_TRANS PLAYER1 5 sarahcommentslayer1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@164
= @165
END

INTERJECT_COPY_TRANS PLAYER1 5 sarahcommentslayer2
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")Global("K#SarahRomanceActive","GLOBAL",2)~ THEN
@164
= @165
END

INTERJECT_COPY_TRANS PLAYER1 10 sarahcommentslayer3
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")Global("K#SarahRomanceActive","GLOBAL",2)~ THEN
@166
END

INTERJECT_COPY_TRANS GUARD1 0 sarahcommentguard1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@167
END



INTERJECT_COPY_TRANS HELLJON 8 sarahcommenthelljon1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@168
END 



INTERJECT_COPY_TRANS HELLJON 7 sarahcommenthelljon2
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@168
END 



INTERJECT_COPY_TRANS HELLJON 9 sarahcommenthelljon3
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@168
END 



INTERJECT_COPY_TRANS HELLJON 10 sarahcommenthelljon4
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@168
END



INTERJECT_COPY_TRANS NALIAJ 219 sarahcommentnalia219
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@169
END



INTERJECT_COPY_TRANS PLAYER1 25 sarahcommenthell
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@170
END



INTERJECT_COPY_TRANS TRSKIN02 16 sarahcommentmurder1
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@171
END


INTERJECT_COPY_TRANS TRCUT07 4 sarahcommenttrcut
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@172
END



INTERJECT_COPY_TRANS VICONI 2 sarahcommentvicon
== K#SarahJ IF ~InParty("K#Sarah") InMyArea("K#Sarah")~ THEN
@173
END


INTERJECT PLAYER1 33 TreeofLifeVariableForSarah
== PLAYER1 IF ~IsValidForPartyDialog("K#Sarah")~ THEN @174
END
++ @175 EXTERN K#SarahJ Option1
IF ~Global("K#SarahFriendshipActive","GLOBAL",1)~ THEN REPLY @176 EXTERN K#SarahJ Option2
IF ~Global("K#SarahRomanceActive","GLOBAL",2)~ THEN REPLY @177 EXTERN K#SarahJ Option3
++ @178 EXTERN K#SarahJ Option4
APPEND K#SarahJ
IF ~~ THEN BEGIN Option1
SAY @179
= @180 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option2
SAY @181 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option3
SAY @182
= @183
= @184
= @185
= @186 COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN Option4
SAY @187 COPY_TRANS PLAYER1 33
END
END

CHAIN IF ~!InPartySlot(LastTalkedToBy,0)
Name("K#Sarah",LastTalkedToBy)~ THEN SALVANAS K#SarahSalvanas
@188
= @189
== K#SarahJ @190
== SALVANAS @191
== K#SarahJ @192
== SALVANAS @193
EXIT


CHAIN
IF ~ReputationLT(Player1,3)
Global("K#Repxcomplain","LOCALS",0)~
THEN K#SarahJ BadRep
@194
DO ~SetGlobal("K#Repxcomplain","LOCALS",1)SetGlobal("K#SarahJoined","LOCALS",0)LeaveParty()DropInventory()EscapeArea()~
EXIT






