.class public Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "BatteryChartView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;,
        Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;
    }
.end annotation


# static fields
.field private static final DIVIDER_COLOR:I


# instance fields
.field private mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private final mAxisLabelsBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerHeight:I

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mDividerWidth:I

.field private mHoveredIndex:I

.field private final mIndent:Landroid/graphics/Rect;

.field private mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

.field private final mPercentageBounds:[Landroid/graphics/Rect;

.field private final mPercentages:[Ljava/lang/String;

.field private mTextPadding:I

.field private mTextPaint:Landroid/graphics/Paint;

.field mTouchUpEventX:F

.field private mTrapezoidColor:I

.field private mTrapezoidHOffset:F

.field private mTrapezoidHoverColor:I

.field private mTrapezoidPaint:Landroid/graphics/Paint;

.field mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

.field private mTrapezoidSolidColor:I

.field private mTrapezoidVOffset:F

.field private mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;


# direct methods
.method static bridge synthetic -$$Nest$fgetmViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monTrapezoidClicked(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->onTrapezoidClicked(Landroid/view/View;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendAccessibilityEvent(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#CDCCC5"

    .line 60
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p1, 0x3

    new-array p1, p1, [Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x1

    aput-object v0, p1, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    const/4 p1, -0x2

    .line 75
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 p1, 0x1

    .line 93
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-static {}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getPercentages()[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    .line 70
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    const/4 p2, 0x3

    new-array p2, p2, [Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    aput-object v0, p2, v2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    aput-object v0, p2, v2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    const/4 p2, -0x2

    .line 75
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 p2, 0x1

    .line 93
    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->initializeColors(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 106
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method private drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 492
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 493
    invoke-virtual {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    move-result-object p2

    .line 494
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 492
    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawAxisLabels(Landroid/graphics/Canvas;[Landroid/graphics/Rect;F)V
    .locals 7

    .line 434
    array-length v0, p2

    add-int/lit8 v5, v0, -0x1

    const/4 v0, 0x0

    .line 436
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 437
    aget-object v0, p2, v5

    invoke-direct {p0, p1, v5, v0, p3}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 438
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    return-void
.end method

.method private drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V
    .locals 9

    sub-int v0, p4, p3

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    .line 454
    :cond_0
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    add-int v0, p3, p4

    .line 455
    div-int/lit8 v0, v0, 0x2

    .line 456
    invoke-direct {p0, p2, p3, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v1

    if-nez v1, :cond_2

    .line 457
    invoke-direct {p0, p2, v0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v0, v1, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, v0

    move v6, p5

    .line 461
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move v4, v0

    move v5, p4

    .line 463
    invoke-direct/range {v1 .. v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    int-to-float v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    .line 466
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr v0, v2

    .line 467
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p3

    .line 468
    invoke-direct {p0, p2, p3, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 469
    invoke-direct {p0, p2, v1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 470
    invoke-direct {p0, p2, v0, p4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasOverlap([Landroid/graphics/Rect;II)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 473
    :cond_4
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v1, v2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    .line 474
    aget-object v2, p2, v0

    invoke-direct {p0, p1, v0, v2, p5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelText(Landroid/graphics/Canvas;ILandroid/graphics/Rect;F)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, v1

    move v8, p5

    .line 475
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move v6, v1

    move v7, v0

    .line 477
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    move v6, p4

    move v7, p5

    .line 479
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabelsBetweenStartIndexAndEndIndex(Landroid/graphics/Canvas;[Landroid/graphics/Rect;IIF)V

    :cond_5
    :goto_1
    return-void
.end method

.method private drawHorizontalDividers(Landroid/graphics/Canvas;)V
    .locals 11

    .line 331
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 332
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v2, v3

    .line 334
    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    int-to-float v0, v0

    .line 335
    iget-object v10, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    move-object v5, p1

    move v7, v2

    move v8, v0

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 336
    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 339
    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    mul-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    int-to-float v3, v3

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v3, v5

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 341
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    int-to-float v2, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 342
    iget-object v10, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x1

    .line 343
    invoke-direct {p0, p1, v3, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    add-float/2addr v2, v1

    .line 347
    iget-object v10, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x2

    .line 348
    invoke-direct {p0, p1, v0, v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawPercentage(Landroid/graphics/Canvas;IF)V

    return-void
.end method

.method private drawPercentage(Landroid/graphics/Canvas;IF)V
    .locals 3

    .line 352
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 353
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 356
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p2, v2, p2

    .line 357
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p2, v2

    add-float/2addr p3, p2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 354
    invoke-virtual {p1, v0, v1, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawTrapezoids(Landroid/graphics/Canvas;)V
    .locals 8

    .line 501
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    sub-float/2addr v0, v3

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    sub-float v2, v0, v2

    .line 507
    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v2, v1

    .line 511
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 513
    :goto_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v5, v5

    if-ge v4, v5, :cond_6

    .line 515
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 519
    :cond_1
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result v5

    if-eq v5, v4, :cond_3

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 520
    invoke-virtual {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    .line 521
    :cond_2
    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidColor:I

    goto :goto_2

    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    .line 522
    :goto_2
    iget v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    if-ne v6, v4, :cond_4

    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v7, v6}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    move v6, v3

    .line 524
    :goto_3
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    if-eqz v6, :cond_5

    iget v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHoverColor:I

    :cond_5
    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 526
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 527
    invoke-virtual {v5, v4}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    sub-float v5, v0, v5

    .line 526
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    .line 528
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    add-int/lit8 v7, v4, 0x1

    .line 529
    invoke-virtual {v6, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v6, v0, v6

    .line 528
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    .line 530
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 531
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v7, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 532
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v7, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 533
    iget-object v7, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 536
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v6, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 537
    iget-object v6, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v6, v6, v4

    iget v6, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 539
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private drawVerticalDividers(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v6, p0

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    .line 364
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v2, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 365
    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    mul-int/2addr v4, v2

    int-to-float v4, v4

    int-to-float v0, v0

    sub-float/2addr v0, v4

    .line 366
    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 367
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget-object v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    .line 368
    iget v4, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    int-to-float v4, v4

    sub-float v4, v1, v4

    .line 369
    iget v5, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    iget v7, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v8, v7

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v8, v13

    add-float/2addr v5, v8

    int-to-float v7, v7

    mul-float/2addr v7, v13

    const/4 v8, 0x0

    move v14, v7

    move v15, v8

    :goto_0
    if-ge v15, v2, :cond_1

    .line 373
    iget-object v12, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v8, v14

    move v9, v4

    move v10, v14

    move v11, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 374
    iget v7, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v14

    add-float/2addr v7, v0

    .line 376
    iget-object v8, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v9, v8

    if-ge v15, v9, :cond_0

    .line 377
    aget-object v8, v8, v15

    add-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    .line 378
    iget-object v8, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v8, v8, v15

    sub-float v9, v7, v5

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    iput v9, v8, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move v14, v7

    goto :goto_0

    .line 383
    :cond_1
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz v1, :cond_3

    .line 384
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    sub-int/2addr v1, v2

    int-to-float v7, v1

    .line 386
    sget-object v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$1;->$SwitchMap$com$android$settings$fuelgauge$batteryusage$BatteryChartViewModel$AxisLabelPosition:[I

    iget-object v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->axisLabelPosition()Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v3, :cond_2

    .line 397
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 398
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v2

    mul-float/2addr v3, v13

    int-to-float v2, v2

    add-float v4, v2, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v7

    .line 397
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    .line 388
    :cond_2
    iget-object v1, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 389
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iget v2, v6, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v3, v2

    mul-float/2addr v13, v0

    add-float/2addr v3, v13

    int-to-float v2, v2

    add-float v4, v2, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move v4, v7

    .line 388
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    move-object/from16 v1, p1

    .line 405
    invoke-direct {v6, v1, v0, v7}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawAxisLabels(Landroid/graphics/Canvas;[Landroid/graphics/Rect;F)V

    :cond_3
    return-void
.end method

.method private getAxisLabelDisplayAreas(IFFFZ)[Landroid/graphics/Rect;
    .locals 7

    .line 412
    new-array v0, p1, [Landroid/graphics/Rect;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 414
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    mul-float/2addr v3, p3

    add-float/2addr v3, p2

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz p5, :cond_1

    if-nez v1, :cond_0

    mul-float v5, v2, v4

    add-float/2addr v3, v5

    :cond_0
    add-int/lit8 v5, p1, -0x1

    if-ne v1, v5, :cond_1

    mul-float v5, v2, v4

    sub-float/2addr v3, v5

    :cond_1
    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 426
    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, p4

    .line 427
    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    .line 428
    new-instance v6, Landroid/graphics/Rect;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v6, v3, v4, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static getPercentages()[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    const/4 v3, 0x1

    .line 595
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/high16 v1, 0x4049000000000000L    # 50.0

    .line 596
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-wide/16 v1, 0x0

    .line 597
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/Utils;->formatPercentage(DZ)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method private getTrapezoidIndex(F)I
    .locals 5

    .line 545
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    const/4 v1, -0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 548
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 549
    aget-object v2, v2, v0

    .line 550
    iget v3, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    iget v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    sub-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    iget v2, v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static hasAnyValidTrapezoid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 585
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 586
    invoke-static {p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private hasOverlap([Landroid/graphics/Rect;II)Z
    .locals 1

    .line 486
    aget-object p2, p1, p2

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    int-to-float p0, p0

    const v0, 0x40133333    # 2.3f

    mul-float/2addr p0, v0

    add-float/2addr p2, p0

    aget-object p0, p1, p3

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    cmpl-float p0, p2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private initializeAxisLabelsBounds()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 560
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initializeColors(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 301
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    .line 302
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidColor:I

    const v0, 0x1120027

    .line 303
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHoverColor:I

    .line 306
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b00dd

    .line 307
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    const v0, 0x7f0b00dc

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    .line 309
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 310
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget v2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDividerWidth:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BatteryChartView"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDividerHeight:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mDividerHeight:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b00e0

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidHOffset:F

    const v0, 0x7f0b00df

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidVOffset:F

    .line 319
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    .line 320
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSolidColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    const v2, 0x7f0b00e1

    .line 325
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v2}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 323
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const v0, 0x7f0b00de

    .line 327
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    return-void
.end method

.method private initializeTrapezoidSlots(I)V
    .locals 2

    .line 293
    new-array p1, p1, [Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    const/4 p1, 0x0

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 295
    new-instance v1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ltz p1, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result p0

    sub-int/2addr p0, v0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isTrapezoidValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 2

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    add-int/2addr p1, v1

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getLevel(I)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z
    .locals 1

    .line 579
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onTrapezoidClicked(Landroid/view/View;I)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

    if-eqz v0, :cond_2

    .line 267
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result p0

    if-ne p2, p0, :cond_1

    const/4 p2, -0x1

    .line 266
    :cond_1
    invoke-interface {v0, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;->onSelect(I)V

    :cond_2
    const/4 p0, 0x6

    .line 270
    invoke-virtual {p1, p0}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void
.end method

.method private sendAccessibilityEvent(II)Z
    .locals 2

    .line 274
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 278
    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-direct {v1, p2}, Landroid/view/accessibility/AccessibilityEvent;-><init>(I)V

    .line 279
    invoke-virtual {v1, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    const/4 p1, 0x1

    .line 280
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 281
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 283
    invoke-interface {v0, p0, v1}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private sendAccessibilityEventForHover(I)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawHorizontalDividers(Landroid/graphics/Canvas;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawVerticalDividers(Landroid/graphics/Canvas;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->drawTrapezoids(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-nez v0, :cond_0

    .line 251
    invoke-super {p0}, Landroid/widget/ImageView;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object p0

    return-object p0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;-><init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider-IA;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 256
    :cond_1
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 241
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    const/4 v1, 0x1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const-string p0, "BatteryChartView"

    const-string p1, "invalid motion event for onClick() callback"

    .line 242
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getTrapezoidIndex(F)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->onTrapezoidClicked(Landroid/view/View;I)V

    return-void
.end method

.method public onHoverChanged(Z)V
    .locals 0

    .line 232
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onHoverChanged(Z)V

    if-nez p1, :cond_0

    const/4 p1, -0x2

    .line 234
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    .line 235
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 226
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 217
    :cond_0
    iget p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/16 p1, 0x100

    .line 218
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEventForHover(I)V

    .line 219
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    .line 220
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_1
    return v2

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->getTrapezoidIndex(F)I

    move-result p1

    .line 208
    iget v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    if-eq v0, p1, :cond_3

    .line 209
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mHoveredIndex:I

    .line 210
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    const/16 p1, 0x80

    .line 211
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEventForHover(I)V

    :cond_3
    return v2
.end method

.method public onMeasure(II)V
    .locals 5

    .line 145
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    .line 148
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move p1, p2

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentages:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    aget-object v0, v0, p1

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, p1

    .line 150
    invoke-virtual {v1, v0, p2, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 156
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 158
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    if-eqz p1, :cond_2

    move p1, p2

    move v0, p1

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 163
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mAxisLabelsBounds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPadding:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setIndent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mPercentageBounds:[Landroid/graphics/Rect;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BatteryChartView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    :cond_3
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mIndent:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 195
    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTouchUpEventX:F

    .line 198
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setCompanionTextView(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 135
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTextPaint:Landroid/graphics/Paint;

    .line 140
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setOnSelectListener(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mOnSelectListener:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$OnSelectListener;

    return-void
.end method

.method public setViewModel(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 113
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->selectedIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setViewModel(): size: %d, selectedIndex: %d."

    .line 117
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryChartView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    .line 120
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->initializeAxisLabelsBounds()V

    .line 121
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->initializeTrapezoidSlots(I)V

    .line 122
    invoke-static {p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->hasAnyValidTrapezoid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 123
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method
