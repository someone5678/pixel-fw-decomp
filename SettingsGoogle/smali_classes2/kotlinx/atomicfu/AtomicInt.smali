.class public final Lkotlinx/atomicfu/AtomicInt;
.super Ljava/lang/Object;
.source "AtomicFU.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/atomicfu/AtomicInt$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtomicFU.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,497:1\n1#2:498\n*E\n"
.end annotation


# static fields
.field private static final Companion:Lkotlinx/atomicfu/AtomicInt$Companion;

.field private static final FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lkotlinx/atomicfu/AtomicInt;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final trace:Lkotlinx/atomicfu/TraceBase;

.field private volatile value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/atomicfu/AtomicInt$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/atomicfu/AtomicInt$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/atomicfu/AtomicInt;->Companion:Lkotlinx/atomicfu/AtomicInt$Companion;

    .line 350
    const-class v0, Lkotlinx/atomicfu/AtomicInt;

    const-string v1, "value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILkotlinx/atomicfu/TraceBase;)V
    .locals 1

    const-string v0, "trace"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    .line 221
    iput p1, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    return-void
.end method


# virtual methods
.method public final compareAndSet(II)Z
    .locals 4

    .line 247
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicInt;)V

    .line 248
    sget-object v0, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAS("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    .line 251
    :cond_0
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterRMW(Lkotlinx/atomicfu/AtomicInt;II)V

    :cond_1
    return v0
.end method

.method public final decrementAndGet()I
    .locals 4

    .line 326
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicInt;)V

    .line 327
    sget-object v0, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result v0

    .line 328
    iget-object v1, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decAndGet():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    .line 329
    :cond_0
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p0, v2, v0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterRMW(Lkotlinx/atomicfu/AtomicInt;II)V

    return v0
.end method

.method public final getValue()I
    .locals 0

    .line 221
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    return p0
.end method

.method public final incrementAndGet()I
    .locals 4

    .line 315
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicInt;)V

    .line 316
    sget-object v0, Lkotlinx/atomicfu/AtomicInt;->FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    .line 317
    iget-object v1, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v2, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "incAndGet():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    .line 318
    :cond_0
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterRMW(Lkotlinx/atomicfu/AtomicInt;II)V

    return v0
.end method

.method public final setValue(I)V
    .locals 3

    .line 223
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->beforeUpdate(Lkotlinx/atomicfu/AtomicInt;)V

    .line 224
    iput p1, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    .line 225
    iget-object v0, p0, Lkotlinx/atomicfu/AtomicInt;->trace:Lkotlinx/atomicfu/TraceBase;

    sget-object v1, Lkotlinx/atomicfu/TraceBase$None;->INSTANCE:Lkotlinx/atomicfu/TraceBase$None;

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/TraceBase;->append(Ljava/lang/Object;)V

    .line 226
    :cond_0
    invoke-static {}, Lkotlinx/atomicfu/InterceptorKt;->getInterceptor()Lkotlinx/atomicfu/AtomicOperationInterceptor;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lkotlinx/atomicfu/AtomicOperationInterceptor;->afterSet(Lkotlinx/atomicfu/AtomicInt;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 347
    iget p0, p0, Lkotlinx/atomicfu/AtomicInt;->value:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
