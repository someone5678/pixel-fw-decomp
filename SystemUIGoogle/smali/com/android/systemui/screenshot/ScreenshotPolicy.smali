.class public interface abstract Lcom/android/systemui/screenshot/ScreenshotPolicy;
.super Ljava/lang/Object;
.source "ScreenshotPolicy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotPolicy$DisplayContentInfo;
    }
.end annotation


# virtual methods
.method public abstract findPrimaryContent(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract getDefaultDisplayId()I
.end method

.method public abstract isManagedProfile(ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method
