.class Lcom/android/vending/setup/IPlaySetupServiceV2$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPlaySetupServiceV2.java"

# interfaces
.implements Lcom/android/vending/setup/IPlaySetupServiceV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/setup/IPlaySetupServiceV2$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 622
    iput-object p1, p0, Lcom/android/vending/setup/IPlaySetupServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/android/vending/setup/IPlaySetupServiceV2$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
