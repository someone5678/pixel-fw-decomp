.class Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;
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

.field final synthetic val$canAssumeUdfps:Z

.field final synthetic val$wasTimeout:Z


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;ZZ)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;->val$wasTimeout:Z

    iput-boolean p3, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;->val$canAssumeUdfps:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 64
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 65
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;->this$0:Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 66
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;->val$wasTimeout:Z

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog$1;->val$canAssumeUdfps:Z

    if-nez p0, :cond_0

    const/4 p0, 0x3

    .line 67
    invoke-virtual {p1, p0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 69
    invoke-virtual {p1, p0}, Landroid/app/Activity;->setResult(I)V

    .line 71
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
