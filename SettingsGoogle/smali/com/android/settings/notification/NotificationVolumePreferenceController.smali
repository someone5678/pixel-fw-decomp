.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
.source "NotificationVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;,
        Lcom/android/settings/notification/NotificationVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final TAG:Ljava/lang/String; = "NotificationVolumePreferenceController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

.field private final mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;


# direct methods
.method public static synthetic $r8$lambda$5vyDqvCmNvyBursCSpK7-9yLSIY(Lcom/android/settings/notification/NotificationVolumePreferenceController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JLY88tE1_uo5nFkUB72XAp3pq6I(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->lambda$onPause$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$VOps-bzegUs7gsYpiCj1-s3i7lY(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->lambda$onResume$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Lcom/android/settings/notification/NotificationVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateEnabledState(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification_volume"

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NotificationVolumePreferenceController"

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    .line 52
    new-instance p1, Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/NotificationVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;Lcom/android/settings/notification/NotificationVolumePreferenceController$H-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    const p1, 0x7f020367

    .line 61
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    const p1, 0x7f020426

    .line 62
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    const p1, 0x7f020369

    .line 63
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateRingerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private synthetic lambda$onPause$1()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V

    const-string/jumbo p0, "systemui"

    .line 116
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    .line 91
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "volume_separate_notification"

    .line 93
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result p1

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSeparateNotification:Z

    if-eq p1, v0, :cond_2

    .line 96
    iput-boolean p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSeparateNotification:Z

    .line 98
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->getAvailabilityStatus()I

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz p1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    if-ne p1, v2, :cond_2

    .line 103
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method private updateEnabledState()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    .line 183
    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setupVolPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->selectPreferenceIconState()V

    .line 84
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    return-void
.end method

.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x5

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 132
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 133
    invoke-virtual {v1}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 134
    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_0

    :cond_1
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "notification_volume"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected hintsMatch(I)Z
    .locals 2

    and-int/lit8 p0, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 123
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->register(Z)V

    .line 125
    new-instance v0, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 113
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->register(Z)V

    .line 115
    new-instance v0, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method protected selectPreferenceIconState()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_4

    .line 162
    iget-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    if-ne v3, v2, :cond_0

    .line 163
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    iput v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 164
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 165
    :cond_0
    iget v3, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    iput v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 173
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 167
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    iput v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    :cond_4
    :goto_1
    return-void
.end method
