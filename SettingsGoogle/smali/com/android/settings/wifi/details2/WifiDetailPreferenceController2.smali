.class public Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiDetailPreferenceController2.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;
.implements Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;,
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;,
        Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final KEY_BUTTONS_PREF:Ljava/lang/String; = "buttons"

.field static final KEY_DATA_USAGE_HEADER:Ljava/lang/String; = "status_header"

.field static final KEY_DNS_PREF:Ljava/lang/String; = "dns"

.field static final KEY_EAP_SIM_SUBSCRIPTION_PREF:Ljava/lang/String; = "eap_sim_subscription"

.field static final KEY_FREQUENCY_PREF:Ljava/lang/String; = "frequency"

.field static final KEY_GATEWAY_PREF:Ljava/lang/String; = "gateway"

.field static final KEY_HEADER:Ljava/lang/String; = "connection_header"

.field static final KEY_IPV6_ADDRESSES_PREF:Ljava/lang/String; = "ipv6_addresses"

.field static final KEY_IPV6_CATEGORY:Ljava/lang/String; = "ipv6_category"

.field static final KEY_IP_ADDRESS_PREF:Ljava/lang/String; = "ip_address"

.field static final KEY_MAC_ADDRESS_PREF:Ljava/lang/String; = "mac_address"

.field static final KEY_RX_LINK_SPEED:Ljava/lang/String; = "rx_link_speed"

.field static final KEY_SECURITY_PREF:Ljava/lang/String; = "security"

.field static final KEY_SIGNAL_STRENGTH_PREF:Ljava/lang/String; = "signal_strength"

.field static final KEY_SSID_PREF:Ljava/lang/String; = "ssid"

.field static final KEY_SUBNET_MASK_PREF:Ljava/lang/String; = "subnet_mask"

.field static final KEY_TX_LINK_SPEED:Ljava/lang/String; = "tx_link_speed"

.field static final KEY_WIFI_TYPE_PREF:Ljava/lang/String; = "type"


# instance fields
.field private mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

.field private mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

.field private final mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field mDataUsageSummaryPref:Landroidx/preference/Preference;

.field private mDnsPref:Landroidx/preference/Preference;

.field private mEapSimSubscriptionPref:Landroidx/preference/Preference;

.field private mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

.field private final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mFrequencyPref:Landroidx/preference/Preference;

.field private mGatewayPref:Landroidx/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private final mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

.field private mIpAddressPref:Landroidx/preference/Preference;

.field private mIpv6AddressPref:Landroidx/preference/Preference;

.field private mIpv6Category:Landroidx/preference/PreferenceCategory;

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMacAddressPref:Landroidx/preference/Preference;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mNetwork:Landroid/net/Network;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mRssiSignalLevel:I

.field private mRxLinkSpeedPref:Landroidx/preference/Preference;

.field private mSecurityPref:Landroidx/preference/Preference;

.field mShowX:Z

