.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/widget/EmptyTextSettings;
.source "NotificationAccessSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field protected mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mNm:Landroid/app/NotificationManager;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settingslib/applications/ServiceListing;


# direct methods
.method public static synthetic $r8$lambda$2sDwhcd5dZAFlNQkyckcQBYP7UA(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/NotificationAccessSettings;->lambda$updateList$3(Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ABu2YftPqXWyHiy1yKi8KgtdLcs(Lcom/android/settings/notification/NotificationAccessSettings;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->lambda$onCreate$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LcFaWIClOiZoo_096xz_X_mNbcU(Landroid/content/pm/ServiceInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->lambda$onCreate$0(Landroid/content/pm/ServiceInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k8IRwrwIOcgw3aE0NB_hx4uh1u0(Lcom/android/settings/notification/NotificationAccessSettings;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->lambda$updateList$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zBqpTIP94fn9D47r-oA58JfwAJc(Lcom/android/settings/notification/NotificationAccessSettings;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 70
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    const-string v1, "NotifAccessSettings"

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.service.notification.NotificationListenerService"

    .line 74
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "notification listener"

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const v1, 0x7f040f75

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogTitle(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const v1, 0x7f040f74

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogSummary(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const v1, 0x7f040f18

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setEmptyText(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 228
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f1600ae

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/widget/EmptyTextSettings;-><init>()V

    .line 89
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/content/pm/ServiceInfo;)Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x1f4

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$1()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f040f99

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateList$2()Ljava/lang/String;
    .locals 1

    const v0, 0x7f04194d

    .line 180
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$updateList$3(Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;Landroidx/preference/Preference;)Z
    .locals 2

    .line 184
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 185
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string/jumbo v1, "uid"

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 189
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/specialaccess/notificationaccess/NotificationAccessDetails;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f040d5e

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 196
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    iget-object p1, p2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 198
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "allowed"

    .line 148
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 149
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const-string v3, "not_allowed"

    .line 150
    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 151
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 153
    new-instance v3, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v3, v4}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-interface {p1, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 155
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 158
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    .line 159
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 158
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 159
    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v7, "NotifAccessSettings"

    const-string v8, "can\'t find package name"

    .line 162
    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    :goto_1
    new-instance v6, Lcom/android/settingslib/widget/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settingslib/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 166
    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 168
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 167
    invoke-virtual {v5, v3, v7, v8}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string v5, "companiondevice"

    .line 171
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 170
    invoke-static {v5}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {v7}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 174
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    .line 170
    invoke-static {v5, v7, v8, v9}, Lcom/android/settings/notification/NotificationBackend;->getDeviceList(Landroid/companion/ICompanionDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v5, -0x2710

    if-eq v0, v5, :cond_0

    .line 175
    iget-object v5, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 176
    invoke-virtual {v5, v7, v0}, Landroid/app/admin/DevicePolicyManager;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    iget-object v5, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v5

    new-instance v7, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda3;

    invoke-direct {v7, p0}, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;)V

    const-string v8, "Settings.WORK_PROFILE_NOTIFICATION_LISTENER_BLOCKED"

    invoke-virtual {v5, v8, v7}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :cond_0
    new-instance v5, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v4, v3}, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/pm/ServiceInfo;)V

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 202
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    invoke-virtual {v2, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 206
    :cond_1
    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xb3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600ae

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 219
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 220
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mNm:Landroid/app/NotificationManager;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 97
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 98
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 99
    new-instance p1, Lcom/android/settingslib/applications/ServiceListing$Builder;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 102
    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 104
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setTag(Ljava/lang/String;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda0;-><init>()V

    .line 105
    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing$Builder;->setValidator(Ljava/util/function/Predicate;)Lcom/android/settingslib/applications/ServiceListing$Builder;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/android/settingslib/applications/ServiceListing$Builder;->build()Lcom/android/settingslib/applications/ServiceListing;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    .line 112
    new-instance v0, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ServiceListing;->addCallback(Lcom/android/settingslib/applications/ServiceListing$Callback;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 117
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAccessSettings$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;)V

    const-string v2, "Settings.WORK_APPS_CANNOT_ACCESS_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 116
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 119
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 139
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 140
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ServiceListing;->reload()V

    .line 134
    iget-object p0, p0, Lcom/android/settings/notification/NotificationAccessSettings;->mServiceListing:Lcom/android/settingslib/applications/ServiceListing;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/applications/ServiceListing;->setListening(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 126
    invoke-super {p0, p1, p2}, Lcom/android/settings/widget/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 127
    sget-object p1, Lcom/android/settings/notification/NotificationAccessSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget p1, p1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/EmptyTextSettings;->setEmptyText(I)V

    return-void
.end method
