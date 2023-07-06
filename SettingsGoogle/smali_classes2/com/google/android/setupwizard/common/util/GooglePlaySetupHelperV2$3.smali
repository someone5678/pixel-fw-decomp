.class Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$3;
.super Landroid/os/ResultReceiver;
.source "GooglePlaySetupHelperV2.java"


# instance fields
.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    .line 275
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 276
    invoke-static {}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->-$$Nest$sfgetLOG()Lcom/google/android/setupwizard/common/util/Logger;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pause app updates progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/setupwizard/common/util/Logger;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 279
    :cond_0
    iget-object p0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$3;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
