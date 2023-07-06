.class final Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ColumbusManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/ColumbusManager$2$1;->emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.ColumbusManager$2$1"
    f = "ColumbusManager.kt"
    l = {
        0x62
    }
    m = "emit"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/ColumbusManager$2$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/systemui/columbus/ColumbusManager$2$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/ColumbusManager$2$1;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/ColumbusManager$2$1<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager$2$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->label:I

    iget-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusManager$2$1$emit$1;->this$0:Lcom/google/android/systemui/columbus/ColumbusManager$2$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/google/android/systemui/columbus/ColumbusManager$2$1;->emit(Lkotlin/Pair;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
