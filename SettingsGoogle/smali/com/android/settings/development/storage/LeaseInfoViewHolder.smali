.class Lcom/android/settings/development/storage/LeaseInfoViewHolder;
.super Ljava/lang/Object;
.source "LeaseInfoViewHolder.java"


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field leaseDescription:Landroid/widget/TextView;

.field leaseExpiry:Landroid/widget/TextView;

.field leasePackageName:Landroid/widget/TextView;

.field rootView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/storage/LeaseInfoViewHolder;
    .locals 1

    if-eqz p1, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/development/storage/LeaseInfoViewHolder;

    return-object p0

    :cond_0
    const p1, 0x7f06011c

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 42
    new-instance p1, Lcom/android/settings/development/storage/LeaseInfoViewHolder;

    invoke-direct {p1}, Lcom/android/settings/development/storage/LeaseInfoViewHolder;-><init>()V

    .line 43
    iput-object p0, p1, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->rootView:Landroid/view/View;

    const v0, 0x7f0d00a7

    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->appIcon:Landroid/widget/ImageView;

    const v0, 0x7f0d037e

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leasePackageName:Landroid/widget/TextView;

    const v0, 0x7f0d037c

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseDescription:Landroid/widget/TextView;

    const v0, 0x7f0d037d

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/android/settings/development/storage/LeaseInfoViewHolder;->leaseExpiry:Landroid/widget/TextView;

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method
