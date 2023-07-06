.class public Lcom/android/settings/homepage/TopLevelSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TopLevelSettings.java"

# interfaces
.implements Lcom/android/settings/homepage/SplitLayoutListener;
.implements Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

.field private mFirstStarted:Z

.field private mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

.field private mIsEmbeddingActivityEnabled:Z

.field private mPaddingHorizontal:I

.field private mScrollNeeded:Z


# direct methods
.method public static synthetic $r8$lambda$JwZjmikXi7OMPZHfG66xpkkfuEw(ILandroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$onCreatePreferences$0(ILandroidx/preference/Preference;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k1QYqkZRO1_2JOG6E03o1Vql0L0(ZLandroidx/preference/Preference;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->lambda$onSplitLayoutChanged$1(ZLandroidx/preference/Preference;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 367
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$2;

    const v1, 0x7f1600fe

    invoke-direct {v0, v1}, Lcom/android/settings/homepage/TopLevelSettings$2;-><init>(I)V

    sput-object v0, Lcom/android/settings/homepage/TopLevelSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mFirstStarted:Z

    .line 71
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "need_search_icon_in_action_bar"

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method private isOnlyOneActivityInTask()Z
    .locals 2

    .line 184
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 186
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method private iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 341
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 344
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 349
    :cond_1
    invoke-interface {p1}, Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;->init()V

    .line 350
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 352
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 356
    :cond_2
    invoke-interface {p1, v2}, Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;->doForEach(Landroidx/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private static synthetic lambda$onCreatePreferences$0(ILandroidx/preference/Preference;)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onSplitLayoutChanged$1(ZLandroidx/preference/Preference;)V
    .locals 1

    .line 218
    instance-of v0, p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;

    if-eqz v0, :cond_0

    .line 219
    check-cast p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;

    invoke-interface {p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;->getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->setIconVisible(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreference(Lcom/android/settingslib/drawer/Tile;)Landroidx/preference/Preference;
    .locals 0

    .line 331
    new-instance p1, Lcom/android/settings/widget/HomepagePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreference;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getCallbackFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getHighlightMixin()Lcom/android/settings/homepage/TopLevelHighlightMixin;
    .locals 0

    .line 279
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TopLevelSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600fe

    return p0
.end method

.method public highlightPreferenceIfNeeded()V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->highlightPreferenceIfNeeded()V

    :cond_0
    return-void
.end method

.method public isActivityEmbedded()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/window/embedding/ActivityEmbeddingController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/ActivityEmbeddingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mActivityEmbeddingController:Landroidx/window/embedding/ActivityEmbeddingController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/ActivityEmbeddingController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isDuplicateClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->getHighlightPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isActivityEmbedded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->getPreferenceScreenResId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/homepage/HighlightableMenu;->fromXml(Landroid/content/Context;I)V

    .line 96
    const-class p1, Lcom/android/settings/support/SupportPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/support/SupportPreferenceController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/support/SupportPreferenceController;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->highlightPreferenceIfNeeded()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isActivityEmbedded()Z

    move-result v0

    if-eqz p1, :cond_2

    const-string v1, "highlight_mixin"

    .line 149
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    .line 150
    invoke-virtual {p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->isActivityEmbedded()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    .line 151
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {p1, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setActivityEmbedded(Z)V

    .line 153
    :cond_2
    iget-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-nez p1, :cond_3

    .line 154
    new-instance p1, Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-direct {p1, v0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;-><init>(Z)V

    iput-object p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    :cond_3
    return-void
.end method

.method protected onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 2

    .line 323
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    if-nez v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    iget-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mScrollNeeded:Z

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->onCreateAdapter(Lcom/android/settings/homepage/TopLevelSettings;Landroidx/preference/PreferenceScreen;Z)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0

    .line 324
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getHomepageIconColor(Landroid/content/Context;)I

    move-result p1

    .line 201
    new-instance p2, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-direct {p0, p2}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroidx/preference/PreferenceFragmentCompat;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    .line 236
    iget p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mPaddingHorizontal:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p0, p2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-object p1
.end method

.method public onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z
    .locals 1

    .line 126
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p2}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 128
    invoke-virtual {p2}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 129
    instance-of p2, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz p2, :cond_0

    .line 130
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 129
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, -0x1

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/4 p1, 0x1

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setIsSecondLayerPage(Z)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return p1
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelSettings;->isDuplicateClick(Landroidx/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerSubSettingsPairRule(Landroid/content/Context;Z)V

    .line 120
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightPreferenceKey(Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 192
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    const-string v0, "highlight_mixin"

    .line 193
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onSplitLayoutChanged(Z)V
    .locals 1

    .line 217
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/TopLevelSettings$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 168
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mFirstStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 169
    iput-boolean v1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mFirstStarted:Z

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    invoke-interface {v0, v1}, Lcom/android/settings/search/SearchFeatureProvider;->sendPreIndexIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isOnlyOneActivityInTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->isActivityEmbedded()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TopLevelSettings"

    const-string v2, "Set default menu key"

    .line 176
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f040de1

    .line 177
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->setHighlightMenuKey(Ljava/lang/String;Z)V

    .line 180
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method reloadHighlightMenuKey()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->reloadHighlightMenuKey(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setHighlightMenuKey(Ljava/lang/String;Z)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setHighlightMenuKey(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setHighlightPreferenceKey(Ljava/lang/String;)V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "top_level_support"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setHighlightPreferenceKey(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMenuHighlightShowed(Z)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/android/settings/homepage/TopLevelSettings;->mHighlightMixin:Lcom/android/settings/homepage/TopLevelHighlightMixin;

    if-eqz p0, :cond_0

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/settings/homepage/TopLevelHighlightMixin;->setMenuHighlightShowed(Z)V

    :cond_0
    return-void
.end method

.method public setPaddingHorizontal(I)V
    .locals 1

    .line 242
    iput p1, p0, Lcom/android/settings/homepage/TopLevelSettings;->mPaddingHorizontal:I

    .line 243
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected shouldForceRoundedIcon()Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090018

    .line 318
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public updatePreferencePadding(Z)V
    .locals 1

    .line 251
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/homepage/TopLevelSettings$1;-><init>(Lcom/android/settings/homepage/TopLevelSettings;Z)V

    invoke-direct {p0, v0}, Lcom/android/settings/homepage/TopLevelSettings;->iteratePreferences(Lcom/android/settings/homepage/TopLevelSettings$PreferenceJob;)V

    return-void
.end method
