.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ImeiInfoPreferenceController.java"


# static fields
.field private static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "device_detail_category"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mIsMultiSim:Z

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    const-string/jumbo p2, "phone"

    .line 56
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mIsMultiSim:Z

    return-void
.end method

.method private getPhoneType(I)I
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 158
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 159
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result p0

    return p0
.end method

.method private getSummary(I)Ljava/lang/CharSequence;
    .locals 2

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getPhoneType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 151
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getPhoneType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForCdmaPhone(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForGsmPhone(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTitleForCdmaPhone(I)Ljava/lang/CharSequence;
    .locals 4

    .line 146
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mIsMultiSim:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f040db4

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f041435

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTitleForGsmPhone(I)Ljava/lang/CharSequence;
    .locals 4

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mIsMultiSim:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f040b22

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f041432

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private updatePreference(Landroidx/preference/Preference;I)V
    .locals 1

    .line 136
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 0

    .line 165
    new-instance p0, Lcom/android/settings/deviceinfo/PhoneNumberSummaryPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberSummaryPreference;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "device_detail_category"

    .line 71
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 73
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 74
    invoke-direct {p0, v0, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;I)V

    .line 76
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const/4 v2, 0x1

    .line 78
    :goto_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 80
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v3

    add-int v4, v0, v2

    .line 81
    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 84
    iget-object v4, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-direct {p0, v3, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    .line 126
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

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

.method public setHost(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 97
    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
