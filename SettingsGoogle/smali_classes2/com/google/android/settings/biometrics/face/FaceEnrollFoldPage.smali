.class public Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollFoldPage.java"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;


# instance fields
.field private mDevicePostureState:I

.field private mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

.field private mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

.field private mKeepScreenOn:Z

.field private mOnBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

.field private mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

.field private mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0ilTdXFjsOvtXuE62skhLJO6AcM(Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onBackInvoked()V

    return-void
.end method

.method public static synthetic $r8$lambda$H9GGcQ-OlMVzohozDUU_TWJnuIE(Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W9Of9O1OtfLnByAZC6SjhNydsZc(Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method

.method private onBackInvoked()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 183
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onRemoveCallbacksAndFinish()V

    return-void
.end method

.method private onFinishPostureGuidance()V
    .locals 1

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 171
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 172
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onRemoveCallbacksAndFinish()V

    return-void
.end method

.method private onRemoveCallbacksAndFinish()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private onSkipButtonClick(Landroid/view/View;)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    .line 188
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onRemoveCallbacksAndFinish()V

    return-void
.end method

.method private setKeepScreenOn(Z)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mKeepScreenOn:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x80

    if-eqz p1, :cond_1

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mKeepScreenOn:Z

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mKeepScreenOn:Z

    :goto_0
    return-void
.end method

.method private setupPostureChangeListener()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    .line 156
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 119
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 120
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "posture_state"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mDevicePostureState:I

    .line 71
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 72
    new-instance v0, Landroidx/window/embedding/ActivityFilter;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {p0}, Landroidx/window/embedding/RuleController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/RuleController;

    move-result-object v0

    new-instance v1, Landroidx/window/embedding/ActivityRule$Builder;

    invoke-direct {v1, p1}, Landroidx/window/embedding/ActivityRule$Builder;-><init>(Ljava/util/Set;)V

    const/4 p1, 0x1

    .line 75
    invoke-virtual {v1, p1}, Landroidx/window/embedding/ActivityRule$Builder;->setAlwaysExpand(Z)Landroidx/window/embedding/ActivityRule$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/window/embedding/ActivityRule$Builder;->build()Landroidx/window/embedding/ActivityRule;

    move-result-object p1

    .line 74
    invoke-virtual {v0, p1}, Landroidx/window/embedding/RuleController;->addRule(Landroidx/window/embedding/EmbeddingRule;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 78
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    sget p1, Lcom/android/settings/R$layout;->face_enroll_fold_page:I

    .line 79
    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$integer;->config_face_enroll_supported_posture:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 81
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->setDevicePosturesAllowEnroll(I)V

    sget p1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifLayout;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v0, Lcom/android/settings/R$string;->face_enrolling_close_to_continue:I

    .line 85
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 86
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    sget v0, Lcom/android/settings/R$string;->face_enrolling_close_to_continue_description:I

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1, v0}, Lcom/android/settingslib/widget/LottieColorUtils;->applyDynamicColors(Landroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 89
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    sget v0, Lcom/android/settings/R$raw;->face_posture_guidance_lottie:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 90
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mIllustrationLottie:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 94
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 95
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->face_enrolling_do_it_later:I

    .line 97
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;)V

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v2, 0x7

    .line 99
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$sytle;->SudGlifButton_Secondary:I

    .line 100
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 95
    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 104
    iget-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mOnBackInvokedDispatcher:Landroid/window/OnBackInvokedDispatcher;

    if-eqz p1, :cond_1

    .line 106
    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;)V

    invoke-interface {p1, v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_1
    return-void
.end method

.method public onFoldUpdated(Z)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 148
    :goto_0
    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mDevicePostureState:I

    .line 149
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->isPostureAllowEnrollment(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onFinishPostureGuidance()V

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 194
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 195
    invoke-direct {p0, v0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->setKeepScreenOn(Z)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 113
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mDevicePostureState:I

    const-string v0, "posture_state"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 128
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mDevicePostureState:I

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->isPostureAllowEnrollment(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->onFinishPostureGuidance()V

    goto :goto_0

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->setupPostureChangeListener()V

    :goto_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 138
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p0}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->unregisterCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollFoldPage;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    :cond_0
    return-void
.end method
