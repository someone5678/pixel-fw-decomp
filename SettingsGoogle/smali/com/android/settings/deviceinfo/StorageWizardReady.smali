.class public Lcom/android/settings/deviceinfo/StorageWizardReady;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object p1, p0, Lcom/android/settings/deviceinfo/StorageWizardBase;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez p1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f060237

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setContentView(I)V

    const p1, 0x7f0414c4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setHeaderText(I[Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "migrate_skip"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0414c6

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 42
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0414c7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    .line 45
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const p1, 0x7f0414c5

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v3

    .line 49
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBodyText(I[Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f0d05cc

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f0203fa

    .line 53
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f02040d

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setIcon(I)V

    const p1, 0x7f0408c8

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setNextButtonText(I[Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->setBackButtonVisibility(I)V

    return-void
.end method

.method public onNavigateNext(Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method
