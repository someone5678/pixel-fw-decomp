.class public abstract Lcom/android/vending/setup/IPlaySetupServiceV2$Stub;
.super Landroid/os/Binder;
.source "IPlaySetupServiceV2.java"

# interfaces
.implements Lcom/android/vending/setup/IPlaySetupServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/setup/IPlaySetupServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/setup/IPlaySetupServiceV2$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/vending/setup/IPlaySetupServiceV2;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.vending.setup.IPlaySetupServiceV2"

    .line 424
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    instance-of v1, v0, Lcom/android/vending/setup/IPlaySetupServiceV2;

    if-eqz v1, :cond_1

    .line 426
    check-cast v0, Lcom/android/vending/setup/IPlaySetupServiceV2;

    return-object v0

    .line 428
    :cond_1
    new-instance v0, Lcom/android/vending/setup/IPlaySetupServiceV2$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/vending/setup/IPlaySetupServiceV2$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
