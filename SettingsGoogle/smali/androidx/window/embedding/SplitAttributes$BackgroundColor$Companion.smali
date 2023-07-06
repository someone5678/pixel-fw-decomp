.class public final Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;
.super Ljava/lang/Object;
.source "SplitAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes$BackgroundColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFromValue$window_release(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;
    .locals 2

    .line 435
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 437
    sget-object p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->DEFAULT:Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;->color(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final color(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;
    .locals 2

    const/high16 p0, -0x1000000

    if-gt p0, p1, :cond_0

    const/4 p0, -0x1

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 421
    new-instance p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroidx/window/embedding/SplitAttributes$BackgroundColor;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0

    .line 418
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Background color must be opaque"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
