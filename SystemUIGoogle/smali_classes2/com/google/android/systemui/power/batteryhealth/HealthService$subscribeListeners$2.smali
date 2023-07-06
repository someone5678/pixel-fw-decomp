.class public final Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;
.super Ljava/lang/Object;
.source "HealthService.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;

    iget v1, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v2, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_9

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService;

    .line 4
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "HealthService"

    if-eqz v2, :cond_8

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notify data update for key: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "perf_index"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 7
    :cond_4
    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$2;-><init>(Lkotlin/Pair;)V

    iput v5, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    invoke-static {p0, p2, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :sswitch_1
    const-string v2, "health_status"

    .line 8
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$4;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$4;-><init>(Lkotlin/Pair;)V

    iput v3, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    invoke-static {p0, p2, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :sswitch_2
    const-string v2, "health_index"

    .line 10
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 11
    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$1;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$1;-><init>(Lkotlin/Pair;)V

    iput v6, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    invoke-static {p0, p2, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :sswitch_3
    const-string v2, "capacity_index"

    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$3;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$1$3;-><init>(Lkotlin/Pair;)V

    iput v4, v0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    invoke-static {p0, p2, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthService;->access$notifyListeners(Lcom/google/android/systemui/power/batteryhealth/HealthService;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_7
    :goto_2
    const-string p0, "Unknown prefs key"

    .line 14
    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 15
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Key: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not from prefs"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    :cond_9
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7bcb52f3 -> :sswitch_3
        0x32c0592f -> :sswitch_2
        0x36aeab35 -> :sswitch_1
        0x5d3a6bfc -> :sswitch_0
    .end sparse-switch
.end method
