.class public interface abstract Lcom/android/systemui/shade/ShadeController;
.super Ljava/lang/Object;
.source "ShadeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shade/ShadeController$ShadeVisibilityListener;
    }
.end annotation


# virtual methods
.method public abstract addPostCollapseAction(Ljava/lang/Runnable;)V
.end method

.method public abstract animateCollapsePanels(FIZZ)V
.end method

.method public abstract animateCollapseShade()V
.end method

.method public abstract animateCollapseShade(I)V
.end method

.method public abstract animateCollapseShadeDelayed()V
.end method

.method public abstract animateCollapseShadeForced()V
.end method

.method public abstract closeShadeIfOpen()V
.end method

.method public abstract collapseShade(Z)V
.end method

.method public abstract collapseShade()Z
.end method

.method public abstract instantCollapseShade()V
.end method

.method public abstract instantExpandShade()V
.end method

.method public abstract isExpandedVisible()Z
.end method

.method public abstract isShadeFullyOpen()Z
.end method

.method public abstract makeExpandedInvisible()V
.end method

.method public abstract makeExpandedVisible(Z)V
.end method

.method public abstract onClosingFinished()V
.end method

.method public abstract onStatusBarTouch(Landroid/view/MotionEvent;)V
.end method

.method public abstract postOnShadeExpanded(Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;)V
.end method

.method public abstract runPostCollapseRunnables()V
.end method

.method public abstract setNotificationPanelViewController(Lcom/android/systemui/shade/NotificationPanelViewController;)V
.end method

.method public abstract setNotificationPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;)V
.end method

.method public abstract setNotificationShadeWindowViewController(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V
.end method

.method public abstract setVisibilityListener(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;)V
.end method
