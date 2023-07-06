.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "FingerprintEnrollParentalConsent.java"


# static fields
.field public static final CONSENT_STRING_RESOURCES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 40
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->CONSENT_STRING_RESOURCES:[I

    return-void

    :array_0
    .array-data 4
        0x7f04129f
        0x7f0412b3
        0x7f0412b9
        0x7f0412de
        0x7f0412df
        0x7f0412e0    # 1.755561E38f
        0x7f0412e1
        0x7f0412e2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method private onConsentResult(Z)V
    .locals 3

    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "sensor_modality"

    const/4 v2, 0x2

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
.method protected getFooterMessage2()I
    .locals 0

    const p0, 0x7f0412de

    return p0
.end method

.method protected getFooterMessage3()I
    .locals 0

    const p0, 0x7f0412df

    return p0
.end method

.method protected getFooterMessage4()I
    .locals 0

    const p0, 0x7f0412e0    # 1.755561E38f

    return p0
.end method

.method protected getFooterMessage5()I
    .locals 0

    const p0, 0x7f0412e1

    return p0
.end method

.method protected getFooterMessage6()I
    .locals 0

    const p0, 0x7f0412e2

    return p0
.end method

.method protected getFooterTitle1()I
    .locals 0

    const p0, 0x7f0412b9

    return p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    const p0, 0x7f04129f

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x764

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0412b3

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

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
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method
