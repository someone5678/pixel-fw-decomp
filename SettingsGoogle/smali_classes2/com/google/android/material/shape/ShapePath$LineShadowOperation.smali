.class Lcom/google/android/material/shape/ShapePath$LineShadowOperation;
.super Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/ShapePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LineShadowOperation"
.end annotation


# instance fields
.field private final operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

.field private final startX:F

.field private final startY:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/shape/ShapePath$PathLineOperation;FF)V
    .locals 0

    .line 426
    invoke-direct {p0}, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    .line 428
    iput p2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    .line 429
    iput p3, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Matrix;Lcom/google/android/material/shadow/ShadowRenderer;ILandroid/graphics/Canvas;)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    .line 439
    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, v2

    .line 440
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 442
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 443
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->renderMatrix:Landroid/graphics/Matrix;

    iget v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 444
    iget-object p1, p0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->getAngle()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 445
    iget-object p0, p0, Lcom/google/android/material/shape/ShapePath$ShadowCompatOperation;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p4, p0, v2, p3}, Lcom/google/android/material/shadow/ShadowRenderer;->drawEdgeShadow(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    return-void
.end method

.method getAngle()F
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v0}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$100(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startY:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->operation:Lcom/google/android/material/shape/ShapePath$PathLineOperation;

    invoke-static {v1}, Lcom/google/android/material/shape/ShapePath$PathLineOperation;->access$000(Lcom/google/android/material/shape/ShapePath$PathLineOperation;)F

    move-result v1

    iget p0, p0, Lcom/google/android/material/shape/ShapePath$LineShadowOperation;->startX:F

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
