.class public interface abstract Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;
.super Ljava/lang/Object;
.source "KeyguardTransitionRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getTransitions()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/keyguard/shared/model/TransitionStep;",
            ">;"
        }
    .end annotation
.end method

.method public abstract startTransition(Lcom/android/systemui/keyguard/shared/model/TransitionInfo;Z)Ljava/util/UUID;
.end method

.method public abstract transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;
.end method

.method public abstract updateTransition(Ljava/util/UUID;FLcom/android/systemui/keyguard/shared/model/TransitionState;)V
.end method
