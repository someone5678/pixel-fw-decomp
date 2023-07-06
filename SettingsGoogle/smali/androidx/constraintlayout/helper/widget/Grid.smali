.class public Landroidx/constraintlayout/helper/widget/Grid;
.super Landroidx/constraintlayout/widget/VirtualLayout;
.source "Grid.java"


# instance fields
.field private mBoxViewIds:[I

.field private mBoxViews:[Landroid/view/View;

.field private mColumns:I

.field private mColumnsSet:I

.field mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mHorizontalGaps:F

.field private final mMaxColumns:I

.field private final mMaxRows:I

.field private mNextAvailableIndex:I

.field private mOrientation:I

.field private mPositionMatrix:[[Z

.field private mRows:I

.field private mRowsSet:I

.field mSpanIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStrColumnWeights:Ljava/lang/String;

.field private mStrRowWeights:Ljava/lang/String;

.field private mStrSkips:Ljava/lang/String;

.field private mStrSpans:Ljava/lang/String;

.field private mUseRtl:Z

.field private mValidateInputs:Z

.field private mVerticalGaps:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x32

    .line 88
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mMaxRows:I

    .line 89
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mMaxColumns:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 176
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 188
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x32

    .line 88
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mMaxRows:I

    .line 89
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mMaxColumns:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 176
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/VirtualLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x32

    .line 88
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mMaxRows:I

    .line 89
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mMaxColumns:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 176
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    return-void
.end method

.method private arrangeWidgets()Z
    .locals 10

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 381
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    if-ge v2, v3, :cond_2

    .line 382
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 387
    :cond_0
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->getNextPosition()I

    move-result v3

    .line 388
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    move-result v6

    .line 389
    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    move-result v7

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    return v1

    .line 395
    :cond_1
    aget-object v5, v0, v2

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroidx/constraintlayout/helper/widget/Grid;->connectView(Landroid/view/View;IIII)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private buildBoxes()V
    .locals 6

    .line 770
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 771
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 772
    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    move v1, v2

    .line 773
    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    array-length v4, v3

    if-ge v1, v4, :cond_4

    .line 774
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->makeNewView()Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 777
    :cond_0
    array-length v1, v1

    if-eq v0, v1, :cond_4

    .line 778
    new-array v1, v0, [Landroid/view/View;

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 780
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 781
    aget-object v4, v4, v3

    aput-object v4, v1, v3

    goto :goto_2

    .line 783
    :cond_1
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->makeNewView()Landroid/view/View;

    move-result-object v4

    aput-object v4, v1, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 787
    :goto_3
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 788
    aget-object v4, v4, v3

    .line 789
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 791
    :cond_3
    iput-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    .line 795
    :cond_4
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    .line 796
    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    array-length v1, v0

    if-ge v2, v1, :cond_5

    .line 797
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 800
    :cond_5
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->setBoxViewVerticalChains()V

    .line 801
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->setBoxViewHorizontalChains()V

    return-void
.end method

.method private clearHParams(Landroid/view/View;)V
    .locals 1

    .line 754
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    .line 756
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    const/4 v0, -0x1

    .line 757
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 758
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 759
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 760
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 761
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 763
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private clearVParams(Landroid/view/View;)V
    .locals 1

    .line 737
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p0

    const/high16 v0, -0x40800000    # -1.0f

    .line 739
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    const/4 v0, -0x1

    .line 740
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 741
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 742
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 743
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 744
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 746
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private connectView(Landroid/view/View;IIII)V
    .locals 2

    .line 362
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    .line 365
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    aget v1, p0, p3

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 366
    aget v1, p0, p2

    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    add-int/2addr p3, p5

    add-int/lit8 p3, p3, -0x1

    .line 367
    aget p3, p0, p3

    iput p3, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    .line 368
    aget p0, p0, p2

    iput p0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private generateGrid(Z)Z
    .locals 5

    .line 280
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_7

    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    if-ge v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_3

    move p1, v1

    .line 285
    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    array-length v0, v0

    if-ge p1, v0, :cond_2

    move v0, v1

    .line 286
    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    aget-object v4, v3, v1

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 287
    aget-object v3, v3, p1

    aput-boolean v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 290
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 293
    :cond_3
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    .line 296
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->buildBoxes()V

    .line 298
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 299
    iget-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->parseSpans(Ljava/lang/String;)[[I

    move-result-object p1

    if-eqz p1, :cond_4

    .line 301
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->handleSkips([[I)Z

    move-result p1

    and-int/2addr p1, v2

    goto :goto_2

    :cond_4
    move p1, v2

    .line 305
    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 306
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/Grid;->parseSpans(Ljava/lang/String;)[[I

    move-result-object v0

    if-eqz v0, :cond_5

    .line 308
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mIds:[I

    invoke-direct {p0, v3, v0}, Landroidx/constraintlayout/helper/widget/Grid;->handleSpans([I[[I)Z

    move-result v0

    and-int/2addr p1, v0

    .line 311
    :cond_5
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->arrangeWidgets()Z

    move-result v0

    and-int/2addr p1, v0

    if-nez p1, :cond_6

    .line 312
    iget-boolean p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mValidateInputs:Z

    if-nez p0, :cond_7

    :cond_6
    move v1, v2

    :cond_7
    :goto_3
    return v1
.end method

.method private getColByIndex(I)I
    .locals 2

    .line 421
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 422
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    div-int/2addr p1, p0

    return p1

    .line 424
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    rem-int/2addr p1, p0

    return p1
.end method

.method private getNextPosition()I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-nez v1, :cond_2

    .line 439
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    iget v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    mul-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    const/4 p0, -0x1

    return p0

    .line 445
    :cond_0
    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    move-result v3

    .line 446
    iget v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    invoke-direct {p0, v4}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    move-result v4

    .line 447
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    aget-object v3, v5, v3

    aget-boolean v5, v3, v4

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 448
    aput-boolean v0, v3, v4

    move v1, v6

    .line 452
    :cond_1
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    add-int/2addr v3, v6

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mNextAvailableIndex:I

    goto :goto_0

    :cond_2
    return v2
.end method

.method private getRowByIndex(I)I
    .locals 2

    .line 407
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 408
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    rem-int/2addr p1, p0

    return p1

    .line 410
    :cond_0
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    div-int/2addr p1, p0

    return p1
.end method

.method private handleSkips([[I)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 541
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 542
    aget-object v2, p1, v1

    aget v2, v2, v0

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    move-result v2

    .line 543
    aget-object v4, p1, v1

    aget v4, v4, v0

    invoke-direct {p0, v4}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    move-result v4

    .line 544
    aget-object v5, p1, v1

    aget v3, v5, v3

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-direct {p0, v2, v4, v3, v5}, Landroidx/constraintlayout/helper/widget/Grid;->invalidatePositions(IIII)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private handleSpans([I[[I)Z
    .locals 11

    .line 517
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 518
    :goto_0
    array-length v3, p2

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    .line 519
    aget-object v3, p2, v2

    aget v3, v3, v1

    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->getRowByIndex(I)I

    move-result v7

    .line 520
    aget-object v3, p2, v2

    aget v3, v3, v1

    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->getColByIndex(I)I

    move-result v8

    .line 521
    aget-object v3, p2, v2

    aget v5, v3, v4

    const/4 v6, 0x2

    aget v3, v3, v6

    invoke-direct {p0, v7, v8, v5, v3}, Landroidx/constraintlayout/helper/widget/Grid;->invalidatePositions(IIII)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    .line 526
    :cond_0
    aget-object v3, v0, v2

    aget-object v5, p2, v2

    aget v9, v5, v4

    aget v10, v5, v6

    move-object v5, p0

    move-object v6, v3

    invoke-direct/range {v5 .. v10}, Landroidx/constraintlayout/helper/widget/Grid;->connectView(Landroid/view/View;IIII)V

    .line 529
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mSpanIds:Ljava/util/Set;

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private initVariables()V
    .locals 4

    .line 319
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, Z

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    .line 320
    array-length p0, v0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, v0, v1

    .line 321
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private invalidatePositions(IIII)Z
    .locals 5

    move v0, p1

    :goto_0
    add-int v1, p1, p3

    if-ge v0, v1, :cond_3

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    .line 565
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mPositionMatrix:[[Z

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v4

    array-length v3, v3

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v0

    aget-boolean v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_2

    .line 570
    :cond_0
    aput-boolean v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isSpansValid(Ljava/lang/CharSequence;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isWeightsValid(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private makeNewView()Landroid/view/View;
    .locals 3

    .line 716
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 718
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const/4 v1, 0x4

    .line 720
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 725
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 728
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 0

    .line 350
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return-object p0
.end method

.method private parseSpans(Ljava/lang/String;)[[I
    .locals 7

    .line 491
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->isSpansValid(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, ","

    .line 495
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 496
    array-length p1, p0

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v0, 0x0

    aput p1, v2, v0

    const-class p1, I

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    move v2, v0

    .line 500
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 501
    aget-object v4, p0, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 502
    aget-object v5, v4, v3

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 503
    aget-object v6, p1, v2

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v6, v0

    .line 504
    aget-object v4, p1, v2

    aget-object v6, v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v3

    .line 505
    aget-object v4, p1, v2

    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private parseWeights(ILjava/lang/String;)[F
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_2

    .line 333
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    .line 337
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 338
    array-length v0, p2

    if-eq v0, p1, :cond_1

    return-object p0

    .line 342
    :cond_1
    new-array p0, p1, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 344
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method private setBoxViewHorizontalChains()V
    .locals 8

    .line 610
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 611
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 613
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Grid;->parseWeights(ILjava/lang/String;)[F

    move-result-object v2

    .line 614
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v3

    .line 616
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 617
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Landroidx/constraintlayout/helper/widget/Grid;->clearHParams(Landroid/view/View;)V

    .line 618
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 619
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 620
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object p0, p0, v4

    invoke-virtual {p0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 627
    :cond_0
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    if-ge v4, v3, :cond_5

    .line 628
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v3

    .line 629
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v5, v5, v4

    invoke-direct {p0, v5}, Landroidx/constraintlayout/helper/widget/Grid;->clearHParams(Landroid/view/View;)V

    if-eqz v2, :cond_1

    .line 631
    aget v5, v2, v4

    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    :cond_1
    if-lez v4, :cond_2

    .line 634
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    add-int/lit8 v7, v4, -0x1

    aget v5, v5, v7

    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    goto :goto_1

    .line 636
    :cond_2
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 638
    :goto_1
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    .line 639
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    add-int/lit8 v7, v4, 0x1

    aget v5, v5, v7

    iput v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto :goto_2

    .line 641
    :cond_3
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    :goto_2
    if-lez v4, :cond_4

    .line 644
    iget v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    float-to-int v5, v5

    iput v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 646
    :cond_4
    iget-object v5, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-ge v3, v1, :cond_6

    .line 651
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v2

    .line 652
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Landroidx/constraintlayout/helper/widget/Grid;->clearHParams(Landroid/view/View;)V

    .line 653
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 654
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 655
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private setBoxViewVerticalChains()V
    .locals 8

    .line 663
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    .line 664
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 666
    iget v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Landroidx/constraintlayout/helper/widget/Grid;->parseWeights(ILjava/lang/String;)[F

    move-result-object v2

    .line 669
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 670
    iget-object v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v1, v1, v4

    invoke-direct {p0, v1}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 671
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/Grid;->clearVParams(Landroid/view/View;)V

    .line 672
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 673
    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 674
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object p0, p0, v4

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 678
    :cond_0
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    if-ge v4, v3, :cond_5

    .line 679
    iget-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v3

    .line 680
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v6, v6, v4

    invoke-direct {p0, v6}, Landroidx/constraintlayout/helper/widget/Grid;->clearVParams(Landroid/view/View;)V

    if-eqz v2, :cond_1

    .line 682
    aget v6, v2, v4

    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    :cond_1
    if-lez v4, :cond_2

    .line 685
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto :goto_1

    .line 687
    :cond_2
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 689
    :goto_1
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    sub-int/2addr v6, v5

    if-ge v4, v6, :cond_3

    .line 690
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViewIds:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    iput v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto :goto_2

    .line 692
    :cond_3
    iput v0, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    :goto_2
    if-lez v4, :cond_4

    .line 695
    iget v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    float-to-int v6, v6

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 697
    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v6, v6, v4

    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    if-ge v3, v1, :cond_6

    .line 703
    iget-object v2, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Landroidx/constraintlayout/helper/widget/Grid;->params(Landroid/view/View;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v2

    .line 704
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Landroidx/constraintlayout/helper/widget/Grid;->clearVParams(Landroid/view/View;)V

    .line 705
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 706
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 707
    iget-object v4, p0, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private updateActualRowsAndColumns()V
    .locals 4

    .line 247
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    if-eqz v0, :cond_1

    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 260
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    goto :goto_1

    .line 248
    :cond_1
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    if-lez v1, :cond_2

    .line 249
    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    .line 250
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    .line 252
    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 253
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    goto :goto_1

    :cond_3
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 255
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v0

    double-to-int v0, v2

    iput v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRows:I

    .line 256
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    iput v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumns:I

    :goto_1
    return-void
.end method


# virtual methods
.method public getColumnWeights()Ljava/lang/String;
    .locals 0

    .line 984
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    return-object p0
.end method

.method public getColumns()I
    .locals 0

    .line 841
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    return p0
.end method

.method public getHorizontalGaps()F
    .locals 0

    .line 1012
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    return p0
.end method

.method public getOrientation()I
    .locals 0

    .line 872
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    return p0
.end method

.method public getRowWeights()Ljava/lang/String;
    .locals 0

    .line 956
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    return-object p0
.end method

.method public getRows()I
    .locals 0

    .line 810
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    return p0
.end method

.method public getSkips()Ljava/lang/String;
    .locals 0

    .line 928
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    return-object p0
.end method

.method public getSpans()Ljava/lang/String;
    .locals 0

    .line 900
    iget-object p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    return-object p0
.end method

.method public getVerticalGaps()F
    .locals 0

    .line 1040
    iget p0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    return p0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 197
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->init(Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 198
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mUseViewMeasure:Z

    if-eqz p1, :cond_c

    .line 202
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Grid:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_b

    .line 207
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 208
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_rows:I

    if-ne v3, v4, :cond_0

    .line 209
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    goto/16 :goto_1

    .line 210
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_columns:I

    if-ne v3, v4, :cond_1

    .line 211
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    goto :goto_1

    .line 212
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_spans:I

    if-ne v3, v4, :cond_2

    .line 213
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    goto :goto_1

    .line 214
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_skips:I

    if-ne v3, v4, :cond_3

    .line 215
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    goto :goto_1

    .line 216
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_rowWeights:I

    if-ne v3, v4, :cond_4

    .line 217
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    goto :goto_1

    .line 218
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_columnWeights:I

    if-ne v3, v4, :cond_5

    .line 219
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    goto :goto_1

    .line 220
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_orientation:I

    if-ne v3, v4, :cond_6

    .line 221
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    goto :goto_1

    .line 222
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_horizontalGaps:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_7

    .line 223
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    goto :goto_1

    .line 224
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_verticalGaps:I

    if-ne v3, v4, :cond_8

    .line 225
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    goto :goto_1

    .line 226
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_validateInputs:I

    if-ne v3, v4, :cond_9

    .line 228
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mValidateInputs:Z

    goto :goto_1

    .line 229
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->Grid_grid_useRtl:I

    if-ne v3, v4, :cond_a

    .line 231
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/helper/widget/Grid;->mUseRtl:Z

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 235
    :cond_b
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->updateActualRowsAndColumns()V

    .line 236
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->initVariables()V

    .line 237
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_c
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 266
    invoke-super {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->onAttachedToWindow()V

    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 583
    invoke-super/range {p0 .. p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->onDraw(Landroid/graphics/Canvas;)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 589
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, -0x10000

    .line 590
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTop()I

    move-result v7

    .line 593
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 594
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getBottom()I

    move-result v9

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRight()I

    move-result v10

    move-object/from16 v1, p0

    .line 596
    iget-object v11, v1, Landroidx/constraintlayout/helper/widget/Grid;->mBoxViews:[Landroid/view/View;

    array-length v12, v11

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v12, :cond_1

    aget-object v1, v11, v13

    .line 597
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v2, v8

    .line 598
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v14, v3, v7

    .line 599
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v8

    .line 600
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v15, v1, v7

    int-to-float v2, v2

    const/4 v4, 0x0

    int-to-float v5, v3

    sub-int v1, v9, v7

    int-to-float v6, v1

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v0

    .line 601
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    int-to-float v3, v14

    sub-int v1, v10, v8

    int-to-float v4, v1

    int-to-float v5, v15

    move-object/from16 v1, p1

    .line 602
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setColumnWeights(Ljava/lang/String;)V
    .locals 1

    .line 993
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->isWeightsValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1001
    :cond_1
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrColumnWeights:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1002
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 1003
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setColumns(I)V
    .locals 1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    return-void

    .line 854
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    if-ne v0, p1, :cond_1

    return-void

    .line 858
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mColumnsSet:I

    .line 859
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->updateActualRowsAndColumns()V

    .line 861
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->initVariables()V

    const/4 p1, 0x0

    .line 862
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 863
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setHorizontalGaps(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1025
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    .line 1029
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mHorizontalGaps:F

    const/4 p1, 0x1

    .line 1030
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 1031
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    return-void

    .line 885
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    if-ne v1, p1, :cond_1

    return-void

    .line 889
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mOrientation:I

    .line 890
    invoke-direct {p0, v0}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 891
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRowWeights(Ljava/lang/String;)V
    .locals 1

    .line 965
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->isWeightsValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 973
    :cond_1
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrRowWeights:Ljava/lang/String;

    const/4 p1, 0x1

    .line 974
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 975
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRows(I)V
    .locals 1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    return-void

    .line 823
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    if-ne v0, p1, :cond_1

    return-void

    .line 827
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mRowsSet:I

    .line 828
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->updateActualRowsAndColumns()V

    .line 830
    invoke-direct {p0}, Landroidx/constraintlayout/helper/widget/Grid;->initVariables()V

    const/4 p1, 0x0

    .line 831
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 832
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSkips(Ljava/lang/String;)V
    .locals 1

    .line 937
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->isSpansValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 945
    :cond_1
    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSkips:Ljava/lang/String;

    const/4 p1, 0x1

    .line 946
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 947
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSpans(Ljava/lang/CharSequence;)V
    .locals 1

    .line 909
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->isSpansValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 917
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mStrSpans:Ljava/lang/String;

    const/4 p1, 0x1

    .line 918
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 919
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setVerticalGaps(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    return-void

    .line 1053
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    .line 1057
    :cond_1
    iput p1, p0, Landroidx/constraintlayout/helper/widget/Grid;->mVerticalGaps:F

    const/4 p1, 0x1

    .line 1058
    invoke-direct {p0, p1}, Landroidx/constraintlayout/helper/widget/Grid;->generateGrid(Z)Z

    .line 1059
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
