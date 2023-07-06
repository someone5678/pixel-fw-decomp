.class public interface abstract Lcom/android/systemui/keyguard/data/repository/BiometricSettingsRepository;
.super Ljava/lang/Object;
.source "BiometricSettingsRepository.kt"


# virtual methods
.method public abstract isFingerprintEnabledByDevicePolicy()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isFingerprintEnrolled()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract isStrongBiometricAllowed()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method
