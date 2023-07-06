.class public interface abstract Lcom/google/android/systemui/communal/dock/setup/data/DockSetupRepository;
.super Ljava/lang/Object;
.source "DockSetupRepository.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/communal/dock/setup/data/DockSetupRepository$SetupType;
    }
.end annotation


# virtual methods
.method public abstract getPauseAppUpdates()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract getSetupType()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract getShowNotification()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method
