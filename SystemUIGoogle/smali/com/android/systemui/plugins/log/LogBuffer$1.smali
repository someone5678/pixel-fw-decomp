.class final Lcom/android/systemui/plugins/log/LogBuffer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogBuffer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/plugins/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/plugins/log/LogcatEchoTracker;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/plugins/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/log/LogBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/plugins/log/LogBuffer$1;->this$0:Lcom/android/systemui/plugins/log/LogBuffer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/plugins/log/LogBuffer$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/plugins/log/LogBuffer$1;->this$0:Lcom/android/systemui/plugins/log/LogBuffer;

    invoke-static {v0}, Lcom/android/systemui/plugins/log/LogBuffer;->access$getEchoMessageQueue$p(Lcom/android/systemui/plugins/log/LogBuffer;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/log/LogMessage;

    invoke-static {v0, v1}, Lcom/android/systemui/plugins/log/LogBuffer;->access$echoToDesiredEndpoints(Lcom/android/systemui/plugins/log/LogBuffer;Lcom/android/systemui/plugins/log/LogMessage;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
