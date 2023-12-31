.class public Lcom/android/settings/network/NetworkProviderSimListController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkProviderSimListController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field final mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$HJX5vYumPuqPIu_hZSFCEDla_fg(Lcom/android/settings/network/NetworkProviderSimListController;ILandroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSimListController;->lambda$update$0(ILandroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/network/NetworkProviderSimListController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Lcom/android/settings/network/NetworkProviderSimListController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/NetworkProviderSimListController$1;-><init>(Lcom/android/settings/network/NetworkProviderSimListController;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 62
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 63
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    .line 64
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private synthetic lambda$update$0(ILandroid/telephony/SubscriptionInfo;Landroidx/preference/Preference;)Z
    .locals 1

    .line 124
    iget-object p3, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 125
    invoke-static {p3}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0}, Lcom/android/settings/network/SubscriptionUtil;->startToggleSubscriptionDialogActivity(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V

    :goto_0
    return v0
.end method

.method private update()V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    .line 108
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->getAvailablePhysicalSubscription()Ljava/util/List;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 112
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    if-nez v4, :cond_1

    .line 115
    new-instance v4, Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 116
    iget-object v5, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 118
    :cond_1
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/network/NetworkProviderSimListController;->getSummary(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v5, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v3, v2}, Lcom/android/settings/network/NetworkProviderSimListController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/NetworkProviderSimListController;ILandroid/telephony/SubscriptionInfo;)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferences:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 136
    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "provider_model_sim_category"

    .line 98
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 99
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method protected getAvailablePhysicalSubscription()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 171
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 172
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getDefaultDataSubscriptionId()I
    .locals 0

    .line 211
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultSmsSubscriptionId()I
    .locals 0

    .line 206
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultVoiceSubscriptionId()I
    .locals 0

    .line 201
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "provider_model_sim_list"

    return-object p0
.end method

.method public getSummary(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/network/SubscriptionUtil;->getDefaultSimConfig(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 143
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f04139f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 148
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p2

    .line 152
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Lcom/android/settings/network/SubscriptionUtil;->showToggleForPhysicalSim(Landroid/telephony/SubscriptionManager;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f0413a1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f040e28

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->getAvailablePhysicalSubscription()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 70
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mDataSubscriptionChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 189
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 194
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 195
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimListController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 196
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->update()V

    return-void
.end method
