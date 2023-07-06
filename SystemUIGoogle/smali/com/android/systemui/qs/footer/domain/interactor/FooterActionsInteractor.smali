.class public interface abstract Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractor;
.super Ljava/lang/Object;
.source "FooterActionsInteractor.kt"


# virtual methods
.method public abstract getDeviceMonitoringDialogRequests()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getForegroundServicesCount()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHasNewForegroundServices()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSecurityButtonConfig()Lcom/android/systemui/qs/footer/domain/interactor/FooterActionsInteractorImpl$special$$inlined$map$1;
.end method

.method public abstract getUserSwitcherStatus()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/android/systemui/qs/footer/data/model/UserSwitcherStatusModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showDeviceMonitoringDialog(Landroid/content/Context;Lcom/android/systemui/animation/Expandable;)V
.end method

.method public abstract showForegroundServicesDialog(Lcom/android/systemui/animation/Expandable;)V
.end method

.method public abstract showPowerMenuDialog(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Lcom/android/systemui/animation/Expandable;)V
.end method

.method public abstract showSettings(Lcom/android/systemui/animation/Expandable;)V
.end method

.method public abstract showUserSwitcher(Lcom/android/systemui/animation/Expandable;)V
.end method
