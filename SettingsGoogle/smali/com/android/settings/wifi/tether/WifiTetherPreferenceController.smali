.class public Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mIsWifiTetheringAllow:Z

.field mPreference:Landroidx/preference/Preference;

.field private mSoftApState:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSoftApState(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSoftApState(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mSoftApState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 62
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isWifiTetheringAllowed(Landroid/content/Context;)Z

    move-result v6

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;ZZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;ZZ)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean p5, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsWifiTetheringAllow:Z

    if-nez p5, :cond_0

    return-void

    .line 76
    :cond_0
    iput-object p3, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    .line 79
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateConfigSummary(Landroid/net/wifi/SoftApConfiguration;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0418db

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 184
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v4

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 183
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wifi_tether"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_0

    return-void

    .line 99
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mIsWifiTetheringAllow:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 101
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f040f25

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "wifi_tether"

    return-object p0
.end method

.method handleWifiApStateChanged(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 171
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f041879

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->updateConfigSummary(Landroid/net/wifi/SoftApConfiguration;)V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f0418dd

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 167
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f04182c

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f0418de

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    const p1, 0x7f04180d

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method initWifiTetherSoftApManager()V
    .locals 3

    .line 132
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;-><init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;-><init>(Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiUtils;->canShowWifiHotspot(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStart()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->registerSoftApCallback()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mWifiTetherSoftApManager:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->unRegisterSoftApCallback()V

    :cond_0
    return-void
.end method
