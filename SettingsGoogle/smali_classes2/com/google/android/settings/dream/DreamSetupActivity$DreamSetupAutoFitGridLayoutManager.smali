.class Lcom/google/android/settings/dream/DreamSetupActivity$DreamSetupAutoFitGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "DreamSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/settings/dream/DreamSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DreamSetupAutoFitGridLayoutManager"
.end annotation


# instance fields
.field private final mColumnWidth:F


# direct methods
.method constructor <init>(Landroid/content/Context;IF)V
    .locals 0

    .line 329
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 330
    iput p3, p0, Lcom/google/android/settings/dream/DreamSetupActivity$DreamSetupAutoFitGridLayoutManager;->mColumnWidth:F

    return-void
.end method


# virtual methods
.method public onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 335
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 336
    iget v1, p0, Lcom/google/android/settings/dream/DreamSetupActivity$DreamSetupAutoFitGridLayoutManager;->mColumnWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 337
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    .line 338
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;->onLayoutChildren(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
