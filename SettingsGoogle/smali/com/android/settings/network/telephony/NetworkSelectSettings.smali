.class public Lcom/android/settings/network/telephony/NetworkSelectSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkSelectSettings.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x4

.field private static final EVENT_NETWORK_SCAN_ERROR:I = 0x3

.field private static final EVENT_NETWORK_SCAN_RESULTS:I = 0x2

.field private static final EVENT_SET_NETWORK_SELECTION_MANUALLY_DONE:I = 0x1

.field private static final MIN_NUMBER_OF_SCAN_REQUIRED:I = 0x2

.field private static final PREF_KEY_NETWORK_OPERATORS:Ljava/lang/String; = "network_operators_preference"

.field private static final TAG:Ljava/lang/String; = "NetworkSelectSettings"


# instance fields
.field private final mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field mCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mIsAggregationEnabled:Z

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

.field private mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mProgressHeader:Landroid/view/View;

.field private mRequestIdManualNetworkScan:J

.field private mRequestIdManualNetworkSelect:J

.field mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

.field private mShow4GForLTE:Z

.field private mStatusMessagePreference:Landroidx/preference/Preference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseNewApi:Z

.field private mWaitingForNumberOfScanResults:J


# direct methods
.method public static synthetic $r8$lambda$LN7QRQhIvkhA729f1_svIgj5zxA(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$onPreferenceTreeClick$0(Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YIczZp3qUfJ8EeYPj3Xv0tXNYeA(Ljava/lang/String;Ljava/lang/Class;Landroid/telephony/CellInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$doAggregation$1(Ljava/lang/String;Ljava/lang/Class;Landroid/telephony/CellInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/network/telephony/NetworkSelectSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestIdManualNetworkScan(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestIdManualNetworkSelect(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitingForNumberOfScanResults(Lcom/android/settings/network/telephony/NetworkSelectSettings;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$maddMessagePreference(Lcom/android/settings/network/telephony/NetworkSelectSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPreferenceSummary(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->clearPreferenceSummary()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopNetworkQuery(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    const/4 v1, 0x1

    .line 87
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAggregationEnabled:Z

    .line 289
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    .line 384
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings$2;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1

    const/4 v0, 0x0

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 592
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 593
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 594
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private clearPreferenceSummary()V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 566
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 567
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v2, 0x0

    .line 568
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private forceUpdateConnectedPreferenceCategory()V
    .locals 6

    .line 519
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 521
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 526
    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 528
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 535
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    if-nez v1, :cond_2

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateForbiddenPlmns()V

    .line 538
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NetworkRegistrationInfo;

    .line 539
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 543
    :cond_3
    new-instance v2, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Landroid/telephony/CellIdentity;Ljava/util/List;Z)V

    .line 545
    invoke-virtual {v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->isForbiddenNetwork()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const v0, 0x7f040e92

    .line 548
    invoke-virtual {v2, v0}, Landroidx/preference/Preference;->setSummary(I)V

    const/4 v0, 0x4

    .line 552
    invoke-virtual {v2, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->setIcon(I)V

    .line 553
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    nop

    :cond_5
    :goto_1
    return-void
.end method

.method private getNewRequestId()J
    .locals 4

    .line 573
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    iget-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private isProgressBarVisible()Z
    .locals 1

    .line 578
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 581
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static synthetic lambda$doAggregation$1(Ljava/lang/String;Ljava/lang/Class;Landroid/telephony/CellInfo;)Z
    .locals 2

    .line 366
    invoke-virtual {p2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 367
    invoke-virtual {p2}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMccMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onPreferenceTreeClick$0(Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 265
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1, v1}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 267
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private startNetworkQuery()V
    .locals 3

    const/4 v0, 0x1

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    if-eqz v1, :cond_1

    .line 600
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNewRequestId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    const-wide/16 v1, 0x2

    .line 601
    iput-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    .line 602
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 603
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 602
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->startNetworkScan(I)V

    :cond_1
    return-void
.end method

.method private stopNetworkQuery()V
    .locals 3

    const/4 v0, 0x0

    .line 610
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 611
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 612
    iput-wide v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    .line 613
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->stopNetworkQuery()V

    :cond_0
    return-void
.end method

.method private updateAllPreferenceCategory()Lcom/android/settings/network/telephony/NetworkOperatorPreference;
    .locals 8

    .line 452
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 455
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 457
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 458
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 457
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    .line 463
    :goto_1
    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 464
    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    if-ge v3, v0, :cond_2

    .line 468
    iget-object v6, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v6, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    .line 469
    instance-of v7, v6, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v7, :cond_1

    .line 471
    check-cast v6, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 472
    invoke-virtual {v6, v5}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateCell(Landroid/telephony/CellInfo;)V

    goto :goto_2

    .line 474
    :cond_1
    iget-object v7, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v7, v6}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    move-object v6, v2

    :goto_2
    if-nez v6, :cond_3

    .line 479
    invoke-virtual {p0, v5}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->createNetworkOperatorPreference(Landroid/telephony/CellInfo;)Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    move-result-object v6

    .line 480
    invoke-virtual {v6, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 481
    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 483
    :cond_3
    invoke-virtual {v6}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 485
    iget-object v5, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CellInfo;

    invoke-virtual {v5}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_4

    const v4, 0x7f040e92

    .line 486
    invoke-virtual {v6, v4}, Landroidx/preference/Preference;->setSummary(I)V

    move-object v4, v6

    goto :goto_3

    .line 489
    :cond_4
    invoke-virtual {v6, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 494
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 495
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 497
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->isSameCell(Landroid/telephony/CellInfo;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 498
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 499
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return-object v4
.end method


# virtual methods
.method protected createNetworkOperatorPreference(Landroid/telephony/CellInfo;)Lcom/android/settings/network/telephony/NetworkOperatorPreference;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 442
    new-instance v0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;-><init>(Landroid/content/Context;Landroid/telephony/CellInfo;Ljava/util/List;Z)V

    return-object v0
.end method

.method doAggregation(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 354
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAggregationEnabled:Z

    if-nez p0, :cond_0

    const-string p0, "NetworkSelectSettings"

    const-string v0, "no aggregation"

    .line 355
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    .line 358
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 360
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v1

    .line 361
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/telephony/CellInfoUtil;->getCellIdentityMccMnc(Landroid/telephony/CellIdentity;)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v1, v2}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellIdentity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 364
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 370
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    invoke-virtual {v2}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_1

    .line 375
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method protected enableAggregation(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f090025

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected enableNewAutoSelectNetworkUI(Landroid/content/Context;)Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x111013e

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method protected enablePreferenceScreen(Z)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 176
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 158
    const-class p0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    return-object p0
.end method

.method public bridge synthetic getHelpResource()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/support/actionbar/HelpResourceProvider;->getHelpResource()I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "NetworkSelectSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x62d

    return p0
.end method

.method protected getMetricsFeatureProvider(Landroid/content/Context;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 164
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160048

    return p0
.end method

.method protected getSubId()I
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    const-string v1, "android.provider.extra.SUB_ID"

    .line 185
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method protected getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 151
    const-class p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 152
    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    return-object p0
.end method

.method protected isPreferenceScreenEnabled()Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->onCreateInitialization()V

    return-void
.end method

.method protected onCreateInitialization()V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->enableNewAutoSelectNetworkUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getSubId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    const-string v0, "network_operators_preference"

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getPreferenceCategory(Ljava/lang/String;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 109
    new-instance v0, Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mStatusMessagePreference:Landroidx/preference/Preference;

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 113
    new-instance v1, Lcom/android/settings/network/telephony/NetworkScanHelper;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/network/telephony/NetworkScanHelper;-><init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanHelper:Lcom/android/settings/network/telephony/NetworkScanHelper;

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getCarrierConfigManager(Landroid/content/Context;)Landroid/telephony/CarrierConfigManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "show_4g_for_lte_data_icon_bool"

    .line 118
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mShow4GForLTE:Z

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getMetricsFeatureProvider(Landroid/content/Context;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->enableAggregation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAggregationEnabled:Z

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: mUseNewApi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mUseNewApi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsAggregationEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mIsAggregationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mSubId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkSelectSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 619
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 620
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mNetworkScanExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 621
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 243
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->clearPreferenceSummary()V

    .line 244
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v0, :cond_0

    const v2, 0x7f040ea2

    .line 246
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSummary(I)V

    .line 249
    :cond_0
    check-cast p1, Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v0, 0x7f040e93

    .line 250
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0x4ba

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/util/Pair;

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 255
    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 257
    invoke-virtual {p0, v3}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->enablePreferenceScreen(Z)V

    .line 259
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->getNewRequestId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    const-wide/16 v2, 0x2

    .line 260
    iput-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    .line 261
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    invoke-virtual {p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getOperatorInfo()Lcom/android/internal/telephony/OperatorInfo;

    move-result-object p1

    .line 262
    new-instance v0, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return v1
.end method

.method public onStart()V
    .locals 4

    .line 206
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateForbiddenPlmns()V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 212
    :cond_0
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->startNetworkQuery()V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 4

    .line 231
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 232
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 193
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    const p1, 0x7f0601de

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0d04d3

    .line 198
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    const/4 p1, 0x0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->forceUpdateConnectedPreferenceCategory()V

    return-void
.end method

.method protected scanResultHandler(Ljava/util/List;)V
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 406
    iget-wide v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkScan:J

    iget-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mRequestIdManualNetworkSelect:J

    cmp-long v0, v0, v2

    const-string v1, "NetworkSelectSettings"

    if-gez v0, :cond_0

    .line 407
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CellInfoList (drop): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 408
    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 407
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 411
    :cond_0
    iget-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mWaitingForNumberOfScanResults:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->stopNetworkQuery()V

    .line 416
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->doAggregation(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CellInfoList: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->cellInfoListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mCellInfoList:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 420
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->updateAllPreferenceCategory()Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 423
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    if-eqz v1, :cond_3

    .line 424
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isPreferenceScreenEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 428
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mSelectedPreference:Lcom/android/settings/network/telephony/NetworkOperatorPreference;

    const v1, 0x7f040e93

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 431
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->enablePreferenceScreen(Z)V

    goto :goto_1

    .line 432
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->isPreferenceScreenEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f040904

    .line 433
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->addMessagePreference(I)V

    .line 435
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->setProgressBarVisible(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 0

    .line 585
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 586
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected updateForbiddenPlmns()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getForbiddenPlmns()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkSelectSettings;->mForbiddenPlmns:Ljava/util/List;

    return-void
.end method
