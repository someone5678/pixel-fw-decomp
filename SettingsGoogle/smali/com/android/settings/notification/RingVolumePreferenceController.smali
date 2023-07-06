.class public Lcom/android/settings/notification/RingVolumePreferenceController;
.super Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
.source "RingVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;,
        Lcom/android/settings/notification/RingVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_RING_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "RingVolumePreferenceController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

.field private final mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;


# direct methods
.method public static synthetic $r8$lambda$-qwdscjmkQDVBWBYD3uY5UWuMX4(Lcom/android/settings/notification/RingVolumePreferenceController;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingVolumePreferenceController;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rz7X_LA1M1YIIhbmrIM5t1GKVcU(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->lambda$onPause$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$tAAiWpb_rrR3oIxDYql-bsMGgG8(Lcom/android/settings/notification/RingVolumePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->lambda$onResume$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/RingVolumePreferenceController;)Lcom/android/settings/notification/RingVolumePreferenceController$H;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "ring_volume"

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "RingVolumePreferenceController"

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance p1, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    .line 51
    new-instance p1, Lcom/android/settings/notification/RingVolumePreferenceController$H;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/RingVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;Lcom/android/settings/notification/RingVolumePreferenceController$H-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mHandler:Lcom/android/settings/notification/RingVolumePreferenceController$H;

    const p1, 0x7f020367

    .line 60
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    const p1, 0x7f020426

    .line 61
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    const p1, 0x7f020369

    .line 62
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSeparateNotification:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateRingerMode()Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/RingVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 44
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

    .line 105
    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

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

    .line 90
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    const-string/jumbo p0, "systemui"

    .line 89
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method private onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 72
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string/jumbo v0, "volume_separate_notification"

    .line 73
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->readSeparateNotificationVolumeConfig()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    .line 77
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

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
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

    const-string/jumbo p0, "ring_volume"

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

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->isSeparateNotificationConfigEnabled()Z

    move-result p0

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 102
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->register(Z)V

    .line 104
    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 85
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/RingVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RingVolumePreferenceController$RingReceiver;->register(Z)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->readSeparateNotificationVolumeConfig()Z

    .line 88
    new-instance v0, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RingVolumePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/RingVolumePreferenceController;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->selectPreferenceIconState()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/notification/RingVolumePreferenceController;->getAvailabilityStatus()I

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
