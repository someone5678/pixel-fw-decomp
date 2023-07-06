.class Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$2;
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

    .line 91
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 95
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$2;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x3

    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
