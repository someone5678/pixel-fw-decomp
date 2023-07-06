.class public Lcom/google/android/libraries/hats20/HatsClient;
.super Ljava/lang/Object;
.source "HatsClient.java"


# static fields
.field private static final isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static forTestingClearAllData(Landroid/content/Context;)V
    .locals 0

    .line 368
    invoke-static {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->forTestingClearAllData()V

    return-void
.end method

.method public static forTestingInjectSurveyIntoStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 6

    .line 357
    invoke-static {p0}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->buildFromContext(Landroid/content/Context;)Lcom/google/android/libraries/hats20/storage/HatsDataStore;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/hats20/storage/HatsDataStore;->forTestingInjectSurveyIntoStorage(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method static markSurveyFinished()V
    .locals 3

    .line 310
    sget-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    .line 311
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HatsLibClient"

    const-string v2, "Notified that survey was destroyed when it wasn\'t marked as running."

    .line 312
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 315
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static markSurveyRunning()V
    .locals 2

    .line 332
    sget-object v0, Lcom/google/android/libraries/hats20/HatsClient;->isSurveyRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    const/4 v1, 0x1

    .line 333
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 334
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
