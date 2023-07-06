.class public final synthetic Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/TimeoutManager$TimeoutCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell$8$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTimeout()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
