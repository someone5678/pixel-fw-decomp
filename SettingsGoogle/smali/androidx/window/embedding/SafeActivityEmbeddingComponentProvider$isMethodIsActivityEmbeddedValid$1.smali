.class final Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeActivityEmbeddingComponentProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->isMethodIsActivityEmbeddedValid()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;


# direct methods
.method constructor <init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    .line 115
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->access$getActivityEmbeddingComponentClass(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 117
    const-class v2, Landroid/app/Activity;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "isActivityEmbedded"

    .line 115
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 119
    sget-object v1, Landroidx/window/reflection/ReflectionUtils;->INSTANCE:Landroidx/window/reflection/ReflectionUtils;

    const-string v2, "isActivityEmbeddedMethod"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroidx/window/reflection/ReflectionUtils;->isPublic$window_release(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p0, v2}, Landroidx/window/reflection/ReflectionUtils;->doesReturn$window_release(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 114
    invoke-virtual {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodIsActivityEmbeddedValid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
