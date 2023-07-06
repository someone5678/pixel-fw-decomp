.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "UserInteractor.kt"


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor"
    f = "UserInteractor.kt"
    l = {
        0x222
    }
    m = "toRecord"
.end annotation


# instance fields
.field public I$0:I

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/user/domain/interactor/UserInteractor;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->label:I

    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$toRecord$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->access$toRecord(Lcom/android/systemui/user/domain/interactor/UserInteractor;Landroid/content/pm/UserInfo;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
