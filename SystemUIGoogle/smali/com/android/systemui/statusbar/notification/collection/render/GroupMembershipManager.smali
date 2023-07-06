.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;
.super Ljava/lang/Object;
.source "GroupMembershipManager.java"


# virtual methods
.method public abstract getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
.end method

.method public abstract isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method

.method public abstract isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
.end method
