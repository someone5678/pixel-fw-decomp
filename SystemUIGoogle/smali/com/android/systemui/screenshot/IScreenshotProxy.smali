.class public interface abstract Lcom/android/systemui/screenshot/IScreenshotProxy;
.super Ljava/lang/Object;
.source "IScreenshotProxy.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/IScreenshotProxy$Stub;
    }
.end annotation


# virtual methods
.method public abstract dismissKeyguard(Lcom/android/systemui/screenshot/IOnDoneCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNotificationShadeExpanded()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
