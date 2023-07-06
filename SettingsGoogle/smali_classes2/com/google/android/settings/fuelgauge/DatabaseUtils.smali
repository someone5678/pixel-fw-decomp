.class public final Lcom/google/android/settings/fuelgauge/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# static fields
.field public static final BATTERY_CONTENT_URI:Landroid/net/Uri;

.field private static final CLEAR_MEMORY_DELAYED_MS:J

.field private static final CLEAR_MEMORY_THRESHOLD_MS:J


# direct methods
.method public static synthetic $r8$lambda$Hz6rdfK0ezakW-Lrl6umZytBxsA(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->lambda$sendBatteryEntryData$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$_082BFpfaenX8awCNQoUXaVlTvY(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 0

    invoke-static/range {p0 .. p9}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->lambda$sendBatteryEntryData$1(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s3A8RgfQEHnBZHMvDYs-JrbrFYs()V
    .locals 0

    invoke-static {}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->lambda$clearMemory$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x5

    .line 53
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->CLEAR_MEMORY_THRESHOLD_MS:J

    const-wide/16 v0, 0x2

    .line 54
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->CLEAR_MEMORY_DELAYED_MS:J

    .line 66
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 68
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.google.android.settings.intelligence.modules.battery.provider"

    .line 69
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "BatteryState"

    .line 70
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private static clearMemory()V
    .locals 4

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->CLEAR_MEMORY_THRESHOLD_MS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    return-void

    .line 490
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 491
    new-instance v1, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda2;-><init>()V

    sget-wide v2, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->CLEAR_MEMORY_DELAYED_MS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static contains([JJ)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 292
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 293
    aget-wide v2, p0, v1

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static findNearestTimestamp(Ljava/util/List;J)[J
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)[J"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 274
    fill-array-data v0, :array_0

    .line 276
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, p1

    if-gtz v1, :cond_1

    aget-wide v6, v0, v3

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    aput-wide v4, v0, v3

    :cond_1
    if-ltz v1, :cond_0

    aget-wide v6, v0, v2

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    aput-wide v4, v0, v2

    goto :goto_0

    :cond_2
    aget-wide p0, v0, v3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p2, p0, v4

    const-wide/16 v4, 0x0

    if-nez p2, :cond_3

    move-wide p0, v4

    :cond_3
    aput-wide p0, v0, v3

    aget-wide p0, v0, v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long p2, p0, v6

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide v4, p0

    :goto_1
    aput-wide v4, v0, v2

    return-object v0

    :array_0
    .array-data 8
        -0x8000000000000000L
        0x7fffffffffffffffL
    .end array-data
.end method

.method private static getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 449
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getBatteryLevel(Landroid/content/Intent;)I
    .locals 4

    const-string v0, "level"

    const/4 v1, -0x1

    .line 454
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    const/4 v3, 0x0

    .line 455
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v0, p0

    .line 458
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getHistoryMapSinceLastFullCharge(Landroid/content/Context;Ljava/util/Calendar;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 225
    invoke-static {p0, p1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getStartTimestampForLastFullCharge(Landroid/content/Context;Ljava/util/Calendar;)J

    move-result-wide v2

    .line 227
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "content"

    .line 229
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "com.google.android.settings.intelligence.modules.battery.provider"

    .line 230
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v4, "BatteryState"

    .line 231
    invoke-virtual {p1, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 233
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    .line 232
    invoke-virtual {p1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 234
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 237
    invoke-static {p0, p1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->loadHistoryMapFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p0

    const-string p1, "DatabaseUtils"

    if-eqz p0, :cond_1

    .line 238
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 242
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "getHistoryMapSinceLastFullCharge() size=%d in %d/ms"

    .line 241
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "getHistoryMapSinceLastFullCharge() returns empty or null"

    .line 239
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0
.end method

.method static getLastFullChargeTimestampPref(Landroid/content/Context;)J
    .locals 3

    .line 188
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_full_charge_timestamp_key"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 463
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "battery_module_preference"

    const/4 v1, 0x0

    .line 465
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static getStartTimestampForLastFullCharge(Landroid/content/Context;Ljava/util/Calendar;)J
    .locals 2

    .line 255
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getLastFullChargeTimestampPref(Landroid/content/Context;)J

    move-result-wide v0

    .line 256
    invoke-static {p1}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getTimestampSixDaysAgo(Ljava/util/Calendar;)J

    move-result-wide p0

    .line 257
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getTimestampSixDaysAgo(Ljava/util/Calendar;)J
    .locals 2

    if-nez p0, :cond_0

    .line 471
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    :goto_0
    const/4 v0, 0x6

    const/4 v1, -0x6

    .line 472
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 473
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 474
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 475
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 476
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 477
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method static getTimestampSlotsForLast24Hr(Ljava/time/Clock;)[J
    .locals 8

    const/16 v0, 0x19

    new-array v1, v0, [J

    .line 264
    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_0

    int-to-long v6, p0

    mul-long/2addr v6, v4

    sub-long v6, v2, v6

    .line 267
    aput-wide v6, v1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static isContentProviderEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.settings.intelligence"

    const-string v2, "com.google.android.settings.intelligence.modules.battery.impl.BatterySettingsContentProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isWorkProfileUser(Landroid/content/Context;)Z
    .locals 1

    .line 482
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 483
    invoke-virtual {p0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$clearMemory$2()V
    .locals 2

    .line 492
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 493
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 494
    invoke-static {}, Ljava/lang/System;->gc()V

    const-string v0, "DatabaseUtils"

    const-string v1, "invoke clearMemory()"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic lambda$sendBatteryEntryData$0(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 13

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v2

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    const/4 v5, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    if-nez v4, :cond_1

    cmp-long v4, v0, v9

    if-nez v4, :cond_0

    cmp-long v4, v2, v9

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v4, v8

    const/4 v11, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v4, v11

    const-string v11, "no consumed power but has running time for %s time=%d|%d"

    .line 112
    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v11, "DatabaseUtils"

    invoke-static {v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v11

    cmpl-double p0, v11, v6

    if-nez p0, :cond_2

    cmp-long p0, v0, v9

    if-nez p0, :cond_2

    cmp-long p0, v2, v9

    if-eqz p0, :cond_3

    :cond_2
    move v5, v8

    :cond_3
    return v5
.end method

.method private static synthetic lambda$sendBatteryEntryData$1(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJLcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 9

    move-object/from16 v0, p9

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 121
    invoke-static/range {v0 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJ)Landroid/content/ContentValues;

    move-result-object v0

    move-object v1, p0

    .line 120
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static loadHistoryMapFromContentProvider(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 408
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->isWorkProfileUser(Landroid/content/Context;)Z

    move-result v0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadHistoryMapFromContentProvider() isWorkProfileUser:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatabaseUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 412
    invoke-virtual {p0, v0, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "context.createPackageContextAsUser() fail:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 421
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->isContentProviderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 424
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 427
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 431
    :cond_2
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 432
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/database/Cursor;)V

    .line 433
    iget-wide v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    .line 434
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_3

    .line 438
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 439
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_3
    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 443
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception p1

    .line 425
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_5
    :goto_3
    if-eqz p0, :cond_6

    .line 443
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0
.end method

.method static saveLastFullChargeTimestampPref(Landroid/content/Context;IIJ)V
    .locals 0

    .line 172
    invoke-static {p1, p2}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(II)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 178
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "last_full_charge_timestamp_key"

    .line 179
    invoke-interface {p0, p1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 180
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    if-nez p0, :cond_1

    .line 182
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "saveLastFullChargeTimestampPref() fail: value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatabaseUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static sendBatteryEntryData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 88
    invoke-static/range {p0 .. p0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getBatteryIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    const-string v4, "DatabaseUtils"

    if-nez v0, :cond_0

    const-string v0, "sendBatteryEntryData(): cannot fetch battery intent"

    .line 90
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->clearMemory()V

    return-object v3

    .line 94
    :cond_0
    invoke-static {v0}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v15

    const-string v5, "status"

    const/4 v13, 0x1

    .line 95
    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v5, "health"

    .line 97
    invoke-virtual {v0, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 100
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 104
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 106
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v8, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda1;

    move-object v5, v8

    move-object v6, v10

    move-object/from16 v7, p2

    move-object v3, v8

    move v8, v15

    move-wide/from16 v18, v1

    move-object v1, v9

    move v9, v14

    move-object v2, v10

    move v10, v0

    move-wide/from16 p1, v11

    move-wide/from16 v11, v16

    move/from16 v20, v13

    move/from16 v21, v14

    move-wide/from16 v13, p1

    invoke-direct/range {v5 .. v14}, Lcom/google/android/settings/fuelgauge/DatabaseUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;Landroid/os/BatteryUsageStats;IIIJJ)V

    .line 120
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v18, v1

    move-object v2, v10

    move-wide/from16 p1, v11

    move/from16 v20, v13

    move/from16 v21, v14

    .line 132
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 134
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 136
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 138
    :try_start_0
    sget-object v3, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bulkInsert() data into database error:\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v13, v20

    :goto_1
    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v15

    move/from16 v8, v21

    move v9, v0

    move-wide/from16 v10, v16

    move-wide/from16 v12, p1

    .line 145
    invoke-static/range {v5 .. v13}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJ)Landroid/content/ContentValues;

    move-result-object v3

    .line 154
    :try_start_1
    sget-object v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert() data into database error:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move/from16 v13, v20

    :goto_3
    move/from16 v5, v21

    .line 160
    invoke-static {v3, v5, v15, v6, v7}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->saveLastFullChargeTimestampPref(Landroid/content/Context;IIJ)V

    .line 161
    sget-object v0, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->BATTERY_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 163
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v18

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v20

    const-string v1, "sendBatteryEntryData() size=%d in %d/ms"

    .line 162
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/google/android/settings/fuelgauge/DatabaseUtils;->clearMemory()V

    return-object v2
.end method
