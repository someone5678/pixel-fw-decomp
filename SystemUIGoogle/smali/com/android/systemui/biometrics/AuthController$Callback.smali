.class public interface abstract Lcom/android/systemui/biometrics/AuthController$Callback;
.super Ljava/lang/Object;
.source "AuthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onAllAuthenticatorsRegistered()V
    .locals 0

    return-void
.end method

.method public onBiometricPromptDismissed()V
    .locals 0

    return-void
.end method

.method public onBiometricPromptShown()V
    .locals 0

    return-void
.end method

.method public onEnrollmentsChanged()V
    .locals 0

    return-void
.end method

.method public onEnrollmentsChanged(Lcom/android/systemui/keyguard/data/repository/BiometricType;IZ)V
    .locals 0

    return-void
.end method

.method public onFaceSensorLocationChanged()V
    .locals 0

    return-void
.end method

.method public onFingerprintLocationChanged()V
    .locals 0

    return-void
.end method

.method public onUdfpsLocationChanged()V
    .locals 0

    return-void
.end method
