.class public Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AdaptiveChargingPreferenceController.java"


# instance fields
.field mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    sget p0, Lcom/android/settings/R$string;->menu_key_battery:I

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {p0}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mAdaptiveChargingManager:Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/googlebattery/AdaptiveChargingManager;->setAdaptiveChargingDeadline(I)Z

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 56
    iput-boolean p1, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mChecked:Z

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x6f5

    .line 58
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 43
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/fuelgauge/AdaptiveChargingPreferenceController;->mChecked:Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
