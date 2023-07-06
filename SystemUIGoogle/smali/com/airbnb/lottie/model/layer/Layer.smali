.class public final Lcom/airbnb/lottie/model/layer/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/model/layer/Layer$MatteType;,
        Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    }
.end annotation


# instance fields
.field public final composition:Lcom/airbnb/lottie/LottieComposition;

.field public final hidden:Z

.field public final inOutKeyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field public final layerId:J

.field public final layerName:Ljava/lang/String;

.field public final layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

.field public final masks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;"
        }
    .end annotation
.end field

.field public final matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

.field public final parentId:J

.field public final preCompHeight:I

.field public final preCompWidth:I

.field public final refId:Ljava/lang/String;

.field public final shapes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final solidColor:I

.field public final solidHeight:I

.field public final solidWidth:I

.field public final startFrame:F

.field public final text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

.field public final textProperties:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

.field public final timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

.field public final timeStretch:F

.field public final transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Ljava/lang/String;",
            "J",
            "Lcom/airbnb/lottie/model/layer/Layer$LayerType;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/content/Mask;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            "IIIFFII",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;",
            "Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/value/Keyframe<",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/airbnb/lottie/model/layer/Layer$MatteType;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Z)V"
        }
    .end annotation

    .line 0
    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    move-object v1, p1

    .line 5
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 9
    .line 10
    move-object v1, p3

    .line 11
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 12
    .line 13
    move-wide v1, p4

    .line 14
    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerId:J

    .line 15
    .line 16
    move-object v1, p6

    .line 17
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->layerType:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 18
    .line 19
    move-wide v1, p7

    .line 20
    iput-wide v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 21
    .line 22
    move-object v1, p9

    .line 23
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->refId:Ljava/lang/String;

    .line 24
    .line 25
    move-object v1, p10

    .line 26
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 27
    .line 28
    move-object v1, p11

    .line 29
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->transform:Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    .line 30
    .line 31
    move v1, p12

    .line 32
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    .line 33
    .line 34
    move/from16 v1, p13

    .line 35
    .line 36
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    .line 37
    .line 38
    move/from16 v1, p14

    .line 39
    .line 40
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    .line 41
    .line 42
    move/from16 v1, p15

    .line 43
    .line 44
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->timeStretch:F

    .line 45
    .line 46
    move/from16 v1, p16

    .line 47
    .line 48
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->startFrame:F

    .line 49
    .line 50
    move/from16 v1, p17

    .line 51
    .line 52
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->preCompWidth:I

    .line 53
    .line 54
    move/from16 v1, p18

    .line 55
    .line 56
    iput v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->preCompHeight:I

    .line 57
    .line 58
    move-object/from16 v1, p19

    .line 59
    .line 60
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->text:Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    .line 61
    .line 62
    move-object/from16 v1, p20

    .line 63
    .line 64
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->textProperties:Lcom/android/wm/shell/pip/phone/PipPinchResizingAlgorithm;

    .line 65
    .line 66
    move-object/from16 v1, p21

    .line 67
    .line 68
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->inOutKeyframes:Ljava/util/List;

    .line 69
    .line 70
    move-object/from16 v1, p22

    .line 71
    .line 72
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->matteType:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 73
    .line 74
    move-object/from16 v1, p23

    .line 75
    .line 76
    iput-object v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->timeRemapping:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    .line 77
    .line 78
    move/from16 v1, p24

    .line 79
    .line 80
    iput-boolean v1, v0, Lcom/airbnb/lottie/model/layer/Layer;->hidden:Z

    .line 81
    .line 82
    return-void
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 49
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/layer/Layer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 5
    iget-wide v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 6
    iget-object v2, v2, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    const/4 v5, 0x0

    .line 7
    invoke-virtual {v2, v3, v4, v5}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 13
    iget-wide v6, v2, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 14
    iget-object v2, v3, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 15
    invoke-virtual {v2, v6, v7, v5}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v3, v2, Lcom/airbnb/lottie/model/layer/Layer;->layerName:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/Layer;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 21
    iget-wide v6, v2, Lcom/airbnb/lottie/model/layer/Layer;->parentId:J

    .line 22
    iget-object v2, v3, Lcom/airbnb/lottie/LottieComposition;->layerMap:Landroidx/collection/LongSparseArray;

    .line 23
    invoke-virtual {v2, v6, v7, v5}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Long;)Ljava/lang/Object;

    move-result-object v2

    .line 24
    check-cast v2, Lcom/airbnb/lottie/model/layer/Layer;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 27
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tMasks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->masks:Ljava/util/List;

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_2
    iget v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    if-eqz v2, :cond_3

    .line 32
    iget v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    if-eqz v2, :cond_3

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tBackground: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 34
    iget v5, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidWidth:I

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 36
    iget v5, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidHeight:I

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 38
    iget v5, p0, Lcom/airbnb/lottie/model/layer/Layer;->solidColor:I

    .line 39
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "%dx%d %X\n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 42
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tShapes:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object p0, p0, Lcom/airbnb/lottie/model/layer/Layer;->shapes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t\t"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 45
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
