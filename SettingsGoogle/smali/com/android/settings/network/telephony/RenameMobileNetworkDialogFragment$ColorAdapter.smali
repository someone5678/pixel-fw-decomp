.class Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RenameMobileNetworkDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItemResId:I

.field final synthetic this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;Landroid/content/Context;I[Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    .line 204
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 205
    iput-object p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    .line 206
    iput p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 232
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 211
    iget-object p3, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 212
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    .line 215
    iget p2, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->mItemResId:I

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const/4 p3, 0x0

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$ColorAdapter;->this$0:Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const/4 p3, 0x1

    :cond_1
    const v0, 0x7f0d018c

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 223
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-static {v1, p3}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->-$$Nest$mgetDrawable(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;Z)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const p3, 0x7f0d018d

    .line 224
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 225
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;

    invoke-static {p0}, Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;->-$$Nest$mgetLabel(Lcom/android/settings/network/telephony/RenameMobileNetworkDialogFragment$Color;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
