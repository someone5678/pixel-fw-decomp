.class public Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "BluetoothFindBroadcastsFragment.java"


# instance fields
.field mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

.field private mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

.field mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

.field mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mDeviceAddress:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

.field mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

.field private mSourceId:I


# direct methods
.method public static synthetic $r8$lambda$NsWkeVHxDUDy5yTrVvY-NnHZojg(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->lambda$addSource$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WVjEPz3l7upzFOcIqb5-YciyRkY(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->lambda$createBluetoothBroadcastSourcePreference$0(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$r2lzL4P2KqXsRHe1G94gY2eqbK8(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->lambda$launchBroadcastCodeDialog$2(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSearchStarted(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->handleSearchStarted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSourceRemoved(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->handleSourceRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateListCategoryFromBroadcastMetadata(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->updateListCategoryFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "no_config_bluetooth"

    .line 163
    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    return-void
.end method

.method private addBroadcastCodeIntoPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Ljava/lang/String;)V
    .locals 1

    .line 393
    new-instance p0, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    .line 394
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;-><init>(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 395
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->setBroadcastCode([B)Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothLeBroadcastMetadata$Builder;->build()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p0

    const/4 p2, 0x0

    .line 397
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private addConnectedSourcePreference()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 444
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getAllSources(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v0

    .line 445
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 446
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->updateListCategoryFromBroadcastReceiveState(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    :cond_0
    return-void
.end method

.method private addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    :cond_1
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 387
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 388
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p1

    const/4 v1, 0x1

    .line 387
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->addSource(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "addSource: LeBroadcastAssistant or CachedDevice is null!"

    .line 374
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private createBluetoothBroadcastSourcePreference()Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;
    .locals 2

    .line 355
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;-><init>(Landroid/content/Context;)V

    .line 357
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private getScanFilter()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleSearchStarted()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V

    .line 428
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addConnectedSourcePreference()V

    return-void
.end method

.method private handleSourceRemoved()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-eqz v0, :cond_1

    .line 433
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->clearReceiveState()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    return-void
.end method

.method private synthetic lambda$addSource$1()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 382
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v1

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    .line 383
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method private synthetic lambda$createBluetoothBroadcastSourcePreference$0(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroidx/preference/Preference;)Z
    .locals 0

    .line 358
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "BluetoothLeBroadcastMetadata is null, do nothing."

    .line 359
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 362
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->isEncrypted()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 363
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->launchBroadcastCodeDialog(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    goto :goto_0

    .line 365
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$launchBroadcastCodeDialog$2(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p3, "BtFindBroadcastsFrg"

    const-string/jumbo p4, "setPositiveButton: clicked"

    .line 412
    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object p4

    if-nez p4, :cond_0

    const-string p0, "BluetoothLeBroadcastMetadata is null, do nothing."

    .line 414
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 417
    :cond_0
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addBroadcastCodeIntoPreference(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addSource(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    return-void
.end method

.method private launchBroadcastCodeDialog(Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V
    .locals 5

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f060072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0125

    .line 403
    invoke-virtual {v0, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0d0123

    .line 404
    invoke-virtual {v0, v3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 405
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0409e8

    .line 407
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 408
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, v3}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;Landroid/widget/EditText;)V

    const p0, 0x7f040492

    .line 410
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 423
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateListCategoryFromBroadcastMetadata(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    .line 318
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-nez v0, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->createBluetoothBroadcastSourcePreference()Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    move-result-object v0

    .line 321
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastMetadata;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 324
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateMetadataAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    xor-int/lit8 p1, p2, 0x1

    .line 325
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 328
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    if-eqz p0, :cond_1

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refreshUi()V

    :cond_1
    return-void
.end method

.method private updateListCategoryFromBroadcastReceiveState(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    .line 336
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    if-nez v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->createBluetoothBroadcastSourcePreference()Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    move-result-object v0

    .line 339
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getBroadcastId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 342
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->updateReceiveStateAndRefreshUi(Landroid/bluetooth/BluetoothLeBroadcastReceiveState;)V

    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 345
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothLeBroadcastReceiveState;->getSourceId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->setSourceId(I)V

    .line 346
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSelectedPreference:Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    .line 349
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    if-eqz p0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;->refreshUi()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v6

    .line 283
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;-><init>(Landroid/content/Context;Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBluetoothFindBroadcastsHeaderController:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsHeaderController;

    .line 285
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method finishFragmentIfNecessary()V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 174
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 175
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    return-object p0
.end method

.method public getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;
    .locals 2

    .line 295
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v0, 0x0

    const-string v1, "BtFindBroadcastsFrg"

    if-nez p0, :cond_0

    const-string p0, "getLeBroadcastAssistant: LocalBluetoothManager is null!"

    .line 296
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getLeBroadcastAssistant: LocalBluetoothProfileManager is null!"

    .line 302
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastAssistantProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p0

    return-object p0
.end method

.method getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 0

    .line 168
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "BtFindBroadcastsFrg"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f16003b

    return p0
.end method

.method public getSourceId()I
    .locals 0

    .line 451
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSourceId:I

    return p0
.end method

.method public leaveBroadcastSession()V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getSourceId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->removeSource(Landroid/bluetooth/BluetoothDevice;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "BtFindBroadcastsFrg"

    const-string v0, "leaveBroadcastSession: LeBroadcastAssistant or CachedDevice is null!"

    .line 261
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mDeviceAddress:Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getLocalBluetoothManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 182
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getCachedDevice(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getLeBroadcastAssistant()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    .line 184
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mExecutor:Ljava/util/concurrent/Executor;

    .line 186
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 187
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string p1, "BtFindBroadcastsFrg"

    const-string v0, "onAttach() CachedDevice or LeBroadcastAssistant is null!"

    .line 190
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "broadcast_source_list"

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastSourceListCategory:Landroidx/preference/PreferenceCategory;

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 213
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->finishFragmentIfNecessary()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getScanFilter()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->addConnectedSourcePreference()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 206
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->registerServiceCallBack(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 225
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-eqz v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mBroadcastAssistantCallback:Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->unregisterServiceCallBack(Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;)V

    :cond_0
    return-void
.end method

.method public scanBroadcastSource()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mLeBroadcastAssistant:Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    if-nez v0, :cond_0

    const-string p0, "BtFindBroadcastsFrg"

    const-string/jumbo v0, "scanBroadcastSource: LeBroadcastAssistant is null!"

    .line 250
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->getScanFilter()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->startSearchingForSources(Ljava/util/List;)V

    return-void
.end method

.method public setSourceId(I)V
    .locals 0

    .line 455
    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->mSourceId:I

    return-void
.end method
