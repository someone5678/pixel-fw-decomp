.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;
.super Landroidx/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

.field private mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field mHideSummary:Z

.field private mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

.field private mIsChartGraphEnabled:Z

.field private mSummaryContent:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ZEhLuIpiVBMzQIld_NoDOLW-W_4(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->lambda$setBatteryUsageStats$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p2

    .line 60
    invoke-interface {p2, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isChartGraphEnabled: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatteryHistoryPreference"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    if-eqz p1, :cond_0

    const p1, 0x7f060064

    goto :goto_0

    :cond_0
    const p1, 0x7f060067

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private synthetic lambda$setBatteryUsageStats$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 90
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public hideBottomSummary()V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHideSummary:Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 103
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 105
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    if-nez v2, :cond_0

    return-void

    .line 108
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mIsChartGraphEnabled:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0d0193

    .line 109
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d01c8

    .line 110
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 111
    invoke-virtual {v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setCompanionTextView(Landroid/widget/TextView;)V

    const v3, 0x7f0d02ee

    .line 112
    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    .line 113
    invoke-virtual {p1, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->setCompanionTextView(Landroid/widget/TextView;)V

    .line 114
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    if-eqz p1, :cond_4

    .line 115
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1, v2, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0d0171

    .line 118
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 119
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0d011c

    .line 120
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    .line 121
    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryContent:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 122
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHideSummary:Z

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    const v2, 0x7f0d00ec

    .line 127
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    const v2, 0x7f0d0369

    .line 128
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 129
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    :cond_4
    :goto_0
    const-string p0, "BatteryHistoryPreference"

    const-string p1, "onBindViewHolder"

    .line 131
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method setBatteryUsageStats(Landroid/os/BatteryUsageStats;)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryUsageStats;Z)V

    return-void
.end method

.method public setBottomSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 71
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryContent:Ljava/lang/CharSequence;

    .line 72
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mSummaryContent:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHideSummary:Z

    return-void
.end method

.method setChartPreferenceController(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;)V
    .locals 1

    .line 95
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mChartPreferenceController:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;

    .line 96
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mDailyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistoryPreference;->mHourlyChartView:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p1, v0, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController;->setBatteryChartView(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V

    :cond_0
    return-void
.end method
