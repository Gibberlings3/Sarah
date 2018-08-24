BEGIN K#SarahB


/* Three pre-friendship talks */



// "You Are The Bhaalspawn"
CHAIN
IF 
~Global("K#SarahPreTalk","GLOBAL", 2)~
THEN K#SarahB PreTalk1
@0
DO ~SetGlobal("K#SarahPreTalk","GLOBAL",3) RealSetGlobalTimer("K#SarahTimerPre","GLOBAL",900)~
END
IF ~~ THEN REPLY @1 GOTO PreTalk1-1
IF ~~ THEN REPLY @2 GOTO PreTalk1-2

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1
@3
= @4
END
IF ~~ THEN REPLY @5 GOTO PreTalk1-1-1
IF ~~ THEN REPLY @6 GOTO PreTalk1-1-2
IF ~~ THEN REPLY @7 GOTO EndPreTalk1

CHAIN
IF ~~ THEN K#SarahB PreTalk1-2
@8
END
IF ~~ THEN REPLY @5 GOTO PreTalk1-1-1
IF ~~ THEN REPLY @6 GOTO PreTalk1-1-2
IF ~~ THEN REPLY @7 GOTO EndPreTalk1

CHAIN
IF ~~ THEN K#SarahB EndPreTalk1
@9
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1-1
@10
= @11
END
IF ~~ THEN REPLY @12 GOTO PreTalk1-1-1-1
IF ~~ THEN REPLY @13 GOTO PreTalk1-1-1-2
IF ~~ THEN REPLY @14 GOTO EndPreTalk1

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1-1-1
@15
= @16
= @17
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1-1-2
@18
= @19
= @20
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1-2
@21
= @22
= @11
END
IF ~~ THEN REPLY @12 GOTO PreTalk1-1-2-1
IF ~~ THEN REPLY @13 GOTO PreTalk1-1-2-2
IF ~~ THEN REPLY @14 GOTO EndPreTalk1

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1-2-1
@15
= @16
= @17
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk1-1-2-2
@18
= @23
= @20
EXIT

// "Tell Me About Your Childhood"
CHAIN
IF ~Global("K#SarahPreTalk","GLOBAL", 4)~
THEN K#SarahB PreTalk2
@24
= @25
DO ~SetGlobal("K#SarahPreTalk","GLOBAL",5) RealSetGlobalTimer("K#SarahTimerPre","GLOBAL",1800)~
END
IF ~~ THEN REPLY @26 GOTO PreTalk2-1
IF ~~ THEN REPLY @27 GOTO EndPreTalk2
IF ~~ THEN REPLY @28 GOTO EndPreTalk2Angry

CHAIN
IF ~~ THEN K#SarahB EndPreTalk2
@29
EXIT

CHAIN
IF ~~ THEN K#SarahB EndPreTalk2Angry
@30
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk2-1
@31
= @32
= @33
END
IF ~~ THEN REPLY @34 GOTO PreTalk2-1-1
IF ~~ THEN REPLY @35 GOTO PreTalk2-1-2
IF ~~ THEN REPLY @36 GOTO EndPreTalk2

CHAIN 
IF ~~ THEN K#SarahB PreTalk2-1-1
@37
= @38
= @39
= @40
= @41
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk2-1-2
@42
= @43
= @44
= @45
= @46
= @47
= @48
= @49
EXIT

// "Gorion"
CHAIN
IF ~Global("K#SarahPreTalk","GLOBAL", 6)~
THEN K#SarahB PreTalk3
@50
DO ~SetGlobal("K#SarahPreTalk","GLOBAL",7)~
END
IF ~~ THEN REPLY @51 GOTO PreTalk3-1
IF ~~ THEN REPLY @52 GOTO PreTalk3-1
IF ~~ THEN REPLY @53 GOTO EndPreTalk3

CHAIN
IF ~~ THEN K#SarahB EndPreTalk3
@54
= @55
EXIT

CHAIN
IF ~~ THEN K#SarahB PreTalk3-1
@56
= @57
= @58
END
IF ~~ THEN REPLY @59 GOTO PreTalk3-1-1     //Will activate Friendship
IF ~~ THEN REPLY @60 GOTO PreTalk3-1-1   //Will activiate Friendship
IF ~~ THEN REPLY @61 GOTO EndPreTalk3
IF ~~ THEN REPLY @62 GOTO EndPreTalk3Angry

CHAIN
IF ~~ THEN K#SarahB EndPreTalk3Angry
@63
= @689
EXIT

CHAIN 
IF ~~ THEN K#SarahB PreTalk3-1-1
@64
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",1) SetGlobal("K#SarahTalkFriend","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @65
= @66
END
IF ~~ THEN REPLY @67 GOTO PreTalk3-1-1-1
IF ~~ THEN REPLY @68 GOTO PreTalk3-1-1-1

