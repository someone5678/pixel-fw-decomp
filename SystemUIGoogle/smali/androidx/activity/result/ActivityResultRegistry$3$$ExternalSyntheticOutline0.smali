.class public final synthetic Landroidx/activity/result/ActivityResultRegistry$3$$ExternalSyntheticOutline0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"


# direct methods
.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public static m(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/plugins/log/LogMessage;Lcom/android/systemui/plugins/log/LogBuffer;Lcom/android/systemui/plugins/log/LogMessage;)V
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2, p3}, Lcom/android/systemui/plugins/log/LogBuffer;->commit(Lcom/android/systemui/plugins/log/LogMessage;)V

    return-void
.end method
