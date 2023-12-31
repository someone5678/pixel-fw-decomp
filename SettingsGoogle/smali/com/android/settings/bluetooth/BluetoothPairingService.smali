.class public final Lcom/android/settings/bluetooth/BluetoothPairingService;
.super Landroid/app/Service;
.source "BluetoothPairingService.java"


# static fields
.field static final ACTION_DISMISS_PAIRING:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

.field static final ACTION_PAIRING_DIALOG:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_PAIRING_DIALOG"

.field static final NOTIFICATION_ID:I = 0x1080080


# instance fields
.field private final mCancelReceiver:Landroid/content/BroadcastReceiver;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field mNm:Landroid/app/NotificationManager;

.field private mRegistered:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/BluetoothPairingService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 86
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingService$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingService;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createPairingNotification(Landroid/content/Intent;)V
    .locals 11

    .line 168
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 169
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "bluetooth_notification_channel"

    invoke-direct {v1, p0, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080080

    .line 171
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v3, 0x7f04050e

    .line 172
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x1

    .line 173
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLocalOnly(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v5, -0x80000000

    .line 175
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 177
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.settings.bluetooth.ACTION_PAIRING_DIALOG"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    const-class v8, Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    iget-object v8, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v9, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {v7, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v4, 0x2

    if-eq v6, v4, :cond_0

    const/4 v4, 0x4

    if-eq v6, v4, :cond_0

    const/4 v4, 0x5

    if-ne v6, v4, :cond_1

    :cond_0
    const-string v4, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 185
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 187
    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/high16 v4, 0x4c000000    # 3.3554432E7f

    const/4 v5, 0x0

    .line 190
    invoke-static {p0, v5, v7, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 194
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-class v7, Lcom/android/settings/bluetooth/BluetoothPairingService;

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v7, 0x44000000    # 512.0f

    .line 197
    invoke-static {p0, v5, v6, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const-string v7, "android.bluetooth.device.extra.NAME"

    .line 200
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 202
    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_2

    .line 203
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const p1, 0x104000e

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v7, p1

    .line 206
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Show pairing notification for  ("

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "BluetoothPairingService"

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance p1, Landroidx/core/app/NotificationCompat$Action$Builder;

    const v8, 0x7f0404b7

    .line 209
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p1, v5, v8, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    .line 210
    new-instance v8, Landroidx/core/app/NotificationCompat$Action$Builder;

    const/high16 v9, 0x1040000

    .line 211
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v5, v9, v6}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v6

    const v8, 0x7f04050f

    .line 213
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v8

    const v9, 0x7f04050d

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v7, v10, v5

    .line 214
    invoke-virtual {v0, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const v3, 0x106001c

    .line 218
    invoke-virtual {p0, v3}, Landroid/app/Service;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1, v6}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    .line 222
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 7

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v3, -0x80000000

    .line 66
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 68
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 69
    const-class v6, Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    invoke-virtual {v5, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x2

    if-eq v4, p0, :cond_0

    const/4 p0, 0x4

    if-eq v4, p0, :cond_0

    const/4 p0, 0x5

    if-ne v4, p0, :cond_1

    :cond_0
    const-string p0, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 75
    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 77
    invoke-virtual {v5, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.bluetooth.device.extra.PAIRING_INITIATOR"

    .line 78
    invoke-virtual {v5, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string p0, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 80
    invoke-virtual {v5, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 81
    invoke-virtual {v5, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v5
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 116
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mNm:Landroid/app/NotificationManager;

    .line 117
    new-instance v0, Landroid/app/NotificationChannel;

    const v1, 0x7f040472

    .line 119
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bluetooth_notification_channel"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 121
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 p2, 0x2

    const-string p3, "BluetoothPairingService"

    if-nez p1, :cond_0

    const-string p1, "Can\'t start: null intent!"

    .line 127
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p2

    .line 131
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 134
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const v2, 0x1080080

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not bonding: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return p2

    :cond_1
    const-string v1, "android.bluetooth.device.action.PAIRING_REQUEST"

    .line 143
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingService;->createPairingNotification(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.android.settings.bluetooth.ACTION_DISMISS_PAIRING"

    .line 145
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification cancel  ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 148
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    :cond_3
    const-string p3, "com.android.settings.bluetooth.ACTION_PAIRING_DIALOG"

    .line 150
    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 151
    invoke-static {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothPairingService;->getPairingDialogIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object p1

    .line 154
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 155
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.bluetooth.device.action.PAIRING_CANCEL"

    .line 156
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object p3, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mCancelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p3, p2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingService;->mRegistered:Z

    .line 161
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return v3
.end method
