.class public final Lcom/android/systemui/statusbar/notification/LaunchAnimationParameters;
.super Lcom/android/systemui/animation/LaunchAnimator$State;
.source "LaunchAnimationParameters.kt"


# instance fields
.field public linearProgress:F

.field public notificationParentTop:I

.field public parentStartClipTopAmount:I

.field public parentStartRoundedTopClipping:I

.field public progress:F

.field public startClipTopAmount:I

.field public startNotificationTop:I

.field public startRoundedTopClipping:I

.field public startTranslationZ:F


# direct methods
.method public constructor <init>()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    return-void
.end method

.method public constructor <init>(IIIIFF)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFF)V

    return-void
.end method
