.class public Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;
.super Ljava/lang/Object;
.source "HearingAidDeviceManager.java"


# instance fields
.field private final mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private final mCachedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 41
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    return-void
.end method

.method private getCachedDevice(J)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 110
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "HearingAidDeviceManager"

    const-string p1, "HearingAidProfile is not supported and not ready to fetch device mode"

    .line 81
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method private getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "HearingAidDeviceManager"

    const-string p1, "HearingAidProfile is not supported and not ready to fetch device side"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method private getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide p0

    return-wide p0
.end method

.method private isValidHiSyncId(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "HearingAidDeviceManager"

    .line 254
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 242
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSubDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 244
    invoke-virtual {v2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method initHearingAidDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 45
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHiSyncId(J)V

    .line 49
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 50
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceSide(I)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceMode(I)V

    :cond_0
    return-void
.end method

.method onHiSyncIdChanged(J)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 146
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 147
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    if-ne v2, v1, :cond_1

    move v2, v0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v1, v0

    move v0, v2

    goto :goto_2

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    .line 175
    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 176
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiSyncIdChanged: removed from UI device ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", with hiSyncId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->log(Ljava/lang/String;)V

    .line 179
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_3
    return-void
.end method

.method onProfileConnectionStateChangedIfProcessed(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 197
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    return v0

    .line 202
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 203
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->switchSubDeviceContent()V

    .line 204
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 207
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return v0

    .line 213
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->findMainDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    .line 214
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getUnpairing()Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    if-eqz p2, :cond_4

    .line 220
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    return v0

    .line 223
    :cond_4
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSubDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 224
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 227
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 228
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->switchSubDeviceContent()V

    .line 229
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 232
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mBtManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return v0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method setSubDeviceIfNeeded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .locals 3

    .line 89
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v0

    .line 90
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-direct {p0, v0, v1}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getCachedDevice(J)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSubDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method updateHearingAidsDevices()V
    .locals 6

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->mCachedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 122
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getHiSyncId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v3

    .line 125
    invoke-direct {p0, v3, v4}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->isValidHiSyncId(J)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v2, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setHiSyncId(J)V

    .line 127
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getDeviceSide(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 129
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->getDeviceMode(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 130
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceSide(I)V

    .line 131
    invoke-virtual {v2, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDeviceMode(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/bluetooth/HearingAidDeviceManager;->onHiSyncIdChanged(J)V

    goto :goto_1

    :cond_2
    return-void
.end method
