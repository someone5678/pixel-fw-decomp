.class public Lcom/android/settings/network/NetworkProviderSimsCategoryController;
.super Lcom/android/settings/widget/PreferenceCategoryController;
.source "NetworkProviderSimsCategoryController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_PREFERENCE_CATEGORY_SIM:Ljava/lang/String; = "provider_model_sim_category"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkProviderSimsCategoryController"


# instance fields
.field private mNetworkProviderSimListController:Lcom/android/settings/network/NetworkProviderSimListController;

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lcom/android/settings/network/NetworkProviderSimListController;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/network/NetworkProviderSimListController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->mNetworkProviderSimListController:Lcom/android/settings/network/NetworkProviderSimListController;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->mNetworkProviderSimListController:Lcom/android/settings/network/NetworkProviderSimListController;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/NetworkProviderSimListController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "provider_model_sim_category"

    .line 58
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    const-string p0, "NetworkProviderSimsCategoryController"

    const-string p1, "displayPreference(), Can not find the category."

    .line 60
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->mNetworkProviderSimListController:Lcom/android/settings/network/NetworkProviderSimListController;

    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkProviderSimListController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_0

    const-string p0, "NetworkProviderSimsCategoryController"

    const-string/jumbo p1, "updateState(), Can not find the category."

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 73
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p1

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    const p1, 0x7f0410ec

    goto :goto_0

    :cond_1
    const p1, 0x7f0413a2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSimsCategoryController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
