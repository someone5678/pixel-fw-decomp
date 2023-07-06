.class public interface abstract Lcom/android/systemui/qs/FgsManagerController;
.super Ljava/lang/Object;
.source "FgsManagerController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/FgsManagerController$OnNumberOfPackagesChangedListener;,
        Lcom/android/systemui/qs/FgsManagerController$OnDialogDismissedListener;
    }
.end annotation


# virtual methods
.method public abstract addOnDialogDismissedListener(Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$hasNewChanges$1$dialogDismissedEvents$1$listener$1;)V
.end method

.method public abstract addOnNumberOfPackagesChangedListener(Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$foregroundServicesCount$1$1$listener$1;)V
.end method

.method public abstract getNewChangesSinceDialogWasDismissed()Z
.end method

.method public abstract getNumRunningPackages()I
.end method

.method public abstract getShowFooterDot()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract init()V
.end method

.method public abstract isAvailable()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
.end method

.method public abstract removeOnDialogDismissedListener(Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$hasNewChanges$1$dialogDismissedEvents$1$listener$1;)V
.end method

.method public abstract removeOnNumberOfPackagesChangedListener(Lcom/android/systemui/qs/footer/data/repository/ForegroundServicesRepositoryImpl$foregroundServicesCount$1$1$listener$1;)V
.end method

.method public abstract showDialog(Lcom/android/systemui/animation/Expandable;)V
.end method

.method public abstract visibleButtonsCount()I
.end method
