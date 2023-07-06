.class public final Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;
.super Ljava/lang/Object;
.source "DataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask;,
        Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;,
        Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;
    }
.end annotation


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

.field static final PERCENTAGE_OF_TOTAL_THRESHOLD:D = 1.0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final SELECTED_INDEX_ALL:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6Eiy3Dn7ks1KXarqTHK3dtbksDo(Ljava/util/Map;Ljava/util/Set;[Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$purgeLowPercentageAndFakeData$7(Ljava/util/Map;Ljava/util/Set;[Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AU1oLKiJCi_Boig7AYy9hepddr8(J[JLjava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$findNearestTimestamp$0(J[JLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HkLDJ4ImSZHsNwSTeyvdh8sbkMk(Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$insertAllUsageDiffData$5(Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IRwbRYLrK9XqnlKnry_4s1ZfFjU(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getPeriodBatteryLevelData$4(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_NwAJ9znn-kqOzm6mCbK0E7Gmac(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$convertToBatteryHistEntry$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$b6jxmUcdA7CU_-yCR0n-aFxCAZE(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$getHourlyPeriodBatteryLevelData$3(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eaPdjSt-ZnrcS13yE1Bb6bBIogg(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$loadLabelAndIcon$9(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o39-xE0ImafdEDQb0qdW9n6T9vY(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$loadLabelAndIcon$8(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p-XTpBdkB_OWLCA-4w1lC21-6yA(Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$convertToBatteryHistEntry$2(Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pY4MeMhQ1deFIROo0zTt37laXX8(Ljava/util/Set;[Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->lambda$purgeLowPercentageAndFakeData$6(Ljava/util/Set;[Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetBatteryUsageMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smloadLabelAndIcon(Ljava/util/Map;)V
    .locals 0

    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->loadLabelAndIcon(Ljava/util/Map;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    return-void
.end method

.method private static computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 1023
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1024
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    if-nez v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clone()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1030
    :cond_0
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 1032
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    .line 1034
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    iget-wide p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v2, p0

    iput-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    :goto_0
    return-void
.end method

.method private static contains(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1155
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1156
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static contains(Ljava/lang/String;[Ljava/lang/CharSequence;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 166
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 167
    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static convertToBatteryHistEntry(Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 538
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 542
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda3;-><init>()V

    .line 543
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda4;-><init>(Landroid/os/BatteryUsageStats;)V

    .line 550
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 553
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "DataProcessor"

    const-string p1, "batteryEntryList is null or empty in convertToBatteryHistEntry()"

    .line 539
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static createOtherUsersEntry(Landroid/content/Context;D)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 12

    .line 1185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide/high16 v1, -0x8000000000000000L

    .line 1186
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v2, "userId"

    .line 1187
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 1188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "consumerType"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    new-instance v11, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-direct {v11, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;-><init>(Landroid/content/ContentValues;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-wide v9, p1

    invoke-direct/range {v3 .. v11}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    return-object v1
.end method

.method static findNearestTimestamp(Ljava/util/List;J)[J
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

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

    .line 321
    fill-array-data v0, :array_0

    .line 323
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda1;-><init>(J[J)V

    invoke-interface {p0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    aget-wide p1, v0, p0

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p1, v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide p1, v2

    :cond_0
    aput-wide p1, v0, p0

    const/4 p0, 0x1

    aget-wide p1, v0, p0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, p1

    :goto_0
    aput-wide v2, v0, p0

    return-object v0

    nop

    :array_0
    .array-data 8
        -0x8000000000000000L
        0x7fffffffffffffffL
    .end array-data
.end method

.method static generateBatteryDiffData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 25
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 408
    invoke-static/range {p1 .. p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->convertToBatteryHistEntry(Ljava/util/List;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 409
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 413
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v11

    .line 414
    const-class v1, Landroid/os/UserManager;

    .line 415
    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 417
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_0

    :cond_1
    const/high16 v1, -0x80000000

    :goto_0
    move v12, v1

    .line 418
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 419
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-wide v6, v0

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 424
    invoke-static {v11, v12, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isConsumedFromOtherUsers(IILcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Z

    move-result v2

    .line 426
    iget-wide v3, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    add-double v18, v0, v3

    if-eqz v2, :cond_2

    add-double/2addr v6, v3

    move/from16 p2, v11

    goto :goto_3

    .line 430
    :cond_2
    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    iget-wide v2, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    iget-wide v0, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move/from16 p2, v11

    iget-wide v10, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v20, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v22, v4

    move-wide/from16 v4, v20

    move-wide/from16 v23, v6

    move-wide v6, v10

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 436
    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, v22

    .line 437
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v0, v22

    .line 439
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-wide/from16 v6, v23

    :goto_3
    move/from16 v11, p2

    move-wide/from16 v0, v18

    goto :goto_1

    :cond_4
    cmpl-double v2, v6, v16

    if-eqz v2, :cond_5

    .line 444
    invoke-static {v9, v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->createOtherUsersEntry(Landroid/content/Context;D)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    return-object v2

    .line 452
    :cond_6
    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-direct {v2, v13, v14, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Ljava/util/List;Ljava/util/List;D)V

    return-object v2

    :cond_7
    :goto_4
    const/4 v2, 0x0

    const-string v0, "DataProcessor"

    const-string v1, "batteryHistEntryList is null or empty in generateBatteryDiffData()"

    .line 410
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/BatteryUsageStats;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation

    .line 524
    new-instance v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    const/4 p0, 0x1

    .line 531
    invoke-virtual {v6, p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getBatteryEntryList(Landroid/os/BatteryUsageStats;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static getAccumulatedUsageDiffData(Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 989
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 990
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 992
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez v5, :cond_1

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 997
    invoke-static {v7, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V

    .line 998
    iget-wide v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v3, v7

    goto :goto_1

    .line 1000
    :cond_2
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 1001
    invoke-static {v6, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->computeUsageDiffDataPerEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/util/Map;)V

    .line 1002
    iget-wide v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    add-double/2addr v3, v6

    goto :goto_2

    .line 1006
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 1007
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 1009
    invoke-virtual {v5, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->setTotalConsumePower(D)V

    .line 1010
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1011
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1013
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1017
    :cond_5
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_4

    :cond_6
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_4
    return-object p0
.end method

.method private static getBatteryDiffDataFromBatteryStatsService(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 4

    const-string v0, "DataProcessor"

    const/4 v1, 0x0

    .line 499
    :try_start_0
    new-instance v2, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 500
    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeBatteryHistory()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v2

    .line 501
    const-class v3, Landroid/os/BatteryStatsManager;

    .line 502
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStatsManager;

    .line 503
    invoke-virtual {v3, v2}, Landroid/os/BatteryStatsManager;->getBatteryUsageStats(Landroid/os/BatteryUsageStatsQuery;)Landroid/os/BatteryUsageStats;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "batteryUsageStats is null content"

    .line 506
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 511
    :cond_0
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryEntryListFromBatteryUsageStats(Landroid/content/Context;Landroid/os/BatteryUsageStats;)Ljava/util/List;

    move-result-object v3

    .line 512
    invoke-static {p0, v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->generateBatteryDiffData(Landroid/content/Context;Ljava/util/List;Landroid/os/BatteryUsageStats;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load batteryUsageStats:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static getBatteryLevelData(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;",
            ")",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "DataProcessor"

    if-eqz p2, :cond_3

    .line 104
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    move-object v5, p1

    .line 113
    invoke-static {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHistoryMapWithExpectedTimestamps(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 116
    invoke-static {p0, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object p1

    if-nez p1, :cond_2

    .line 118
    invoke-static {p0, v5, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->loadBatteryUsageDataFromBatteryStatsService(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V

    const-string p0, "getBatteryLevelData() returns null"

    .line 120
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 125
    :cond_2
    new-instance p2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;

    .line 129
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getHourlyBatteryLevelsPerDay()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, p0

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 130
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-object p1

    :cond_3
    :goto_1
    const-string p2, "batteryHistoryMap is null in getBatteryLevelData()"

    .line 105
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {p0, p1, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->loadBatteryUsageDataFromBatteryStatsService(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V

    return-object v0
.end method

.method public static getBatteryUsageData(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 143
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 149
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHistoryMapWithExpectedTimestamps(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 152
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getHourlyBatteryLevelsPerDay()Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-static {p0, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageMap(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const-string p0, "DataProcessor"

    const-string p1, "getBatteryLevelData() returns null"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static getBatteryUsageMap(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    .line 377
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 380
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 382
    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertHourlyUsageDiffData(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 385
    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertDailyUsageDiffData(Ljava/util/List;Ljava/util/Map;)V

    .line 387
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertAllUsageDiffData(Ljava/util/Map;)V

    .line 389
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCountOfApps(Ljava/util/Map;)I

    move-result p2

    .line 390
    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->purgeLowPercentageAndFakeData(Landroid/content/Context;Ljava/util/Map;)V

    .line 392
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCountOfApps(Ljava/util/Map;)I

    move-result v2

    .line 393
    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isUsageMapValid(Ljava/util/Map;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    .line 397
    :cond_1
    invoke-static {p0, p2, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->logAppCountMetrics(Landroid/content/Context;II)V

    return-object v0
.end method

.method private static getBatteryUsageMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    .line 477
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 478
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, -0x1

    .line 480
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 481
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryDiffDataFromBatteryStatsService(Landroid/content/Context;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v3

    .line 480
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCountOfApps(Ljava/util/Map;)I

    move-result v1

    .line 486
    invoke-static {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->purgeLowPercentageAndFakeData(Landroid/content/Context;Ljava/util/Map;)V

    .line 488
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getCountOfApps(Ljava/util/Map;)I

    move-result v2

    .line 490
    invoke-static {p0, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->logAppCountMetrics(Landroid/content/Context;II)V

    return-object v0
.end method

.method private static getCountOfApps(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)I"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1150
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method static getDailyTimestamps(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 272
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 273
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long v7, v5, v3

    const-wide/32 v9, 0x6ddd00

    cmp-long p0, v7, v9

    if-gez p0, :cond_1

    return-object v0

    .line 278
    :cond_1
    invoke-static {v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getTimestampOfNextDay(J)J

    move-result-wide v7

    sub-long v11, v7, v3

    cmp-long p0, v11, v9

    if-ltz p0, :cond_2

    .line 282
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    cmp-long p0, v7, v5

    if-gez p0, :cond_3

    .line 285
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v3, 0x5265c00

    add-long/2addr v7, v3

    goto :goto_0

    .line 288
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v5, v3

    cmp-long p0, v3, v9

    if-ltz p0, :cond_4

    .line 292
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, v2, :cond_5

    .line 297
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_5
    return-object v0
.end method

.method private static getDiffValue(DDD)D
    .locals 3

    cmpl-double v0, p2, p0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sub-double p0, p2, p0

    goto :goto_0

    :cond_0
    move-wide p0, v1

    :goto_0
    cmpl-double v0, p4, p2

    if-lez v0, :cond_1

    sub-double v1, p4, p2

    :cond_1
    add-double/2addr p0, v1

    return-wide p0
.end method

.method private static getDiffValue(JJJ)J
    .locals 3

    cmp-long v0, p2, p0

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    sub-long p0, p2, p0

    goto :goto_0

    :cond_0
    move-wide p0, v1

    :goto_0
    cmp-long v0, p4, p2

    if-lez v0, :cond_1

    sub-long v1, p4, p2

    :cond_1
    add-long/2addr p0, v1

    return-wide p0
.end method

.method private static getEvenHourTimestamp(JI)J
    .locals 1

    .line 717
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 718
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xb

    .line 720
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    .line 721
    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    .line 722
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const/16 p0, 0xc

    const/4 p1, 0x0

    .line 724
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 725
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 726
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 727
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method static getHistoryMapWithExpectedTimestamps(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 187
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 188
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v9, "DataProcessor"

    if-eqz v2, :cond_0

    const-string p0, "empty batteryHistoryMap in getHistoryMapWithExpectedTimestamps()"

    .line 189
    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 192
    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 193
    invoke-static {v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getTimestampSlots(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x0

    .line 195
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isFromFullCharge(Ljava/util/Map;)Z

    move-result v5

    move-object v2, p0

    move-object v6, p1

    move-object v7, v8

    .line 196
    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->interpolateHistory(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    .line 200
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v10

    const/4 p1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p0, p1

    const-string p1, "getHistoryMapWithExpectedTimestamps() size=%d in %d/ms"

    .line 199
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method private static getHourlyPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;"
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method private static getHourlyTimestamps(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 732
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 736
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 738
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-int/lit8 v1, v1, 0x1

    .line 739
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 740
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    cmp-long v7, v2, v4

    if-gtz v7, :cond_1

    .line 742
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v7, 0x6ddd00

    add-long/2addr v2, v7

    goto :goto_1

    .line 745
    :cond_1
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getLastEvenHourBeforeTimestamp(J)J
    .locals 1

    const/4 v0, -0x1

    .line 713
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getEvenHourTimestamp(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getLevel(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;J)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 776
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 777
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 784
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 785
    iget p3, p3, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    int-to-float p3, p3

    add-float/2addr p0, p3

    goto :goto_0

    .line 787
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 778
    :cond_2
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "abnormal entry list in the timestamp:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-static {p0, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->utcToLocalTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataProcessor"

    .line 778
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static getLevelDataThroughProcessedHistoryMap(Landroid/content/Context;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 211
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDailyTimestamps(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHourlyTimestamps(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 220
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object v0

    .line 222
    invoke-static {p0, p1, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getHourlyPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 224
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    invoke-direct {p1, v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;Ljava/util/List;)V

    return-object p1
.end method

.method private static getNearestEvenHourTimestamp(J)J
    .locals 1

    const/4 v0, 0x1

    .line 702
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getEvenHourTimestamp(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;"
        }
    .end annotation

    .line 766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda6;-><init>(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 769
    new-instance p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-direct {p0, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method static getTimestampOfNextDay(J)J
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 343
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getTimestampWithDayDiff(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static getTimestampSlots(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    .line 239
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-int/lit8 v1, v1, -0x1

    .line 240
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 242
    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getNearestEvenHourTimestamp(J)J

    move-result-wide v1

    .line 244
    invoke-static {v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLastEvenHourBeforeTimestamp(J)J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-ltz p0, :cond_1

    return-object v0

    :cond_1
    :goto_0
    cmp-long p0, v1, v3

    if-gtz p0, :cond_2

    .line 251
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/32 v5, 0x36ee80

    add-long/2addr v1, v5

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getTimestampWithDayDiff(JI)J
    .locals 1

    .line 1135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1136
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x6

    .line 1137
    invoke-virtual {v0, p0, p2}, Ljava/util/Calendar;->add(II)V

    const/16 p0, 0xb

    const/4 p1, 0x0

    .line 1138
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 1139
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 1140
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1141
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static insertAllUsageDiffData(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    .line 842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 845
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, -0x1

    .line 846
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAccumulatedUsageDiffData(Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static insertDailyUsageDiffData(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 828
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 829
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 831
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 832
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, -0x1

    .line 835
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 836
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getAccumulatedUsageDiffData(Ljava/util/Collection;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v3

    .line 834
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static insertHourlyUsageDiffData(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 795
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 796
    const-class v1, Landroid/os/UserManager;

    move-object/from16 v8, p0

    .line 797
    invoke-virtual {v8, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    :goto_0
    move v9, v1

    const/4 v10, 0x0

    move v11, v10

    .line 804
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 805
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 806
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v13, p3

    invoke-interface {v13, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_3

    .line 810
    :cond_1
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v14

    move v15, v10

    .line 811
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v15, v1, :cond_2

    move-object/from16 v1, p0

    move v2, v7

    move v3, v9

    move v4, v15

    move-object v5, v14

    move-object/from16 v6, p2

    .line 813
    invoke-static/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->insertHourlyUsageDiffDataPerSlot(Landroid/content/Context;IIILjava/util/List;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-result-object v1

    .line 820
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static insertHourlyUsageDiffDataPerSlot(Landroid/content/Context;IIILjava/util/List;Ljava/util/Map;)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 858
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 859
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 861
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 862
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 863
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 865
    sget-object v6, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_MAP:Ljava/util/Map;

    .line 866
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 868
    invoke-interface {v0, v4, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 870
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 874
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 875
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 876
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    .line 881
    :cond_0
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 882
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 883
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 884
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 889
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 890
    sget-object v14, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 891
    invoke-interface {v3, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 893
    invoke-interface {v4, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 895
    invoke-interface {v0, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 897
    iget-wide v7, v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-object v14, v3

    move-object/from16 v22, v4

    iget-wide v3, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    iget-wide v0, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 v16, v7

    move-wide/from16 v18, v3

    move-wide/from16 v20, v0

    .line 898
    invoke-static/range {v16 .. v21}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(JJJ)J

    move-result-wide v0

    .line 902
    iget-wide v3, v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v7, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v25, v9

    iget-wide v9, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    move-wide/from16 v16, v3

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    .line 903
    invoke-static/range {v16 .. v21}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(JJJ)J

    move-result-wide v3

    .line 907
    iget-wide v7, v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    iget-wide v9, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v27, v11

    iget-wide v11, v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumePower:D

    move-wide/from16 v16, v7

    move-wide/from16 v18, v9

    move-wide/from16 v20, v11

    .line 908
    invoke-static/range {v16 .. v21}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getDiffValue(DDD)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v0, v9

    if-nez v11, :cond_1

    cmp-long v9, v3, v9

    if-nez v9, :cond_1

    const-wide/16 v9, 0x0

    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    new-array v9, v9, [Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    const/4 v10, 0x0

    aput-object v15, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v6, 0x2

    aput-object v13, v9, v6

    .line 919
    invoke-static {v9}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->selectBatteryHistEntry([Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object v6

    if-nez v6, :cond_2

    :goto_1
    move-object v3, v14

    move-object/from16 v4, v22

    move-object/from16 v1, v23

    move-object/from16 v0, v24

    move-wide/from16 v9, v25

    move-wide/from16 v11, v27

    goto/16 :goto_0

    :cond_2
    add-long v9, v0, v3

    long-to-float v9, v9

    const v10, 0x4adbba00    # 7200000.0f

    cmpl-float v11, v9, v10

    if-lez v11, :cond_3

    div-float/2addr v10, v9

    long-to-float v0, v0

    mul-float/2addr v0, v10

    .line 936
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    long-to-float v3, v3

    mul-float/2addr v3, v10

    .line 938
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-long v3, v3

    float-to-double v9, v10

    mul-double/2addr v7, v9

    :cond_3
    move-wide/from16 v31, v0

    move-wide/from16 v33, v3

    move-wide/from16 v35, v7

    add-double v11, v27, v35

    move/from16 v0, p1

    move/from16 v1, p2

    .line 943
    invoke-static {v0, v1, v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isConsumedFromOtherUsers(IILcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Z

    move-result v3

    if-eqz v3, :cond_4

    add-double v9, v25, v35

    move-object/from16 v4, v23

    goto :goto_3

    .line 948
    :cond_4
    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-object/from16 v29, v3

    move-object/from16 v30, p0

    move-object/from16 v37, v6

    invoke-direct/range {v29 .. v37}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;-><init>(Landroid/content/Context;JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 954
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->isSystemEntry()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 955
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v23

    goto :goto_2

    :cond_5
    move-object/from16 v4, v23

    .line 957
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move-wide/from16 v9, v25

    :goto_3
    move-object v1, v4

    move-object v3, v14

    move-object/from16 v4, v22

    move-object/from16 v0, v24

    goto/16 :goto_0

    :cond_6
    move-object v4, v1

    move-wide/from16 v25, v9

    move-wide/from16 v27, v11

    const-wide/16 v6, 0x0

    cmpl-double v0, v25, v6

    if-eqz v0, :cond_7

    move-object/from16 v0, p0

    move-wide/from16 v7, v25

    .line 962
    invoke-static {v0, v7, v8}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->createOtherUsersEntry(Landroid/content/Context;D)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 970
    :cond_8
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    move-wide/from16 v11, v27

    invoke-direct {v0, v4, v2, v11, v12}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;-><init>(Ljava/util/List;Ljava/util/List;D)V

    return-object v0

    :cond_9
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static interpolateHistory(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZLjava/util/Map;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 567
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v11, p1

    .line 571
    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v12, 0x1

    if-nez p3, :cond_2

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    goto :goto_0

    :cond_1
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move v2, v1

    goto :goto_1

    .line 579
    :cond_2
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v13, p4

    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    move-object/from16 v14, p5

    invoke-interface {v14, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v12

    .line 581
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    :goto_2
    if-ge v2, v3, :cond_5

    .line 583
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    if-eqz v2, :cond_4

    add-int/lit8 v4, v3, -0x1

    if-ne v2, v4, :cond_3

    goto :goto_3

    :cond_3
    move v10, v1

    goto :goto_4

    :cond_4
    :goto_3
    move v10, v12

    :goto_4
    move-object v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 585
    invoke-static/range {v4 .. v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->interpolateHistoryForSlot(Landroid/content/Context;JLjava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_5
    return-void
.end method

.method private static interpolateHistoryForSlot(Landroid/content/Context;JJJLjava/util/Map;Ljava/util/Map;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v9, p1

    move-object/from16 v1, p7

    move-object/from16 v11, p8

    .line 634
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/util/Map;

    .line 636
    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/util/Map;

    .line 639
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 640
    iget-wide v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mTimestamp:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBootTimestamp:J

    sub-long/2addr v2, v4

    cmp-long v1, p3, v2

    const/4 v2, 0x0

    if-gez v1, :cond_1

    move/from16 v1, p9

    .line 646
    invoke-static {v1, v9, v10}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->isForDailyChart(ZJ)Z

    move-result v1

    if-nez v1, :cond_1

    sub-long v3, p5, v9

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-gez v1, :cond_0

    const-string v1, "force align into the nearest slot"

    .line 649
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 650
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "in the different booting section"

    .line 652
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 653
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v11, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    const-string v1, "apply interpolation arithmetic"

    .line 657
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 658
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sub-long v1, p5, p3

    long-to-double v7, v1

    sub-long v1, v9, p3

    long-to-double v5, v1

    .line 662
    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 663
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 664
    invoke-interface {v13, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-object/from16 v16, v12

    move-object/from16 p7, v13

    if-eqz v4, :cond_6

    .line 667
    iget-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    move-wide/from16 p3, v5

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mForegroundUsageTimeInMs:J

    cmp-long v2, v12, v5

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 669
    :goto_2
    iget-wide v12, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBackgroundUsageTimeInMs:J

    cmp-long v5, v12, v5

    if-lez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-nez v2, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p3

    goto :goto_5

    .line 672
    :cond_5
    :goto_4
    invoke-interface {v14, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "abnormal reset condition is found"

    .line 673
    invoke-static {v0, v2, v9, v10, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    move-wide/from16 v5, p3

    move-object/from16 v13, p7

    move-object/from16 v12, v16

    goto :goto_1

    :cond_6
    :goto_5
    div-double v12, v5, v7

    move-object/from16 p3, v1

    move-wide/from16 v1, p1

    move-object/from16 v17, v4

    move-object/from16 p4, v15

    move-object v15, v3

    move-wide/from16 v3, p5

    move-wide/from16 v18, v5

    move-wide v5, v12

    move-wide v12, v7

    move-object/from16 v7, v17

    move-object/from16 v8, p3

    .line 678
    invoke-static/range {v1 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->interpolate(JJDLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object v1

    .line 684
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v17, :cond_7

    const-string v1, "cannot find lower entry data"

    move-object/from16 v2, p3

    .line 686
    invoke-static {v0, v1, v9, v10, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    :cond_7
    move-object/from16 v15, p4

    move-wide v7, v12

    move-object/from16 v12, v16

    move-wide/from16 v5, v18

    move-object/from16 v13, p7

    goto :goto_1

    .line 690
    :cond_8
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static interpolateHistoryForSlot(Landroid/content/Context;JLjava/util/List;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v8, p5

    move-object/from16 v3, p3

    .line 598
    invoke-static {v3, v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->findNearestTimestamp(Ljava/util/List;J)[J

    move-result-object v3

    const/4 v4, 0x0

    .line 599
    aget-wide v4, v3, v4

    const/4 v6, 0x1

    .line 600
    aget-wide v6, v3, v6

    const-wide/16 v9, 0x0

    cmp-long v3, v6, v9

    const/4 v11, 0x0

    if-nez v3, :cond_0

    const-string v3, "job scheduler is delayed"

    .line 603
    invoke-static {v0, v3, v1, v2, v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 604
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    sub-long v12, v6, v1

    const-wide/16 v14, 0x1388

    cmp-long v3, v12, v14

    if-gez v3, :cond_1

    const-string v3, "force align into the nearest slot"

    .line 610
    invoke-static {v0, v3, v1, v2, v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 611
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v12, p4

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    move-object/from16 v12, p4

    cmp-long v3, v4, v9

    if-nez v3, :cond_2

    const-string v3, "no lower timestamp slot data"

    .line 616
    invoke-static {v0, v3, v1, v2, v11}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V

    .line 617
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v3, v4

    move-wide v5, v6

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    .line 620
    invoke-static/range {v0 .. v9}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->interpolateHistoryForSlot(Landroid/content/Context;JJJLjava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method private static isConsumedFromOtherUsers(IILcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Z
    .locals 6

    .line 979
    iget v0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    int-to-long p0, p1

    cmp-long p0, v2, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static isForDailyChart(ZJ)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 357
    invoke-static {p1, p2, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getTimestampWithDayDiff(JI)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method static isFromFullCharge(Ljava/util/Map;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "DataProcessor"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "entryList is null in isFromFullCharge()"

    .line 305
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 308
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "empty entryList in isFromFullCharge()"

    .line 310
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 315
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 316
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryStatus:I

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mBatteryLevel:I

    invoke-static {v0, p0}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged(II)Z

    move-result p0

    return p0
.end method

.method private static isUsageMapValid(Ljava/util/Map;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1090
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DataProcessor"

    const/4 v3, 0x0

    if-eqz v1, :cond_7

    .line 1091
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    move v1, v3

    .line 1095
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v1, v4, :cond_6

    .line 1096
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "no ["

    if-eqz v4, :cond_5

    .line 1097
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 1102
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 1105
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v4

    move v7, v3

    .line 1107
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v5

    if-ge v7, v8, :cond_4

    .line 1108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1109
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] in batteryUsageMap, hourly size is: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1109
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1098
    :cond_5
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "][SELECTED_INDEX_ALL] in batteryUsageMap, daily size is: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1098
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    return v5

    :cond_7
    :goto_4
    const-string p0, "no [SELECTED_INDEX_ALL][SELECTED_INDEX_ALL] in batteryUsageMap"

    .line 1092
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private static synthetic lambda$convertToBatteryHistEntry$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 8

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    .line 545
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v2

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v4

    cmpl-double p0, v4, v6

    if-nez p0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long p0, v0, v4

    if-nez p0, :cond_1

    cmp-long p0, v2, v4

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$convertToBatteryHistEntry$2(Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 0

    .line 550
    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/ConvertUtils;->convertToBatteryHistEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Landroid/os/BatteryUsageStats;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findNearestTimestamp$0(J[JLjava/lang/Long;)V
    .locals 5

    .line 324
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gtz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x0

    aget-wide v3, p2, v2

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    .line 325
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aput-wide v0, p2, v2

    .line 327
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const/4 v0, 0x1

    aget-wide v1, p2, v0

    cmp-long p0, p0, v1

    if-gez p0, :cond_1

    .line 328
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    aput-wide p0, p2, v0

    :cond_1
    return-void
.end method

.method private static synthetic lambda$getHourlyPeriodBatteryLevelData$3(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .line 757
    invoke-static {p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getPeriodBatteryLevelData(Landroid/content/Context;Ljava/util/Map;Ljava/util/List;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object p1

    .line 756
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$getPeriodBatteryLevelData$4(Ljava/util/List;Landroid/content/Context;Ljava/util/Map;Ljava/lang/Long;)V
    .locals 2

    .line 768
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getLevel(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$insertAllUsageDiffData$5(Ljava/util/List;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 0

    .line 844
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$loadLabelAndIcon$8(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    return-void
.end method

.method private static synthetic lambda$loadLabelAndIcon$9(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 0

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->loadLabelAndIcon()V

    return-void
.end method

.method private static synthetic lambda$purgeLowPercentageAndFakeData$6(Ljava/util/Set;[Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1057
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v0

    .line 1056
    invoke-static {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->purgeLowPercentageAndFakeData(Ljava/util/List;Ljava/util/Set;[Ljava/lang/CharSequence;)V

    .line 1060
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object p2

    .line 1059
    invoke-static {p2, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->purgeLowPercentageAndFakeData(Ljava/util/List;Ljava/util/Set;[Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static synthetic lambda$purgeLowPercentageAndFakeData$7(Ljava/util/Map;Ljava/util/Set;[Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 0

    .line 1051
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 1052
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance p3, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;

    invoke-direct {p3, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda7;-><init>(Ljava/util/Set;[Ljava/lang/CharSequence;)V

    invoke-interface {p0, p3}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static loadBatteryUsageDataFromBatteryStatsService(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V
    .locals 2

    .line 462
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask-IA;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 465
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private static loadLabelAndIcon(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 1125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-eqz p0, :cond_1

    .line 1127
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method private static log(Landroid/content/Context;Ljava/lang/String;JLcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)V
    .locals 0

    return-void
.end method

.method private static logAppCountMetrics(Landroid/content/Context;II)V
    .locals 2

    .line 1202
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1204
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x70a

    .line 1205
    invoke-virtual {v0, p0, v1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    sub-int/2addr p1, p2

    const/16 p2, 0x70b

    .line 1209
    invoke-virtual {v0, p0, p2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private static purgeLowPercentageAndFakeData(Landroid/content/Context;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;)V"
        }
    .end annotation

    .line 1043
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    .line 1045
    invoke-interface {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideBackgroundUsageTimeSet(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 1047
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 1048
    invoke-virtual {v1, p0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v1

    .line 1049
    invoke-interface {v1, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationEntries(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 1050
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$$ExternalSyntheticLambda5;-><init>(Ljava/util/Map;Ljava/util/Set;[Ljava/lang/CharSequence;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static purgeLowPercentageAndFakeData(Ljava/util/List;Ljava/util/Set;[Ljava/lang/CharSequence;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .line 1070
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1071
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 1073
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    const-string v2, "fake_package"

    .line 1075
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1076
    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->contains(Ljava/lang/String;[Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1077
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    :cond_2
    if-eqz v1, :cond_0

    .line 1080
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1081
    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->contains(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    .line 1082
    iput-wide v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static varargs selectBatteryHistEntry([Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;)Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;
    .locals 4

    .line 1175
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 1176
    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->EMPTY_BATTERY_HIST_ENTRY:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
