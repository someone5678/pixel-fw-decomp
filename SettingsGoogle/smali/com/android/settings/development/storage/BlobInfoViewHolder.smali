.class Lcom/android/settings/development/storage/BlobInfoViewHolder;
.super Ljava/lang/Object;
.source "BlobInfoViewHolder.java"


# instance fields
.field blobExpiry:Landroid/widget/TextView;

.field blobId:Landroid/widget/TextView;

.field blobLabel:Landroid/widget/TextView;

.field blobSize:Landroid/widget/TextView;

.field rootView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/storage/BlobInfoViewHolder;
    .locals 1

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/storage/BlobInfoViewHolder;

    return-object p0

    :cond_0
    const p1, 0x7f060069

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 41
    new-instance p1, Lcom/android/settings/development/storage/BlobInfoViewHolder;

    invoke-direct {p1}, Lcom/android/settings/development/storage/BlobInfoViewHolder;-><init>()V

    .line 42
    iput-object p0, p1, Lcom/android/settings/development/storage/BlobInfoViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f0d00f3

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobLabel:Landroid/widget/TextView;

    const v0, 0x7f0d00f2

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobId:Landroid/widget/TextView;

    const v0, 0x7f0d00f1

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobExpiry:Landroid/widget/TextView;

    const v0, 0x7f0d00f4

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/BlobInfoViewHolder;->blobSize:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method
