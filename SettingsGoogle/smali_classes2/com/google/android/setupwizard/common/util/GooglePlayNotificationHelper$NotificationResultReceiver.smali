.class Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationResultReceiver;
.super Landroid/os/ResultReceiver;
.source "GooglePlayNotificationHelper.java"


# static fields
.field private static final LOG:Lcom/google/android/setupwizard/common/util/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 281
    new-instance v0, Lcom/google/android/setupwizard/common/util/Logger;

    const-class v1, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationResultReceiver;

    invoke-direct {v0, v1}, Lcom/google/android/setupwizard/common/util/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationResultReceiver;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    return-void
.end method

.method private toPlayStoreNotification(Landroid/os/Bundle;Z)Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;
    .locals 8

    .line 311
    new-instance p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;

    invoke-direct {p0}, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;-><init>()V

    .line 313
    iput-boolean p2, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->notificationShown:Z

    const-string p2, "id"

    const/4 v0, 0x0

    .line 314
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->notificationId:I

    const-string p2, "type"

    const/high16 v1, -0x80000000

    .line 315
    invoke-virtual {p1, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->notificationType:I

    const-string v2, "show_as_is"

    .line 317
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->mShowNotificationAsItIs:Z

    const-string v2, "title"

    const-string v3, ""

    .line 319
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->title:Ljava/lang/String;

    const-string v2, "text"

    .line 320
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->text:Ljava/lang/String;

    const-string v4, "small_icon"

    .line 321
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    iput-object v4, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->smallIcon:Landroid/graphics/drawable/Icon;

    const-string v4, "large_icon"

    .line 323
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Icon;

    iput-object v4, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->largeIcon:Landroid/graphics/drawable/Icon;

    const-string v4, "data"

    .line 326
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_0

    .line 328
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v5, "successes"

    .line 331
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->numberOfSuccessfulAppInstalls:I

    const-string v5, "failures"

    .line 333
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->numberOfFailedAppInstalls:I

    const-string v5, "pending"

    .line 335
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->numberOfPendingAppInstalls:I

    const-string v5, "bytes_remaining"

    .line 337
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->totalSizeOfPendingAppInstalls:J

    const-string v5, "bytes_remaining_string"

    .line 339
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->readableTotalSizeOfPendingAppInstalls:Ljava/lang/String;

    const-string v4, "intents"

    .line 342
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 345
    array-length v4, p1

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, p1, v0

    .line 346
    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_1

    .line 347
    check-cast v5, Landroid/os/Bundle;

    .line 348
    new-instance v6, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationIntent;

    invoke-direct {v6}, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationIntent;-><init>()V

    .line 350
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationIntent;->actionText:Ljava/lang/String;

    .line 352
    invoke-virtual {v5, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationIntent;->intentType:I

    const-string v7, "intent"

    .line 354
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    iput-object v5, v6, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 356
    iget-object v5, p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;->notificationIntents:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 305
    sget-object p0, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationResultReceiver;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", data = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/setupwizard/common/util/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 296
    :goto_0
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationResultReceiver;->toPlayStoreNotification(Landroid/os/Bundle;Z)Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$PlayStoreNotification;

    const/4 p0, 0x0

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 301
    sget-object p1, Lcom/google/android/setupwizard/common/util/GooglePlayNotificationHelper$NotificationResultReceiver;->LOG:Lcom/google/android/setupwizard/common/util/Logger;

    const-string p2, "Error converting bundle to PlayStoreNotification"

    invoke-virtual {p1, p2, p0}, Lcom/google/android/setupwizard/common/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
