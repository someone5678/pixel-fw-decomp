.class Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;
.super Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;
.source "SimStatusDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-direct {p0}, Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistered(I)V
    .locals 1

    .line 697
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmDialog(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmRes(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040b2b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0d031f

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onRegistering(I)V
    .locals 1

    .line 702
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmDialog(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmRes(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040b2a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0d031f

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 714
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmDialog(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmRes(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f040b2a

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x7f0d031f

    invoke-virtual {p1, p2, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onUnregistered(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 707
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmDialog(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$3;->this$0:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-static {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->-$$Nest$fgetmRes(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040b2a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0d031f

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method
