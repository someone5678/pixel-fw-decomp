.class Lcom/android/settings/notification/history/NotificationHistoryActivity$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/history/NotificationHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

.field private mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/history/NotificationHistoryActivity;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 392
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v3}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmNm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/app/INotificationManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    .line 394
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    .line 395
    invoke-virtual {v5}, Landroid/app/Activity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x32

    .line 393
    invoke-interface {v3, v4, v5, v6, v1}, Landroid/app/INotificationManager;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v0

    .line 398
    :catch_1
    invoke-static {}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OnPaused called while trying to retrieve notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v3}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmSnoozeView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    const v4, 0x7f0d0451

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 402
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-direct {v3, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 403
    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 404
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v11, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    iget-object v6, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v6}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmPm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmUm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/os/UserManager;

    move-result-object v8

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmUiEventLogger(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Lcom/android/settings/notification/history/NotificationSbnAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserManager;ZLcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 407
    iget-object v3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 409
    array-length v5, v2

    if-nez v5, :cond_0

    goto :goto_1

    .line 412
    :cond_0
    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    new-instance v6, Ljava/util/ArrayList;

    .line 413
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 412
    invoke-virtual {v5, v6}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->onRebuildComplete(Ljava/util/List;)V

    goto :goto_2

    .line 410
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v2}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmSnoozeView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 416
    :goto_2
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v2}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmDismissView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 417
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-direct {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 419
    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 420
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v10, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    iget-object v5, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v5}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmPm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmUm(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/os/UserManager;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v4}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmUiEventLogger(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Lcom/android/internal/logging/UiEventLogger;

    move-result-object v9

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/notification/history/NotificationSbnAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/os/UserManager;ZLcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 423
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    if-eqz v0, :cond_3

    .line 425
    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_3

    .line 428
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v2}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmDismissView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    iget-object v1, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    new-instance v2, Ljava/util/ArrayList;

    .line 430
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 429
    invoke-virtual {v1, v2}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->onRebuildComplete(Ljava/util/List;)V

    goto :goto_4

    .line 426
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {v0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmDismissView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 433
    :goto_4
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmCountdownLatch(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 1

    const/4 p2, 0x0

    const/16 v0, 0x12

    if-ne p3, v0, :cond_0

    .line 445
    iget-object p3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mSnoozedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    invoke-virtual {p3, p1}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->addSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 446
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmSnoozeView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p3, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->mDismissedRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    check-cast p3, Lcom/android/settings/notification/history/NotificationSbnAdapter;

    invoke-virtual {p3, p1}, Lcom/android/settings/notification/history/NotificationSbnAdapter;->addSbn(Landroid/service/notification/StatusBarNotification;)V

    .line 449
    iget-object p0, p0, Lcom/android/settings/notification/history/NotificationHistoryActivity$2;->this$0:Lcom/android/settings/notification/history/NotificationHistoryActivity;

    invoke-static {p0}, Lcom/android/settings/notification/history/NotificationHistoryActivity;->-$$Nest$fgetmDismissView(Lcom/android/settings/notification/history/NotificationHistoryActivity;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method
