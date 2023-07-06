.class public interface abstract Lcom/google/android/systemui/power/batteryhealth/IHealthListener;
.super Ljava/lang/Object;
.source "IHealthListener.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract onCapacityIndex(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHealthIndex(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHealthStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPerformanceIndex(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
