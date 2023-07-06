.class public Lcom/android/setupwizardlib/items/Item;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "Item.java"


# instance fields
.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private layoutRes:I

.field private summary:Ljava/lang/CharSequence;

.field private title:Ljava/lang/CharSequence;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->enabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->visible:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getDefaultLayoutResource()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/items/Item;->layoutRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->enabled:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/Item;->visible:Z

    .line 48
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/Item;->enabled:Z

    .line 50
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    .line 51
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/Item;->title:Ljava/lang/CharSequence;

    .line 52
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_summary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/Item;->summary:Ljava/lang/CharSequence;

    .line 53
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_layout:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getDefaultLayoutResource()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/items/Item;->layoutRes:I

    .line 54
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwItem_android_visible:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/Item;->visible:Z

    .line 55
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    .line 69
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->isVisible()Z

    move-result p0

    return p0
.end method

.method protected getDefaultLayoutResource()I
    .locals 0

    .line 59
    sget p0, Lcom/android/setupwizardlib/R$layout;->suw_items_default:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/setupwizardlib/items/Item;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLayoutResource()I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/setupwizardlib/items/Item;->layoutRes:I

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/setupwizardlib/items/Item;->summary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/setupwizardlib/items/Item;->title:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getViewId()I
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;->getId()I

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/setupwizardlib/items/Item;->enabled:Z

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 127
    iget-boolean p0, p0, Lcom/android/setupwizardlib/items/Item;->visible:Z

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    .line 137
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_summary:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 142
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    :goto_0
    sget v0, Lcom/android/setupwizardlib/R$id;->suw_items_icon_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 152
    sget v3, Lcom/android/setupwizardlib/R$id;->suw_items_icon:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 155
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0, v3, v1}, Lcom/android/setupwizardlib/items/Item;->onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 157
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 160
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :goto_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/Item;->getViewId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method protected onMergeIconStateAndLevels(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 172
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/widget/ImageView;->setImageState([IZ)V

    .line 173
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void
.end method
