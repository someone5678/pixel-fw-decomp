.class public interface abstract Lcom/android/wm/shell/pip/IPipAnimationListener;
.super Ljava/lang/Object;
.source "IPipAnimationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onExpandPip()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPipAnimationStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPipResourceDimensionsChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
