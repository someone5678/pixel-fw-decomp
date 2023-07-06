.class public final synthetic Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/keyguard/WorkLockActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/WorkLockActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/WorkLockActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/keyguard/WorkLockActivity;

    sget v0, Lcom/android/systemui/keyguard/WorkLockActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
