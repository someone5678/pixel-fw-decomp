.class Lcom/android/wifitrackerlib/NonSdkApiWrapper;
.super Ljava/lang/Object;
.source "NonSdkApiWrapper.java"


# direct methods
.method static getWifiSsidPolicy(Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/WifiSsidPolicy;
    .locals 1

    .line 130
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static isDemoMode(Landroid/content/Context;)Z
    .locals 0

    .line 105
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static isPrimary(Landroid/net/wifi/WifiInfo;)Z
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result p0

    return p0
.end method

.method static isVcnOverWifi(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    instance-of v0, p0, Landroid/net/vcn/VcnTransportInfo;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/net/vcn/VcnTransportInfo;

    .line 98
    invoke-virtual {p0}, Landroid/net/vcn/VcnTransportInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 0

    .line 115
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->registerSystemDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static startCaptivePortalApp(Landroid/net/ConnectivityManager;Landroid/net/Network;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    return-void
.end method
