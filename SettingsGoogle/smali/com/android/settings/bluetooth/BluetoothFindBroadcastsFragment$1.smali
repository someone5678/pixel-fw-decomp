.class Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;
.super Ljava/lang/Object;
.source "BluetoothFindBroadcastsFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;


# direct methods
.method public static synthetic $r8$lambda$VO_ZtbHJjToBSSiaP5HWES-3mAo(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->lambda$onSearchStarted$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$oH5YRMYVGxwJjequC0HXIzReUKA(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->lambda$onSourceRemoved$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$th-F8xz2wz59oVv-kB4sWP3R2KI(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->lambda$onSourceAdded$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$wOZutEcC6ee2YL6bOeuQAUCLu4I(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->lambda$onSourceFound$1(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onSearchStarted$0()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$mhandleSearchStarted(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V

    return-void
.end method

.method private synthetic lambda$onSourceAdded$2()V
    .locals 2

    .line 121
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$fgetmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;->getBluetoothLeBroadcastMetadata()Landroid/bluetooth/BluetoothLeBroadcastMetadata;

    move-result-object v0

    const/4 v1, 0x1

    .line 121
    invoke-static {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$mupdateListCategoryFromBroadcastMetadata(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private synthetic lambda$onSourceFound$1(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$mupdateListCategoryFromBroadcastMetadata(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Landroid/bluetooth/BluetoothLeBroadcastMetadata;Z)V

    return-void
.end method

.method private synthetic lambda$onSourceRemoved$3()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$mhandleSourceRemoved(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)V

    return-void
.end method


# virtual methods
.method public onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .locals 0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onReceiveStateChanged:"

    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchStartFailed(I)V
    .locals 1

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSearchStartFailed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BtFindBroadcastsFrg"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchStarted(I)V
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtFindBroadcastsFrg"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSearchStopFailed(I)V
    .locals 1

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSearchStopFailed: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BtFindBroadcastsFrg"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSearchStopped(I)V
    .locals 1

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSearchStopped: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BtFindBroadcastsFrg"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$fputmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;)V

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onSourceAddFailed: clear the mSelectedPreference."

    .line 129
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 116
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1, p2}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->setSourceId(I)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;->-$$Nest$fgetmSelectedPreference(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;)Lcom/android/settings/bluetooth/BluetoothBroadcastSourcePreference;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onSourceAdded: mSelectedPreference == null!"

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .locals 2

    const-string v0, "BtFindBroadcastsFrg"

    const-string v1, "onSourceFound:"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    return-void
.end method

.method public onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p0, "BtFindBroadcastsFrg"

    const-string p1, "onSourceRemoveFailed:"

    .line 152
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    const-string p1, "BtFindBroadcastsFrg"

    const-string p2, "onSourceRemoved:"

    .line 145
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
