.class public interface abstract Lcom/android/systemui/flags/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.kt"

# interfaces
.implements Lcom/android/systemui/flags/FlagListenable;
.implements Landroid/util/Dumpable;


# virtual methods
.method public abstract isEnabled()V
.end method

.method public abstract isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z
.end method

.method public abstract isEnabled(Lcom/android/systemui/flags/ResourceBooleanFlag;)Z
.end method

.method public abstract isEnabled(Lcom/android/systemui/flags/SysPropBooleanFlag;)Z
.end method
