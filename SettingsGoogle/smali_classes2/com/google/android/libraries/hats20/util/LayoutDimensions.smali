.class public final Lcom/google/android/libraries/hats20/util/LayoutDimensions;
.super Ljava/lang/Object;
.source "LayoutDimensions.java"


# instance fields
.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->resources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getSurveyMaxHeight()I
    .locals 1

    .line 42
    iget-object p0, p0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_survey_max_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getSurveyMaxWidth()I
    .locals 1

    .line 38
    iget-object p0, p0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/libraries/hats20/R$dimen;->hats_lib_survey_max_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public isSurveyFullBleed()Z
    .locals 1

    .line 46
    iget-object p0, p0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/libraries/hats20/R$bool;->hats_lib_survey_is_full_bleed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public shouldSurveyDisplayCloseButton()Z
    .locals 1

    .line 63
    iget-object p0, p0, Lcom/google/android/libraries/hats20/util/LayoutDimensions;->resources:Landroid/content/res/Resources;

    sget v0, Lcom/google/android/libraries/hats20/R$bool;->hats_lib_survey_should_display_close_button:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public shouldSurveyDisplayScrim()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
