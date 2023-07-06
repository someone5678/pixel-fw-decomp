.class public interface abstract Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler$SizeSpecSource;
.super Ljava/lang/Object;
.source "PipSizeSpecHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SizeSpecSource"
.end annotation


# virtual methods
.method public abstract getDefaultSize(F)Landroid/util/Size;
.end method

.method public abstract getMaxSize(F)Landroid/util/Size;
.end method

.method public abstract getMinSize(F)Landroid/util/Size;
.end method

.method public abstract getSizeForAspectRatio(FLandroid/util/Size;)Landroid/util/Size;
.end method

.method public reloadResources()V
    .locals 0

    return-void
.end method
