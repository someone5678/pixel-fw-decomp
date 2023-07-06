.class public final Landroidx/window/embedding/SplitAttributes$BackgroundColor;
.super Ljava/lang/Object;
.source "SplitAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BackgroundColor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;

.field public static final DEFAULT:Landroidx/window/embedding/SplitAttributes$BackgroundColor;


# instance fields
.field private final description:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->Companion:Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;

    .line 429
    new-instance v0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/embedding/SplitAttributes$BackgroundColor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->DEFAULT:Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->description:Ljava/lang/String;

    .line 382
    iput p2, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->value:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/SplitAttributes$BackgroundColor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final color(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;
    .locals 1

    sget-object v0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->Companion:Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitAttributes$BackgroundColor$Companion;->color(I)Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 389
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 390
    :cond_1
    iget v1, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->value:I

    check-cast p1, Landroidx/window/embedding/SplitAttributes$BackgroundColor;

    iget v3, p1, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->value:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->description:Ljava/lang/String;

    iget-object p1, p1, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->description:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getValue$window_release()I
    .locals 0

    .line 383
    iget p0, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->value:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 393
    iget-object v0, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->description:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget p0, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->value:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BackgroundColor("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$BackgroundColor;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