CHAIN 
IF ~~ THEN K#SarahB PreTalk3-1-1-1
@69
= @70
= @71
= @72
= @73
EXIT



/* Seven friendship talks */



//"Stop Looking So Damn Serious!"
CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 2)~
THEN K#SarahB SF1
@74
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",3) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
END
IF ~~ THEN REPLY @75 GOTO SF1-1
IF ~~ THEN REPLY @76 GOTO SF1-1
IF ~~ THEN REPLY @77 GOTO EndSF1

CHAIN 
IF ~~ THEN K#SarahB EndSF1
@78
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SF1-1
@79
= @80
END
IF ~~ THEN REPLY @81 GOTO SF1-1-1
IF ~~ THEN REPLY @82 GOTO EndSF1Other

CHAIN
IF ~~ THEN K#SarahB EndSF1Other
@83
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
= @84
EXIT

CHAIN
IF ~~ THEN K#SarahB SF1-1-1
@85
= @86
END

IF ~~ THEN REPLY @87 GOTO SF1-1-1-1
IF ~~ THEN REPLY @88 GOTO SF1-1-1-2

CHAIN 
IF ~~ THEN K#SarahB SF1-1-1-1
@89
= @90
= @91
EXIT

CHAIN
IF ~~ THEN K#SarahB SF1-1-1-2
@92
= @93
EXIT

//"Hey...you're ticklish!"
CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 4)~
THEN K#SarahB SF2
@94
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",5) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @95
END
IF ~~ THEN REPLY @96 GOTO SF2-1
IF ~~ THEN REPLY @97 GOTO SF2-2
IF ~~ THEN REPLY @98 GOTO SF2End

CHAIN
IF ~~ THEN K#SarahB SF2End
@99
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SF2-2
@100
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
= @101
= @102
EXIT

CHAIN
IF ~~ THEN K#SarahB SF2-1
@103
END
IF ~~ THEN REPLY @104 GOTO SF2-1-1

CHAIN
IF ~~ THEN K#SarahB SF2-1-1
@105
= @106
= @107
= @108
= @109
EXIT

// "My mother...."
CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 6)~
THEN K#SarahB SF3
@110
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",7) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
END
+ ~Gender(Player1,FEMALE) ReputationGT(Player1,12) OR(3) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @111 GOTO SF3-1
+ ~Gender(Player1,FEMALE) ReputationLT(Player1,13) OR(3) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF)~ + @111 GOTO SF3-2
+ ~Gender(Player1,FEMALE) !Race(Player1,HUMAN) !Race(Player1,ELF) !Race(Player1,HALF_ELF)~ + @111 GOTO SF3-2
+ ~Gender(Player1,MALE)~ + @111 GOTO SF3-2
++ @112 GOTO SF3End
CHAIN
IF ~~ THEN K#SarahB SF3End
@113
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SF3-1
@114
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",1) SetGlobal("K#SarahTalkRomance","GLOBAL",1) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
= @115
= @116
= @117
= @118
= @119
END

IF ~~ THEN REPLY @120 GOTO SF3-1-1  //YES
IF ~~ THEN REPLY @121 GOTO SF3-1-2     //YES
IF ~~ THEN REPLY @122 GOTO SF3-1-3    //FRIEND
IF ~~ THEN REPLY @123 GOTO SF3-1-4   //FRIEND

CHAIN
IF ~~ THEN K#SarahB SF3-1-1
@124
= @125
= @126
= @127
END

IF ~~ THEN REPLY @128 GOTO SF3-1-1-1
IF ~~ THEN REPLY @129 GOTO SF3-1-1-1

CHAIN
IF ~~ THEN K#SarahB SF3-1-1-1
@130
= @131
= @132
= @133
EXIT

CHAIN
IF ~~ THEN K#SarahB SF3-1-2
@130
= @131
= @132
= @133
EXIT

CHAIN
IF ~~ THEN K#SarahB SF3-1-3
@134
= @135
= @136
EXIT

CHAIN
IF ~~ THEN K#SarahB SF3-1-4
@124
= @137
= @138
= @139
= @140
EXIT

CHAIN
IF ~~ THEN K#SarahB SF3-2
@114
= @115
= @116
= @117
= @118
= @119
END

IF ~~ THEN REPLY @122 GOTO SF3-2-1    //FRIEND
IF ~~ THEN REPLY @123 GOTO SF3-2-2   //FRIEND

CHAIN
IF ~~ THEN K#SarahB SF3-2-1
@134
= @135
= @136
EXIT

CHAIN
IF ~~ THEN K#SarahB SF3-2-2
@124
= @137
= @138
= @139
= @140
EXIT

