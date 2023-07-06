.class Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2$2;
.super Landroid/os/ResultReceiver;
.source "GooglePlaySetupHelperV2.java"


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 213
    invoke-static {}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->-$$Nest$sfgetLOG()Lcom/google/android/setupwizard/common/util/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupwizard/common/util/Logger;->isD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lcom/google/android/setupwizard/common/util/GooglePlaySetupHelperV2;->-$$Nest$sfgetLOG()Lcom/google/android/setupwizard/common/util/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Early update progress. resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupwizard/common/util/Logger;->d(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 218
    throw p0
.end method
