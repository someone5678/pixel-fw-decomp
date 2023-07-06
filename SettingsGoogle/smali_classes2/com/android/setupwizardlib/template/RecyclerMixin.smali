.class public Lcom/android/setupwizardlib/template/RecyclerMixin;
.super Ljava/lang/Object;
.source "RecyclerMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private defaultDivider:Landroid/graphics/drawable/Drawable;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

.field private dividerInsetEnd:I

.field private dividerInsetStart:I

.field private header:Landroid/view/View;

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final templateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 77
    new-instance v0, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 80
    iput-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    instance-of p1, p2, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    if-eqz p1, :cond_0

    .line 84
    move-object p1, p2

    check-cast p1, Lcom/android/setupwizardlib/view/HeaderRecyclerView;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->header:Landroid/view/View;

    .line 87
    :cond_0
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    return-void
.end method

.method private updateDivider()V
    .locals 7

    .line 221
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetStart:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetEnd:I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 228
    invoke-static/range {v1 .. v6}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 235
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    .line 167
    instance-of v0, p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 168
    check-cast p0, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/HeaderRecyclerView$HeaderAdapter;->getWrappedAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerInset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetStart()I

    move-result p0

    return p0
.end method

.method public getDividerInsetEnd()I
    .locals 0

    .line 215
    iget p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetEnd:I

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0

    .line 210
    iget p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetStart:I

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->header:Landroid/view/View;

    return-object p0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public onLayout()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    :cond_0
    return-void
.end method

.method public parseAttributes(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin:[I

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_android_entries:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    new-instance v1, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v1, v0}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Lcom/android/setupwizardlib/items/SimpleInflater;->inflate(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/setupwizardlib/items/ItemHierarchy;

    .line 107
    new-instance v0, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    invoke-direct {v0, p2}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    .line 108
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwHasStableIds:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    :cond_0
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInset:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    if-eq p2, v0, :cond_1

    .line 113
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInset(I)V

    goto :goto_0

    .line 115
    :cond_1
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInsetStart:I

    .line 116
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    .line 117
    sget v0, Lcom/android/setupwizardlib/R$styleable;->SuwRecyclerMixin_suwDividerInsetEnd:I

    .line 118
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 119
    invoke-virtual {p0, p2, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInsets(II)V

    .line 122
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInsets(II)V

    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    .line 194
    iput p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetStart:I

    .line 195
    iput p2, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerInsetEnd:I

    .line 196
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    return-void
.end method

.method public setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 252
    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->dividerDecoration:Lcom/android/setupwizardlib/DividerItemDecoration;

    .line 253
    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerMixin;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 254
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->updateDivider()V

    return-void
.end method
