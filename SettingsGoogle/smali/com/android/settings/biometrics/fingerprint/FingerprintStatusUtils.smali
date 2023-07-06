.class public Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;
.super Ljava/lang/Object;
.source "FingerprintStatusUtils.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 41
    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    return-void
.end method


# virtual methods
.method public getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method

.method public getSettingsClassName()Ljava/lang/String;
    .locals 0

    .line 81
    const-class p0, Lcom/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 5

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->hasEnrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 68
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f13004a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 68
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    const v0, 0x7f0412cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasEnrolled()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isMultipleBiometricsSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
