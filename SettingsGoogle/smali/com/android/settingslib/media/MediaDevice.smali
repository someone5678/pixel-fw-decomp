.class public abstract Lcom/android/settingslib/media/MediaDevice;
.super Ljava/lang/Object;
.source "MediaDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/media/MediaDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectedRecord:I

.field protected final mContext:Landroid/content/Context;

.field protected final mPackageName:Ljava/lang/String;

.field private mRangeZone:I

.field protected final mRouteInfo:Landroid/media/MediaRoute2Info;

.field protected final mRouterManager:Landroid/media/MediaRouter2Manager;

.field private mState:I

.field mType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/MediaRouter2Manager;Landroid/media/MediaRoute2Info;Ljava/lang/String;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    .line 94
    iput-object p1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    .line 96
    iput-object p2, p0, Lcom/android/settingslib/media/MediaDevice;->mRouterManager:Landroid/media/MediaRouter2Manager;

    .line 97
    iput-object p4, p0, Lcom/android/settingslib/media/MediaDevice;->mPackageName:Ljava/lang/String;

    .line 98
    invoke-direct {p0, p3}, Lcom/android/settingslib/media/MediaDevice;->setType(Landroid/media/MediaRoute2Info;)V

    return-void
.end method

.method private setType(Landroid/media/MediaRoute2Info;)V
    .locals 4

    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 103
    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_4

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_2

    const/16 v2, 0x16

    if-eq p1, v2, :cond_2

    const/16 v2, 0x17

    if-eq p1, v2, :cond_3

    const/16 v2, 0x1a

    if-eq p1, v2, :cond_3

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x6

    .line 134
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    .line 109
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    .line 123
    :cond_2
    :pswitch_0
    iput v1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    .line 128
    :cond_3
    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    .line 116
    :cond_4
    iput v2, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 112
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/settingslib/media/MediaDevice;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v1

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result v2

    xor-int/2addr v1, v2

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 382
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2

    .line 389
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    return v0

    .line 391
    :cond_3
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result v1

    if-ne v1, v3, :cond_4

    return v2

    .line 395
    :cond_4
    iget v1, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    iget v3, p1, Lcom/android/settingslib/media/MediaDevice;->mType:I

    if-ne v1, v3, :cond_10

    .line 397
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    .line 399
    :cond_5
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isMutingExpectedDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    return v2

    .line 404
    :cond_6
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isFastPairDevice()Z

    move-result v1

    if-eqz v1, :cond_7

    return v0

    .line 406
    :cond_7
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isFastPairDevice()Z

    move-result v1

    if-eqz v1, :cond_8

    return v2

    .line 411
    :cond_8
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->isCarKitDevice()Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    .line 413
    :cond_9
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->isCarKitDevice()Z

    move-result v1

    if-eqz v1, :cond_a

    return v2

    .line 418
    :cond_a
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getRangeZone()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getRangeZone()I

    move-result v3

    invoke-static {v1, v3}, Landroid/media/NearbyDevice;->compareRangeZones(II)I

    move-result v1

    if-eqz v1, :cond_b

    .line 419
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getRangeZone()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getRangeZone()I

    move-result p1

    invoke-static {p0, p1}, Landroid/media/NearbyDevice;->compareRangeZones(II)I

    move-result p0

    return p0

    .line 423
    :cond_b
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/android/settingslib/media/ConnectionRecordManager;->getLastSelectedDevice()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v0

    .line 427
    :cond_c
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    return v2

    .line 431
    :cond_d
    iget v0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    iget v1, p1, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    if-eq v0, v1, :cond_f

    if-gtz v1, :cond_e

    if-lez v0, :cond_f

    :cond_e
    sub-int/2addr v1, v0

    return v1

    .line 438
    :cond_f
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    .line 440
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_10
    if-ge v1, v3, :cond_11

    goto :goto_0

    :cond_11
    move v0, v2

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaDevice;->compareTo(Lcom/android/settingslib/media/MediaDevice;)I

    move-result p0

    return p0
.end method

.method public connect()Z
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    if-nez v0, :cond_0

    const-string p0, "MediaDevice"

    const-string v0, "Unable to connect. RouteInfo is empty"

    .line 319
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->setConnectedRecord()V

    .line 323
    iget-object v0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouterManager:Landroid/media/MediaRouter2Manager;

    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaRouter2Manager;->selectRoute(Ljava/lang/String;Landroid/media/MediaRoute2Info;)V

    const/4 p0, 0x1

    return p0
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 490
    instance-of v0, p1, Lcom/android/settingslib/media/MediaDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 493
    :cond_0
    check-cast p1, Lcom/android/settingslib/media/MediaDevice;

    .line 494
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 295
    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mType:I

    return p0
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getRangeZone()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRangeZone:I

    return p0
.end method

.method public getState()I
    .locals 0

    .line 346
    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    return p0
.end method

.method initDeviceRecord()V
    .locals 3

    .line 140
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/ConnectionRecordManager;->fetchLastSelectedDevice(Landroid/content/Context;)V

    .line 141
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/media/ConnectionRecordManager;->fetchConnectionRecord(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    return-void
.end method

.method public isBLEDevice()Z
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/android/settingslib/media/MediaDevice;->mRouteInfo:Landroid/media/MediaRoute2Info;

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isCarKitDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract isConnected()Z
.end method

.method protected isFastPairDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMutingExpectedDevice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method setConnectedRecord()V
    .locals 3

    .line 215
    iget v0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    .line 216
    invoke-static {}, Lcom/android/settingslib/media/ConnectionRecordManager;->getInstance()Lcom/android/settingslib/media/ConnectionRecordManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/media/MediaDevice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    iget p0, p0, Lcom/android/settingslib/media/MediaDevice;->mConnectedRecord:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/media/ConnectionRecordManager;->setConnectionRecord(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 337
    iput p1, p0, Lcom/android/settingslib/media/MediaDevice;->mState:I

    return-void
.end method
