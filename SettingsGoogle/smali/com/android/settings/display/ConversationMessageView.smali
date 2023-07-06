.class public Lcom/android/settings/display/ConversationMessageView;
.super Landroid/widget/FrameLayout;
.source "ConversationMessageView.java"


# instance fields
.field private mContactIconView:Landroid/widget/TextView;

.field private final mIconBackgroundColor:I

.field private final mIconText:Ljava/lang/CharSequence;

.field private final mIconTextColor:I

.field private final mIncoming:Z

.field private mMessageBubble:Landroid/widget/LinearLayout;

.field private final mMessageText:Ljava/lang/CharSequence;

.field private mMessageTextAndInfoView:Landroid/view/ViewGroup;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mStatusTextView:Landroid/widget/TextView;

.field private final mTimestampText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/display/ConversationMessageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    sget-object p3, Lcom/android/settings/R$styleable;->ConversationMessageView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x3

    const/4 p4, 0x1

    .line 74
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    const/4 p3, 0x4

    .line 75
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    const/4 p3, 0x5

    .line 76
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    .line 77
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 78
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    .line 79
    invoke-virtual {p2, p4, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    .line 81
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0600a9

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0600a8

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private static getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 270
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method private static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateTextAppearance()V
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v0, :cond_0

    const v1, 0x7f0a02c1

    goto :goto_0

    :cond_0
    const v1, 0x7f0a02c2

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0a043c

    goto :goto_1

    :cond_1
    const v0, 0x7f0a043d

    .line 256
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    .line 258
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 260
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateViewAppearance()V
    .locals 12

    .line 193
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02fb

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f0b0300

    .line 197
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const v3, 0x7f0b0301

    .line 199
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f0b02ff

    .line 201
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 208
    iget-boolean v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move v7, v1

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v5, :cond_1

    move v1, v6

    :cond_1
    if-eqz v5, :cond_2

    const v5, 0x800013

    goto :goto_1

    :cond_2
    const v5, 0x800015

    :goto_1
    const v8, 0x7f0b02fe

    .line 214
    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x7f0b02fd

    .line 216
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 220
    iget-boolean v9, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v9, :cond_3

    const v9, 0x7f0a02ba

    goto :goto_2

    :cond_3
    const v9, 0x7f0a02bb

    .line 224
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f020175

    .line 227
    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 228
    invoke-virtual {v10, v9}, Landroid/content/Context;->getColor(I)I

    move-result v9

    .line 226
    invoke-static {v10, v11, v9}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 229
    iget-object v10, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 231
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 233
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v9, v2, v3, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_3

    .line 237
    :cond_4
    iget-object v9, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    add-int/2addr v3, v0

    invoke-virtual {v9, v2, v3, v2, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 243
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v8, v2, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7, v6, v1, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 248
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateTextAppearance()V

    return-void
.end method

.method private updateViewContent()V
    .locals 10

    .line 173
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mTimestampText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/display/ConversationMessageView;->mIconTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020174

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f02037c

    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 182
    new-instance v9, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/display/ConversationMessageView;->mIconBackgroundColor:I

    invoke-static {v4, v0, v5}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, v3, v2

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 186
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a02be

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 185
    invoke-static {v2, v1, v4}, Lcom/android/settings/display/ConversationMessageView;->getTintedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-direct {v9, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 187
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    const/4 v4, 0x1

    move-object v3, v9

    move v5, v8

    move v6, v8

    move v7, v8

    .line 188
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 189
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    const v0, 0x7f0d03bf

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    const v0, 0x7f0d03c3

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextAndInfoView:Landroid/view/ViewGroup;

    const v0, 0x7f0d03c2

    .line 90
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageTextView:Landroid/widget/TextView;

    const v0, 0x7f0d03c1

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mStatusTextView:Landroid/widget/TextView;

    const v0, 0x7f0d01af

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewContent()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 132
    invoke-static {p0}, Lcom/android/settings/display/ConversationMessageView;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    .line 134
    iget-object p3, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p3

    .line 135
    iget-object p5, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p5

    .line 136
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    sub-int/2addr p4, p2

    sub-int p2, p4, p3

    .line 137
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 138
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 144
    iget-boolean v2, p0, Lcom/android/settings/display/ConversationMessageView;->mIncoming:Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 146
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    goto :goto_1

    .line 149
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p4

    :goto_0
    add-int p1, p4, p3

    goto :goto_2

    .line 157
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p1

    :goto_1
    sub-int/2addr p4, p1

    sub-int/2addr p4, p3

    sub-int p1, p4, p2

    .line 162
    :goto_2
    iget-object v2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    add-int/2addr p3, p4

    add-int/2addr p5, v0

    invoke-virtual {v2, p4, v0, p3, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    add-int/2addr p2, p1

    add-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 98
    invoke-direct {p0}, Lcom/android/settings/display/ConversationMessageView;->updateViewAppearance()V

    .line 100
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 p2, 0x0

    .line 102
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 103
    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 105
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    .line 107
    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    .line 106
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 109
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1, p2, p2}, Landroid/widget/TextView;->measure(II)V

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b02fb

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 117
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    sub-int/2addr v1, p2

    .line 118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr v1, p2

    const/high16 p2, -0x80000000

    .line 119
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 122
    iget-object v1, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 124
    iget-object p2, p0, Lcom/android/settings/display/ConversationMessageView;->mContactIconView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/display/ConversationMessageView;->mMessageBubble:Landroid/widget/LinearLayout;

    .line 125
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 124
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 126
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
