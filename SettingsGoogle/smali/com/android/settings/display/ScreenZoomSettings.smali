.class public Lcom/android/settings/display/ScreenZoomSettings;
.super Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.source "ScreenZoomSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mDefaultDensity:I

.field private mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

.field private mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/android/settings/display/ScreenZoomSettings$1;

    invoke-direct {v0}, Lcom/android/settings/display/ScreenZoomSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/display/ScreenZoomSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected commit()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    iget v1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    aget v0, v0, v1

    .line 96
    iget v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    if-ne v0, v1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Lcom/android/settingslib/display/DisplayDensityUtils;->clearForcedDisplayDensity()V

    goto :goto_0

    .line 99
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(I)V

    :goto_0
    return-void
.end method

.method protected createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
    .locals 1

    .line 85
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 86
    iget-object p0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    aget p0, p0, p2

    iput p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return-object v0
.end method

.method protected getActivityLayoutResId()I
    .locals 0

    const p0, 0x7f0601fc

    return p0
.end method

.method public getHelpResource()I
    .locals 0

    const p0, 0x7f040ad4

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x153

    return p0
.end method

.method protected getPreviewSampleResIds()[I
    .locals 2

    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [I

    .line 49
    fill-array-data p0, :array_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const v1, 0x7f0601fd

    aput v1, p0, v0

    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x7f0601fd
        0x7f0601fe
        0x7f060200
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    new-instance p1, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    .line 62
    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getCurrentIndexForDefaultDisplay()I

    move-result p1

    if-gez p1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 68
    iput-object v1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 70
    iput v2, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 71
    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensityValues()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mValues:[I

    .line 74
    iget-object v0, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensityEntries()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    .line 75
    iput p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    .line 76
    iget-object p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDensity:Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-virtual {p1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensityForDefaultDisplay()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/ScreenZoomSettings;->mDefaultDensity:I

    .line 79
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const p1, 0x7f04004b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method
