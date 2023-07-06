.class Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$1;
.super Landroid/os/ResultReceiver;
.source "GooglePlaySetupHelperV2.java"


# instance fields
.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 186
    invoke-static {}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->-$$Nest$sfgetLOG()Lcom/google/android/setupwizard/common/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupwizard/common/util/Logger;->isD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->-$$Nest$sfgetLOG()Lcom/google/android/setupwizard/common/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Final hold progress. resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/common/util/Logger;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 191
    iget-object p0, p0, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$1;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
