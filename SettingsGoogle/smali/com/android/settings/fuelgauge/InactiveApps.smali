.class public Lcom/android/settings/fuelgauge/InactiveApps;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InactiveApps.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FULL_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

.field private static final FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

.field private static final REDUCED_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

.field private static final REDUCED_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;


# instance fields
.field private mUsageStats:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/CharSequence;

    const-string v2, "ACTIVE"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "WORKING_SET"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "FREQUENT"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "RARE"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "RESTRICTED"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    .line 51
    sput-object v1, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    .line 55
    invoke-static {v1, v3, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    sput-object v1, Lcom/android/settings/fuelgauge/InactiveApps;->REDUCED_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/16 v1, 0xa

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x14

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1e

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x28

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x2d

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    .line 66
    invoke-static {v0, v3, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/settings/fuelgauge/InactiveApps;->REDUCED_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static bucketToName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_6

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0x14

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x28

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "NEVER"

    return-object p0

    :cond_1
    const-string p0, "RESTRICTED"

    return-object p0

    :cond_2
    const-string p0, "RARE"

    return-object p0

    :cond_3
    const-string p0, "FREQUENT"

    return-object p0

    :cond_4
    const-string p0, "WORKING_SET"

    return-object p0

    :cond_5
    const-string p0, "ACTIVE"

    return-object p0

    :cond_6
    const-string p0, "EXEMPTED"

    return-object p0
.end method

.method private getAllowableBuckets(Ljava/lang/String;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1

    .line 128
    iget-object p0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p0, p1}, Landroid/app/usage/UsageStatsManager;->getAppMinStandbyBucket(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x2d

    if-le p0, p1, :cond_0

    return-object p2

    :cond_0
    const/16 p1, 0xa

    const/4 v0, 0x0

    if-ge p0, p1, :cond_1

    new-array p0, v0, [Ljava/lang/CharSequence;

    return-object p0

    .line 137
    :cond_1
    sget-object p1, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    .line 138
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_2

    return-object p2

    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 143
    invoke-static {p2, v0, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private init()V
    .locals 11

    .line 91
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 96
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_restricted_bucket"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    if-eqz v6, :cond_1

    .line 101
    sget-object v4, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/settings/fuelgauge/InactiveApps;->REDUCED_SETTABLE_BUCKETS_NAMES:[Ljava/lang/CharSequence;

    :goto_1
    if-eqz v6, :cond_2

    .line 103
    sget-object v5, Lcom/android/settings/fuelgauge/InactiveApps;->FULL_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/android/settings/fuelgauge/InactiveApps;->REDUCED_SETTABLE_BUCKETS_VALUES:[Ljava/lang/CharSequence;

    .line 105
    :goto_2
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "android.intent.category.LAUNCHER"

    .line 106
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 108
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 109
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 110
    new-instance v9, Landroidx/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v7, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v7, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 113
    invoke-virtual {v9, v8}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0, v8, v4}, Lcom/android/settings/fuelgauge/InactiveApps;->getAllowableBuckets(Ljava/lang/String;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 115
    invoke-direct {p0, v8, v5}, Lcom/android/settings/fuelgauge/InactiveApps;->getAllowableBuckets(Ljava/lang/String;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 116
    invoke-direct {p0, v9}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroidx/preference/ListPreference;)V

    .line 118
    invoke-static {v8, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 119
    invoke-virtual {v9, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 121
    :cond_3
    invoke-virtual {v9, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-virtual {v0, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_3

    :cond_4
    return-void
.end method

.method private updateSummary(Landroidx/preference/ListPreference;)V
    .locals 5

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 161
    iget-object p0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBucket(Ljava/lang/String;)I

    move-result p0

    .line 162
    invoke-static {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->bucketToName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v1, 0x7f041428

    .line 163
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2d

    if-gt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    .line 170
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 172
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xee

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-class v0, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    const p1, 0x7f1600ba

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f040b2f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/settings/fuelgauge/InactiveApps;->mUsageStats:Landroid/app/usage/UsageStatsManager;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/app/usage/UsageStatsManager;->setAppStandbyBucket(Ljava/lang/String;I)V

    .line 178
    check-cast p1, Landroidx/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/InactiveApps;->updateSummary(Landroidx/preference/ListPreference;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/InactiveApps;->init()V

    return-void
.end method