// "How I became a ranger"
CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 8)~
THEN K#SarahB SF4
@141
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",9) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @142
END
IF ~~ THEN REPLY @143 GOTO SF4-1
IF ~~ THEN REPLY @144 GOTO SF4-2
IF ~~ THEN REPLY @145 GOTO SF4-3
IF ~~ THEN REPLY @146 GOTO EndSF4Angry

CHAIN
IF ~~ THEN K#SarahB SF4-1
@147
END
IF ~~ THEN REPLY @148 GOTO SF4-1-1
IF ~~ THEN REPLY @149 GOTO SF4-1-2

CHAIN
IF ~~ THEN K#SarahB SF4-1-1
@150
= @151
= @152
END

IF ~~ THEN REPLY @153 GOTO SF4-1-1-1

CHAIN
IF ~~ THEN K#SarahB SF4-1-1-1
@154
= @155
= @156
= @157
= @158
= @159
= @160
= @161
EXIT

CHAIN
IF ~~ THEN K#SarahB SF4-1-2
@162
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SF4-2
@163
= @164
EXIT

CHAIN 
IF ~~ THEN K#SarahB SF4-3
@163
= @165
= @166
EXIT

CHAIN
IF ~~ THEN K#SarahB EndSF4Angry
@167
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
= @168
EXIT

// "Post Spellhold"

CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 10)~
THEN K#SarahB SFSpell
@169
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",11) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @170
= @171
= @172
END
+~InParty("Imoen2")~+ @173 GOTO SFSpell1
++ @174 GOTO SFSpell1
++ @175 GOTO SFSpell2
++ @176 GOTO SFSpell3
++ @177 GOTO EndSFSpellAngry

CHAIN
IF ~~ THEN K#SarahB SFSpell1
@178
= @179
= @180
EXIT

CHAIN
IF ~~ THEN K#SarahB SFSpell2
@181
= @182
= @183
= @184
EXIT

CHAIN
IF ~~ THEN K#SarahB SFSpell3
@185
= @186
EXIT

CHAIN
IF ~~ THEN K#SarahB EndSFSpellAngry
@187
= @188
EXIT

// "Post UD"

CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 12)~
THEN K#SarahB SFUD
@189
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",13) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @190
END
++ @191 GOTO SFUD1
++ @192 GOTO SFUD2
++ @193 GOTO SFUD2

CHAIN
IF ~~ THEN K#SarahB SFUD1
@194
= @195
= @196
END
++ @197 GOTO SFUD1-1
++ @198 GOTO SFUD1-2

CHAIN
IF ~~ THEN K#SarahB SFUD1-1
@199
= @200
EXIT

CHAIN
IF ~~ THEN K#SarahB SFUD1-2
@201
= @202
EXIT

CHAIN
IF ~~ THEN K#SarahB SFUD2
@203
= @204
EXIT

// My scars

CHAIN
IF ~Global("K#SarahTalkFriend","GLOBAL", 14)~
THEN K#SarahB SFScar
@205
DO ~SetGlobal("K#SarahTalkFriend","GLOBAL",15)~
END
++ @206 GOTO SFScar1
++ @207 GOTO SFScar2
++ @208 GOTO SFScar3


CHAIN
IF ~~ THEN K#SarahB SFScar2
@209
EXIT

CHAIN
IF ~~ THEN K#SarahB SFScar3
@210
EXIT

CHAIN
IF ~~ THEN K#SarahB SFScar1
@211
= @212
END
++ @213 GOTO SFScar1-1
++ @214 GOTO SFScar1-2
++ @215 GOTO SFScar1-1
++ @216 GOTO SFScar1-2

CHAIN
IF ~~ THEN K#SarahB SFScar1-1
@217
= @218
EXIT

CHAIN
IF ~~ THEN K#SarahB SFScar1-2
@219
= @217
= @218
EXIT

// "Vampires"

CHAIN
IF ~Global("K#SarahSawVamp","GLOBAL",1)~
THEN K#SarahB SFVampire
@220
DO ~SetGlobal("K#SarahSawVamp","GLOBAL",2)~
END
++ @221 GOTO SFVampireFocused
++ @222 GOTO SFVampireFocused
++ @223 GOTO EndSFVampire
++ @224 GOTO SFVampireFocused

CHAIN
IF ~~ THEN K#SarahB EndSFVampire
@225
EXIT

CHAIN
IF ~~ THEN K#SarahB SFVampireFocused
@226
END
++ @227 GOTO SFVampireVampires

CHAIN
IF ~~ THEN K#SarahB SFVampireVampires
@228
= @229
= @230
= @231
EXIT



/* romance talks */



//"My father..."

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 2)~
THEN K#SarahB SLT1
@232
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",3) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
END
++ @233 GOTO  SLT1-1
++ @223 GOTO EndSLT1

