.class public Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;
.super Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;
.source "BatteryStatusFeatureProviderGoogleImpl.java"


# instance fields
.field private mAdaptiveChargingEnabledInSettings:Z

.field private mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

.field private mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdaptiveChargingManager(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;)Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefreshAdaptiveChargingEnabled(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->refreshAdaptiveChargingEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    .line 31
    invoke-static {p1}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->getInstance(Landroid/content/Context;)Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    .line 33
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adaptive_charging_enabled"

    .line 34
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$1;-><init>(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;Landroid/os/Handler;)V

    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->refreshAdaptiveChargingEnabled()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private refreshAdaptiveChargingEnabled()V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    .line 48
    invoke-virtual {v0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingEnabledInSettings:Z

    return-void
.end method


# virtual methods
.method public triggerBatteryStatusUpdate(Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 6

    .line 54
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mReverseChargingManager:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-virtual {v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isReverseChargingOn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 55
    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBatteryDefenderOn(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, p2, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/R$string;->reverse_charging_is_on_and_discharging_summary:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/settings/R$string;->reverse_charging_is_on_and_charging_summary:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 60
    iget-object v3, p2, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryStatusFeatureProviderImpl;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->battery_state_and_duration:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    aput-object v3, v5, v2

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_1
    invoke-interface {p1, v0, p2}, Lcom/android/settings/fuelgauge/BatteryPreferenceController;->updateBatteryStatus(Ljava/lang/String;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return v2

    .line 69
    :cond_2
    iget-boolean v0, p2, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->isBatteryDefenderOn(Lcom/android/settings/fuelgauge/BatteryInfo;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingEnabledInSettings:Z

    if-nez v0, :cond_3

    goto :goto_2

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    new-instance v1, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl$2;-><init>(Lcom/google/android/settings/fuelgauge/BatteryStatusFeatureProviderGoogleImpl;Lcom/android/settings/fuelgauge/BatteryPreferenceController;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    return v2

    :cond_4
    :goto_2
    return v1
.end method
