.class public final Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;
.super Ljava/lang/Object;
.source "PipPinchResizingAlgorithm.java"


# instance fields
.field public final mTmpDownCentroid:Ljava/lang/Object;

.field public final mTmpDownVector:Ljava/lang/Object;

.field public final mTmpLastCentroid:Ljava/lang/Object;

.field public final mTmpLastVector:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownVector:Ljava/lang/Object;

    .line 8
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastVector:Ljava/lang/Object;

    .line 9
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownCentroid:Ljava/lang/Object;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastCentroid:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownVector:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastVector:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpDownCentroid:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;->mTmpLastCentroid:Ljava/lang/Object;

    return-void
.end method
