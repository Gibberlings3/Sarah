BEGIN K#Sar25B

// Friendship Talks: 3 of them

// Choices

CHAIN
IF ~Global("K#SarahBanterToB","GLOBAL", 2)~
THEN K#Sar25B SF1
@0
DO ~SetGlobal("K#SarahBanterToB","GLOBAL",3) RealSetGlobalTimer("K#SarahToBFriend","GLOBAL",1800)~
END

++ @1 + SF1-1
++ @2 + SF1-1
++ @3 + SF1-2
++ @4 + SF1-3

CHAIN
IF ~~ THEN K#Sar25B SF1-1
@5
= @6
END

++ @7 + SF1-1-1
++ @8 + SF1-1-1
++ @9 + SF1-1-2
++ @10 + SF1-3

CHAIN
IF ~~ THEN K#Sar25B SF1-1-1
@11
= @12
= @13
= @14
= @15
= @16
= @17
= @18
EXIT

CHAIN
IF ~~ THEN K#Sar25B SF1-1-2
@19 EXTERN K#Sar25B SF1-1-1


CHAIN
IF ~~ THEN K#Sar25B SF1-2
@20
EXIT

CHAIN
IF ~~ THEN K#Sar25B SF1-3
@21
= @22
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

// Write a letter


CHAIN
IF ~Global("K#SarahBanterToB","GLOBAL", 4)~
THEN K#Sar25B SF2
@23
DO ~SetGlobal("K#SarahBanterToB","GLOBAL",5) RealSetGlobalTimer("K#SarahToBFriend","GLOBAL",1800)~
END

++ @24 + SF2-1
++ @25 + SF2-2
++ @26 + SF2-3

CHAIN
IF ~~ THEN K#Sar25B SF2-1
@27
= @28
END

++ @29 + SF2-1-1
++ @30 + SF2-1-2
++ @31 + SF2-2

CHAIN
IF ~~ THEN K#Sar25B SF2-2
@32
= @33
= @34
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea()~
EXIT

CHAIN
IF ~~ THEN K#Sar25B SF2-3
@35
EXIT

CHAIN
IF ~~ THEN K#Sar25B SF2-1-1
@36
= @37
= @38
END

++ @39 + SF2Write
++ @40 + SF2-2

CHAIN
IF ~~ THEN K#Sar25B SF2-1-2
@41
= @38
END

++ @39 + SF2Write
++ @40 + SF2-2

CHAIN
IF ~~ THEN K#Sar25B SF2Write
@42
= @43
= @44
= @45
= @46
= @47
= @48
EXIT

// A promise


CHAIN
IF ~Global("K#SarahBanterToB","GLOBAL", 6)~
THEN K#Sar25B SF3
@49
DO ~SetGlobal("K#SarahBanterToB","GLOBAL",7) RealSetGlobalTimer("K#SarahToBFriend","GLOBAL",1800)~
END

++ @50 + SF3-1
++ @51 + SF3-1
++ @52 + SF3-2
++ @53 + SF3-3

CHAIN
IF ~~ THEN K#Sar25B SF3-3
@54
= @55
= @56
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#Sar25B SF3-2
@57 EXTERN K#Sar25B SF3-1

CHAIN
IF ~~ THEN K#Sar25B SF3-1
@58
= @59
= @60
END

++ @61 + SF3-1-1
++ @62 + SF3-1-2
++ @63 + SF3-1-3

CHAIN
IF ~~ THEN K#Sar25B SF3-1-3
@64
= @65 EXTERN K#Sar25B SF3-1-1

CHAIN
IF ~~ THEN K#Sar25B SF3-1-2
@66
= @67
= @68 EXTERN K#Sar25B SF3-1-1

CHAIN
IF ~~ THEN K#Sar25B SF3-1-1
@69
= @70
= @71
= @72
EXIT

// Love Talks: 6 of them

// Worried

