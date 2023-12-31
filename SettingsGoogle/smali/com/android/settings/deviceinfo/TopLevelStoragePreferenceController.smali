.class public Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TopLevelStoragePreferenceController.java"


# instance fields
.field private final mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;


# direct methods
.method public static synthetic $r8$lambda$1OwYoTIdDWzYoT_RI67Uyho2pNQ(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->lambda$refreshSummaryThread$0(Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DXmmZJFSpU_Nu91eY19pZbYWwhg(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->lambda$refreshSummaryThread$1(Landroidx/preference/Preference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 43
    new-instance p2, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    invoke-direct {p2, p1}, Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;-><init>(Landroid/os/storage/StorageManager;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-void
.end method

.method private synthetic lambda$refreshSummaryThread$0(Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    long-to-double v2, v2

    div-double/2addr p3, v2

    .line 70
    invoke-virtual {p2, p3, p4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide p2, p5, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    .line 71
    invoke-static {p0, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    aput-object p0, v1, p2

    const p0, 0x7f04147c

    .line 69
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic lambda$refreshSummaryThread$1(Landroidx/preference/Preference;)V
    .locals 8

    .line 63
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->getStorageManagerVolumeProvider()Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->getPrivateStorageInfo(Lcom/android/settingslib/deviceinfo/StorageVolumeProvider;)Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;

    move-result-object v6

    .line 66
    iget-wide v0, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->totalBytes:J

    iget-wide v4, v6, Lcom/android/settingslib/deviceinfo/PrivateStorageInfo;->freeBytes:J

    sub-long/2addr v0, v4

    long-to-double v4, v0

    .line 68
    new-instance v7, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;Ljava/text/NumberFormat;DLcom/android/settingslib/deviceinfo/PrivateStorageInfo;)V

    invoke-static {v7}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method protected getStorageManagerVolumeProvider()Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->mStorageManagerVolumeProvider:Lcom/android/settingslib/deviceinfo/StorageManagerVolumeProvider;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;->refreshSummaryThread(Landroidx/preference/Preference;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected refreshSummaryThread(Landroidx/preference/Preference;)Ljava/util/concurrent/Future;
    .locals 1

    .line 62
    new-instance v0, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/TopLevelStoragePreferenceController;Landroidx/preference/Preference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
