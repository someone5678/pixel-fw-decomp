.class public Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryTipLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/List<",
        "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/BatteryUsageStats;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 57
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 58
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->loadInBackground()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v1, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;

    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string v3, "BatteryTipLoader"

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->getBatteryInfo(Ljava/lang/String;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v2

    .line 69
    invoke-virtual {p0}, Landroidx/loader/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 71
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;

    invoke-direct {v4, v3, v1, v2}, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/LowBatteryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v4, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    invoke-direct {v4, v3, v1, p0, v2}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/os/BatteryUsageStats;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/HighUsageDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;

    .line 74
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {p0, v3, v1, v2, v4}, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Lcom/android/settings/fuelgauge/BatteryInfo;Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/SmartBatteryDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p0

    .line 73
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;-><init>(Lcom/android/settings/fuelgauge/batterytip/BatteryTipPolicy;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/EarlyWarningDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;

    .line 77
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p0

    .line 76
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/detectors/DockDefenderDetector;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/fuelgauge/batterytip/detectors/DockDefenderDetector;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterytip/detectors/DockDefenderDetector;->detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
