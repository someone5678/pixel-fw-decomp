.class Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;
.super Landroid/os/AsyncTask;
.source "DataProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeUsageMapAndLoadItemsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Ljava/util/Map<",
        "Ljava/lang/Integer;",
        "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field mApplicationContext:Landroid/content/Context;

.field final mAsyncResponseDelegate:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

.field private mBatteryHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field final mHandler:Landroid/os/Handler;

.field private mHourlyBatteryLevelsPerDay:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Eei8wq2Z_2gWQW7jhV1O3Rpj9H8(Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->lambda$onPostExecute$0(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 1238
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1239
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mApplicationContext:Landroid/content/Context;

    .line 1240
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHandler:Landroid/os/Handler;

    .line 1241
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mAsyncResponseDelegate:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    .line 1242
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    .line 1243
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mBatteryHistoryMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic lambda$onPostExecute$0(Ljava/util/Map;)V
    .locals 0

    .line 1275
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mAsyncResponseDelegate:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;->onBatteryUsageMapLoaded(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1224
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

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

    .line 1248
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mApplicationContext:Landroid/content/Context;

    const-string v0, "DataProcessor"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mAsyncResponseDelegate:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mBatteryHistoryMap:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1256
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1257
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mBatteryHistoryMap:Ljava/util/Map;

    .line 1258
    invoke-static {p1, v3, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageMap(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .line 1260
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->-$$Nest$smloadLabelAndIcon(Ljava/util/Map;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v3

    const-string v1, "execute ComputeUsageMapAndLoadItemsTask in %d/ms"

    .line 1261
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "invalid input for ComputeUsageMapAndLoadItemsTask()"

    .line 1253
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1224
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
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

    const/4 v0, 0x0

    .line 1269
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mApplicationContext:Landroid/content/Context;

    .line 1270
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHourlyBatteryLevelsPerDay:Ljava/util/List;

    .line 1271
    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mBatteryHistoryMap:Ljava/util/Map;

    .line 1273
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;->mAsyncResponseDelegate:Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;

    if-eqz v1, :cond_0

    .line 1274
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$ComputeUsageMapAndLoadItemsTask;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
