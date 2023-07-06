.class public interface abstract Lcom/android/systemui/unfold/SysUIUnfoldComponent;
.super Ljava/lang/Object;
.source "SysUIUnfoldModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/unfold/SysUIUnfoldComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract getFoldAodAnimationController()Lcom/android/systemui/unfold/FoldAodAnimationController;
.end method

.method public abstract getKeyguardUnfoldTransition()Lcom/android/keyguard/KeyguardUnfoldTransition;
.end method

.method public abstract getNotificationPanelUnfoldAnimationController()Lcom/android/systemui/shade/NotificationPanelUnfoldAnimationController;
.end method

.method public abstract getUnfoldHapticsPlayer()Lcom/android/systemui/unfold/UnfoldHapticsPlayer;
.end method

.method public abstract getUnfoldLightRevealOverlayAnimation()Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;
.end method

.method public abstract getUnfoldTransitionWallpaperController()Lcom/android/systemui/unfold/UnfoldTransitionWallpaperController;
.end method
