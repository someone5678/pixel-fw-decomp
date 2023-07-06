.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# instance fields
.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public static synthetic $r8$lambda$6-DEbJnXIGTF05sfz2WtdMeU9Uk(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$getDescriptionDisabledByAdmin$2()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Fg2g0g3c2QrcxhX68ODGm4nW38Y(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$onCreate$0(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xe4XdWHSsasiNMxKbET9vDhZMIk(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$listenFoldEventForPostureGuidance$1(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method private synthetic lambda$getDescriptionDisabledByAdmin$2()Ljava/lang/String;
    .locals 1

    const v0, 0x7f041275

    .line 404
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$listenFoldEventForPostureGuidance$1(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 291
    :goto_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    .line 292
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->shouldShowPostureGuidance(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    if-nez p1, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchPostureGuidance()Z

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$0(IIJ)V
    .locals 0

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p0, "FaceEnrollIntroduction"

    const-string p1, "activity finished before challenge callback launched."

    .line 185
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-virtual {p0, p3, p4}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->requestGatekeeperHat(J)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 191
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 192
    iput-wide p3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 193
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V
    :try_end_0
    .catch Lcom/android/settings/biometrics/BiometricUtils$GatekeeperCredentialNotMatchException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "gk_pw_handle"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    :goto_0
    return-void
.end method

.method private launchFaceSettingsActivity()V
    .locals 5

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/Settings$FaceSettingsInternalActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 221
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    const/4 v1, 0x1

    const-string v2, "from_settings_summary"

    .line 224
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v2, -0x1

    const-string v4, "challenge"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 226
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    const-string/jumbo v3, "sensor_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private listenFoldEventForPostureGuidance()V
    .locals 2

    .line 275
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result v0

    const-string v1, "FaceEnrollIntroduction"

    if-eqz v0, :cond_0

    const-string p0, "Device has enrolled face, do not show posture guidance"

    .line 276
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getPostureGuidanceIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "Device do not support posture guidance"

    .line 281
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 285
    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->setDevicePosturesAllowEnroll(I)V

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-nez v0, :cond_2

    .line 289
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-nez v0, :cond_3

    .line 300
    new-instance v0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    .line 301
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    invoke-virtual {p0}, Landroid/app/Activity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V

    :cond_3
    return-void
.end method

.method private maxFacesEnrolled()Z
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 431
    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 432
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0e006b

    .line 433
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected static setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    .line 560
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "skip_pending_enroll"

    .line 562
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 444
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0409aa

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const p0, 0x7f0409ab

    return p0
.end method

.method protected generateChallengeOnCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getAgreeButtonTextRes()I
    .locals 0

    const p0, 0x7f0412b1

    return p0
.end method

.method protected getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 2

    .line 455
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 457
    invoke-interface {p1, p0, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    return-void

    .line 460
    :cond_0
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    const p0, 0x7f04128d

    return p0
.end method

.method protected getDescriptionDisabledByAdmin()Ljava/lang/String;
    .locals 2

    .line 401
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 402
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    const-string p0, "Settings.FACE_UNLOCK_DISABLED"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDevicePostureState()I
    .locals 0

    .line 251
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    return p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    .line 470
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    const v0, 0x7f0d0246

    .line 425
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_face"

    return-object p0
.end method

.method protected getFaceManager()Landroid/hardware/face/FaceManager;
    .locals 0

    .line 233
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p0

    return-object p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    const p0, 0x7f041278

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    const p0, 0x7f041279

    return p0
.end method

.method protected getHowMessage()I
    .locals 0

    const p0, 0x7f041268

    return p0
.end method

.method protected getInControlMessage()I
    .locals 0

    const p0, 0x7f041265

    return p0
.end method

.method protected getInControlTitle()I
    .locals 0

    const p0, 0x7f041266

    return p0
.end method

.method protected getInfoMessageGlasses()I
    .locals 0

    const p0, 0x7f04126f

    return p0
.end method

.method protected getInfoMessageLooking()I
    .locals 0

    const p0, 0x7f041271

    return p0
.end method

.method protected getInfoMessageRequireEyes()I
    .locals 0

    const p0, 0x7f04126e

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    const p0, 0x7f0600eb

    return p0
.end method

.method protected getLessSecureMessage()I
    .locals 0

    const p0, 0x7f041270

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public getModality()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected getMoreButtonTextRes()I
    .locals 0

    const p0, 0x7f041276

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFoldCallback:Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    return-object p0
.end method

.method protected getPostureGuidanceIntent()Landroid/content/Intent;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mPostureGuidanceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method protected getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f04125f

    .line 522
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 523
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 524
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f14028b

    .line 525
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 528
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 535
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f041277

    .line 536
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 537
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 538
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f14028b

    .line 539
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 542
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 380
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x80

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_2

    .line 308
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    if-eqz p2, :cond_0

    if-ne p2, v0, :cond_1

    .line 310
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v2

    :goto_1
    if-eq p2, v0, :cond_6

    const/16 v0, 0xb

    if-eq p2, v0, :cond_6

    if-ne p2, v2, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :cond_6
    :goto_2
    if-eqz p3, :cond_7

    const-string v0, "finished_enrolling_face"

    .line 322
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_7
    if-nez p2, :cond_9

    if-nez v1, :cond_8

    .line 326
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->isPostureAllowEnrollment(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 327
    :cond_8
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_9
    if-eqz v3, :cond_a

    if-nez v2, :cond_b

    :cond_a
    if-eqz v1, :cond_c

    .line 334
    :cond_b
    invoke-static {p3}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 336
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 262
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 263
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getPostureCallback()Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mScreenSizeFoldProvider:Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getFaceManager()Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const-string v0, "FaceEnrollIntroduction"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "from_settings_summary"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "launch face settings"

    .line 122
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->launchFaceSettingsActivity()V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const p1, 0x7f0d02fb

    .line 136
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v2, 0x7f0d0302

    .line 137
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 138
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const p1, 0x7f0d0328

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f0d032a

    .line 143
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0d02ef

    .line 144
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0d0670

    .line 145
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0d03c0

    .line 146
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0d0329

    .line 147
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageGlasses()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageLooking()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInControlTitle()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getHowMessage()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInControlMessage()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getLessSecureMessage()I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(I)V

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f090014

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0d032f

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v2, 0x7f0d02ff

    .line 160
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 161
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 166
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f090015

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0d0330

    .line 167
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const v2, 0x7f0d0303

    .line 168
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f0d032b

    .line 169
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 170
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageRequireEyes()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->generateChallengeOnCreate()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 179
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 182
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance v2, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {p1, v1, v2}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    .line 203
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/hardware/SensorPrivacyManager;

    .line 204
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object p1

    const/4 v1, 0x2

    .line 207
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 208
    invoke-virtual {p1, v1, p0}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result p0

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraPrivacyEnabled : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x6

    const-string/jumbo v1, "skipped"

    .line 93
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x6

    const-string v1, "finished"

    .line 101
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onFinishedEnrolling(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 5

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "require_consent"

    const/4 v2, 0x0

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 501
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/4 v4, 0x2

    .line 502
    invoke-virtual {v1, v4, v3}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->isSensorBlocked(II)Z

    move-result v1

    .line 503
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 505
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    .line 507
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    if-nez p1, :cond_2

    .line 508
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/SensorPrivacyManager;

    .line 509
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorPrivacyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    .line 511
    :cond_2
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v4}, Landroid/hardware/SensorPrivacyManager;->showSensorUseDialog(I)V

    goto :goto_0

    .line 513
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x6

    const-string/jumbo v1, "skip"

    .line 85
    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 270
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 271
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->listenFoldEventForPostureGuidance()V

    return-void
.end method

.method protected requestGatekeeperHat(J)[B
    .locals 2

    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p0

    return-object p0
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/BiometricUtils;->isPostureGuidanceShowing(IZ)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
