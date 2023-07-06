.class public final Landroidx/window/embedding/SplitPairRule$Builder;
.super Ljava/lang/Object;
.source "SplitPairRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitPairRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplitPairRule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitPairRule.kt\nandroidx/window/embedding/SplitPairRule$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,350:1\n1#2:351\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSplitPairRule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplitPairRule.kt\nandroidx/window/embedding/SplitPairRule$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,350:1\n1#2:351\n*E\n"
    }
.end annotation


# instance fields
.field private clearTop:Z

.field private defaultSplitAttributes:Landroidx/window/embedding/SplitAttributes;

.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation
.end field

.field private finishPrimaryWithSecondary:Landroidx/window/embedding/SplitRule$FinishBehavior;

.field private finishSecondaryWithPrimary:Landroidx/window/embedding/SplitRule$FinishBehavior;

.field private maxAspectRatioInLandscape:Landroidx/window/embedding/EmbeddingAspectRatio;

.field private maxAspectRatioInPortrait:Landroidx/window/embedding/EmbeddingAspectRatio;

.field private minHeightDp:I

.field private minSmallestWidthDp:I

.field private minWidthDp:I

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->filters:Ljava/util/Set;

    const/16 p1, 0x258

    .line 100
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minWidthDp:I

    .line 102
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minHeightDp:I

    .line 104
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minSmallestWidthDp:I

    .line 105
    sget-object p1, Landroidx/window/embedding/SplitRule;->SPLIT_MAX_ASPECT_RATIO_PORTRAIT_DEFAULT:Landroidx/window/embedding/EmbeddingAspectRatio;

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->maxAspectRatioInPortrait:Landroidx/window/embedding/EmbeddingAspectRatio;

    .line 106
    sget-object p1, Landroidx/window/embedding/SplitRule;->SPLIT_MAX_ASPECT_RATIO_LANDSCAPE_DEFAULT:Landroidx/window/embedding/EmbeddingAspectRatio;

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->maxAspectRatioInLandscape:Landroidx/window/embedding/EmbeddingAspectRatio;

    .line 107
    sget-object p1, Landroidx/window/embedding/SplitRule$FinishBehavior;->NEVER:Landroidx/window/embedding/SplitRule$FinishBehavior;

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishPrimaryWithSecondary:Landroidx/window/embedding/SplitRule$FinishBehavior;

    .line 108
    sget-object p1, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishSecondaryWithPrimary:Landroidx/window/embedding/SplitRule$FinishBehavior;

    .line 110
    new-instance p1, Landroidx/window/embedding/SplitAttributes$Builder;

    invoke-direct {p1}, Landroidx/window/embedding/SplitAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/window/embedding/SplitAttributes$Builder;->build()Landroidx/window/embedding/SplitAttributes;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->defaultSplitAttributes:Landroidx/window/embedding/SplitAttributes;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/SplitPairRule;
    .locals 13

    .line 277
    new-instance v12, Landroidx/window/embedding/SplitPairRule;

    .line 278
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->tag:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Landroidx/window/embedding/SplitPairRule$Builder;->filters:Ljava/util/Set;

    .line 280
    iget-object v3, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishPrimaryWithSecondary:Landroidx/window/embedding/SplitRule$FinishBehavior;

    .line 281
    iget-object v4, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishSecondaryWithPrimary:Landroidx/window/embedding/SplitRule$FinishBehavior;

    .line 282
    iget-boolean v5, p0, Landroidx/window/embedding/SplitPairRule$Builder;->clearTop:Z

    .line 283
    iget v6, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minWidthDp:I

    .line 284
    iget v7, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minHeightDp:I

    .line 285
    iget v8, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minSmallestWidthDp:I

    .line 286
    iget-object v9, p0, Landroidx/window/embedding/SplitPairRule$Builder;->maxAspectRatioInPortrait:Landroidx/window/embedding/EmbeddingAspectRatio;

    .line 287
    iget-object v10, p0, Landroidx/window/embedding/SplitPairRule$Builder;->maxAspectRatioInLandscape:Landroidx/window/embedding/EmbeddingAspectRatio;

    .line 288
    iget-object v11, p0, Landroidx/window/embedding/SplitPairRule$Builder;->defaultSplitAttributes:Landroidx/window/embedding/SplitAttributes;

    move-object v0, v12

    .line 277
    invoke-direct/range {v0 .. v11}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/lang/String;Ljava/util/Set;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;ZIIILandroidx/window/embedding/EmbeddingAspectRatio;Landroidx/window/embedding/EmbeddingAspectRatio;Landroidx/window/embedding/SplitAttributes;)V

    return-object v12
.end method

.method public final setClearTop(Z)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    .line 249
    iput-boolean p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->clearTop:Z

    return-object p0
.end method

.method public final setDefaultSplitAttributes(Landroidx/window/embedding/SplitAttributes;)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 1

    const-string v0, "defaultSplitAttributes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->defaultSplitAttributes:Landroidx/window/embedding/SplitAttributes;

    return-object p0
.end method

.method public final setFinishPrimaryWithSecondary(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 1

    const-string v0, "finishPrimaryWithSecondary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishPrimaryWithSecondary:Landroidx/window/embedding/SplitRule$FinishBehavior;

    return-object p0
.end method

.method public final setFinishSecondaryWithPrimary(Landroidx/window/embedding/SplitRule$FinishBehavior;)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 1

    const-string v0, "finishSecondaryWithPrimary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishSecondaryWithPrimary:Landroidx/window/embedding/SplitRule$FinishBehavior;

    return-object p0
.end method

.method public final setMaxAspectRatioInLandscape(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 1

    const-string v0, "aspectRatio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->maxAspectRatioInLandscape:Landroidx/window/embedding/EmbeddingAspectRatio;

    return-object p0
.end method

.method public final setMaxAspectRatioInPortrait(Landroidx/window/embedding/EmbeddingAspectRatio;)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 1

    const-string v0, "aspectRatio"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->maxAspectRatioInPortrait:Landroidx/window/embedding/EmbeddingAspectRatio;

    return-object p0
.end method

.method public final setMinHeightDp(I)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    .line 147
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minHeightDp:I

    return-object p0
.end method

.method public final setMinSmallestWidthDp(I)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    .line 162
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minSmallestWidthDp:I

    return-object p0
.end method

.method public final setMinWidthDp(I)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    .line 126
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minWidthDp:I

    return-object p0
.end method

.method public final setTag(Ljava/lang/String;)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->tag:Ljava/lang/String;

    return-object p0
.end method
