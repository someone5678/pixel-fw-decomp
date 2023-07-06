.class public Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;
.super Ljava/lang/Object;
.source "GooglePlaySetupHelperV2.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceConnectionListener;,
        Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceDisconnectedException;
    }
.end annotation


# static fields
.field private static final GOOGLE_PLAY_SETUP_SERVICE_INTENT:Landroid/content/Intent;

.field private static final LOG:Lcom/google/android/setupwizard/common/util/Logger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOutstandingOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/CompletableFuture<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mPlaySetupService:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/vending/setup/IPlaySetupServiceV2;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnectionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$tRYsvYfGrVmSQovXOBLkrcZD2T0(Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->bindPlayService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG()Lcom/google/android/setupwizard/common/util/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/android/setupwizard/common/util/Logger;

    const-class v1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;

    invoke-direct {v0, v1}, Lcom/google/android/setupwizard/common/util/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.vending"

    .line 67
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.vending.setup.IPlaySetupServiceV2.BIND"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->GOOGLE_PLAY_SETUP_SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mPlaySetupService:Ljava/util/concurrent/CompletableFuture;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mOutstandingOperations:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mServiceConnectionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mContext:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->bindPlayService()V

    return-void
.end method

.method private bindPlayService()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->GOOGLE_PLAY_SETUP_SERVICE_INTENT:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    const-string v1, "bindService failed"

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/common/util/Logger;->e(Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mPlaySetupService:Ljava/util/concurrent/CompletableFuture;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    .line 161
    sget-object p1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    invoke-virtual {p1}, Lcom/google/android/setupwizard/common/util/Logger;->isD()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Service binding died. Scheduling rebind"

    invoke-virtual {p1, v0}, Lcom/google/android/setupwizard/common/util/Logger;->d(Ljava/lang/String;)V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 165
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 135
    sget-object p1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    invoke-virtual {p1}, Lcom/google/android/setupwizard/common/util/Logger;->isD()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Service connected"

    invoke-virtual {p1, v0}, Lcom/google/android/setupwizard/common/util/Logger;->d(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mPlaySetupService:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p2}, Lcom/android/vending/setup/IPlaySetupServiceV2$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/setup/IPlaySetupServiceV2;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 137
    iget-object p0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mServiceConnectionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceConnectionListener;

    .line 138
    invoke-interface {p1}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceConnectionListener;->onServiceConnected()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 144
    sget-object p1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    invoke-virtual {p1}, Lcom/google/android/setupwizard/common/util/Logger;->isD()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Service disconnected"

    invoke-virtual {p1, v0}, Lcom/google/android/setupwizard/common/util/Logger;->d(Ljava/lang/String;)V

    .line 145
    :cond_0
    new-instance p1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mPlaySetupService:Ljava/util/concurrent/CompletableFuture;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mOutstandingOperations:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 151
    new-instance v1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceDisconnectedException;

    invoke-direct {v1}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceDisconnectedException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    goto :goto_0

    .line 154
    :cond_1
    iget-object p0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->mServiceConnectionListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceConnectionListener;

    .line 155
    invoke-interface {p1}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$ServiceConnectionListener;->onServiceDisconnected()V

    goto :goto_1

    :cond_2
    return-void
.end method
