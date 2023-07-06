.class public Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;
.super Ljava/lang/Object;
.source "BatteryDefenderDetector.java"


# instance fields
.field private final mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/BatteryInfo;Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 35
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public detect()Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->isOverheated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/detectors/BatteryDefenderDetector;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p0

    .line 42
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isExtraDefend()Z

    move-result p0

    if-nez p0, :cond_0

    .line 43
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;-><init>(I)V

    return-object p0

    .line 45
    :cond_0
    new-instance p0, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryDefenderTip;-><init>(I)V

    return-object p0
.end method
