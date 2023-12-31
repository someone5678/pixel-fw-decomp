.class Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NetworkRequestDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEntryAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/wifitrackerlib/WifiEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceId:I

.field final synthetic this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/android/wifitrackerlib/WifiEntry;",
            ">;)V"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;->this$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    .line 308
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 309
    iput p3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;->mResourceId:I

    .line 310
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 316
    iget-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$WifiEntryAdapter;->mResourceId:I

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0d068f

    .line 318
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 320
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    const p3, 0x1020016

    .line 325
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_1

    .line 328
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 329
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p3, 0x1020010

    .line 332
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    .line 334
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary()Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 336
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const p3, 0x1020006

    .line 343
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/preference/internal/PreferenceImageView;

    .line 344
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result p1

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 346
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 347
    invoke-static {p1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result p1

    .line 346
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 349
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1010429

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 348
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 350
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-object p2
.end method
