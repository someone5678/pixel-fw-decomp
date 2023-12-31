.class Lcom/google/android/wifitrackerlib/WsuWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "WsuWifiEntry.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private mProvisionStatus:I

.field private mSignupAction:Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;

.field private final mWsuProvider:Lcom/google/android/wifitrackerlib/WsuProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/wifitrackerlib/WsuProvider;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p2, p4, v0}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    .line 37
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mLock:Ljava/lang/Object;

    .line 39
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    .line 46
    iput v0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mProvisionStatus:I

    .line 57
    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mContext:Landroid/content/Context;

    .line 58
    iput-object p3, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mWsuProvider:Lcom/google/android/wifitrackerlib/WsuProvider;

    .line 59
    invoke-static {p3}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->generateWsuWifiEntryKey(Lcom/google/android/wifitrackerlib/WsuProvider;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mKey:Ljava/lang/String;

    return-void
.end method

.method static generateWsuWifiEntryKey(Lcom/google/android/wifitrackerlib/WsuProvider;)Ljava/lang/String;
    .locals 2

    const-string v0, "Cannot create key with null WsuProvider!"

    .line 303
    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WsuWifiEntry:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/wifitrackerlib/WsuProvider;->getWsuIdentity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canConnect()Z
    .locals 2

    .line 163
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canDisconnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canEasyConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mSignupAction:Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;

    if-eqz p0, :cond_0

    .line 174
    invoke-interface {p0}, Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;->onExecute()V

    :cond_0
    return-void
.end method

.method protected connectionInfoMatches(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    .line 190
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This shouldn\'t be called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    .locals 0

    .line 200
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This shouldn\'t be called."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHelpUriString()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mWsuProvider:Lcom/google/android/wifitrackerlib/WsuProvider;

    iget-object v0, v0, Lcom/google/android/wifitrackerlib/WsuProvider;->helpUriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 117
    :cond_0
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mWsuProvider:Lcom/google/android/wifitrackerlib/WsuProvider;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuProvider;->helpUriString:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPrivacy()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(Z)Ljava/lang/String;
    .locals 2

    .line 88
    iget p1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mProvisionStatus:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 103
    iget-object p1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->wifitrackerlib_wsu_entry_summary_not_provisioned:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandled provision status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mProvisionStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WsuWifiEntry"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_0
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifitrackerlib_wsu_entry_summary_provision_error:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_1
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifitrackerlib_wsu_entry_summary_provisioning:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_2
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifitrackerlib_wsu_entry_summary_not_provisioned:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mWsuProvider:Lcom/google/android/wifitrackerlib/WsuProvider;

    iget-object p0, p0, Lcom/google/android/wifitrackerlib/WsuProvider;->wsuProviderName:Ljava/lang/String;

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method notifyProvisionStatusChanged(I)V
    .locals 1

    .line 74
    iget v0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mProvisionStatus:I

    if-eq v0, p1, :cond_0

    .line 75
    iput p1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mProvisionStatus:I

    .line 76
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    :cond_0
    return-void
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMeteredChoice(I)V
    .locals 0

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    return-void
.end method

.method setSignupAction(Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mSignupAction:Lcom/google/android/wifitrackerlib/WsuManager$WsuSignupAction;

    return-void
.end method

.method public signIn(Lcom/android/wifitrackerlib/WifiEntry$SignInCallback;)V
    .locals 0

    return-void
.end method

.method updateScanResultInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 289
    iget-object v1, p0, Lcom/google/android/wifitrackerlib/WsuWifiEntry;->mCurrentScanResults:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object p1

    .line 293
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    .line 296
    :goto_0
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void

    :catchall_0
    move-exception p0

    .line 290
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
