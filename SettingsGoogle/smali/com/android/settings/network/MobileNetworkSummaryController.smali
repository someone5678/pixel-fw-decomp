.class public Lcom/android/settings/network/MobileNetworkSummaryController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkSummaryController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPreference:Lcom/android/settings/widget/AddPreference;

.field private mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$9MufDBuOba3BBmin-Bp714nGH4U(Lcom/android/settings/network/MobileNetworkSummaryController;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$getSummary$0(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qfd_T5tA7vD_ChhIibGzbgjGIg4(Lcom/android/settings/network/MobileNetworkSummaryController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZsCTK-0E2FfcMg430v774JcE-w(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/widget/AddPreference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$3(Lcom/android/settings/widget/AddPreference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a9LaDwYHGvbK83bUA2XD-Hsfkbo(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$1(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b68eCQwsxO3eDcITZJJa_lGCmsU(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$onSubscriptionsChanged$6(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVanGiy73oyHBB2K6OQtc03B9-Q(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$update$4(Ljava/util/List;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lRN6lIBK0gu2nMZMXWV4tN6eHSw(Lcom/android/settings/network/MobileNetworkSummaryController;Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->lambda$onAirplaneModeChanged$5(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-direct {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 83
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 84
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUserManager:Landroid/os/UserManager;

    if-eqz p2, :cond_0

    .line 86
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 87
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private initPreference()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/AddPreference;->setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$getSummary$0(I)Ljava/lang/CharSequence;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getDisplayName(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onAirplaneModeChanged$5(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    .line 220
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method private synthetic lambda$onSubscriptionsChanged$6(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 227
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method private synthetic lambda$update$1(Lcom/android/settings/network/MobileNetworkSummaryStatus;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->initPreference()V

    return-void
.end method

.method private synthetic lambda$update$2(Landroidx/preference/Preference;)Z
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->logPreferenceClick(Landroidx/preference/Preference;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->startAddSimFlow()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$update$3(Lcom/android/settings/widget/AddPreference;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkSummaryController;->logPreferenceClick(Landroidx/preference/Preference;)V

    .line 182
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->startAddSimFlow()V

    return-void
.end method

.method private synthetic lambda$update$4(Ljava/util/List;Landroidx/preference/Preference;)Z
    .locals 1

    .line 188
    invoke-direct {p0, p2}, Lcom/android/settings/network/MobileNetworkSummaryController;->logPreferenceClick(Landroidx/preference/Preference;)V

    const/4 p2, 0x0

    .line 190
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    .line 191
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    .line 192
    invoke-virtual {p2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isPhysicalSimDisableSupport()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 199
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result p1

    .line 198
    invoke-static {p0, p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->startToggleSubscriptionDialogActivity(Landroid/content/Context;IZ)V

    return v0

    .line 193
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 194
    invoke-virtual {p1}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 193
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    return v0
.end method

.method private logPreferenceClick(Landroidx/preference/Preference;)V
    .locals 2

    .line 137
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 138
    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "category"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logClickedPreference(Landroidx/preference/Preference;I)Z

    return-void
.end method

.method private startAddSimFlow()V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.euicc.action.PROVISION_EMBEDDED_SUBSCRIPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.euicc.extra.FORCE_PROVISION"

    const/4 v2, 0x1

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getSubscriptionList()Ljava/util/List;

    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfigSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :goto_0
    return-void

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfigSupport()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v3}, Lcom/android/settings/network/SubscriptionsChangeListener;->isAirplaneModeOn()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/AddPreference;->setAddWidgetEnabled(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v3, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/AddPreference;->setOnAddClickListener(Lcom/android/settings/widget/AddPreference$OnAddClickListener;)V

    .line 186
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 187
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 203
    :cond_4
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    const-class v0, Lcom/android/settings/network/MobileNetworkListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/AddPreference;

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mPreference:Lcom/android/settings/widget/AddPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "mobile_network_list"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getSubscriptionList()Ljava/util/List;

    move-result-object v0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isEuiccConfigSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040e27

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    .line 120
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    .line 121
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/helper/SubscriptionAnnotation;

    .line 122
    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->getDisplayName(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 123
    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    .line 124
    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->isPhysicalSimDisableSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 127
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f040e28

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v3

    .line 129
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda1;-><init>()V

    .line 130
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    .line 131
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ", "

    .line 132
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 210
    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 2

    .line 220
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 99
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkSummaryController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkSummaryController;->mStatusCache:Lcom/android/settings/network/MobileNetworkSummaryStatus;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/settings/network/MobileNetworkSummaryController$$ExternalSyntheticLambda7;-><init>(Lcom/android/settings/network/MobileNetworkSummaryController;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileNetworkSummaryStatus;->update(Landroid/content/Context;Ljava/util/function/Consumer;)V

    return-void
.end method
