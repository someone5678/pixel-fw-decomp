.class Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$3;
.super Ljava/lang/Object;
.source "FingerprintErrorDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 80
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 81
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$3;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x2000000

    .line 83
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "is_canceled"

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
