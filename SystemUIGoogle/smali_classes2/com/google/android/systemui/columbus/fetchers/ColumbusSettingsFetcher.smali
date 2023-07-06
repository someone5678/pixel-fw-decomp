.class public final Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;
.super Ljava/lang/Object;
.source "ColumbusSettingsFetcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusSettingsFetcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusSettingsFetcher.kt\ncom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,132:1\n47#2:133\n49#2:137\n47#2:138\n49#2:142\n50#3:134\n55#3:136\n50#3:139\n55#3:141\n106#4:135\n106#4:140\n*S KotlinDebug\n*F\n+ 1 ColumbusSettingsFetcher.kt\ncom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher\n*L\n62#1:133\n62#1:137\n99#1:138\n99#1:142\n62#1:134\n62#1:136\n99#1:139\n99#1:141\n62#1:135\n99#1:140\n*E\n"
.end annotation


# instance fields
.field public final backupPackageName:Ljava/lang/String;

.field public final columbusEnabled:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final lowSensitivity:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final packageStats:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedAction:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedApp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final selectedProfileId:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final selectedShortcut:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final silenceAlertsEnabled:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/content/Context;Lcom/android/systemui/util/BackupManagerProxy;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 4
    .line 5
    const-string v0, "columbus_enabled"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p4, v0, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->columbusEnabled:Lkotlinx/coroutines/flow/StateFlow;

    .line 13
    .line 14
    const-string v0, "columbus_action"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-virtual {p4, v0, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedAction:Lkotlinx/coroutines/flow/StateFlow;

    .line 23
    .line 24
    const-string v0, "columbus_launch_app"

    .line 25
    .line 26
    invoke-virtual {p4, v0, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v3, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$1;

    .line 31
    .line 32
    invoke-direct {v3, v0}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x3

    .line 36
    invoke-static {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    const/4 v5, 0x0

    .line 41
    invoke-static {v3, p1, v4, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iput-object v3, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedApp:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 46
    .line 47
    const-string v3, "columbus_launch_app_shortcut"

    .line 48
    .line 49
    invoke-virtual {p4, v3, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iput-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedShortcut:Lkotlinx/coroutines/flow/StateFlow;

    .line 54
    .line 55
    const-string v2, "columbus_launch_profile_id"

    .line 56
    .line 57
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iget-object v3, p4, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->cachedIntFlows:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    new-instance v4, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;

    .line 64
    .line 65
    invoke-direct {v4, p4, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher$getIntSecureSettingFlow$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;Landroid/net/Uri;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lkotlinx/coroutines/flow/StateFlow;

    .line 73
    .line 74
    iput-object v2, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->selectedProfileId:Lkotlinx/coroutines/flow/StateFlow;

    .line 75
    .line 76
    const-string v2, "columbus_low_sensitivity"

    .line 77
    .line 78
    invoke-virtual {p4, v2, v1}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->lowSensitivity:Lkotlinx/coroutines/flow/StateFlow;

    .line 83
    .line 84
    const-string v1, "columbus_silence_alerts"

    .line 85
    .line 86
    const/4 v2, 0x1

    .line 87
    invoke-virtual {p4, v1, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getBooleanSecureSettingFlow(Ljava/lang/String;Z)Lkotlinx/coroutines/flow/StateFlow;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iput-object v1, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->silenceAlertsEnabled:Lkotlinx/coroutines/flow/StateFlow;

    .line 92
    .line 93
    const-string v1, "columbus_package_stats"

    .line 94
    .line 95
    const-string v2, "[]"

    .line 96
    .line 97
    invoke-virtual {p4, v1, v2}, Lcom/google/android/systemui/columbus/fetchers/ContentFetcher;->getStringSecureSettingFlow(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/flow/StateFlow;

    .line 98
    .line 99
    .line 100
    move-result-object p4

    .line 101
    new-instance v1, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2;

    .line 102
    .line 103
    invoke-direct {v1, p4}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v0}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    new-instance v0, Lorg/json/JSONArray;

    .line 111
    .line 112
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {v1, p1, p4, v0}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    iput-object p4, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->packageStats:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 120
    .line 121
    invoke-virtual {p5}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p4

    .line 125
    iput-object p4, p0, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;->backupPackageName:Ljava/lang/String;

    .line 126
    .line 127
    new-instance p4, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;

    .line 128
    .line 129
    invoke-direct {p4, p0, p3, p6, v5}, Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher$1;-><init>(Lcom/google/android/systemui/columbus/fetchers/ColumbusSettingsFetcher;Lcom/google/android/systemui/columbus/fetchers/UserFetcher;Lcom/android/systemui/util/BackupManagerProxy;Lkotlin/coroutines/Continuation;)V

    .line 130
    .line 131
    .line 132
    const/4 p0, 0x2

    .line 133
    invoke-static {p1, p2, v5, p4, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 134
    .line 135
    .line 136
    return-void
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    .line 209
    .line 210
    .line 211
    .line 212
    .line 213
    .line 214
    .line 215
    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    .line 221
    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    .line 232
    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    .line 240
    .line 241
    .line 242
    .line 243
    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    .line 249
    .line 250
    .line 251
    .line 252
    .line 253
    .line 254
    .line 255
    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    .line 294
    .line 295
    .line 296
    .line 297
    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    .line 307
    .line 308
    .line 309
    .line 310
    .line 311
    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    .line 317
    .line 318
    .line 319
    .line 320
    .line 321
    .line 322
    .line 323
    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    .line 378
    .line 379
    .line 380
    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    .line 391
    .line 392
    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    .line 398
    .line 399
    .line 400
    .line 401
    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    .line 493
    .line 494
    .line 495
    .line 496
    .line 497
    .line 498
    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    .line 504
    .line 505
    .line 506
    .line 507
    .line 508
    .line 509
    .line 510
    .line 511
    .line 512
    .line 513
    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
.end method
