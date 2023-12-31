.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private getPasswordSkipMessageRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f040c94

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f040c96

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f040c98

    return p0

    :cond_2
    const p0, 0x7f040c9a

    return p0
.end method

.method private getPasswordSkipTitleRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f040c95

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f040c97

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f040c99

    return p0

    :cond_2
    const p0, 0x7f040c9b

    return p0
.end method

.method private getPatternSkipMessageRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f040c9c

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f040c9e

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f040ca0

    return p0

    :cond_2
    const p0, 0x7f040ca2

    return p0
.end method

.method private getPatternSkipTitleRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f040c9d

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f040c9f

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f040ca1

    return p0

    :cond_2
    const p0, 0x7f040ca3

    return p0
.end method

.method private getPinSkipMessageRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f040ca4

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f040ca6

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f040ca8

    return p0

    :cond_2
    const p0, 0x7f040caa

    return p0
.end method

.method private getPinSkipTitleRes(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const p0, 0x7f040ca5

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f040ca7

    return p0

    :cond_1
    if-eqz p2, :cond_2

    const p0, 0x7f040ca9

    return p0

    :cond_2
    const p0, 0x7f040cab

    return p0
.end method

.method public static newInstance(ZZZZZZ)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3

    .line 51
    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    .line 52
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "frp_supported"

    .line 53
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lock_type_pattern"

    .line 54
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "lock_type_alphanumeric"

    .line 55
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_fingerprint"

    .line 56
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_face"

    .line 57
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "for_biometrics"

    .line 58
    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x23d

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 198
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    const-string p2, "input_method"

    .line 206
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    const/4 p2, 0x1

    .line 207
    invoke-virtual {p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 6

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "for_face"

    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "for_fingerprint"

    .line 79
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "for_biometrics"

    .line 81
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0413dd

    .line 106
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f040a57

    .line 107
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v1, 0x7f040c81

    .line 108
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v1, "frp_supported"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f040c80

    goto :goto_0

    :cond_1
    const v0, 0x7f040c7f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v5

    :goto_3
    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    const-string v2, "lock_type_pattern"

    .line 88
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 89
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPatternSkipTitleRes(ZZ)I

    move-result v0

    .line 90
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPatternSkipMessageRes(ZZ)I

    move-result v1

    goto :goto_4

    :cond_7
    const-string v2, "lock_type_alphanumeric"

    .line 91
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPasswordSkipTitleRes(ZZ)I

    move-result v0

    .line 93
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPasswordSkipMessageRes(ZZ)I

    move-result v1

    goto :goto_4

    .line 95
    :cond_8
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPinSkipTitleRes(ZZ)I

    move-result v0

    .line 96
    invoke-direct {p0, v1, v4}, Lcom/android/settings/password/SetupSkipDialog;->getPinSkipMessageRes(ZZ)I

    move-result v1

    .line 99
    :goto_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0413df

    .line 100
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0405e4

    .line 101
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    return-object p0
.end method

.method public show(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    const-string/jumbo v0, "skip_dialog"

    .line 214
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
