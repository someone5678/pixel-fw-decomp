.class Lcom/android/settings/ResetNetwork$1;
.super Ljava/lang/Object;
.source "ResetNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ResetNetwork;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/android/settings/ResetNetwork$1;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/android/settings/ResetNetwork$1;->this$0:Lcom/android/settings/ResetNetwork;

    const/16 v0, 0x37

    invoke-static {p1, v0}, Lcom/android/settings/ResetNetwork;->-$$Nest$mrunKeyguardConfirmation(Lcom/android/settings/ResetNetwork;I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settings/ResetNetwork$1;->this$0:Lcom/android/settings/ResetNetwork;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    :cond_0
    return-void
.end method
