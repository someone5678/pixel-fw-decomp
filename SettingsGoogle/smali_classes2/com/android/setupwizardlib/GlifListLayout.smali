.class public Lcom/android/setupwizardlib/GlifListLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifListLayout.java"


# instance fields
.field private listMixin:Lcom/android/setupwizardlib/template/ListMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 66
    new-instance v0, Lcom/android/setupwizardlib/template/ListMixin;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/setupwizardlib/template/ListMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    .line 67
    const-class p1, Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    .line 69
    const-class p1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    .line 70
    new-instance p2, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;

    .line 71
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ListView;)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 0

    if-nez p1, :cond_0

    const p1, 0x102000a

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDividerInset()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInset()I

    move-result p0

    return p0
.end method

.method public getDividerInsetEnd()I
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetEnd()I

    move-result p0

    return p0
.end method

.method public getDividerInsetStart()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result p0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 83
    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_list_template:I

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 77
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->onLayout()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 111
    iget-object p0, p0, Lcom/android/setupwizardlib/GlifListLayout;->listMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    return-void
.end method
