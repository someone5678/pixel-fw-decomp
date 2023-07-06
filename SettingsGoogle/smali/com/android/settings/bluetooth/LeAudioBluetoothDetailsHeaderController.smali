.class public Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "LeAudioBluetoothDetailsHeaderController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static final DEBUG:Z

.field static final INVALID_RESOURCE_ID:I = -0x1

.field static final LEFT_DEVICE_ID:I = 0x5451451

.field static final RIGHT_DEVICE_ID:I = 0xa8a28a2

.field private static final TAG:Ljava/lang/String; = "LeAudioBtHeaderCtrl"


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field mIsRegisterCallback:Z

.field mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method public static synthetic $r8$lambda$fyv9uHhmoZsV8SOnFutHO83-Krg(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->lambda$getAvailabilityStatus$0(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "LeAudioBtHeaderCtrl"

    const/4 v1, 0x3

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 94
    new-instance p1, Landroid/os/Handler;

    .line 95
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method private getAllOfLeAudioDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 226
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    iget-object v1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 229
    iget-object p0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 230
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getBatterySummaryResource(I)I
    .locals 1

    const p0, 0x7f0d012c

    if-ne p1, p0, :cond_0

    const p0, 0x7f0d012d

    return p0

    :cond_0
    const p0, 0x7f0d012f

    if-ne p1, p0, :cond_1

    const p0, 0x7f0d0130

    return p0

    :cond_1
    const p0, 0x7f0d0132

    if-ne p1, p0, :cond_2

    const p0, 0x7f0d0133

    return p0

    .line 209
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No summary resource id. The containerId is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LeAudioBtHeaderCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private hideAllOfBatteryLayouts()V
    .locals 2

    const v0, 0x7f0d012c

    const/4 v1, -0x1

    .line 215
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    const v0, 0x7f0d012f

    .line 217
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    const v0, 0x7f0d0132

    .line 219
    invoke-direct {p0, v0, v1}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    return-void
.end method

.method private static synthetic lambda$getAvailabilityStatus$0(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 1

    .line 112
    invoke-interface {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result p0

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateBatteryLayout()V
    .locals 10

    .line 238
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->hideAllOfBatteryLayouts()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->getAllOfLeAudioDevices()Ljava/util/List;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v1

    const-string v2, "LeAudioBtHeaderCtrl"

    if-eqz v0, :cond_c

    .line 241
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 246
    :cond_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->isEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    const v4, 0x7f0d023c

    if-nez v3, :cond_2

    const-string v0, "Show the legacy battery style if the LeAudio is not enabled."

    .line 247
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 250
    iget-object p0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    .line 255
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 256
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/settingslib/bluetooth/LeAudioProfile;->getAudioLocation(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LeAudioDevices:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAnonymizedAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", deviceId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_4

    const-string p0, "The device does not support the AUDIO_LOCATION."

    .line 261
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const v6, 0x5451451

    and-int/2addr v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    move v6, v7

    goto :goto_1

    :cond_5
    move v6, v8

    :goto_1
    const v9, 0xa8a28a2

    and-int/2addr v5, v9

    if-eqz v5, :cond_6

    move v5, v7

    goto :goto_2

    :cond_6
    move v5, v8

    :goto_2
    if-eqz v6, :cond_7

    if-eqz v5, :cond_7

    goto :goto_3

    :cond_7
    move v7, v8

    :goto_3
    if-eqz v7, :cond_8

    const-string v3, "Show the legacy battery style if the device id is left+right."

    .line 269
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 272
    iget-object v5, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_8
    if-eqz v6, :cond_9

    const v5, 0x7f0d012f

    .line 275
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v3

    invoke-direct {p0, v5, v3}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    goto/16 :goto_0

    :cond_9
    if-eqz v5, :cond_a

    const v5, 0x7f0d0132

    .line 277
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v3

    invoke-direct {p0, v5, v3}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->updateBatteryLayout(II)V

    goto/16 :goto_0

    :cond_a
    const-string v3, "The device id is other Audio Location. Do nothing."

    .line 279
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    :goto_4
    const-string p0, "There is no LeAudioProfile."

    .line 242
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBatteryLayout(II)V
    .locals 5

    .line 285
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "LeAudioBtHeaderCtrl"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateBatteryLayout: No View"

    .line 287
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    const/4 v1, 0x0

    .line 291
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->getBatterySummaryResource(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 295
    invoke-static {p2}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    .line 296
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f040485

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 300
    invoke-virtual {p0, v0, p2}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->createBtBatteryIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    .line 299
    invoke-virtual {p1, p0, p2, p2, p2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "updateBatteryLayout: Hide it if it doesn\'t have battery information."

    .line 303
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    .line 304
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method createBtBatteryIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 186
    new-instance p0, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;

    const v0, 0x7f0a02c3

    .line 188
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryMeterView$BatteryMeterDrawable;-><init>(Landroid/content/Context;III)V

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setBatteryLevel(I)V

    .line 194
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const v0, 0x1010429

    .line 195
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/android/settingslib/graph/ThemedBatteryDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-nez v2, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController$$ExternalSyntheticLambda0;-><init>()V

    .line 112
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 114
    iget-object p0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->isAdvancedDetailsHeader(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 151
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-void
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

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->refresh()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    .line 131
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->refresh()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mIsRegisterCallback:Z

    return-void
.end method

.method refresh()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const v1, 0x7f0d0238

    .line 159
    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 161
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 162
    invoke-static {v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtRainbowDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v1

    .line 163
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d023e

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v1, 0x7f0d023c

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 173
    iget-object v1, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 181
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->updateBatteryLayout()V

    return-void

    .line 177
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/LeAudioBluetoothDetailsHeaderController;->hideAllOfBatteryLayouts()V

    :cond_6
    :goto_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
