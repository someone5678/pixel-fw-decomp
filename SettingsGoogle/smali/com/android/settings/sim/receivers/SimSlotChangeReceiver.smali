.class public Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimSlotChangeReceiver.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private final mSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;


# direct methods
.method public static synthetic $r8$lambda$Ht9mrKk4mH-knbN_XUFMXpJwwfM(ILandroid/telephony/UiccCardInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->lambda$findUiccCardInfoBySlot$1(ILandroid/telephony/UiccCardInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wq6AgDL6v0f_BEGYK3GAt-HpeNE(Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->lambda$onReceive$0(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    invoke-static {}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->get()Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private findUiccCardInfoBySlot(Landroid/telephony/TelephonyManager;I)Landroid/telephony/UiccCardInfo;
    .locals 1

    .line 140
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 144
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p2}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda2;-><init>(I)V

    .line 145
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 147
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/UiccCardInfo;

    return-object p0
.end method

.method private isSimSlotStateValid(Landroid/content/Context;)Z
    .locals 10

    .line 92
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 93
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object v0

    const-string v1, "SlotChangeReceiver"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo p0, "slotInfos is null. Unable to get slot infos."

    .line 95
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    .line 100
    :goto_0
    array-length v6, v0

    if-ge v4, v6, :cond_8

    .line 101
    aget-object v6, v0, v4

    if-nez v6, :cond_1

    return v2

    .line 110
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_7

    .line 111
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardStateInfo()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    goto :goto_3

    .line 116
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->findUiccCardInfoBySlot(Landroid/telephony/TelephonyManager;I)Landroid/telephony/UiccCardInfo;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {v7}, Landroid/telephony/UiccCardInfo;->getPorts()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/UiccPortInfo;

    .line 121
    invoke-virtual {v6}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 122
    invoke-virtual {v8}, Landroid/telephony/UiccPortInfo;->getIccId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_7
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The SIM state is in an error. Drop the event. SIM info: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    if-eqz v5, :cond_9

    const-string p0, "All UICC card strings are empty. Drop this event."

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    return v3
.end method

.method private static synthetic lambda$findUiccCardInfoBySlot$1(ILandroid/telephony/UiccCardInfo;)Z
    .locals 0

    .line 145
    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->shouldHandleSlotChange(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->mSlotChangeHandler:Lcom/android/settings/sim/receivers/SimSlotChangeHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeHandler;->onSlotsStatusChange(Landroid/content/Context;)V

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p0, p2}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda1;-><init>(Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 59
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private shouldHandleSlotChange(Landroid/content/Context;)Z
    .locals 4

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SlotChangeReceiver"

    if-nez v0, :cond_0

    const-string p0, "The flag is off. Ignore slot changes."

    .line 67
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 71
    :cond_0
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->getOtaStatus()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    const-string p0, "Ignore slot changes because eSIM OTA is in progress."

    .line 78
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;->isSimSlotStateValid(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "Ignore slot changes because SIM states are not valid."

    .line 83
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return v3

    :cond_4
    :goto_0
    const-string p0, "Ignore slot changes because EuiccManager is disabled."

    .line 73
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.telephony.action.SIM_SLOT_STATUS_CHANGED"

    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignore slot changes due to unexpected action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SlotChangeReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/sim/receivers/SimSlotChangeReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sim/receivers/SimSlotChangeReceiver;Landroid/content/Context;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
