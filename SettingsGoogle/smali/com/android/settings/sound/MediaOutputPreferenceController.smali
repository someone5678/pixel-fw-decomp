.class public Lcom/android/settings/sound/MediaOutputPreferenceController;
.super Lcom/android/settings/sound/AudioSwitchPreferenceController;
.source "MediaOutputPreferenceController.java"


# instance fields
.field private mMediaController:Landroid/media/session/MediaController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    const-class p2, Landroid/media/session/MediaSessionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    invoke-static {p1}, Lcom/android/settings/media/MediaOutputUtils;->getActiveLocalMediaController(Landroid/media/session/MediaSessionManager;)Landroid/media/session/MediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mMediaController:Landroid/media/session/MediaController;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz p1, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public findActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->findActiveLeAudioDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 110
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    if-eqz p0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected findActiveHearingAidDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object p0

    .line 136
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 147
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui.action.LAUNCH_MEDIA_OUTPUT_DIALOG"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.systemui"

    .line 150
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mMediaController:Landroid/media/session/MediaController;

    .line 152
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mMediaController:Landroid/media/session/MediaController;

    .line 154
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    const-string v1, "key_media_session_token"

    .line 153
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method public bridge synthetic onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public bridge synthetic onScanningStateChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onScanningStateChanged(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f040d9d

    .line 82
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedA2dpDevices()Ljava/util/List;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedHearingAidDevices()Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedLeAudioDevices()Ljava/util/List;

    move-result-object v3

    .line 92
    iget-object v4, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getMode()I

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_3

    .line 93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    .line 94
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    .line 95
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 96
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->findActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f040da4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mMediaController:Landroid/media/session/MediaController;

    .line 100
    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-static {v2, v5}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez p1, :cond_7

    .line 102
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const p1, 0x7f040d9e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 103
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAlias()Ljava/lang/String;

    move-result-object p0

    .line 101
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
