.class public Lcom/android/settings/display/SmartAutoRotateBatterySaverController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SmartAutoRotateBatterySaverController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreference:Landroidx/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$RPg7yaidY_cWheu0ZsD3RsbE3dw(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    new-instance p2, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$1;-><init>(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)V

    iput-object p2, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mPreference:Landroidx/preference/Preference;

    .line 72
    check-cast p1, Lcom/android/settingslib/widget/BannerMessagePreference;

    const v0, 0x7f040237

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonText(I)Lcom/android/settingslib/widget/BannerMessagePreference;

    move-result-object p1

    new-instance v0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/SmartAutoRotateBatterySaverController;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/BannerMessagePreference;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/BannerMessagePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Lcom/android/settings/display/SmartAutoRotateController;->isRotationResolverServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->isPowerSaveMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method isPowerSaveMode()Z
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/SmartAutoRotateBatterySaverController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
