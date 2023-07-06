.class public interface abstract Lcom/android/systemui/plugins/ClockController;
.super Ljava/lang/Object;
.source "ClockProviderPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/ClockController$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract getAnimations()Lcom/android/systemui/plugins/ClockAnimations;
.end method

.method public abstract getEvents()Lcom/android/systemui/plugins/ClockEvents;
.end method

.method public abstract getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;
.end method

.method public abstract getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;
.end method

.method public abstract initialize(Landroid/content/res/Resources;FF)V
.end method
