.class public Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintErrorDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static getErrorMessage(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const p0, 0x7f0412a8

    return p0

    :cond_0
    const p0, 0x7f04129e

    return p0

    :cond_1
    const p0, 0x7f0412a9

    return p0
.end method

.method private static getErrorTitle(I)I
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x7f0412a7

    return p0

    :cond_0
    const p0, 0x7f0412aa

    return p0
.end method

.method private static newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;
    .locals 3

    .line 152
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;-><init>()V

    .line 153
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg"

    .line 154
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_title"

    .line 155
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_id"

    .line 156
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "is_udfps"

    .line 157
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static showErrorDialog(Lcom/android/settings/biometrics/BiometricEnrollBase;IZ)V
    .locals 4

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->getErrorMessage(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 116
    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->getErrorTitle(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez p2, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    const/4 v1, 0x5

    .line 119
    invoke-static {v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->getErrorMessage(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 121
    :cond_2
    invoke-static {v1, v2, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->newInstance(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    move-result-object p0

    .line 123
    const-class p1, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x239

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 49
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "is_udfps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v5

    .line 56
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;ZZ)V

    const v4, 0x7f0412a2

    .line 59
    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const v0, 0x7f0412a3

    .line 75
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;)V

    .line 89
    invoke-virtual {v0, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method
