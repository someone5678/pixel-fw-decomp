.class public interface abstract Lcom/android/systemui/keyguard/data/BouncerViewDelegate;
.super Ljava/lang/Object;
.source "BouncerView.kt"


# virtual methods
.method public abstract dispatchBackKeyEventPreIme()Z
.end method

.method public abstract getBackCallback()Lcom/android/keyguard/KeyguardSecurityContainer$2;
.end method

.method public abstract interceptMediaKey(Landroid/view/KeyEvent;)Z
.end method

.method public abstract isFullScreenBouncer()Z
.end method

.method public abstract resume()V
.end method

.method public abstract setDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
.end method

.method public abstract shouldDismissOnMenuPressed()Z
.end method

.method public abstract showNextSecurityScreenOrFinish()Z
.end method

.method public abstract showPromptReason(I)V
.end method

.method public abstract willDismissWithActions()Z
.end method

.method public abstract willRunDismissFromKeyguard()Z
.end method
