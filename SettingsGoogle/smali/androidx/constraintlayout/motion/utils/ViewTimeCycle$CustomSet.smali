.class public Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;
.super Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomSet"
.end annotation


# instance fields
.field mAttributeName:Ljava/lang/String;

.field mConstraintAttributeList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;"
        }
    .end annotation
.end field

.field mTempValues:[F

.field mWaveProperties:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;-><init>()V

    .line 262
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const-string v0, ","

    .line 267
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    .line 268
    iput-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public setPoint(IFFIF)V
    .locals 0

    .line 310
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Wrong call for custom attribute"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPoint(ILandroidx/constraintlayout/widget/ConstraintAttribute;FIF)V
    .locals 2

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 326
    iget-object p2, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p5, v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 327
    iget p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mWaveShape:I

    return-void
.end method

.method public setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 340
    iget-object v4, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move/from16 v5, p2

    float-to-double v5, v5

    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    .line 341
    iget-object v4, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    array-length v5, v4

    add-int/lit8 v5, v5, -0x2

    aget v5, v4, v5

    .line 342
    array-length v6, v4

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v4, v4, v6

    .line 343
    iget-wide v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastTime:J

    sub-long v8, v2, v8

    .line 345
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastCycle:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    .line 346
    iget-object v6, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mAttributeName:Ljava/lang/String;

    move-object/from16 v12, p5

    invoke-virtual {v12, v1, v6, v11}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v6

    iput v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastCycle:F

    .line 347
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 348
    iput v10, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastCycle:F

    .line 352
    :cond_0
    iget v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastCycle:F

    float-to-double v12, v6

    long-to-double v8, v8

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v8, v14

    float-to-double v14, v5

    mul-double/2addr v8, v14

    add-double/2addr v12, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v12, v8

    double-to-float v6, v12

    iput v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastCycle:F

    .line 353
    iput-wide v2, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mLastTime:J

    .line 354
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->calcWave(F)F

    move-result v2

    .line 355
    iput-boolean v11, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    move v3, v11

    .line 356
    :goto_0
    iget-object v6, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    array-length v8, v6

    if-ge v3, v8, :cond_2

    .line 357
    iget-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    aget v9, v9, v3

    float-to-double v12, v9

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_1

    move v12, v7

    goto :goto_1

    :cond_1
    move v12, v11

    :goto_1
    or-int/2addr v8, v12

    iput-boolean v8, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    mul-float/2addr v9, v2

    add-float/2addr v9, v4

    .line 358
    aput v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    :cond_2
    iget-object v2, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/motion/utils/CustomSupport;->setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V

    cmpl-float v1, v5, v10

    if-eqz v1, :cond_3

    .line 363
    iput-boolean v7, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    .line 365
    :cond_3
    iget-boolean v0, v0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mContinue:Z

    return v0
.end method

.method public setup(I)V
    .locals 14

    .line 277
    iget-object v0, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 278
    iget-object v1, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 279
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintAttribute;->numberOfInterpolatedValues()I

    move-result v1

    .line 280
    new-array v3, v0, [D

    add-int/lit8 v4, v1, 0x2

    .line 281
    new-array v5, v4, [F

    iput-object v5, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    .line 282
    new-array v5, v1, [F

    iput-object v5, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCache:[F

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v0, v5, v2

    .line 283
    const-class v4, D

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_1

    .line 285
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 286
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mConstraintAttributeList:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintAttribute;

    .line 287
    iget-object v9, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mWaveProperties:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    int-to-double v10, v7

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v10, v12

    .line 288
    aput-wide v10, v3, v5

    .line 289
    iget-object v7, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->getValuesToInterpolate([F)V

    move v7, v2

    .line 290
    :goto_1
    iget-object v8, p0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;->mTempValues:[F

    array-length v10, v8

    if-ge v7, v10, :cond_0

    .line 291
    aget-object v10, v4, v5

    aget v8, v8, v7

    float-to-double v11, v8

    aput-wide v11, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 293
    :cond_0
    aget-object v7, v4, v5

    aget v8, v9, v2

    float-to-double v10, v8

    aput-wide v10, v7, v1

    add-int/lit8 v8, v1, 0x1

    .line 294
    aget v9, v9, v6

    float-to-double v9, v9

    aput-wide v9, v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 296
    :cond_1
    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/core/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    return-void
.end method
