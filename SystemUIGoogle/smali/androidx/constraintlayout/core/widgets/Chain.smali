.class public final Landroidx/constraintlayout/core/widgets/Chain;
.super Ljava/lang/Object;
.source "Chain.java"


# direct methods
.method public static applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)V"
        }
    .end annotation

    .line 0
    move-object/from16 v0, p0

    .line 1
    .line 2
    move-object/from16 v10, p1

    .line 3
    .line 4
    move-object/from16 v11, p2

    .line 5
    .line 6
    sget-object v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 7
    .line 8
    const/4 v13, 0x2

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 14
    .line 15
    move v15, v1

    .line 16
    move-object/from16 v16, v2

    .line 17
    .line 18
    const/16 v17, 0x0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 22
    .line 23
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/core/widgets/ChainHead;

    .line 24
    .line 25
    move v15, v1

    .line 26
    move-object/from16 v16, v2

    .line 27
    .line 28
    move/from16 v17, v13

    .line 29
    .line 30
    :goto_0
    const/4 v9, 0x0

    .line 31
    :goto_1
    if-ge v9, v15, :cond_6e

    .line 32
    .line 33
    aget-object v1, v16, v9

    .line 34
    .line 35
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 36
    .line 37
    const/16 v18, 0x0

    .line 38
    .line 39
    const/16 v8, 0x8

    .line 40
    .line 41
    const/4 v4, 0x1

    .line 42
    if-nez v2, :cond_16

    .line 43
    .line 44
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 45
    .line 46
    mul-int/2addr v2, v13

    .line 47
    iget-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 48
    .line 49
    move-object v6, v5

    .line 50
    const/4 v7, 0x0

    .line 51
    :goto_2
    if-nez v7, :cond_11

    .line 52
    .line 53
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 54
    .line 55
    add-int/2addr v14, v4

    .line 56
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 57
    .line 58
    iget-object v14, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 59
    .line 60
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 61
    .line 62
    aput-object v18, v14, v3

    .line 63
    .line 64
    iget-object v14, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 65
    .line 66
    aput-object v18, v14, v3

    .line 67
    .line 68
    iget v14, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 69
    .line 70
    if-eq v14, v8, :cond_c

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eq v3, v12, :cond_1

    .line 77
    .line 78
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 79
    .line 80
    :cond_1
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 81
    .line 82
    aget-object v3, v3, v2

    .line 83
    .line 84
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 85
    .line 86
    .line 87
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 88
    .line 89
    add-int/lit8 v14, v2, 0x1

    .line 90
    .line 91
    aget-object v3, v3, v14

    .line 92
    .line 93
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 94
    .line 95
    .line 96
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 97
    .line 98
    aget-object v3, v3, v2

    .line 99
    .line 100
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 101
    .line 102
    .line 103
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 104
    .line 105
    aget-object v3, v3, v14

    .line 106
    .line 107
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 108
    .line 109
    .line 110
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 111
    .line 112
    if-nez v3, :cond_2

    .line 113
    .line 114
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 115
    .line 116
    :cond_2
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 117
    .line 118
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 119
    .line 120
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 121
    .line 122
    aget-object v3, v3, v14

    .line 123
    .line 124
    if-ne v3, v12, :cond_c

    .line 125
    .line 126
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 127
    .line 128
    aget v8, v8, v14

    .line 129
    .line 130
    const/4 v4, 0x3

    .line 131
    if-eqz v8, :cond_3

    .line 132
    .line 133
    if-eq v8, v4, :cond_3

    .line 134
    .line 135
    if-ne v8, v13, :cond_c

    .line 136
    .line 137
    :cond_3
    iget v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 138
    .line 139
    const/16 v22, 0x1

    .line 140
    .line 141
    add-int/lit8 v13, v13, 0x1

    .line 142
    .line 143
    iput v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 144
    .line 145
    iget-object v13, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 146
    .line 147
    aget v13, v13, v14

    .line 148
    .line 149
    const/4 v14, 0x0

    .line 150
    cmpl-float v24, v13, v14

    .line 151
    .line 152
    if-lez v24, :cond_4

    .line 153
    .line 154
    iget v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 155
    .line 156
    add-float/2addr v14, v13

    .line 157
    iput v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 158
    .line 159
    :cond_4
    iget v14, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 160
    .line 161
    const/16 v4, 0x8

    .line 162
    .line 163
    if-eq v14, v4, :cond_6

    .line 164
    .line 165
    if-ne v3, v12, :cond_6

    .line 166
    .line 167
    if-eqz v8, :cond_5

    .line 168
    .line 169
    const/4 v3, 0x3

    .line 170
    if-ne v8, v3, :cond_6

    .line 171
    .line 172
    :cond_5
    const/4 v3, 0x1

    .line 173
    goto :goto_3

    .line 174
    :cond_6
    const/4 v3, 0x0

    .line 175
    :goto_3
    if-eqz v3, :cond_9

    .line 176
    .line 177
    const/4 v3, 0x0

    .line 178
    cmpg-float v4, v13, v3

    .line 179
    .line 180
    if-gez v4, :cond_7

    .line 181
    .line 182
    const/4 v3, 0x1

    .line 183
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_7
    const/4 v3, 0x1

    .line 187
    iput-boolean v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 188
    .line 189
    :goto_4
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 190
    .line 191
    if-nez v3, :cond_8

    .line 192
    .line 193
    new-instance v3, Ljava/util/ArrayList;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .line 197
    .line 198
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 199
    .line 200
    :cond_8
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 201
    .line 202
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    :cond_9
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 206
    .line 207
    if-nez v3, :cond_a

    .line 208
    .line 209
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 210
    .line 211
    :cond_a
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 212
    .line 213
    if-eqz v3, :cond_b

    .line 214
    .line 215
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 216
    .line 217
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 218
    .line 219
    aput-object v5, v3, v4

    .line 220
    .line 221
    :cond_b
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 222
    .line 223
    :cond_c
    if-eq v6, v5, :cond_d

    .line 224
    .line 225
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 226
    .line 227
    iget v4, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 228
    .line 229
    aput-object v5, v3, v4

    .line 230
    .line 231
    :cond_d
    iget-object v3, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 232
    .line 233
    add-int/lit8 v4, v2, 0x1

    .line 234
    .line 235
    aget-object v3, v3, v4

    .line 236
    .line 237
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 238
    .line 239
    if-eqz v3, :cond_e

    .line 240
    .line 241
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 242
    .line 243
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 244
    .line 245
    aget-object v4, v4, v2

    .line 246
    .line 247
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 248
    .line 249
    if-eqz v4, :cond_e

    .line 250
    .line 251
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 252
    .line 253
    if-eq v4, v5, :cond_f

    .line 254
    .line 255
    :cond_e
    move-object/from16 v3, v18

    .line 256
    .line 257
    :cond_f
    if-eqz v3, :cond_10

    .line 258
    .line 259
    goto :goto_5

    .line 260
    :cond_10
    move-object v3, v5

    .line 261
    const/4 v7, 0x1

    .line 262
    :goto_5
    move-object v6, v5

    .line 263
    const/4 v4, 0x1

    .line 264
    const/16 v8, 0x8

    .line 265
    .line 266
    const/4 v13, 0x2

    .line 267
    move-object v5, v3

    .line 268
    goto/16 :goto_2

    .line 269
    .line 270
    :cond_11
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 271
    .line 272
    if-eqz v3, :cond_12

    .line 273
    .line 274
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 275
    .line 276
    aget-object v3, v3, v2

    .line 277
    .line 278
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 279
    .line 280
    .line 281
    :cond_12
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 282
    .line 283
    if-eqz v3, :cond_13

    .line 284
    .line 285
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 286
    .line 287
    add-int/lit8 v2, v2, 0x1

    .line 288
    .line 289
    aget-object v2, v3, v2

    .line 290
    .line 291
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 292
    .line 293
    .line 294
    :cond_13
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 295
    .line 296
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    .line 297
    .line 298
    if-nez v2, :cond_14

    .line 299
    .line 300
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    .line 301
    .line 302
    if-eqz v2, :cond_14

    .line 303
    .line 304
    iput-object v5, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 305
    .line 306
    goto :goto_6

    .line 307
    :cond_14
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 308
    .line 309
    iput-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 310
    .line 311
    :goto_6
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    .line 312
    .line 313
    if-eqz v2, :cond_15

    .line 314
    .line 315
    iget-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 316
    .line 317
    if-eqz v2, :cond_15

    .line 318
    .line 319
    const/4 v2, 0x1

    .line 320
    goto :goto_7

    .line 321
    :cond_15
    const/4 v2, 0x0

    .line 322
    :goto_7
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 323
    .line 324
    const/4 v2, 0x1

    .line 325
    goto :goto_8

    .line 326
    :cond_16
    move v2, v4

    .line 327
    :goto_8
    iput-boolean v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    .line 328
    .line 329
    if-eqz v11, :cond_18

    .line 330
    .line 331
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 332
    .line 333
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 334
    .line 335
    .line 336
    move-result v2

    .line 337
    if-eqz v2, :cond_17

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :cond_17
    move/from16 v29, v9

    .line 341
    .line 342
    move-object/from16 v35, v12

    .line 343
    .line 344
    move/from16 v30, v15

    .line 345
    .line 346
    const/16 v19, 0x0

    .line 347
    .line 348
    const/16 v20, 0x2

    .line 349
    .line 350
    goto/16 :goto_48

    .line 351
    .line 352
    :cond_18
    :goto_9
    iget-object v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 353
    .line 354
    iget-object v14, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 355
    .line 356
    iget-object v8, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 357
    .line 358
    iget-object v7, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 359
    .line 360
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 361
    .line 362
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    .line 363
    .line 364
    iget-object v4, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 365
    .line 366
    aget-object v4, v4, p3

    .line 367
    .line 368
    sget-object v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 369
    .line 370
    if-ne v4, v5, :cond_19

    .line 371
    .line 372
    const/4 v4, 0x1

    .line 373
    goto :goto_a

    .line 374
    :cond_19
    const/4 v4, 0x0

    .line 375
    :goto_a
    if-nez p3, :cond_1c

    .line 376
    .line 377
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalChainStyle:I

    .line 378
    .line 379
    const/4 v6, 0x1

    .line 380
    if-nez v5, :cond_1a

    .line 381
    .line 382
    const/16 v22, 0x1

    .line 383
    .line 384
    goto :goto_b

    .line 385
    :cond_1a
    const/16 v22, 0x0

    .line 386
    .line 387
    :goto_b
    if-ne v5, v6, :cond_1b

    .line 388
    .line 389
    move/from16 v23, v6

    .line 390
    .line 391
    move/from16 v24, v9

    .line 392
    .line 393
    const/4 v9, 0x2

    .line 394
    goto :goto_c

    .line 395
    :cond_1b
    move/from16 v24, v9

    .line 396
    .line 397
    const/4 v9, 0x2

    .line 398
    const/16 v23, 0x0

    .line 399
    .line 400
    :goto_c
    move/from16 v6, v23

    .line 401
    .line 402
    move/from16 v23, v22

    .line 403
    .line 404
    if-ne v5, v9, :cond_1f

    .line 405
    .line 406
    goto :goto_f

    .line 407
    :cond_1c
    move/from16 v24, v9

    .line 408
    .line 409
    const/4 v6, 0x1

    .line 410
    const/4 v9, 0x2

    .line 411
    iget v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalChainStyle:I

    .line 412
    .line 413
    if-nez v5, :cond_1d

    .line 414
    .line 415
    move/from16 v23, v6

    .line 416
    .line 417
    goto :goto_d

    .line 418
    :cond_1d
    const/16 v23, 0x0

    .line 419
    .line 420
    :goto_d
    if-ne v5, v6, :cond_1e

    .line 421
    .line 422
    const/4 v6, 0x1

    .line 423
    goto :goto_e

    .line 424
    :cond_1e
    const/4 v6, 0x0

    .line 425
    :goto_e
    if-ne v5, v9, :cond_1f

    .line 426
    .line 427
    :goto_f
    move/from16 v25, v23

    .line 428
    .line 429
    const/4 v5, 0x1

    .line 430
    :goto_10
    move/from16 v23, v6

    .line 431
    .line 432
    goto :goto_11

    .line 433
    :cond_1f
    move/from16 v25, v23

    .line 434
    .line 435
    const/4 v5, 0x0

    .line 436
    goto :goto_10

    .line 437
    :goto_11
    move/from16 v27, v3

    .line 438
    .line 439
    move-object v9, v13

    .line 440
    const/4 v6, 0x0

    .line 441
    :goto_12
    if-nez v6, :cond_2d

    .line 442
    .line 443
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 444
    .line 445
    aget-object v3, v3, v17

    .line 446
    .line 447
    if-eqz v5, :cond_20

    .line 448
    .line 449
    const/16 v29, 0x1

    .line 450
    .line 451
    goto :goto_13

    .line 452
    :cond_20
    const/16 v29, 0x4

    .line 453
    .line 454
    :goto_13
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 455
    .line 456
    .line 457
    move-result v30

    .line 458
    move/from16 v31, v6

    .line 459
    .line 460
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 461
    .line 462
    aget-object v6, v6, p3

    .line 463
    .line 464
    if-ne v6, v12, :cond_21

    .line 465
    .line 466
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 467
    .line 468
    aget v6, v6, p3

    .line 469
    .line 470
    if-nez v6, :cond_21

    .line 471
    .line 472
    const/4 v6, 0x1

    .line 473
    goto :goto_14

    .line 474
    :cond_21
    const/4 v6, 0x0

    .line 475
    :goto_14
    iget-object v11, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 476
    .line 477
    if-eqz v11, :cond_22

    .line 478
    .line 479
    if-eq v9, v13, :cond_22

    .line 480
    .line 481
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    add-int v30, v11, v30

    .line 486
    .line 487
    :cond_22
    move/from16 v11, v30

    .line 488
    .line 489
    if-eqz v5, :cond_23

    .line 490
    .line 491
    if-eq v9, v13, :cond_23

    .line 492
    .line 493
    if-eq v9, v8, :cond_23

    .line 494
    .line 495
    move/from16 v30, v15

    .line 496
    .line 497
    const/16 v29, 0x8

    .line 498
    .line 499
    goto :goto_15

    .line 500
    :cond_23
    move/from16 v30, v15

    .line 501
    .line 502
    :goto_15
    iget-object v15, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 503
    .line 504
    if-eqz v15, :cond_27

    .line 505
    .line 506
    if-ne v9, v8, :cond_24

    .line 507
    .line 508
    move-object/from16 v32, v2

    .line 509
    .line 510
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 511
    .line 512
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 513
    .line 514
    move-object/from16 v33, v13

    .line 515
    .line 516
    const/4 v13, 0x6

    .line 517
    invoke-virtual {v10, v2, v15, v11, v13}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 518
    .line 519
    .line 520
    goto :goto_16

    .line 521
    :cond_24
    move-object/from16 v32, v2

    .line 522
    .line 523
    move-object/from16 v33, v13

    .line 524
    .line 525
    iget-object v2, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 526
    .line 527
    iget-object v13, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 528
    .line 529
    const/16 v15, 0x8

    .line 530
    .line 531
    invoke-virtual {v10, v2, v13, v11, v15}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 532
    .line 533
    .line 534
    :goto_16
    if-eqz v6, :cond_25

    .line 535
    .line 536
    if-nez v5, :cond_25

    .line 537
    .line 538
    const/16 v29, 0x5

    .line 539
    .line 540
    :cond_25
    if-ne v9, v8, :cond_26

    .line 541
    .line 542
    if-eqz v5, :cond_26

    .line 543
    .line 544
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mIsInBarrier:[Z

    .line 545
    .line 546
    aget-boolean v2, v2, p3

    .line 547
    .line 548
    if-eqz v2, :cond_26

    .line 549
    .line 550
    const/4 v2, 0x5

    .line 551
    goto :goto_17

    .line 552
    :cond_26
    move/from16 v2, v29

    .line 553
    .line 554
    :goto_17
    iget-object v6, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 555
    .line 556
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 557
    .line 558
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 559
    .line 560
    invoke-virtual {v10, v6, v3, v11, v2}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 561
    .line 562
    .line 563
    goto :goto_18

    .line 564
    :cond_27
    move-object/from16 v32, v2

    .line 565
    .line 566
    move-object/from16 v33, v13

    .line 567
    .line 568
    :goto_18
    if-eqz v4, :cond_29

    .line 569
    .line 570
    iget v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 571
    .line 572
    const/16 v3, 0x8

    .line 573
    .line 574
    if-eq v2, v3, :cond_28

    .line 575
    .line 576
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 577
    .line 578
    aget-object v2, v2, p3

    .line 579
    .line 580
    if-ne v2, v12, :cond_28

    .line 581
    .line 582
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 583
    .line 584
    add-int/lit8 v3, v17, 0x1

    .line 585
    .line 586
    aget-object v3, v2, v3

    .line 587
    .line 588
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 589
    .line 590
    aget-object v2, v2, v17

    .line 591
    .line 592
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 593
    .line 594
    const/4 v6, 0x5

    .line 595
    const/4 v11, 0x0

    .line 596
    invoke-virtual {v10, v3, v2, v11, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 597
    .line 598
    .line 599
    goto :goto_19

    .line 600
    :cond_28
    const/4 v11, 0x0

    .line 601
    :goto_19
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 602
    .line 603
    aget-object v2, v2, v17

    .line 604
    .line 605
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 606
    .line 607
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 608
    .line 609
    aget-object v3, v3, v17

    .line 610
    .line 611
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 612
    .line 613
    const/16 v6, 0x8

    .line 614
    .line 615
    invoke-virtual {v10, v2, v3, v11, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 616
    .line 617
    .line 618
    :cond_29
    iget-object v2, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 619
    .line 620
    add-int/lit8 v3, v17, 0x1

    .line 621
    .line 622
    aget-object v2, v2, v3

    .line 623
    .line 624
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 625
    .line 626
    if-eqz v2, :cond_2a

    .line 627
    .line 628
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 629
    .line 630
    iget-object v3, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 631
    .line 632
    aget-object v3, v3, v17

    .line 633
    .line 634
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 635
    .line 636
    if-eqz v3, :cond_2a

    .line 637
    .line 638
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 639
    .line 640
    if-eq v3, v9, :cond_2b

    .line 641
    .line 642
    :cond_2a
    move-object/from16 v2, v18

    .line 643
    .line 644
    :cond_2b
    if-eqz v2, :cond_2c

    .line 645
    .line 646
    move-object v9, v2

    .line 647
    move/from16 v6, v31

    .line 648
    .line 649
    goto :goto_1a

    .line 650
    :cond_2c
    const/4 v6, 0x1

    .line 651
    :goto_1a
    move-object/from16 v11, p2

    .line 652
    .line 653
    move/from16 v15, v30

    .line 654
    .line 655
    move-object/from16 v2, v32

    .line 656
    .line 657
    move-object/from16 v13, v33

    .line 658
    .line 659
    goto/16 :goto_12

    .line 660
    .line 661
    :cond_2d
    move-object/from16 v32, v2

    .line 662
    .line 663
    move-object/from16 v33, v13

    .line 664
    .line 665
    move/from16 v30, v15

    .line 666
    .line 667
    if-eqz v7, :cond_31

    .line 668
    .line 669
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 670
    .line 671
    add-int/lit8 v3, v17, 0x1

    .line 672
    .line 673
    aget-object v2, v2, v3

    .line 674
    .line 675
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 676
    .line 677
    if-eqz v2, :cond_31

    .line 678
    .line 679
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 680
    .line 681
    aget-object v2, v2, v3

    .line 682
    .line 683
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    .line 684
    .line 685
    aget-object v6, v6, p3

    .line 686
    .line 687
    if-ne v6, v12, :cond_2e

    .line 688
    .line 689
    iget-object v6, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    .line 690
    .line 691
    aget v6, v6, p3

    .line 692
    .line 693
    if-nez v6, :cond_2e

    .line 694
    .line 695
    const/4 v6, 0x1

    .line 696
    goto :goto_1b

    .line 697
    :cond_2e
    const/4 v6, 0x0

    .line 698
    :goto_1b
    if-eqz v6, :cond_2f

    .line 699
    .line 700
    if-nez v5, :cond_2f

    .line 701
    .line 702
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 703
    .line 704
    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 705
    .line 706
    if-ne v9, v0, :cond_2f

    .line 707
    .line 708
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 709
    .line 710
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 711
    .line 712
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 713
    .line 714
    .line 715
    move-result v11

    .line 716
    neg-int v11, v11

    .line 717
    const/4 v13, 0x5

    .line 718
    invoke-virtual {v10, v9, v6, v11, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 719
    .line 720
    .line 721
    goto :goto_1c

    .line 722
    :cond_2f
    const/4 v13, 0x5

    .line 723
    if-eqz v5, :cond_30

    .line 724
    .line 725
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 726
    .line 727
    iget-object v9, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 728
    .line 729
    if-ne v9, v0, :cond_30

    .line 730
    .line 731
    iget-object v9, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 732
    .line 733
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 734
    .line 735
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 736
    .line 737
    .line 738
    move-result v11

    .line 739
    neg-int v11, v11

    .line 740
    const/4 v15, 0x4

    .line 741
    invoke-virtual {v10, v9, v6, v11, v15}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 742
    .line 743
    .line 744
    :cond_30
    :goto_1c
    iget-object v6, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 745
    .line 746
    iget-object v9, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 747
    .line 748
    aget-object v3, v9, v3

    .line 749
    .line 750
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 751
    .line 752
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 753
    .line 754
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    neg-int v2, v2

    .line 759
    const/4 v9, 0x6

    .line 760
    invoke-virtual {v10, v6, v3, v2, v9}, Landroidx/constraintlayout/core/LinearSystem;->addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 761
    .line 762
    .line 763
    goto :goto_1d

    .line 764
    :cond_31
    const/4 v13, 0x5

    .line 765
    :goto_1d
    if-eqz v4, :cond_32

    .line 766
    .line 767
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 768
    .line 769
    add-int/lit8 v3, v17, 0x1

    .line 770
    .line 771
    aget-object v2, v2, v3

    .line 772
    .line 773
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 774
    .line 775
    iget-object v4, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 776
    .line 777
    aget-object v3, v4, v3

    .line 778
    .line 779
    iget-object v4, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 780
    .line 781
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 782
    .line 783
    .line 784
    move-result v3

    .line 785
    const/16 v6, 0x8

    .line 786
    .line 787
    invoke-virtual {v10, v2, v4, v3, v6}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 788
    .line 789
    .line 790
    :cond_32
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    .line 791
    .line 792
    if-eqz v2, :cond_3c

    .line 793
    .line 794
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 795
    .line 796
    .line 797
    move-result v3

    .line 798
    const/4 v4, 0x1

    .line 799
    if-le v3, v4, :cond_3c

    .line 800
    .line 801
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    .line 802
    .line 803
    if-eqz v6, :cond_33

    .line 804
    .line 805
    iget-boolean v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 806
    .line 807
    if-nez v6, :cond_33

    .line 808
    .line 809
    iget v6, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 810
    .line 811
    int-to-float v6, v6

    .line 812
    goto :goto_1e

    .line 813
    :cond_33
    move/from16 v6, v27

    .line 814
    .line 815
    :goto_1e
    move-object/from16 v15, v18

    .line 816
    .line 817
    const/4 v9, 0x0

    .line 818
    const/4 v11, 0x0

    .line 819
    :goto_1f
    if-ge v11, v3, :cond_3c

    .line 820
    .line 821
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 822
    .line 823
    .line 824
    move-result-object v22

    .line 825
    move-object/from16 v4, v22

    .line 826
    .line 827
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 828
    .line 829
    iget-object v13, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    .line 830
    .line 831
    aget v13, v13, p3

    .line 832
    .line 833
    const/16 v20, 0x0

    .line 834
    .line 835
    cmpg-float v22, v13, v20

    .line 836
    .line 837
    if-gez v22, :cond_35

    .line 838
    .line 839
    iget-boolean v13, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    .line 840
    .line 841
    if-eqz v13, :cond_34

    .line 842
    .line 843
    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 844
    .line 845
    add-int/lit8 v4, v17, 0x1

    .line 846
    .line 847
    aget-object v4, v0, v4

    .line 848
    .line 849
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 850
    .line 851
    aget-object v0, v0, v17

    .line 852
    .line 853
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 854
    .line 855
    move-object/from16 v22, v2

    .line 856
    .line 857
    const/4 v2, 0x0

    .line 858
    const/4 v13, 0x4

    .line 859
    invoke-virtual {v10, v4, v0, v2, v13}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 860
    .line 861
    .line 862
    move/from16 v28, v13

    .line 863
    .line 864
    move v13, v2

    .line 865
    goto :goto_21

    .line 866
    :cond_34
    move-object/from16 v22, v2

    .line 867
    .line 868
    const/4 v2, 0x0

    .line 869
    const/high16 v13, 0x3f800000    # 1.0f

    .line 870
    .line 871
    const/16 v28, 0x4

    .line 872
    .line 873
    goto :goto_20

    .line 874
    :cond_35
    move-object/from16 v22, v2

    .line 875
    .line 876
    const/16 v28, 0x4

    .line 877
    .line 878
    const/4 v2, 0x0

    .line 879
    :goto_20
    cmpl-float v29, v13, v2

    .line 880
    .line 881
    if-nez v29, :cond_36

    .line 882
    .line 883
    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 884
    .line 885
    add-int/lit8 v2, v17, 0x1

    .line 886
    .line 887
    aget-object v2, v0, v2

    .line 888
    .line 889
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 890
    .line 891
    aget-object v0, v0, v17

    .line 892
    .line 893
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 894
    .line 895
    const/16 v4, 0x8

    .line 896
    .line 897
    const/4 v13, 0x0

    .line 898
    invoke-virtual {v10, v2, v0, v13, v4}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 899
    .line 900
    .line 901
    :goto_21
    move/from16 v34, v3

    .line 902
    .line 903
    move/from16 v29, v6

    .line 904
    .line 905
    move-object/from16 v35, v12

    .line 906
    .line 907
    move/from16 v19, v13

    .line 908
    .line 909
    const/16 v20, 0x0

    .line 910
    .line 911
    goto/16 :goto_26

    .line 912
    .line 913
    :cond_36
    const/16 v19, 0x0

    .line 914
    .line 915
    if-eqz v15, :cond_3b

    .line 916
    .line 917
    iget-object v2, v15, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 918
    .line 919
    aget-object v15, v2, v17

    .line 920
    .line 921
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 922
    .line 923
    add-int/lit8 v31, v17, 0x1

    .line 924
    .line 925
    aget-object v2, v2, v31

    .line 926
    .line 927
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 928
    .line 929
    iget-object v0, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 930
    .line 931
    move/from16 v34, v3

    .line 932
    .line 933
    aget-object v3, v0, v17

    .line 934
    .line 935
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 936
    .line 937
    aget-object v0, v0, v31

    .line 938
    .line 939
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 940
    .line 941
    move-object/from16 v31, v4

    .line 942
    .line 943
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    .line 944
    .line 945
    .line 946
    move-result-object v4

    .line 947
    move-object/from16 v35, v12

    .line 948
    .line 949
    const/4 v12, 0x0

    .line 950
    iput v12, v4, Landroidx/constraintlayout/core/ArrayRow;->mConstantValue:F

    .line 951
    .line 952
    cmpl-float v20, v6, v12

    .line 953
    .line 954
    const/high16 v12, -0x40800000    # -1.0f

    .line 955
    .line 956
    if-eqz v20, :cond_3a

    .line 957
    .line 958
    cmpl-float v20, v9, v13

    .line 959
    .line 960
    if-nez v20, :cond_37

    .line 961
    .line 962
    goto :goto_23

    .line 963
    :cond_37
    const/16 v20, 0x0

    .line 964
    .line 965
    cmpl-float v36, v9, v20

    .line 966
    .line 967
    if-nez v36, :cond_38

    .line 968
    .line 969
    iget-object v0, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 970
    .line 971
    const/high16 v3, 0x3f800000    # 1.0f

    .line 972
    .line 973
    invoke-interface {v0, v15, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 974
    .line 975
    .line 976
    iget-object v0, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 977
    .line 978
    invoke-interface {v0, v2, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 979
    .line 980
    .line 981
    goto :goto_22

    .line 982
    :cond_38
    const/high16 v12, 0x3f800000    # 1.0f

    .line 983
    .line 984
    if-nez v29, :cond_39

    .line 985
    .line 986
    iget-object v2, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 987
    .line 988
    invoke-interface {v2, v3, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 989
    .line 990
    .line 991
    iget-object v2, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 992
    .line 993
    const/high16 v3, -0x40800000    # -1.0f

    .line 994
    .line 995
    invoke-interface {v2, v0, v3}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 996
    .line 997
    .line 998
    :goto_22
    move/from16 v29, v6

    .line 999
    .line 1000
    goto :goto_24

    .line 1001
    :cond_39
    div-float/2addr v9, v6

    .line 1002
    div-float v29, v13, v6

    .line 1003
    .line 1004
    div-float v9, v9, v29

    .line 1005
    .line 1006
    move/from16 v29, v6

    .line 1007
    .line 1008
    iget-object v6, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1009
    .line 1010
    invoke-interface {v6, v15, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1011
    .line 1012
    .line 1013
    iget-object v6, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1014
    .line 1015
    const/high16 v12, -0x40800000    # -1.0f

    .line 1016
    .line 1017
    invoke-interface {v6, v2, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1018
    .line 1019
    .line 1020
    iget-object v2, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1021
    .line 1022
    invoke-interface {v2, v0, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1023
    .line 1024
    .line 1025
    iget-object v0, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1026
    .line 1027
    neg-float v2, v9

    .line 1028
    invoke-interface {v0, v3, v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1029
    .line 1030
    .line 1031
    goto :goto_24

    .line 1032
    :cond_3a
    :goto_23
    move/from16 v29, v6

    .line 1033
    .line 1034
    move v6, v12

    .line 1035
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1036
    .line 1037
    const/16 v20, 0x0

    .line 1038
    .line 1039
    iget-object v9, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1040
    .line 1041
    invoke-interface {v9, v15, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1042
    .line 1043
    .line 1044
    iget-object v9, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1045
    .line 1046
    invoke-interface {v9, v2, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1047
    .line 1048
    .line 1049
    iget-object v2, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1050
    .line 1051
    invoke-interface {v2, v0, v12}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v0, v4, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    .line 1055
    .line 1056
    invoke-interface {v0, v3, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->put(Landroidx/constraintlayout/core/SolverVariable;F)V

    .line 1057
    .line 1058
    .line 1059
    :goto_24
    invoke-virtual {v10, v4}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    .line 1060
    .line 1061
    .line 1062
    goto :goto_25

    .line 1063
    :cond_3b
    move/from16 v34, v3

    .line 1064
    .line 1065
    move-object/from16 v31, v4

    .line 1066
    .line 1067
    move/from16 v29, v6

    .line 1068
    .line 1069
    move-object/from16 v35, v12

    .line 1070
    .line 1071
    const/16 v20, 0x0

    .line 1072
    .line 1073
    :goto_25
    move v9, v13

    .line 1074
    move-object/from16 v15, v31

    .line 1075
    .line 1076
    :goto_26
    add-int/lit8 v11, v11, 0x1

    .line 1077
    .line 1078
    const/4 v4, 0x1

    .line 1079
    const/4 v13, 0x5

    .line 1080
    move-object/from16 v0, p0

    .line 1081
    .line 1082
    move-object/from16 v2, v22

    .line 1083
    .line 1084
    move/from16 v6, v29

    .line 1085
    .line 1086
    move/from16 v3, v34

    .line 1087
    .line 1088
    move-object/from16 v12, v35

    .line 1089
    .line 1090
    goto/16 :goto_1f

    .line 1091
    .line 1092
    :cond_3c
    move-object/from16 v35, v12

    .line 1093
    .line 1094
    const/16 v19, 0x0

    .line 1095
    .line 1096
    const/16 v28, 0x4

    .line 1097
    .line 1098
    if-eqz v8, :cond_44

    .line 1099
    .line 1100
    if-eq v8, v7, :cond_3d

    .line 1101
    .line 1102
    if-eqz v5, :cond_44

    .line 1103
    .line 1104
    :cond_3d
    move-object/from16 v0, v33

    .line 1105
    .line 1106
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1107
    .line 1108
    aget-object v0, v0, v17

    .line 1109
    .line 1110
    iget-object v1, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1111
    .line 1112
    add-int/lit8 v2, v17, 0x1

    .line 1113
    .line 1114
    aget-object v1, v1, v2

    .line 1115
    .line 1116
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1117
    .line 1118
    if-eqz v0, :cond_3e

    .line 1119
    .line 1120
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1121
    .line 1122
    move-object v3, v0

    .line 1123
    goto :goto_27

    .line 1124
    :cond_3e
    move-object/from16 v3, v18

    .line 1125
    .line 1126
    :goto_27
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1127
    .line 1128
    if-eqz v0, :cond_3f

    .line 1129
    .line 1130
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1131
    .line 1132
    move-object v6, v0

    .line 1133
    goto :goto_28

    .line 1134
    :cond_3f
    move-object/from16 v6, v18

    .line 1135
    .line 1136
    :goto_28
    iget-object v0, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1137
    .line 1138
    aget-object v0, v0, v17

    .line 1139
    .line 1140
    if-eqz v7, :cond_40

    .line 1141
    .line 1142
    iget-object v1, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1143
    .line 1144
    aget-object v1, v1, v2

    .line 1145
    .line 1146
    :cond_40
    if-eqz v3, :cond_42

    .line 1147
    .line 1148
    if-eqz v6, :cond_42

    .line 1149
    .line 1150
    if-nez p3, :cond_41

    .line 1151
    .line 1152
    move-object/from16 v2, v32

    .line 1153
    .line 1154
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mHorizontalBiasPercent:F

    .line 1155
    .line 1156
    goto :goto_29

    .line 1157
    :cond_41
    move-object/from16 v2, v32

    .line 1158
    .line 1159
    iget v2, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVerticalBiasPercent:F

    .line 1160
    .line 1161
    :goto_29
    move v5, v2

    .line 1162
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1163
    .line 1164
    .line 1165
    move-result v4

    .line 1166
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1167
    .line 1168
    .line 1169
    move-result v9

    .line 1170
    iget-object v2, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1171
    .line 1172
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1173
    .line 1174
    const/4 v11, 0x7

    .line 1175
    move-object/from16 v1, p1

    .line 1176
    .line 1177
    move-object v12, v7

    .line 1178
    move-object v7, v0

    .line 1179
    move-object v13, v8

    .line 1180
    move v8, v9

    .line 1181
    move/from16 v15, v24

    .line 1182
    .line 1183
    const/16 v20, 0x2

    .line 1184
    .line 1185
    move v9, v11

    .line 1186
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1187
    .line 1188
    .line 1189
    goto :goto_2a

    .line 1190
    :cond_42
    move-object v12, v7

    .line 1191
    move-object v13, v8

    .line 1192
    move/from16 v15, v24

    .line 1193
    .line 1194
    const/16 v20, 0x2

    .line 1195
    .line 1196
    :cond_43
    :goto_2a
    move/from16 v29, v15

    .line 1197
    .line 1198
    goto/16 :goto_43

    .line 1199
    .line 1200
    :cond_44
    move-object v12, v7

    .line 1201
    move-object v13, v8

    .line 1202
    move/from16 v15, v24

    .line 1203
    .line 1204
    move-object/from16 v0, v33

    .line 1205
    .line 1206
    const/16 v20, 0x2

    .line 1207
    .line 1208
    if-eqz v25, :cond_56

    .line 1209
    .line 1210
    if-eqz v13, :cond_56

    .line 1211
    .line 1212
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1213
    .line 1214
    if-lez v2, :cond_45

    .line 1215
    .line 1216
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1217
    .line 1218
    if-ne v1, v2, :cond_45

    .line 1219
    .line 1220
    const/16 v27, 0x1

    .line 1221
    .line 1222
    goto :goto_2b

    .line 1223
    :cond_45
    move/from16 v27, v19

    .line 1224
    .line 1225
    :goto_2b
    move-object v9, v13

    .line 1226
    move-object v11, v9

    .line 1227
    :goto_2c
    if-eqz v11, :cond_43

    .line 1228
    .line 1229
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1230
    .line 1231
    aget-object v1, v1, p3

    .line 1232
    .line 1233
    move-object v8, v1

    .line 1234
    :goto_2d
    if-eqz v8, :cond_46

    .line 1235
    .line 1236
    iget v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1237
    .line 1238
    const/16 v7, 0x8

    .line 1239
    .line 1240
    if-ne v1, v7, :cond_47

    .line 1241
    .line 1242
    iget-object v1, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1243
    .line 1244
    aget-object v8, v1, p3

    .line 1245
    .line 1246
    goto :goto_2d

    .line 1247
    :cond_46
    const/16 v7, 0x8

    .line 1248
    .line 1249
    :cond_47
    if-nez v8, :cond_49

    .line 1250
    .line 1251
    if-ne v11, v12, :cond_48

    .line 1252
    .line 1253
    goto :goto_2e

    .line 1254
    :cond_48
    move-object/from16 v21, v8

    .line 1255
    .line 1256
    move-object/from16 v22, v9

    .line 1257
    .line 1258
    move/from16 v29, v15

    .line 1259
    .line 1260
    move v15, v7

    .line 1261
    goto/16 :goto_35

    .line 1262
    .line 1263
    :cond_49
    :goto_2e
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1264
    .line 1265
    aget-object v1, v1, v17

    .line 1266
    .line 1267
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1268
    .line 1269
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1270
    .line 1271
    if-eqz v3, :cond_4a

    .line 1272
    .line 1273
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1274
    .line 1275
    goto :goto_2f

    .line 1276
    :cond_4a
    move-object/from16 v3, v18

    .line 1277
    .line 1278
    :goto_2f
    if-eq v9, v11, :cond_4b

    .line 1279
    .line 1280
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1281
    .line 1282
    add-int/lit8 v4, v17, 0x1

    .line 1283
    .line 1284
    aget-object v3, v3, v4

    .line 1285
    .line 1286
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1287
    .line 1288
    goto :goto_30

    .line 1289
    :cond_4b
    if-ne v11, v13, :cond_4d

    .line 1290
    .line 1291
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1292
    .line 1293
    aget-object v3, v3, v17

    .line 1294
    .line 1295
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1296
    .line 1297
    if-eqz v3, :cond_4c

    .line 1298
    .line 1299
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1300
    .line 1301
    goto :goto_30

    .line 1302
    :cond_4c
    move-object/from16 v3, v18

    .line 1303
    .line 1304
    :cond_4d
    :goto_30
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1305
    .line 1306
    .line 1307
    move-result v1

    .line 1308
    iget-object v4, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1309
    .line 1310
    add-int/lit8 v5, v17, 0x1

    .line 1311
    .line 1312
    aget-object v4, v4, v5

    .line 1313
    .line 1314
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1315
    .line 1316
    .line 1317
    move-result v4

    .line 1318
    if-eqz v8, :cond_4e

    .line 1319
    .line 1320
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1321
    .line 1322
    aget-object v6, v6, v17

    .line 1323
    .line 1324
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1325
    .line 1326
    goto :goto_31

    .line 1327
    :cond_4e
    iget-object v6, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1328
    .line 1329
    aget-object v6, v6, v5

    .line 1330
    .line 1331
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1332
    .line 1333
    if-eqz v6, :cond_4f

    .line 1334
    .line 1335
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1336
    .line 1337
    :goto_31
    move-object/from16 v22, v8

    .line 1338
    .line 1339
    goto :goto_32

    .line 1340
    :cond_4f
    move-object/from16 v22, v8

    .line 1341
    .line 1342
    move-object/from16 v7, v18

    .line 1343
    .line 1344
    :goto_32
    iget-object v8, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1345
    .line 1346
    aget-object v8, v8, v5

    .line 1347
    .line 1348
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1349
    .line 1350
    if-eqz v6, :cond_50

    .line 1351
    .line 1352
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1353
    .line 1354
    .line 1355
    move-result v6

    .line 1356
    add-int/2addr v4, v6

    .line 1357
    :cond_50
    iget-object v6, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1358
    .line 1359
    aget-object v6, v6, v5

    .line 1360
    .line 1361
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1362
    .line 1363
    .line 1364
    move-result v6

    .line 1365
    add-int/2addr v6, v1

    .line 1366
    if-eqz v2, :cond_54

    .line 1367
    .line 1368
    if-eqz v3, :cond_54

    .line 1369
    .line 1370
    if-eqz v7, :cond_54

    .line 1371
    .line 1372
    if-eqz v8, :cond_54

    .line 1373
    .line 1374
    if-ne v11, v13, :cond_51

    .line 1375
    .line 1376
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1377
    .line 1378
    aget-object v1, v1, v17

    .line 1379
    .line 1380
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1381
    .line 1382
    .line 1383
    move-result v1

    .line 1384
    move v6, v1

    .line 1385
    :cond_51
    if-ne v11, v12, :cond_52

    .line 1386
    .line 1387
    iget-object v1, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1388
    .line 1389
    aget-object v1, v1, v5

    .line 1390
    .line 1391
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1392
    .line 1393
    .line 1394
    move-result v1

    .line 1395
    move/from16 v24, v1

    .line 1396
    .line 1397
    goto :goto_33

    .line 1398
    :cond_52
    move/from16 v24, v4

    .line 1399
    .line 1400
    :goto_33
    if-eqz v27, :cond_53

    .line 1401
    .line 1402
    const/16 v26, 0x8

    .line 1403
    .line 1404
    goto :goto_34

    .line 1405
    :cond_53
    const/16 v26, 0x5

    .line 1406
    .line 1407
    :goto_34
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1408
    .line 1409
    move-object/from16 v1, p1

    .line 1410
    .line 1411
    const/4 v4, 0x5

    .line 1412
    move/from16 v29, v15

    .line 1413
    .line 1414
    move v15, v4

    .line 1415
    move v4, v6

    .line 1416
    move-object v6, v7

    .line 1417
    const/16 v21, 0x8

    .line 1418
    .line 1419
    move-object v7, v8

    .line 1420
    move/from16 v15, v21

    .line 1421
    .line 1422
    move-object/from16 v21, v22

    .line 1423
    .line 1424
    move/from16 v8, v24

    .line 1425
    .line 1426
    move-object/from16 v22, v9

    .line 1427
    .line 1428
    move/from16 v9, v26

    .line 1429
    .line 1430
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1431
    .line 1432
    .line 1433
    goto :goto_35

    .line 1434
    :cond_54
    move/from16 v29, v15

    .line 1435
    .line 1436
    move-object/from16 v21, v22

    .line 1437
    .line 1438
    const/16 v15, 0x8

    .line 1439
    .line 1440
    move-object/from16 v22, v9

    .line 1441
    .line 1442
    :goto_35
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1443
    .line 1444
    if-eq v1, v15, :cond_55

    .line 1445
    .line 1446
    move-object v9, v11

    .line 1447
    goto :goto_36

    .line 1448
    :cond_55
    move-object/from16 v9, v22

    .line 1449
    .line 1450
    :goto_36
    move-object/from16 v11, v21

    .line 1451
    .line 1452
    move/from16 v15, v29

    .line 1453
    .line 1454
    goto/16 :goto_2c

    .line 1455
    .line 1456
    :cond_56
    move/from16 v29, v15

    .line 1457
    .line 1458
    const/16 v15, 0x8

    .line 1459
    .line 1460
    if-eqz v23, :cond_65

    .line 1461
    .line 1462
    if-eqz v13, :cond_65

    .line 1463
    .line 1464
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    .line 1465
    .line 1466
    if-lez v2, :cond_57

    .line 1467
    .line 1468
    iget v1, v1, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    .line 1469
    .line 1470
    if-ne v1, v2, :cond_57

    .line 1471
    .line 1472
    const/16 v27, 0x1

    .line 1473
    .line 1474
    goto :goto_37

    .line 1475
    :cond_57
    move/from16 v27, v19

    .line 1476
    .line 1477
    :goto_37
    move-object v9, v13

    .line 1478
    move-object v11, v9

    .line 1479
    :goto_38
    if-eqz v11, :cond_62

    .line 1480
    .line 1481
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1482
    .line 1483
    aget-object v1, v1, p3

    .line 1484
    .line 1485
    :goto_39
    if-eqz v1, :cond_58

    .line 1486
    .line 1487
    iget v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1488
    .line 1489
    if-ne v2, v15, :cond_58

    .line 1490
    .line 1491
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    .line 1492
    .line 1493
    aget-object v1, v1, p3

    .line 1494
    .line 1495
    goto :goto_39

    .line 1496
    :cond_58
    if-eq v11, v13, :cond_60

    .line 1497
    .line 1498
    if-eq v11, v12, :cond_60

    .line 1499
    .line 1500
    if-eqz v1, :cond_60

    .line 1501
    .line 1502
    if-ne v1, v12, :cond_59

    .line 1503
    .line 1504
    move-object/from16 v8, v18

    .line 1505
    .line 1506
    goto :goto_3a

    .line 1507
    :cond_59
    move-object v8, v1

    .line 1508
    :goto_3a
    iget-object v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1509
    .line 1510
    aget-object v1, v1, v17

    .line 1511
    .line 1512
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1513
    .line 1514
    iget-object v3, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1515
    .line 1516
    add-int/lit8 v4, v17, 0x1

    .line 1517
    .line 1518
    aget-object v3, v3, v4

    .line 1519
    .line 1520
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1521
    .line 1522
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1523
    .line 1524
    .line 1525
    move-result v1

    .line 1526
    iget-object v5, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1527
    .line 1528
    aget-object v5, v5, v4

    .line 1529
    .line 1530
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1531
    .line 1532
    .line 1533
    move-result v5

    .line 1534
    if-eqz v8, :cond_5b

    .line 1535
    .line 1536
    iget-object v6, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1537
    .line 1538
    aget-object v6, v6, v17

    .line 1539
    .line 1540
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1541
    .line 1542
    iget-object v15, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1543
    .line 1544
    if-eqz v15, :cond_5a

    .line 1545
    .line 1546
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1547
    .line 1548
    goto :goto_3c

    .line 1549
    :cond_5a
    move-object/from16 v15, v18

    .line 1550
    .line 1551
    goto :goto_3c

    .line 1552
    :cond_5b
    iget-object v6, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1553
    .line 1554
    aget-object v6, v6, v17

    .line 1555
    .line 1556
    if-eqz v6, :cond_5c

    .line 1557
    .line 1558
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1559
    .line 1560
    goto :goto_3b

    .line 1561
    :cond_5c
    move-object/from16 v7, v18

    .line 1562
    .line 1563
    :goto_3b
    iget-object v15, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1564
    .line 1565
    aget-object v15, v15, v4

    .line 1566
    .line 1567
    iget-object v15, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1568
    .line 1569
    :goto_3c
    if-eqz v6, :cond_5d

    .line 1570
    .line 1571
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1572
    .line 1573
    .line 1574
    move-result v6

    .line 1575
    add-int/2addr v6, v5

    .line 1576
    move/from16 v22, v6

    .line 1577
    .line 1578
    goto :goto_3d

    .line 1579
    :cond_5d
    move/from16 v22, v5

    .line 1580
    .line 1581
    :goto_3d
    iget-object v5, v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1582
    .line 1583
    aget-object v4, v5, v4

    .line 1584
    .line 1585
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1586
    .line 1587
    .line 1588
    move-result v4

    .line 1589
    add-int/2addr v4, v1

    .line 1590
    if-eqz v27, :cond_5e

    .line 1591
    .line 1592
    const/16 v24, 0x8

    .line 1593
    .line 1594
    goto :goto_3e

    .line 1595
    :cond_5e
    move/from16 v24, v28

    .line 1596
    .line 1597
    :goto_3e
    if-eqz v2, :cond_5f

    .line 1598
    .line 1599
    if-eqz v3, :cond_5f

    .line 1600
    .line 1601
    if-eqz v7, :cond_5f

    .line 1602
    .line 1603
    if-eqz v15, :cond_5f

    .line 1604
    .line 1605
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1606
    .line 1607
    move-object/from16 v1, p1

    .line 1608
    .line 1609
    move/from16 v26, v28

    .line 1610
    .line 1611
    move-object v6, v7

    .line 1612
    move-object v7, v15

    .line 1613
    move-object v15, v8

    .line 1614
    move/from16 v8, v22

    .line 1615
    .line 1616
    move-object/from16 v22, v9

    .line 1617
    .line 1618
    move/from16 v9, v24

    .line 1619
    .line 1620
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1621
    .line 1622
    .line 1623
    goto :goto_3f

    .line 1624
    :cond_5f
    move-object v15, v8

    .line 1625
    move-object/from16 v22, v9

    .line 1626
    .line 1627
    move/from16 v26, v28

    .line 1628
    .line 1629
    :goto_3f
    move-object v8, v15

    .line 1630
    goto :goto_40

    .line 1631
    :cond_60
    move-object/from16 v22, v9

    .line 1632
    .line 1633
    move/from16 v26, v28

    .line 1634
    .line 1635
    move-object v8, v1

    .line 1636
    :goto_40
    iget v1, v11, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mVisibility:I

    .line 1637
    .line 1638
    const/16 v2, 0x8

    .line 1639
    .line 1640
    if-eq v1, v2, :cond_61

    .line 1641
    .line 1642
    move-object v9, v11

    .line 1643
    goto :goto_41

    .line 1644
    :cond_61
    move-object/from16 v9, v22

    .line 1645
    .line 1646
    :goto_41
    move v15, v2

    .line 1647
    move-object v11, v8

    .line 1648
    move/from16 v28, v26

    .line 1649
    .line 1650
    goto/16 :goto_38

    .line 1651
    .line 1652
    :cond_62
    iget-object v1, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1653
    .line 1654
    aget-object v1, v1, v17

    .line 1655
    .line 1656
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1657
    .line 1658
    aget-object v0, v0, v17

    .line 1659
    .line 1660
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1661
    .line 1662
    iget-object v2, v12, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1663
    .line 1664
    add-int/lit8 v3, v17, 0x1

    .line 1665
    .line 1666
    aget-object v11, v2, v3

    .line 1667
    .line 1668
    iget-object v2, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1669
    .line 1670
    aget-object v2, v2, v3

    .line 1671
    .line 1672
    iget-object v15, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1673
    .line 1674
    if-eqz v0, :cond_64

    .line 1675
    .line 1676
    if-eq v13, v12, :cond_63

    .line 1677
    .line 1678
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1679
    .line 1680
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1681
    .line 1682
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1683
    .line 1684
    .line 1685
    move-result v1

    .line 1686
    const/4 v3, 0x5

    .line 1687
    invoke-virtual {v10, v2, v0, v1, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1688
    .line 1689
    .line 1690
    goto :goto_42

    .line 1691
    :cond_63
    if-eqz v15, :cond_64

    .line 1692
    .line 1693
    iget-object v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1694
    .line 1695
    iget-object v3, v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1696
    .line 1697
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1698
    .line 1699
    .line 1700
    move-result v4

    .line 1701
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1702
    .line 1703
    iget-object v6, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1704
    .line 1705
    iget-object v7, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1706
    .line 1707
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1708
    .line 1709
    .line 1710
    move-result v8

    .line 1711
    const/4 v9, 0x5

    .line 1712
    move-object/from16 v1, p1

    .line 1713
    .line 1714
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1715
    .line 1716
    .line 1717
    :cond_64
    :goto_42
    if-eqz v15, :cond_65

    .line 1718
    .line 1719
    if-eq v13, v12, :cond_65

    .line 1720
    .line 1721
    iget-object v0, v11, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1722
    .line 1723
    iget-object v1, v15, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1724
    .line 1725
    invoke-virtual {v11}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1726
    .line 1727
    .line 1728
    move-result v2

    .line 1729
    neg-int v2, v2

    .line 1730
    const/4 v3, 0x5

    .line 1731
    invoke-virtual {v10, v0, v1, v2, v3}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1732
    .line 1733
    .line 1734
    :cond_65
    :goto_43
    if-nez v25, :cond_66

    .line 1735
    .line 1736
    if-eqz v23, :cond_6d

    .line 1737
    .line 1738
    :cond_66
    if-eqz v13, :cond_6d

    .line 1739
    .line 1740
    if-eq v13, v12, :cond_6d

    .line 1741
    .line 1742
    iget-object v0, v13, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1743
    .line 1744
    aget-object v1, v0, v17

    .line 1745
    .line 1746
    if-nez v12, :cond_67

    .line 1747
    .line 1748
    move-object v8, v13

    .line 1749
    goto :goto_44

    .line 1750
    :cond_67
    move-object v8, v12

    .line 1751
    :goto_44
    iget-object v2, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1752
    .line 1753
    add-int/lit8 v3, v17, 0x1

    .line 1754
    .line 1755
    aget-object v2, v2, v3

    .line 1756
    .line 1757
    iget-object v4, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1758
    .line 1759
    if-eqz v4, :cond_68

    .line 1760
    .line 1761
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1762
    .line 1763
    goto :goto_45

    .line 1764
    :cond_68
    move-object/from16 v4, v18

    .line 1765
    .line 1766
    :goto_45
    iget-object v5, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1767
    .line 1768
    if-eqz v5, :cond_69

    .line 1769
    .line 1770
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1771
    .line 1772
    goto :goto_46

    .line 1773
    :cond_69
    move-object/from16 v5, v18

    .line 1774
    .line 1775
    :goto_46
    if-eq v14, v8, :cond_6b

    .line 1776
    .line 1777
    iget-object v5, v14, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1778
    .line 1779
    aget-object v5, v5, v3

    .line 1780
    .line 1781
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1782
    .line 1783
    if-eqz v5, :cond_6a

    .line 1784
    .line 1785
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1786
    .line 1787
    move-object/from16 v18, v5

    .line 1788
    .line 1789
    :cond_6a
    move-object/from16 v6, v18

    .line 1790
    .line 1791
    goto :goto_47

    .line 1792
    :cond_6b
    move-object v6, v5

    .line 1793
    :goto_47
    if-ne v13, v8, :cond_6c

    .line 1794
    .line 1795
    aget-object v2, v0, v3

    .line 1796
    .line 1797
    :cond_6c
    if-eqz v4, :cond_6d

    .line 1798
    .line 1799
    if-eqz v6, :cond_6d

    .line 1800
    .line 1801
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1802
    .line 1803
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1804
    .line 1805
    .line 1806
    move-result v0

    .line 1807
    iget-object v7, v8, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    .line 1808
    .line 1809
    aget-object v3, v7, v3

    .line 1810
    .line 1811
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    .line 1812
    .line 1813
    .line 1814
    move-result v8

    .line 1815
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1816
    .line 1817
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mSolverVariable:Landroidx/constraintlayout/core/SolverVariable;

    .line 1818
    .line 1819
    const/4 v9, 0x5

    .line 1820
    move-object/from16 v1, p1

    .line 1821
    .line 1822
    move-object v2, v3

    .line 1823
    move-object v3, v4

    .line 1824
    move v4, v0

    .line 1825
    invoke-virtual/range {v1 .. v9}, Landroidx/constraintlayout/core/LinearSystem;->addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    .line 1826
    .line 1827
    .line 1828
    :cond_6d
    :goto_48
    add-int/lit8 v9, v29, 0x1

    .line 1829
    .line 1830
    move-object/from16 v0, p0

    .line 1831
    .line 1832
    move-object/from16 v11, p2

    .line 1833
    .line 1834
    move/from16 v13, v20

    .line 1835
    .line 1836
    move/from16 v15, v30

    .line 1837
    .line 1838
    move-object/from16 v12, v35

    .line 1839
    .line 1840
    goto/16 :goto_1

    .line 1841
    .line 1842
    :cond_6e
    return-void
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    .line 1948
    .line 1949
    .line 1950
    .line 1951
    .line 1952
    .line 1953
    .line 1954
    .line 1955
    .line 1956
    .line 1957
    .line 1958
    .line 1959
    .line 1960
    .line 1961
    .line 1962
    .line 1963
    .line 1964
    .line 1965
    .line 1966
    .line 1967
    .line 1968
    .line 1969
    .line 1970
    .line 1971
    .line 1972
    .line 1973
    .line 1974
    .line 1975
    .line 1976
    .line 1977
    .line 1978
    .line 1979
    .line 1980
    .line 1981
    .line 1982
    .line 1983
    .line 1984
    .line 1985
    .line 1986
    .line 1987
    .line 1988
    .line 1989
    .line 1990
    .line 1991
    .line 1992
    .line 1993
    .line 1994
    .line 1995
    .line 1996
    .line 1997
    .line 1998
    .line 1999
    .line 2000
    .line 2001
    .line 2002
    .line 2003
    .line 2004
    .line 2005
    .line 2006
    .line 2007
    .line 2008
    .line 2009
    .line 2010
    .line 2011
    .line 2012
    .line 2013
    .line 2014
    .line 2015
    .line 2016
    .line 2017
    .line 2018
    .line 2019
    .line 2020
    .line 2021
    .line 2022
    .line 2023
    .line 2024
    .line 2025
    .line 2026
    .line 2027
    .line 2028
    .line 2029
    .line 2030
    .line 2031
    .line 2032
    .line 2033
    .line 2034
    .line 2035
    .line 2036
    .line 2037
    .line 2038
    .line 2039
    .line 2040
    .line 2041
    .line 2042
    .line 2043
    .line 2044
    .line 2045
    .line 2046
    .line 2047
    .line 2048
    .line 2049
    .line 2050
    .line 2051
    .line 2052
    .line 2053
    .line 2054
    .line 2055
    .line 2056
    .line 2057
    .line 2058
    .line 2059
    .line 2060
    .line 2061
    .line 2062
    .line 2063
    .line 2064
    .line 2065
    .line 2066
    .line 2067
    .line 2068
    .line 2069
    .line 2070
    .line 2071
    .line 2072
    .line 2073
    .line 2074
    .line 2075
    .line 2076
    .line 2077
    .line 2078
    .line 2079
    .line 2080
    .line 2081
    .line 2082
    .line 2083
    .line 2084
    .line 2085
    .line 2086
    .line 2087
    .line 2088
    .line 2089
    .line 2090
    .line 2091
    .line 2092
    .line 2093
    .line 2094
    .line 2095
    .line 2096
    .line 2097
    .line 2098
    .line 2099
    .line 2100
    .line 2101
    .line 2102
    .line 2103
    .line 2104
    .line 2105
    .line 2106
    .line 2107
    .line 2108
    .line 2109
    .line 2110
    .line 2111
    .line 2112
    .line 2113
    .line 2114
    .line 2115
    .line 2116
    .line 2117
    .line 2118
    .line 2119
    .line 2120
.end method
