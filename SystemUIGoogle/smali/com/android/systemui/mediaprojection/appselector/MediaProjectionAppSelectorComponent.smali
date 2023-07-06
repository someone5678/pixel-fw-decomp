.class public interface abstract Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent;
.super Ljava/lang/Object;
.source "MediaProjectionAppSelectorComponent.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorComponent$Factory;
    }
.end annotation


# virtual methods
.method public abstract getConfigurationController()Lcom/android/systemui/statusbar/policy/ConfigurationController;
.end method

.method public abstract getController()Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorController;
.end method

.method public abstract getHostUserHandle()Landroid/os/UserHandle;
.end method

.method public abstract getPersonalProfileUserHandle()Landroid/os/UserHandle;
.end method

.method public abstract getRecentsViewController()Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;
.end method
