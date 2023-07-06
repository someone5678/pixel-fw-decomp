.class public Lcom/android/settings/bluetooth/QrCodeScanModeFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "QrCodeScanModeFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;


# instance fields
.field private mBroadcastMetadata:Ljava/lang/String;

.field private mCamera:Lcom/android/settingslib/qrcode/QrCamera;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/bluetooth/QrCodeScanModeController;

.field private mCornerRadius:I

.field private mErrorMessage:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsGroupOp:Z

.field private mSink:Landroid/bluetooth/BluetoothDevice;

.field private mSummary:Landroid/widget/TextView;

.field private mTextureView:Landroid/view/TextureView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBroadcastMetadata(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmController(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Lcom/android/settings/bluetooth/QrCodeScanModeController;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mController:Lcom/android/settings/bluetooth/QrCodeScanModeController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCornerRadius(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCornerRadius:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmErrorMessage(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupOp(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mIsGroupOp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSink(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mSink:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mSummary:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateSummary(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->updateSummary()V

    return-void
.end method

.method public constructor <init>(ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 188
    new-instance v0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$2;-><init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    .line 76
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mIsGroupOp:Z

    .line 77
    iput-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mSink:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method private destroyCamera()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/android/settingslib/qrcode/QrCamera;->stop()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    :cond_0
    return-void
.end method

.method private handleBtLeAudioScanner()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 230
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private initCamera(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/settingslib/qrcode/QrCamera;

    iget-object v1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settingslib/qrcode/QrCamera;-><init>(Landroid/content/Context;Lcom/android/settingslib/qrcode/QrCamera$ScannerCallback;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCamera:Lcom/android/settingslib/qrcode/QrCamera;

    .line 114
    invoke-virtual {v0, p1}, Lcom/android/settingslib/qrcode/QrCamera;->start(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mHandler:Landroid/os/Handler;

    .line 224
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    .line 223
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateSummary()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mSummary:Landroid/widget/TextView;

    const v1, 0x7f0405a3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getFramePosition(Landroid/util/Size;I)Landroid/graphics/Rect;
    .locals 1

    .line 166
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x786

    return p0
.end method

.method public getViewSize()Landroid/util/Size;
    .locals 2

    .line 161
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public handleCameraFailure()V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->destroyCamera()V

    return-void
.end method

.method public handleSuccessfulResult(Ljava/lang/String;)V
    .locals 2

    const-string v0, "QrCodeScanModeFragment"

    const-string v1, "handleSuccessfulResult(), get the qr code string."

    .line 148
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mBroadcastMetadata:Ljava/lang/String;

    .line 151
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->handleBtLeAudioScanner()V

    return-void
.end method

.method public isValid(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "BT:"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const p1, 0x7f0405a2

    .line 179
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->showErrorMessage(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Lcom/android/settings/bluetooth/QrCodeScanModeController;

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/QrCodeScanModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mController:Lcom/android/settings/bluetooth/QrCodeScanModeController;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0601e1

    const/4 p3, 0x0

    .line 90
    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->initCamera(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->destroyCamera()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const p2, 0x7f0d04ba

    .line 96
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    .line 97
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b040d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mCornerRadius:I

    .line 99
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p2, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 100
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QrCodeScanModeFragment$1;-><init>(Lcom/android/settings/bluetooth/QrCodeScanModeFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 106
    iget-object p2, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/TextureView;->setClipToOutline(Z)V

    const p2, 0x7f0d0245

    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mErrorMessage:Landroid/widget/TextView;

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/bluetooth/QrCodeScanModeFragment;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method
