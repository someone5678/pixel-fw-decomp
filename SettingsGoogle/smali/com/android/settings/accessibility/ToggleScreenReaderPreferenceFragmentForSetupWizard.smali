.class public Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.source "ToggleScreenReaderPreferenceFragmentForSetupWizard.java"


# instance fields
.field private mToggleSwitchWasInitiallyChecked:Z


# direct methods
.method public static synthetic $r8$lambda$StaQF7vFFvkhwQqfGA6Z-Qy5Tv4(Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->lambda$onViewCreated$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x173

    return p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 66
    move-object p0, p2

    check-cast p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public onStop()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/settings/core/InstrumentedPreferenceFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x173

    iget-object v3, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    .line 81
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04152d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0201d0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->updateGlifPreferenceLayout(Landroid/content/Context;Lcom/google/android/setupdesign/GlifPreferenceLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 51
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;)V

    const v1, 0x7f0408c8

    invoke-static {p2, p1, v1, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->setPrimaryButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterBarMixin;ILjava/lang/Runnable;)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleServiceSwitchPreference:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/ToggleScreenReaderPreferenceFragmentForSetupWizard;->mToggleSwitchWasInitiallyChecked:Z

    .line 58
    iget-object p0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mTopIntroPreference:Lcom/android/settingslib/widget/TopIntroPreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