.field private mSignalStr:[Ljava/lang/String;

.field private mSignalStrengthPref:Landroidx/preference/Preference;

.field private mSsidPref:Landroidx/preference/Preference;

.field private mSubnetPref:Landroidx/preference/Preference;

.field mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

.field private mTxLinkSpeedPref:Landroidx/preference/Preference;

.field private mTypePref:Landroidx/preference/Preference;

.field private final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$2krOz18QyC9IELb746ViY73oQig(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$showConfirmForgetDialog$6(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$9iKxZ8CKmfclNYpQMZUj5M_aXns(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PA2v8wdjhVKT5HCgxNFGTYtKIFk(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$shareNetwork$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$XpMqL74JUwXXHh_Q4bwMiipJGuE(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$updateCaptivePortalButton$5(Landroid/net/Uri;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5_czZ6APgQTgWGiR7CSU_bn8q4(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$buRB3udqNwk4WjTno9gdmxTxewA(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fRJi_UQ10yjT9qd_6GP7qSwa30c(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rcBDrcYH2VVaYDxq42YMOtLYYZw(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->lambda$displayPreference$1(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmEapSimSubscriptionPref(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/Preference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragment(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroidx/preference/PreferenceFragmentCompat;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLinkProperties(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/LinkProperties;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkCapabilities(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/net/NetworkCapabilities;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWifiEntry(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Lcom/android/wifitrackerlib/WifiEntry;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLinkProperties(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/LinkProperties;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetworkCapabilities(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshButtons(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshEntityHeader(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshIpLayerInfo(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const/4 v1, 0x3

    .line 120
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V
    .locals 2

    .line 324
    invoke-direct {p0, p3}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 167
    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 199
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 200
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 232
    new-instance v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$1;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 326
    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 327
    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V

    .line 328
    iput-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 329
    iput-object p4, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 330
    iput-object p5, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    .line 331
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f010109

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    .line 332
    iput-object p7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 333
    iput-object p8, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 334
    iput-object p9, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    .line 335
    iput-object p10, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    .line 337
    iput-object p6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 338
    invoke-virtual {p6, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private canShareNetwork()Z
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canShare()Z

    move-result p0

    return p0
.end method

.method private canSignIntoNetwork()Z
    .locals 0

    .line 939
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    return p0
.end method

.method private forgetNetwork()V
    .locals 3

    .line 953
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->showConfirmForgetDialog()V

    return-void

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V

    .line 961
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 963
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x89

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 964
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private getCaptivePortalVenueInfoUrl()Landroid/net/Uri;
    .locals 1

    .line 418
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 422
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 426
    :cond_1
    invoke-virtual {p0}, Landroid/net/CaptivePortalData;->getVenueInfoUrl()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getConnectDisconnectButtonIconResource()I
    .locals 1

    .line 844
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0203b6

    return p0

    .line 851
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f0203dd

    return p0
.end method

.method private getConnectDisconnectButtonTextResource()I
    .locals 1

    .line 831
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f0417c1

    return p0

    .line 839
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid WifiEntry connected state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const p0, 0x7f0417b4

    return p0

    :cond_2
    const p0, 0x7f0417b0

    return p0
.end method

.method private getExpiryTimeSummary()Ljava/lang/String;
    .locals 9

    .line 456
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getCaptivePortalData()Landroid/net/CaptivePortalData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/CaptivePortalData;->getExpiryTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return-object v1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mClock:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-virtual {v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 466
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 467
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v3

    .line 465
    invoke-static {v2, v3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    .line 469
    invoke-virtual {v0, v2}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    const-wide/16 v3, 0x2

    .line 473
    invoke-virtual {v0, v3, v4}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/time/ZonedDateTime;->isAfter(Ljava/time/chrono/ChronoZonedDateTime;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 475
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0418df

    new-array v3, v3, [Ljava/lang/Object;

    .line 477
    invoke-static {v0, v2}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    long-to-double v5, v5

    .line 475
    invoke-static {p0, v5, v6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 482
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f04180e

    new-array v1, v3, [Ljava/lang/Object;

    sget-object v3, Ljava/time/format/FormatStyle;->SHORT:Ljava/time/format/FormatStyle;

    .line 483
    invoke-static {v3}, Ljava/time/format/DateTimeFormatter;->ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 482
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method private getMacAddressTitle()I
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getPrivacy()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 791
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x7f041777

    goto :goto_0

    :cond_0
    const p0, 0x7f041776

    :goto_0
    return p0

    :cond_1
    const p0, 0x7f041773

    return p0
.end method

.method private static ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;
    .locals 0

    .line 913
    :try_start_0
    invoke-static {p0}, Lcom/android/net/module/util/Inet4AddressUtils;->getPrefixMaskAsInet4Address(I)Ljava/net/Inet4Address;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$displayPreference$0(Landroid/view/View;)V
    .locals 0

    .line 361
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->forgetNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$1(Landroid/view/View;)V
    .locals 0

    .line 364
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->signIntoNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$2(Landroid/view/View;)V
    .locals 0

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->connectDisconnectNetwork()V

    return-void
.end method

.method private synthetic lambda$displayPreference$3(Landroid/view/View;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->shareNetwork()V

    return-void
.end method

.method private synthetic lambda$shareNetwork$7()V
    .locals 0

    .line 1012
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->launchWifiDppConfiguratorActivity()V

    return-void
.end method

.method private synthetic lambda$showConfirmForgetDialog$6(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 973
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry;->forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 975
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove Passpoint configuration: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WifiDetailsPrefCtrl2"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 978
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    .line 977
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 979
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$updateCaptivePortalButton$4(Landroid/view/View;)V
    .locals 0

    .line 401
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->signIntoNetwork()V

    return-void
.end method

.method private synthetic lambda$updateCaptivePortalButton$5(Landroid/net/Uri;Landroid/view/View;)V
    .locals 1

    .line 408
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 409
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 411
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchWifiDppConfiguratorActivity()V
    .locals 7

    .line 992
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->getConfiguratorQrCodeGeneratorIntentOrNull(Landroid/content/Context;Landroid/net/wifi/WifiManager;Lcom/android/wifitrackerlib/WifiEntry;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "WifiDetailsPrefCtrl2"

    const-string v0, "Launch Wi-Fi DPP QR code generator with a wrong Wi-Fi network!"

    .line 996
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/4 v2, 0x0

    const/16 v3, 0x6ae

    const/16 v4, 0x63b

    const/4 v5, 0x0

    const/high16 v6, -0x80000000

    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    .line 1004
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static newInstance(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;
    .locals 12

    .line 307
    new-instance v11, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    new-instance v9, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    move-object v3, p2

    invoke-direct {v9, p2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;-><init>(Landroid/content/Context;)V

    new-instance v10, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;

    invoke-direct {v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;-><init>()V

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;-><init>(Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/ConnectivityManager;Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Landroid/os/Handler;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$Clock;)V

    return-object v11
.end method

.method private redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 601
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b05c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 603
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 604
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    if-ne v1, v0, :cond_0

    if-eq v2, v0, :cond_1

    .line 606
    :cond_0
    const-class v1, Landroid/graphics/drawable/VectorDrawable;

    .line 607
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    const/4 v1, 0x0

    .line 612
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 615
    invoke-static {p1, v0, v0}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 618
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 621
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x1010036

    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object v0
.end method

.method private refreshButtons()V
    .locals 8

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canForgetNetwork()Z

    move-result v0

    .line 809
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    move-result v1

    .line 810
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canConnect()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 811
    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->canDisconnect()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 812
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canShareNetwork()Z

    move-result v5

    .line 814
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v0}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 815
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 818
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v2, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 819
    invoke-virtual {v7}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v7

    if-ne v7, v4, :cond_2

    goto :goto_2

    :cond_2
    move v7, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v7, v4

    .line 818
    :goto_3
    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 820
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Enabled(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 821
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 822
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonIconResource()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 823
    iget-object v6, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    invoke-virtual {v6, v5}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Visible(Z)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 824
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshEapSimSubscription()V
    .locals 12

    .line 696
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 698
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 702
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-nez v2, :cond_1

    goto :goto_0

    .line 705
    :cond_1
    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 709
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 712
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    .line 713
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 715
    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 716
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    .line 715
    invoke-virtual {p0, v4, v2, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->fineSubscriptionInfo(ILjava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 718
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 719
    invoke-static {v2, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 718
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 724
    :cond_3
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_4

    .line 725
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const v0, 0x7f041854

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 730
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    if-nez v2, :cond_5

    .line 731
    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    iget-object v4, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler-IA;)V

    iput-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    .line 733
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    invoke-virtual {v2, v3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 734
    iget-object v4, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mCarrierIdAsyncQueryHandler:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/Telephony$CarrierId$All;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "carrier_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    new-array v10, v3, [Ljava/lang/String;

    iget p0, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 739
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v10, v1

    const/4 v11, 0x0

    const-string v9, "carrier_id=?"

    .line 734
    invoke-virtual/range {v4 .. v11}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private refreshEntityHeader()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 491
    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 492
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getExpiryTimeSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setSecondSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 493
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    :goto_0
    return-void
.end method

.method private refreshFrequency()V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 629
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 635
    :cond_0
    iget v0, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    const/16 v2, 0x960

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9c4

    if-ge v0, v2, :cond_1

    .line 638
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04178d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, 0x1324

    if-lt v0, v2, :cond_2

    const/16 v2, 0x170c

    if-ge v0, v2, :cond_2

    .line 640
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04178e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x1725

    if-lt v0, v2, :cond_3

    const/16 v2, 0x1bd5

    if-ge v0, v2, :cond_3

    .line 642
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04178f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 652
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 653
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 645
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v2}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 646
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 648
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected frequency "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WifiDetailsPrefCtrl2"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private refreshIpLayerInfo()V
    .locals 9

    .line 857
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 870
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v2, "\n"

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/LinkAddress;

    .line 873
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_2

    .line 874
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 875
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->ipv4PrefixLengthToSubnetMask(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 876
    :cond_2
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_1

    .line 877
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 883
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/RouteInfo;

    .line 884
    invoke-virtual {v7}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 885
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_4

    .line 886
    invoke-virtual {v7}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 892
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v7, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda5;-><init>()V

    .line 893
    invoke-interface {v3, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 894
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 897
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v5}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 898
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v6}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 899
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 900
    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-direct {p0, v3, v2}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result v2

    if-lez v2, :cond_6

    .line 903
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    .line 904
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 905
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    .line 907
    :cond_6
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    return-void

    .line 859
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 860
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 862
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 863
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshMacAddress()V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 764
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 770
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getMacAddressTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string v1, "02:00:00:00:00:00"

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 773
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const v0, 0x7f040859

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 775
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private refreshPage()V
    .locals 2

    const-string v0, "WifiDetailsPrefCtrl2"

    const-string v1, "Update UI!"

    .line 537
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEntityHeader()V

    .line 543
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshButtons()V

    .line 546
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshRssiViews()V

    .line 548
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshFrequency()V

    .line 550
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshSecurity()V

    .line 552
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshTxSpeed()V

    .line 554
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshRxSpeed()V

    .line 556
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshIpLayerInfo()V

    .line 558
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshSsid()V

    .line 560
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshEapSimSubscription()V

    .line 562
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshMacAddress()V

    .line 564
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshWifiType()V

    return-void
.end method

.method private refreshRssiViews()V
    .locals 4

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 573
    iput v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    return-void

    .line 577
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v1

    .line 579
    iget v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mShowX:Z

    if-ne v2, v1, :cond_1

    return-void

    .line 582
    :cond_1
    iput v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    .line 583
    iput-boolean v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mShowX:Z

    .line 584
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIconInjector:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$IconInjector;->getIcon(ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 588
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->redrawIconForHeader(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 592
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 593
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x1010429

    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 594
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStr:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRssiSignalLevel:I

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 597
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshRxSpeed()V
    .locals 5

    .line 674
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 675
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v0

    .line 681
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f0411c3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 683
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 682
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 676
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshSecurity()V
    .locals 2

    .line 657
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refreshSsid()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 691
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private refreshTxSpeed()V
    .locals 5

    .line 661
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 662
    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 667
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result v0

    .line 668
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f0415dd

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 670
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    .line 669
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 663
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private refreshWifiType()V
    .locals 2

    .line 780
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getStandardString()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 783
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 785
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private setupEntityHeader(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "connection_header"

    .line 430
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    .line 432
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->usingDataUsageHeader(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 433
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string/jumbo v0, "status_header"

    .line 434
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDataUsageSummaryPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    .line 435
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 436
    new-instance p1, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 437
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v3, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 439
    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getAllNetworkKeys()Ljava/util/Set;

    move-result-object v3

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSummaryHeaderController:Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;

    return-void

    .line 443
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 445
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    const v2, 0x7f0d0236

    .line 446
    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 444
    invoke-static {p1, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    const p1, 0x7f0d0238

    .line 448
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 450
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 452
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    return-void
.end method

.method private shareNetwork()V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda8;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-static {v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppUtils;->showLockScreen(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method private signIntoNetwork()V
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 1020
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x3f0

    .line 1019
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V

    return-void
.end method

.method private updateCaptivePortalButton()Z
    .locals 4

    .line 397
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getCaptivePortalVenueInfoUrl()Landroid/net/Uri;

    move-result-object v0

    const v1, 0x7f0203d3

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v2, 0x7f0418bb

    invoke-virtual {v0, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 400
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 401
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 402
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->canSignIntoNetwork()Z

    move-result p0

    return p0

    .line 405
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v3, 0x7f0418e8

    invoke-virtual {v2, v3}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v2

    .line 406
    invoke-virtual {v2, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/net/Uri;)V

    .line 407
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 414
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updatePreference(Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0

    .line 799
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 800
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 801
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 803
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method private usingDataUsageHeader(Landroid/content/Context;)Z
    .locals 0

    const-string/jumbo p0, "settings_wifi_details_datausage_header"

    .line 1069
    invoke-static {p1, p0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public canForgetNetwork()Z
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canForget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 932
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

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

.method public canModifyNetwork()Z
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 924
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

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

.method connectDisconnectNetwork()V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1075
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    goto :goto_0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0, p0}, Lcom/android/wifitrackerlib/WifiEntry;->disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V

    :goto_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 354
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->setupEntityHeader(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "buttons"

    .line 358
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/ActionButtonsPreference;

    const v1, 0x7f040a1d

    .line 359
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f0203b8

    .line 360
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 361
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton1OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f0418bb

    .line 362
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f0203d3

    .line 363
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 364
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton2OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 365
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonTextResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    .line 366
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->getConnectDisconnectButtonIconResource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 367
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton3OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f041350

    .line 368
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Text(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    const v1, 0x7f020386

    .line 369
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4Icon(I)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    .line 370
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/ActionButtonsPreference;->setButton4OnClickListener(Landroid/view/View$OnClickListener;)Lcom/android/settingslib/widget/ActionButtonsPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mButtonsPref:Lcom/android/settingslib/widget/ActionButtonsPreference;

    .line 371
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateCaptivePortalButton()Z

    const-string/jumbo v0, "signal_strength"

    .line 373
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSignalStrengthPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "tx_link_speed"

    .line 374
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTxLinkSpeedPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "rx_link_speed"

    .line 375
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mRxLinkSpeedPref:Landroidx/preference/Preference;

    const-string v0, "frequency"

    .line 376
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFrequencyPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "security"

    .line 377
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSecurityPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "ssid"

    .line 379
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSsidPref:Landroidx/preference/Preference;

    const-string v0, "eap_sim_subscription"

    .line 380
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const-string v0, "mac_address"

    .line 381
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMacAddressPref:Landroidx/preference/Preference;

    const-string v0, "ip_address"

    .line 382
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpAddressPref:Landroidx/preference/Preference;

    const-string v0, "gateway"

    .line 383
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mGatewayPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "subnet_mask"

    .line 384
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mSubnetPref:Landroidx/preference/Preference;

    const-string v0, "dns"

    .line 385
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mDnsPref:Landroidx/preference/Preference;

    const-string/jumbo v0, "type"

    .line 386
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mTypePref:Landroidx/preference/Preference;

    const-string v0, "ipv6_category"

    .line 388
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6Category:Landroidx/preference/PreferenceCategory;

    const-string v0, "ipv6_addresses"

    .line 389
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mIpv6AddressPref:Landroidx/preference/Preference;

    return-void
.end method

.method fineSubscriptionInfo(ILjava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    .line 747
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 750
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne p3, v1, :cond_2

    .line 751
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    if-nez p2, :cond_0

    .line 755
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    if-ne p1, v1, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onConnectResult(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1100
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f0417b3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1101
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1100
    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1102
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1103
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 1104
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f04185a

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1106
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f041810

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 1110
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onDisconnectResult(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1120
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x7f0417c3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1122
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    .line 1123
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1122
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1124
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const-string p0, "WifiDetailsPrefCtrl2"

    const-string p1, "Disconnect Wi-Fi network failed"

    .line 1127
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onForgetResult(I)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "WifiDetailsPrefCtrl2"

    const-string v0, "Forget Wi-Fi network failed"

    .line 1137
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1142
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v0, 0x89

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1143
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 518
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 520
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 525
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 526
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 2

    .line 1026
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$2;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method public onUpdated()V
    .locals 0

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->updateNetworkInfo()V

    .line 1088
    invoke-direct {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->refreshPage()V

    .line 1091
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    check-cast p0, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;->refreshPreferences()V

    return-void
.end method

.method protected showConfirmForgetDialog()V
    .locals 2

    .line 970
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)V

    const p0, 0x7f040a1d

    .line 971
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0405e3

    const/4 v1, 0x0

    .line 981
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f041815

    .line 982
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f040a1e

    .line 983
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 984
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 985
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method updateNetworkInfo()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 502
    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 503
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 504
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 505
    iget-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 507
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetwork:Landroid/net/Network;

    .line 508
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mLinkProperties:Landroid/net/LinkProperties;

    .line 509
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 510
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 511
    iput-object v0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    :goto_0
    return-void
.end method