CHAIN
IF ~Global("K#SarahLovetalkToB","GLOBAL", 2)~
THEN K#Sar25B SLT1
@73
DO ~SetGlobal("K#SarahLovetalkToB","GLOBAL",3) RealSetGlobalTimer("K#SarahToBLove","GLOBAL",1800)~
= @74
= @75
END

++ @76 + SLT1-1
++ @77 + SLT1-2
++ @78 + SLT1-1
++ @79 + SLT1-3

CHAIN
IF ~~ THEN K#Sar25B SLT1-3
@80
= @34
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea()~
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT1-2
@81 EXTERN K#Sar25B SLT1-1

CHAIN
IF ~~ THEN K#Sar25B SLT1-1
@82
= @83
= @84
END

++ @85 + SLT1-1-1
++ @86 + SLT1-1-1
++ @87 + SLT1-3

CHAIN
IF ~~ THEN K#Sar25B SLT1-1-1
@88
= @89
= @90
= @91
= @92
= @93
= @94
END

++ @95 + SLT1-1-1-1
++ @96 + SLT1-1-1-2
++ @97 + SLT1-3

CHAIN
IF ~~ THEN K#Sar25B SLT1-1-1-1
@98
= @99
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT1-1-1-2
@100
= @99
EXIT


// Famous

CHAIN
IF ~Global("K#SarahLovetalkToB","GLOBAL", 4)~
THEN K#Sar25B SLT2
@101
DO ~SetGlobal("K#SarahLovetalkToB","GLOBAL",5) RealSetGlobalTimer("K#SarahToBLove","GLOBAL",1800)~
END

++ @102 + SLT2-1
++ @103 + SLT2-2
++ @104 + SLT2-1
++ @105 + SLT2-3

CHAIN
IF ~~ THEN K#Sar25B SLT2-3
@106
= @107
= @108
= @109
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3)SetGlobal("K#SarahFriendshipActive","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT2-2
@110
= @111
= @112
= @113
= @114
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT2-1
@115
= @116
= @117
END

++ @118 + SLT2-1-1
++ @119 + SLT2-1-1
++ @120 + SLT2-1-1

CHAIN
IF ~~ THEN K#Sar25B SLT2-1-1
@121
= @122
EXIT



CHAIN
IF ~Global("K#SarahLovetalkToB","GLOBAL", 6)~
THEN K#Sar25B SLT3
@123
DO ~SetGlobal("K#SarahLovetalkToB","GLOBAL",7) RealSetGlobalTimer("K#SarahToBLove","GLOBAL",1800)~
= @124
END

++ @125 + SLT3-1
++ @126 + SLT3-1
++ @127 EXTERN K#Sar25B SLT1-3
++ @128 + SLT3-2
++ @129 + SLT3-3

CHAIN
IF ~~ THEN K#Sar25B SLT3-2
@130
= @131
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT3-3
@132
= @133
= @134
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3)SetGlobal("K#SarahFriendshipActive","GLOBAL",1)~
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT3-1
@135
= @136
= @137
= @138
END

++ @139 + SLT3-1-1
++ @140 + SLT3-1-2
++ @141 + SLT3-1-3

CHAIN
IF ~~ THEN K#Sar25B SLT3-1-1
@142
= @143
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT3-1-2
@144
= @145
EXIT

CHAIN
IF ~~ THEN K#Sar25B SLT3-1-3
@146
= @244
EXIT


CHAIN
IF ~Global("K#SarahLovetalkToB","GLOBAL", 8)~
THEN K#Sar25B SLT4
@147
DO ~SetGlobal("K#SarahLovetalkToB","GLOBAL",9) RealSetGlobalTimer("K#SarahToBLove","GLOBAL",1800)~
END

++ @148 + SLT4-1
++ @149 + SLT4-1
++ @150 + SLT4-1
++ @129 EXTERN K#Sar25B SLT3-3
++ @151 EXTERN K#Sar25B SLT1-3

