.class public interface abstract Lcom/android/wm/shell/desktopmode/IDesktopMode;
.super Ljava/lang/Object;
.source "IDesktopMode.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/desktopmode/IDesktopMode$Stub;
    }
.end annotation


# virtual methods
.method public abstract getVisibleTaskCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showDesktopApps()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
