.class public Lcom/google/android/material/checkbox/MaterialCheckBox;
.super Landroidx/appcompat/widget/AppCompatCheckBox;
.source "MaterialCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;
    }
.end annotation


# static fields
.field private static final CHECKBOX_STATES:[[I

.field private static final DEF_STYLE_RES:I

.field private static final ERROR_STATE_SET:[I


# instance fields
.field private centerIfNoTextEnabled:Z

.field private errorAccessibilityLabel:Ljava/lang/CharSequence;

.field private errorShown:Z

.field private materialThemeColorsTintList:Landroid/content/res/ColorStateList;

.field private final onErrorChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private useMaterialThemeColors:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 54
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CompoundButton_CheckBox:I

    sput v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 56
    sget v2, Lcom/google/android/material/R$attr;->state_error:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    const v6, 0x101009e

    aput v6, v5, v3

    aput v2, v5, v0

    aput-object v5, v1, v3

    new-array v2, v4, [I

    .line 57
    fill-array-data v2, :array_0

    aput-object v2, v1, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_1

    aput-object v0, v1, v4

    new-array v0, v4, [I

    fill-array-data v0, :array_2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-array v0, v4, [I

    fill-array-data v0, :array_3

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a0
    .end array-data

    :array_2
    .array-data 4
        -0x101009e
        0x10100a0
    .end array-data

    :array_3
    .array-data 4
        -0x101009e
        -0x10100a0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 92
    sget v0, Lcom/google/android/material/R$attr;->checkboxStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 96
    sget v4, Lcom/google/android/material/checkbox/MaterialCheckBox;->DEF_STYLE_RES:I

    invoke-static {p1, p2, p3, v4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    .line 98
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 100
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialCheckBox:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 101
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 106
    sget p3, Lcom/google/android/material/R$styleable;->MaterialCheckBox_buttonTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p1, p2, p3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 113
    :cond_0
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_useMaterialThemeColors:I

    .line 114
    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    .line 115
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_centerIfNoTextEnabled:I

    const/4 p3, 0x1

    .line 116
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    .line 117
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorShown:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 118
    sget p1, Lcom/google/android/material/R$styleable;->MaterialCheckBox_errorAccessibilityLabel:I

    .line 119
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    .line 121
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;
    .locals 8

    .line 311
    iget-object v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Lcom/google/android/material/checkbox/MaterialCheckBox;->CHECKBOX_STATES:[[I

    array-length v1, v0

    new-array v1, v1, [I

    .line 313
    sget v2, Lcom/google/android/material/R$attr;->colorControlActivated:I

    invoke-static {p0, v2}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v2

    .line 314
    sget v3, Lcom/google/android/material/R$attr;->colorError:I

    invoke-static {p0, v3}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v3

    .line 315
    sget v4, Lcom/google/android/material/R$attr;->colorSurface:I

    invoke-static {p0, v4}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v4

    .line 316
    sget v5, Lcom/google/android/material/R$attr;->colorOnSurface:I

    invoke-static {p0, v5}, Lcom/google/android/material/color/MaterialColors;->getColor(Landroid/view/View;I)I

    move-result v5

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 319
    invoke-static {v4, v3, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    aput v3, v1, v6

    const/4 v3, 0x1

    .line 321
    invoke-static {v4, v2, v7}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x2

    const v3, 0x3f0a3d71    # 0.54f

    .line 323
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x3ec28f5c    # 0.38f

    .line 325
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v6

    aput v6, v1, v2

    const/4 v2, 0x4

    .line 327
    invoke-static {v4, v5, v3}, Lcom/google/android/material/color/MaterialColors;->layer(IIF)I

    move-result v3

    aput v3, v1, v2

    .line 329
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v2, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    .line 331
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->materialThemeColorsTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method


# virtual methods
.method public getErrorAccessibilityLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isErrorShown()Z
    .locals 0

    .line 209
    iget-boolean p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/widget/CheckBox;->onAttachedToWindow()V

    .line 155
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, v0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setUseMaterialThemeColors(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 162
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 165
    sget-object p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->ERROR_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/widget/CheckBox;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 127
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    invoke-static {p0}, Landroidx/core/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 131
    :goto_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, v1

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    int-to-float v3, v2

    const/4 v4, 0x0

    .line 134
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 135
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 136
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 138
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 141
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-static {p0, v0, v1, v3, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void

    .line 148
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 173
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->isErrorShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setCenterIfNoTextEnabled(Z)V
    .locals 0

    .line 299
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->centerIfNoTextEnabled:Z

    return-void
.end method

.method public setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorAccessibilityLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setErrorAccessibilityLabelResource(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/checkbox/MaterialCheckBox;->setErrorAccessibilityLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setErrorShown(Z)V
    .locals 2

    .line 192
    iget-boolean v0, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 195
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    .line 196
    invoke-virtual {p0}, Landroid/widget/CheckBox;->refreshDrawableState()V

    .line 197
    iget-object p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->onErrorChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;

    .line 198
    iget-boolean v1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->errorShown:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/checkbox/MaterialCheckBox$OnErrorChangedListener;->onErrorChanged(Lcom/google/android/material/checkbox/MaterialCheckBox;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUseMaterialThemeColors(Z)V
    .locals 0

    .line 281
    iput-boolean p1, p0, Lcom/google/android/material/checkbox/MaterialCheckBox;->useMaterialThemeColors:Z

    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/google/android/material/checkbox/MaterialCheckBox;->getMaterialThemeColorsTintList()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 285
    invoke-static {p0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method