CHAIN
IF ~~ THEN K#Sar25B SLT4-1
@152
= @153
= @154
= @155
= @156
= @157
END

++ @158 + SLT4-1-1
++ @159 + SLT4-1-2
++ @160 + SLT4-1-1
++ @161 EXTERN K#Sar25B SLT3-3

CHAIN
IF ~~ THEN K#Sar25B SLT4-1-2
@162 EXTERN K#Sar25B SLT4-1-1


CHAIN
IF ~~ THEN K#Sar25B SLT4-1-1
@163
= @164
= @165
EXIT

// Last Talk

CHAIN
IF ~Global("K#SarahLovetalkToB","GLOBAL", 10)~
THEN K#Sar25B SLT5
@166
DO ~SetGlobal("K#SarahLovetalkToB","GLOBAL",11) RealSetGlobalTimer("K#SarahToBLove","GLOBAL",1800)~
= @167
= @168
= @169
END

++ @170 + SLT5-1
++ @1 + SLT5-1
++ @171 + SLT5-1

CHAIN
IF ~~ THEN K#Sar25B SLT5-1
@172
= @173
= @174
= @175
= @176
= @177
END

++ @178 + SLT5-1-1
++ @179 + SLT5-1-1

CHAIN
IF ~~ THEN K#Sar25B SLT5-1-1
@180
= @181
= @182
= @183
= @184
= @185
END

++ @186 + SLT5-1-1-1
++ @187 + SLT5-1-1-1
++ @188 EXTERN K#Sar25B SLT3-3

CHAIN
IF ~~ THEN K#Sar25B SLT5-1-1-1
@189
= @190
= @191
END

++ @192 + SLT5ToBEnd
++ @193 + SLT5ToBEnd

CHAIN
IF ~~ THEN K#Sar25B SLT5ToBEnd
@194
= @195
= @196
EXIT



// After Quest

CHAIN
IF ~Global("K#SarahToBQuestComplete","GLOBAL",1)~
THEN K#Sar25B AfterQuest
@197
DO ~SetGlobal("K#SarahToBQuestComplete", "GLOBAL",2)~
= @198
= @199
END

++ @200 + AfterQuest1
++ @179 + AfterQuest1

CHAIN
IF ~~ THEN K#Sar25B AfterQuest1
@201
= @202
EXIT

// UltraSurfboard Talk
CHAIN
IF ~Global("K#UltraSurfboard","GLOBAL",1)~
THEN K#Sar25B US
@203
DO ~SetGlobal("K#UltraSurfboard","GLOBAL",2)~
= @204
END
++ @205 + US1
++ @26 + US2

CHAIN
IF ~~ THEN K#Sar25B US2
@206
DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN K#Sar25B US1
@207
= @208
END
++ @209 + US1-1
++ @210 + US1-1
++ @211 + US1-1

CHAIN
IF ~~ THEN K#Sar25B US1-1
@212
= @213
END
++ @214 + US1-1-1
++ @215 + US1-1-1
++ @216 + US1-1-1

CHAIN
IF ~~ THEN K#Sar25B US1-1-1
@217
= @218
= @219
END
++ @220 + US1-1-1-1
++ @221 + US1-1-1-1

CHAIN
IF ~~ THEN K#Sar25B US1-1-1-1
@222
= @223
= @224
END
++ @225 + US1-1-1-1-1
++ @226 + US1-1-1-1-1

CHAIN
IF ~~ THEN K#Sar25B US1-1-1-1-1
@227
= @228
= @229
= @230
= @231
= @232
= @233
= @234
END
++ @235 + YesUltra
++ @236 + YesUltra
++ @237 + NoUltra

CHAIN
IF ~~ THEN K#Sar25B YesUltra
@238
= @239
DO ~RestParty()~
EXIT

CHAIN
IF ~~ THEN K#Sar25B NoUltra
@240
= @241
= @242
= @243
DO ~RestParty()~
EXIT