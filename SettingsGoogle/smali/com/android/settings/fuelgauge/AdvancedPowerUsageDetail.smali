.class public Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AdvancedPowerUsageDetail.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/ButtonActionDialogFragment$AppButtonsDialogListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;
.implements Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;
    }
.end annotation


# instance fields
.field private mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

.field mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

.field mBackgroundPreference:Landroidx/preference/Preference;

.field mBackupManager:Landroid/app/backup/BackupManager;

.field mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mEnableTriState:Z

.field mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field mForegroundPreference:Landroidx/preference/Preference;

.field mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field mOptimizationMode:I

.field mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

.field mState:Lcom/android/settingslib/applications/ApplicationsState;

.field mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public static synthetic $r8$lambda$ivoq80ILZgB94hn5zCXy4f9AoFc(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->lambda$initPreferenceForTriState$0(Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    return-void
.end method

.method private getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x2

    const-wide/32 v2, 0xea60

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f0403ac

    .line 652
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    .line 651
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0403ad

    .line 654
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 655
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    .line 654
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f040443

    .line 663
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/CharSequence;

    aput-object p7, p1, v5

    .line 662
    invoke-static {p0, p1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f040444

    goto :goto_1

    :cond_3
    const p1, 0x7f040440

    .line 667
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 671
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 670
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v5

    aput-object p7, p2, v4

    .line 666
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f04043b

    .line 678
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 680
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 679
    invoke-static {v1, p5, p6, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v5

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 684
    invoke-static {p0, p3, p4, v5, v5}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, v4

    aput-object p7, v0, p2

    .line 677
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getAppActiveTime(Landroid/os/Bundle;)Ljava/lang/CharSequence;
    .locals 11

    const-string v0, "extra_foreground_time"

    .line 534
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "extra_background_time"

    .line 535
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "extra_uid"

    const/4 v1, 0x0

    .line 536
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "extra_slot_time"

    const/4 v6, 0x0

    .line 537
    invoke-virtual {p1, v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    add-long v9, v2, v4

    .line 540
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 541
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isChartGraphEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 543
    invoke-static {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isSystemUid(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v6

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, v9, v0

    if-nez p1, :cond_1

    const p1, 0x7f04044f

    .line 547
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-nez v8, :cond_2

    move-object v1, p0

    move-wide v6, v9

    .line 550
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object v1, p0

    move-wide v6, v9

    .line 554
    invoke-direct/range {v1 .. v8}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveSummaryWithSlotTime(JJJLjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getAppFullChargeActiveSummary(JJJ)Ljava/lang/CharSequence;
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x1

    const-wide/32 v2, 0xea60

    const/4 v4, 0x0

    if-nez p1, :cond_1

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    cmp-long p1, p3, v2

    if-gez p1, :cond_0

    const p1, 0x7f0403aa

    .line 565
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const p1, 0x7f0403a8

    .line 566
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 568
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 567
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 566
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    cmp-long p1, p5, v2

    if-gez p1, :cond_2

    const p1, 0x7f040441

    .line 574
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    cmp-long p1, p3, v2

    if-gez p1, :cond_4

    cmp-long p1, p3, v0

    if-nez p1, :cond_3

    const p1, 0x7f04043c

    goto :goto_1

    :cond_3
    const p1, 0x7f04043e

    .line 578
    :goto_1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 582
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p5

    .line 581
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, p2, v4

    .line 577
    invoke-static {p1, p2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_4
    const p1, 0x7f040439

    .line 589
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 591
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    long-to-double p5, p5

    .line 590
    invoke-static {v1, p5, p6, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p5

    aput-object p5, v0, v4

    .line 596
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    long-to-double p3, p3

    .line 595
    invoke-static {p0, p3, p4, v4, v4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p0

    aput-object p0, v0, p2

    .line 588
    invoke-static {p1, v0}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedPreference()I
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 526
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initPreferenceForTriState$0(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x0

    .line 396
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private logMetricCategory(I)V
    .locals 7

    .line 479
    iget v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x6f1

    goto :goto_0

    :cond_2
    const/16 v0, 0x6f0

    goto :goto_0

    :cond_3
    const/16 v0, 0x6f2

    goto :goto_0

    :goto_1
    if-eqz v3, :cond_5

    .line 497
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    const/16 v2, 0x761

    const/16 v4, 0x761

    .line 503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "none"

    :cond_4
    move-object v5, p1

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "extra_power_usage_amount"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 499
    invoke-virtual/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIILjava/lang/String;I)V

    :cond_5
    return-void
.end method

.method private onCreateForTriState(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "unrestricted_pref"

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "optimized_pref"

    .line 510
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string/jumbo v0, "restricted_pref"

    .line 511
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    const-string v0, "app_usage_footer_preference"

    .line 512
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/FooterPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    .line 513
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    .line 517
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    .line 518
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "extra_uid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    return-void
.end method

.method private static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V
    .locals 4

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_package_name"

    if-nez v1, :cond_0

    .line 192
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmAppLabel(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "extra_label"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmIconId(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v3, "extra_icon_id"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_uid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmBackgroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 202
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmForegroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)J

    move-result-wide v1

    const-string v3, "extra_foreground_time"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmSlotInformation(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_slot_time"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmUsagePercent(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_power_usage_percent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmConsumedPower(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result v1

    const-string v2, "extra_power_usage_amount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmIsUserEntry(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    goto :goto_1

    .line 207
    :cond_1
    invoke-static {p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fgetmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 209
    :goto_1
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 210
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const v1, 0x7f0403c0

    .line 211
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 212
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 213
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6

    .line 151
    iget-object v0, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBatteryHistEntry:Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;

    .line 152
    new-instance v1, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs-IA;)V

    .line 154
    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUsagePercent(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmAppLabel(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 157
    invoke-static {v1, p5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmSlotInformation(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 158
    iget-wide v2, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->mUid:J

    long-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 159
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->getAppIconId()I

    move-result p3

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIconId(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 160
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mConsumePower:D

    double-to-int p3, v2

    invoke-static {v1, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmConsumedPower(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    const-wide/16 v2, 0x0

    if-eqz p4, :cond_0

    .line 162
    iget-wide v4, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mForegroundUsageTimeInMs:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    invoke-static {v1, v4, v5}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmForegroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    if-eqz p4, :cond_1

    .line 164
    iget-wide v2, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryDiffEntry;->mBackgroundUsageTimeInMs:J

    :cond_1
    invoke-static {v1, v2, v3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmBackgroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    .line 165
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryHistEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v1, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIsUserEntry(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)V

    .line 166
    invoke-static {p0, p1, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;Ljava/lang/String;Z)V
    .locals 5

    .line 173
    new-instance v0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs-IA;)V

    .line 175
    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUsagePercent(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getDefaultPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmPackageName(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmAppLabel(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getUid()I

    move-result p3

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmUid(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 179
    iget p3, p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->mIconId:I

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIconId(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    .line 180
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getConsumedPower()D

    move-result-wide v1

    double-to-int p3, v1

    invoke-static {v0, p3}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmConsumedPower(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;I)V

    const-wide/16 v1, 0x0

    if-eqz p4, :cond_0

    .line 181
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInForegroundMs()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    invoke-static {v0, v3, v4}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmForegroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    if-eqz p4, :cond_1

    .line 182
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->getTimeInBackgroundMs()J

    move-result-wide v1

    :cond_1
    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmBackgroundTimeMs(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;J)V

    .line 183
    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryEntry;->isUserEntry()Z

    move-result p2

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;->-$$Nest$fputmIsUserEntry(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;Z)V

    .line 184
    invoke-static {p0, p1, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$LaunchBatteryDetailPageArgs;)V

    return-void
.end method

.method public static startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settingslib/core/instrumentation/Instrumentable;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5

    .line 232
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "extra_package_name"

    .line 234
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 235
    invoke-static {v2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "extra_power_usage_percent"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v3, "extra_uid"

    .line 237
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "AdvancedPowerDetail"

    invoke-static {v2, p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    :goto_0
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;

    .line 243
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const p2, 0x7f0403c0

    .line 244
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 245
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 246
    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 247
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V
    .locals 0

    .line 475
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 12
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

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_uid"

    const/4 v3, 0x0

    .line 421
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "extra_package_name"

    .line 422
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    new-instance v3, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 425
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v3

    move-object v6, p0

    move-object v8, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;Lcom/android/settingslib/applications/ApplicationsState;II)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    .line 427
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v3, :cond_0

    .line 429
    new-instance p0, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/UnrestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    new-instance p0, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/OptimizedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance p0, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;

    invoke-direct {p0, p1, v2, v1}, Lcom/android/settings/fuelgauge/RestrictedPreferenceController;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 433
    :cond_0
    new-instance v3, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    invoke-direct {v3, p1, p0, v2, v1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 435
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;

    .line 437
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v2, p0, v1}, Lcom/android/settings/fuelgauge/BatteryOptimizationPreferenceController;-><init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/dashboard/DashboardFragment;Ljava/lang/String;)V

    .line 436
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AdvancedPowerDetail"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x35

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 414
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz p0, :cond_0

    const p0, 0x7f1600bf

    goto :goto_0

    :cond_0
    const p0, 0x7f1600c0

    :goto_0
    return p0
.end method

.method public handleDialogClick(I)V
    .locals 0

    .line 453
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleDialogClick(I)V

    :cond_0
    return-void
.end method

.method initHeader()V
    .locals 5

    .line 319
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d0236

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 320
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 321
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 323
    invoke-static {v1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 324
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v3, 0x0

    .line 325
    invoke-virtual {v0, v3, v3}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 328
    iget-object v4, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v4, :cond_1

    const-string v4, "extra_label"

    .line 329
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    const-string v4, "extra_icon_id"

    .line 331
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 333
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 335
    :cond_0
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    goto :goto_0

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 339
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 340
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/widget/EntityHeaderController;

    .line 341
    iget-object v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    .line 344
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v3, :cond_2

    .line 345
    invoke-direct {p0, v2}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getAppActiveTime(Landroid/os/Bundle;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    :cond_2
    const/4 p0, 0x1

    .line 348
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method

.method initPreference(Landroid/content/Context;)V
    .locals 9

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_foreground_time"

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "extra_background_time"

    .line 355
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 356
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const v5, 0x7f040451

    .line 357
    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/CharSequence;

    long-to-double v1, v1

    const/4 v8, 0x0

    .line 358
    invoke-static {p1, v1, v2, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v7, v8

    .line 357
    invoke-static {v5, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 356
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    const v1, 0x7f0403a2

    .line 364
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    new-array v1, v6, [Ljava/lang/CharSequence;

    long-to-double v2, v3

    .line 365
    invoke-static {p1, v2, v3, v8, v8}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZZ)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v1, v8

    .line 364
    invoke-static {p0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 363
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method initPreferenceForTriState(Landroid/content/Context;)V
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isValidPackageName()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f040d6d

    if-nez v0, :cond_0

    const v0, 0x7f040d6f

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 380
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->isSystemOrDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040d74

    .line 384
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 385
    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x7f040d6c

    .line 389
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f040abf

    .line 392
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 395
    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v2, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    const v0, 0x7f040d6e

    .line 398
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method notifyBackupManager()V
    .locals 2

    .line 310
    iget v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackupManager:Landroid/app/backup/BackupManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    .line 313
    :goto_0
    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 445
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 446
    iget-object p0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppButtonsPreferenceController:Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    if-eqz p0, :cond_0

    .line 447
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;->handleActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 253
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 255
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 256
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    .line 460
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundActivityPreferenceController:Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;

    .line 461
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    .line 460
    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 261
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_package_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->onCreateForTriState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "app_usage_foreground"

    .line 267
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mForegroundPreference:Landroidx/preference/Preference;

    const-string v0, "app_usage_background"

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBackgroundPreference:Landroidx/preference/Preference;

    :goto_0
    const-string v0, "header_view"

    .line 270
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mHeaderPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 298
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 299
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getSelectedPreference()I

    move-result v0

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->notifyBackupManager()V

    .line 303
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->logMetricCategory(I)V

    .line 304
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Leave with mode: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdvancedPowerDetail"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 1

    .line 466
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 467
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mUnrestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizePreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mRestrictedPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->updatePreferenceState(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;)V

    .line 470
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->getSelectedPreference()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->setAppUsageState(I)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 279
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initHeader()V

    .line 282
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mEnableTriState:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getAppOptimizationMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mOptimizationMode:I

    .line 284
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreferenceForTriState(Landroid/content/Context;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->mBatteryOptimizeUtils:Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryOptimizeUtils;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v2, 0x761

    .line 287
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->initPreference(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
