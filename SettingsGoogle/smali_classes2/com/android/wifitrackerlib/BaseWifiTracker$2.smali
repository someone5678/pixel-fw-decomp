.class Lcom/android/wifitrackerlib/BaseWifiTracker$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BaseWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifitrackerlib/BaseWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/wifitrackerlib/BaseWifiTracker;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-static {v0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$misPrimaryWifiNetwork(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iput-object p1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mPrimaryNetwork:Landroid/net/Network;

    .line 174
    iget-boolean p1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    const/16 v1, 0x10

    .line 175
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    .line 176
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-boolean v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    if-eq v1, p1, :cond_1

    .line 177
    invoke-static {v0}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$fgetmTag(Lcom/android/wifitrackerlib/BaseWifiTracker;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is Wifi validated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-boolean v1, v1, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 159
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$misPrimaryWifiNetwork(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mPrimaryNetwork:Landroid/net/Network;

    .line 163
    invoke-virtual {p0, p2}, Lcom/android/wifitrackerlib/BaseWifiTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    iget-object v1, v0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 186
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Lcom/android/wifitrackerlib/BaseWifiTracker;->-$$Nest$misPrimaryWifiNetwork(Lcom/android/wifitrackerlib/BaseWifiTracker;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/BaseWifiTracker$2;->this$0:Lcom/android/wifitrackerlib/BaseWifiTracker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mIsWifiValidated:Z

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/android/wifitrackerlib/BaseWifiTracker;->mPrimaryNetwork:Landroid/net/Network;

    return-void
.end method
