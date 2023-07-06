.class public Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "AutoSelectPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;,
        Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;
    }
.end annotation


# static fields
.field private static final INTERNAL_LOG_TAG_AFTERSET:Ljava/lang/String; = "AfterSet"

.field private static final INTERNAL_LOG_TAG_INIT:Ljava/lang/String; = "Init"

.field private static final LOG_TAG:Ljava/lang/String; = "AutoSelectPreferenceController"

.field private static final MINIMUM_DIALOG_TIME_MILLIS:J


# instance fields
.field private mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

.field private mCacheOfModeStatus:I

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnlyAutoSelectInHome:Z

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

.field mSwitchPreference:Landroidx/preference/SwitchPreference;

.field mTelephonyCallbackListener:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUiHandler:Landroid/os/Handler;

.field private mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$-0Tm3QHPel2tXAwOZAW0v4oqOu8(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$init$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$9-mMb8wYerllkkx6GDiwgoNKAtQ(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$J9tZIZlFq2U11Exk_Ibdda4oFBo(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JK_RfKgpFQpm-DzI8yCS698m_7Q(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$laLNb6H-OwrpkvngKaR7f8MHf7Q(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$vL6E3wa1xZog8XWl9z1roHqo7YE(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$yCHCQngG-Q6N_814pOXTVjbtdTw(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$init$5()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 89
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 90
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 92
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    .line 94
    new-instance p2, Lcom/android/settings/network/AllowedNetworkTypesListener;

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p2, v0}, Lcom/android/settings/network/AllowedNetworkTypesListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    .line 96
    new-instance p1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/network/AllowedNetworkTypesListener;->setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V

    .line 98
    new-instance p1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener-IA;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyCallbackListener:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;

    return-void
.end method

.method private dismissProgressBar()V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic lambda$init$5()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 245
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 247
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$6()V
    .locals 2

    const-string v0, "Init"

    .line 239
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->queryNetworkSelectionMode(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updatePreference()V

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$1()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 211
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 212
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 216
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->dismissProgressBar()V

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$2()V
    .locals 2

    const-string v0, "AfterSet"

    .line 206
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->queryNetworkSelectionMode(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$3()V
    .locals 1

    .line 205
    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$4(J)V
    .locals 4

    .line 197
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeAutomatic()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 204
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    sget-wide v2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 220
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 204
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private queryNetworkSelectionMode(Ljava/lang/String;)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": query command done. mCacheOfModeStatus: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoSelectPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showAutoSelectProgressBar()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 296
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04112e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 300
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 302
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private updateListenerValue()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;

    .line 289
    iget v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-interface {v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;->onNetworkSelectModeUpdated(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 108
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 135
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 0

    .line 228
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 229
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 230
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 231
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 232
    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "only_auto_select_in_home_network"

    .line 234
    invoke-virtual {p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 236
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    .line 238
    new-instance p1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .line 141
    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->register(Landroid/content/Context;I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyCallbackListener:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->unregister(Landroid/content/Context;I)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyCallbackListener:Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$TelephonyCallbackListener;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method setAutomaticSelectionMode()Ljava/util/concurrent/Future;
    .locals 4

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 190
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->showAutoSelectProgressBar()V

    .line 191
    iget-object v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 192
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 193
    iget-object v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 195
    :cond_0
    new-instance v2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->setAutomaticSelectionMode()Ljava/util/concurrent/Future;

    goto :goto_0

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_2

    .line 177
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NetworkSelectActivity"

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 155
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 158
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 159
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f040d79

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 162
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 160
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method updateUiAutoSelectValue(Landroid/telephony/ServiceState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 271
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 274
    :goto_0
    iget v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    if-ne v0, p1, :cond_2

    return-void

    .line 277
    :cond_2
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateUiAutoSelectValue: mCacheOfModeStatus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoSelectPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 281
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 282
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 283
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue()V

    :cond_3
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
