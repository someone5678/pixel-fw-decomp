.class final Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ChooserSelector.kt"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.ChooserSelector"
    f = "ChooserSelector.kt"
    l = {
        0x32
    }
    m = "updateUnbundledChooserEnabled"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/ChooserSelector;


# direct methods
.method public constructor <init>(Lcom/android/systemui/ChooserSelector;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/ChooserSelector;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;->this$0:Lcom/android/systemui/ChooserSelector;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/ChooserSelector$updateUnbundledChooserEnabled$1;->this$0:Lcom/android/systemui/ChooserSelector;

    invoke-static {p1, p0}, Lcom/android/systemui/ChooserSelector;->access$updateUnbundledChooserEnabled(Lcom/android/systemui/ChooserSelector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
