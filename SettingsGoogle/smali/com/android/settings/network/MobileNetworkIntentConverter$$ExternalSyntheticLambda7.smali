.class public final synthetic Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iput-object p2, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/network/MobileNetworkIntentConverter;

    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkIntentConverter$$ExternalSyntheticLambda7;->f$1:Landroid/content/Intent;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/MobileNetworkIntentConverter;->$r8$lambda$yjp2Xp7EvV1fIwjVFXJ7ONMjc90(Lcom/android/settings/network/MobileNetworkIntentConverter;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
