.class public final synthetic Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkIntentConverter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda14;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iput p2, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda14;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda14;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda14;->f$1:I

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->$r8$lambda$KSZpOd-_PuinFxnEXI9ft1evGKU(Lcom/android/settings/network/MobileNetworkIntentConverter;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
