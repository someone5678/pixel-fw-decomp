.class final Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ImageCaptureImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureTask$suspendImpl(Lcom/android/systemui/screenshot/ImageCaptureImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.screenshot.ImageCaptureImpl"
    f = "ImageCaptureImpl.kt"
    l = {
        0x38
    }
    m = "captureTask$suspendImpl"
.end annotation


# instance fields
.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/screenshot/ImageCaptureImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ImageCaptureImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/screenshot/ImageCaptureImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->this$0:Lcom/android/systemui/screenshot/ImageCaptureImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/screenshot/ImageCaptureImpl$captureTask$1;->this$0:Lcom/android/systemui/screenshot/ImageCaptureImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/android/systemui/screenshot/ImageCaptureImpl;->captureTask$suspendImpl(Lcom/android/systemui/screenshot/ImageCaptureImpl;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
