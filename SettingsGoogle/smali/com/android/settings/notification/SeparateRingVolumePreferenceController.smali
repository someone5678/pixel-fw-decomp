.class public Lcom/android/settings/notification/SeparateRingVolumePreferenceController;
.super Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
.source "SeparateRingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;,
        Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_SEPARATE_RING_VOLUME:Ljava/lang/String; = "separate_ring_volume"

.field private static final TAG:Ljava/lang/String; = "SeparateRingVolumePreferenceController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;

.field private final mReceiver:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;


# direct methods
.method public static synthetic $r8$lambda$o4qTJ2HtTReteUflScVbniC9uoQ(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;)Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "separate_ring_volume"

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "SeparateRingVolumePreferenceController"

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;

    .line 50
    new-instance p1, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$H;

    const p1, 0x7f020391

    .line 59
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    const p1, 0x7f020426

    .line 60
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    const p1, 0x7f020392

    .line 61
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSeparateNotification:Z

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateRingerMode()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 71
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "volume_separate_notification"

    .line 72
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->readSeparateNotificationVolumeConfig()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->selectPreferenceIconState()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "separate_ring_volume"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected hintsMatch(I)Z
    .locals 1

    and-int/lit8 p0, p1, 0x4

    const/4 v0, 0x1

    if-nez p0, :cond_1

    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 100
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;->register(Z)V

    .line 102
    new-instance v0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;)V

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 84
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$RingReceiver;->register(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->readSeparateNotificationVolumeConfig()Z

    .line 88
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/SeparateRingVolumePreferenceController;)V

    const-string/jumbo v3, "systemui"

    .line 87
    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->selectPreferenceIconState()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/notification/SeparateRingVolumePreferenceController;->getAvailabilityStatus()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method
