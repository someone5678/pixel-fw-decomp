.class public Lcom/android/settings/accessibility/TextReadingPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "TextReadingPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mEntryPoint:I

.field private mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

.field mNeedResetSettings:Z

.field mResetStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$E_z7stQyf4E-lzwdUyyV1cjksRU(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->lambda$createPreferenceControllers$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wPNiFc-hDZDI9NQg47u2nVZlrf8(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->lambda$getResetStateListeners$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z261bgvFjrmY2zHmZLzeLeYfoEc(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->lambda$getResetStateListeners$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zPFbrOMZi2Ors18lR0_cpRRoCHs(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->onPositiveButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 248
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f160010

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void
.end method

.method private getResetStateListeners()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 244
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 245
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private synthetic lambda$createPreferenceControllers$0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x3f1

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private static synthetic lambda$getResetStateListeners$1(Lcom/android/settingslib/core/AbstractPreferenceController;)Z
    .locals 0

    .line 244
    instance-of p0, p0, Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    return p0
.end method

.method private static synthetic lambda$getResetStateListeners$2(Lcom/android/settingslib/core/AbstractPreferenceController;)Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;
    .locals 0

    .line 245
    check-cast p0, Lcom/android/settings/accessibility/TextReadingResetController$ResetStateListener;

    return-object p0
.end method

.method private onPositiveButtonClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    const/16 p1, 0x3f1

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 231
    iput-boolean p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    .line 232
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->resetState()V

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    new-instance p2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 237
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f040174

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateEntryPoint()V
    .locals 4

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "launched_from"

    .line 210
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 211
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->isCallingFromAnythingElseEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 216
    :cond_1
    iput v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    return-void
.end method


# virtual methods
.method createDisplaySizeData(Landroid/content/Context;)Lcom/android/settings/accessibility/DisplaySizeData;
    .locals 0

    .line 205
    new-instance p0, Lcom/android/settings/accessibility/DisplaySizeData;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/DisplaySizeData;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->updateEntryPoint()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    new-instance v1, Lcom/android/settings/accessibility/FontSizeData;

    invoke-direct {v1, p1}, Lcom/android/settings/accessibility/FontSizeData;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->createDisplaySizeData(Landroid/content/Context;)Lcom/android/settings/accessibility/DisplaySizeData;

    move-result-object v2

    .line 129
    new-instance v3, Lcom/android/settings/accessibility/TextReadingPreviewController;

    const-string/jumbo v4, "preview"

    invoke-direct {v3, p1, v4, v1, v2}, Lcom/android/settings/accessibility/TextReadingPreviewController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/FontSizeData;Lcom/android/settings/accessibility/DisplaySizeData;)V

    .line 131
    iget v4, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v3, v4}, Lcom/android/settings/accessibility/TextReadingPreviewController;->setEntryPoint(I)V

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    new-instance v4, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    const-string v5, "font_size"

    invoke-direct {v4, p1, v5, v1}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V

    .line 136
    invoke-virtual {v4, v3}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V

    .line 137
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-instance v1, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;

    const-string v4, "display_size"

    invoke-direct {v1, p1, v4, v2}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/accessibility/PreviewSizeData;)V

    .line 141
    invoke-virtual {v1, v3}, Lcom/android/settings/accessibility/PreviewSizeSeekBarController;->setInteractionListener(Lcom/android/settings/accessibility/PreviewSizeSeekBarController$ProgressInteractionListener;)V

    .line 142
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v1, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    const-string/jumbo v2, "toggle_force_bold_text"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    .line 146
    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;->setEntryPoint(I)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mFontWeightAdjustmentController:Lcom/android/settings/accessibility/FontWeightAdjustmentPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v1, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;

    const-string/jumbo v2, "toggle_high_text_contrast_preference"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 151
    iget v2, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/HighTextContrastPreferenceController;->setEntryPoint(I)V

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/android/settings/accessibility/TextReadingResetController;

    new-instance v2, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V

    const-string/jumbo v3, "reset"

    invoke-direct {v1, p1, v3, v2}, Lcom/android/settings/accessibility/TextReadingResetController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 157
    iget p1, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mEntryPoint:I

    invoke-virtual {v1, p1}, Lcom/android/settings/accessibility/TextReadingResetController;->setEntryPoint(I)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p0}, Lcom/android/settings/accessibility/TextReadingResetController;->setVisible(Z)V

    .line 159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x784

    return p0

    .line 186
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getDialogMetricsCategory(I)I

    move-result p0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextReadingPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x778

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f160010

    return p0
.end method

.method protected isCallingFromAnythingElseEntryPoint()Z
    .locals 1

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "setupwizard"

    .line 200
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    .line 99
    invoke-direct {p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->getResetStateListeners()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string v0, "need_reset_settings"

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mResetStateListeners:Ljava/util/List;

    new-instance p1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_0

    .line 167
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f04016b

    .line 168
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f040169

    .line 169
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f04016a

    new-instance v1, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/TextReadingPreferenceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/TextReadingPreferenceFragment;)V

    .line 170
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const p1, 0x7f0405e3

    const/4 v0, 0x0

    .line 173
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 174
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    .line 177
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported dialogId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 191
    iget-boolean p0, p0, Lcom/android/settings/accessibility/TextReadingPreferenceFragment;->mNeedResetSettings:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const-string v0, "need_reset_settings"

    .line 192
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
