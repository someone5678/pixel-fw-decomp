.class public Lcom/android/settings/display/ScreenResolutionFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ScreenResolutionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;,
        Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

.field private mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

.field private mResolutions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mScreenResolutionOptions:[Ljava/lang/String;

.field private mScreenResolutionSummaries:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 284
    new-instance v0, Lcom/android/settings/display/ScreenResolutionFragment$1;

    const v1, 0x7f1600d5

    invoke-direct {v0, v1}, Lcom/android/settings/display/ScreenResolutionFragment$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/display/ScreenResolutionFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method private getAllSupportedResolution()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 138
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getPreferMode(I)Landroid/view/Display$Mode;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResolutions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 147
    iget v2, v1, Landroid/graphics/Point;->x:I

    if-ne v2, p1, :cond_0

    .line 148
    new-instance p1, Landroid/view/Display$Mode;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDisplayMode()Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p0

    invoke-direct {p1, v0, v1, p0}, Landroid/view/Display$Mode;-><init>(IIF)V

    return-object p1

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDisplayMode()Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method private updateIllustrationImage(Lcom/android/settingslib/widget/IllustrationPreference;)V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const p0, 0x7f0204ac

    .line 238
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    goto :goto_0

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object p0, p0, v1

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0204ad

    .line 240
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/IllustrationPreference;->setLottieAnimationResId(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/display/ScreenResolutionFragment;->updateIllustrationImage(Lcom/android/settingslib/widget/IllustrationPreference;)V

    .line 97
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 99
    new-instance p0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0411e0

    .line 100
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(I)V

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    const v0, 0x7f0601a9

    .line 102
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 103
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 113
    check-cast p3, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;

    .line 114
    invoke-virtual {p3}, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->loadSummary()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 115
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 122
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 123
    new-instance v3, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionSummaries:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v2, v5}, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getDisplayMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenResolutionFragment;->getKeyForResolution(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayMode()Landroid/view/Display$Mode;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method getKeyForResolution(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x438

    if-ne p1, v0, :cond_0

    .line 184
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a0

    if-ne p1, v0, :cond_1

    .line 185
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x780

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1600d5

    return p0
.end method

.method getWidthForResoluitonKey(Ljava/lang/String;)I
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x438

    goto :goto_0

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x5a0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 76
    const-class v0, Landroid/hardware/display/DisplayManager;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    .line 78
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f010072

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionOptions:[Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f010073

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mScreenResolutionSummaries:[Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/android/settings/display/ScreenResolutionFragment;->getAllSupportedResolution()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResolutions:Ljava/util/Set;

    .line 85
    new-instance v0, Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-direct {v0, p1}, Lcom/android/settingslib/widget/IllustrationPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    .line 86
    new-instance v0, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    invoke-direct {v0, p1}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 4

    .line 217
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/settings/display/ScreenResolutionFragment;->getWidthForResoluitonKey(Ljava/lang/String;)I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    invoke-static {v1, v0}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->-$$Nest$msetPendingResolutionChange(Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/16 v1, 0x4000

    .line 225
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 226
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0411e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 230
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonClicked(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->getWidthForResoluitonKey(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 209
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->setDisplayMode(I)V

    .line 210
    iget-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mImagePreference:Lcom/android/settingslib/widget/IllustrationPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->updateIllustrationImage(Lcom/android/settingslib/widget/IllustrationPreference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDisplayMode(I)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDisplayObserver:Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/settings/display/ScreenResolutionFragment$DisplayObserver;->startObserve()V

    .line 170
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->getPreferMode(I)Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->getPreferMode(I)Landroid/view/Display$Mode;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "user_selected_resolution"

    .line 169
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    iget-object v0, p0, Lcom/android/settings/display/ScreenResolutionFragment;->mDefaultDisplay:Landroid/view/Display;

    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenResolutionFragment;->getPreferMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Display;->setUserPreferredDisplayMode(Landroid/view/Display$Mode;)V

    return-void
.end method
