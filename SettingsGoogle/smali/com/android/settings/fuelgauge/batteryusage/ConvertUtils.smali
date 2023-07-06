.class public final Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field private static final EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

.field private static final EMPTY_BATTERY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation
.end field

.field static PERCENTAGE_OF_TOTAL_THRESHOLD:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 53
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 59
    sput-wide v0, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->PERCENTAGE_OF_TOTAL_THRESHOLD:D

    return-void
.end method

.method public static convertToBatteryHistEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 10

    .line 132
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 133
    invoke-static/range {v1 .. v9}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJ)Landroid/content/ContentValues;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public static convertToContentValues(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;IIIJJ)Landroid/content/ContentValues;
    .locals 4

    .line 93
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "packageName"

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "uid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "userId"

    .line 96
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appLabel"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isHidden()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isHidden"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "totalPower"

    .line 102
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "consumePower"

    .line 104
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 106
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    .line 107
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string/jumbo v1, "percentOfTotal"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "foregroundUsageTimeInMs"

    .line 108
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "backgroundUsageTimeInMs"

    .line 110
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getPowerComponentId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drainType"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumerType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "consumerType"

    .line 114
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    const-string p0, "fake_package"

    .line 117
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "bootTimestamp"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 120
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string/jumbo p1, "timestamp"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "zoneId"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "batteryLevel"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "batteryStatus"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "batteryHealth"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static createOtherUsersEntry(Landroid/content/Context;DD)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 12

    .line 427
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide/high16 v1, -0x8000000000000000L

    .line 428
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "userId"

    .line 429
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 430
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "consumerType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 433
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    new-instance v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-direct {v11, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-wide v9, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    div-double/2addr v2, p3

    .line 439
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    return-object v1
.end method

.method static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 1

    if-nez p0, :cond_0

    .line 417
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0

    .line 420
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 421
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    goto :goto_0

    .line 422
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static resolveMultiUsersData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 302
    const-class v2, Landroid/os/UserManager;

    .line 303
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-static {v2}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 305
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    .line 307
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 310
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 311
    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 312
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 313
    iget-object v13, v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 314
    iget v14, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3

    goto :goto_2

    .line 318
    :cond_3
    iget-wide v13, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    int-to-long v6, v1

    cmp-long v6, v13, v6

    if-eqz v6, :cond_2

    int-to-long v6, v2

    cmp-long v6, v13, v6

    if-nez v6, :cond_4

    goto :goto_2

    .line 323
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 324
    iget-wide v6, v12, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v10, v6

    .line 325
    invoke-virtual {v12}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v6

    add-double/2addr v8, v6

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x0

    cmpl-double v5, v8, v6

    if-eqz v5, :cond_1

    .line 328
    invoke-static {v0, v10, v11, v8, v9}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->createOtherUsersEntry(Landroid/content/Context;DD)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public static utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 145
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    const-string v0, "MMM dd,yyyy HH:mm:ss"

    .line 147
    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 148
    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utcToLocalTimeDayOfWeek(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 0

    .line 165
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p3, :cond_0

    const-string p3, "E"

    goto :goto_0

    :cond_0
    const-string p3, "EEEE"

    .line 166
    :goto_0
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static utcToLocalTimeHour(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 0

    .line 154
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p3, :cond_0

    const-string p3, "HHm"

    goto :goto_0

    :cond_0
    const-string p3, "ha"

    .line 158
    :goto_0
    invoke-static {p0, p3}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 159
    invoke-static {p0, p1, p2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
