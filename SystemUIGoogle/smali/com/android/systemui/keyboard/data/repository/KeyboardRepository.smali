.class public interface abstract Lcom/android/systemui/keyboard/data/repository/KeyboardRepository;
.super Ljava/lang/Object;
.source "KeyboardRepository.kt"


# virtual methods
.method public abstract getBacklight()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/keyboard/shared/model/BacklightModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeyboardConnected()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
