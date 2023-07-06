.class public abstract Lcom/google/android/systemui/columbus/actions/Action;
.super Ljava/lang/Object;
.source "Action.kt"


# instance fields
.field public final gestureDetectedUnfiltered:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract isAvailable()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Action"

    return-object p0
.end method
