.class public Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;
.super Lcom/android/settings/accessibility/TextReadingPreferenceFragment;
.source "TextReadingPreferenceFragmentForSetupWizard.java"


# direct methods
.method public static synthetic $r8$lambda$DyI3kOmxkMlhpCI1iNdHHr_rDnU(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;->lambda$onViewCreated$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$bpzfPJFRsAfVq3a2I1JZJX2nhZs(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;->lambda$onViewCreated$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0()V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setResult(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method private synthetic lambda$onViewCreated$1()V
    .locals 1

    const/16 v0, 0x3f1

    .line 63
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x77b

    return p0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 70
    move-object p0, p2

    check-cast p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 71
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 46
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 48
    check-cast p1, Lcom/google/android/setupdesign/GlifPreferenceLayout;

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f04016f

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010433

    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->updateGlifPreferenceLayout(Landroid/content/Context;Lcom/google/android/setupdesign/GlifPreferenceLayout;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 56
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;)V

    const v1, 0x7f0408c8

    invoke-static {p2, p1, v1, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->setPrimaryButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterBarMixin;ILjava/lang/Runnable;)V

    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragmentForSetupWizard;)V

    const p0, 0x7f040173

    invoke-static {p2, p1, p0, v0}, Lcom/android/settings/accessibility/AccessibilitySetupWizardUtils;->setSecondaryButton(Landroid/content/Context;Lcom/google/android/setupcompat/template/FooterBarMixin;ILjava/lang/Runnable;)V

    return-void
.end method
