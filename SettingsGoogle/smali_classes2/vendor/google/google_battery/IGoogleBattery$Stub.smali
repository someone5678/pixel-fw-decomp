.class public abstract Lvendor/google/google_battery/IGoogleBattery$Stub;
.super Landroid/os/Binder;
.source "IGoogleBattery.java"

# interfaces
.implements Lvendor/google/google_battery/IGoogleBattery;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/google/google_battery/IGoogleBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lvendor/google/google_battery/IGoogleBattery;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_0
    sget-object v0, Lvendor/google/google_battery/IGoogleBattery;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    instance-of v1, v0, Lvendor/google/google_battery/IGoogleBattery;

    if-eqz v1, :cond_1

    .line 248
    check-cast v0, Lvendor/google/google_battery/IGoogleBattery;

    return-object v0

    .line 250
    :cond_1
    new-instance v0, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/google/google_battery/IGoogleBattery$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
