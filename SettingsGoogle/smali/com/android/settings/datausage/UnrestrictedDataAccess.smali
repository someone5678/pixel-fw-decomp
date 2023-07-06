.class public Lcom/android/settings/datausage/UnrestrictedDataAccess;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UnrestrictedDataAccess.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mShowSystem:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 122
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f160105

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040af6

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UnrestrictedDataAccess"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x15d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160105

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 89
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    iget-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_0

    .line 91
    :cond_0
    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_0
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 92
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setSession(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 93
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "show_system"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    .line 49
    const-class p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setParentFragment(Lcom/android/settings/dashboard/DashboardFragment;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v0, :cond_0

    const v0, 0x7f040dd6

    goto :goto_0

    :cond_0
    const v0, 0x7f040df4

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x2b

    .line 54
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 56
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 118
    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroyView()V

    .line 119
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->release()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 61
    const-class v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v1, :cond_1

    const v1, 0x7f040dd6

    goto :goto_0

    :cond_1
    const v1, 0x7f040df4

    .line 64
    :goto_0
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 65
    iget-boolean v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 66
    :cond_2
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    iget-object v2, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-virtual {v1, v2}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->setFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccessPreferenceController;->rebuild()V

    .line 73
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    iget-boolean p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess;->mShowSystem:Z

    const-string/jumbo v0, "show_system"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
