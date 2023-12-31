.class public Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothBroadcastDialog.java"


# static fields
.field private static final UNKNOWN_APP_LABEL:Ljava/lang/CharSequence;


# instance fields
.field private mAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppLabel:Ljava/lang/CharSequence;

.field private mDeviceAddress:Ljava/lang/String;

.field private mIsMediaStreaming:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method public static synthetic $r8$lambda$0dVbtvrByLyMCsvayoOAsoWAYxM(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->lambda$onCreateDialog$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CE39HxNhpM_tF0PhBDuefw-CDYw(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->lambda$onCreateDialog$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tQXO0jEqIhrRl8O0mpaHIdFAD2s(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->lambda$onCreateDialog$1(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "unknown"

    .line 51
    sput-object v0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->UNKNOWN_APP_LABEL:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 53
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->UNKNOWN_APP_LABEL:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mCurrentAppLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method private dismissVolumePanel()V
    .locals 2

    .line 180
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    .line 181
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.panel.action.CLOSE_PANEL"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 159
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "BTBroadcastsDialog"

    const-string v0, "Can not get LE Audio Broadcast Profile"

    .line 164
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$onCreateDialog$0(Landroid/view/View;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->launchMediaOutputBroadcastDialog()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->launchFindBroadcastsActivity()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$2(Landroid/view/View;)V
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchFindBroadcastsActivity()V
    .locals 3

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mDeviceAddress:Ljava/lang/String;

    const-string v2, "device_address"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0404e8

    .line 137
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const-class v2, Lcom/android/settings/bluetooth/BluetoothFindBroadcastsFragment;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 139
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->dismissVolumePanel()V

    return-void
.end method

.method private launchMediaOutputBroadcastDialog()V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->startBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_BROADCAST_DIALOG"

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_name"

    .line 150
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->dismissVolumePanel()V

    :cond_0
    return-void
.end method

.method private startBroadcast()Z
    .locals 2

    .line 169
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->getLEAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mCurrentAppLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->startBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "BTBroadcastsDialog"

    const-string v0, "Can not broadcast successfully"

    .line 174
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method isBroadcastSupported()Z
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 187
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "app_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mCurrentAppLabel:Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "device_address"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mDeviceAddress:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "media_streaming"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mIsMediaStreaming:Z

    .line 66
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 p1, 0x1

    .line 67
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setShowsDialog(Z)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 72
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    const v0, 0x7f060075

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0d01f4

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d01f3

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0d04ad

    .line 78
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->isBroadcastSupported()Z

    move-result v3

    const v4, 0x7f0404e4

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mIsMediaStreaming:Z

    if-eqz v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f04048a

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f040488

    .line 82
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 83
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mCurrentAppLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f040487

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mCurrentAppLabel:Ljava/lang/CharSequence;

    .line 89
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 87
    invoke-virtual {v1, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f040489

    .line 97
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 98
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    const v0, 0x7f0d0431

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 102
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d0439

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 108
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f1403e0

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 115
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 123
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    return-void
.end method
