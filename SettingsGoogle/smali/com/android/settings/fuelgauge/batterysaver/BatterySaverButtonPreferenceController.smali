.class public Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "BatterySaverButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;


# static fields
.field private static final SWITCH_ANIMATION_DURATION:J = 0x15eL


# instance fields
.field private final mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

.field private mHandler:Landroid/os/Handler;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;


# direct methods
.method public static synthetic $r8$lambda$iFOAXG2P-72T0OUpHw4AQvbzbR4(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->lambda$onPowerSaveModeChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo p2, "power"

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    .line 59
    new-instance p2, Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    invoke-direct {p2, p1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V

    .line 61
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$onPowerSaveModeChanged$0()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->onPowerSaveModeChangedInternal()V

    return-void
.end method

.method private onPowerSaveModeChangedInternal()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 138
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/MainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    .line 99
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/MainSwitchPreference;->updateStatus(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

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

    const p0, 0x7f040ddb

    return p0
.end method

.method public getSliceUri()Landroid/net/Uri;
    .locals 1

    .line 76
    new-instance p0, Landroid/net/Uri$Builder;

    invoke-direct {p0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "content"

    .line 77
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "android.settings.slices"

    .line 78
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "action"

    .line 79
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "battery_saver"

    .line 80
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 81
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBatteryChanged(Z)V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 145
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPowerSaveModeChanged()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 86
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mBatterySaverReceiver:Lcom/android/settings/fuelgauge/BatterySaverReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->setListening(Z)V

    .line 92
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 106
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "low_power_warning_acknowledged"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->mPreference:Lcom/android/settingslib/widget/MainSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/MainSwitchPreference;->setChecked(Z)V

    .line 110
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverButtonPreferenceController;->setChecked(Z)Z

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setPowerSaveMode(Landroid/content/Context;ZZ)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
