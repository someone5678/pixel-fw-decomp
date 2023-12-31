.class public Lcom/android/settings/display/ScreenTimeoutSettings;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ScreenTimeoutSettings.java"

# interfaces
.implements Lcom/android/settings/support/actionbar/HelpResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenTimeoutSettings$TimeoutCandidateInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field mAdaptiveSleepBatterySaverPreferenceController:Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;

.field mAdaptiveSleepCameraStatePreferenceController:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

.field mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

.field mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

.field mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mInitialEntries:[Ljava/lang/CharSequence;

.field private mInitialValues:[Ljava/lang/CharSequence;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field private mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$WIwekGEi5VQBNm0yphmU3JIdJoI(Lcom/android/settings/display/ScreenTimeoutSettings;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenTimeoutSettings;->lambda$setupDisabledFooterPreference$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rnPjSEoRV4lUkrnB3uqIS_Rm7ho(Lcom/android/settings/display/ScreenTimeoutSettings;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->lambda$setupDisabledFooterPreference$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u_wdS46Dqkxgvv7qkKrxK4ZNl_I(Lcom/android/settings/display/ScreenTimeoutSettings;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/ScreenTimeoutSettings;->lambda$onAttach$0(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smisScreenAttentionAvailable(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->isScreenAttentionAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 332
    new-instance v0, Lcom/android/settings/display/ScreenTimeoutSettings$2;

    const v1, 0x7f1600d6

    invoke-direct {v0, v1}, Lcom/android/settings/display/ScreenTimeoutSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/ScreenTimeoutSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 75
    new-instance v0, Lcom/android/settings/display/ScreenTimeoutSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenTimeoutSettings$1;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private getCurrentSystemScreenTimeout(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x7530

    if-nez p1, :cond_0

    .line 282
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 284
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_off_timeout"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMaxScreenTimeout(Landroid/content/Context;)Ljava/lang/Long;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 267
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 269
    :cond_0
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_1

    return-object v0

    .line 273
    :cond_1
    invoke-static {p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    .line 275
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static isScreenAttentionAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 303
    invoke-static {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->isAdaptiveSleepSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onAttach$0(IZ)V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->updatePreference()V

    return-void
.end method

.method private synthetic lambda$setupDisabledFooterPreference$1()Ljava/lang/String;
    .locals 1

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040206

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setupDisabledFooterPreference$2(Landroid/view/View;)V
    .locals 0

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private setCurrentSystemScreenTimeout(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 292
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 293
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 p2, 0x6da

    long-to-int v2, v0

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "screen_off_timeout"

    invoke-static {p0, p1, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ScreenTimeout"

    const-string p2, "could not persist screen timeout setting"

    .line 298
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/display/ScreenTimeoutSettings;->getMaxScreenTimeout(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 140
    iget-object v3, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 141
    :goto_0
    iget-object v4, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 142
    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, v1

    if-gtz v4, :cond_0

    .line 143
    new-instance v4, Lcom/android/settings/display/ScreenTimeoutSettings$TimeoutCandidateInfo;

    iget-object v5, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v6, v6, v3

    .line 144
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/android/settings/display/ScreenTimeoutSettings$TimeoutCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "ScreenTimeout"

    const-string v1, "Screen timeout options do not exist."

    .line 148
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getCurrentSystemScreenTimeout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040abe

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x73c

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600d6

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 115
    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mContext:Landroid/content/Context;

    .line 116
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 118
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mInitialValues:[Ljava/lang/CharSequence;

    .line 119
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    .line 120
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    .line 122
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepCameraStatePreferenceController:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    .line 124
    new-instance v0, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepBatterySaverPreferenceController:Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;

    .line 126
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f020382

    .line 127
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f0401d4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f0601a9

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 131
    invoke-static {p1}, Landroid/hardware/SensorPrivacyManager;->getInstance(Landroid/content/Context;)Landroid/hardware/SensorPrivacyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 132
    new-instance v0, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorPrivacyManager;->addSensorPrivacyListener(ILandroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 155
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->updateVisibility()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepCameraStatePreferenceController:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->updateVisibility()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepBatterySaverPreferenceController:Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->updateVisibility()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->updatePreference()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 166
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/display/ScreenTimeoutSettings;->setCurrentSystemScreenTimeout(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method setupDisabledFooterPreference()V
    .locals 4

    .line 220
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V

    const-string v2, "Settings.OTHER_OPTIONS_DISABLED_BY_ADMIN"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 226
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v1, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/display/ScreenTimeoutSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/ScreenTimeoutSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7f0202a4

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v1, 0x7ffffffe

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 236
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7ffffffd

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method public updateCandidates()V
    .locals 7

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getCandidates()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/widget/CandidateInfo;

    .line 182
    new-instance v5, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-virtual {v4}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v4, v0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->bindPreference(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;)Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 185
    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 188
    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenTimeoutSettings;->getMaxScreenTimeout(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 190
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 194
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 195
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 198
    :cond_2
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    iget-object v2, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v2, 0x7f020382

    .line 199
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIcon(I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v2, 0x7f0401d4

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 201
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v2, 0x7f0601a9

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 204
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/ScreenTimeoutSettings;->isScreenAttentionAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepPermissionController:Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AdaptiveSleepPermissionPreferenceController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepCameraStatePreferenceController:Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AdaptiveSleepCameraStatePreferenceController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepController:Lcom/android/settings/display/AdaptiveSleepPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AdaptiveSleepPreferenceController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 208
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdaptiveSleepBatterySaverPreferenceController:Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;

    invoke-virtual {v0, v1}, Lcom/android/settings/display/AdaptiveSleepBatterySaverPreferenceController;->addToScreen(Landroidx/preference/PreferenceScreen;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mPrivacyPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 212
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenTimeoutSettings;->setupDisabledFooterPreference()V

    .line 214
    iget-object p0, p0, Lcom/android/settings/display/ScreenTimeoutSettings;->mDisableOptionsPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_4
    return-void
.end method
