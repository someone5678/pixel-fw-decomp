.class public interface abstract Lcom/android/systemui/plugins/ClockAnimations;
.super Ljava/lang/Object;
.source "ClockProviderPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/ClockAnimations$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract charge()V
.end method

.method public abstract doze(F)V
.end method

.method public abstract enter()V
.end method

.method public abstract fold(F)V
.end method

.method public abstract getHasCustomPositionUpdatedAnimation()Z
.end method

.method public abstract onPositionUpdated(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
.end method