CHAIN
IF ~~ THEN K#SarahB EndSLT1
@234
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT1-1
@235
= @236
= @237
END
++ @238 GOTO SLT1-1-1
++ @239 GOTO SLT1-1-2
++ @240 GOTO EndSLT1Angry

CHAIN 
IF ~~ THEN K#SarahB EndSLT1Angry
@241
= @242
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea()~
EXIT //leaves

CHAIN
IF ~~ THEN K#SarahB SLT1-1-2
@243 
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",1) SetGlobal("K#SarahRomanceActive","GLOBAL",3) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT1-1-1
@244
= @245
= @246
= @247
= @248 
END
++ @249 GOTO SLT1-1-1-1
++ @250 GOTO SLT1-1-1-2
++ @251 GOTO SLT1-1-1-3

CHAIN
IF ~~ THEN K#SarahB SLT1-1-1-1
@252
= @253
= @254
= @255
= @256
= @257
= @258
= @259
= @260
= @261
EXIT


CHAIN
IF ~~ THEN K#SarahB SLT1-1-1-2
@262
= @253
= @254
= @255
= @256
= @257
= @258
= @259
= @260
= @261
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT1-1-1-3
@263
= @264
= @254
= @255
= @256
= @257
= @258
= @259
= @260
= @261
EXIT 

// "My father...cont"

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 4)~
THEN K#SarahB SLT2
@265
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",5) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
= @266
END
++ @267 GOTO SLT2-1
++ @268 GOTO SLT2-2
++ @269 GOTO EndSLT2Angry

CHAIN
IF ~~ THEN K#SarahB EndSLT2Angry
@270
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3)~
= @271
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT2-2
@272
END
++ @273 GOTO EndSLT2
++ @274 GOTO SLT2-1

CHAIN
IF ~~ THEN K#SarahB EndSLT2
@275
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT2-1
@276
= @277
= @278
= @279
= @280
= @281
= @282
= @283
END
++ @284 GOTO SLT2-1-1
++ @285 GOTO EndSLT2Angry2

CHAIN
IF ~~ THEN K#SarahB EndSLT2Angry2
@286
= @287
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() EscapeArea()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT2-1-1
@288
= @289
= @290
= @291
= @292
= @293
= @294
= @295
= @296
= @297
EXIT



// "Admission"
CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 6)~
THEN K#SarahB SLT4
@298
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",7) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
END
++ @299 + SLT4-1
++ @300 + SLT4-1
++ @301 + EndSLT4Angry // ENDS ROMANCE
++ @302 + EndSLT4 // ENDS ROMANCE

CHAIN
IF ~~ THEN K#SarahB EndSLT4
@303
DO ~SetGlobal("K#SarahFriendshipActive","GLOBAL",1) SetGlobal("K#SarahRomanceActive","GLOBAL",3) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB EndSLT4Angry
@304
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT4-1
@305
= @306
= @307
= @230
= @308
END
++ @309 GOTO SLT4-1-1
++ @310 GOTO SLT4-1-2

CHAIN
IF ~~ THEN K#SarahB SLT4-1-2
@311
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT4-1-1
@312
= @313
= @314
= @315
= @316
END
++ @317 GOTO SLT4-1-1-1
++ @318 GOTO SLT4-1-1-2
++ @319 GOTO STOPSLT4

CHAIN
IF ~~ THEN K#SarahB SLT4-1-1-1
@320
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @321
= @322
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT4-1-1-2
@323
= @324
= @325
END
++ @326 GOTO SLT4Hand
++ @327 GOTO SLT4Hug

CHAIN
IF ~~ THEN K#SarahB SLT4Hand
@328
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",2)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT4Hug
@329
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",2)~
EXIT

CHAIN
IF ~~ THEN K#SarahB STOPSLT4
@330
= @331
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea()~
EXIT

// "The kiss"

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL",8)~
THEN K#SarahB SLT5
@332
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",9) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
END
++ @333 + SLT5-1
++ @334 + EndSLT5

CHAIN 
IF ~~ THEN K#SarahB EndSLT5
@335
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT5-1
@336
= @337
= @338
END
++ @339 GOTO SLT5-1-1
++ @340 GOTO SLT5-1-2

