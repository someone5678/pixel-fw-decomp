.class public abstract Lkotlinx/coroutines/internal/CtorCache;
.super Ljava/lang/Object;
.source "ExceptionsConstructor.kt"


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract captureValues(Landroidx/transition/TransitionValues;)V
.end method

.method public abstract get(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getPriority()Lcom/android/systemui/temporarydisplay/ViewPriority;
.end method

.method public abstract getPropagationProperties()V
.end method

.method public abstract getStartDelay(Landroid/view/ViewGroup;Landroidx/transition/Transition;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)J
.end method

.method public getTimeoutMs()I
    .locals 0

    const/16 p0, 0x2710

    return p0
.end method

.method public abstract getWakeReason()Ljava/lang/String;
.end method

.method public abstract getWindowTitle()Ljava/lang/String;
.end method

.method public abstract onFontRetrievalFailed(I)V
.end method

.method public abstract onFontRetrieved(Landroid/graphics/Typeface;Z)V
.end method

.method public abstract parseResult(Landroid/content/Intent;I)Ljava/lang/Object;
.end method
