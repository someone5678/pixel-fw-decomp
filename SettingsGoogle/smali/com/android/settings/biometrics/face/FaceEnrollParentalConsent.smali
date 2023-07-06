.class public Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;
.super Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.source "FaceEnrollParentalConsent.java"


# static fields
.field public static final CONSENT_STRING_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    return-void

    :array_0
    .array-data 4
        0x7f041244
        0x7f041261
        0x7f04126b
        0x7f04126d
        0x7f04126a
        0x7f041267
        0x7f041264
        0x7f041263
        0x7f041262
        0x7f04126c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;-><init>()V

    return-void
.end method

.method private onConsentResult(Z)V
    .locals 3

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "sensor_modality"

    const/16 v2, 0x8

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 82
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected generateChallengeOnCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    const p0, 0x7f041244

    return p0
.end method

.method protected getHowMessage()I
    .locals 0

    const p0, 0x7f041267

    return p0
.end method

.method protected getInControlMessage()I
    .locals 0

    const p0, 0x7f041263

    return p0
.end method

.method protected getInControlTitle()I
    .locals 0

    const p0, 0x7f041264

    return p0
.end method

.method protected getInfoMessageGlasses()I
    .locals 0

    const p0, 0x7f04126b

    return p0
.end method

.method protected getInfoMessageLooking()I
    .locals 0

    const p0, 0x7f04126d

    return p0
.end method

.method protected getInfoMessageRequireEyes()I
    .locals 0

    const p0, 0x7f04126a

    return p0
.end method

.method protected getLessSecureMessage()I
    .locals 0

    const p0, 0x7f04126c

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x765

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f041262

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onSetOrConfirmCredentials(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method
