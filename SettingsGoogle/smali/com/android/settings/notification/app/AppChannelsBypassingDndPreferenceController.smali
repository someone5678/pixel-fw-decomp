.class public Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "AppChannelsBypassingDndPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mChannels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$vR6Gwrfnr-pFKkGi8KM6VkRajqk(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/os/Bundle;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->lambda$populateList$0(Landroid/os/Bundle;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAllNotificationsToggle(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChannels(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mChannels:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceCategory(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Landroidx/preference/PreferenceCategory;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChannels(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mChannels:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$mareAllChannelsBypassing(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->areAllChannelsBypassing()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misConversation(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->isConversation(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mpopulateList(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->populateList()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNotification(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotification(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowNotificationInDnd(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotificationInDnd(Landroid/app/NotificationChannel;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mChannels:Ljava/util/List;

    return-void
.end method

.method private areAllChannelsBypassing()Z
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationChannel;

    .line 211
    invoke-direct {p0, v2}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotification(Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-direct {p0, v2}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotificationInDnd(Landroid/app/NotificationChannel;)Z

    move-result v2

    and-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isConversation(Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 236
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isDemoted()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$populateList$0(Landroid/os/Bundle;Landroidx/preference/Preference;)Z
    .locals 1

    .line 194
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/notification/app/ChannelNotificationSettings;

    .line 195
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 196
    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->userId:I

    .line 197
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p1, 0x7f040f4b

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x730

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 p0, 0x1

    return p0
.end method

.method private loadAppChannels()V
    .locals 1

    .line 131
    new-instance v0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$2;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 156
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private populateList()V
    .locals 7

    .line 160
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mChannels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationChannel;

    .line 167
    new-instance v2, Lcom/android/settingslib/PrimarySwitchPreference;

    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/PrimarySwitchPreference;-><init>(Landroid/content/Context;)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/PrimarySwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 169
    iget-object v3, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 170
    invoke-virtual {v2}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v3

    if-nez v3, :cond_2

    .line 171
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isChannelConfigurable(Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 172
    invoke-direct {p0, v1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotification(Landroid/app/NotificationChannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 169
    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/settingslib/PrimarySwitchPreference;->setSwitchEnabled(Z)V

    .line 173
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    invoke-direct {p0, v1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotificationInDnd(Landroid/app/NotificationChannel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/PrimarySwitchPreference;->setChecked(Z)V

    .line 175
    new-instance v3, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$3;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/app/NotificationChannel;)V

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 188
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 189
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    const-string/jumbo v6, "uid"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    iget-object v5, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v5, v5, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    const-string v6, "package"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v3, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fromSettings"

    .line 192
    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    new-instance v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;Landroid/os/Bundle;)V

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto/16 :goto_0

    .line 205
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->areAllChannelsBypassing()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method private showNotification(Landroid/app/NotificationChannel;)Z
    .locals 0

    .line 229
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showNotificationInDnd(Landroid/app/NotificationChannel;)Z
    .locals 1

    .line 222
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->showNotification(Landroid/app/NotificationChannel;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string/jumbo v0, "zen_mode_bypassing_app_channels_list"

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 74
    new-instance v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    const v0, 0x7f0419a3

    .line 75
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 77
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->mAllNotificationsToggle:Lcom/android/settingslib/RestrictedSwitchPreference;

    new-instance v1, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController$1;-><init>(Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->loadAppChannels()V

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "zen_mode_bypassing_app_channels_list"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isIncludedInFilter()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/notification/app/AppChannelsBypassingDndPreferenceController;->loadAppChannels()V

    :cond_0
    return-void
.end method
