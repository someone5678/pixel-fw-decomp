.class public Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;
.super Landroidx/fragment/app/FragmentActivity;
.source "FaceEnrollConfirmation.java"


# instance fields
.field private mAmbientDisplayConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field private mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mNextClicked:Z

.field private mShowIllustration:Z

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public static synthetic $r8$lambda$DfDvMLrzZGnTURUZsXiwyUfbLPc(Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->onButtonPositive(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private canUseBiometricPrompt()Z
    .locals 3

    .line 238
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    const-string v0, "FaceEnrollConfirmation"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Unable to get face manager..."

    .line 240
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 244
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/face/FaceManager;->getSensorProperties()Ljava/util/List;

    move-result-object p0

    .line 245
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "FaceSensorProperties were empty"

    .line 246
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 249
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceSensorProperties;

    invoke-virtual {p0}, Landroid/hardware/face/FaceSensorProperties;->getSensorStrength()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1
.end method

.method private enablePickupGesture()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mAmbientDisplayConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FaceEnrollConfirmation"

    const-string v1, "Reset DOZE_PICK_UP_GESTURE null, pickupGestureEnabled is default ON."

    .line 172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    const-string v2, "doze_pulse_on_pick_up"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private enableTapScreenGesture()V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mAmbientDisplayConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FaceEnrollConfirmation"

    const-string v1, "Reset DOZE_TAP_SCREEN_GESTURE null, tapGestureEnabled is default ON."

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    const-string v2, "doze_tap_gesture"

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private getLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    const v0, 0x7f0d0257

    .line 138
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method private launchFaceSettings()V
    .locals 5

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FACE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 199
    iget v1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4020000

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 201
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sensor_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 203
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 205
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private onButtonPositive(Landroid/view/View;)V
    .locals 3

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mNextClicked:Z

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from_settings_summary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->launchFaceSettings()V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->revokeChallenge()V

    .line 150
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private revokeChallenge()V
    .locals 6

    .line 188
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    const-string v3, "sensor_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-wide/16 v3, 0x0

    const-string v5, "challenge"

    invoke-virtual {p0, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 190
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    :cond_0
    return-void
.end method

.method private setHeaderText(I)V
    .locals 2

    .line 156
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 158
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eq v1, p1, :cond_1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setNonIllustrationThemeColor()V
    .locals 3

    const v0, 0x7f0d02f9

    .line 266
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0d0300

    .line 267
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 270
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    .line 257
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const/4 v1, 0x0

    .line 259
    invoke-static {p0, v1}, Lcom/google/android/setupdesign/util/DynamicColorPalette;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 262
    :cond_0
    iget-object p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mIconColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 226
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Next biometric\'s result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FaceEnrollConfirmation"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    const v0, 0x7f140212

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 127
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/4 v1, 0x1

    const-string v2, "finished_enrolling_face"

    .line 215
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 68
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->applyTheme(Landroid/app/Activity;)V

    .line 69
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    .line 71
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mShowIllustration:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0600e6

    goto :goto_0

    :cond_0
    const v0, 0x7f0600e5

    .line 74
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    const-string v4, "finished_enrolling_face"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    .line 84
    :cond_1
    iget v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    :cond_2
    const p1, 0x7f041257

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->setHeaderText(I)V

    .line 88
    iget-boolean p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mShowIllustration:Z

    if-nez p1, :cond_3

    .line 89
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const v0, 0x7f04098d

    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    .line 91
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->setNonIllustrationThemeColor()V

    goto :goto_2

    .line 93
    :cond_3
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->canUseBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f041255

    goto :goto_1

    :cond_4
    const v0, 0x7f041256

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    .line 98
    :goto_2
    new-instance p1, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {p1, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mAmbientDisplayConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 99
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 101
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f041246

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;)V

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const v1, 0x7f14028b

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 109
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->enablePickupGesture()V

    .line 110
    invoke-direct {p0}, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->enableTapScreenGesture()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 132
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 134
    iget p0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 115
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/settings/biometrics/face/FaceEnrollConfirmation;->mNextClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 119
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
