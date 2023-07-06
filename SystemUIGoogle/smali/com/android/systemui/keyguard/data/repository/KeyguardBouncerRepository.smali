.class public interface abstract Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;
.super Ljava/lang/Object;
.source "KeyguardBouncerRepository.kt"


# virtual methods
.method public abstract getAlternateBouncerUIAvailable()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAlternateBouncerVisible()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBouncerErrorMessage()Ljava/lang/CharSequence;
.end method

.method public abstract getBouncerPromptReason()I
.end method

.method public abstract getKeyguardAuthenticated()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract getKeyguardPosition()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastAlternateBouncerVisibleTime()J
.end method

.method public abstract getPanelExpansionAmount()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryBouncerScrimmed()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryBouncerShow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryBouncerShowingSoon()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryBouncerStartingDisappearAnimation()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryBouncerStartingToHide()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResourceUpdateRequests()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getShowMessage()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSideFpsShowing()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBackButtonEnabled()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setAlternateBouncerUIAvailable(Z)V
.end method

.method public abstract setAlternateVisible(Z)V
.end method

.method public abstract setIsBackButtonEnabled(Z)V
.end method

.method public abstract setKeyguardAuthenticated(Ljava/lang/Boolean;)V
.end method

.method public abstract setKeyguardPosition(F)V
.end method

.method public abstract setPanelExpansion(F)V
.end method

.method public abstract setPrimaryScrimmed(Z)V
.end method

.method public abstract setPrimaryShow(Z)V
.end method

.method public abstract setPrimaryShowingSoon(Z)V
.end method

.method public abstract setPrimaryStartDisappearAnimation(Ljava/lang/Runnable;)V
.end method

.method public abstract setPrimaryStartingToHide(Z)V
.end method

.method public abstract setResourceUpdateRequests(Z)V
.end method

.method public abstract setShowMessage(Lcom/android/systemui/keyguard/shared/model/BouncerShowMessageModel;)V
.end method

.method public abstract setSideFpsShowing(Z)V
.end method
