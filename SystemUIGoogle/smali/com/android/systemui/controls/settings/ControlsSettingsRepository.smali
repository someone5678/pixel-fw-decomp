.class public interface abstract Lcom/android/systemui/controls/settings/ControlsSettingsRepository;
.super Ljava/lang/Object;
.source "ControlsSettingsRepository.kt"


# virtual methods
.method public abstract getAllowActionOnTrivialControlsInLockscreen()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract getCanShowControlsInLockscreen()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
