.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SafeWindowLayoutComponentProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/layout/SafeWindowLayoutComponentProvider;->isWindowExtensionsValid()Z
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
.field final synthetic this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;


# direct methods
.method constructor <init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 4

    .line 110
    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$getWindowExtensionsProviderClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getWindowExtensions"

    .line 111
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    invoke-static {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->access$getWindowExtensionsClass(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;

    move-result-object p0

    .line 113
    sget-object v2, Landroidx/window/reflection/ReflectionUtils;->INSTANCE:Landroidx/window/reflection/ReflectionUtils;

    const-string v3, "getWindowExtensionsMethod"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0, p0}, Landroidx/window/reflection/ReflectionUtils;->doesReturn$window_release(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {v2, v0}, Landroidx/window/reflection/ReflectionUtils;->isPublic$window_release(Ljava/lang/reflect/Method;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
