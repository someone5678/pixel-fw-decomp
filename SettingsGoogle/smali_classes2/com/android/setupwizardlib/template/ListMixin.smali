.class public Lcom/android/setupwizardlib/template/ListMixin;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private defaultDivider:Landroid/graphics/drawable/Drawable;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerInsetEnd:I

.field private dividerInsetStart:I

.field private listView:Landroid/widget/ListView;

.field private final templateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 57
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 58
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin:[I

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 61
    sget p3, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_android_entries:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 63
    new-instance v0, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Lcom/android/setupwizardlib/items/SimpleInflater;->inflate(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/items/ItemGroup;

    .line 64
    new-instance p3, Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-direct {p3, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    invoke-virtual {p0, p3}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    :cond_0
    sget p1, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInset:I

    const/4 p3, -0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    if-eq p1, p3, :cond_1

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    goto :goto_0

    .line 70
    :cond_1
    sget p1, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetStart:I

    .line 71
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    .line 72
    sget p3, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetEnd:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 73
    invoke-virtual {p0, p1, p3}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    .line 75
    :goto_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getListViewInternal()Landroid/widget/ListView;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->listView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->listView:Landroid/widget/ListView;

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/android/setupwizardlib/template/ListMixin;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method private updateDivider()V
    .locals 8

    .line 177
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isLayoutDirectionResolved()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 187
    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->defaultDivider:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/setupwizardlib/template/ListMixin;->dividerInsetStart:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/setupwizardlib/template/ListMixin;->dividerInsetEnd:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/setupwizardlib/template/ListMixin;->templateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    .line 190
    invoke-static/range {v2 .. v7}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 119
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 120
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 121
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/setupwizardlib/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerInset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result p0

    return p0
.end method

.method public getDividerInsetEnd()I
    .locals 0

    .line 173
    iget p0, p0, Lcom/android/setupwizardlib/template/ListMixin;->dividerInsetEnd:I

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0

    .line 168
    iget p0, p0, Lcom/android/setupwizardlib/template/ListMixin;->dividerInsetStart:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public onLayout()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->divider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->dividerInsetStart:I

    .line 153
    iput p2, p0, Lcom/android/setupwizardlib/template/ListMixin;->dividerInsetEnd:I

    .line 154
    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    return-void
.end method
