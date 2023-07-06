.class public Lcom/android/setupwizardlib/GlifLayout;
.super Lcom/android/setupwizardlib/TemplateLayout;
.source "GlifLayout.java"


# instance fields
.field private backgroundBaseColor:Landroid/content/res/ColorStateList;

.field private backgroundPatterned:Z

.field private layoutFullscreen:Z

.field private primaryColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundPatterned:Z

    .line 77
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->layoutFullscreen:Z

    .line 89
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    const/4 p2, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundPatterned:Z

    .line 77
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->layoutFullscreen:Z

    .line 94
    sget p1, Lcom/android/setupwizardlib/R$attr;->suwLayoutTheme:I

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/TemplateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundPatterned:Z

    .line 77
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->layoutFullscreen:Z

    .line 100
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 106
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 107
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/setupwizardlib/template/IconMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 108
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/ProgressBarMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 109
    const-class v0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ButtonFooterMixin;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/ButtonFooterMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 110
    new-instance v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;)V

    .line 111
    const-class v1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifLayout;->getScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 115
    new-instance v2, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;

    invoke-direct {v2, v0, v1}, Lcom/android/setupwizardlib/template/ScrollViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwColorPrimary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->setPrimaryColor(Landroid/content/res/ColorStateList;)V

    .line 127
    :cond_1
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundBaseColor:I

    .line 128
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 129
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V

    .line 131
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwBackgroundPatterned:I

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 133
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->setBackgroundPatterned(Z)V

    .line 135
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwFooter:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->inflateFooter(I)Landroid/view/View;

    .line 140
    :cond_2
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwStickyHeader:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_3

    .line 142
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/GlifLayout;->inflateStickyHeader(I)Landroid/view/View;

    .line 145
    :cond_3
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwGlifLayout_suwLayoutFullscreen:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/GlifLayout;->layoutFullscreen:Z

    .line 147
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 149
    iget-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->layoutFullscreen:Z

    if-eqz p1, :cond_4

    const/16 p1, 0x400

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    :cond_4
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 287
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_pattern_bg:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 290
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/setupwizardlib/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 293
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 296
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundPatterned:Z

    if-eqz p0, :cond_2

    .line 297
    new-instance p0, Lcom/android/setupwizardlib/GlifPatternDrawable;

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/GlifPatternDrawable;-><init>(I)V

    goto :goto_1

    .line 298
    :cond_2
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 299
    :goto_1
    instance-of v1, v0, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    if-eqz v1, :cond_3

    .line 300
    check-cast v0, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;

    invoke-virtual {v0, p0}, Lcom/android/setupwizardlib/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 302
    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 165
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_layout_content:I

    .line 167
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundBaseColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getHeaderColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 224
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 225
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderText()Ljava/lang/CharSequence;
    .locals 1

    .line 215
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderTextView()Landroid/widget/TextView;
    .locals 1

    .line 203
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/HeaderMixin;->getTextView()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 233
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/IconMixin;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getScrollView()Landroid/widget/ScrollView;
    .locals 1

    .line 198
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    .line 199
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ScrollView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public inflateFooter(I)Landroid/view/View;
    .locals 1

    .line 178
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 179
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 180
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public inflateStickyHeader(I)Landroid/view/View;
    .locals 1

    .line 192
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_sticky_header:I

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 193
    invoke-virtual {p0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 194
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    .line 157
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_template:I

    .line 159
    :cond_0
    sget v0, Lcom/android/setupwizardlib/R$style;->SuwThemeGlif_Light:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/setupwizardlib/TemplateLayout;->inflateTemplate(Landroid/view/LayoutInflater;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setBackgroundBaseColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundBaseColor:Landroid/content/res/ColorStateList;

    .line 260
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    return-void
.end method

.method public setBackgroundPatterned(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/android/setupwizardlib/GlifLayout;->backgroundPatterned:Z

    .line 278
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    return-void
.end method

.method public setHeaderColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 219
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ColoredHeaderMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setHeaderText(I)V
    .locals 1

    .line 207
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(I)V

    return-void
.end method

.method public setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 211
    const-class v0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/HeaderMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/HeaderMixin;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 229
    const-class v0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/IconMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/IconMixin;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrimaryColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 241
    iput-object p1, p0, Lcom/android/setupwizardlib/GlifLayout;->primaryColor:Landroid/content/res/ColorStateList;

    .line 242
    invoke-direct {p0}, Lcom/android/setupwizardlib/GlifLayout;->updateBackground()V

    .line 243
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setProgressBarShown(Z)V
    .locals 1

    .line 312
    const-class v0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p0

    check-cast p0, Lcom/android/setupwizardlib/template/ProgressBarMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ProgressBarMixin;->setShown(Z)V

    return-void
.end method
