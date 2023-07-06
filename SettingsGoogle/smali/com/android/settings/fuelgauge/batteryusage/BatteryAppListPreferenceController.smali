.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;
    }
.end annotation


# static fields
.field static final USE_FAKE_DATA:Z = false

.field static sConfig:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppListGroup:Landroidx/preference/PreferenceGroup;

.field private mBatteryUsageStats:Landroid/os/BatteryUsageStats;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mNotAllowShowSummaryPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPrefContext:Landroid/content/Context;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$x_MfXWqGCPtZLykM4ChjuDNU2D8(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;Landroid/os/UidBatteryConsumer;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->lambda$getCoalescedUsageList$0(Landroid/os/UidBatteryConsumer;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->sConfig:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    .line 155
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 124
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 158
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 161
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    const-string/jumbo p2, "user"

    .line 163
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 166
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 168
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 169
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    .line 170
    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationSummary(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p1

    .line 167
    invoke-static {p1}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mNotAllowShowSummaryPackages:Ljava/util/Set;

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    const-string v0, "not_available"

    .line 568
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 570
    new-instance v1, Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 571
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const v0, 0x7f041054

    .line 572
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 573
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 574
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 5

    .line 462
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 463
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 465
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 466
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 469
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCachedCount()I
    .locals 0

    .line 564
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getCoalescedUsageList(ZZ)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 325
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 329
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 333
    new-instance v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;)V

    invoke-static {v4}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 336
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_3

    .line 337
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/os/UidBatteryConsumer;

    .line 338
    invoke-direct {v0, v12}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result v7

    .line 340
    iget-object v8, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    .line 341
    iget-object v8, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8, v12, v15}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumerUnconditionally(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 345
    :cond_0
    iget-object v8, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v8, v12, v15}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideUidBatteryConsumer(Landroid/os/UidBatteryConsumer;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    .line 350
    :cond_1
    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_2

    .line 353
    new-instance v14, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-object v9, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v11, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    const/16 v16, 0x0

    move-object v8, v14

    move-object v5, v14

    move v14, v7

    move/from16 v17, p2

    invoke-direct/range {v8 .. v17}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 357
    :cond_2
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 358
    invoke-virtual {v5, v12}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->add(Landroid/os/BatteryConsumer;)V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 362
    :cond_3
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v3

    .line 364
    iget-object v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/BatteryUsageStats;->getAggregateBatteryConsumer(I)Landroid/os/BatteryConsumer;

    move-result-object v5

    move v15, v4

    :goto_2
    const/16 v6, 0x12

    if-ge v15, v6, :cond_5

    if-nez p1, :cond_4

    .line 369
    iget-object v6, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 370
    invoke-virtual {v6, v3, v15}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideDevicePowerComponent(Landroid/os/BatteryConsumer;I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    .line 374
    :cond_4
    new-instance v13, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-object v7, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 375
    invoke-virtual {v3, v15}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v9

    .line 376
    invoke-virtual {v5, v15}, Landroid/os/BatteryConsumer;->getConsumedPower(I)D

    move-result-wide v11

    .line 377
    invoke-virtual {v3, v15}, Landroid/os/BatteryConsumer;->getUsageDurationMillis(I)J

    move-result-wide v16

    move-object v6, v13

    move v8, v15

    move-object v4, v13

    move-wide/from16 v13, v16

    invoke-direct/range {v6 .. v14}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;IDDJ)V

    .line 374
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/16 v4, 0x3e8

    move v14, v4

    .line 382
    :goto_4
    invoke-virtual {v3}, Landroid/os/BatteryConsumer;->getCustomPowerComponentCount()I

    move-result v6

    add-int/2addr v6, v4

    if-ge v14, v6, :cond_7

    if-nez p1, :cond_6

    goto :goto_5

    .line 388
    :cond_6
    new-instance v15, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-object v7, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 389
    invoke-virtual {v3, v14}, Landroid/os/BatteryConsumer;->getCustomPowerComponentName(I)Ljava/lang/String;

    move-result-object v9

    .line 390
    invoke-virtual {v3, v14}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v10

    .line 391
    invoke-virtual {v5, v14}, Landroid/os/BatteryConsumer;->getConsumedPowerForCustomComponent(I)D

    move-result-wide v12

    move-object v6, v15

    move v8, v14

    invoke-direct/range {v6 .. v13}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;ILjava/lang/String;DD)V

    .line 388
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_7
    if-eqz p1, :cond_8

    .line 395
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 396
    invoke-virtual {v3}, Landroid/os/BatteryUsageStats;->getUserBatteryConsumers()Ljava/util/List;

    move-result-object v3

    .line 397
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_8

    .line 398
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Landroid/os/UserBatteryConsumer;

    .line 399
    new-instance v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    iget-object v8, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    const/4 v12, 0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v6

    move/from16 v16, p2

    invoke-direct/range {v7 .. v16}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Landroid/os/BatteryConsumer;ZI[Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 405
    :cond_8
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v0, :cond_9

    .line 408
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 412
    :cond_9
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v2
.end method

.method private getDischargePercentage(Landroid/os/BatteryUsageStats;)I
    .locals 0

    .line 309
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getDischargePercentage()I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method private getRealUid(Landroid/os/UidBatteryConsumer;)I
    .locals 1

    .line 417
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result p0

    .line 421
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->isSharedGid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 423
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    .line 422
    invoke-static {p0, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p0

    .line 427
    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->isSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getPackageWithHighestDrain()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mediaserver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p0, 0x3e8

    :cond_1
    return p0
.end method

.method private static isSharedGid(I)Z
    .locals 0

    .line 489
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 493
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getCoalescedUsageList$0(Landroid/os/UidBatteryConsumer;)I
    .locals 1

    .line 334
    invoke-virtual {p1}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getRealUid(Landroid/os/UidBatteryConsumer;)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 558
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 560
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private shouldShowSummary(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 475
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 476
    invoke-virtual {v0, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 477
    invoke-interface {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationSummary(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p0

    .line 478
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object p1

    .line 480
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 481
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 188
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 189
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 190
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    .line 191
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    const v0, 0x7f041053

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getBatteryEntryList(Landroid/os/BatteryUsageStats;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/BatteryUsageStats;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;",
            ">;"
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 292
    sget-object v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->sConfig:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;->shouldShowBatteryAttributionList(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 295
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getDischargePercentage(Landroid/os/BatteryUsageStats;)I

    move-result v6

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p2, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getCoalescedUsageList(ZZ)Ljava/util/List;

    move-result-object p2

    .line 298
    invoke-virtual {p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v7

    move p1, v0

    .line 299
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 300
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 301
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 302
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v1

    move-wide v3, v7

    move v5, v6

    .line 301
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDI)D

    move-result-wide v0

    .line 303
    iput-wide v0, v9, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 206
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    if-eqz v0, :cond_0

    .line 207
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    .line 208
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 210
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 209
    invoke-static {v1, p0, v0, p1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;Z)V

    return v2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 182
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->stopRequestQueue()V

    .line 176
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public refreshAppListGroup(Landroid/os/BatteryUsageStats;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    .line 224
    iput-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    .line 225
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const v3, 0x7f041053

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 229
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 230
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 232
    sget-object v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->sConfig:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;

    iget-object v4, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {v2, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController$Config;->shouldShowBatteryAttributionList(Landroid/content/Context;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getDischargePercentage(Landroid/os/BatteryUsageStats;)I

    move-result v2

    move/from16 v5, p2

    .line 235
    invoke-direct {v0, v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getCoalescedUsageList(ZZ)Ljava/util/List;

    move-result-object v11

    .line 236
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryUsageStats;->getConsumedPower()D

    move-result-wide v12

    .line 237
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    move v14, v3

    move v15, v14

    :goto_0
    if-ge v14, v1, :cond_5

    .line 239
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;

    .line 241
    iget-object v5, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 242
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v6

    move-wide v8, v12

    move-object/from16 p1, v10

    move v10, v2

    .line 241
    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDI)D

    move-result-wide v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v5

    double-to-int v7, v7

    if-ge v7, v4, :cond_1

    move v4, v3

    goto/16 :goto_3

    .line 248
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v7

    .line 249
    new-instance v8, Landroid/os/UserHandle;

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 250
    iget-object v9, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 252
    iget-object v10, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v15

    .line 252
    invoke-virtual {v10, v15, v8}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 256
    invoke-direct {v0, v10}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v15

    check-cast v15, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    if-nez v15, :cond_2

    .line 258
    new-instance v15, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    move-object/from16 v3, p1

    invoke-direct {v15, v4, v9, v8, v3}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    .line 260
    invoke-virtual {v15, v10}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    .line 262
    :goto_1
    iput-wide v5, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mPercent:D

    .line 263
    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    add-int/lit8 v4, v14, 0x1

    .line 264
    invoke-virtual {v15, v4}, Landroidx/preference/Preference;->setOrder(I)V

    .line 265
    invoke-virtual {v15, v5, v6}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->setPercent(D)V

    const/4 v4, 0x0

    .line 266
    invoke-virtual {v15, v4}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    const/4 v5, -0x5

    if-eq v7, v5, :cond_3

    const/4 v5, -0x4

    if-eq v7, v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v4

    .line 267
    :goto_2
    invoke-virtual {v15, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 269
    invoke-virtual {v0, v15, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->setUsageSummary(Landroidx/preference/Preference;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V

    .line 271
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v15}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 272
    iget-object v3, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->getCachedCount()I

    move-result v5

    sub-int/2addr v3, v5

    const/16 v5, 0x15

    if-le v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    move v3, v4

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    move v3, v15

    goto :goto_4

    :cond_6
    move v4, v3

    :goto_4
    if-nez v3, :cond_7

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->addNotAvailableMessage()V

    .line 281
    :cond_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mAppListGroup:Landroidx/preference/PreferenceGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 283
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->startRequestQueue()V

    return-void
.end method

.method setUsageSummary(Landroidx/preference/Preference;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)V
    .locals 4

    .line 439
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 442
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->mNotAllowShowSummaryPackages:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 445
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 449
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v0

    .line 450
    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->shouldShowSummary(Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 451
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v0, v0

    const/4 v3, 0x0

    .line 452
    invoke-static {v2, v0, v1, v3, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 454
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isHidden()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    .line 456
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f040451

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/CharSequence;

    aput-object v0, p2, v3

    invoke-static {p0, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 453
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
