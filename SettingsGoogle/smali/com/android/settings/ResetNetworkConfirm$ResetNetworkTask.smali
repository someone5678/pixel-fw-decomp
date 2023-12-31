.class Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetworkConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetNetworkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ResetNetworkConfirm;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 92
    iput-object p2, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 99
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/VpnManager;

    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/net/VpnManager;->factoryReset()V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    if-eqz p1, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 116
    :cond_2
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/ResetNetworkConfirm;->p2pFactoryReset(Landroid/content/Context;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-boolean p1, p1, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmSubId(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 126
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->resetSettings()V

    .line 129
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v2, "netpolicy"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 136
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    .line 137
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    if-eqz v0, :cond_6

    .line 139
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->clearBluetooth()Z

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$mrestoreDefaultApn(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "network factoryReset complete. succeeded: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ResetNetworkTask"

    .line 146
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 158
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    const p1, 0x7f041155

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f041150

    .line 162
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f04114f

    .line 163
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/ResetNetworkConfirm;->-$$Nest$fputmAlertDialog(Lcom/android/settings/ResetNetworkConfirm;Landroidx/appcompat/app/AlertDialog;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
