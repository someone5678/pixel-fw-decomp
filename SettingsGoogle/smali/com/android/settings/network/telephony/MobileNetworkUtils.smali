.class public Lcom/android/settings/network/telephony/MobileNetworkUtils;
.super Ljava/lang/Object;
.source "MobileNetworkUtils.java"


# static fields
.field public static final EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static synthetic $r8$lambda$nng-pLvL97fQucNELL1j4tk3fvg(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->lambda$showEuiccSettings$0(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 115
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static activeNetworkIsCellular(Landroid/content/Context;)Z
    .locals 2

    .line 924
    const-class v0, Landroid/net/ConnectivityManager;

    .line 925
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 926
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 931
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 935
    :cond_1
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method private static buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 255
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 256
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.category.DEFAULT"

    .line 263
    invoke-virtual {v1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 264
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    .line 268
    invoke-virtual {p0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 269
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 1

    const-string v0, "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

    .line 242
    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.telecom.action.CONNECTION_SERVICE_CONFIGURE"

    .line 247
    invoke-static {p0, p1, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static getActiveSubscriptionIdList(Landroid/content/Context;)[I
    .locals 3

    .line 713
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 716
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [I

    return-object p0

    .line 720
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 722
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 723
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static getAdjustedRaf(I)I
    .locals 2

    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr p0, v0

    :cond_0
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_1

    or-int/lit16 p0, p0, 0x4384

    :cond_1
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_2

    or-int/lit8 p0, p0, 0x48

    :cond_2
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_3

    or-int/lit16 p0, p0, 0x2830

    :cond_3
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_5

    or-int/2addr p0, v0

    :cond_5
    return p0
.end method

.method public static getAvailability(Landroid/content/Context;ILcom/android/settings/network/telephony/TelephonyAvailabilityCallback;)I
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 579
    invoke-interface {p2, p1}, Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;->getAvailabilityStatus(I)I

    move-result p0

    return p0

    .line 582
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getActiveSubscriptionIdList(Landroid/content/Context;)[I

    move-result-object p0

    .line 583
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 584
    invoke-interface {p2, v0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;->getAvailabilityStatus(I)I

    move-result p0

    return p0

    .line 587
    :cond_1
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    aget v2, p0, v1

    .line 588
    invoke-interface {p2, v2}, Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;->getAvailabilityStatus(I)I

    move-result v2

    if-nez v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 593
    :cond_3
    aget p0, p0, v0

    invoke-interface {p2, p0}, Lcom/android/settings/network/telephony/TelephonyAvailabilityCallback;->getAvailabilityStatus(I)I

    move-result p0

    return p0
.end method

.method public static getCurrentCarrierNameForDisplay(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 679
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 681
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    .line 682
    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSubscriptionInfo(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 687
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getOperatorNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentCarrierNameForDisplay(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    .line 668
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 670
    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSubscriptionInfo(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 675
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getOperatorNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getImsRcsManager(Landroid/telephony/ims/ImsManager;I)Landroid/telephony/ims/ImsRcsManager;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 216
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not resolve ImsRcsManager: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 0

    .line 833
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getAdjustedRaf(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/16 p0, 0x21

    return p0

    :sswitch_1
    const/16 p0, 0x20

    return p0

    :sswitch_2
    const/16 p0, 0x1e

    return p0

    :sswitch_3
    const/16 p0, 0x1f

    return p0

    :sswitch_4
    const/16 p0, 0x1d

    return p0

    :sswitch_5
    const/16 p0, 0x1b

    return p0

    :sswitch_6
    const/16 p0, 0x1a

    return p0

    :sswitch_7
    const/16 p0, 0x1c

    return p0

    :sswitch_8
    const/16 p0, 0x19

    return p0

    :sswitch_9
    const/16 p0, 0x18

    return p0

    :sswitch_a
    const/16 p0, 0x17

    return p0

    :sswitch_b
    const/16 p0, 0x16

    return p0

    :sswitch_c
    const/16 p0, 0x14

    return p0

    :sswitch_d
    const/16 p0, 0x11

    return p0

    :sswitch_e
    const/16 p0, 0x13

    return p0

    :sswitch_f
    const/16 p0, 0xf

    return p0

    :sswitch_10
    const/16 p0, 0xa

    return p0

    :sswitch_11
    const/16 p0, 0x9

    return p0

    :sswitch_12
    const/16 p0, 0xc

    return p0

    :sswitch_13
    const/16 p0, 0x8

    return p0

    :sswitch_14
    const/16 p0, 0xb

    return p0

    :sswitch_15
    const/16 p0, 0x15

    return p0

    :sswitch_16
    const/16 p0, 0x12

    return p0

    :sswitch_17
    const/16 p0, 0x10

    return p0

    :sswitch_18
    const/16 p0, 0xe

    return p0

    :sswitch_19
    const/16 p0, 0xd

    return p0

    :sswitch_1a
    const/4 p0, 0x7

    return p0

    :sswitch_1b
    const/4 p0, 0x0

    return p0

    :sswitch_1c
    const/4 p0, 0x1

    return p0

    :sswitch_1d
    const/4 p0, 0x2

    return p0

    :sswitch_1e
    const/4 p0, 0x4

    return p0

    :sswitch_1f
    const/4 p0, 0x6

    return p0

    :sswitch_20
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_20
        0x2830 -> :sswitch_1f
        0x2878 -> :sswitch_1e
        0x4384 -> :sswitch_1d
        0x8003 -> :sswitch_1c
        0xc387 -> :sswitch_1b
        0xebff -> :sswitch_1a
        0x10000 -> :sswitch_19
        0x14384 -> :sswitch_18
        0x18003 -> :sswitch_17
        0x1c387 -> :sswitch_16
        0x1ebff -> :sswitch_15
        0x41000 -> :sswitch_14
        0x43878 -> :sswitch_13
        0x45384 -> :sswitch_12
        0x4d387 -> :sswitch_11
        0x4fbff -> :sswitch_10
        0x51000 -> :sswitch_f
        0x55384 -> :sswitch_e
        0x59003 -> :sswitch_d
        0x5d387 -> :sswitch_c
        0x5fbff -> :sswitch_b
        0x80000 -> :sswitch_a
        0xc1000 -> :sswitch_9
        0xc3878 -> :sswitch_8
        0xc5384 -> :sswitch_7
        0xcd387 -> :sswitch_6
        0xcfbff -> :sswitch_5
        0xd1000 -> :sswitch_4
        0xd5384 -> :sswitch_3
        0xd9003 -> :sswitch_2
        0xdd387 -> :sswitch_1
        0xdfbff -> :sswitch_0
    .end sparse-switch
.end method

.method private static getOperatorNameFromTelephonyManager(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 704
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 705
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPreferredCallStatus(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 1011
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 1013
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f0405da

    .line 1016
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setSummaryResId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private static getPreferredSmsStatus(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 1023
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    .line 1025
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p1, 0x7f0405da

    .line 1028
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setSummaryResId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method public static getPreferredStatus(ZLandroid/content/Context;Landroid/telephony/SubscriptionManager;Z)Ljava/lang/CharSequence;
    .locals 7

    .line 967
    invoke-static {p2}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p2

    .line 969
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 972
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 973
    invoke-static {v2, p1}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 978
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    if-eqz p3, :cond_2

    .line 983
    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getPreferredCallStatus(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    .line 984
    :cond_2
    invoke-static {p1, v2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getPreferredSmsStatus(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 985
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 988
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 990
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    .line 991
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 992
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    .line 993
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_4

    const-string v2, ", "

    .line 997
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p0, :cond_0

    const/4 v2, 0x0

    const-string/jumbo v3, "\u200f"

    .line 1001
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    const-string p0, ""

    return-object p0
.end method

.method public static getRafFromNetworkType(I)J
    .locals 2

    const-wide/32 v0, 0xc387

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    const-wide/32 v0, 0xdfbff

    return-wide v0

    :pswitch_1
    const-wide/32 v0, 0xdd387

    return-wide v0

    :pswitch_2
    const-wide/32 v0, 0xd5384

    return-wide v0

    :pswitch_3
    const-wide/32 v0, 0xd9003

    return-wide v0

    :pswitch_4
    const-wide/32 v0, 0xd1000

    return-wide v0

    :pswitch_5
    const-wide/32 v0, 0xc5384

    return-wide v0

    :pswitch_6
    const-wide/32 v0, 0xcfbff

    return-wide v0

    :pswitch_7
    const-wide/32 v0, 0xcd387

    return-wide v0

    :pswitch_8
    const-wide/32 v0, 0xc3878

    return-wide v0

    :pswitch_9
    const-wide/32 v0, 0xc1000

    return-wide v0

    :pswitch_a
    const-wide/32 v0, 0x80000

    return-wide v0

    :pswitch_b
    const-wide/32 v0, 0x5fbff

    return-wide v0

    :pswitch_c
    const-wide/32 v0, 0x1ebff

    return-wide v0

    :pswitch_d
    const-wide/32 v0, 0x5d387

    return-wide v0

    :pswitch_e
    const-wide/32 v0, 0x55384

    return-wide v0

    :pswitch_f
    const-wide/32 v0, 0x1c387

    return-wide v0

    :pswitch_10
    const-wide/32 v0, 0x59003

    return-wide v0

    :pswitch_11
    const-wide/32 v0, 0x18003

    return-wide v0

    :pswitch_12
    const-wide/32 v0, 0x51000

    return-wide v0

    :pswitch_13
    const-wide/32 v0, 0x14384

    return-wide v0

    :pswitch_14
    const-wide/32 v0, 0x10000

    return-wide v0

    :pswitch_15
    const-wide/32 v0, 0x45384

    return-wide v0

    :pswitch_16
    const-wide/32 v0, 0x41000

    return-wide v0

    :pswitch_17
    const-wide/32 v0, 0x4fbff

    return-wide v0

    :pswitch_18
    const-wide/32 v0, 0x4d387

    return-wide v0

    :pswitch_19
    const-wide/32 v0, 0x43878

    return-wide v0

    :pswitch_1a
    const-wide/32 v0, 0xebff

    return-wide v0

    :pswitch_1b
    const-wide/16 v0, 0x2830

    return-wide v0

    :pswitch_1c
    const-wide/16 v0, 0x48

    return-wide v0

    :pswitch_1d
    const-wide/16 v0, 0x2878

    :pswitch_1e
    return-wide v0

    :pswitch_1f
    const-wide/16 v0, 0x4384

    return-wide v0

    :pswitch_20
    const-wide/32 v0, 0x8003

    :pswitch_21
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSearchableSubscriptionId(Landroid/content/Context;)I
    .locals 2

    .line 560
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getActiveSubscriptionIdList(Landroid/content/Context;)[I

    move-result-object p0

    .line 562
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static getSignalStrengthIcon(Landroid/content/Context;IIIZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 634
    new-instance v0, Lcom/android/settingslib/graph/SignalDrawable;

    invoke-direct {v0, p0}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    if-eqz p5, :cond_0

    .line 636
    invoke-static {p2}, Lcom/android/settingslib/graph/SignalDrawable;->getCarrierChangeState(I)I

    move-result p1

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {p1, p2, p4}, Lcom/android/settingslib/graph/SignalDrawable;->getState(IIZ)I

    move-result p1

    .line 635
    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/DrawableWrapper;->setLevel(I)Z

    if-nez p3, :cond_1

    .line 642
    sget-object p1, Lcom/android/settings/network/telephony/MobileNetworkUtils;->EMPTY_DRAWABLE:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 643
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const/4 p1, 0x1

    aput-object v0, p2, p1

    .line 648
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0b0463

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 650
    new-instance p5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p5, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x33

    .line 652
    invoke-virtual {p5, p3, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/16 p2, 0x55

    .line 654
    invoke-virtual {p5, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    .line 655
    invoke-virtual {p5, p1, p4, p4}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const p1, 0x1010429

    .line 656
    invoke-static {p0, p1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroid/graphics/drawable/LayerDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    return-object p5
.end method

.method private static getSubscriptionInfo(Landroid/telephony/SubscriptionManager;I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 691
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 695
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 696
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static isCdmaOptions(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 385
    :cond_0
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "hide_carrier_network_settings_bool"

    .line 387
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "world_phone_bool"

    .line 389
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 393
    :cond_1
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 394
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 395
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    return v2

    .line 399
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 401
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 400
    invoke-static {v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v1

    const/16 v3, 0x9

    if-eq v1, v3, :cond_4

    const/16 v3, 0x8

    if-eq v1, v3, :cond_4

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_4

    const/16 v3, 0x19

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 411
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public static isContactDiscoveryEnabled(Landroid/content/Context;I)Z
    .locals 1

    .line 170
    const-class v0, Landroid/telephony/ims/ImsManager;

    .line 171
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsManager;

    .line 172
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;I)Z

    move-result p0

    return p0
.end method

.method public static isContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;I)Z
    .locals 2

    .line 182
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getImsRcsManager(Landroid/telephony/ims/ImsManager;I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    .line 184
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRcsManager;->getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;

    move-result-object p0

    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/RcsUceAdapter;->isUceSettingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UCE service is not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileNetworkUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static isContactDiscoveryVisible(Landroid/content/Context;I)Z
    .locals 2

    .line 228
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/network/CarrierConfigCache;->hasCarrierConfigManager()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "MobileNetworkUtils"

    const-string p1, "isContactDiscoveryVisible: Could not resolve carrier config"

    .line 230
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 233
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const-string/jumbo p1, "use_rcs_presence_bool"

    .line 234
    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "ims.rcs_bulk_capability_exchange_bool"

    .line 236
    invoke-virtual {p0, p1, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static isCurrentCountrySupported(Landroid/content/Context;)Z
    .locals 5

    .line 734
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 735
    const-class v1, Landroid/telephony/TelephonyManager;

    .line 736
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 738
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 739
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 740
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    .line 741
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 742
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 745
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/euicc/EuiccManager;)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCurrentCountrySupported countryCodes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " eSIMSupported: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileNetworkUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isDpcApnEnforced(Landroid/content/Context;)Z
    .locals 6

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->ENFORCE_MANAGED_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 140
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 143
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 144
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_1

    move v0, v2

    .line 145
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    .line 138
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 145
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v0
.end method

.method private static isGsmBasicOptions(Landroid/content/Context;I)Z
    .locals 3

    .line 450
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v2, "hide_carrier_network_settings_bool"

    .line 452
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "world_phone_bool"

    .line 454
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 458
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 459
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 460
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p0

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isGsmOptions(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    .line 426
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmBasicOptions(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 429
    :cond_1
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 430
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 432
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v3

    long-to-int v1, v3

    .line 431
    invoke-static {v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v1

    .line 434
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x8

    if-eq v1, v3, :cond_3

    const/16 v3, 0x9

    if-eq v1, v3, :cond_3

    const/16 v3, 0x19

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 440
    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public static isMobileDataEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 338
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 339
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 341
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 343
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static isMobileNetworkUserRestricted(Landroid/content/Context;)Z
    .locals 2

    .line 125
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 128
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no_config_mobile_networks"

    invoke-virtual {p0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    :cond_1
    return v0
.end method

.method public static isTdscdmaSupported(Landroid/content/Context;I)Z
    .locals 1

    .line 521
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 522
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 521
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result p0

    return p0
.end method

.method private static isTdscdmaSupported(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z
    .locals 5

    .line 527
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/CarrierConfigCache;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "support_tdscdma_bool"

    .line 533
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string/jumbo v1, "support_tdscdma_roaming_networks_string_array"

    .line 536
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    .line 541
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 543
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    return v0

    .line 547
    :cond_4
    array-length v1, p0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    .line 548
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return v0
.end method

.method public static isWfcProvisionedOnDevice(I)Z
    .locals 1

    .line 155
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0, v0, v0}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result p0

    return p0
.end method

.method public static isWifiCallingEnabled(Landroid/content/Context;ILcom/android/settings/network/ims/WifiCallingQueryImsState;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 0

    if-nez p3, :cond_0

    .line 945
    const-class p3, Landroid/telecom/TelecomManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/TelecomManager;

    .line 946
    invoke-virtual {p3, p1}, Landroid/telecom/TelecomManager;->getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p3

    :cond_0
    if-eqz p3, :cond_2

    .line 950
    invoke-static {p0, p3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 954
    new-instance p2, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    .line 956
    :cond_3
    invoke-virtual {p2}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isReadyToWifiCalling()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static isWorldMode(Landroid/content/Context;I)Z
    .locals 0

    .line 473
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "world_mode_enabled_bool"

    .line 476
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showEuiccSettings$0(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 291
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->showEuiccSettingsDetecting(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "MobileNetworkUtils"

    const-string v1, "Accessing Euicc failure"

    .line 293
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static launchMobileNetworkSettings(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)V
    .locals 4

    .line 1039
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    const-string v1, "MobileNetworkUtils"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string p0, "launchMobileNetworkSettings fail, subId is invalid."

    .line 1041
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1045
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchMobileNetworkSettings for subId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.provider.extra.SUB_ID"

    .line 1047
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1049
    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleText(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class p1, Lcom/android/settings/network/telephony/MobileNetworkSettings;

    .line 1050
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x0

    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1052
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 1053
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static setContactDiscoveryEnabled(Landroid/telephony/ims/ImsManager;IZ)V
    .locals 0

    .line 199
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getImsRcsManager(Landroid/telephony/ims/ImsManager;I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsRcsManager;->getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;

    move-result-object p0

    .line 203
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/telephony/ims/RcsUceAdapter;->setUceSettingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 205
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UCE service is not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileNetworkUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setMobileDataEnabled(Landroid/content/Context;IZZ)V
    .locals 2

    .line 356
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 357
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 358
    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 360
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    if-eqz p3, :cond_1

    .line 364
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 366
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/SubscriptionInfo;

    .line 368
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-nez v0, :cond_0

    .line 369
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 370
    invoke-virtual {p3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p3

    .line 369
    invoke-virtual {v0, p3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p3

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p3, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setSummaryResId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    .line 1035
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z
    .locals 4

    .line 483
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 484
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 486
    invoke-static {p0}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_4

    if-eqz v1, :cond_4

    const-string v3, "operator_selection_expand_bool"

    .line 489
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "hide_carrier_network_settings_bool"

    .line 491
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "csp_enabled_bool"

    .line 493
    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isManualNetworkSelectionAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 499
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    return v2

    .line 505
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/4 p0, 0x1

    return p0

    .line 514
    :cond_3
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isGsmBasicOptions(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method

.method static shouldSpeciallyUpdateGsmCdma(Landroid/content/Context;I)Z
    .locals 4

    .line 609
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 612
    :cond_0
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 613
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 615
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 614
    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_1

    const/16 v2, 0x14

    if-eq v0, v2, :cond_1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_1

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    const/16 v2, 0x16

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 624
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isTdscdmaSupported(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static showEuiccSettings(Landroid/content/Context;)Z
    .locals 6

    .line 284
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 287
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 289
    :try_start_0
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v4, 0x3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 296
    invoke-interface {p0, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 297
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 299
    :catch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 300
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Accessing Euicc takes too long: +"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MobileNetworkUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static showEuiccSettingsDetecting(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 10

    .line 307
    const-class v0, Landroid/telephony/euicc/EuiccManager;

    .line 308
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 309
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    const-string v1, "MobileNetworkUtils"

    if-nez v0, :cond_0

    const-string p0, "EuiccManager is not enabled."

    .line 310
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 314
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "ro.setupwizard.esim_cid_ignore"

    const-string v3, ""

    .line 316
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-static {v2, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string/jumbo v3, "ro.boot.cid"

    .line 317
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "esim.enable_esim_system_ui_by_default"

    const/4 v4, 0x1

    .line 319
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "euicc_provisioned"

    const/4 v6, 0x0

    .line 321
    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v6

    .line 323
    :goto_0
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v5

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 327
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const-string/jumbo v8, "showEuiccSettings: esimIgnoredDevice: %b, enabledEsimUiByDefault: %b, euiccProvisioned: %b, inDeveloperMode: %b."

    .line 325
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 324
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_4

    if-nez v2, :cond_2

    if-nez v5, :cond_4

    :cond_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_3

    .line 331
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCurrentCountrySupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    .line 328
    :cond_4
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
