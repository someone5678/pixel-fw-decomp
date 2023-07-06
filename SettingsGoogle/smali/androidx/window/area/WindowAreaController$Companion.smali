.class public final Landroidx/window/area/WindowAreaController$Companion;
.super Ljava/lang/Object;
.source "WindowAreaController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/area/WindowAreaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/window/area/WindowAreaController$Companion;

.field private static final TAG:Ljava/lang/String;

.field private static decorator:Landroidx/window/area/WindowAreaControllerDecorator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/area/WindowAreaController$Companion;

    invoke-direct {v0}, Landroidx/window/area/WindowAreaController$Companion;-><init>()V

    sput-object v0, Landroidx/window/area/WindowAreaController$Companion;->$$INSTANCE:Landroidx/window/area/WindowAreaController$Companion;

    .line 69
    const-class v0, Landroidx/window/area/WindowAreaController;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/window/area/WindowAreaController$Companion;->TAG:Ljava/lang/String;

    .line 71
    sget-object v0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    sput-object v0, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrCreate()Landroidx/window/area/WindowAreaController;
    .locals 1

    .line 83
    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getWindowAreaComponent()Landroidx/window/extensions/area/WindowAreaComponent;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    sget-object p0, Landroidx/window/core/BuildConfig;->INSTANCE:Landroidx/window/core/BuildConfig;

    invoke-virtual {p0}, Landroidx/window/core/BuildConfig;->getVerificationMode()Landroidx/window/core/VerificationMode;

    move-result-object p0

    sget-object v0, Landroidx/window/core/VerificationMode;->STRICT:Landroidx/window/core/VerificationMode;

    if-ne p0, v0, :cond_0

    .line 87
    sget-object p0, Landroidx/window/area/WindowAreaController$Companion;->TAG:Ljava/lang/String;

    const-string v0, "Failed to load WindowExtensions"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 94
    new-instance p0, Landroidx/window/area/EmptyWindowAreaControllerImpl;

    invoke-direct {p0}, Landroidx/window/area/EmptyWindowAreaControllerImpl;-><init>()V

    goto :goto_1

    .line 96
    :cond_1
    new-instance v0, Landroidx/window/area/WindowAreaControllerImpl;

    invoke-direct {v0, p0}, Landroidx/window/area/WindowAreaControllerImpl;-><init>(Landroidx/window/extensions/area/WindowAreaComponent;)V

    move-object p0, v0

    .line 98
    :goto_1
    sget-object v0, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    invoke-interface {v0, p0}, Landroidx/window/area/WindowAreaControllerDecorator;->decorate(Landroidx/window/area/WindowAreaController;)Landroidx/window/area/WindowAreaController;

    move-result-object p0

    return-object p0
.end method

.method public final overrideDecorator(Landroidx/window/area/WindowAreaControllerDecorator;)V
    .locals 0

    const-string p0, "overridingDecorator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sput-object p1, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method

.method public final reset()V
    .locals 0

    .line 110
    sget-object p0, Landroidx/window/area/EmptyDecorator;->INSTANCE:Landroidx/window/area/EmptyDecorator;

    sput-object p0, Landroidx/window/area/WindowAreaController$Companion;->decorator:Landroidx/window/area/WindowAreaControllerDecorator;

    return-void
.end method
