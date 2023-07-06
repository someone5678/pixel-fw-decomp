.class public interface abstract Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$DebounceAlgorithm;
.super Ljava/lang/Object;
.source "AmbientLightModeMonitor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DebounceAlgorithm"
.end annotation


# virtual methods
.method public abstract onUpdateLightSensorEvent(F)V
.end method

.method public abstract start(Lcom/google/android/systemui/lowlightclock/AmbientLightModeMonitor$Callback;)V
.end method

.method public abstract stop()V
.end method
