.class public final Lcom/android/systemui/media/dialog/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"


# instance fields
.field public final mMediaDeviceOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mMediaItemType:I

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x2

    .line 4
    iput v0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaDeviceOptional:Ljava/util/Optional;

    .line 7
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaItem;->mTitle:Ljava/lang/String;

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/systemui/media/dialog/MediaItem;->mMediaItemType:I

    return-void
.end method
