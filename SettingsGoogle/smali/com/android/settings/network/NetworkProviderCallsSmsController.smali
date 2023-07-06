.class public Lcom/android/settings/network/NetworkProviderCallsSmsController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NetworkProviderCallsSmsController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mIsRtlMode:Z

.field private mPreference:Lcom/android/settingslib/RestrictedPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 64
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mUserManager:Landroid/os/UserManager;

    .line 65
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 66
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mIsRtlMode:Z

    if-eqz p2, :cond_1

    .line 70
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 71
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method private setSummaryResId(I)Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private update()V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 187
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const-class v0, Lcom/android/settings/network/NetworkProviderCallsSmsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method protected getDefaultSmsSubscriptionId()I
    .locals 0

    .line 170
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p0

    return p0
.end method

.method protected getDefaultVoiceSubscriptionId()I
    .locals 0

    .line 165
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "calls_and_sms"

    return-object p0
.end method

.method protected getPreferredStatus(II)Ljava/lang/CharSequence;
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getDefaultVoiceSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getDefaultSmsSubscriptionId()I

    move-result v3

    if-ne p2, v3, :cond_1

    move v1, v2

    .line 144
    :cond_1
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->isInService(I)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const p1, 0x7f0405da

    .line 149
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    const p1, 0x7f0405d7

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    const p1, 0x7f0405db

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, ""

    goto :goto_3

    :cond_6
    :goto_1
    if-le p1, v2, :cond_7

    const p1, 0x7f0405dd

    goto :goto_2

    :cond_7
    const p1, 0x7f0405dc

    .line 145
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 9

    .line 94
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0405d9

    .line 98
    invoke-direct {p0, v0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->setSummaryResId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 103
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 104
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2

    .line 109
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 110
    invoke-virtual {p0, v5}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->isInService(I)Z

    move-result v8

    if-eqz v8, :cond_2

    return-object v6

    .line 114
    :cond_2
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->getPreferredStatus(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 115
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    .line 121
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 123
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_4

    const-string v3, ", "

    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mIsRtlMode:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    const-string/jumbo v4, "\u200f"

    .line 131
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    return-object v1
.end method

.method public isAvailable()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mUserManager:Landroid/os/UserManager;

    .line 194
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

.method protected isInService(I)Z
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 226
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    .line 227
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isInService(Landroid/telephony/ServiceState;)Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 204
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 83
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mSubscriptionsChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 220
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 209
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderCallsSmsController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/network/NetworkProviderCallsSmsController;->update()V

    return-void
.end method
