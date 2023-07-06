.class final Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask;
.super Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;
.source "DataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoadUsageMapFromBatteryStatsServiceTask"
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1290
    invoke-direct/range {v0 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1283
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$LoadUsageMapFromBatteryStatsServiceTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation

    .line 1296
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mApplicationContext:Landroid/content/Context;

    const-string v0, "DataProcessor"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mAsyncResponseDelegate:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1303
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mApplicationContext:Landroid/content/Context;

    .line 1304
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->-$$Nest$smgetBatteryUsageMapFromStatsService(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    .line 1305
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->-$$Nest$smloadLabelAndIcon(Ljava/util/Map;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "execute LoadUsageMapFromBatteryStatsServiceTask in %d/ms"

    .line 1306
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "invalid input for ComputeUsageMapAndLoadItemsTask()"

    .line 1299
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