CHAIN
IF ~~ THEN K#SarahB SLT5-1-2
@341
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1)SetGlobal("K#SarahNoFlirt","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @342
= @343
= @344
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT5-1-1
@345
= @346
= @347
END
++ @348 GOTO SLT5-1-1-1
++ @349 GOTO SLT5-1-1-2

CHAIN
IF ~~ THEN K#SarahB SLT5-1-1-1
@350
= @351
= @352
= @353
END
++ @354 GOTO SLT5Kiss
++ @355 GOTO SLT5-1-1-1-2
++ @356 GOTO SLT5-1-1-1-3

CHAIN 
IF ~~ THEN K#SarahB SLT5-1-1-2
@357
= @350
= @351
= @352
= @353
END
++ @354 GOTO SLT5Kiss
++ @355 GOTO SLT5-1-1-1-2
++ @356 GOTO SLT5-1-1-1-3

CHAIN
IF ~~ THEN K#SarahB SLT5-1-1-1-3
@358
= @690
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT5-1-1-1-2
@359
= @360
= @361
END
++ @362 GOTO SLT5Kiss
++ @363 GOTO SLT5NoKiss

CHAIN
IF ~~ THEN K#SarahB SLT5NoKiss
@364
= @365
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT5Kiss
@366
= @367
= @368
END
++ @369 GOTO SLT5YesKiss
++ @370 GOTO SLT5-1-2
++ @371 GOTO SLT5BadKiss

CHAIN
IF ~~ THEN K#SarahB SLT5BadKiss
@372
= @373
= @374
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT5YesKiss
@375
= @376
= @377
EXIT


// "Your eyes"

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 10)~
THEN K#SarahB SLT6
@378
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",11) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
END
++ @379 GOTO SLT6-1
++ @380 GOTO SLT6-1
++ @381 GOTO SLT6-3
++ @382 GOTO SLTBreakup


CHAIN
IF ~~ THEN K#SarahB SLTBreakup
@341
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1)SetGlobal("K#SarahNoFlirt","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @342
= @343
= @344
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT6-1
@383
= @384
= @385
= @386
END
++ @387 GOTO SLT6-1-1
++ @388 GOTO SLT6-1-2

CHAIN
IF ~~ THEN K#SarahB SLT6-3
@389
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT6-1-1
@390
= @391
= @392
END
++ @393 GOTO SLT6Kiss
++ @394 GOTO SLT6More
++ @395 GOTO SLT6Kiss

CHAIN
IF ~~ THEN K#SarahB SLT6-1-2
@390
= @396
= @397
END
++ @393 GOTO SLT6Kiss
++ @394 GOTO SLT6More
++ @395 GOTO SLT6Kiss

CHAIN
IF ~~ THEN K#SarahB SLT6Kiss
@398
= @399
= @400
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT6More
@401
= @402
= @403
EXIT


// Are we okay?

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 12)~
THEN K#SarahB SLT7
@404
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",13) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
= @405
END
++ @406 GOTO SLT7-1
++ @407 GOTO SLT7-1
++ @408 GOTO SLT7End
++ @409 GOTO EndSLT7Angry         

CHAIN
IF ~~ THEN K#SarahB EndSLT7Angry
@410
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
= @411
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT7End
@412
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT7-1
@413
END
++ @414 GOTO SLT7-1-1

CHAIN
IF ~~ THEN K#SarahB SLT7-1-1
@415
= @416
END
++ @417 GOTO SLT7Yes1
++ @418 GOTO SLT7Yes1
++ @419 GOTO SLTBreakup

CHAIN
IF ~~ THEN K#SarahB SLT7Yes1
@420
= @421
= @422
= @423
EXIT

// "How I became a ranger"
CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 14)~
THEN K#SarahB SLT8
@141
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",15) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
= @142
END
IF ~~ THEN REPLY @143 GOTO SLT8-1
IF ~~ THEN REPLY @144 GOTO SLT8-2
IF ~~ THEN REPLY @145 GOTO SLT8-3
IF ~~ THEN REPLY @146 GOTO EndSLT8Angry

CHAIN
IF ~~ THEN K#SarahB SLT8-1
@147
END
IF ~~ THEN REPLY @148 GOTO SLT8-1-1
IF ~~ THEN REPLY @149 GOTO SLT8-1-2

CHAIN
IF ~~ THEN K#SarahB SLT8-1-1
@150
= @151
= @152
END

IF ~~ THEN REPLY @153 GOTO SLT8-1-1-1

CHAIN
IF ~~ THEN K#SarahB SLT8-1-1-1
@154
= @155
= @156
= @157
= @158
= @159
= @160
= @161
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT8-1-2
@162
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT8-2
@163
= @164
EXIT

CHAIN 
IF ~~ THEN K#SarahB SLT8-3
@163
= @165
= @166
EXIT

CHAIN
IF ~~ THEN K#SarahB EndSLT8Angry
@167
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
= @168
EXIT

// I like the forest

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL", 16)~
THEN K#SarahB SLT9
@424
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",17) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
= @425
END
++ @426 GOTO SLT9-1
++ @427 GOTO SLT9-2
++ @428 GOTO SLT9-3
++ @382 GOTO SLTBreakup

CHAIN
IF ~~ THEN K#SarahB SLT9-1
@429
= @430
= @431
= @432
END
++ @433 GOTO SLT9Cheek
++ @434 GOTO SLT9Kiss
++ @435 GOTO SLT9Hand
++ @436 GOTO SLT9Weird

