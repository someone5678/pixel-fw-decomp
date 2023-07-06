.class final Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "HealthService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.power.batteryhealth.HealthService$subscribeListeners$2"
    f = "HealthService.kt"
    l = {
        0x6a,
        0x6d,
        0x70,
        0x73
    }
    m = "emit"
.end annotation


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->label:I

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2$emit$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/systemui/power/batteryhealth/HealthService$subscribeListeners$2;->emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
