.class public Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;
    }
.end annotation


# instance fields
.field mBatteryHealth:I

.field mBatteryLevel:Ljava/lang/String;

.field private mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

.field mBatteryStatus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;Z)V
    .locals 6

    if-eqz p1, :cond_7

    .line 112
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    .line 114
    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 116
    invoke-static {v2, p1, v3}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/Context;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v2

    const-string v4, "health"

    const/4 v5, 0x1

    .line 117
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 119
    invoke-static {p1}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "BatteryBroadcastRcvr"

    const-string p2, "Problem reading the battery meter."

    .line 120
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    invoke-interface {p1, v3}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    .line 124
    :cond_1
    iget p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryHealth:I

    if-eq v4, p1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 127
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    invoke-interface {p1, v5}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    invoke-interface {p1, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    .line 131
    :cond_4
    :goto_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryLevel:Ljava/lang/String;

    .line 132
    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryStatus:Ljava/lang/String;

    .line 133
    iput v4, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryHealth:I

    goto :goto_1

    .line 134
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 135
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    goto :goto_1

    .line 136
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "battery.dock.defender.bypass"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 137
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    invoke-interface {p0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;->onBatteryChanged(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 90
    invoke-direct {p0, p2, p1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->updateBatteryStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method public register()V
    .locals 2

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "battery.dock.defender.bypass"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->updateBatteryStatus(Landroid/content/Intent;Z)V

    return-void
.end method

.method public setBatteryChangedListener(Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mBatteryListener:Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver$OnBatteryChangedListener;

    return-void
.end method

.method public unRegister()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
