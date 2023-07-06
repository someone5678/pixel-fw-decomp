.class public interface abstract Lcom/android/systemui/animation/DialogLaunchAnimator$Controller;
.super Ljava/lang/Object;
.source "DialogLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/DialogLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Controller"
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# virtual methods
.method public abstract createExitController()Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.end method

.method public abstract createLaunchController()Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController$createLaunchController$1;
.end method

.method public abstract getCuj()Lcom/android/systemui/animation/DialogCuj;
.end method

.method public abstract getSourceIdentity()Landroid/view/View;
.end method

.method public abstract getViewRoot()Landroid/view/ViewRootImpl;
.end method

.method public abstract jankConfigurationBuilder()Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;
.end method

.method public abstract onExitAnimationCancelled()V
.end method

.method public abstract shouldAnimateExit()Z
.end method

.method public abstract startDrawingInOverlayOf(Landroid/view/ViewGroup;)V
.end method

.method public abstract stopDrawingInOverlay()V
.end method
