.class public Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RedactionInterstitial.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation


# instance fields
.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

.field private mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$-IsrmB8XHA-UTS7E0Y1ZloEREgs(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->lambda$onViewCreated$1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6bRcNe8y0E0kAx_c87p76dmrABE(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->onDoneButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f6dHl9XCtGryXspxZArPIZ8GNQY(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->lambda$onViewCreated$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 186
    invoke-static {v0, p2, p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 188
    invoke-virtual {p1, p0}, Lcom/android/settings/RestrictedRadioButton;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method

.method private synthetic lambda$onViewCreated$0()Ljava/lang/String;
    .locals 1

    const v0, 0x7f040c8a

    .line 135
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onViewCreated$1()Ljava/lang/String;
    .locals 1

    const v0, 0x7f040c88

    .line 140
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loadFromSettings()V
    .locals 7

    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v5, "lock_screen_show_notifications"

    .line 197
    invoke-static {v1, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 201
    iget v5, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v6, "lock_screen_allow_private_notifications"

    .line 199
    invoke-static {v4, v6, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const v0, 0x7f0d02d5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    .line 205
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v1}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_3

    const v0, 0x7f0d0572

    goto :goto_3

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    invoke-virtual {v1}, Lcom/android/settings/RestrictedRadioButton;->isDisabledByAdmin()Z

    move-result v1

    if-nez v1, :cond_4

    const v0, 0x7f0d04fa

    .line 212
    :cond_4
    :goto_3
    iget-object p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method private onDoneButtonClicked(Landroid/view/View;)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 162
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/RedactionInterstitial;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x4a

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    const v1, 0x7f0d0572

    if-ne p2, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const v2, 0x7f0d02d5

    if-eq p2, v2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 220
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 221
    iget v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v2, "lock_screen_allow_private_notifications"

    .line 220
    invoke-static {p2, v2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 223
    iget p0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    const-string v0, "lock_screen_show_notifications"

    .line 222
    invoke-static {p2, v0, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0601e5

    const/4 p3, 0x0

    .line 115
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 2

    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->checkNotificationFeaturesAndSetDisabled(Lcom/android/settings/RestrictedRadioButton;I)V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 120
    invoke-super {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 121
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    const v0, 0x7f0d04f1

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0d0572

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedRadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    const v0, 0x7f0d04fa

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedRadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    .line 130
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d05f6

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040c83

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mShowAllButton:Lcom/android/settings/RestrictedRadioButton;

    .line 134
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    const-string v3, "Settings.LOCK_SCREEN_SHOW_WORK_NOTIFICATION_CONTENT"

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;->mRedactSensitiveButton:Lcom/android/settings/RestrictedRadioButton;

    .line 138
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    new-instance v1, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    const-string v2, "Settings.LOCK_SCREEN_HIDE_WORK_NOTIFICATION_CONTENT"

    invoke-virtual {p2, v2, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0d02d5

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_0
    const p2, 0x7f0d0568

    .line 146
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    .line 147
    const-class p2, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 148
    new-instance p2, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0402a2

    .line 150
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/notification/RedactionInterstitial$RedactionInterstitialFragment;)V

    .line 151
    invoke-virtual {p2, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 p2, 0x5

    .line 152
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const p2, 0x7f14028b

    .line 153
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    return-void
.end method
