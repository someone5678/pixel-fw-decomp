.class public Lcom/android/settings/network/NetworkProviderSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "NetworkProviderSettings.java"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
.implements Lcom/android/settings/network/InternetUpdater$InternetChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;,
        Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;,
        Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;,
        Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;,
        Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;
    }
.end annotation


# static fields
.field static final ADD_NETWORK_REQUEST:I = 0x2

.field static final MENU_ID_DISCONNECT:I = 0x3

.field static final MENU_ID_FORGET:I = 0x4

.field static final PREF_KEY_CONNECTED_ACCESS_POINTS:Ljava/lang/String; = "connected_access_point"

.field static final PREF_KEY_DATA_USAGE:Ljava/lang/String; = "non_carrier_data_usage"

.field static final PREF_KEY_FIRST_ACCESS_POINTS:Ljava/lang/String; = "first_access_points"

.field static final PREF_KEY_WIFI_TOGGLE:Ljava/lang/String; = "main_toggle_wifi"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;


# instance fields
.field mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

.field mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field mAirplaneModeMsgPreference:Landroidx/preference/Preference;

.field private mClickedConnect:Z

.field mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

.field mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mDialogMode:I

.field private mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mDialogWifiEntryKey:Ljava/lang/String;

.field private mEnableNextOnConnection:Z

.field mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field protected mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

.field mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

.field mIsAdmin:Z

.field protected mIsRestricted:Z

.field private mIsViewLoading:Z

.field private mIsWifiEntryListStale:Z

.field private mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

.field private mOpenSsid:Ljava/lang/String;

.field final mRemoveLoadingRunnable:Ljava/lang/Runnable;

.field mResetInternetPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mSavedNetworksPreference:Landroidx/preference/Preference;

.field private mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field final mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

.field mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

.field private mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

