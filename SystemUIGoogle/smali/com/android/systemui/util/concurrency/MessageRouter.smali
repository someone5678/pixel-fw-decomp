.class public interface abstract Lcom/android/systemui/util/concurrency/MessageRouter;
.super Ljava/lang/Object;
.source "MessageRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;,
        Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;
    }
.end annotation


# virtual methods
.method public abstract cancelMessages(I)V
.end method

.method public abstract cancelMessages(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public sendMessage(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-interface {p0, v0, v1, p1}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(JI)V

    return-void
.end method

.method public sendMessage(Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;)V
    .locals 0

    .line 2
    invoke-interface {p0, p1}, Lcom/android/systemui/util/concurrency/MessageRouter;->sendMessageDelayed(Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;)V

    return-void
.end method

.method public abstract sendMessageDelayed(JI)V
.end method

.method public abstract sendMessageDelayed(Lcom/android/systemui/statusbar/phone/CentralSurfaces$KeyboardShortcutsMessage;)V
.end method

.method public abstract subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V
.end method

.method public abstract subscribeTo(Ljava/lang/Class;Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/systemui/util/concurrency/MessageRouter$DataMessageListener<",
            "TT;>;)V"
        }
    .end annotation
.end method
