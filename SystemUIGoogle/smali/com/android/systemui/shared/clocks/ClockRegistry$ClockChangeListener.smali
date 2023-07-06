.class public interface abstract Lcom/android/systemui/shared/clocks/ClockRegistry$ClockChangeListener;
.super Ljava/lang/Object;
.source "ClockRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/clocks/ClockRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClockChangeListener"
.end annotation


# virtual methods
.method public abstract onAvailableClocksChanged()V
.end method

.method public abstract onCurrentClockChanged()V
.end method
