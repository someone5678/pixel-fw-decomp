.class public Lcom/android/setupwizardlib/view/IllustrationVideoView;
.super Landroid/view/TextureView;
.source "IllustrationVideoView.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field protected mAspectRatio:F

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field private prepared:Z

.field surface:Landroid/view/Surface;

.field private videoResId:I

.field private videoResPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResId:I

    .line 81
    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView:[I

    .line 82
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 83
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwIllustrationVideoView_suwVideo:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVideoResource(I)V

    const p1, 0x3f7ffffe    # 0.9999999f

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 91
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 93
    invoke-virtual {p0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private initVideo()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createSurface()V

    .line 238
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    goto :goto_0

    :cond_1
    const-string p0, "IllustrationVideoView"

    const-string v0, "Surface creation failed"

    .line 241
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private reattach()V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->initVideo()V

    :cond_0
    return-void
.end method

.method private setVideoResourceInternal(ILjava/lang/String;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 174
    :try_start_0
    iget-object p2, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 175
    iget-object p0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "IllustrationVideoView"

    const-string p2, "Unable to set data source"

    .line 177
    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected createMediaPlayer()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResId:I

    if-nez v0, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 162
    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 163
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 164
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 165
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 168
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResId:I

    iget-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVideoResourceInternal(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected createSurface()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    .line 187
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 189
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 190
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public getCurrentPosition()I
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method protected isPrepared()Z
    .locals 0

    .line 335
    iget-boolean p0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->prepared:Z

    return p0
.end method

.method public isRunning()Z
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 340
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MediaPlayer error. what="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " extra="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IllustrationVideoView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 295
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->onRenderingStart()V

    :cond_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 99
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v0, p2

    int-to-float v1, p1

    .line 101
    iget v2, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    mul-float v3, v1, v2

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    div-float/2addr v0, v2

    float-to-int p1, v0

    goto :goto_0

    :cond_0
    mul-float/2addr v1, v2

    float-to-int p2, v1

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 110
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 111
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->prepared:Z

    .line 304
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->shouldLoop()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 307
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    goto :goto_0

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected video size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IllustrationVideoView"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_1

    .line 313
    iput v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mAspectRatio:F

    .line 314
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 316
    :cond_1
    invoke-virtual {p0}, Landroid/view/TextureView;->getWindowVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    :cond_2
    return-void
.end method

.method protected onRenderingStart()V
    .locals 0

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 323
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->isPrepared()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 324
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    const-string p0, "IllustrationVideoView"

    const-string p1, "Seek complete but media player not prepared"

    .line 326
    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p1, 0x4

    .line 252
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->initVideo()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->release()V

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

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->start()V

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->stop()V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Landroid/view/TextureView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->reattach()V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->release()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 218
    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->prepared:Z

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 223
    iput-object v1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->surface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method public setVideoResource(I)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->setVideoResource(ILjava/lang/String;)V

    return-void
.end method

.method public setVideoResource(ILjava/lang/String;)V
    .locals 1

    .line 121
    iget v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResId:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    .line 122
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    :cond_0
    iput p1, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResId:I

    .line 124
    iput-object p2, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->videoResPackageName:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/IllustrationVideoView;->createMediaPlayer()V

    :cond_1
    return-void
.end method

.method protected shouldLoop()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public start()V
    .locals 1

    .line 272
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    iget-object p0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->prepared:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/setupwizardlib/view/IllustrationVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method