CHAIN
IF ~~ THEN K#SarahB SLT9-2
@437
= @438
= @439
= @431
= @432
END
++ @433 GOTO SLT9Cheek
++ @434 GOTO SLT9Kiss
++ @435 GOTO SLT9Hand
++ @436 GOTO SLT9Weird

CHAIN
IF ~~ THEN K#SarahB SLT9-3
@440
= @441
= @442
= @443
= @439
= @431
= @432
END
++ @433 GOTO SLT9Cheek
++ @434 GOTO SLT9Kiss
++ @435 GOTO SLT9Hand
++ @436 GOTO SLT9Weird

CHAIN
IF ~~ THEN K#SarahB SLT9Cheek
@444
= @445
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT9Kiss
@446
= @447
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT9Hand
@448
= @449
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT9Weird
@450
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
= @451
EXIT



// My scars

CHAIN
IF ~Global("K#SarahTalkRomance","GLOBAL",18)~
THEN K#SarahB SLT11
@205
DO ~SetGlobal("K#SarahTalkRomance","GLOBAL",19) RealSetGlobalTimer("K#SarahTimerRomance","GLOBAL",1800)~
END
++ @206 GOTO SLT11-1
++ @207 GOTO SLT11-2
++ @208 GOTO SLT11-3
++ @382 GOTO SLTBreakup

CHAIN
IF ~~ THEN K#SarahB SLT11-2
@209
= @230
= @452
= @453
= @454
= @455
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT11-3
@210
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT11-1
@211
= @212
END
++ @213 GOTO SLT11-1-1
++ @214 GOTO SLT11-1-2
++ @215 GOTO SLT11-1-1
++ @216 GOTO SLT11-1-2

CHAIN
IF ~~ THEN K#SarahB SLT11-1-1
@217
= @218
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT11-1-2
@219
= @217
= @218
EXIT


// Steamy

CHAIN
IF ~Global("K#SarahSteamyLovetalk","GLOBAL",1)~
THEN K#SarahB SLT12
@456
DO ~SetGlobal("K#SarahSteamyLovetalk","GLOBAL",2)~
= @457
END
++ @458 GOTO SLT12-1
++ @459 GOTO SLT12-1
++ @460 GOTO SLT12-2
++ @461 GOTO EndSLT12

CHAIN
IF ~~ THEN K#SarahB EndSLT12
@462
= @463
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT12-2
@464
= @465
END
++ @466 GOTO EndSLT12
++ @467 GOTO SLT12-1
++ @468 GOTO SLT12-2-2
++ @469 GOTO SLT12-2-3

CHAIN
IF ~~ THEN K#SarahB SLT12-2-2
@470
= @471
= @472
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea() RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT12-2-3
@473
= @474
END
++ @475 GOTO SLT12-1
++ @476 GOTO SLT12Angry

CHAIN
IF ~~ THEN K#SarahB SLT12Angry
@477
= @478
= @479
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea() RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT12-1
@480
= @481
= @482
= @483
END
++ @362 GOTO SLT12Kiss
++ @484 GOTO SLT12Sleep

CHAIN
IF ~~ THEN K#SarahB SLT12Sleep
@485
= @486
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT12Kiss
@487
= @488
= @489
= @490
= @491
DO ~RestParty()~
EXIT

// Post Quest...

CHAIN
IF ~Global("K#SarahSexLovetalk","GLOBAL",1)~ THEN K#SarahB SLT13
@492
DO ~SetGlobal("K#SarahSexLovetalk","GLOBAL",2)~
= @493
= @494
END
++ @458 GOTO SLT13Tent
++ @495 GOTO SLT13Sleep
++ @496 GOTO SLT13Angry

CHAIN
IF ~~ THEN K#SarahB SLT13Angry
@497
= @498
= @499
= @500
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT13Sleep
@501
= @498
= @502
= @500
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT13Tent
@503
= @504
= @505
END
++ @506 GOTO SLT13Welcome
++ @507 GOTO SLT13Welcome
++ @508 GOTO SLT13Angry

CHAIN
IF ~~ THEN K#SarahB SLT13Welcome
@509
= @510
= @511
= @512
= @513
END
++ @514 GOTO SLT13YesSex
++ @515 GOTO SLT13YesSex
++ @516 GOTO SLT13NoSex
++ @517 GOTO SLT13Pissed

CHAIN
IF ~~ THEN K#SarahB SLT13Pissed
@518
= @519
= @520
= @521
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea() RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT13NoSex
@522
= @523
= @524
= @525
DO ~SetGlobal("K#SarahNoSex","GLOBAL",1) RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT13YesSex
@526
= @527
= @528
END
++ @529 GOTO SLT13Sex2
++ @530 GOTO SLT13Pissed

