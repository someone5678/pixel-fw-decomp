.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "BatteryHistoryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->loadInBackground()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public loadInBackground()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->mContext:Landroid/content/Context;

    .line 45
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->mContext:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryHistorySinceLastFullCharge(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryLoader;->onDiscardResult(Ljava/util/Map;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method
