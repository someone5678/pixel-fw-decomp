.class public Lcom/android/settings/wifi/WifiConfigInfo;
.super Landroid/app/Activity;
.source "WifiConfigInfo.java"


# instance fields
.field private mConfigList:Landroid/widget/TextView;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "wifi"

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    const p1, 0x7f060302

    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    const p1, 0x7f0d0195

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 49
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigInfo;->mConfigList:Landroid/widget/TextView;

    const v0, 0x7f0418c2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method
