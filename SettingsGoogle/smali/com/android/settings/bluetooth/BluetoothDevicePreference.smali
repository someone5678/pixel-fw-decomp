.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "BluetoothDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;
    }
.end annotation


# static fields
.field private static sDimAlpha:I = -0x80000000


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field final mCallback:Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;

.field private final mCurrentTime:J

.field private mDisconnectDialog:Landroidx/appcompat/app/AlertDialog;

.field private mHideSecondTarget:Z

.field private mIsCallbackRemoved:Z

.field mNeedNotifyHierarchyChanged:Z

.field mResources:Landroid/content/res/Resources;

.field private final mShowDevicesWithoutNames:Z

.field private final mType:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCachedDevice(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;ZI)V
    .locals 3

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    const/4 v1, 0x0

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mNeedNotifyHierarchyChanged:Z

    .line 98
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mResources:Landroid/content/res/Resources;

    const-string/jumbo v1, "user"

    .line 99
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mUserManager:Landroid/os/UserManager;

    .line 100
    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mShowDevicesWithoutNames:Z

    .line 102
    sget p3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v1, -0x80000000

    if-ne p3, v1, :cond_0

    .line 103
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v1, 0x1010033

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 105
    invoke-virtual {p3}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    sput p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 108
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 109
    new-instance p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback-IA;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCallback:Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;

    .line 110
    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCurrentTime:J

    .line 112
    iput p4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mType:I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onPreferenceAttributesChanged()V

    return-void
.end method

.method private askDisconnect()V
    .locals 5

    .line 290
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 291
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v1, 0x7f0404ac

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f0404ca

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 295
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0404d0

    .line 296
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 298
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 304
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroidx/appcompat/app/AlertDialog;

    .line 305
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 304
    invoke-static {v0, v4, v3, v2, v1}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private pair()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f040527

    invoke-static {v0, p0, v1}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroidx/preference/Preference;)I
    .locals 4

    .line 246
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 251
    :cond_0
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 258
    invoke-super {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0

    .line 256
    :cond_1
    iget-wide v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCurrentTime:J

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-wide p0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCurrentTime:J

    cmp-long p0, v2, p0

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 253
    :cond_3
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroidx/preference/Preference;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 232
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method protected getSecondTargetResId()I
    .locals 0

    const p0, 0x7f0601c6

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result p0

    return p0
.end method

.method public hideSecondTarget(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    return-void
.end method

.method public onAttached()V
    .locals 2

    .line 153
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 154
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCallback:Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onPreferenceAttributesChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    const-string v0, "bt_checkbox"

    .line 208
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    const v0, 0x7f0d055b

    .line 213
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x1020006

    .line 219
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 225
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 224
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setElevation(F)V

    .line 227
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method onClicked()V
    .locals 5

    .line 263
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 267
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    .line 269
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/16 v1, 0x364

    new-array v3, v4, [Landroid/util/Pair;

    .line 270
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 272
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    goto :goto_0

    :cond_0
    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    const/16 v1, 0x363

    new-array v3, v4, [Landroid/util/Pair;

    .line 274
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 276
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect()V

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    const/16 v1, 0x362

    new-array v3, v4, [Landroid/util/Pair;

    .line 278
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x448

    new-array v3, v4, [Landroid/util/Pair;

    .line 281
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCallback:Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    :cond_0
    return-void
.end method

.method onPreferenceAttributesChanged()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDrawableWithDescription()Landroid/util/Pair;

    move-result-object v0

    .line 180
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mShowDevicesWithoutNames:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mNeedNotifyHierarchyChanged:Z

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_2
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .line 140
    invoke-super {p0}, Landroidx/preference/Preference;->onPrepareForRemoval()V

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCallback:Lcom/android/settings/bluetooth/BluetoothDevicePreference$BluetoothDevicePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsCallbackRemoved:Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public setNeedNotifyHierarchyChanged(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mNeedNotifyHierarchyChanged:Z

    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_bluetooth"

    .line 125
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
