.class public Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;
.super Ljava/lang/Object;
.source "ReverseChargingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxStatusCallback;,
        Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxInformationCallback;,
        Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static sInstance:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;


# instance fields
.field mContext:Landroid/content/Context;

.field mIsRtxSupported:Z

.field mReverseChargingCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;",
            ">;"
        }
    .end annotation
.end field

.field mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

.field mRtxInformationCallback:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxInformationCallback;

.field mRtxStatusCallback:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxStatusCallback;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    sget-boolean v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ReverseChargingManager"

    const/4 v1, 0x3

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseChargingCallbacks:Ljava/util/Collection;

    .line 57
    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mContext:Landroid/content/Context;

    .line 58
    new-instance v0, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-direct {v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    .line 59
    new-instance p1, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxInformationCallback;

    invoke-direct {p1, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxInformationCallback;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;)V

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mRtxInformationCallback:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxInformationCallback;

    .line 60
    new-instance p1, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxStatusCallback;

    invoke-direct {p1, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxStatusCallback;-><init>(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;)V

    iput-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mRtxStatusCallback:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxStatusCallback;

    .line 61
    invoke-direct {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isRtxSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mIsRtxSupported:Z

    .line 63
    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mRtxInformationCallback:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxInformationCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addRtxInformationCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxInformationCallback;)V

    .line 64
    iget-object p1, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mRtxStatusCallback:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$RtxStatusCallback;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->addRtxStatusCallback(Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger$RtxStatusCallback;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->sInstance:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    invoke-direct {v0, p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->sInstance:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    .line 53
    :cond_0
    sget-object p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->sInstance:Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;

    return-object p0
.end method

.method private isRtxSupported()Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_reverse_charging:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->isRtxSupported()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method dispatchReverseChargingStateChanged()V
    .locals 1

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseChargingCallbacks:Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;

    .line 139
    invoke-interface {v0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;->onReverseChargingStateChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isOnWirelessCharge()Z
    .locals 3

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, -0x1

    const-string v2, "plugged"

    .line 118
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    move v0, p0

    :cond_0
    return v0
.end method

.method public isReverseChargingOn()Z
    .locals 2

    .line 94
    invoke-virtual {p0}, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->isOnWirelessCharge()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mIsRtxSupported:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {p0}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->isRtxModeOn()Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method isSupportedReverseCharging()Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mIsRtxSupported:Z

    return p0
.end method

.method public registerCallback(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseChargingCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setReverseChargingState(Z)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseWirelessCharger:Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/reversecharging/ReverseWirelessCharger;->setRtxMode(Z)V

    .line 104
    iget-object v0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x6f6

    .line 105
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public unregisterCallback(Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager$ReverseChargingCallback;)V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/google/android/settings/fuelgauge/reversecharging/ReverseChargingManager;->mReverseChargingCallbacks:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
