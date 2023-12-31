.class public Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;
.super Ljava/lang/Object;
.source "ActivityEmbeddingUtils.java"


# direct methods
.method public static getMinCurrentScreenSplitWidthDp()I
    .locals 1

    const/16 v0, 0x2d0

    return v0
.end method

.method public static getMinSmallestScreenSplitWidthDp()I
    .locals 1

    const/16 v0, 0x258

    return v0
.end method

.method public static getSplitRatio(Landroid/content/Context;)F
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b00fd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    return p0
.end method

.method public static isEmbeddingActivityEnabled(Landroid/content/Context;)Z
    .locals 4

    const-string/jumbo v0, "settings_support_large_screen"

    .line 64
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 66
    invoke-static {p0}, Landroidx/window/embedding/SplitController;->getInstance(Landroid/content/Context;)Landroidx/window/embedding/SplitController;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitController;->isSplitSupported()Z

    move-result p0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFlagEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityEmbeddingUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSplitSupported = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRegularHomepageLayout(Landroid/app/Activity;)Z
    .locals 3

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 77
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    const/high16 v2, 0x43be0000    # 380.0f

    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
