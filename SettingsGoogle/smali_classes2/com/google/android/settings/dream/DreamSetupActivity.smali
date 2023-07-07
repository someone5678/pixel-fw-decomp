.class public Lcom/google/android/settings/dream/DreamSetupActivity;
.super Landroid/app/Activity;
.source "DreamSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/settings/dream/DreamSetupActivity$DreamSetupAutoFitGridLayoutManager;,
        Lcom/google/android/settings/dream/DreamSetupActivity$NoDreamItem;,
        Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem;
    }
.end annotation


# instance fields
.field private mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field private mBackend:Lcom/android/settingslib/dream/DreamBackend;

.field private mNoDreamSelected:Z

.field private mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mPriorityDreams:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2ElL9szFsZhwNY6lND6XcsYC5fo(Lcom/google/android/settings/dream/DreamSetupActivity;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dream/DreamSetupActivity;->lambda$onCreate$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G1uhdboJ1HUFv3tjF9UkGhC-cDI(Lcom/google/android/settings/dream/DreamSetupActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dream/DreamSetupActivity;->onSecondaryButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rd4lHKFP3hjCRhvlzrGg5-oYedQ(Ljava/util/HashMap;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/settings/dream/DreamSetupActivity;->lambda$getDreamsComparator$2(Ljava/util/HashMap;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TPmLNz6GOymDxv8sWaenHeuBAIo(Lcom/google/android/settings/dream/DreamSetupActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/settings/dream/DreamSetupActivity;->onPrimaryButtonClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kqbJE8SFuahf5IskCyTwDsY1xNw(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/settings/dream/DreamSetupActivity;->lambda$onCreate$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveDream(Lcom/google/android/settings/dream/DreamSetupActivity;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackend(Lcom/google/android/settings/dream/DreamSetupActivity;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNoDreamSelected(Lcom/google/android/settings/dream/DreamSetupActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mNoDreamSelected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmActiveDream(Lcom/google/android/settings/dream/DreamSetupActivity;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNoDreamSelected(Lcom/google/android/settings/dream/DreamSetupActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mNoDreamSelected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePrimaryButtonState(Lcom/google/android/settings/dream/DreamSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/settings/dream/DreamSetupActivity;->updatePrimaryButtonState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mNoDreamSelected:Z

    return-void
.end method

.method private canCustomizeDream()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mPriorityDreams:[Ljava/lang/String;

    .line 144
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    .line 145
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getDreamPrioritiesMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 195
    :goto_0
    iget-object v2, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mPriorityDreams:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 196
    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getDreamsComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/google/android/settings/dream/DreamSetupActivity;->getDreamPrioritiesMap()Ljava/util/HashMap;

    move-result-object p0

    .line 205
    new-instance v0, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda4;-><init>(Ljava/util/HashMap;)V

    return-object v0
.end method

.method private static synthetic lambda$getDreamsComparator$2(Ljava/util/HashMap;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)I
    .locals 1

    .line 206
    iget-object p1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 207
    iget-object p2, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 210
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-nez p0, :cond_2

    const/4 p0, -0x1

    return p0

    .line 225
    :cond_2
    invoke-virtual {v0, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$onCreate$0(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem;
    .locals 2

    .line 82
    new-instance v0, Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem;-><init>(Lcom/google/android/settings/dream/DreamSetupActivity;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;Lcom/google/android/settings/dream/DreamSetupActivity$DreamItem-IA;)V

    return-object v0
.end method

.method private static synthetic lambda$onCreate$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return p0
.end method

.method private onPrimaryButtonClicked(Landroid/view/View;)V
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 154
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result v0

    .line 156
    invoke-direct {p0}, Lcom/google/android/settings/dream/DreamSetupActivity;->canCustomizeDream()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v2, v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 158
    invoke-static {p1, v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x65

    .line 162
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const/4 v1, -0x1

    .line 165
    invoke-static {p0, v1, p1}, Lcom/google/android/settings/setup/dock/DockWizardHelper;->goToNext(Landroid/app/Activity;ILandroid/content/Intent;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    const/4 p1, 0x0

    .line 169
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 170
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method private onSecondaryButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 184
    iget-object p1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/settingslib/dream/DreamBackend;->setWhenToDream(I)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isDeferredSetupWizard(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 186
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 189
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/android/settings/setup/dock/DockWizardHelper;->goToNext(Landroid/app/Activity;ILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updatePrimaryButtonState()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mNoDreamSelected:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x65

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/google/android/settings/setup/dock/DockWizardHelper;->goToNext(Landroid/app/Activity;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcom/google/android/settings/setup/dock/DockWizardHelper;->setTheme(Landroid/app/Activity;)V

    sget p1, Lcom/android/settings/R$layout;->dream_setup_layout:I

    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$array;->config_preinstalled_dream_components:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mPriorityDreams:[Ljava/lang/String;

    .line 78
    invoke-static {p0}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    .line 79
    invoke-virtual {p1}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 81
    invoke-direct {p0}, Lcom/google/android/settings/dream/DreamSetupActivity;->getDreamsComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/settings/dream/DreamSetupActivity;)V

    .line 82
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 83
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 84
    new-instance v1, Lcom/google/android/settings/dream/DreamSetupActivity$NoDreamItem;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/settings/dream/DreamSetupActivity$NoDreamItem;-><init>(Lcom/google/android/settings/dream/DreamSetupActivity;Lcom/google/android/settings/dream/DreamSetupActivity$NoDreamItem-IA;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 88
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 89
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 90
    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    :cond_0
    iput-object v2, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "setup_type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mActiveDream:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/google/android/settings/setup/dock/DockWizardHelper;->goToNext(Landroid/app/Activity;ILandroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 99
    :cond_1
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    sget v3, Lcom/android/settings/R$layout;->dream_item_suw_layout:I

    .line 100
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    sget v3, Lcom/android/settings/R$layout;->dream_no_screensaver_layout:I

    .line 101
    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 102
    new-instance v3, Lcom/android/settings/dream/DreamAdapter;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/dream/DreamAdapter;-><init>(Landroid/util/SparseIntArray;Ljava/util/List;)V

    sget p1, Lcom/android/settings/R$id;->setup_wizard_layout:I

    .line 104
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;

    .line 106
    invoke-virtual {p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 107
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ContentStyler;->getPartnerContentMarginStart(Landroid/content/Context;)F

    move-result v4

    float-to-int v4, v4

    .line 108
    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 114
    new-instance v2, Lcom/google/android/settings/dream/DreamSetupActivity$DreamSetupAutoFitGridLayoutManager;

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$dimen;->suw_dream_item_min_column_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, p0, v1, v4}, Lcom/google/android/settings/dream/DreamSetupActivity$DreamSetupAutoFitGridLayoutManager;-><init>(Landroid/content/Context;IF)V

    .line 114
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 118
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 119
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 121
    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 122
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/settings/dream/DreamSetupActivity;)V

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wizard_next:I

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 128
    invoke-direct {p0}, Lcom/google/android/settings/dream/DreamSetupActivity;->updatePrimaryButtonState()V

    .line 129
    iget-object v0, p0, Lcom/google/android/settings/dream/DreamSetupActivity;->mPrimaryButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 131
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/google/android/settings/dream/DreamSetupActivity$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/settings/dream/DreamSetupActivity;)V

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sim_action_no_thanks:I

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    const/4 v0, 0x7

    .line 134
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object p0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    const/4 p0, 0x2

    .line 138
    invoke-static {p0}, Lcom/google/android/settings/setup/dock/DockSetupLoggingUtils;->logSetupStart(I)V

    return-void
.end method
