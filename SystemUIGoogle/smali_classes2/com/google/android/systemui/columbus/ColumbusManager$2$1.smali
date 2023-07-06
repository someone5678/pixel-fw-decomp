.class public final Lcom/google/android/systemui/columbus/ColumbusManager$2$1;
.super Ljava/lang/Object;
.source "ColumbusManager.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusManager$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nColumbusManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ColumbusManager.kt\ncom/google/android/systemui/columbus/ColumbusManager$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1851#2,2:135\n*S KotlinDebug\n*F\n+ 1 ColumbusManager.kt\ncom/google/android/systemui/columbus/ColumbusManager$2$1\n*L\n99#1:135,2\n*E\n"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/ColumbusManager$2$1;->emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor$GestureDetectionEvent;",
            "+",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;

    iget v1, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;-><init>(Lcom/google/android/systemui/columbus/ColumbusManager$2$1;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v2, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor$GestureDetectionEvent;

    iget-object p0, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/sensors/GestureSensor$GestureDetectionEvent;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/actions/Action;

    .line 3
    iget v2, p2, Lcom/google/android/systemui/columbus/sensors/GestureSensor$GestureDetectionEvent;->gesture:I

    if-eqz v2, :cond_3

    .line 4
    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager;

    .line 5
    iget-object v2, v2, Lcom/google/android/systemui/columbus/ColumbusManager;->wakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v4, "Columbus/Manager"

    .line 6
    invoke-interface {v2, v4}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    .line 7
    :cond_3
    iput-object p0, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->label:I

    .line 8
    iget-object p1, p1, Lcom/google/android/systemui/columbus/actions/Action;->gestureDetectedUnfiltered:Lkotlinx/coroutines/flow/SharedFlowImpl;

    .line 9
    invoke-virtual {p1, p2, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-ne p1, v1, :cond_5

    return-object v1

    .line 10
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager;

    .line 11
    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusManager;->effects:Ljava/util/Set;

    .line 12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;

    .line 13
    invoke-interface {p1}, Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;->onGestureDetected()V

    goto :goto_3

    .line 14
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
