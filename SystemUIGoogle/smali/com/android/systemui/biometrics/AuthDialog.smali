.class public interface abstract Lcom/android/systemui/biometrics/AuthDialog;
.super Ljava/lang/Object;
.source "AuthDialog.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;
    }
.end annotation


# virtual methods
.method public abstract getRequestId()J
.end method

.method public abstract onAuthenticationFailed(ILjava/lang/String;)V
.end method

.method public abstract onOrientationChanged()V
.end method

.method public abstract onPointerDown()V
.end method
