.class final Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "CustomizationProvider.kt"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.CustomizationProvider"
    f = "CustomizationProvider.kt"
    l = {
        0x17a
    }
    m = "deleteSelection"
.end annotation


# instance fields
.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public L$3:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/CustomizationProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/CustomizationProvider;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->this$0:Lcom/android/systemui/keyguard/CustomizationProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p0}, Lcom/android/systemui/keyguard/CustomizationProvider;->access$deleteSelection(Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/net/Uri;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