CHAIN
IF ~~ THEN K#SarahB SLT13Sex2
@531
= @532
DO ~RestParty()~
EXIT



// post-quest morning-after lovetalk

CHAIN
IF ~Global("K#SarahSexLovetalk","GLOBAL",3)~
THEN K#SarahB SLT14
@533
DO ~SetGlobal("K#SarahSexLovetalk","GLOBAL",4) RealSetGlobalTimer("SarahRingTimer","GLOBAL",1800)~
= @534
= @535
= @536
= @537
= @538
END
++ @539 GOTO SLT14Yes
++ @540 GOTO SLT14Yes
++ @541 GOTO SLT14Friends
++ @542 GOTO SLT14Bad
++ @543 GOTO SLT14Bad
++ @544 GOTO SLT14ReallyBad

CHAIN
IF ~~ THEN K#SarahB SLT14Friends
@545
= @546
= @547
= @548
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT14Bad
@545
= @549
= @550
= @551
= @552
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",1) RealSetGlobalTimer("K#SarahTimerFriend","GLOBAL",1800)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT14ReallyBad
@553
= @554
= @555
= @556
= @479
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea() RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT14Yes
@557
= @558
= @559
= @560
DO ~SetGlobal("K#SarahSleepTalk","GLOBAL",1)~
EXIT



// post-quest post-morning after: talk about the ring

CHAIN
IF ~Global("K#SarahSexLovetalk","GLOBAL",5)~
THEN K#SarahB SLT15
@561
DO ~SetGlobal("K#SarahSexLovetalk","GLOBAL",6)~
= @562
= @563
END
++ @564 GOTO SLT15-1
++ @565 GOTO SLT15-2
++ @566 GOTO SLT15-3

CHAIN
IF ~~ THEN K#SarahB SLT15-3
@567
= @568
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3) SetGlobal("K#SarahJoined","LOCALS",0) LeaveParty() DropInventory() EscapeArea() RestParty()~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT15-2
@569
= @570
= @571
DO ~SetGlobal("K#SarahRomanceActive","GLOBAL",3) SetGlobal("K#SarahFriendshipActive","GLOBAL",3)~
EXIT

CHAIN
IF ~~ THEN K#SarahB SLT15-1
@572
= @573
= @574
= @575
END
++ @576 GOTO SLT15Love
++ @577 GOTO SLT15Love
++ @578 GOTO SLT14Friends

CHAIN
IF ~~ THEN K#SarahB SLT15Love
@579
= @691
EXIT




// NPC BANTERS


//Mazzy

CHAIN
IF ~InParty("K#Sarah")
InParty("Mazzy")
!ActuallyInCombat()
AreaCheck("AR1401")
AreaCheck("AR1402")
Global("K#SMazzyBanter","GLOBAL",0)~
THEN K#SarahB SMazzy1
@580
DO ~SetGlobal("K#SMazzyBanter","GLOBAL",1)~
== BMAZZY @581
== K#SarahB @582
== BMAZZY @583
== K#SarahB @584
== BMAZZY @585
== K#SarahB @586
== BMAZZY @587
== K#SarahB @588
== BMAZZY @589
EXIT

CHAIN
IF ~InParty("K#Sarah")
InParty("Mazzy")
!ActuallyInCombat()
AreaType(FOREST)
Global("K#SMazzyBanter","GLOBAL",1)~
THEN K#SarahB SMazzy2
@590
DO ~SetGlobal("K#SMazzyBanter","GLOBAL",2)~
== BMAZZY @591
== K#SarahB @592
== BMAZZY @593
== K#SarahB @594
== BMAZZY @595
== K#SarahB @596
== BMAZZY @597
== K#SarahB @598
EXIT

// Aerie

CHAIN
IF ~InParty("K#Sarah")
InParty("Aerie")
!ActuallyInCombat()
Global("K#SAerieBanter","GLOBAL",0)~
THEN K#SarahB SAerie1
@599
DO ~SetGlobal("K#SAerieBanter","GLOBAL",1)~
== BAERIE @600
== K#SarahB @601
== K#SarahB @602
== K#SarahB @603
== BAERIE @604
== K#SarahB @605
EXIT

CHAIN
IF ~InParty("K#Sarah")
InParty("Aerie")
!ActuallyInCombat()
Global("K#SAerieBanter","GLOBAL",1)~
THEN K#SarahB SAerie2
@606
DO ~SetGlobal("K#SAerieBanter","GLOBAL",2)~
== BAERIE @607
== K#SarahB @608
== BAERIE @609
== K#SarahB @610
== BAERIE @611
EXIT

// Jaheira

