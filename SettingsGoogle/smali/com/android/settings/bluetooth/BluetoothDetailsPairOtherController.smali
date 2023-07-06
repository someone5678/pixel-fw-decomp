.class public Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "BluetoothDetailsPairOtherController.java"


# static fields
.field static final KEY_SPACE:Ljava/lang/String; = "hearing_aid_space_layout"


# instance fields
.field private mPreference:Lcom/android/settingslib/widget/ButtonPreference;

.field private mSpacePreference:Lcom/android/settings/applications/SpacePreference;


# direct methods
.method public static synthetic $r8$lambda$mb3LvFBtp8nLAhgXWhJgA7wfZLo(Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->lambda$init$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 50
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->isBinauralMode(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->isOnlyOneSideConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBinauralMode(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 0

    .line 100
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isOnlyOneSideConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 1

    .line 104
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHearingAidDevice()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSubDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHearingAidDevice()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$init$0(Landroid/view/View;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->launchPairingDetail()V

    return-void
.end method

.method private launchPairingDetail()V
    .locals 2

    .line 92
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/bluetooth/BluetoothPairingDetail;

    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;->getMetricsCategory()I

    move-result p0

    .line 94
    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private setPreferencesVisibility(Z)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 84
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "hearing_aid_pair_other_button"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDeviceSide()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f04051c

    goto :goto_0

    :cond_0
    const v0, 0x7f040516

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/widget/ButtonPreference;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    const-string v1, "hearing_aid_space_layout"

    .line 71
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/SpacePreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mSpacePreference:Lcom/android/settings/applications/SpacePreference;

    .line 72
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->setPreferencesVisibility(Z)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->mPreference:Lcom/android/settingslib/widget/ButtonPreference;

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/ButtonPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected refresh()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->getButtonPreferenceVisibility(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDetailsPairOtherController;->setPreferencesVisibility(Z)V

    return-void
.end method
