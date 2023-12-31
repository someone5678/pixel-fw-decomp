.class public Lcom/android/setupwizardlib/GlifRecyclerLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifRecyclerLayout.java"


# instance fields
.field protected mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0, p1, p2}, Lcom/android/setupwizardlib/template/RecyclerMixin;->parseAttributes(Landroid/util/AttributeSet;I)V

    .line 68
    const-class p1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    iget-object p2, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0, p1, p2}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 70
    const-class p1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 71
    new-instance p2, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;

    .line 72
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifRecyclerLayout;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroidx/recyclerview/widget/RecyclerView;)V

    .line 71
    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    .line 103
    sget p1, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public findManagedViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getHeader()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "+",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    return-object p0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDividerInset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 156
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInset()I

    move-result p0

    return p0
.end method

.method public getDividerInsetEnd()I
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetEnd()I

    move-result p0

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getDividerInsetStart()I

    move-result p0

    return p0
.end method

.method public getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 84
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_recycler_template:I

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 77
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 78
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/RecyclerMixin;->onLayout()V

    return-void
.end method

.method protected onTemplateInflated()V
    .locals 2

    .line 91
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_recycler_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 93
    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerMixin;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v1, p0, v0}, Lcom/android/setupwizardlib/template/RecyclerMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    return-void

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "GlifRecyclerLayout should use a template with recycler view"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 134
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerInset(I)V

    return-void
.end method

.method public setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifRecyclerLayout;->mRecyclerMixin:Lcom/android/setupwizardlib/template/RecyclerMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/RecyclerMixin;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    return-void
.end method
