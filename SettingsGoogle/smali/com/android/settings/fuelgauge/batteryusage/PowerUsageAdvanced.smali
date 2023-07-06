.class public Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;
.super Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;
.source "PowerUsageAdvanced.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

.field private mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field final mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

.field mBatteryHistoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBatteryObserver:Landroid/database/ContentObserver;

.field mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

.field private mIsChartDataLoaded:Z

.field private mIsChartGraphEnabled:Z

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsChartDataLoaded(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$2;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$2;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    .line 73
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private refreshFeatureFlag(Landroid/content/Context;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    .line 211
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 213
    invoke-interface {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    :cond_0
    return-void
.end method

.method private setBatteryChartPreferenceController()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p0, :cond_0

    .line 219
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->setChartPreferenceController(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    :cond_0
    return-void
.end method

.method private updateHistPrefSummary(Landroid/content/Context;)V
    .locals 3

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 199
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "plugged"

    const/4 v2, -0x1

    .line 200
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 201
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 202
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 203
    invoke-interface {p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getAdvancedUsageScreenInfoString()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->setBottomSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->hideBottomSummary()V

    :goto_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->refreshFeatureFlag(Landroid/content/Context;)V

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 149
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/settings/SettingsActivity;

    const-string v4, "app_list"

    move-object v2, v1

    move-object v3, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 150
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->setBatteryChartPreferenceController()V

    goto :goto_0

    .line 153
    :cond_0
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    .line 155
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v10

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/settings/SettingsActivity;

    const-string v9, "app_list"

    move-object v7, v1

    move-object v8, p1

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    .line 156
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedBatteryUsage"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x33

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600be

    return p0
.end method

.method protected isBatteryHistoryNeeded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->refreshFeatureFlag(Landroid/content/Context;)V

    const-string v0, "battery_graph"

    .line 89
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->setBatteryChartPreferenceController()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 101
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->clearUidCache()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryHistoryUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 133
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryHistoryUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method protected refreshUi(I)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mHistPref:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->updatePreference(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->updateHistPrefSummary(Landroid/content/Context;)V

    .line 175
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryAppListPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->mBatteryUsageStats:Landroid/os/BatteryUsageStats;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryAppListPreferenceController;->refreshAppListGroup(Landroid/os/BatteryUsageStats;Z)V

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryMap:Ljava/util/Map;

    if-eqz p0, :cond_2

    .line 179
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryHistoryMap(Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 3

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "refresh_type"

    .line 186
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartGraphEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    if-nez v2, :cond_0

    const/4 p1, 0x1

    .line 189
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mIsChartDataLoaded:Z

    const/4 p1, 0x3

    .line 190
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced;->mBatteryHistoryLoaderCallbacks:Lcom/android/settings/fuelgauge/batteryusage/PowerUsageAdvanced$BatteryHistoryLoaderCallbacks;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)V

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 193
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerUsageBase;->restartBatteryStatsLoader(I)V

    :cond_1
    :goto_0
    return-void
.end method
