.class public interface abstract Lcom/android/systemui/plugins/ClockFaceEvents;
.super Ljava/lang/Object;
.source "ClockProviderPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/ClockFaceEvents$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getTickRate()Lcom/android/systemui/plugins/ClockTickRate;
.end method

.method public abstract onFontSettingChanged(F)V
.end method

.method public abstract onRegionDarknessChanged(Z)V
.end method

.method public abstract onTargetRegionChanged(Landroid/graphics/Rect;)V
.end method

.method public abstract onTimeTick()V
.end method