.field mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$0kzYq02Bb7r6gJd_3CCuD3YRAbc(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onWifiEntriesChanged$6(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$2oN3tDOL7FIDg98TJ4c27ZV_Cx4(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onContextItemSelected$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$3_7zXKK2wdP9OmcsOQoBAsG6DTg(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onInternetTypeChanged$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$HAz_ukqsaPJxqQDPtGH5CUEuGHI(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onWifiEntriesChanged$7(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$N_z6ng-sP8VodHAfQ9CvIvFFGwM(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$X63haDWgFiBtn6dFKfvgzOSsYNw(Lcom/android/settings/network/NetworkProviderSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$setWifiScanMessage$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bOMiUxXUojadHZg72LMmjM5Zjag(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$onWifiEntriesChanged$8(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lMwL8anD-XaT7T1-lveagp8XMFw(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$9(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$t-2JSzFKaCRfGRkfu2HTyOFjacg(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$10(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t0_xiYd384t1KG2UzWq6I8ScyAA(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$y1CPOiFQf_PZMHohRCotoSyvmLY(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yg4BDvEYwQvdN9JXcxP9e_mAYJk(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/WifiEntryPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->lambda$updateWifiEntryPreferences$11(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/WifiEntryPreference;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClickedConnect(Lcom/android/settings/network/NetworkProviderSettings;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mfixConnectivity(Lcom/android/settings/network/NetworkProviderSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->fixConnectivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowDialog(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1276
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    const v1, 0x7f1600a5

    invoke-direct {v0, v1}, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "no_config_wifi"

    .line 263
    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    .line 190
    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    .line 195
    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 213
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/NetworkProviderSettings;)Z
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/NetworkProviderSettings;)Z
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method private addConnectedEthernetNetworkController()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

    if-nez v0, :cond_0

    .line 369
    new-instance v0, Lcom/android/settings/network/ConnectedEthernetNetworkController;

    .line 370
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/ConnectedEthernetNetworkController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedEthernetNetworkController:Lcom/android/settings/network/ConnectedEthernetNetworkController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ConnectedEthernetNetworkController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private addNetworkMobileProviderController()V
    .locals 3

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->showAnySubscriptionInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Lcom/android/settings/network/NetworkMobileProviderController;

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "provider_model_mobile_network"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/NetworkMobileProviderController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/NetworkMobileProviderController;->init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/NetworkMobileProviderController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private addPreferences()V
    .locals 4

    const v0, 0x7f1600a5

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "airplane_mode_message"

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeMsgPreference:Landroidx/preference/Preference;

    .line 318
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->updateAirplaneModeMsgPreference(Z)V

    const-string v0, "connected_access_point"

    .line 319
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "first_access_points"

    .line 320
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "access_points"

    .line 321
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "configure_network_settings"

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    const-string/jumbo v0, "saved_networks"

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 324
    new-instance v0, Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/AddWifiNetworkPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    const-string v0, "non_carrier_data_usage"

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsagePreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    .line 326
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 327
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDataUsagePreference:Lcom/android/settings/datausage/DataUsagePreference;

    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    .line 328
    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 327
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/datausage/DataUsagePreference;->setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V

    const-string/jumbo v0, "resetting_your_internet"

    .line 329
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mResetInternetPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addNetworkMobileProviderController()V

    .line 334
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addConnectedEthernetNetworkController()V

    .line 335
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addWifiSwitchPreferenceController()V

    const-string/jumbo v0, "wifi_status_message_footer"

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 338
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->checkConnectivityRecovering()V

    return-void
.end method

.method private addWifiSwitchPreferenceController()V
    .locals 3

    .line 376
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;

    if-nez v0, :cond_1

    .line 378
    new-instance v0, Lcom/android/settings/network/WifiSwitchPreferenceController;

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/network/WifiSwitchPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiSwitchPreferenceController:Lcom/android/settings/network/WifiSwitchPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/WifiSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method private canForgetNetwork()Z
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 656
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 655
    invoke-static {v0, p0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkConnectivityRecovering()V
    .locals 10

    .line 385
    new-instance v9, Lcom/android/settings/network/InternetResetHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    const-string v0, "main_toggle_wifi"

    .line 387
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/network/NetworkProviderSettings;->mResetInternetPreference:Lcom/android/settingslib/widget/LayoutPreference;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/network/InternetResetHelper;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/NetworkMobileProviderController;Landroidx/preference/Preference;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/PreferenceCategory;Landroidx/preference/Preference;)V

    iput-object v9, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    .line 392
    invoke-virtual {v9}, Lcom/android/settings/network/InternetResetHelper;->checkRecovering()V

    return-void
.end method

.method private fixConnectivity()V
    .locals 0

    .line 1463
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetResetHelper:Lcom/android/settings/network/InternetResetHelper;

    invoke-virtual {p0}, Lcom/android/settings/network/InternetResetHelper;->restart()V

    return-void
.end method

.method private forget(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 3

    .line 1245
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    const/16 v2, 0x89

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    const/4 p0, 0x0

    .line 1246
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    return-void
.end method

.method private getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;
    .locals 3

    .line 1130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "NetworkProviderSettings"

    const-string p1, "getSavedNetworkSettingsSummaryText shouldn\'t run if resource is not ready"

    .line 1131
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 1136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f130058

    new-array v1, v1, [Ljava/lang/Object;

    .line 1137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1136
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    .line 1139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f13005a

    new-array v1, v1, [Ljava/lang/Object;

    .line 1141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1139
    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/2addr p1, p2

    .line 1144
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f130059

    new-array v1, v1, [Ljava/lang/Object;

    .line 1145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1144
    invoke-virtual {p0, p2, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleAddNetworkSubmitEvent(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "wifi_config_key"

    .line 1173
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_0

    .line 1175
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method private hasWifiManager()Z
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 289
    :cond_1
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method private isAdminUser()Z
    .locals 1

    .line 309
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 311
    :cond_0
    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    return p0
.end method

.method private static isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 2

    .line 1383
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1388
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1390
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1393
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    const/16 v1, 0x8

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 1

    .line 177
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 4

    .line 1150
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1151
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1152
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1153
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1154
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isAutoWakeupEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1155
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "airplane_mode_on"

    .line 1156
    invoke-static {v0, p0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    .line 1158
    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, v0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    .line 185
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onContextItemSelected$3()V
    .locals 1

    .line 673
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->launchWifiDppConfiguratorActivity(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$onInternetTypeChanged$4()V
    .locals 0

    .line 804
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onWifiStateChanged()V

    return-void
.end method

.method private synthetic lambda$onWifiEntriesChanged$6(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 0

    .line 896
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$7(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    if-eqz v0, :cond_0

    .line 898
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onWifiEntriesChanged$8(Lcom/android/wifitrackerlib/WifiEntry;)Z
    .locals 1

    .line 899
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-static {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isDisabledByWrongPassword(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$setWifiScanMessage$5(Landroid/view/View;)V
    .locals 0

    .line 870
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchWifiScanningFragment()V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$10(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    .line 979
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$11(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/WifiEntryPreference;)V
    .locals 0

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method private synthetic lambda$updateWifiEntryPreferences$9(Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 971
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 972
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    goto :goto_0

    .line 974
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private launchAddNetworkFragment()V
    .locals 2

    .line 1089
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v1, 0x7f041772

    .line 1090
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/AddNetworkFragment;

    .line 1091
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1092
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x2

    .line 1093
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1094
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 6

    .line 727
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1, p1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "NetworkProviderSettings"

    const-string p1, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 731
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v1, 0x0

    const/16 v2, 0x6ae

    const/16 v3, 0x63b

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 739
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private launchWifiScanningFragment()V
    .locals 1

    .line 876
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/location/WifiScanningFragment;

    .line 877
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0x2ea

    .line 878
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 879
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private onAddNetworkPressed()V
    .locals 0

    .line 1184
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchAddNetworkFragment()V

    return-void
.end method

.method private removeConnectedWifiEntryPreference()V
    .locals 1

    .line 1099
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1100
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private removeWifiEntryPreference()V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1105
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f04180a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 485
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    return-void
.end method

.method private showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V
    .locals 2

    .line 744
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 746
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 747
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 746
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 752
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    const/4 v0, 0x0

    .line 753
    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 757
    :cond_1
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 758
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 759
    iput p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    .line 761
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private updateAirplaneModeMsgPreference(Z)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeMsgPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method private updateWifiEntryPreferencesDelayed()V
    .locals 3

    .line 931
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_1

    .line 932
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 933
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 935
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 938
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 939
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method addForgetMenuIfSuitable(Landroid/view/ContextMenu;)V
    .locals 2

    .line 641
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    const v0, 0x7f040a1d

    const/4 v1, 0x0

    .line 642
    invoke-interface {p1, v1, p0, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method addModifyMenuIfSuitable(Landroid/view/ContextMenu;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 648
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 649
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 p2, 0x2

    if-eq p0, p2, :cond_0

    const/4 p0, 0x5

    const p2, 0x7f04184c

    const/4 v0, 0x0

    .line 650
    invoke-interface {p1, v0, p0, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method addShareMenuIfSuitable(Landroid/view/ContextMenu;)V
    .locals 2

    .line 631
    iget-boolean p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    const v1, 0x7f041350

    .line 632
    invoke-interface {p1, v0, p0, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    return-void

    :cond_0
    const-string p0, "NetworkProviderSettings"

    const-string p1, "Don\'t add the Wi-Fi share menu because the user is not an admin."

    .line 635
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x534e4554

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "206986392"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "User is not an admin"

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method changeNextButtonState(Z)V
    .locals 1

    .line 1200
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V
    .locals 4

    .line 1251
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1252
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v2

    const/16 v3, 0x87

    .line 1251
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 1256
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings$WifiEntryConnectCallback;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return-void
.end method

.method createConnectedWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/ConnectedWifiEntryPreference;
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {v0}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1058
    new-instance v0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0

    .line 1060
    :cond_0
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p0}, Lcom/android/settings/network/NetworkProviderSettings$FirstWifiEntryPreference;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/LongPressWifiEntryPreference;
    .locals 2

    .line 1085
    new-instance v0, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method getConnectedWifiPreferenceCategory()Landroidx/preference/PreferenceCategory;
    .locals 3

    .line 1044
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {v0}, Lcom/android/settings/network/InternetUpdater;->getInternetType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1047
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1051
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectedWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 1052
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mFirstWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x25b

    return p0
.end method

.method getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040afd

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x67

    return p0
.end method

.method handleAddNetworkRequest(ILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1168
    invoke-direct {p0, p2}, Lcom/android/settings/network/NetworkProviderSettings;->handleAddNetworkSubmitEvent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method isPhoneOnCall()Z
    .locals 1

    .line 1457
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1458
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 4

    .line 1363
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const-string p0, "NetworkProviderSettings"

    const-string p1, "Can\'t configure Wi-Fi because NetworkProviderSettings is restricted."

    .line 1364
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x534e4554

    new-array p1, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "246301667"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "Fragment is restricted."

    aput-object v1, p1, v0

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    .line 1369
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1371
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_chosen_wifientry_key"

    .line 1370
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1373
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v2, Lcom/android/settings/wifi/ConfigureWifiEntryFragment;

    .line 1374
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1375
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1377
    invoke-virtual {p1, p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1378
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V
    .locals 4

    .line 1065
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    .line 1066
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "settings_wifi_details_datausage_header"

    .line 1068
    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1069
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f041059

    .line 1070
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1072
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1073
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1076
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 1077
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1078
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 397
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 399
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 401
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    .line 402
    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->getWifiPickerTracker()Lcom/android/wifitrackerlib/WifiPickerTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    .line 404
    :cond_0
    new-instance v0, Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/network/InternetUpdater;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/InternetUpdater$InternetChangeListener;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mInternetUpdater:Lcom/android/settings/network/InternetUpdater;

    .line 406
    new-instance v0, Lcom/android/settings/wifi/WifiConnectListener;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConnectListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 408
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$1;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 424
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$2;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    const/4 v0, 0x1

    .line 439
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    if-eqz p1, :cond_1

    const-string v0, "dialog_mode"

    .line 442
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    const-string/jumbo v0, "wifi_ap_key"

    .line 443
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "wifi_enable_next_on_connect"

    .line 449
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mEnableNextOnConnection:Z

    const-string/jumbo v0, "wifi_start_connect_ssid"

    .line 451
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    .line 455
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mNetworkMobileProviderController:Lcom/android/settings/network/NetworkMobileProviderController;

    if-eqz p1, :cond_3

    .line 456
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/NetworkMobileProviderController;->setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 530
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 535
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/network/NetworkProviderSettings;->handleAddNetworkRequest(ILandroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, -0x1

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_2

    .line 539
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz p0, :cond_2

    .line 540
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    if-ne p2, v0, :cond_4

    const-string p1, "network_config_key"

    .line 546
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_4

    .line 549
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p3, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p2, p1, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_4
    return-void

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    return-void

    .line 559
    :cond_6
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-eqz p1, :cond_7

    if-nez p2, :cond_7

    .line 562
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_7

    .line 564
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addPreferences()V

    :cond_7
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 1473
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->updateAirplaneModeMsgPreference(Z)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 462
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 661
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_3

    const/4 v5, 0x5

    if-eq v0, v5, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 685
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 672
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    invoke-static {p1, v0}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return v3

    .line 676
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    if-nez p1, :cond_2

    const-string p0, "NetworkProviderSettings"

    const-string p1, "Can\'t modify Wi-Fi because the user isn\'t admin."

    .line 677
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x534e4554

    new-array p1, v4, [Ljava/lang/Object;

    const-string v0, "237672190"

    aput-object v0, p1, v1

    .line 678
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v3

    const-string v0, "User isn\'t admin"

    aput-object v0, p1, v2

    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return v3

    .line 682
    :cond_2
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1, v2}, Lcom/android/settings/network/NetworkProviderSettings;->showDialog(Lcom/android/wifitrackerlib/WifiEntry;I)V

    return v3

    .line 669
    :cond_3
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return v3

    .line 666
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    return v3

    .line 663
    :cond_5
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 295
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 296
    new-instance p1, Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    const/4 p1, 0x0

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAnimationAllowed(Z)V

    .line 302
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->addPreferences()V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    .line 305
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isAdminUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsAdmin:Z

    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 570
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    const/4 p1, 0x1

    .line 571
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .line 592
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    .line 593
    instance-of p3, p2, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-nez p3, :cond_0

    return-void

    .line 599
    :cond_0
    check-cast p2, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p2}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 601
    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 602
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    const v0, 0x7f0417b0

    .line 603
    invoke-interface {p1, p3, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 606
    :cond_1
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 607
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->addShareMenuIfSuitable(Landroid/view/ContextMenu;)V

    :cond_2
    const/4 p2, 0x3

    const/4 v0, 0x1

    const v1, 0x7f0417c1

    .line 610
    invoke-interface {p1, p3, p2, v0, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 616
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->canForgetNetwork()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->addForgetMenuIfSuitable(Landroid/view/ContextMenu;)V

    .line 620
    :cond_4
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 622
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-void

    .line 626
    :cond_5
    iget-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSelectedWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/NetworkProviderSettings;->addModifyMenuIfSuitable(Landroid/view/ContextMenu;Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 773
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 770
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    iget v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog2;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;I)Lcom/android/settings/wifi/WifiDialog2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 1416
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x6

    const v1, 0x7f040a02

    const/4 v2, 0x0

    .line 1417
    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02038f

    .line 1418
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v1, 0x2

    .line 1419
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1421
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {v0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    .line 525
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 779
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 780
    invoke-virtual {p0, p0}, Lcom/android/settings/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    .line 786
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 787
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 788
    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    .line 1207
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->forget(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void
.end method

.method public onInternetTypeChanged(I)V
    .locals 0

    .line 803
    new-instance p1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNumSavedNetworksChanged()V
    .locals 1

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 914
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 1

    .line 919
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1426
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1427
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isPhoneOnCall()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1428
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->showResetInternetDialog()V

    return v0

    .line 1431
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->fixConnectivity()V

    return v0

    .line 1434
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 692
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 693
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 694
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    .line 697
    :cond_0
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v0, :cond_1

    .line 698
    check-cast p1, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->onSelectedWifiPreferenceClick(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    goto :goto_0

    .line 699
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    if-ne p1, v0, :cond_2

    .line 700
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->onAddNetworkPressed()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 702
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 490
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 493
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 495
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 500
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/settings/RestrictedSettingsFragment;->isUiRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 503
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->restrictUi()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 506
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->changeNextButtonState(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 582
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 584
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    .line 585
    iget v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogMode:I

    const-string v1, "dialog_mode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 586
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mDialogWifiEntryKey:Ljava/lang/String;

    const-string/jumbo v0, "wifi_ap_key"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScan(Lcom/android/settings/wifi/WifiDialog2;Ljava/lang/String;)V
    .locals 0

    .line 1240
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getEnrolleeQrCodeScannerIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    .line 1239
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method onSelectedWifiPreferenceClick(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V
    .locals 2

    .line 709
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 711
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    return-void

    .line 716
    :cond_0
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 717
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    return-void

    .line 721
    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 468
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 469
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    if-eqz v0, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    .line 472
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-eqz v0, :cond_2

    .line 475
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->restrictUi()V

    return-void

    .line 478
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v0, 0x1

    .line 512
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mRemoveLoadingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 514
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mUpdateWifiEntryPreferencesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 515
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 516
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    .line 517
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 4

    .line 1212
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1214
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getMode()I

    move-result v0

    .line 1215
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1216
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_1

    .line 1220
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f041812

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1221
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1223
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v1, p0}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_5

    .line 1226
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-nez v1, :cond_4

    .line 1228
    invoke-virtual {p0, p1, v3, v3}, Lcom/android/settings/network/NetworkProviderSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;ZZ)V

    goto :goto_0

    .line 1231
    :cond_4
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/network/NetworkProviderSettings$WifiConnectActionListener-IA;)V

    invoke-virtual {p1, v1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 268
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const p1, 0x7f0601de

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    const/4 p1, 0x0

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 277
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 278
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setLoading(ZZ)V

    .line 279
    iput-boolean p2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsViewLoading:Z

    :cond_1
    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 2

    .line 884
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 885
    iput-boolean v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsWifiEntryListStale:Z

    .line 886
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 888
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferencesDelayed()V

    .line 890
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_1

    .line 891
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 890
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->changeNextButtonState(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda9;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    .line 896
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda10;-><init>()V

    .line 897
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda11;-><init>()V

    .line 899
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 901
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 903
    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mOpenSsid:Ljava/lang/String;

    .line 904
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->launchConfigNewNetworkFragment(Lcom/android/wifitrackerlib/WifiEntry;)V

    :cond_2
    return-void
.end method

.method public onWifiStateChanged()V
    .locals 4

    .line 811
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 814
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    .line 816
    invoke-static {}, Lcom/android/settings/network/NetworkProviderSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    const-string v2, "NetworkProviderSettings"

    if-eqz v1, :cond_1

    .line 817
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWifiStateChanged called with wifi state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "onWifiStateChanged shouldn\'t run when fragment is finishing or destroyed"

    .line 821
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setWifiScanMessage(Z)V

    .line 828
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->updateWifiEntryPreferences()V

    goto :goto_0

    .line 832
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 833
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    .line 834
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 843
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->setWifiScanMessage(Z)V

    .line 844
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 845
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    .line 846
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    .line 847
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 848
    iput-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    goto :goto_0

    .line 838
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeConnectedWifiEntryPreference()V

    .line 839
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->removeWifiEntryPreference()V

    :cond_7
    :goto_0
    return-void
.end method

.method openSubscriptionHelpPage(Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 1

    .line 1399
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/NetworkProviderSettings;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 1402
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1404
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity was not found for intent, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NetworkProviderSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method setAdditionalSettingsSummaries()V
    .locals 4

    .line 1110
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mConfigureWifiSettingsPreference:Landroidx/preference/Preference;

    .line 1111
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0417ae

    goto :goto_0

    :cond_0
    const v1, 0x7f0417ad

    .line 1110
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 1116
    :cond_1
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedNetworks()I

    move-result v0

    .line 1117
    :goto_1
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    .line 1118
    :cond_2
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getNumSavedSubscriptions()I

    move-result v2

    :goto_2
    add-int v3, v0, v2

    if-lez v3, :cond_3

    .line 1120
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 1121
    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    .line 1122
    invoke-direct {p0, v0, v2}, Lcom/android/settings/network/NetworkProviderSettings;->getSavedNetworkSettingsSummaryText(II)Ljava/lang/String;

    move-result-object p0

    .line 1121
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1124
    :cond_3
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mSavedNetworksPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_3
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 1162
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showPinnedHeader(Z)V

    return-void
.end method

.method setWifiScanMessage(Z)V
    .locals 3

    .line 855
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 860
    :cond_0
    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 861
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSettings;->hasWifiManager()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_3

    invoke-virtual {v1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 862
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 866
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 867
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f041883

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 868
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f041882

    .line 869
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 868
    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    .line 870
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 872
    :cond_2
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 863
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiStatusMessagePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method showAnySubscriptionInfo(Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 352
    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method showResetInternetDialog()V
    .locals 2

    .line 1439
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1440
    new-instance v1, Lcom/android/settings/network/NetworkProviderSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/network/NetworkProviderSettings$3;-><init>(Lcom/android/settings/network/NetworkProviderSettings;)V

    const p0, 0x7f04115e

    .line 1447
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f041153

    .line 1448
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0415cc

    .line 1449
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    .line 1450
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 1451
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 1452
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected updateWifiEntryPreferences()V
    .locals 8

    .line 945
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    if-eqz v0, :cond_b

    .line 950
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto/16 :goto_4

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 957
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getConnectedWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    .line 958
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->getConnectedWifiPreferenceCategory()Landroidx/preference/PreferenceCategory;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 959
    :goto_0
    invoke-virtual {v2, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v0, :cond_4

    .line 962
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v4, :cond_3

    .line 963
    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v4

    if-eq v4, v0, :cond_5

    .line 964
    :cond_3
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 966
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkProviderSettings;->createConnectedWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    move-result-object v4

    .line 967
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 968
    invoke-virtual {v4}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->refresh()V

    .line 969
    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 970
    new-instance v5, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0, v0, v4}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 978
    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, v4}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    invoke-virtual {v4, v0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;)V

    .line 982
    iget-boolean v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    if-eqz v0, :cond_5

    .line 983
    iput-boolean v3, p0, Lcom/android/settings/network/NetworkProviderSettings;->mClickedConnect:Z

    .line 984
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->scrollToPreference(Landroidx/preference/Preference;)V

    goto :goto_1

    .line 988
    :cond_4
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 992
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 993
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getWifiEntries()Ljava/util/List;

    move-result-object v0

    .line 994
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    move v4, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wifitrackerlib/WifiEntry;

    .line 997
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 999
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    if-eqz v6, :cond_7

    .line 1001
    invoke-virtual {v6}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v7

    if-ne v7, v2, :cond_6

    add-int/lit8 v2, v4, 0x1

    .line 1002
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setOrder(I)V

    move v4, v2

    move v2, v1

    goto :goto_2

    .line 1006
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 1010
    :cond_7
    invoke-virtual {p0, v2}, Lcom/android/settings/network/NetworkProviderSettings;->createLongPressWifiEntryPreference(Lcom/android/wifitrackerlib/WifiEntry;)Lcom/android/settings/wifi/LongPressWifiEntryPreference;

    move-result-object v5

    .line 1011
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    add-int/lit8 v6, v4, 0x1

    .line 1012
    invoke-virtual {v5, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1013
    invoke-virtual {v5}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;->refresh()V

    .line 1015
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getHelpUriString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1016
    new-instance v4, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v5, v4}, Lcom/android/settings/wifi/WifiEntryPreference;->setOnButtonClickListener(Lcom/android/settings/wifi/WifiEntryPreference$OnButtonClickListener;)V

    .line 1020
    :cond_8
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v2, v1

    move v4, v6

    goto :goto_2

    .line 1022
    :cond_9
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    if-nez v2, :cond_a

    .line 1025
    invoke-virtual {p0, v1}, Lcom/android/settings/network/NetworkProviderSettings;->setProgressBarVisible(Z)V

    .line 1026
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1027
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v1, 0x7f04180c

    .line 1028
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    add-int/lit8 v1, v4, 0x1

    .line 1029
    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v2, "wifi_empty_list"

    .line 1030
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 1031
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    move v4, v1

    goto :goto_3

    .line 1034
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1037
    :goto_3
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings;->mWifiEntryPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/network/NetworkProviderSettings;->mAddWifiNetworkPreference:Lcom/android/settings/wifi/AddWifiNetworkPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 1039
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSettings;->setAdditionalSettingsSummaries()V

    :cond_b
    :goto_4
    return-void
.end method
