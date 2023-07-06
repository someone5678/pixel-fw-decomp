.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $logEvent:Z

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$logEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 34

    .line 0
    move-object/from16 v0, p0

    .line 1
    .line 2
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$key:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    .line 7
    .line 8
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$oldKey:Ljava/lang/String;

    .line 9
    .line 10
    iget-boolean v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaData$1;->$logEvent:Z

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 20
    .line 21
    const-class v6, Landroid/media/session/MediaSession$Token;

    .line 22
    .line 23
    const-string v7, "android.mediaSession"

    .line 24
    .line 25
    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    move-object v13, v0

    .line 30
    check-cast v13, Landroid/media/session/MediaSession$Token;

    .line 31
    .line 32
    if-nez v13, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1e

    .line 35
    .line 36
    :cond_0
    iget-object v0, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance v6, Landroid/media/session/MediaController;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-direct {v6, v0, v13}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 53
    .line 54
    .line 55
    move-result-object v14

    .line 56
    iget-object v0, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 57
    .line 58
    const-class v8, Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    const-string v9, "android.appInfo"

    .line 61
    .line 62
    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 67
    .line 68
    const-string v8, "MediaDataManager"

    .line 69
    .line 70
    const/4 v9, 0x0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->context:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v10, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 84
    .line 85
    .line 86
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v11, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v12, "Could not get app info for "

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-static {v8, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    .line 108
    .line 109
    const/4 v0, 0x0

    .line 110
    :cond_1
    :goto_0
    const/4 v10, 0x3

    .line 111
    if-eqz v7, :cond_3

    .line 112
    .line 113
    sget-object v11, Lcom/android/systemui/media/controls/pipeline/MediaDataManagerKt;->ART_URIS:[Ljava/lang/String;

    .line 114
    .line 115
    :goto_1
    if-ge v9, v10, :cond_3

    .line 116
    .line 117
    aget-object v10, v11, v9

    .line 118
    .line 119
    invoke-virtual {v7, v10}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v12

    .line 123
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v15

    .line 127
    if-nez v15, :cond_2

    .line 128
    .line 129
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 130
    .line 131
    .line 132
    move-result-object v12

    .line 133
    invoke-virtual {v1, v12}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->loadBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    if-eqz v12, :cond_2

    .line 138
    .line 139
    const-string v9, "loaded art from "

    .line 140
    .line 141
    invoke-static {v9, v10, v8}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 146
    .line 147
    const/4 v10, 0x3

    .line 148
    goto :goto_1

    .line 149
    :cond_3
    const/4 v12, 0x0

    .line 150
    :goto_2
    if-nez v12, :cond_5

    .line 151
    .line 152
    if-eqz v7, :cond_4

    .line 153
    .line 154
    const-string v9, "android.media.metadata.ART"

    .line 155
    .line 156
    invoke-virtual {v7, v9}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    const/4 v12, 0x0

    .line 162
    :cond_5
    :goto_3
    if-nez v12, :cond_7

    .line 163
    .line 164
    if-eqz v7, :cond_6

    .line 165
    .line 166
    const-string v9, "android.media.metadata.ALBUM_ART"

    .line 167
    .line 168
    invoke-virtual {v7, v9}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 169
    .line 170
    .line 171
    move-result-object v12

    .line 172
    goto :goto_4

    .line 173
    :cond_6
    const/4 v12, 0x0

    .line 174
    :cond_7
    :goto_4
    if-nez v12, :cond_8

    .line 175
    .line 176
    invoke-virtual {v14}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    .line 177
    .line 178
    .line 179
    move-result-object v9

    .line 180
    goto :goto_5

    .line 181
    :cond_8
    invoke-static {v12}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    :goto_5
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 186
    .line 187
    .line 188
    move-result-object v10

    .line 189
    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 190
    .line 191
    const-string v11, "android.substName"

    .line 192
    .line 193
    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v10

    .line 197
    if-eqz v10, :cond_9

    .line 198
    .line 199
    goto :goto_6

    .line 200
    :cond_9
    if-eqz v0, :cond_a

    .line 201
    .line 202
    iget-object v10, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->context:Landroid/content/Context;

    .line 203
    .line 204
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 205
    .line 206
    .line 207
    move-result-object v10

    .line 208
    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    goto :goto_6

    .line 217
    :cond_a
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v10

    .line 221
    :goto_6
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 222
    .line 223
    .line 224
    move-result-object v11

    .line 225
    invoke-virtual {v11}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    .line 226
    .line 227
    .line 228
    move-result-object v11

    .line 229
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 230
    .line 231
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 232
    .line 233
    .line 234
    if-eqz v7, :cond_b

    .line 235
    .line 236
    const-string v15, "android.media.metadata.DISPLAY_TITLE"

    .line 237
    .line 238
    invoke-virtual {v7, v15}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v15

    .line 242
    goto :goto_7

    .line 243
    :cond_b
    const/4 v15, 0x0

    .line 244
    :goto_7
    iput-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    .line 246
    if-nez v15, :cond_d

    .line 247
    .line 248
    if-eqz v7, :cond_c

    .line 249
    .line 250
    const-string v15, "android.media.metadata.TITLE"

    .line 251
    .line 252
    invoke-virtual {v7, v15}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v15

    .line 256
    goto :goto_8

    .line 257
    :cond_c
    const/4 v15, 0x0

    .line 258
    :goto_8
    iput-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 259
    .line 260
    :cond_d
    iget-object v15, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 261
    .line 262
    if-nez v15, :cond_f

    .line 263
    .line 264
    iget-object v15, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 265
    .line 266
    move-object/from16 p0, v13

    .line 267
    .line 268
    const-string v13, "android.title"

    .line 269
    .line 270
    invoke-virtual {v15, v13}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 271
    .line 272
    .line 273
    move-result-object v13

    .line 274
    if-nez v13, :cond_e

    .line 275
    .line 276
    iget-object v13, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 277
    .line 278
    const-string v15, "android.title.big"

    .line 279
    .line 280
    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 281
    .line 282
    .line 283
    move-result-object v13

    .line 284
    :cond_e
    iput-object v13, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 285
    .line 286
    goto :goto_9

    .line 287
    :cond_f
    move-object/from16 p0, v13

    .line 288
    .line 289
    :goto_9
    new-instance v22, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 290
    .line 291
    invoke-direct/range {v22 .. v22}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 292
    .line 293
    .line 294
    iget-object v13, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 295
    .line 296
    iget-object v13, v13, Lcom/android/systemui/media/controls/util/MediaFlags;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 297
    .line 298
    sget-object v15, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    .line 299
    .line 300
    invoke-interface {v13}, Lcom/android/systemui/flags/FeatureFlags;->isEnabled()V

    .line 301
    .line 302
    .line 303
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 304
    .line 305
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 306
    .line 307
    .line 308
    if-eqz v7, :cond_10

    .line 309
    .line 310
    const-string v15, "android.media.metadata.ARTIST"

    .line 311
    .line 312
    invoke-virtual {v7, v15}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    goto :goto_a

    .line 317
    :cond_10
    const/4 v7, 0x0

    .line 318
    :goto_a
    iput-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 319
    .line 320
    if-nez v7, :cond_12

    .line 321
    .line 322
    iget-object v7, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 323
    .line 324
    const-string v15, "android.text"

    .line 325
    .line 326
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    if-nez v7, :cond_11

    .line 331
    .line 332
    iget-object v7, v14, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 333
    .line 334
    const-string v15, "android.bigText"

    .line 335
    .line 336
    invoke-virtual {v7, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    :cond_11
    iput-object v7, v13, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 341
    .line 342
    :cond_12
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 343
    .line 344
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 352
    .line 353
    move-object/from16 v16, v14

    .line 354
    .line 355
    const-string v14, "android.mediaRemoteDevice"

    .line 356
    .line 357
    invoke-virtual {v7, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 358
    .line 359
    .line 360
    move-result v7

    .line 361
    if-eqz v7, :cond_14

    .line 362
    .line 363
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 364
    .line 365
    .line 366
    move-result-object v7

    .line 367
    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 368
    .line 369
    move-object/from16 v17, v9

    .line 370
    .line 371
    const/4 v9, 0x0

    .line 372
    invoke-virtual {v7, v14, v9}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 373
    .line 374
    .line 375
    move-result-object v9

    .line 376
    move-object/from16 v20, v12

    .line 377
    .line 378
    const-string v12, "android.mediaRemoteIcon"

    .line 379
    .line 380
    move-object/from16 v21, v13

    .line 381
    .line 382
    const/4 v13, -0x1

    .line 383
    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 384
    .line 385
    .line 386
    move-result v12

    .line 387
    const-class v13, Landroid/app/PendingIntent;

    .line 388
    .line 389
    move-object/from16 v31, v11

    .line 390
    .line 391
    const-string v11, "android.mediaRemoteIntent"

    .line 392
    .line 393
    invoke-virtual {v7, v11, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v7

    .line 397
    move-object/from16 v27, v7

    .line 398
    .line 399
    check-cast v27, Landroid/app/PendingIntent;

    .line 400
    .line 401
    new-instance v7, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    const-string v11, " is RCN for "

    .line 410
    .line 411
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v7

    .line 421
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    .line 423
    .line 424
    const/4 v7, -0x1

    .line 425
    if-eqz v9, :cond_15

    .line 426
    .line 427
    if-le v12, v7, :cond_15

    .line 428
    .line 429
    if-eqz v27, :cond_13

    .line 430
    .line 431
    invoke-virtual/range {v27 .. v27}, Landroid/app/PendingIntent;->isActivity()Z

    .line 432
    .line 433
    .line 434
    move-result v7

    .line 435
    if-eqz v7, :cond_13

    .line 436
    .line 437
    const/4 v7, 0x1

    .line 438
    goto :goto_b

    .line 439
    :cond_13
    const/4 v7, 0x0

    .line 440
    :goto_b
    move/from16 v24, v7

    .line 441
    .line 442
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v7

    .line 446
    invoke-static {v7, v12}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 447
    .line 448
    .line 449
    move-result-object v7

    .line 450
    iget-object v11, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->context:Landroid/content/Context;

    .line 451
    .line 452
    invoke-virtual {v4, v11}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    .line 453
    .line 454
    .line 455
    move-result-object v11

    .line 456
    invoke-virtual {v7, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 457
    .line 458
    .line 459
    move-result-object v25

    .line 460
    new-instance v7, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;

    .line 461
    .line 462
    const/16 v28, 0x0

    .line 463
    .line 464
    const/16 v29, 0x0

    .line 465
    .line 466
    const/16 v30, 0x10

    .line 467
    .line 468
    move-object/from16 v23, v7

    .line 469
    .line 470
    move-object/from16 v26, v9

    .line 471
    .line 472
    invoke-direct/range {v23 .. v30}, Lcom/android/systemui/media/controls/models/player/MediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Ljava/lang/String;ZI)V

    .line 473
    .line 474
    .line 475
    iput-object v7, v15, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 476
    .line 477
    goto :goto_c

    .line 478
    :cond_14
    move-object/from16 v17, v9

    .line 479
    .line 480
    move-object/from16 v31, v11

    .line 481
    .line 482
    move-object/from16 v20, v12

    .line 483
    .line 484
    move-object/from16 v21, v13

    .line 485
    .line 486
    :cond_15
    :goto_c
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 487
    .line 488
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 489
    .line 490
    .line 491
    sget-object v7, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 492
    .line 493
    iput-object v7, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 494
    .line 495
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 496
    .line 497
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 498
    .line 499
    .line 500
    iput-object v7, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 501
    .line 502
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v7

    .line 506
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    invoke-virtual {v1, v7, v6, v9}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->createActionsFromState(Ljava/lang/String;Landroid/media/session/MediaController;Landroid/os/UserHandle;)Lcom/android/systemui/media/controls/models/player/MediaButton;

    .line 511
    .line 512
    .line 513
    move-result-object v13

    .line 514
    if-nez v13, :cond_20

    .line 515
    .line 516
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 517
    .line 518
    .line 519
    move-result-object v7

    .line 520
    new-instance v9, Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .line 524
    .line 525
    move-object/from16 v23, v15

    .line 526
    .line 527
    iget-object v15, v7, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 528
    .line 529
    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 530
    .line 531
    move-object/from16 v24, v13

    .line 532
    .line 533
    const-string v13, "android.compactActions"

    .line 534
    .line 535
    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    .line 536
    .line 537
    .line 538
    move-result-object v7

    .line 539
    if-eqz v7, :cond_16

    .line 540
    .line 541
    new-instance v13, Ljava/util/ArrayList;

    .line 542
    .line 543
    move-object/from16 v25, v10

    .line 544
    .line 545
    array-length v10, v7

    .line 546
    invoke-direct {v13, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    .line 548
    .line 549
    array-length v10, v7

    .line 550
    const/16 v18, 0x0

    .line 551
    .line 552
    move-object/from16 v26, v3

    .line 553
    .line 554
    move/from16 v3, v18

    .line 555
    .line 556
    :goto_d
    if-ge v3, v10, :cond_17

    .line 557
    .line 558
    aget v18, v7, v3

    .line 559
    .line 560
    move-object/from16 v19, v7

    .line 561
    .line 562
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 563
    .line 564
    .line 565
    move-result-object v7

    .line 566
    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    add-int/lit8 v3, v3, 0x1

    .line 570
    .line 571
    move-object/from16 v7, v19

    .line 572
    .line 573
    goto :goto_d

    .line 574
    :cond_16
    move-object/from16 v26, v3

    .line 575
    .line 576
    move-object/from16 v25, v10

    .line 577
    .line 578
    new-instance v13, Ljava/util/ArrayList;

    .line 579
    .line 580
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 581
    .line 582
    .line 583
    :cond_17
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 584
    .line 585
    .line 586
    move-result v3

    .line 587
    const/4 v7, 0x3

    .line 588
    if-le v3, v7, :cond_18

    .line 589
    .line 590
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    new-instance v7, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .line 598
    .line 599
    const-string v10, "Too many compact actions for "

    .line 600
    .line 601
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    .line 606
    .line 607
    const-string v3, ",limiting to first "

    .line 608
    .line 609
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .line 611
    .line 612
    const/4 v3, 0x3

    .line 613
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    .line 618
    .line 619
    move-result-object v7

    .line 620
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    .line 622
    .line 623
    const/4 v7, 0x0

    .line 624
    invoke-interface {v13, v7, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 625
    .line 626
    .line 627
    move-result-object v13

    .line 628
    goto :goto_e

    .line 629
    :cond_18
    const/4 v7, 0x0

    .line 630
    :goto_e
    if-eqz v15, :cond_1f

    .line 631
    .line 632
    array-length v3, v15

    .line 633
    :goto_f
    if-ge v7, v3, :cond_1f

    .line 634
    .line 635
    aget-object v10, v15, v7

    .line 636
    .line 637
    move/from16 v18, v3

    .line 638
    .line 639
    sget v3, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->MAX_NOTIFICATION_ACTIONS:I

    .line 640
    .line 641
    if-ne v7, v3, :cond_19

    .line 642
    .line 643
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v7

    .line 647
    new-instance v10, Ljava/lang/StringBuilder;

    .line 648
    .line 649
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 650
    .line 651
    .line 652
    const-string v15, "Too many notification actions for "

    .line 653
    .line 654
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    .line 656
    .line 657
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    const-string v7, ", limiting to first "

    .line 661
    .line 662
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    .line 674
    .line 675
    goto/16 :goto_14

    .line 676
    .line 677
    :cond_19
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 678
    .line 679
    .line 680
    move-result-object v3

    .line 681
    if-nez v3, :cond_1a

    .line 682
    .line 683
    iget-object v3, v10, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 684
    .line 685
    new-instance v10, Ljava/lang/StringBuilder;

    .line 686
    .line 687
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 688
    .line 689
    .line 690
    move-object/from16 v19, v15

    .line 691
    .line 692
    const-string v15, "No icon for action "

    .line 693
    .line 694
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    .line 699
    .line 700
    const-string v15, " "

    .line 701
    .line 702
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 706
    .line 707
    .line 708
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v3

    .line 712
    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .line 714
    .line 715
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 716
    .line 717
    .line 718
    move-result-object v3

    .line 719
    invoke-interface {v13, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    move/from16 v28, v5

    .line 723
    .line 724
    move-object/from16 v27, v8

    .line 725
    .line 726
    goto :goto_13

    .line 727
    :cond_1a
    move-object/from16 v19, v15

    .line 728
    .line 729
    iget-object v3, v10, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 730
    .line 731
    if-eqz v3, :cond_1b

    .line 732
    .line 733
    new-instance v3, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1;

    .line 734
    .line 735
    invoke-direct {v3, v10, v1}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$createActionsFromNotification$runnable$1;-><init>(Landroid/app/Notification$Action;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;)V

    .line 736
    .line 737
    .line 738
    goto :goto_10

    .line 739
    :cond_1b
    const/4 v3, 0x0

    .line 740
    :goto_10
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 741
    .line 742
    .line 743
    move-result-object v15

    .line 744
    if-eqz v15, :cond_1c

    .line 745
    .line 746
    invoke-virtual {v15}, Landroid/graphics/drawable/Icon;->getType()I

    .line 747
    .line 748
    .line 749
    move-result v15

    .line 750
    move-object/from16 v27, v8

    .line 751
    .line 752
    const/4 v8, 0x2

    .line 753
    if-ne v15, v8, :cond_1d

    .line 754
    .line 755
    const/4 v8, 0x1

    .line 756
    goto :goto_11

    .line 757
    :cond_1c
    move-object/from16 v27, v8

    .line 758
    .line 759
    :cond_1d
    const/4 v8, 0x0

    .line 760
    :goto_11
    if-eqz v8, :cond_1e

    .line 761
    .line 762
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v8

    .line 766
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 767
    .line 768
    .line 769
    move-result-object v15

    .line 770
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 771
    .line 772
    .line 773
    invoke-virtual {v15}, Landroid/graphics/drawable/Icon;->getResId()I

    .line 774
    .line 775
    .line 776
    move-result v15

    .line 777
    invoke-static {v8, v15}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 778
    .line 779
    .line 780
    move-result-object v8

    .line 781
    goto :goto_12

    .line 782
    :cond_1e
    invoke-virtual {v10}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    .line 783
    .line 784
    .line 785
    move-result-object v8

    .line 786
    :goto_12
    iget v15, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->themeText:I

    .line 787
    .line 788
    invoke-virtual {v8, v15}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    .line 789
    .line 790
    .line 791
    move-result-object v8

    .line 792
    iget-object v15, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->context:Landroid/content/Context;

    .line 793
    .line 794
    invoke-virtual {v8, v15}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 795
    .line 796
    .line 797
    move-result-object v8

    .line 798
    new-instance v15, Lcom/android/systemui/media/controls/models/player/MediaAction;

    .line 799
    .line 800
    iget-object v10, v10, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 801
    .line 802
    move/from16 v28, v5

    .line 803
    .line 804
    const/4 v5, 0x0

    .line 805
    invoke-direct {v15, v8, v3, v10, v5}, Lcom/android/systemui/media/controls/models/player/MediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 806
    .line 807
    .line 808
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    .line 810
    .line 811
    :goto_13
    add-int/lit8 v7, v7, 0x1

    .line 812
    .line 813
    move/from16 v3, v18

    .line 814
    .line 815
    move-object/from16 v15, v19

    .line 816
    .line 817
    move-object/from16 v8, v27

    .line 818
    .line 819
    move/from16 v5, v28

    .line 820
    .line 821
    goto/16 :goto_f

    .line 822
    .line 823
    :cond_1f
    :goto_14
    move/from16 v28, v5

    .line 824
    .line 825
    const/4 v3, 0x0

    .line 826
    new-instance v5, Lkotlin/Pair;

    .line 827
    .line 828
    invoke-direct {v5, v9, v13}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 829
    .line 830
    .line 831
    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    iput-object v7, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 836
    .line 837
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    iput-object v5, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 842
    .line 843
    goto :goto_15

    .line 844
    :cond_20
    move-object/from16 v26, v3

    .line 845
    .line 846
    move/from16 v28, v5

    .line 847
    .line 848
    move-object/from16 v25, v10

    .line 849
    .line 850
    move-object/from16 v24, v13

    .line 851
    .line 852
    move-object/from16 v23, v15

    .line 853
    .line 854
    const/4 v3, 0x0

    .line 855
    :goto_15
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 856
    .line 857
    .line 858
    move-result-object v5

    .line 859
    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 860
    .line 861
    invoke-virtual {v5, v14}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 862
    .line 863
    .line 864
    move-result v5

    .line 865
    if-eqz v5, :cond_21

    .line 866
    .line 867
    const/4 v5, 0x2

    .line 868
    :goto_16
    move v15, v5

    .line 869
    goto :goto_18

    .line 870
    :cond_21
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 871
    .line 872
    .line 873
    move-result-object v5

    .line 874
    if-eqz v5, :cond_22

    .line 875
    .line 876
    invoke-virtual {v5}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 877
    .line 878
    .line 879
    move-result v5

    .line 880
    const/4 v7, 0x1

    .line 881
    if-ne v5, v7, :cond_22

    .line 882
    .line 883
    const/4 v5, 0x1

    .line 884
    goto :goto_17

    .line 885
    :cond_22
    const/4 v5, 0x0

    .line 886
    :goto_17
    if-eqz v5, :cond_23

    .line 887
    .line 888
    const/4 v5, 0x0

    .line 889
    goto :goto_16

    .line 890
    :cond_23
    const/4 v5, 0x1

    .line 891
    goto :goto_16

    .line 892
    :goto_18
    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 893
    .line 894
    .line 895
    move-result-object v5

    .line 896
    if-eqz v5, :cond_24

    .line 897
    .line 898
    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    .line 899
    .line 900
    .line 901
    move-result v3

    .line 902
    invoke-static {v3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 903
    .line 904
    .line 905
    move-result v3

    .line 906
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 907
    .line 908
    .line 909
    move-result-object v3

    .line 910
    :cond_24
    move-object/from16 v27, v3

    .line 911
    .line 912
    iget-object v3, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaEntries:Ljava/util/LinkedHashMap;

    .line 913
    .line 914
    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v3

    .line 918
    check-cast v3, Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 919
    .line 920
    if-eqz v3, :cond_25

    .line 921
    .line 922
    iget-object v5, v3, Lcom/android/systemui/media/controls/models/player/MediaData;->instanceId:Lcom/android/internal/logging/InstanceId;

    .line 923
    .line 924
    if-nez v5, :cond_26

    .line 925
    .line 926
    :cond_25
    iget-object v5, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 927
    .line 928
    invoke-virtual {v5}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->getNewInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 929
    .line 930
    .line 931
    move-result-object v5

    .line 932
    :cond_26
    move-object v14, v5

    .line 933
    if-eqz v0, :cond_27

    .line 934
    .line 935
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 936
    .line 937
    goto :goto_19

    .line 938
    :cond_27
    const/4 v0, -0x1

    .line 939
    :goto_19
    move v13, v0

    .line 940
    const-string v0, "Unknown playback location"

    .line 941
    .line 942
    if-eqz v28, :cond_2b

    .line 943
    .line 944
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 945
    .line 946
    .line 947
    move-result-object v3

    .line 948
    invoke-virtual {v1, v13, v14, v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logSingleVsMultipleMediaAdded(ILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    .line 949
    .line 950
    .line 951
    iget-object v3, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 952
    .line 953
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 954
    .line 955
    .line 956
    move-result-object v5

    .line 957
    if-eqz v15, :cond_2a

    .line 958
    .line 959
    const/4 v6, 0x1

    .line 960
    if-eq v15, v6, :cond_29

    .line 961
    .line 962
    const/4 v6, 0x2

    .line 963
    if-ne v15, v6, :cond_28

    .line 964
    .line 965
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->REMOTE_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 966
    .line 967
    goto :goto_1a

    .line 968
    :cond_28
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 969
    .line 970
    .line 971
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 972
    .line 973
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 974
    .line 975
    .line 976
    throw v1

    .line 977
    :cond_29
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAST_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 978
    .line 979
    goto :goto_1a

    .line 980
    :cond_2a
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->LOCAL_MEDIA_ADDED:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 981
    .line 982
    :goto_1a
    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 983
    .line 984
    invoke-interface {v3, v0, v13, v5, v14}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 985
    .line 986
    .line 987
    goto :goto_1d

    .line 988
    :cond_2b
    if-eqz v3, :cond_2c

    .line 989
    .line 990
    iget v3, v3, Lcom/android/systemui/media/controls/models/player/MediaData;->playbackLocation:I

    .line 991
    .line 992
    if-ne v15, v3, :cond_2c

    .line 993
    .line 994
    const/4 v3, 0x1

    .line 995
    goto :goto_1b

    .line 996
    :cond_2c
    const/4 v3, 0x0

    .line 997
    :goto_1b
    if-nez v3, :cond_30

    .line 998
    .line 999
    iget-object v3, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 1000
    .line 1001
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v5

    .line 1005
    if-eqz v15, :cond_2f

    .line 1006
    .line 1007
    const/4 v6, 0x1

    .line 1008
    if-eq v15, v6, :cond_2e

    .line 1009
    .line 1010
    const/4 v6, 0x2

    .line 1011
    if-ne v15, v6, :cond_2d

    .line 1012
    .line 1013
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_REMOTE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1014
    .line 1015
    goto :goto_1c

    .line 1016
    :cond_2d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1017
    .line 1018
    .line 1019
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1020
    .line 1021
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    throw v1

    .line 1025
    :cond_2e
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_CAST:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1026
    .line 1027
    goto :goto_1c

    .line 1028
    :cond_2f
    sget-object v0, Lcom/android/systemui/media/controls/util/MediaUiEvent;->TRANSFER_TO_LOCAL:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    .line 1029
    .line 1030
    :goto_1c
    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    .line 1031
    .line 1032
    invoke-interface {v3, v0, v13, v5, v14}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 1033
    .line 1034
    .line 1035
    :cond_30
    :goto_1d
    iget-object v0, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 1036
    .line 1037
    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    .line 1038
    .line 1039
    .line 1040
    move-result-wide v18

    .line 1041
    iget-object v10, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->foregroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 1042
    .line 1043
    new-instance v9, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$1;

    .line 1044
    .line 1045
    move-object v0, v9

    .line 1046
    move-object/from16 v3, v26

    .line 1047
    .line 1048
    move-object/from16 v5, v25

    .line 1049
    .line 1050
    move-object/from16 v6, v31

    .line 1051
    .line 1052
    move-object/from16 v7, v21

    .line 1053
    .line 1054
    move-object/from16 v8, v20

    .line 1055
    .line 1056
    move-object/from16 v32, v9

    .line 1057
    .line 1058
    move-object/from16 v9, v17

    .line 1059
    .line 1060
    move-object/from16 v33, v10

    .line 1061
    .line 1062
    move-object v10, v11

    .line 1063
    move-object v11, v12

    .line 1064
    move-object/from16 v12, v24

    .line 1065
    .line 1066
    move/from16 v21, v13

    .line 1067
    .line 1068
    move-object/from16 v13, p0

    .line 1069
    .line 1070
    move-object/from16 v20, v14

    .line 1071
    .line 1072
    move-object/from16 v14, v16

    .line 1073
    .line 1074
    move/from16 v16, v15

    .line 1075
    .line 1076
    move-object/from16 v15, v23

    .line 1077
    .line 1078
    move-object/from16 v17, v27

    .line 1079
    .line 1080
    invoke-direct/range {v0 .. v22}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadMediaDataInBg$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/media/controls/models/player/MediaButton;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;Lkotlin/jvm/internal/Ref$ObjectRef;ILjava/lang/Boolean;JLcom/android/internal/logging/InstanceId;ILkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 1081
    .line 1082
    .line 1083
    move-object/from16 v1, v32

    .line 1084
    .line 1085
    move-object/from16 v0, v33

    .line 1086
    .line 1087
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1088
    .line 1089
    .line 1090
    :goto_1e
    return-void
    .line 1091
    .line 1092
    .line 1093
    .line 1094
    .line 1095
    .line 1096
    .line 1097
    .line 1098
    .line 1099
    .line 1100
    .line 1101
    .line 1102
    .line 1103
    .line 1104
    .line 1105
    .line 1106
    .line 1107
    .line 1108
    .line 1109
    .line 1110
    .line 1111
    .line 1112
    .line 1113
    .line 1114
    .line 1115
    .line 1116
    .line 1117
    .line 1118
    .line 1119
    .line 1120
    .line 1121
    .line 1122
    .line 1123
    .line 1124
    .line 1125
    .line 1126
    .line 1127
    .line 1128
    .line 1129
    .line 1130
    .line 1131
    .line 1132
    .line 1133
    .line 1134
    .line 1135
    .line 1136
    .line 1137
    .line 1138
    .line 1139
    .line 1140
    .line 1141
    .line 1142
    .line 1143
    .line 1144
    .line 1145
    .line 1146
    .line 1147
    .line 1148
    .line 1149
    .line 1150
    .line 1151
    .line 1152
    .line 1153
    .line 1154
    .line 1155
    .line 1156
    .line 1157
    .line 1158
    .line 1159
    .line 1160
    .line 1161
    .line 1162
    .line 1163
    .line 1164
    .line 1165
    .line 1166
    .line 1167
    .line 1168
    .line 1169
    .line 1170
    .line 1171
    .line 1172
    .line 1173
    .line 1174
    .line 1175
    .line 1176
    .line 1177
    .line 1178
    .line 1179
    .line 1180
    .line 1181
    .line 1182
    .line 1183
    .line 1184
    .line 1185
    .line 1186
    .line 1187
    .line 1188
    .line 1189
    .line 1190
    .line 1191
    .line 1192
    .line 1193
    .line 1194
    .line 1195
    .line 1196
    .line 1197
    .line 1198
    .line 1199
    .line 1200
    .line 1201
    .line 1202
    .line 1203
    .line 1204
    .line 1205
    .line 1206
    .line 1207
    .line 1208
    .line 1209
    .line 1210
    .line 1211
    .line 1212
    .line 1213
    .line 1214
    .line 1215
    .line 1216
    .line 1217
    .line 1218
    .line 1219
    .line 1220
    .line 1221
    .line 1222
    .line 1223
    .line 1224
    .line 1225
    .line 1226
    .line 1227
    .line 1228
    .line 1229
    .line 1230
    .line 1231
    .line 1232
    .line 1233
    .line 1234
    .line 1235
    .line 1236
    .line 1237
    .line 1238
    .line 1239
    .line 1240
    .line 1241
    .line 1242
    .line 1243
    .line 1244
    .line 1245
    .line 1246
    .line 1247
    .line 1248
    .line 1249
    .line 1250
    .line 1251
    .line 1252
    .line 1253
    .line 1254
    .line 1255
    .line 1256
    .line 1257
    .line 1258
    .line 1259
    .line 1260
    .line 1261
    .line 1262
    .line 1263
    .line 1264
    .line 1265
    .line 1266
    .line 1267
    .line 1268
    .line 1269
    .line 1270
    .line 1271
    .line 1272
    .line 1273
    .line 1274
    .line 1275
    .line 1276
    .line 1277
    .line 1278
    .line 1279
    .line 1280
    .line 1281
    .line 1282
    .line 1283
    .line 1284
    .line 1285
    .line 1286
    .line 1287
    .line 1288
    .line 1289
    .line 1290
    .line 1291
    .line 1292
    .line 1293
    .line 1294
    .line 1295
    .line 1296
    .line 1297
    .line 1298
    .line 1299
    .line 1300
    .line 1301
    .line 1302
    .line 1303
    .line 1304
    .line 1305
    .line 1306
    .line 1307
    .line 1308
    .line 1309
    .line 1310
    .line 1311
    .line 1312
    .line 1313
    .line 1314
    .line 1315
    .line 1316
    .line 1317
    .line 1318
    .line 1319
    .line 1320
    .line 1321
    .line 1322
    .line 1323
    .line 1324
    .line 1325
    .line 1326
    .line 1327
    .line 1328
    .line 1329
    .line 1330
    .line 1331
    .line 1332
    .line 1333
    .line 1334
    .line 1335
    .line 1336
    .line 1337
    .line 1338
    .line 1339
    .line 1340
    .line 1341
    .line 1342
    .line 1343
    .line 1344
    .line 1345
    .line 1346
    .line 1347
    .line 1348
    .line 1349
    .line 1350
    .line 1351
    .line 1352
    .line 1353
    .line 1354
    .line 1355
    .line 1356
    .line 1357
    .line 1358
    .line 1359
    .line 1360
    .line 1361
    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    .line 1384
    .line 1385
    .line 1386
    .line 1387
    .line 1388
    .line 1389
    .line 1390
    .line 1391
    .line 1392
    .line 1393
    .line 1394
    .line 1395
    .line 1396
    .line 1397
    .line 1398
    .line 1399
    .line 1400
    .line 1401
    .line 1402
    .line 1403
    .line 1404
    .line 1405
    .line 1406
    .line 1407
    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    .line 1624
    .line 1625
    .line 1626
    .line 1627
    .line 1628
    .line 1629
    .line 1630
    .line 1631
    .line 1632
    .line 1633
    .line 1634
    .line 1635
    .line 1636
    .line 1637
    .line 1638
    .line 1639
    .line 1640
    .line 1641
    .line 1642
    .line 1643
    .line 1644
    .line 1645
    .line 1646
    .line 1647
    .line 1648
    .line 1649
    .line 1650
    .line 1651
    .line 1652
    .line 1653
    .line 1654
    .line 1655
    .line 1656
    .line 1657
    .line 1658
    .line 1659
    .line 1660
    .line 1661
    .line 1662
    .line 1663
    .line 1664
    .line 1665
    .line 1666
    .line 1667
    .line 1668
    .line 1669
    .line 1670
    .line 1671
    .line 1672
    .line 1673
    .line 1674
    .line 1675
    .line 1676
    .line 1677
    .line 1678
    .line 1679
    .line 1680
    .line 1681
    .line 1682
    .line 1683
    .line 1684
    .line 1685
    .line 1686
    .line 1687
    .line 1688
    .line 1689
    .line 1690
    .line 1691
    .line 1692
    .line 1693
    .line 1694
    .line 1695
    .line 1696
    .line 1697
    .line 1698
    .line 1699
    .line 1700
    .line 1701
    .line 1702
    .line 1703
    .line 1704
    .line 1705
    .line 1706
    .line 1707
    .line 1708
    .line 1709
    .line 1710
    .line 1711
    .line 1712
    .line 1713
    .line 1714
    .line 1715
    .line 1716
    .line 1717
    .line 1718
    .line 1719
    .line 1720
    .line 1721
    .line 1722
    .line 1723
    .line 1724
    .line 1725
    .line 1726
    .line 1727
    .line 1728
    .line 1729
    .line 1730
    .line 1731
    .line 1732
    .line 1733
    .line 1734
    .line 1735
    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
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
    .line 2121
    .line 2122
    .line 2123
    .line 2124
    .line 2125
    .line 2126
    .line 2127
    .line 2128
    .line 2129
    .line 2130
    .line 2131
    .line 2132
    .line 2133
    .line 2134
    .line 2135
    .line 2136
    .line 2137
    .line 2138
    .line 2139
    .line 2140
    .line 2141
    .line 2142
    .line 2143
    .line 2144
    .line 2145
    .line 2146
    .line 2147
    .line 2148
    .line 2149
    .line 2150
    .line 2151
    .line 2152
    .line 2153
    .line 2154
    .line 2155
    .line 2156
    .line 2157
    .line 2158
    .line 2159
    .line 2160
    .line 2161
    .line 2162
    .line 2163
    .line 2164
    .line 2165
    .line 2166
    .line 2167
    .line 2168
    .line 2169
    .line 2170
    .line 2171
    .line 2172
    .line 2173
    .line 2174
    .line 2175
    .line 2176
    .line 2177
    .line 2178
    .line 2179
    .line 2180
    .line 2181
    .line 2182
    .line 2183
    .line 2184
    .line 2185
    .line 2186
    .line 2187
    .line 2188
    .line 2189
    .line 2190
    .line 2191
    .line 2192
    .line 2193
    .line 2194
    .line 2195
    .line 2196
    .line 2197
    .line 2198
    .line 2199
    .line 2200
    .line 2201
    .line 2202
    .line 2203
    .line 2204
    .line 2205
    .line 2206
    .line 2207
    .line 2208
    .line 2209
    .line 2210
    .line 2211
    .line 2212
    .line 2213
    .line 2214
    .line 2215
    .line 2216
    .line 2217
    .line 2218
    .line 2219
    .line 2220
    .line 2221
    .line 2222
    .line 2223
    .line 2224
    .line 2225
    .line 2226
    .line 2227
    .line 2228
    .line 2229
    .line 2230
    .line 2231
    .line 2232
    .line 2233
    .line 2234
    .line 2235
    .line 2236
    .line 2237
    .line 2238
    .line 2239
    .line 2240
    .line 2241
    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    .line 2272
    .line 2273
    .line 2274
    .line 2275
    .line 2276
    .line 2277
    .line 2278
    .line 2279
    .line 2280
    .line 2281
    .line 2282
    .line 2283
    .line 2284
    .line 2285
    .line 2286
    .line 2287
    .line 2288
    .line 2289
    .line 2290
    .line 2291
    .line 2292
    .line 2293
    .line 2294
    .line 2295
    .line 2296
    .line 2297
    .line 2298
    .line 2299
    .line 2300
    .line 2301
    .line 2302
    .line 2303
    .line 2304
    .line 2305
    .line 2306
    .line 2307
    .line 2308
    .line 2309
    .line 2310
    .line 2311
    .line 2312
    .line 2313
    .line 2314
    .line 2315
    .line 2316
    .line 2317
    .line 2318
    .line 2319
    .line 2320
    .line 2321
    .line 2322
    .line 2323
    .line 2324
    .line 2325
    .line 2326
    .line 2327
    .line 2328
    .line 2329
    .line 2330
    .line 2331
    .line 2332
    .line 2333
    .line 2334
    .line 2335
    .line 2336
    .line 2337
    .line 2338
    .line 2339
    .line 2340
    .line 2341
    .line 2342
    .line 2343
    .line 2344
    .line 2345
    .line 2346
    .line 2347
    .line 2348
    .line 2349
    .line 2350
    .line 2351
    .line 2352
    .line 2353
    .line 2354
    .line 2355
    .line 2356
    .line 2357
    .line 2358
    .line 2359
    .line 2360
    .line 2361
    .line 2362
    .line 2363
    .line 2364
    .line 2365
    .line 2366
    .line 2367
    .line 2368
    .line 2369
    .line 2370
    .line 2371
    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    .line 2377
    .line 2378
    .line 2379
    .line 2380
    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    .line 2386
    .line 2387
    .line 2388
    .line 2389
    .line 2390
    .line 2391
    .line 2392
    .line 2393
    .line 2394
    .line 2395
    .line 2396
    .line 2397
    .line 2398
    .line 2399
    .line 2400
    .line 2401
    .line 2402
    .line 2403
    .line 2404
    .line 2405
    .line 2406
    .line 2407
    .line 2408
    .line 2409
    .line 2410
    .line 2411
    .line 2412
    .line 2413
    .line 2414
    .line 2415
    .line 2416
    .line 2417
    .line 2418
    .line 2419
    .line 2420
    .line 2421
    .line 2422
    .line 2423
    .line 2424
    .line 2425
    .line 2426
    .line 2427
    .line 2428
    .line 2429
    .line 2430
    .line 2431
    .line 2432
    .line 2433
    .line 2434
    .line 2435
    .line 2436
    .line 2437
    .line 2438
    .line 2439
    .line 2440
    .line 2441
    .line 2442
    .line 2443
    .line 2444
    .line 2445
    .line 2446
    .line 2447
    .line 2448
    .line 2449
    .line 2450
    .line 2451
    .line 2452
    .line 2453
    .line 2454
    .line 2455
    .line 2456
    .line 2457
    .line 2458
    .line 2459
    .line 2460
    .line 2461
    .line 2462
    .line 2463
    .line 2464
    .line 2465
    .line 2466
    .line 2467
    .line 2468
    .line 2469
    .line 2470
    .line 2471
    .line 2472
    .line 2473
    .line 2474
    .line 2475
    .line 2476
    .line 2477
    .line 2478
    .line 2479
    .line 2480
    .line 2481
    .line 2482
    .line 2483
    .line 2484
    .line 2485
    .line 2486
    .line 2487
    .line 2488
    .line 2489
    .line 2490
    .line 2491
    .line 2492
    .line 2493
    .line 2494
    .line 2495
    .line 2496
    .line 2497
    .line 2498
    .line 2499
    .line 2500
    .line 2501
    .line 2502
    .line 2503
    .line 2504
    .line 2505
    .line 2506
    .line 2507
    .line 2508
    .line 2509
    .line 2510
    .line 2511
    .line 2512
    .line 2513
    .line 2514
    .line 2515
    .line 2516
    .line 2517
    .line 2518
    .line 2519
    .line 2520
    .line 2521
    .line 2522
    .line 2523
    .line 2524
    .line 2525
    .line 2526
    .line 2527
    .line 2528
    .line 2529
    .line 2530
    .line 2531
    .line 2532
    .line 2533
    .line 2534
    .line 2535
    .line 2536
    .line 2537
    .line 2538
    .line 2539
    .line 2540
    .line 2541
    .line 2542
    .line 2543
    .line 2544
    .line 2545
    .line 2546
    .line 2547
    .line 2548
    .line 2549
    .line 2550
    .line 2551
    .line 2552
    .line 2553
    .line 2554
    .line 2555
    .line 2556
    .line 2557
    .line 2558
    .line 2559
    .line 2560
    .line 2561
    .line 2562
    .line 2563
    .line 2564
    .line 2565
    .line 2566
    .line 2567
    .line 2568
    .line 2569
    .line 2570
    .line 2571
    .line 2572
    .line 2573
    .line 2574
    .line 2575
    .line 2576
    .line 2577
    .line 2578
    .line 2579
    .line 2580
    .line 2581
    .line 2582
    .line 2583
    .line 2584
    .line 2585
    .line 2586
    .line 2587
    .line 2588
    .line 2589
    .line 2590
    .line 2591
    .line 2592
    .line 2593
    .line 2594
    .line 2595
    .line 2596
    .line 2597
    .line 2598
    .line 2599
    .line 2600
    .line 2601
    .line 2602
    .line 2603
    .line 2604
    .line 2605
    .line 2606
    .line 2607
    .line 2608
    .line 2609
    .line 2610
    .line 2611
    .line 2612
    .line 2613
    .line 2614
    .line 2615
    .line 2616
    .line 2617
    .line 2618
    .line 2619
    .line 2620
    .line 2621
    .line 2622
    .line 2623
    .line 2624
    .line 2625
    .line 2626
    .line 2627
    .line 2628
    .line 2629
    .line 2630
    .line 2631
    .line 2632
    .line 2633
    .line 2634
    .line 2635
    .line 2636
    .line 2637
    .line 2638
    .line 2639
    .line 2640
    .line 2641
    .line 2642
    .line 2643
    .line 2644
    .line 2645
    .line 2646
    .line 2647
    .line 2648
    .line 2649
    .line 2650
    .line 2651
    .line 2652
    .line 2653
    .line 2654
    .line 2655
    .line 2656
    .line 2657
    .line 2658
    .line 2659
    .line 2660
    .line 2661
    .line 2662
    .line 2663
    .line 2664
    .line 2665
    .line 2666
    .line 2667
    .line 2668
    .line 2669
    .line 2670
    .line 2671
    .line 2672
    .line 2673
    .line 2674
    .line 2675
    .line 2676
    .line 2677
    .line 2678
    .line 2679
    .line 2680
    .line 2681
    .line 2682
    .line 2683
    .line 2684
    .line 2685
    .line 2686
    .line 2687
    .line 2688
    .line 2689
    .line 2690
    .line 2691
    .line 2692
    .line 2693
.end method