CHAIN
IF ~InParty("K#Sarah")
InParty("jaheira")
!ActuallyInCombat()
Global("K#SJaheiraBanter","GLOBAL",0)~
THEN K#SarahB SJaheira1
@612
DO ~SetGlobal("K#SJaheiraBanter","GLOBAL",1)~
== BJAHEIR @613
== K#SarahB @614
== BJAHEIR @615
== K#SarahB @616
== BJAHEIR @617
== K#SarahB @618
== BJAHEIR @619
EXIT

CHAIN
IF ~InParty("K#Sarah")
InParty("jaheira")
!ActuallyInCombat()
Global("K#SJaheiraBanter","GLOBAL",1)~
THEN K#SarahB SJaheira2
@620
DO ~SetGlobal("K#SJaheiraBanter","GLOBAL",2)~
== BJAHEIR @621
== K#SarahB @622
EXIT

// Anomen

CHAIN
IF ~InParty("K#Sarah")
InParty("Anomen")
!ActuallyInCombat()
Global("K#SAnomenBanter","GLOBAL",0)~
THEN K#SarahB SAnomen1
@623
DO ~SetGlobal("K#SAnomenBanter","GLOBAL",1)~
== BANOMEN @624
= @625
== K#SarahB @626
== BANOMEN @627
== K#SarahB @628
== BANOMEN @629
= @630
== K#SarahB @631
== BANOMEN @632
EXIT

//  Imoen

CHAIN
IF ~InParty("K#Sarah")
InParty("Imoen2")
!ActuallyInCombat()
Global("K#SImoenBanter","GLOBAL",0)~
THEN K#SarahB SImoen1
@633
DO ~SetGlobal("K#SImoenBanter","GLOBAL",1)~
== BIMOEN2 @634
== K#SarahB @635
== BIMOEN2 @636
== K#SarahB @637
== BIMOEN2 @638
EXIT


// Jan

CHAIN
IF ~InParty("K#Sarah")
InParty("Jan")
!ActuallyInCombat()
Global("K#SJanBanter","GLOBAL",0)~
THEN K#SarahB SJan1
@639
DO ~SetGlobal("K#SJanBanter","GLOBAL",1)~
== BJAN @640
== K#SarahB @641
== BJAN @642
= @643
== K#SarahB @644
= @645
== BJAN @646
== K#SarahB @647
== BJAN @648
== K#SarahB @649
== BJAN @650
== K#SarahB @651
EXIT

// Valygar

CHAIN
IF ~InParty("K#Sarah")
InParty("Valygar")
!ActuallyInCombat()
Global("K#SVaBanter","GLOBAL",0)~
THEN K#SarahB SVa1
@652
DO ~SetGlobal("K#SVaBanter","GLOBAL",1)~
== BVALYGA @653
== K#SarahB @654
== BVALYGA @655
== K#SarahB @656
== BVALYGA @657
== K#SarahB @96
EXIT

// Keldorn

CHAIN
IF ~InParty("K#Sarah")
InParty("Keldorn")
AreaType(FOREST)
!ActuallyInCombat()
Global("K#SKelBanter","GLOBAL",0)~
THEN K#SarahB SKel1
@658
DO ~SetGlobal("K#SKelBanter","GLOBAL",1)~
== BKELDOR @659
== K#SarahB @660
== BKELDOR @661
== K#SarahB @662
== BKELDOR @663
== K#SarahB @664
EXIT

// Yoshimo

CHAIN
IF ~InParty("K#Sarah")
InParty("Yoshimo")
!ActuallyInCombat()
Global("K#SYosBanter","GLOBAL",0)~
THEN K#SarahB SYos1
@665
DO ~SetGlobal("K#SYosBanter","GLOBAL",1)~
== BYOSHIM @666
= @667
== K#SarahB @668
== BYOSHIM @669
== K#SarahB @670
== BYOSHIM @671
== K#SarahB @672
== BYOSHIM @673
== K#SarahB @674
EXIT


// Viconia

CHAIN
IF ~InParty("K#Sarah")
InParty("Viconia")
!ActuallyInCombat()
Global("K#SVicBanter","GLOBAL",0)~
THEN K#SarahB SVic1
@675
DO ~SetGlobal("K#SVicBanter","GLOBAL",1)~ 
== BVICONI @676
== K#SarahB @677
== BVICONI @678
== K#SarahB @679
== BVICONI @680
== K#SarahB @681
EXIT

// Minsc

CHAIN
IF ~InParty("K#Sarah")
InParty("Minsc")
!ActuallyInCombat()
Global("K#SMisBanter","GLOBAL",0)~
THEN K#SarahB SMis1
@682
DO ~SetGlobal("K#SMisBanter","GLOBAL",1)~
== BMINSC @683
== K#SarahB @684
== BMINSC @685
= @686
== K#SarahB @687
== BMINSC @688
EXIT


