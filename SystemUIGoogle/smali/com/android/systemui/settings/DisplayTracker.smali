.class public interface abstract Lcom/android/systemui/settings/DisplayTracker;
.super Ljava/lang/Object;
.source "DisplayTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/DisplayTracker$Callback;
    }
.end annotation


# virtual methods
.method public abstract addBrightnessChangeCallback(Lcom/android/systemui/settings/brightness/BrightnessController$1;Landroid/os/HandlerExecutor;)V
.end method

.method public abstract addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V
.end method

.method public abstract getAllDisplays()[Landroid/view/Display;
.end method

.method public abstract getDefaultDisplayId()V
.end method

.method public abstract removeCallback(Lcom/android/systemui/settings/brightness/BrightnessController$1;)V
.end method
