.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryChartPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference$OnExpandListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;
    }
.end annotation


# static fields
.field private static sUiMode:I


# instance fields
.field private final mActivity:Lcom/android/settings/SettingsActivity;

.field mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

.field private mBatteryChartViewGroup:Landroid/view/View;

.field mBatteryUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mCategoryTitleView:Landroid/view/View;

.field private mChartSummaryTextView:Landroid/widget/TextView;

.field mDailyChartIndex:I

.field final mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

.field mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field private mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

.field mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private final mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private final mHandler:Landroid/os/Handler;

.field private final mHourlyChartFadeInAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private final mHourlyChartFadeOutAdapter:Landroid/animation/AnimatorListenerAdapter;

.field mHourlyChartIndex:I

.field final mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

.field mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field private mHourlyChartVisible:Z

.field private mHourlyViewModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mIs24HourFormat:Z

.field mIsExpanded:Z

.field private mIsFooterPrefAdded:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNotAllowShowSummaryPackages:[Ljava/lang/CharSequence;

.field mPrefContext:Landroid/content/Context;

.field final mPreferenceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$6UapVSaVczMNVX2TtMoamzW5f2U(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$addFooterPreferenceIfNeeded$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$Al0RYVYqWkyZrJBLdjB8ZKG0Ej4(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartView$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BSglaD5jZJpAWjtt5WmY3AgAX4c(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryHistoryMap$0(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F2uJcqr-TxKjtLhh8ZmFy3WXXZs(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartViewInner$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z0AysNmwsSBVibFDZvGDQNdvFVc(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$refreshUi$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$cF0DBrQbZXLQ3MNpg4jAYJB1sBs(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->lambda$setBatteryChartViewInner$2(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmIs24HourFormat(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 4

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 106
    iput v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsFooterPrefAdded:Z

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartVisible:Z

    .line 125
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    .line 127
    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->createHourlyChartAnimatorListenerAdapter(Z)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeInAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 129
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->createHourlyChartAnimatorListenerAdapter(Z)Landroid/animation/AnimatorListenerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeOutAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 131
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    .line 134
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    .line 147
    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 148
    iput-object p5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 149
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 150
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    .line 151
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 152
    invoke-static {p2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 154
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 155
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    .line 156
    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getHideApplicationSummary(Landroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mNotAllowShowSummaryPackages:[Ljava/lang/CharSequence;

    if-eqz p3, :cond_0

    .line 158
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addAllPreferences()V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 462
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 463
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->addFooterPreferenceIfNeeded(Z)V

    if-nez v0, :cond_2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot find BatteryDiffEntry for daily_index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hourly_index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryChartPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 472
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 473
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->addPreferenceToScreen(Ljava/util/List;)V

    .line 476
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    if-nez v0, :cond_4

    .line 478
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    .line 479
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;->setOnExpandListener(Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference$OnExpandListener;)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;->setIsExpanded(Z)V

    .line 482
    :cond_4
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    .line 483
    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 482
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 484
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 486
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshExpandUi()V

    return-void
.end method

.method private addFooterPreferenceIfNeeded(Z)V
    .locals 2

    .line 744
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsFooterPrefAdded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 747
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsFooterPrefAdded:Z

    .line 748
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const p1, 0x7f04044c

    goto :goto_0

    :cond_1
    const p1, 0x7f04044d

    :goto_0
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 752
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private animateBatteryChartViewGroup()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 688
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 689
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private animateBatteryHourlyChartView(Z)V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartVisible:Z

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 697
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartVisible:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 700
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 701
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 702
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x190

    .line 703
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeInAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 704
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 705
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 707
    :cond_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 708
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 709
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartFadeOutAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 710
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 711
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method

.method private buildUsageTimeInfo(JZ)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0xea60

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 666
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const p1, 0x7f040445

    goto :goto_0

    :cond_0
    const p1, 0x7f04044e

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 671
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    long-to-double p1, p1

    const/4 v1, 0x0

    .line 672
    invoke-static {v0, p1, p2, v1, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p3, :cond_2

    const p2, 0x7f040449

    goto :goto_1

    :cond_2
    const p2, 0x7f04044a

    .line 678
    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createHourlyChartAnimatorListenerAdapter(Z)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 725
    :goto_0
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;I)V

    return-object v0
.end method

.method public static getAppBatteryUsageData(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 805
    :cond_0
    invoke-static {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getAppBatteryUsageData(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 809
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 810
    iget-object v2, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    if-eqz v2, :cond_2

    .line 811
    iget v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mConsumerType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-wide v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUserId:J

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 814
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static getAppBatteryUsageData(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;"
        }
    .end annotation

    .line 777
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 779
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 780
    invoke-virtual {v2, p0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v2

    .line 781
    invoke-interface {v2, p0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getBatteryHistorySinceLastFullCharge(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 782
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 786
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    const-string v0, "getBatterySinceLastFullChargeUsageData() size=%d time=%d/ms"

    .line 785
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryUsageData(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    const/4 v0, -0x1

    .line 794
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 793
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 795
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 794
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    if-nez p0, :cond_2

    goto :goto_0

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getAppDiffEntryList()Ljava/util/List;

    move-result-object v3

    :cond_3
    :goto_0
    return-object v3
.end method

.method private getSlotInformation(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 599
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f0403a3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 600
    :cond_0
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f040412

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 603
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f0403a4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 604
    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const p1, 0x7f040413

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static getTotalHours(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyBatteryLevels()Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object p0

    .line 771
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    div-long/2addr v1, v3

    long-to-int p0, v1

    return p0
.end method

.method private isAllSelected()Z
    .locals 2

    .line 760
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryLevelDataInOneDay()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isBatteryLevelDataInOneDay()Z
    .locals 1

    .line 756
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$addFooterPreferenceIfNeeded$5()V
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private synthetic lambda$refreshUi$4()V
    .locals 4

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->removeAndCacheAllPrefs()V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->addAllPreferences()V

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshCategoryTitle()V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p0, v1

    const-string/jumbo v0, "refreshUi is finished in %d/ms"

    .line 398
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "BatteryChartPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setBatteryChartView$1(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 0

    .line 326
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartViewInner(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    return-void
.end method

.method private synthetic lambda$setBatteryChartViewInner$2(I)V
    .locals 3

    .line 340
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDailyChartSelect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const/4 v0, -0x1

    .line 345
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    .line 347
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->requestAccessibilityFocusForCategoryTitle(Landroid/view/View;)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    if-ne p1, v0, :cond_1

    const/16 p1, 0x708

    goto :goto_0

    :cond_1
    const/16 p1, 0x707

    .line 352
    :goto_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 348
    invoke-virtual {v1, v2, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic lambda$setBatteryChartViewInner$3(I)V
    .locals 3

    .line 357
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    if-ne v0, p1, :cond_0

    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHourlyChartSelect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    .line 363
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->requestAccessibilityFocusForCategoryTitle(Landroid/view/View;)V

    .line 364
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    const/16 p1, 0x6e7

    goto :goto_0

    :cond_1
    const/16 p1, 0x6e6

    .line 368
    :goto_0
    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 364
    invoke-virtual {v0, v1, p1, p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method private synthetic lambda$setBatteryHistoryMap$0(Ljava/util/Map;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void
.end method

.method private refreshExpandUi()V
    .locals 4

    .line 551
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 552
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 551
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;

    .line 552
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffData;->getSystemDiffEntryList()Ljava/util/List;

    move-result-object v0

    .line 553
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    if-eqz v1, :cond_0

    .line 554
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->addPreferenceToScreen(Ljava/util/List;)V

    goto :goto_1

    .line 557
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    .line 558
    iget-object v1, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 562
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private refreshUiWithLevelDataCase()Z
    .locals 4

    const/4 v0, 0x1

    .line 430
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setChartSummaryVisible(Z)V

    .line 432
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryLevelDataInOneDay()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iput v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    goto :goto_0

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->setSelectedIndex(I)V

    .line 439
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 442
    :goto_0
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 444
    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryHourlyChartView(Z)V

    goto :goto_1

    .line 446
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryHourlyChartView(Z)V

    .line 447
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 448
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 449
    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->setSelectedIndex(I)V

    .line 450
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v3, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 453
    :goto_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private refreshUiWithNoLevelDataCase()Z
    .locals 6

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setChartSummaryVisible(Z)V

    .line 406
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryUsageMap:Ljava/util/Map;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 412
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    return v0

    :cond_0
    const/4 v4, -0x1

    .line 415
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 416
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 420
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V

    .line 422
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->removeAndCacheAllPrefs()V

    .line 423
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->addFooterPreferenceIfNeeded(Z)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private removeAndCacheAllPrefs()V
    .locals 5

    .line 535
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_3

    .line 536
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 541
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 545
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 547
    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_3
    :goto_2
    return-void
.end method

.method private requestAccessibilityFocusForCategoryTitle(Landroid/view/View;)V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mCategoryTitleView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mCategoryTitleView:Landroid/view/View;

    .line 589
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mCategoryTitleView:Landroid/view/View;

    if-eqz p0, :cond_2

    .line 590
    invoke-virtual {p0}, Landroid/view/View;->requestAccessibilityFocus()Z

    :cond_2
    return-void
.end method

.method private setBatteryChartViewInner(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 1

    .line 338
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 339
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V

    .line 355
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 356
    new-instance p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {p2, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void
.end method

.method private setChartSummaryVisible(Z)V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 717
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method addPreferenceToScreen(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;",
            ">;)V"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 494
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 495
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    const/4 v2, 0x0

    .line 497
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 499
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "BatteryChartPreferenceController"

    if-nez v5, :cond_6

    if-nez v4, :cond_1

    goto/16 :goto_3

    .line 503
    :cond_1
    iget-object v5, v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 504
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v7, v5}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preference should be removed for:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    goto :goto_1

    .line 509
    :cond_2
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    :goto_1
    if-nez v7, :cond_3

    .line 513
    new-instance v7, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v7, v6}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;-><init>(Landroid/content/Context;)V

    .line 514
    invoke-virtual {v7, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 515
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_3
    invoke-virtual {v7, v4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 518
    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 519
    invoke-virtual {v7, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 520
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v5

    invoke-virtual {v7, v5, v6}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->setPercent(D)V

    .line 521
    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 523
    invoke-virtual {v7, v1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->setBatteryDiffEntry(Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    .line 524
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->validForRestriction()Z

    move-result v3

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 525
    invoke-virtual {p0, v7, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setPreferenceSummary(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V

    if-nez v2, :cond_4

    .line 527
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 529
    :cond_4
    invoke-virtual {v7}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0xff

    goto :goto_2

    :cond_5
    const/16 v1, 0x55

    :goto_2
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 500
    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find app resource for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 218
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 219
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 220
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "battery_graph_footer"

    .line 223
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method getSlotInformation()Ljava/lang/String;
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    move-result-object v0

    .line 619
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-object v0

    .line 623
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isBatteryLevelDataInOneDay()Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, p0, v2

    const/4 v0, 0x1

    aput-object v1, p0, v0

    const-string v0, "%s %s"

    .line 629
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 12

    .line 242
    instance-of v0, p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 245
    :cond_0
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;

    .line 246
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->getBatteryDiffEntry()Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;

    move-result-object v4

    .line 247
    iget-object v0, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 248
    iget-object v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    .line 249
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->isAppEntry()Z

    move-result v3

    .line 250
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v6, 0x758

    if-eqz v3, :cond_1

    const/16 v3, 0x6e8

    goto :goto_0

    :cond_1
    const/16 v3, 0x6e9

    :goto_0
    move v7, v3

    const/16 v8, 0x758

    .line 256
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "none"

    move-object v9, v3

    goto :goto_1

    :cond_2
    move-object v9, v2

    .line 257
    :goto_1
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPercentOfTotal()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    .line 250
    invoke-virtual/range {v5 .. v10}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 259
    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    aput-object v1, v3, v8

    const/4 v1, 0x2

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mPackageName:Ljava/lang/String;

    aput-object v0, v3, v1

    const-string v0, "handleClick() label=%s key=%s package=%s"

    .line 258
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 261
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isValidToShowSummary(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v7

    move-object v2, v0

    .line 260
    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/lang/String;ZLjava/lang/String;)V

    return v8
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isValidToShowSummary(Ljava/lang/String;)Z
    .locals 0

    .line 683
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mNotAllowShowSummaryPackages:[Ljava/lang/CharSequence;

    invoke-static {p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->contains(Ljava/lang/String;[Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 167
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const-string v1, "daily_chart_index"

    .line 168
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 169
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const-string v1, "hourly_chart_index"

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    .line 171
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    const-string v1, "expand_system_info"

    .line 172
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 173
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 174
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "onCreate() dailyIndex=%d hourlyIndex=%d isExpanded=%b"

    .line 173
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPreferenceCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_1

    .line 211
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_1
    return-void
.end method

.method public onExpand(Z)V
    .locals 3

    .line 268
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    .line 269
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v2, 0x6ea

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshExpandUi()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 180
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 182
    sget v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->sUiMode:I

    if-eq v1, v0, :cond_0

    .line 183
    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->sUiMode:I

    .line 184
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->clearCache()V

    const-string v0, "BatteryChartPreferenceController"

    const-string v1, "clear icon and label cache since uiMode is changed"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIs24HourFormat:Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v1, 0x758

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    const-string v1, "daily_chart_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const-string v1, "hourly_chart_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    const-string v1, "expand_system_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 199
    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const/4 v0, 0x2

    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mIsExpanded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "onSaveInstanceState() dailyIndex=%d hourlyIndex=%d isExpanded=%b"

    .line 199
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method refreshCategoryTitle()V
    .locals 5

    .line 570
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v4, "refreshCategoryTitle:%s"

    .line 571
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "BatteryChartPreferenceController"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mAppListPrefGroup:Landroidx/preference/PreferenceGroup;

    if-eqz v2, :cond_0

    .line 574
    invoke-direct {p0, v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 573
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mExpandDividerPreference:Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;

    if-eqz v1, :cond_1

    .line 578
    invoke-direct {p0, v3, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getSlotInformation(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 577
    invoke-virtual {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/ExpandDividerPreference;->setTitle(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method refreshUi()Z
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-nez v0, :cond_0

    goto :goto_2

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUiWithLevelDataCase()Z

    move-result v0

    goto :goto_1

    .line 386
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUiWithNoLevelDataCase()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    return v1

    .line 393
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00e6

    if-ne v0, v1, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eq v0, p2, :cond_2

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 327
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryChartViewGroup()V

    .line 329
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mBatteryChartViewGroup:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    const p2, 0x7f0d0173

    .line 332
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mChartSummaryTextView:Landroid/widget/TextView;

    :cond_4
    return-void
.end method

.method setBatteryHistoryMap(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBatteryHistoryMap() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartPreferenceController"

    .line 278
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->animateBatteryChartViewGroup()V

    .line 282
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V

    .line 283
    invoke-static {v0, v2, p1, v3}, Lcom/android/settings/fuelgauge/batteryusage/DataProcessor;->getBatteryLevelData(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;Lcom/android/settings/fuelgauge/batteryusage/DataProcessor$UsageMapAsyncResponse;)Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;

    move-result-object p1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBatteryLevelData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mPrefContext:Landroid/content/Context;

    const/16 v2, 0x709

    .line 292
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->getTotalHours(Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;)I

    move-result v3

    .line 289
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 295
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartIndex:I

    .line 296
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartIndex:I

    const/4 p1, 0x0

    .line 297
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 298
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void

    .line 302
    :cond_1
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 303
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyBatteryLevels()Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getLevels()Ljava/util/List;

    move-result-object v1

    .line 304
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getDailyBatteryLevels()Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->CENTER_OF_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$DailyChartLabelTextGenerator;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$LabelTextGenerator;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mDailyViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    .line 309
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData;->getHourlyBatteryLevelsPerDay()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;

    .line 310
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyViewModels:Ljava/util/List;

    new-instance v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 311
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getLevels()Ljava/util/List;

    move-result-object v3

    .line 312
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryLevelData$PeriodBatteryLevelData;->getTimestamps()Ljava/util/List;

    move-result-object v0

    sget-object v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;->BETWEEN_TRAPEZOIDS:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->mHourlyChartLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$HourlyChartLabelTextGenerator;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;-><init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$LabelTextGenerator;)V

    .line 310
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->refreshUi()Z

    return-void
.end method

.method setPreferenceSummary(Lcom/android/settings/fuelgauge/batteryusage/PowerGaugePreference;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;)V
    .locals 11

    .line 635
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    .line 636
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    add-long v4, v0, v2

    .line 639
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->isValidToShowSummary(Ljava/lang/String;)Z

    move-result p2

    const/4 v6, 0x0

    if-nez p2, :cond_0

    .line 640
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-wide/16 v7, 0x0

    cmp-long p2, v4, v7

    if-nez p2, :cond_1

    .line 646
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    cmp-long p2, v0, v7

    const/4 v0, 0x1

    if-nez p2, :cond_2

    cmp-long p2, v2, v7

    if-eqz p2, :cond_2

    .line 649
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-wide/32 v9, 0xea60

    cmp-long p2, v4, v9

    const/4 v1, 0x0

    if-gez p2, :cond_3

    .line 652
    invoke-direct {p0, v4, v5, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 654
    :cond_3
    invoke-direct {p0, v4, v5, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object v6

    cmp-long p2, v2, v7

    if-lez p2, :cond_4

    .line 657
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->buildUsageTimeInfo(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 661
    :cond_4
    :goto_0
    invoke-virtual {p1, v6}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
